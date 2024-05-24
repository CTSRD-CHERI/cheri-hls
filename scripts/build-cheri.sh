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
CHERI_TOOLS=${CHERI_HLS}/cheri-tools
CHERI_OUTPUT=${CHERI_HLS}/cheri

mkdir -p $CHERI_TOOLS

# --------------------------------------------------------------------
# Commit info 
# --------------------------------------------------------------------
cheribuild_commithash="8269a4e28db50868cc6ee6f1a376317248fa0af8"
llvm_commithash="ed9d9964fb200af225739a89bfb988cbe8d8f69e"
gdb_commithash="dfce87821d784de68b8f0a90b8dbf6724d82132c"
qemu_commithash="qemu-cheri"
cheribsd_commithash="hls"

# --------------------------------------------------------------------
# Clone the submodules with certain commit number
# --------------------------------------------------------------------
cd $CHERI_TOOLS

# Cheribuild
if [ ! -d $CHERI_TOOLS/cheribuild ] 
then
    git clone --recursive https://github.com/CTSRD-CHERI/cheribuild.git
fi
cd cheribuild
git fetch --depth=1 origin $cheribuild_commithash
git checkout $cheribuild_commithash 
cd ..

# LLVM
if [ ! -d $CHERI_TOOLS/llvm-project ] 
then
    git clone --recursive https://github.com/CTSRD-CHERI/llvm-project.git
fi
cd llvm-project
git fetch --depth=1 origin $llvm_commithash
git checkout $llvm_commithash 
cd ..

# gdb 
if [ ! -d $CHERI_TOOLS/gdb ] 
then
    git clone --recursive https://github.com/CTSRD-CHERI/gdb.git
fi
cd gdb
git fetch --depth=1 origin $gdb_commithash
git checkout $gdb_commithash 
cd ..

# qemu 
if [ ! -d $CHERI_TOOLS/qemu ] 
then
   git clone --recursive https://github.com/CTSRD-CHERI/qemu.git
fi
cd qemu
# git fetch --depth=1 origin $qemu_commithash
# git checkout $qemu_commithash 
cd ..

# cheribsd 
if [ ! -d $CHERI_TOOLS/cheribsd ] 
then
    git clone --recursive https://github.com/CTSRD-CHERI/cheribsd.git
fi
cd cheribsd
git fetch --depth=1 origin $cheribsd_commithash
git checkout $cheribsd_commithash 
cd ..

# --------------------------------------------------------------------
# Build cheri tools 
# --------------------------------------------------------------------
cd $CHERI_HLS/cheri-tools/cheribuild && \
./cheribuild.py sdk-riscv64-purecap \
--skip-update \
--llvm/source-directory ../llvm-project \
--cheribsd/source-directory ../cheribsd \
--gdb/source-directory ../gdb \
--run/custom-qemu-path ../qemu \
--source-root $CHERI_OUTPUT \
--allow-running-as-root \
-j 16
