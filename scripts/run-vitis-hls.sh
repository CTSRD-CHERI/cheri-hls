#!/usr/bin/env bash
# --------------------------------------------------------------------
#    This script calls Vitis HLS 
# --------------------------------------------------------------------

set -o errexit
set -o pipefail
set -o nounset

# Export the path of Vitis tools to $VHLS, e.g. 
# ```
# export VHLS=/home/jc2489/tools/Xilinx/2023.1 
# ```
# You should see the following when run:
# ```
# $ ls $VHLS
# DocNav  Model_Composer  Vitis  Vitis_HLS  Vivado  xic
# ```

source ${VHLS}/Vitis_HLS/2023.1/settings64.sh 

vitis_hls $1
