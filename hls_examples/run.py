#! /usr/bin/env python3
# ---------------------------------------
# This script runs hls benchmarks in C
# ---------------------------------------
import sys, os, time, logging, colorlog, functools, shutil, subprocess, glob
from argparse import ArgumentParser

# ---------------------------------------
# Test setup
# ---------------------------------------

TESTS = [
    "aes",
    "backprop",
    "bfs_bulk",
    "bfs_queue",
    "fft_strided",
    "fft_transpose",
    "gemm_blocked",
    "gemm_ncubed",
    "kmp",
    "md_grid",
    "md_knn",
    "nw",
    "sort_merge",
    "sort_radix",
    "spmv_crs",
    "spmv_ellpack",
    "stencil2d",
    "stencil3d",
    "viterbi",
    "vect_mult",
]

MODES = ["base", "light", "full", "refined", "branch"]

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


class Instance:
    def __init__(self, luts, ffs, dsps, brams, fmax, cycles):
        self.luts = luts
        self.ffs = ffs
        self.dsps = dsps
        self.brams = brams
        self.fmax = fmax
        self.cycles = cycles
        self.latency = cycles / fmax


# ---------------------------------------
# RUN HLS
# ---------------------------------------


class RunHLS:
    def __init__(self, args):
        self.args = args
        # Root path of cheri-hls
        self.root = os.path.abspath(os.path.join(os.path.dirname(__file__)))
        self.result = 0
        self.debug = True
        self.logger = getLogger(
            "run-hls",
            os.path.join(self.root, "run-hls.log"),
        )

    def exit(self):
        self.logger.info(f"Finish. {self.result} errors.")
        sys.exit(self.result)

    def run(self):

        if self.args.all:
            tests = TESTS
            modes = MODES
        else:
            assert self.args.test in TESTS or self.args.test == "all"
            assert self.args.mode in MODES or self.args.mode == "all"
            tests = TESTS if self.args.test == "all" else [self.args.test]
            modes = MODES if self.args.mode == "all" else [self.args.mode]

        if self.args.debug is not None:
            self.result += self.run_sw_checks()
            self.exit()

        if self.args.synthesis:
            for test in tests:
                for mode in modes:
                    self.result += self.single_run_hls(test, mode)

        if self.args.evaluate:
            for test in tests:
                for mode in modes:
                    self.result += self.single_run_system(test, mode)

        if self.args.report:
            self.data = {}
            buff = "Test, Mode, LUTs, FFs, DSPs, BRAMs, Cycles, Fmax,\n"
            for test in tests:
                self.data[test] = {}
                for mode in modes:
                    line = self.single_report(test, mode)
                    buff += line
            self.logger.info("Full result:\n" + buff)

        self.exit()

    def single_report(self, test, mode):

        def get_area(file):
            luts = -1
            ffs = -1
            dsps = -1
            brams = -1
            fmax = -1

            flag = 0
            buff = ""
            with open(file) as topo_file:
                for line in topo_file:
                    if "Post-Synthesis Resource usage" in line:
                        flag = 1
                    if "synthesis end" in line:
                        flag = 0
                    if flag > 0:
                        flag += 1
                    if flag == 4:
                        luts = int(line[line.find(":") + 1 :])
                    if flag == 5:
                        ffs = int(line[line.find(":") + 1 :])
                    if flag == 6:
                        dsps = int(line[line.find(":") + 1 :])
                    if flag == 7:
                        brams = int(line[line.find(":") + 1 :])
                    if flag == 15:
                        fmax = 1000.0 / float(line[line.find(":") + 1 :])
            return luts, ffs, dsps, brams, fmax

        def get_cycles(file):
            cycles = -1
            with open(file) as topo_file:
                for line in topo_file:
                    if "Verilog|" in line:
                        c = line.split("|")
                        cycles = int(c[4])
            return cycles

        synthesis_report = os.path.join(
            self.root,
            test,
            mode,
            "vitis_hls.log",
        )
        sim_report = os.path.join(
            self.root,
            test,
            mode,
            f"{test}_prj",
            "solution",
            "sim",
            "report",
            "hls_top_cosim.rpt",
        )

        luts, ffs, dsps, brams, fmax = get_area(synthesis_report)
        cycles = get_cycles(sim_report)

        self.data[test][mode] = Instance(luts, ffs, dsps, brams, fmax, cycles)
        return f"{test}, {mode}, {luts}, {ffs}, {dsps}, {brams}, {cycles}, {fmax},\n"

    def run_sw_checks(self):
        if self.args.debug == "all":
            cases = TESTS
        else:
            cases = [self.args.debug]

        result = 0
        for test in cases:

            self.logger.debug(f"checking {test} in software...")
            cmd = ["bash", "/workspace/scripts/run-vitis-hls.sh", "../vhls-debug.tcl"]
            run_dir = os.path.join(self.root, test, "debug")
            self.execute(cmd, cwd=run_dir)

            with open(os.path.join(run_dir, "vitis_hls.log")) as f:
                if "@E Simulation failed." in f.read():
                    self.logger.error(f"Failed test: {test}")
                    result += 1
        return result

    def single_run_system(self, test, mode):
        self.logger.debug(f"System: running {test}+{mode}...")

        flute_dir = os.path.join(
            self.root, "..", "BESSPIN-GFE", "bluespec-processors", "P2", "Flute"
        )
        hdl_dir = os.path.join(
            flute_dir,
            "src_SSITH_P2",
            "xilinx_ip",
            "hdl",
        )
        hls_verilog = os.path.join(
            self.root, test, mode, f"{test}_prj", "solution", "impl", "verilog", "*.v"
        )
        for vfile in glob.glob(hls_verilog):
            shutil.copy(vfile, hdl_dir)
        wrapper_verilog = os.path.join(flute_dir, "builds", "Resources", "hlsWrapper.v")
        shutil.copy(wrapper_verilog, os.path.join(hdl_dir, "mkHLS_Sig.v"))

        build_dir = os.path.join(
            flute_dir,
            "src_SSITH_P2",
        )
        flute_src = os.path.join(
            build_dir,
            "Verilog_RTL",
        )
        cmd = [
            "make",
            "compile",
            f"N_HLS=8",
        ]
        result = self.execute(cmd, cwd=build_dir)
        if result:
            self.logger.error(f"Build Flute source failed.")
            self.exit(result)
        flute_srcs = os.path.join(flute_src, "*.v")
        for vfile in glob.glob(flute_srcs):
            shutil.copy(vfile, hdl_dir)

        # Run Vivado project
        vproj = os.path.join(
            self.root,
            "BESSPIN-GFE",
            "vivado",
            "soc_bluespec_p2",
        )
        if os.path.exists(vproj):
            shutil.rmtree(vproj)
            self.logger.info(f"Removed (old) {vproj}")

        vproj = os.path.join(
            self.root,
            "..",
            "BESSPIN-GFE",
            "vivado",
            "soc_bluespec_p2",
        )
        if os.path.exists(vproj):
            shutil.rmtree(vproj)
            self.logger.info(f"Removed (old) {vproj}")

        cmd = [
            "bash",
            os.path.join(self.root, "..", "scripts", "run-vivado.sh"),
            f"{test}",
            f"{mode}",
        ]
        result = self.execute(cmd)
        if result:
            self.logger.error(f"Get bitstream for {test}({mode}) failed.")
            self.exit(result)

        return 0

    def single_run_hls(self, test, mode):
        self.logger.debug(f"HLS: running {test}+{mode}...")

        cmd = ["bash", "/workspace/scripts/run-vitis-hls.sh", "../vhls.tcl"]
        run_dir = os.path.join(self.root, test, mode)
        return self.execute(cmd, cwd=run_dir)

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
        # return result.returncode, buff
        return result.returncode


# ---------- main function --------------
def run_hls():
    USAGE = """Usage:
run.py --test vect_mult --mode
run.py -a"""

    parser = ArgumentParser(usage=USAGE)
    parser.add_argument(
        "-m",
        "--mode",
        dest="mode",
        default=None,
        help="Which mode to run",
    )
    parser.add_argument(
        "-t",
        "--test",
        dest="test",
        default=None,
        help="Which benchmark to run",
    )
    parser.add_argument(
        "-d",
        "--debug",
        dest="debug",
        default=None,
        help="Run CHERI checks in software",
    )
    parser.add_argument(
        "-a",
        "--all",
        dest="all",
        action="store_true",
        default=False,
        help="Run everything",
    )
    parser.add_argument(
        "-r",
        "--report",
        dest="report",
        action="store_true",
        default=False,
        help="Report results",
    )
    parser.add_argument(
        "-s",
        "--synth",
        dest="synthesis",
        action="store_true",
        default=False,
        help="Report HLS results",
    )
    parser.add_argument(
        "-e",
        "--evaluate",
        dest="evaluate",
        action="store_true",
        default=False,
        help="Report PPA results",
    )
    args = parser.parse_args()

    runhls = RunHLS(args)
    sys.exit(runhls.run())


if __name__ == "__main__":
    run_hls()
