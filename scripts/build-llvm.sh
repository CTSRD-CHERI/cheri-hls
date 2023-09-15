#!/bin/bash
# This is a script to build LLVM in Pedia

# Avoid system crashes
th=$(($(grep -c ^processor /proc/cpuinfo) / 2))
echo "Building LLVM using $th threads..."

# The absolute path to the directory of this script.
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PEDIA=${SCRIPT_DIR}/..

# Build LLVM
mkdir -p $PEDIA/llvm/build
cd $PEDIA/llvm/build
cmake ../llvm -DLLVM_ENABLE_PROJECTS="clang;polly" \
    -DLLVM_INSTALL_UTILS=ON \
    -DLLVM_TARGETS_TO_BUILD="X86" \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DLLVM_BUILD_EXAMPLES=OFF \
    -DLLVM_ENABLE_RTTI=ON \
    -DCMAKE_C_COMPILER=$(which gcc) \
    -DCMAKE_CXX_COMPILER=$(which g++) \
    -DCMAKE_BUILD_TYPE=DEBUG
make -j $th
