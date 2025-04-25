/*
Based on algorithm described here:
http://www.cs.berkeley.edu/~mhoemmen/matrix-seminar/slides/UCB_sparse_tutorial_1.pdf
*/
#include <stdint.h>
#define NNZ 1666
#define N 494

#define TYPE int

#define MAX 1000
#define MIN 10
#define ran 100
typedef uint32_t u32;
void stream_write(u32 size, int *array1, int *array2) {
#pragma HLS INLINE
  for (int i = 0; i < size; i++) {
    array1[i] = array2[i];
  }
}

void hls_top(int size, TYPE xval[NNZ], int xcols[NNZ],
             int xrowDelimiters[N + 1], TYPE xvec[N], TYPE xout[N]) {
#pragma HLS INTERFACE m_axi port = xval
#pragma HLS INTERFACE m_axi port = xcols
#pragma HLS INTERFACE m_axi port = xrowDelimiters
#pragma HLS INTERFACE m_axi port = xvec
#pragma HLS INTERFACE m_axi port = xout
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  int i, j;
  TYPE sum, Si;

  TYPE val[NNZ];
  int cols[NNZ];
  int rowDelimiters[N + 1];
  TYPE vec[N];
  TYPE out[N];
  for (i = 0; i < N + 1; i++)
    rowDelimiters[i] = xrowDelimiters[i];
  for (i = 0; i < NNZ; i++)
    val[i] = xval[i];
  for (i = 0; i < NNZ; i++)
    cols[i] = xcols[i];
  for (i = 0; i < N; i++)
    vec[i] = xvec[i];

  int temp = xrowDelimiters[0];
spmv_1:
  for (i = 0; i < size; i++) {
    sum = 0;
    Si = 0;
    int tmp_begin = temp;
    int tmp_end = rowDelimiters[i + 1];
    temp = tmp_end;
  spmv_2:
    for (j = tmp_begin; j < tmp_end; j++) {
      Si = val[j] * vec[cols[j]];
      sum = sum + Si;
    }
    out[i] = sum;
  }
  stream_write(N, xout, out);
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

  hls_top(N, nzval, colind, rowptr, x, y);

  return 0;
}
