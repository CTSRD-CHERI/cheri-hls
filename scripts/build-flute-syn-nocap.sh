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
BESSPINGFE=${CHERI_HLS}/BESSPIN-GFE
FLUTE=${BESSPINGFE}/bluespec-processors/P2/Flute

cd ${FLUTE}/src_SSITH_P2

# rsync -r \
# jc2489@128.232.81.162:/home/jc2489/work/cheri-hls/BESSPIN-GFE/bluespec-processors/P2/Flute/src_SSITH_P2/Verilog_RTL \
# /home/jc2489/cheri-hls/BESSPIN-GFE/bluespec-processors/P2/Flute/src_SSITH_P2 

# make compile

# copy verilog to hdl and add them to component.xml
# copy hlsWrapper.v as well

source ${VIVADO}/Vivado/2019.1/settings64.sh

cd $BESSPINGFE
./setup_soc_project.sh bluespec_p2
./build.sh bluespec_p2
