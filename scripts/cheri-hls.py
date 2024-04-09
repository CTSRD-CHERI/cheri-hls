#! /usr/bin/env python3
# ---------------------------------------
# This script runs cheri hls
# ---------------------------------------
import sys, os, time, logging, colorlog, functools, shutil, subprocess
from argparse import ArgumentParser

# ---------------------------------------
# Test setup
# ---------------------------------------

BENCHMARKS = {
    "aes": 8,
    "gemm_blocked": 8,
    "md_grid": 8,
    "stencil3d": 8,
    "fft_transpose": 8,
    "gemm_ncubed": 8,
    "sort_merge": 8,
    "stencil2d": 8,
    "vect_mult": 8,
    # untested
    "bfs_bulk": 8,
    "fft_strided": 8,
    "nw": 8,
    "sort_radix": 8,
    "spmv_ellpack": 8,
    "viterbi": 8,
    "backprop": 8,
    "bfs_queue": 8,
    "kmp": 8,
    "md_knn": 8,
    "spmv_crs": 8,
}


MODES = ["cpu", "ccpu", "cpu+hls", "ccpu+hls", "ccpu+chls"]
RV_ABI = "l64pc128"
RV_ARCH = "rv64imaxcheri"

# ---------------------------------------
# Logger setup
# ---------------------------------------


def getLogger(name: str, log_file: str = "", console: bool = True) -> logging.Logger:
    # add a trace level
    logging.TRACE = logging.DEBUG - 5
    logging.addLevelName(logging.TRACE, "TRACE")
    logging.Logger.trace = functools.partialmethod(logging.Logger.log, logging.TRACE)
    logging.trace = functools.partial(logging.log, logging.TRACE)

    logger = logging.getLogger(name)
    logger.setLevel(logging.TRACE)

    if log_file:
        if os.path.isfile(log_file):
            os.remove(log_file)

        # File handle
        class customFileFormat(logging.Formatter):
            format = "[%(asctime)s][%(levelname)s] %(message)s"

            def format(self, record):
                logformat = (
                    "%(message)s"
                    if record.levelno == logging.TRACE
                    else "[%(asctime)s][%(levelname)s] %(message)s"
                )
                formatter = logging.Formatter(logformat, "%Y-%m-%d %H:%M:%S")
                return formatter.format(record)

        fh = logging.FileHandler(log_file)
        fh.setFormatter(customFileFormat())
        fh.setLevel(logging.TRACE)
        logger.addHandler(fh)

    # Console handler
    if console:
        ch = logging.StreamHandler()

        class customConsoleFormat(logging.Formatter):
            format = "[%(asctime)s][%(levelname)s] %(message)s"

            def format(self, record):
                traceformat = logging.Formatter("%(message)s", "%Y-%m-%d %H:%M:%S")
                colorformat = colorlog.ColoredFormatter(
                    "%(log_color)s[%(asctime)s][%(levelname)s]%(reset)s"
                    + " %(message_log_color)s%(message)s",
                    "%Y-%m-%d %H:%M:%S",
                    log_colors={
                        "DEBUG": "cyan",
                        "INFO": "green",
                        "WARNING": "yellow",
                        "ERROR": "red",
                        "CRITICAL": "red,bg_white",
                    },
                    secondary_log_colors={
                        "message": {"ERROR": "red", "CRITICAL": "red"}
                    },
                )
                logformat = (
                    traceformat if record.levelno == logging.TRACE else colorformat
                )
                return logformat.format(record)

        ch.setFormatter(customConsoleFormat())
        ch.setLevel(logging.TRACE)
        logger.addHandler(ch)
    return logger


# ---------------------------------------
# Utils
# ---------------------------------------


def get_relevant_op_pc(obj_dump):
    with open(obj_dump) as f:
        lines = f.readlines()

    success_pc = ""
    fence_pc = []
    for i, line in enumerate(lines):
        if "<success>:" in line:
            success_pc = i + 1
        if "fence" in line:
            fence_pc.append(line[: line.find(":")])
        if success_pc != -1 and len(fence_pc) == 2:
            break

    success_pc = (
        "" if success_pc == -1 else lines[success_pc][: lines[success_pc].find(":")]
    )
    fence_pc_0 = "" if len(fence_pc) < 1 else fence_pc[0]
    fence_pc_1 = "" if len(fence_pc) < 2 else fence_pc[1]

    return [success_pc, fence_pc_0, fence_pc_1]


def get_total_cycles(sim_log, pcs, logger):
    with open(sim_log) as f:
        lines = f.readlines()

    lc = 0
    pc_cycles = [0] * len(pcs)
    count = [0] * len(pcs)
    for i, line in enumerate(lines):
        for j, pc in enumerate(pcs):
            if f"PC:0x{pc}" in line:
                for k in range(0, 5):
                    lc = i + k
                    cycle = lines[lc][
                        : min(max(0, lines[lc].find(":")), max(0, lines[lc].find(" ")))
                    ]
                    if cycle.isnumeric():
                        logger.debug(f"{line}{lines[lc]}Cycle = {cycle}")
                        pc_cycles[j] = int(cycle)
                        count[j] += 1
                        break

    for i, c in enumerate(count):
        if c != 1:
            pc_cycles[i] = -1

    return pc_cycles


# ---------------------------------------
# CHERI HLS
# ---------------------------------------


class CheriHLS:
    """
    args:
        - debug : Run in debug mode, Default=False
        - test : Test an individual example
        - synth : Run hardware synthesis of the system
        - mode : Test target system:
          cpu (fullcap),
          cpu+hls (cpu+hls),
          ccpu+hls (fullcap cpu + hls),
          ccpu+chls (fullcap cpu + fullcap hls)
    """

    def __init__(self, args):
        self.args = args
        self.debug = self.args.debug
        # Root path of cheri-hls
        self.root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
        self.gfe = os.path.abspath(os.path.join(self.root, "BESSPIN-GFE"))
        self.flute = os.path.abspath(
            os.path.join(self.gfe, "bluespec-processors", "P2", "Flute")
        )

    def exit(self, result):
        self.logger.info(f"Finish. {result} errors. Log file = {self.log_name}")
        return result

    def run(self):
        if self.init_project():
            self.logger.error("Initialize project failed.")
            self.exit(1)
        ms = MODES if self.args.mode == "all" else [self.args.mode]
        bs = BENCHMARKS if self.args.test == "all" else [self.args.test]

        if self.run_synthesis(bs, ms):
            self.exit(1)

        if self.run_evaluation(bs, ms):
            self.exit(1)

        if self.args.mode != None:
            result += self.run_test(bs, ms)

    def run_test(self, bs, ms):
        result = 0
        self.logger.info(f"----\nRunning tests...\n----")
        for b in bs:
            for m in ms:
                result += self.run_single_test(test=b, mode=m)
        return result

    def run_evaluation(self, bs, ms):
        if self.args.eval:
            self.logger.info(f"----\nRunning evaluation...\n----")
            for b in bs:
                if "cpu" in ms or "cpu+hls" in ms or "ccpu" in ms:
                    if self.run_single_evaluation(b, "cpu+hls"):
                        return 1
                if "ccpu+chls" in ms:
                    if self.run_single_evaluation(b, "ccpu+chls"):
                        return 1
        return 0

    def run_synthesis(self, bs, ms):
        if self.args.synth:
            self.logger.info(f"----\nRunning synthesis...\n----")
            for b in bs:
                if "cpu" in ms or "cpu+hls" in ms or "ccpu" in ms:
                    if self.run_single_synthesis(b, "cpu+hls"):
                        return 1
                if "ccpu+chls" in ms:
                    if self.run_single_synthesis(b, "ccpu+chls"):
                        return 1
        return 0

    def run_single_test(self, test, mode):
        self.logger.info(f"Running test {test} with mode {mode}...")
        if mode == "cpu":
            return self.simulate_cpu(test, cheri=False)
        elif mode == "ccpu":
            return self.simulate_cpu(test, cheri=True)
        elif mode == "ccpu+hls":
            return self.simulate_ccpu_hls(test, cheri_hls=False)
        elif mode == "ccpu+chls":
            return self.simulate_ccpu_hls(test, cheri_hls=True)
        else:  # mode == "cpu+hls":
            return self.simulate_cpu_hls(test)

    def simulate_cpu(self, test, cheri=False):
        mode = "cpu" if cheri == False else "ccpu"
        self.logger.info(
            f"Running hardware simulation for test {test} with mode {mode}..."
        )

        sim_dir = os.path.join(self.root, "examples", test, "bare_metal_cpu")

        # Compile C code
        if cheri:
            cmd = [
                "riscv64-unknown-freebsd-cc",
                "-nostdlib",
                "-mno-relax",
                "-Tlink.ld",
                "-O2",
                "-fno-builtin",
                "-fno-lto",
                "-mcmodel=medany",
                f"-mabi={RV_ABI}",
                f"-march={RV_ARCH}",
                "init.S",
                f"-DNUM={self.args.inst}",
                "main.c",
                "-DCAP",
            ]
        else:
            cmd = [
                "riscv64-unknown-freebsd-cc",
                "-nostdlib",
                "-O2",
                "-fno-builtin",
                "-fno-lto",
                "-mno-relax",
                "-Tlink.ld",
                "-mcmodel=medany",
                "init_nocap.S",
                f"-DNUM={self.args.inst}",
                "main.c",
            ]
        result, _ = self.execute(cmd, cwd=sim_dir)
        if result:
            self.logger.error(f"Compiling error for {test} {mode}.")
            return result

        # Dump assembly code
        obj_dump = os.path.join(sim_dir, f"{mode}.dump")
        cmd = f"(cd {sim_dir}; riscv64-unknown-freebsd-objdump -d --mattr=+m,+a,+f,+d,+c,+xcheri a.out > {obj_dump})"
        self.logger.debug(cmd)
        os.system(cmd)

        # elf to hex
        cmd = [
            os.path.join(self.flute, "Tests", "elf_to_hex", "elf_to_hex"),
            "a.out",
            os.path.join(self.flute, "builds", f"{test}_nocap", "Mem.hex"),
        ]
        result, _ = self.execute(cmd, cwd=sim_dir)
        if result:
            self.logger.error(f"Compiling error for {test} {mode}.")
            return result

        # run simulation
        flute_build = os.path.join(self.flute, "builds", f"{test}_nocap")
        symbol_table = os.path.join(sim_dir, f"symbol_table.txt")
        shutil.copy(symbol_table, flute_build)
        self.logger.debug(f"cp {symbol_table} {flute_build}")
        if self.args.logloc == False:
            instret_log = os.path.join(sim_dir, f"{test}_instret_{mode}.log")
        else:
            instret_log = os.path.join(self.args.logloc, f"{test}_instret_{mode}.log")
        if self.args.timeout != -1:
            timeout = f"timeout {self.args.timeout}"
        else:
            timeout = ""
        if self.args.fulltrace:
            cmd = f"(cd {flute_build}; {timeout} ./exe_HW_sim +v2 +tohost > {instret_log})"
        else:
            cmd = f"(cd {flute_build}; {timeout} ./exe_HW_sim +v2 +tohost | grep -A5 '^instret:' > {instret_log})"
        self.logger.debug(cmd)
        os.system(cmd)

        pc = get_relevant_op_pc(obj_dump)
        self.logger.info("Simulation done.")
        self.logger.debug(f"Relevant PCs for {test} {mode} are 0x{pc}")
        for p in pc:
            if not p:
                self.logger.error(f"Cannot find relevant PC for {test} {mode}.")
                return result

        cycles = get_total_cycles(instret_log, pc, self.logger)
        self.logger.debug(f"Relevant cycles for {test} ({mode}) are {cycles}")
        for cycle in cycles:
            if cycle < 0:
                self.logger.error(f"Cannot find total cycles for {test} ({mode}).")
                return result

        self.logger.info(
            f"Simulation for {test} ({mode}) finished. Total cycles = {cycles[0]}, and relevant break points are {cycles[1] and {cycles[2]}}"
        )

        if self.debug:
            for p in pc:
                if p:
                    cmd = f'grep -A5 "PC:0x{p}" {instret_log}'
                    self.logger.debug(cmd)
                    os.system(cmd)

        if self.args.no_log:
            os.remove(f"{instret_log}")

        return 0

    def simulate_cpu_hls(self, test):
        self.logger.info(
            f"Running hardware simulation for test {test} with mode (cpu+hls)..."
        )

        sim_dir = os.path.join(self.root, "examples", test, "bare_metal_cpu_hls")

        # Compile C code
        cmd = [
            "riscv64-unknown-freebsd-cc",
            "-nostdlib",
            "-mno-relax",
            "-O2",
            "-fno-builtin",
            "-fno-lto",
            "-Tlink.ld",
            "-mcmodel=medany",
            "init_nocap.S",
            f"-DNUM={self.args.inst}",
            "main.c",
            "xhls_top.c",
            "xhls_top_linux.c",
        ]
        result, _ = self.execute(cmd, cwd=sim_dir)
        if result:
            self.logger.error(f"Compiling error for {test} (cpu+hls).")
            return result

        # Dump assembly code
        obj_dump = os.path.join(sim_dir, f"cpu_hls.dump")
        cmd = f"(cd {sim_dir}; riscv64-unknown-freebsd-objdump -d --mattr=+m,+a,+f,+d,+c,+xcheri a.out > {obj_dump})"
        self.logger.debug(cmd)
        os.system(cmd)

        # elf to hex
        cmd = [
            os.path.join(self.flute, "Tests", "elf_to_hex", "elf_to_hex"),
            "a.out",
            os.path.join(self.flute, "builds", f"{test}_nocap", "Mem.hex"),
        ]
        result, _ = self.execute(cmd, cwd=sim_dir)
        if result:
            self.logger.error(f"Compiling error for {test} (cpu+hls).")
            return result

        # run simulation
        flute_build = os.path.join(self.flute, "builds", f"{test}_nocap")
        symbol_table = os.path.join(sim_dir, f"symbol_table.txt")
        shutil.copy(symbol_table, flute_build)
        self.logger.debug(f"cp {symbol_table} {flute_build}")
        if self.args.logloc == False:
            instret_log = os.path.join(sim_dir, f"{test}_instret_cpu_hls.log")
        else:
            instret_log = os.path.join(self.args.logloc, f"{test}_instret_cpu_hls.log")
        if self.args.timeout != -1:
            timeout = f"timeout {self.args.timeout}"
        else:
            timeout = ""
        if self.args.fulltrace:
            cmd = f"(cd {flute_build}; {timeout} ./exe_HW_sim +v2 +tohost > {instret_log})"
        else:
            cmd = f"(cd {flute_build}; {timeout} ./exe_HW_sim +v2 +tohost | grep -A5 '^instret:' > {instret_log})"
        self.logger.debug(cmd)
        os.system(cmd)

        pc = get_relevant_op_pc(obj_dump)
        self.logger.info("Simulation done.")
        self.logger.debug(f"Relevant PCs for {test} (cpu+hls) are 0x{pc}")
        for p in pc:
            if not p:
                self.logger.error(f"Cannot find relevant PC for {test} (cpu+hls).")
                return result

        cycles = get_total_cycles(instret_log, pc, self.logger)
        self.logger.debug(f"Relevant cycles for {test} (cpu+hls) are {cycles}")
        for cycle in cycles:
            if cycle < 0:
                self.logger.error(f"Cannot find total cycles for {test} (cpu+hls).")
                return result

        self.logger.info(
            f"Simulation for {test} (cpu+hls) finished. Total cycles = {cycles[0]}, and relevant break points are {cycles[1] and {cycles[2]}}"
        )

        if self.debug:
            for p in pc:
                if p:
                    cmd = f'grep -A5 "PC:0x{p}" {instret_log}'
                    self.logger.debug(cmd)
                    os.system(cmd)

        if self.args.no_log:
            os.remove(f"{instret_log}")

        return 0

    def simulate_ccpu_hls(self, test, cheri_hls=False):
        mode = "hls" if cheri_hls == False else "chls"

        self.logger.info(
            f"Running hardware simulation for test {test} with mode (ccpu+{mode})..."
        )

        sim_dir = os.path.join(self.root, "examples", test, "bare_metal_cpu_hls")

        # Compile C code
        cmd = [
            "riscv64-unknown-freebsd-cc",
            "-nostdlib",
            "-O2",
            "-fno-builtin",
            "-fno-lto",
            "-mno-relax",
            "-Tlink.ld",
            "-mcmodel=medany",
            f"-mabi={RV_ABI}",
            f"-march={RV_ARCH}",
            "init.S",
            f"-DNUM={self.args.inst}",
            "main.c",
            f"xhls_top.c",
            f"xhls_top_linux.c",
            "-DCAP",
        ]
        if cheri_hls:
            cmd += ["-DCAPCHECKER"]
        result, _ = self.execute(cmd, cwd=sim_dir)
        if result:
            self.logger.error(f"Compiling error for {test} (ccpu+{mode}).")
            return result

        # Dump assembly code
        obj_dump = os.path.join(sim_dir, f"ccpu_{mode}.dump")
        cmd = f"(cd {sim_dir}; riscv64-unknown-freebsd-objdump -d --mattr=+m,+a,+f,+d,+c,+xcheri a.out > {obj_dump})"
        self.logger.debug(cmd)
        os.system(cmd)

        # elf to hex
        cap = "cap" if "chls" in mode else "nocap"
        cmd = [
            os.path.join(self.flute, "Tests", "elf_to_hex", "elf_to_hex"),
            "a.out",
            os.path.join(self.flute, "builds", f"{test}_{cap}", "Mem.hex"),
        ]
        result, _ = self.execute(cmd, cwd=sim_dir)
        if result:
            self.logger.error(f"Compiling error for {test} (ccpu+{mode}).")
            return result

        # run simulation
        flute_build = os.path.join(self.flute, "builds", f"{test}_{cap}")
        symbol_table = os.path.join(sim_dir, f"symbol_table.txt")
        shutil.copy(symbol_table, flute_build)
        self.logger.debug(f"cp {symbol_table} {flute_build}")
        if self.args.logloc == False:
            instret_log = os.path.join(sim_dir, f"{test}_instret_ccpu_{mode}.log")
        else:
            instret_log = os.path.join(
                self.args.logloc, f"{test}_instret_ccpu_{mode}.log"
            )
        if self.args.timeout != -1:
            timeout = f"timeout {self.args.timeout}"
        else:
            timeout = ""
        if self.args.fulltrace:
            cmd = f"(cd {flute_build}; {timeout} ./exe_HW_sim +v2 +tohost  > {instret_log})"
        else:
            cmd = f"(cd {flute_build}; {timeout} ./exe_HW_sim +v2 +tohost | grep -A5 '^instret:' > {instret_log})"
        self.logger.debug(cmd)
        os.system(cmd)

        pc = get_relevant_op_pc(obj_dump)
        self.logger.info("Simulation done.")
        self.logger.debug(f"Relevant PCs for {test} (ccpu+{mode}) are 0x{pc}")
        for p in pc:
            if not p:
                self.logger.error(f"Cannot find relevant PC for {test} (ccpu+{mode}).")
                return result

        cycles = get_total_cycles(instret_log, pc, self.logger)
        self.logger.debug(f"Relevant cycles for {test} (ccpu+{mode})  are {cycles}")
        for cycle in cycles:
            if cycle < 0:
                self.logger.error(f"Cannot find total cycles for {test} (ccpu+{mode}).")
                return result

        self.logger.info(
            f"Simulation for {test} (ccpu+{mode}) finished. Total cycles = {cycles}"
        )

        if self.debug:
            for p in pc:
                if p:
                    cmd = f'grep -A5 "PC:0x{p}" {instret_log}'
                    self.logger.debug(cmd)
                    os.system(cmd)

        if self.args.no_log:
            os.remove(f"{instret_log}")

        return 0

    def run_single_evaluation(self, test, mode):
        self.logger.info(
            f"Running hardware evaluation for test {test} with mode {mode}..."
        )

        cap = "cap" if "chls" in mode else "nocap"
        flute_build = os.path.join(self.flute, "builds", f"{test}_{cap}")
        hdl_dir = os.path.join(
            self.gfe,
            "bluespec-processors",
            "P2",
            "Flute",
            "src_SSITH_P2",
            "xilinx_ip",
            "hdl",
        )

        # Copy Verilog files to the vivado directory
        flute_verilog = os.path.join(self.flute_build, "Verilog_RTL", "*.v")
        for vfile in glob.glob(flute_verilog):
            shutil.copy(vfile, hdl_dir)
        hls_verilog = os.path.join(self.flute_build, "vect_mult", "*.v")
        for vfile in glob.glob(hls_verilog):
            shutil.copy(vfile, hdl_dir)
        wrapper_verilog = os.path.join(
            self.flute_build, "..", "Resources", "hlsWrapper.v"
        )
        shutil.copy(wrapper_verilog, hdl_dir)

        # Run Vivado project
        vproj = os.path.join(self.gfe, "vivado", "soc_bluespec_p2")
        if os.path.exists(vproj):
            shutil.rmtree(vproj)
            self.logger.debug(f"Removed (old) {vproj}")

        cmd = [
            "./setup_soc_project.sh",
            "bluespec_p2",
        ]
        result, _ = self.execute(cmd, cwd=self.gfe)
        if result:
            self.logger.error(f"Init Vivado project for {test}({mode}) failed.")
            return result

        cmd = [
            "./build.sh",
            "bluespec_p2",
        ]
        result, _ = self.execute(cmd, cwd=self.gfe)
        if result:
            self.logger.error(f"Build Vivado project for {test}({mode}) failed.")
            return result

        cmd = [
            "./get_ppa.sh",
            "bluespec_p2",
        ]
        result, _ = self.execute(cmd, cwd=self.gfe)
        if result:
            self.logger.error(f"Get PPA for {test}({mode}) failed.")
            return result

        # Generate bistream
        return 0

    def run_single_synthesis(self, test, mode):
        self.logger.info(
            f"Running hardware synthesis for test {test} with mode {mode}..."
        )
        # Generate HLS hardware
        test_dir = os.path.join(self.root, "examples", test)
        cmd = [
            "bash",
            os.path.join(self.root, "scripts", "run-vitis-hls.sh"),
            "vhls.tcl",
        ]
        result, _ = self.execute(cmd, cwd=test_dir)
        if result:
            self.logger.error(f"Running Vitis HLS for {test} failed.")
            return result

        # Get Flute
        cap = "cap" if "chls" in mode else "nocap"
        flute_build = os.path.join(self.flute, "builds", f"{test}_{cap}")
        flute_src = os.path.join(
            self.flute, "builds", "RV64ACIMUxCHERI_Flute_verilator"
        )
        if os.path.exists(flute_build):
            shutil.rmtree(flute_build)
            self.logger.debug(f"Removed (old) {flute_build}")
        cwd = os.path.join(self.flute, "builds")
        cmd = ["Resources/mkBuild_Dir.py", "..", "RV64ACIMUxCHERI", "verilator"]
        result, _ = self.execute(cmd, cwd=cwd)
        if result:
            self.logger.error(f"Flute code gen failed.")
            return result
        shutil.move(flute_src, flute_build)
        self.logger.debug(f"Moved {flute_src} to {flute_build}")

        # Combine HLS and Flute
        hls_src = os.path.join(test_dir, f"{test}_prj", "solution", "syn", "verilog")
        shutil.copytree(hls_src, os.path.join(flute_build, "vect_mult"))
        self.logger.debug(f"Copied {hls_src} to {os.path.join(flute_build, test)}")
        cmd = [
            "make",
            "compile",
            "simulator",
            "SIM=verilator",
            f"N_HLS={BENCHMARKS[test]}",
        ]
        if "chls" in mode:
            cmd += ["HLS_CAP_CHECKER=YES", "CAPCHECKER_UNFORGIVING=YES"]
        result, _ = self.execute(cmd, cwd=flute_build)
        if result:
            self.logger.error(f"Flute building with HLS failed.")
            return result

        self.logger.info(f"Synthesized hardware for {test} with mode {mode}.")
        return 0

    def init_project(self):
        log_dir = os.path.join(self.root, "output")
        if not os.path.exists(log_dir):
            os.mkdir(log_dir)
        self.log_name = "cheri-hls.{}.log".format(time.strftime("%d-%m-%Y-%H-%M-%S"))
        self.logger = getLogger(
            "cheri-hls",
            os.path.join(log_dir, self.log_name),
        )
        if self.debug:
            self.logger.setLevel(logging.TRACE)
        else:
            self.logger.setLevel(logging.INFO)

        if self.args.test not in BENCHMARKS.keys() and self.args.test != "all":
            self.logger.error(
                f"Unknown benchmarks: {self.args.test}. Known benchmarks: {BENCHMARKS.keys()} or all"
            )
            return 1
        if self.args.mode not in MODES and self.args.mode != "all":
            self.logger.error(
                f"Unknown mode: {self.args.mode}. Known modes: {MODES} or all"
            )
            return 1
        self.logger.trace(
            """
===============================================
  CHERI High-Level Synthesis
  {}
===============================================""".format(
                time.strftime("%d/%m/%Y %H:%M:%S")
            )
        )
        self.logger.debug(self.args)
        return 0

    def execute(self, cmd, log_file=None, cwd="."):
        buff = []
        self.logger.debug(subprocess.list2cmdline(cmd))
        with subprocess.Popen(
            cmd, stdout=subprocess.PIPE, bufsize=1, universal_newlines=True, cwd=cwd
        ) as result:
            if log_file:
                f = open(log_file, "w")
            if result.stdout:
                for line in result.stdout:
                    buff += [line]
                    if log_file:
                        f.write(line)
                    line = line.rstrip("\n")
                    if self.debug:
                        self.logger.trace(line)
            if result.stderr:
                for line in result.stderr:
                    buff += [line]
                    if log_file:
                        f.write(line)
                    line = line.rstrip("\n")
                    if self.debug:
                        self.logger.trace(line)
            if log_file:
                f.close()
        return result.returncode, buff


# ---------- main function --------------
def cheri_hls():
    USAGE = """Usage:
cheri-hls.py --test vect_mult --mode 
cheri-hls.py -a"""

    parser = ArgumentParser(usage=USAGE)
    parser.add_argument(
        "--no-log",
        action="store_true",
        dest="no_log",
        default=False,
        help="Clear the log to save disk space",
    )
    parser.add_argument(
        "-d",
        "--debug",
        action="store_true",
        dest="debug",
        default=False,
        help="Run in debug mode, Default=False",
    )
    parser.add_argument(
        "-t",
        "--test",
        default="",
        dest="test",
        help="Test an individual example",
    )
    parser.add_argument(
        "--full-trace",
        action="store_true",
        default=False,
        dest="fulltrace",
        help="Run with full simulation trace",
    )
    parser.add_argument(
        "--to",
        default=-1,
        dest="timeout",
        help="Set timeout for simulation",
    )
    parser.add_argument(
        "--logloc",
        default="/local/sata/chls_logs",
        # default=False,
        dest="logloc",
        help="Log location - in case of disk space limit",
    )
    parser.add_argument(
        "-s",
        "--synthesis",
        action="store_true",
        default=False,
        dest="synth",
        help="Run synthesis of the system",
    )
    parser.add_argument(
        "-e",
        "--eval",
        action="store_true",
        default=False,
        dest="eval",
        help="""Generate bitstream
report PPA results (area, Fmax, and power)
""",
    )
    parser.add_argument(
        "-i",
        "--inst",
        default=8,
        dest="inst",
        help="""HLS instances, default = 8""",
    )
    parser.add_argument(
        "-m",
        "--mode",
        default=None,
        dest="mode",
        help="""Test target system:
None (no test)
all (all modes)
cpu (nocap),
ccpu (fullcap),
cpu+hls (cpu+hls),
ccpu+hls (fullcap cpu + hls),
ccpu+chls (fullcap cpu + fullcap hls)""",
    )

    args = parser.parse_args()

    chls = CheriHLS(args)
    sys.exit(chls.run())


if __name__ == "__main__":
    cheri_hls()

# TODO: Compile software for CheriBSD:
# ----
# #include <stdio.h>
# int main() {
#
#   printf("hello\n");
#   return 0;
# }
# ----
# riscv64-unknown-freebsd-cc \
#   --sysroot=/workspace/cheri/output/sdk/sysroot-riscv64-purecap \
#   -B/workspace/cheri/output/sdk/bin \
#   -march=rv64imafdc \
#   -mabi=lp64d -mno-relax -fuse-ld=lld \
#   --ld-path=/workspace/cheri/output/sdk/bin/ld.lld -Wl,--whole-archive -lstatcounters -Wl,--no-whole-archive main.c
