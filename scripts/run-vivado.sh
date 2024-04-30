#!/bin/bash
# --------------------------------------------------------------------
#    This is a script to run Vivado to generate bitstreams 
# --------------------------------------------------------------------

set -o errexit
set -o pipefail
set -o nounset

# --------------------------------------------------------------------
# The absolute path to the directory of this script.
# --------------------------------------------------------------------

source $VIVADO/Vivado/2019.1/settings64.sh

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
CHERI_HLS=${SCRIPT_DIR}/..
GFE=${CHERI_HLS}/BESSPIN-GFE

cd $GFE

${SCRIPT_DIR}/update_ip_list.py --test $1
./setup_soc_project.sh bluespec_p2 
./build.sh bluespec_p2
./get_ppa.sh bluespec_p2
