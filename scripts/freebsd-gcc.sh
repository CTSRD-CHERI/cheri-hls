#!/usr/bin/env bash
# --------------------------------------------------------------------
#    This script calls freebsd to compile c code 
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

riscv64-unknown-freebsd-cc \
  --sysroot=${CHERI_OUTPUT}/output/sdk/sysroot-riscv64-purecap \
  -B${CHERI_OUTPUT}/output/sdk/bin \
  -target riscv64-unknown-freebsd \
  -march=rv64gcxcheri \
  -mabi=l64pc128d \
  -mno-relax -fuse-ld=lld \
  -DMAXPATHLEN=1024 \
  --ld-path=${CHERI_OUTPUT}/output/sdk/bin/ld.lld -Wl,--whole-archive -lstatcounters -Wl,--no-whole-archive $1
