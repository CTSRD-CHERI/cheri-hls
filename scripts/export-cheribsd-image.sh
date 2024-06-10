#!/usr/bin/env bash
# --------------------------------------------------------------------
#    This script builds the CheriBSD with qemu 
# --------------------------------------------------------------------

set -o errexit
set -o pipefail
set -o nounset

# --------------------------------------------------------------------
# The absolute path to the directory of this script.
# --------------------------------------------------------------------
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
CHERI_HLS=${SCRIPT_DIR}/..
CHERI_TOOLS=${CHERI_HLS}/cheri-tools
CHERI_OUTPUT=${CHERI_HLS}/cheri

mkdir -p $CHERI_TOOLS

TARGET=riscv64-purecap
# TARGET=morello-purecap

cd $CHERI_HLS/cheri-tools/cheribuild && \
./cheribuild.py disk-image-$TARGET -d \
--skip-update \
--llvm/source-directory ../llvm-project \
--cheribsd/source-directory ../cheribsd \
--gdb/source-directory ../gdb \
--run/custom-qemu-path ../qemu \
--source-root $CHERI_OUTPUT \
--allow-running-as-root

