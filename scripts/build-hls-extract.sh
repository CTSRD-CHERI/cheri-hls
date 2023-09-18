#!/bin/bash

# Avoid system crashes
th=$(($(grep -c ^processor /proc/cpuinfo) / 2))
echo "Building Pedia using $th threads..."

# The absolute path to the directory of this script.
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
CHERI_HLS=${SCRIPT_DIR}/..

mkdir -p $CHERI_HLS/hls_extract/build
cd $CHERI_HLS/hls_extract/build
cmake .. \
 -DLLVM_ROOT=../../cheri/build/llvm-project-build \
 -DCMAKE_C_COMPILER=$(which gcc) \
 -DCMAKE_CXX_COMPILER=$(which g++) \
 -DCMAKE_BUILD_TYPE=DEBUG
make -j
