#! /usr/bin/env python3
# ---------------------------------------
# This script runs cheri hls
# ---------------------------------------
import sys, os, time, logging, colorlog, functools, shutil, subprocess
from argparse import ArgumentParser

# ---------------------------------------
# Test setup
# ---------------------------------------

BENCHMARKS = {"vect_mult": 8}
MODES = ["cpu", "cpu+hls", "ccpu+hls", "ccpu+chls"]
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
                lc = i + 1
                cycle = lines[lc][
                    : min(max(0, lines[lc].find(":")), max(0, lines[lc].find(" ")))
                ]
                if cycle.isnumeric():
                    logger.debug(f"{line}{lines[lc]}Cycle = {cycle}")
                    pc_cycles[j] = int(cycle)
                    count[j] += 1

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
        - run_all : Run the whole regression test, Default=False
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
        # self.debug = False
        # Root path of cheri-hls
        self.root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))

    def run(self):
        result = 0
        if self.init_project():
            self.logger.error("Initialize project failed.")
            return 1
        if self.args.run_all:
            result += self.run_all_tests()
        else:
            result += self.run_single_test(test=self.args.test, mode=self.args.mode)
        self.logger.info(f"Test finish. {result} errors.")

    def run_single_test(self, test, mode):
        self.logger.info(f"Running test {test} with mode {mode}...")
        if self.args.synth:
            if self.run_synthesis(test, mode):
                return 1
        if mode == "cpu":
            self.logger.error("cpu not implemented yet")
            return 1
        elif mode == "ccpu+hls":
            return self.simulate_ccpu_hls(test, cheri_hls=False)
        elif mode == "ccpu+chls":
            return self.simulate_ccpu_hls(test, cheri_hls=True)
        else:  # mode == "cpu+hls":
            return self.simulate_cpu_hls(test)

    def simulate_cpu_hls(self, test):
        self.logger.info(
            f"Running hardware simulation for test {test} with mode (cpu+hls)..."
        )

        sim_dir = os.path.join(self.root, "examples", test, "bare_metal_cpu_hls")

        # Compile C code
        cmd = [
            "riscv64-unknown-freebsd-cc",
            # "-g",
            # "-O0",
            "-nostdlib",
            "-mno-relax",
            "-Tlink.ld",
            "-mcmodel=medany",
            "init_nocap.S",
            "main.c",
            "xvect_mult.c",
            "xvect_mult_linux.c",
            "xvect_mult_sinit.c",
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
            os.path.join(self.root, "Flute", "Tests", "elf_to_hex", "elf_to_hex"),
            "a.out",
            os.path.join(self.root, "Flute", "builds", f"{test}_nocap", "Mem.hex"),
        ]
        result, _ = self.execute(cmd, cwd=sim_dir)
        if result:
            self.logger.error(f"Compiling error for {test} (cpu+hls).")
            return result

        # run simulation
        flute_build = os.path.join(self.root, "Flute", "builds", f"{test}_nocap")
        sim_log = os.path.join(sim_dir, f"cpu_hls.log")
        # No result checking since it does not terminate
        cmd = f"(cd {flute_build}; timeout {self.args.timeout} ./exe_HW_sim +v2 > {sim_log})"
        self.logger.debug(cmd)
        # os.system(cmd)

        pc = get_relevant_op_pc(obj_dump)
        self.logger.debug(f"Relevant PCs for {test} (cpu+hls) are 0x{pc}")
        for p in pc:
            if not p:
                self.logger.error(f"Cannot find relevant PC for {test} (cpu+hls).")
                return result

        # Emit instret log
        instret_log = os.path.join(sim_dir, f"instret_cpu_hls.log")
        cmd = f'grep -A2 "instret" {sim_log} > {instret_log}'
        self.logger.debug(cmd)
        os.system(cmd)

        cycles = get_total_cycles(instret_log, pc, self.logger)
        self.logger.debug(f"Relevant cycles for {test} (cpu+hls) are {cycles}")
        for cycle in cycles:
            if not cycle:
                self.logger.error(f"Cannot find total cycles for {test} (cpu+hls).")
                return result

        self.logger.info(
            f"Simulation for {test} (cpu+hls) finished. Total cycles = {cycles[0]}, and relevant break points are {cycles[1] and {cycles[2]}}"
        )

        if self.debug:
            for p in pc:
                if p:
                    cmd = f'grep -A2 "PC:0x{p}" {instret_log}'
                    self.logger.debug(cmd)
                    os.system(cmd)
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
            # "-g",
            # "-O0",
            "-nostdlib",
            "-mno-relax",
            "-Tlink.ld",
            "-mcmodel=medany",
            f"-mabi={RV_ABI}",
            f"-march={RV_ARCH}",
            "init.S",
            "main.c",
            "xvect_mult.c",
            "xvect_mult_linux.c",
            "xvect_mult_sinit.c",
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
            os.path.join(self.root, "Flute", "Tests", "elf_to_hex", "elf_to_hex"),
            "a.out",
            os.path.join(self.root, "Flute", "builds", f"{test}_{cap}", "Mem.hex"),
        ]
        result, _ = self.execute(cmd, cwd=sim_dir)
        if result:
            self.logger.error(f"Compiling error for {test} (ccpu+{mode}).")
            return result

        # run simulation
        flute_build = os.path.join(self.root, "Flute", "builds", f"{test}_{cap}")
        sim_log = os.path.join(sim_dir, f"ccpu_{mode}.log")
        # No result checking since it does not terminate
        cmd = f"(cd {flute_build}; timeout {self.args.timeout} ./exe_HW_sim +v2 > {sim_log})"
        self.logger.debug(cmd)
        os.system(cmd)

        pc = get_relevant_op_pc(obj_dump)
        self.logger.debug(f"Relevant PCs for {test} (ccpu+{mode}) are 0x{pc}")
        for p in pc:
            if not p:
                self.logger.error(f"Cannot find relevant PC for {test} (ccpu+{mode}).")
                return result

        # Emit instret log
        instret_log = os.path.join(sim_dir, f"instret_ccpu_{mode}.log")
        cmd = f'grep -A2 "instret" {sim_log} > {instret_log}'
        self.logger.debug(cmd)
        os.system(cmd)

        cycles = get_total_cycles(instret_log, pc, self.logger)
        self.logger.debug(f"Relevant cycles for {test} (ccpu+{mode})  are {cycles}")
        for cycle in cycles:
            if not cycles:
                self.logger.error(f"Cannot find total cycles for {test} (ccpu+{mode}).")
                return result

        self.logger.info(
            f"Simulation for {test} (ccpu+{mode}) finished. Total cycles = {cycles}"
        )

        if self.debug:
            for p in pc:
                if p:
                    cmd = f'grep -A2 "PC:0x{p}" {instret_log}'
                    self.logger.debug(cmd)
                    os.system(cmd)

        return 0

    def run_synthesis(self, test, mode):
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
        flute_build = os.path.join(self.root, "Flute", "builds", f"{test}_{cap}")
        flute_src = os.path.join(
            self.root, "Flute", "builds", "RV64ACIMUxCHERI_Flute_verilator"
        )
        if os.path.exists(flute_build):
            shutil.rmtree(flute_build)
            self.logger.debug(f"Removed (old) {flute_build}")
        cwd = os.path.join(self.root, "Flute", "builds")
        cmd = ["Resources/mkBuild_Dir.py", "..", "RV64ACIMUxCHERI", "verilator"]
        result, _ = self.execute(cmd, cwd=cwd)
        if result:
            self.logger.error(f"Flute code gen failed.")
            return result
        shutil.move(flute_src, flute_build)
        self.logger.debug(f"Moved {flute_src} to {flute_build}")

        # Combine HLS and Flute
        hls_src = os.path.join(test_dir, f"{test}_prj", "solution1", "syn", "verilog")
        shutil.copytree(hls_src, os.path.join(flute_build, test))
        self.logger.debug(f"Copied {hls_src} to {os.path.join(flute_build, test)}")
        cmd = [
            "make",
            "compile",
            "simulator",
            "SIM=verilator",
            f"N_HLS={BENCHMARKS[test]}",
        ]
        if "chls" in mode:
            cmd += [
                "HLS_CAP_CHECKER=YES",
            ]
        result, _ = self.execute(cmd, cwd=flute_build)
        if result:
            self.logger.error(f"Flute building with HLS failed.")
            return result

        self.logger.info(f"Synthesized hardware for {test} with mode {mode}.")
        return 0

    def run_all_tests(self):
        result = 0
        for test in BENCHMARKS.keys():
            for mode in MODES:
                result += self.run_single_test(test=test, mode=mode)
        return result

    def init_project(self):
        self.project = os.path.join(self.root, "output")
        to_backup = os.path.exists(self.project)
        if to_backup:
            backup = os.path.join(self.root, "output_backup")
            if os.path.exists(backup):
                shutil.rmtree(backup)
            shutil.move(self.project, backup)
        os.mkdir(self.project)
        self.logger = getLogger(
            "cheri-hls", os.path.join(self.project, "cheri-hls.log")
        )
        if self.debug:
            self.logger.setLevel(logging.TRACE)
        else:
            self.logger.setLevel(logging.INFO)
        if to_backup:
            self.logger.warning(f"Last run not deleted, now moved to {backup}")

        if self.args.test not in BENCHMARKS.keys():
            self.logger.error(
                f"Unknown benchmarks: {self.args.test}. Known benchmarks: {BENCHMARKS.keys()}"
            )
            return 1
        if self.args.mode not in MODES:
            self.logger.error(f"Unknown mode: {self.args.mode}. Known modes: {MODES}")
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
        "-a",
        "--all",
        action="store_true",
        dest="run_all",
        default=False,
        help="Run the whole regression test, Default=False",
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
        "--to",
        default="10s",
        dest="timeout",
        help="Simulation Timeout, Default=10s",
    )
    parser.add_argument(
        "-t",
        "--test",
        default="",
        dest="test",
        help="Test an individual example",
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
        "-m",
        "--mode",
        default="ccpu+chls",
        dest="mode",
        help="""Test target system:
cpu (fullcap),
cpu+hls (cpu+hls),
ccpu+hls (fullcap cpu + hls),
ccpu+chls (fullcap cpu + fullcap hls)""",
    )

    args = parser.parse_args()

    chls = CheriHLS(args)
    sys.exit(chls.run())


if __name__ == "__main__":
    cheri_hls()
