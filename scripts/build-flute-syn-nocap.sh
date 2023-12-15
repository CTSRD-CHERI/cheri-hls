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

cd $CHERI_HLS
git clone git@github.com:CTSRD-CHERI/BESSPIN-GFE.git
cd BESSPIN-GFE/bluespec-processors/P2
git submodule udpate --init --recursive Flute
cd Flute
git checkout hls

cd src_SSITH_P2
make compile
