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
  // 4 arrays (xnzval, xcols, xvec, xout) * 4 = 16
  Cap caps[4];
  u32 buffer[16];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(4, buffer, cap, caps);

  TYPE nzval[N * L];
  int cols[N * L];
  TYPE vec[N];
  TYPE out[N];

  for (i = 0; i < n * l; i++)
    nzval[i] = cheri_load(xnzval, i, &flag_buf, caps[0]);
  for (i = 0; i < n * l; i++)
    cols[i] = cheri_load(xcols, i, &flag_buf, caps[1]);
  for (i = 0; i < n; i++)
    vec[i] = cheri_load(xvec, i, &flag_buf, caps[2]);

ellpack_1:
  for (i = 0; i < n; i++) {
    TYPE sum = out[i];
  ellpack_2:
    for (j = 0; j < l; j++) {
      Si = nzval[j + i * l] * vec[cols[j + i * l]];
      sum += Si;
    }
    out[i] = sum;
  }
  for (i = 0; i < n; i++)
    cheri_store(xout, i, out[i], &flag_buf, caps[3]);

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
