#!/usr/bin/env bash
# --------------------------------------------------------------------
#    This script generates user binary to run benchmarks in CheriBSD 
# --------------------------------------------------------------------

set -o errexit
set -o pipefail
set -o nounset

# --------------------------------------------------------------------
# The absolute path to the directory of this script.
# --------------------------------------------------------------------
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
CHERI_HLS=${SCRIPT_DIR}/..
EXAMPLES=${CHERI_HLS}/examples
CHERI_OUTPUT=${CHERI_HLS}/cheri

# benchmarks=("aes" "bfs_bulk" "fft_strided" "gemm_blocked" "kmp" "md_knn" "sort_merge" "spmv_crs" "stencil2d" "vect_mult" "backprop" "bfs_queue" "fft_transpose" "gemm_ncubed" "md_grid" "nw" "sort_radix" "spmv_ellpack" "stencil3d" "viterbi")

benchmarks=("gemm_blocked")

for b in ${benchmarks[@]}; do
  echo $b

  cd $EXAMPLES/$b/cheribsd

  riscv64-unknown-freebsd-cc \
    --sysroot=${CHERI_OUTPUT}/output/sdk/sysroot-riscv64-purecap \
    -B${CHERI_OUTPUT}/output/sdk/bin \
    -target riscv64-unknown-freebsd \
    -march=rv64gcxcheri \
    -mabi=l64pc128d \
    -mno-relax -fuse-ld=lld \
    -DMAXPATHLEN=1024 \
    --ld-path=${CHERI_OUTPUT}/output/sdk/bin/ld.lld -Wl,--whole-archive -lstatcounters -Wl,--no-whole-archive \
    -o $CHERI_HLS/$b.out \
    main.c
done


