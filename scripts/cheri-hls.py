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

# ---------------------------------------
# Logger setup
# ---------------------------------------


def getLogger(name: str, logFile: str = "", console: bool = True) -> logging.Logger:
    # add a trace level
    logging.TRACE = logging.DEBUG - 5
    logging.addLevelName(logging.TRACE, "TRACE")
    logging.Logger.trace = functools.partialmethod(logging.Logger.log, logging.TRACE)
    logging.trace = functools.partial(logging.log, logging.TRACE)

    logger = logging.getLogger(name)
    logger.setLevel(logging.TRACE)

    if logFile:
        if os.path.isfile(logFile):
            os.remove(logFile)

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

        fh = logging.FileHandler(logFile)
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
        # self.debug = self.args.debug
        self.debug = True
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
        elif mode == "ccpu+chls":
            self.logger.error("ccpu+chls not implemented yet")
            return 1
        elif mode == "ccpu+hls":
            return 0
        else:  # mode == "cpu+hls":
            self.logger.error("cpu+hls not implemented yet")
            return 1

    def run_synthesis(self, test, mode):
        # Generate HLS hardware
        test_dir = os.path.join(self.root, "examples", test)
        cmd = [
            "bash",
            os.path.join(self.root, "scripts", "run-vitis-hls.sh"),
            "vhls.tcl",
        ]
        result, _ = self.execute(cmd, cwd=test_dir)
        if result:
            self.logger(f"Running Vitis HLS for {test} failed.")
            return result

        # Get Flute
        cap = "cap" if "chls" in mode else "nocap"
        flute_build = os.path.join(self.root, "Flute", "builds", f"{test}_{cap}")
        flute_source = os.path.join(
            self.root, "Flute", "builds", "RV64ACIMUxCHERI_Flute_verilator"
        )
        if os.path.exists(flute_build):
            shutil.rmtree(flute_build)
        cwd = os.path.join(self.root, "Flute", "builds")
        cmd = ["Resources/mkBuild_Dir.py", "..", "RV64ACIMUxCHERI", "verilator"]
        result, _ = self.execute(cmd, cwd=cwd)
        if result:
            self.logger(f"Flute code gen failed.")
            return result
        shutil.move(flute_source, flute_build)

        # Combine HLS and Flute
        hls_src = os.path.join(test_dir, f"{test}_prj", "solution1", "syn", "verilog")
        shutil.copytree(hls_src, test)
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
            self.logger(f"Flute building with HLS failed.")
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
            self.logger.setLevel(logging.DEBUG)
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
        self.logger.info(
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
        buff = ""
        self.logger.debug(subprocess.list2cmdline(cmd))
        with subprocess.Popen(
            cmd, stdout=subprocess.PIPE, bufsize=1, universal_newlines=True, cwd=cwd
        ) as result:
            if log_file:
                f = open(log_file, "w")
            if result.stdout or result.stderr:
                self.logger.info("")
            if result.stdout:
                for line in result.stdout:
                    buff += line
                    if log_file and self.debug:
                        f.write(line)
                    line = line.rstrip("\n")
                    self.logger.debug(line)
            if result.stderr:
                for line in result.stderr:
                    buff += line
                    if log_file and self.debug:
                        f.write(line)
                    line = line.rstrip("\n")
                    self.logger.debug(line)
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
