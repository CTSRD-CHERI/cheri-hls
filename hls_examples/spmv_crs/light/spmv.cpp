/*
Based on algorithm described here:
http://www.cs.berkeley.edu/~mhoemmen/matrix-seminar/slides/UCB_sparse_tutorial_1.pdf
*/
#include "../../chls-light.h"

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
  // 10 caps: 5 for input arrays + 5 for local arrays
  Cap caps[10];
  u32 buffer[20];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(5, buffer, cap, caps);

  TYPE val[NNZ];
  int cols[NNZ];
  int rowDelimiters[N + 1];
  TYPE vec[N];
  TYPE out[N];

  create_cap(NNZ, caps, 5);       // val
  create_cap(NNZ, caps, 6);       // cols
  create_cap(N + 1, caps, 7);     // rowDelimiters
  create_cap(N, caps, 8);         // vec
  create_cap(N, caps, 9);         // out

  // Load val array
  for (i = 0; i < NNZ; i++) {
    TYPE temp = cheri_load(xval, i, &flag_buf, caps[0]);
    cheri_store(val, i, temp, &flag_buf, caps[5]);
  }

  // Load cols array
  for (i = 0; i < NNZ; i++) {
    int temp = cheri_load(xcols, i, &flag_buf, caps[1]);
    cheri_store(cols, i, temp, &flag_buf, caps[6]);
  }

  // Load rowDelimiters array
  for (i = 0; i < N + 1; i++) {
    int temp = cheri_load(xrowDelimiters, i, &flag_buf, caps[2]);
    cheri_store(rowDelimiters, i, temp, &flag_buf, caps[7]);
  }

  // Load vec array
  for (i = 0; i < N; i++) {
    TYPE temp = cheri_load(xvec, i, &flag_buf, caps[3]);
    cheri_store(vec, i, temp, &flag_buf, caps[8]);
  }

  int temp = cheri_load(rowDelimiters, 0, &flag_buf, caps[7]);
spmv_1:
  for (i = 0; i < size; i++) {
    sum = 0;
    Si = 0;
    int tmp_begin = temp;
    int tmp_end = cheri_load(rowDelimiters, i + 1, &flag_buf, caps[7]);
    temp = tmp_end;
  spmv_2:
    for (j = tmp_begin; j < tmp_end; j++) {
      TYPE val_j = cheri_load(val, j, &flag_buf, caps[5]);
      int col_j = cheri_load(cols, j, &flag_buf, caps[6]);
      TYPE vec_val = cheri_load(vec, col_j, &flag_buf, caps[8]);
      Si = val_j * vec_val;
      sum = sum + Si;
    }
    cheri_store(out, i, sum, &flag_buf, caps[9]);
  }

  // Store out array back to xout
  for (i = 0; i < size; i++) {
    TYPE temp = cheri_load(out, i, &flag_buf, caps[9]);
    cheri_store(xout, i, temp, &flag_buf, caps[4]);
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
