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

cd $CHERI_HLS
git clone git@github.com:CTSRD-CHERI/BESSPIN-GFE.git
cd BESSPIN-GFE/bluespec-processors/P2
cd Flute
git checkout hls
cd ..
git submodule udpate --init --recursive
