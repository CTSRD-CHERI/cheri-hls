#!/usr/bin/env bash
# --------------------------------------------------------------------
#    This script get a CHERI RISC-V CPU named Flute 
# --------------------------------------------------------------------

set -o errexit
set -o pipefail
set -o nounset

# --------------------------------------------------------------------
# The absolute path to the directory of this script.
# --------------------------------------------------------------------
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
CHERI_HLS=${SCRIPT_DIR}/..
BESSPINGFE=${CHERI_HLS}/BESSPIN-GFE
FLUTE=${BESSPINGFE}/bluespec-processors/P2/Flute

cd $CHERI_HLS
if [ ! -d "${CHERI_HLS}/BESSPIN-GFE" ]; then
	git clone git@github.com:CTSRD-CHERI/BESSPIN-GFE.git
fi
cd ${BESSPINGFE}/bluespec-processors/P2
git submodule update --init --recursive Flute
cd Flute
git checkout hls
git submodule update --init --recursive

cd ${FLUTE}/Tests/elf_to_hex
gcc -g  -o elf_to_hex  elf_to_hex.c -lelf -mcmodel=medium
