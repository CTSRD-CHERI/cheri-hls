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

# --------------------------------------------------------------------
# Build Flute 
# --------------------------------------------------------------------
cd ${FLUTE}/src_SSITH_P2
make compile


cd ${FLUTE}/builds 
make -f Resources/Build_all.mk ARCH=RV64ACIMUxCHERI SIM=verilator PROC=Flute build

