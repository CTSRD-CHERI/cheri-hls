/*
Based on algorithm described here:
http://www.cs.berkeley.edu/~mhoemmen/matrix-seminar/slides/UCB_sparse_tutorial_1.pdf
*/

#include "../../chls.h"

// These constants valid for the IEEE 494 bus interconnect matrix
#define NNZ 1666
#define N 494
#define L 10

#define TYPE int

#define MAX 1000
#define MIN 10
#define ran 100

void hls_top(int n, int l, TYPE xnzval[N * L], int xcols[N * L], TYPE xvec[N],
             TYPE xout[N], u32 *flag, u32 cap[16]) {
#pragma HLS INTERFACE m_axi port = xnzval
#pragma HLS INTERFACE m_axi port = xcols
#pragma HLS INTERFACE m_axi port = xvec
#pragma HLS INTERFACE m_axi port = xout
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = n
#pragma HLS INTERFACE s_axilite port = l
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return
  int i, j;
  TYPE Si;

  u32 flag_buf = 0;
  // 8 caps: 4 for input arrays + 4 for local arrays
  Cap caps[8];
  u32 buffer[16];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(4, buffer, cap, caps);

  TYPE nzval[N * L];
  int cols[N * L];
  TYPE vec[N];
  TYPE out[N];

  create_cap(N * L, caps, 4);  // nzval
  create_cap(N * L, caps, 5);  // cols
  create_cap(N, caps, 6);      // vec
  create_cap(N, caps, 7);      // out

  for (i = 0; i < n * l; i++) {
    TYPE temp = cheri_load(xnzval, i, &flag_buf, caps[0]);
    cheri_store(nzval, i, temp, &flag_buf, caps[4]);
  }
  for (i = 0; i < n * l; i++) {
    int temp = cheri_load(xcols, i, &flag_buf, caps[1]);
    cheri_store(cols, i, temp, &flag_buf, caps[5]);
  }
  for (i = 0; i < n; i++) {
    TYPE temp = cheri_load(xvec, i, &flag_buf, caps[2]);
    cheri_store(vec, i, temp, &flag_buf, caps[6]);
  }

ellpack_1:
  for (i = 0; i < n; i++) {
    TYPE sum = cheri_load(out, i, &flag_buf, caps[7]);
  ellpack_2:
    for (j = 0; j < l; j++) {
      int idx = j + i * l;
      TYPE nzval_val = cheri_load(nzval, idx, &flag_buf, caps[4]);
      int cols_val = cheri_load(cols, idx, &flag_buf, caps[5]);
      TYPE vec_val = cheri_load(vec, cols_val, &flag_buf, caps[6]);
      Si = nzval_val * vec_val;
      sum += Si;
    }
    cheri_store(out, i, sum, &flag_buf, caps[7]);
  }
  for (i = 0; i < n; i++) {
    TYPE temp = cheri_load(out, i, &flag_buf, caps[7]);
    cheri_store(xout, i, temp, &flag_buf, caps[3]);
  }

  *flag = flag_buf;
}

void fillVal(TYPE nzval[N * L], int colind[N * L], TYPE x[N]) {
  int j, cur_indx, i;
  for (i = 0; i < N; i++) {
    x[i] = ran;
    cur_indx = 0;
    for (j = 0; j < L; j++) {
      nzval[i * L + j] = ran;
      colind[i * L + j] = cur_indx;
    }
  }
}

void initOut(TYPE y[N]) {
  int i;
  for (i = 0; i < N; i++) {
    y[i] = 0;
  }
}

int main() {
  int colind[N * L];
  TYPE nzval[N * L];
  TYPE x[N];
  TYPE y[N];
  int i;

  fillVal(nzval, colind, x);
  initOut(y);

  u32 cap[16] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(N, L, nzval, colind, x, y, &flag, cap);
  return 0;
}
