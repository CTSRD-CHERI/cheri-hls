#!/usr/bin/env bash
# --------------------------------------------------------------------
#    This script builds the Cheri Dependencies
# --------------------------------------------------------------------

set -o errexit
set -o pipefail
set -o nounset

# --------------------------------------------------------------------
# The absolute path to the directory of this script.
# --------------------------------------------------------------------
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
CHERI_HLS=${SCRIPT_DIR}/..
FLUTE=${CHERI_HLS}/Flute

rm -rf ${FLUTE}/builds/RV64ACIMUxCHERI_Flute_verilator_nocap

# --------------------------------------------------------------------
# Build Flute 
# --------------------------------------------------------------------
cd ${FLUTE}/builds
Resources/mkBuild_Dir.py .. RV64ACIMUxCHERI verilator

mv ${FLUTE}/builds/RV64ACIMUxCHERI_Flute_verilator \
   ${FLUTE}/builds/RV64ACIMUxCHERI_Flute_verilator_nocap
cd ${FLUTE}/builds/RV64ACIMUxCHERI_Flute_verilator_nocap

# Temporarily to copy hls kernels
cp -r ${CHERI_HLS}/examples/vect_mult/vect_mult_prj/solution1/syn/verilog vect_mult
make compile simulator SIM=verilator N_HLS=8

# --------------------------------------------------------------------
# Build elf_to_hex in Flute 
# --------------------------------------------------------------------
cd ${FLUTE}/Tests/elf_to_hex
gcc -g  -o elf_to_hex  elf_to_hex.c -lelf -mcmodel=medium
