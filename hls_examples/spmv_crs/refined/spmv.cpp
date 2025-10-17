/*
Based on algorithm described here:
http://www.cs.berkeley.edu/~mhoemmen/matrix-seminar/slides/UCB_sparse_tutorial_1.pdf
*/
#include "../../chls.h"

#define NNZ 1666
#define N 494

#define TYPE int

#define MAX 1000
#define MIN 10
#define ran 100

void hls_top(int size, TYPE xval[NNZ], int xcols[NNZ],
             int xrowDelimiters[N + 1], TYPE xvec[N], TYPE xout[N], u32 *flag,
             u32 cap[20]) {
#pragma HLS INTERFACE m_axi port = xval
#pragma HLS INTERFACE m_axi port = xcols
#pragma HLS INTERFACE m_axi port = xrowDelimiters
#pragma HLS INTERFACE m_axi port = xvec
#pragma HLS INTERFACE m_axi port = xout
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return
  int i, j;
  TYPE sum, Si;

  u32 flag_buf = 0;
  // 5 arrays (xval, xcols, xrowDelimiters, xvec, xout) * 4 = 20
  Cap caps[5];
  u32 buffer[20];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(5, buffer, cap, caps);

  TYPE val[NNZ];
  int cols[NNZ];
  int rowDelimiters[N + 1];
  TYPE vec[N];
  TYPE out[N];

  int temp = cheri_load(xrowDelimiters, 0, &flag_buf, caps[2]);
spmv_1:
  for (i = 0; i < size; i++) {
    sum = 0;
    Si = 0;
    int tmp_begin = temp;
    int tmp_end = cheri_load(xrowDelimiters, i + 1, &flag_buf, caps[2]);
    temp = tmp_end;
  spmv_2:
    for (j = tmp_begin; j < tmp_end; j++) {
      TYPE val_j = cheri_load(xval, j, &flag_buf, caps[0]);
      int col_j = cheri_load(xcols, j, &flag_buf, caps[1]);
      TYPE vec_val = cheri_load(xvec, col_j, &flag_buf, caps[3]);
      Si = val_j * vec_val;
      sum = sum + Si;
    }
    cheri_store(xout, i, sum, &flag_buf, caps[4]);
  }

  *flag = flag_buf;
}

void fillVal(TYPE A[NNZ]) {
  int j;
  for (j = 0; j < NNZ; j++) {
    A[j] = ran;
  }
}

void fill(TYPE x[N]) {
  int j;
  for (j = 0; j < N; j++) {
    x[j] = ran;
  }
}

void initMat(int colind[NNZ], int rowDelimiters[N + 1]) {
  int nnzAssigned = 0;
  float prob = (float)NNZ / ((float)N * (float)N);

  int fillRemaining = 0;
  int i, j;
  for (i = 0; i < N; i++) {
    rowDelimiters[i] = nnzAssigned;
    for (j = 0; j < N; j++) {
      int numEntriesLeft = (N * N) - ((i * N) + j);
      int needToAssign = NNZ - nnzAssigned;
      if (numEntriesLeft <= needToAssign) {
        fillRemaining = 1;
      }
      /*sim p = 0.5*/
      if ((nnzAssigned < NNZ && j % 2) || fillRemaining == 1) {
        colind[nnzAssigned] = j;
        nnzAssigned++;
      }
    }
  }
  rowDelimiters[N] = NNZ;
}

void initOut(TYPE y[N]) {
  int i;
  for (i = 0; i < N; i++) {
    y[i] = 0;
  }
}

int main() {
  TYPE nzval[NNZ];
  TYPE x[N];
  TYPE y[N];
  int colind[NNZ];
  int rowptr[N + 1];
  int i;

  fillVal(nzval);
  fill(x);
  initMat(colind, rowptr);
  initOut(y);

  u32 cap[20] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(N, nzval, colind, rowptr, x, y, &flag, cap);

  return 0;
}
