#!/usr/bin/env bash
# --------------------------------------------------------------------
#    This script builds the Cheri Device Model 
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
CHERI_BUILD=${CHERI_TOOLS}/cheribuild
# CHERI_OUTPUT=${CHERI_HLS}/cheri

cd $CHERI_BUILD

./cheribuild.py -d llvm

./cheribuild.py device-model
# --source-root $CHERI_OUTPUT

# --------------------------------------------------------------------
# Setup a tap device on the QEMU host machine:
# --------------------------------------------------------------------

sudo tunctl -t tap0 -u `whoami`
sudo ifconfig tap0 up

./cheribuild.py run-dm-riscv64-purecap \
"--run-dm-riscv64-purecap/extra-options=-smp 2 -serial mon:stdio -serial pty -accel tcg,thread=multi -device virtio-net-device,netdev=net0 -netdev tap,id=net0,ifname=tap0,script=no,downscript=no -D trace.log" \
-d --skip-world \
--cheribsd/git-revision=device-model-riscv \
--qemu/git-revision=concurrent_tags_rebased_dm \
--qemu/targets="riscv64-softmmu,riscv64cheri-softmmu,riscv32-softmmu,riscv32cheri-softmmu" \
--bbl/git-revision=cheri_purecap_dm
# --source-root $CHERI_OUTPUT


# --------------------------------------------------------------------
# Device-model-riscv startup on the 2nd core
# --------------------------------------------------------------------

# cu -l /dev/pts/XX
# 
# /usr/sbin/bm -Rl /root/device-model-riscv.bin
# 
# sleep 5 # ensure device-model is fully started
# devctl disable pci0
# devctl enable pci0


