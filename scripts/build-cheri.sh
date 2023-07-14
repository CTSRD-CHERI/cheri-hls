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
branch="simtight"
cheribuild_commithash="8269a4e28db50868cc6ee6f1a376317248fa0af8"
llvm_commithash="ed9d9964fb200af225739a89bfb988cbe8d8f69e"
gdb_commithash="dfce87821d784de68b8f0a90b8dbf6724d82132c"
qemu_commithash="7d0b88cfb982267676573a4dce6565c7518964ca"
cheribsd_commithash="565ae56372dec95ac74e3cc3f5130ada41a80b05"

# --------------------------------------------------------------------
# Clone the submodules with certain commit number
# --------------------------------------------------------------------
cd $CHERI_TOOLS

# Cheribuild
git clone --recursive git@github.com:CTSRD-CHERI/cheribuild.git
cd cheribuild
git fetch --depth=1 origin $cheribuild_commithash
git checkout $cheribuild_commithash -b $branch
cd ..

# LLVM
git clone --recursive git@github.com:CTSRD-CHERI/llvm-project.git
cd llvm-project
git fetch --depth=1 origin $llvm_commithash
git checkout $llvm_commithash -b $branch
cd ..

# gdb 
git clone --recursive git@github.com:CTSRD-CHERI/gdb.git
cd gdb
git fetch --depth=1 origin $gdb_commithash
git checkout $gdb_commithash -b $branch
cd ..

# qemu 
git clone --recursive git@github.com:CTSRD-CHERI/qemu.git
cd qemu
git fetch --depth=1 origin $qemu_commithash
git checkout $qemu_commithash -b $branch
cd ..

# cheribsd 
git clone --recursive git@github.com:CTSRD-CHERI/cheribsd.git
cd cheribsd
git fetch --depth=1 origin $cheribsd_commithash
git checkout $cheribsd_commithash -b $branch
cd ..

# --------------------------------------------------------------------
# Build cheri tools 
# --------------------------------------------------------------------
cd $CHERI_HLS/cheri-tools/cheribuild && \
./cheribuild.py sdk-riscv64-purecap \
--llvm/source-directory ../llvm-project \
--cheribsd/source-directory ../cheribsd \
--gdb/source-directory ../gdb \
--run/custom-qemu-path ../qemu \
--source-root $CHERI_OUTPUT
