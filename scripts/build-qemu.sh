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

# --------------------------------------------------------------------
# Commit info 
# --------------------------------------------------------------------
cheribuild_commithash="8269a4e28db50868cc6ee6f1a376317248fa0af8"
llvm_commithash="ed9d9964fb200af225739a89bfb988cbe8d8f69e"
gdb_commithash="dfce87821d784de68b8f0a90b8dbf6724d82132c"
qemu_commithash="7d0b88cfb982267676573a4dce6565c7518964ca"
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
git fetch --depth=1 origin $qemu_commithash
git checkout $qemu_commithash 
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
# Build qemu 
# --------------------------------------------------------------------

TARGET=riscv64-purecap
# TARGET=morello-purecap

cd $CHERI_HLS/cheri-tools/cheribuild && \
./cheribuild.py run-$TARGET -d \
--skip-update \
--llvm/source-directory ../llvm-project \
--cheribsd/source-directory ../cheribsd \
--gdb/source-directory ../gdb \
--run/custom-qemu-path ../qemu \
--source-root $CHERI_OUTPUT \
--allow-running-as-root \
--run-$TARGET/extra-options="-netdev user,hostfwd=tcp::2222-:22"
# Expect this to fail - so we can run the following command to create a fixed port:
# /home/jc2489/work/cheri-hls/cheri/output/sdk/bin/qemu-system-riscv64cheri -M virt -m 2048 -nographic -bios bbl-riscv64cheri-virt-fw_jump.bin -kernel /home/jc2489/work/cheri-hls/cheri/output/rootfs-riscv64-purecap/boot/kernel/kernel -drive if=none,file=/home/jc2489/work/cheri-hls/cheri/output/cheribsd-riscv64-purecap.img,id=drv,format=raw -device virtio-blk-device,drive=drv -device virtio-net-device,netdev=net0 -netdev 'user,id=net0,smb=/home/jc2489/work/cheri-hls/cheri<<<source_root@ro:/home/jc2489/work/cheri-hls/cheri/build<<<build_root:/home/jc2489/work/cheri-hls/cheri/output<<<output_root@ro:/home/jc2489/work/cheri-hls/cheri/output/rootfs-riscv64-purecap<<<rootfs,hostfwd=tcp::10000-:22' -device virtio-rng-pci

# Log in as 'root' to skip password
# Ctrl-A + X to exit

# Host commands for copying data and ssh:
# ssh root@localhost -p 10000
# (cd ../test; freebsd-gcc.sh test.c)
# scp -P 10000 ../test/a.out root@localhost:/root/hello.out

