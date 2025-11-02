#!/bin/bash
# --------------------------------------------------------------------
#    This is a script to run Vivado to get HLS design power 
# --------------------------------------------------------------------

source ${VHLS}/Vivado/2023.1/settings64.sh
vivado -mode batch -source syn.tcl
