#! /usr/bin/env python3
# ---------------------------------------
# This script convert the results to a csv file
# ---------------------------------------
import sys, os, time, logging, colorlog, functools, shutil, subprocess, glob
from argparse import ArgumentParser


def parse_line(line):
    pattern = "(inst = "
    inst = int(line[line.find(pattern) + len(pattern) : line.find(")")])
    pattern = ") for "
    bench = line[line.find(pattern) + len(pattern) : line.rfind("(")]
    bench = bench.replace(" ", "")
    pattern = bench + " ("
    mode = line[line.find(pattern) + len(pattern) : line.rfind(")")]

    cycles = line[line.rfind("[") + 1 : line.rfind("]")]
    cycle_list = cycles.split(",")
    cycle_1 = int(cycle_list[0])
    cycle_2 = int(cycle_list[1])
    cycle_3 = int(cycle_list[2])
    if cycle_1 / cycle_3 > 2:
        cycle_1 = int(cycle_1 / 10)

    accel_cycle = cycle_3 - cycle_2
    cpu_cycle = cycle_1 - accel_cycle

    cpu, ccpu, hls, chls = 0, 0, 0, 0

    if mode == "cpu":
        cpu = cycle_3
    elif mode == "ccpu":
        ccpu = cycle_3
    elif mode == "cpu+hls":
        cpu = cpu_cycle
        hls = accel_cycle
    elif mode == "ccpu+hls":
        ccpu = cpu_cycle
        hls = accel_cycle
    elif mode == "ccpu+chls":
        ccpu = cpu_cycle
        chls = accel_cycle
    else:
        assert False, "unknown mode"

    return f"{bench}, {inst}, {mode}, {cpu}, {ccpu}, {hls}, {chls}\n"


def parse(inf, outf):
    """
    format: ... (inst = 1) for sort_merge (cpu) are [7836480, 13922, 783570]
    """

    csv_table = "bench, inst, mode, cpu, ccpu, hls, chls\n"

    f = open(inf)
    for line in f.readlines():
        if line == "\n":
            continue
        csv_line = parse_line(line)
        csv_table += csv_line

    csv = open(outf, "w")
    csv.write(csv_table)
    csv.close()


def parse_cheri_hls_results():
    USAGE = """Usage:
parse-results.py --input results.txt --output results.csv 
"""

    parser = ArgumentParser(usage=USAGE)
    parser.add_argument(
        "-i",
        "--input",
        dest="input",
        default=None,
        help="Input file name",
    )
    parser.add_argument(
        "-o",
        "--output",
        dest="output",
        default="output.csv",
        help="Output csv file name, Default=output.csv",
    )
    args = parser.parse_args()

    if not args.input:
        print("Input file not specified.")
        sys.exit(1)

    if not os.path.isfile(args.input):
        print(f"Input file not found: {args.input}.")
        sys.exit(1)

    parse(args.input, args.output)


if __name__ == "__main__":
    parse_cheri_hls_results()
