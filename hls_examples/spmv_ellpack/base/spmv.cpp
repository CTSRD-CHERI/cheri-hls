/*
Based on algorithm described here:
http://www.cs.berkeley.edu/~mhoemmen/matrix-seminar/slides/UCB_sparse_tutorial_1.pdf
*/

// These constants valid for the IEEE 494 bus interconnect matrix
#define NNZ 1666
#define N 494
#define L 10

#define TYPE int

#define MAX 1000
#define MIN 10
#define ran 100

void hls_top(int n, int l, TYPE xnzval[N * L], int xcols[N * L], TYPE xvec[N],
             TYPE xout[N]) {
#pragma HLS INTERFACE m_axi port = xnzval
#pragma HLS INTERFACE m_axi port = xcols
#pragma HLS INTERFACE m_axi port = xvec
#pragma HLS INTERFACE m_axi port = xout
#pragma HLS INTERFACE s_axilite port = n
#pragma HLS INTERFACE s_axilite port = l
#pragma HLS INTERFACE s_axilite port = return
  int i, j;
  TYPE Si;

  TYPE nzval[N * L];
  int cols[N * L];
  TYPE vec[N];
  TYPE out[N];

  for (i = 0; i < n * l; i++)
    nzval[i] = xnzval[i];
  for (i = 0; i < n * l; i++)
    cols[i] = xcols[i];
  for (i = 0; i < n; i++)
    vec[i] = xvec[i];

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
    xout[i] = out[i];
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

  hls_top(N, L, nzval, colind, x, y);
  return 0;
}
