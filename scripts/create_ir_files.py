#! /usr/bin/env python3
import subprocess, shutil, os, logging, functools, colorlog, re


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


logger = getLogger(
    "cheri-hls", "/workspace/examples/vect_mult_local/create-lib-log.txt"
)

logger.setLevel(logging.TRACE)


def execute(cmd, log_file=None, cwd="/workspace/examples/vect_mult_local/"):
    buff = []
    logger.debug(subprocess.list2cmdline(cmd))
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
                logger.trace(line)
        if result.stderr:
            for line in result.stderr:
                buff += [line]
                if log_file:
                    f.write(line)
                line = line.rstrip("\n")
                logger.trace(line)
        if log_file:
            f.close()
    return result.returncode, buff


temp = "/workspace/examples/vect_mult_local/temp"
if os.path.exists(temp):
    shutil.rmtree(temp)
    os.mkdir(temp)
    print("New temp dir created")

execute(["bash", "/workspace/scripts/run-vitis-hls.sh", "mem2reg.tcl"])
execute(["bash", "/workspace/scripts/run-vitis-hls.sh", "pre.tcl"])
execute(["/workspace/hls_extract/modify_ir.py", "temp/test.ll", "temp/mod_test.ll"])

header = []
attributes = [
    """; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #100002

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #100019

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #100002

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #100001

attributes #9000 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="384" "xlx.source"="user" }
attributes #9001 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #9002 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="288" "xlx.source"="user" }
attributes #9003 = { nounwind }"""
]
end_attributes = [
    "!101540 = !DILocation(line: 166, column: 2, scope: !101493)",
    "!101541 = !DILocation(line: 167, column: 18, scope: !101493)",
    "!101542 = !DILocation(line: 167, column: 3, scope: !101493)",
    '!101543 = !DILocalVariable(name: "i", scope: !101544, file: !100005, line: 169, type: !100030)',
    "!101544 = distinct !DILexicalBlock(scope: !101493, file: !100005, line: 169, column: 21)",
    "!101545 = !DILocation(line: 169, column: 30, scope: !101544)",
    "!101546 = !DILocation(line: 169, column: 26, scope: !101544)",
    "!101547 = !DILocation(line: 169, column: 39, scope: !101548)",
    "!101548 = distinct !DILexicalBlock(scope: !101544, file: !100005, line: 169, column: 21)",
    "!101549 = !DILocation(line: 169, column: 21, scope: !101544)",
    "!101550 = !DILocation(line: 172, column: 43, scope: !101551)",
    "!101551 = distinct !DILexicalBlock(scope: !101548, file: !100005, line: 169, column: 52)",
    "!101552 = !DILocation(line: 172, column: 15, scope: !101551)",
    '!101553 = !DILocalVariable(name: "a_elem", scope: !101551, file: !100005, line: 172, type: !100030)',
    "!101554 = !DILocation(line: 172, column: 6, scope: !101551)",
    "!101555 = !DILocation(line: 173, column: 29, scope: !101551)",
    "!101556 = !DILocation(line: 173, column: 46, scope: !101551)",
    "!101557 = !DILocation(line: 173, column: 18, scope: !101551)",
    '!101558 = !DILocalVariable(name: "b_elem", scope: !101551, file: !100005, line: 173, type: !100030)',
    "!101559 = !DILocation(line: 173, column: 9, scope: !101551)",
    "!101560 = !DILocation(line: 175, column: 25, scope: !101551)",
    '!101561 = !DILocalVariable(name: "c_elem", scope: !101551, file: !100005, line: 175, type: !100030)',
    "!101562 = !DILocation(line: 175, column: 9, scope: !101551)",
    "!101563 = !DILocation(line: 177, column: 42, scope: !101551)",
    "!101564 = !DILocation(line: 177, column: 5, scope: !101551)",
    "!101565 = !DILocation(line: 178, column: 3, scope: !101551)",
    "!101566 = !DILocation(line: 169, column: 48, scope: !101548)",
    "!101567 = !DILocation(line: 169, column: 21, scope: !101548)",
    "!101568 = distinct !{!101568, !101549, !101569, !101570, !101572}",
    "!101569 = !DILocation(line: 178, column: 3, scope: !101544)",
    '!101570 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !101571}',
    "!101571 = !DILocation(line: 170, column: 9, scope: !101544)",
    '!101572 = !{!"llvm.loop.name", !"VITIS_LOOP_169_1"}',
    "!101573 = !DILocation(line: 180, column: 11, scope: !101493)",
    "!101574 = !DILocation(line: 180, column: 9, scope: !101493)",
    "!101575 = !DILocation(line: 182, column: 1, scope: !101493)",
]

with open("/workspace/examples/vect_mult_local/temp/mod_test.ll") as f:
    lines = f.readlines()
    in_header = False
    in_attributes = False
    hls_top_line = ""

    for line in lines:
        if "struct.Cap = type {" in line:
            in_header = True
        if "attributes #100000" in line:
            in_attributes = True
        if "define void @_Z7hls_top" in line:
            in_header = False
            hls_top_line = line
        if in_header:
            header.append(line)
        if in_attributes:
            attributes.append(line)

with open("/workspace/scripts/cheri_resources/refined_cap_header.txt", "w") as f:
    for line in header:
        f.write(line.rstrip() + "\n")

with open("/workspace/scripts/cheri_resources/refined_cheri_attributes.txt", "w") as f:
    for line in attributes:
        f.write(line.rstrip() + "\n")

    last_attr = re.search(r"!(\d+)", attributes[-1]).group(1)

    for line in end_attributes:
        attr = re.search(r"!(\d+)", line).group(1)
        if int(attr) > int(last_attr):
            f.write(line.rstrip() + "\n")

print(hls_top_line)
