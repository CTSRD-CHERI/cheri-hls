#!/usr/bin/env bash
# --------------------------------------------------------------------
#    This script run the Cheri test cases 
# --------------------------------------------------------------------

set -o errexit
set -o pipefail
set -o nounset

# --------------------------------------------------------------------
# The absolute path to the directory of this script.
# --------------------------------------------------------------------
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
CHERI_HLS=${SCRIPT_DIR}/..

# --------------------------------------------------------------------
# Vitis HLS test
# --------------------------------------------------------------------

# Run a simple vector multiplication test case
(cd ${CHERI_HLS}/examples/vect_mult; run-vitis-hls.sh vhls.tcl; grep -rnw vitis_hls.log -e PASS)
