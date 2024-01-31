/*
Implementation based on algorithm described in:
The cache performance and optimizations of blocked algorithms
M. D. Lam, E. E. Rothberg, and M. E. Wolf
ASPLOS 1991
*/

// Data Type
#define TYPE int

// Algorithm Parameters
#define row_size 64
#define col_size 64
#define N row_size *col_size
#define block_size 8
#define NUMOFBLOCKS N / block_size / block_size

void hls_top(int size, TYPE m1[N], TYPE m2[N], TYPE prod[N]) {
#pragma HLS INTERFACE m_axi port = m1
#pragma HLS INTERFACE m_axi port = m2
#pragma HLS INTERFACE m_axi port = prod
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  int i, k, j, jj, kk;
  int i_row, k_row;
  TYPE temp_x, mul;

loopjj:
  for (jj = 0; jj < size; jj += block_size) {
  loopkk:
    for (kk = 0; kk < size; kk += block_size) {
    loopi:
      for (i = 0; i < size; ++i) {
      loopk:
        for (k = 0; k < block_size; ++k) {
          i_row = i * size;
          k_row = (k + kk) * size;
          temp_x = m1[i_row + k + kk];
        loopj:
          for (j = 0; j < block_size; ++j) {
            mul = temp_x * m2[k_row + j + jj];
            prod[i_row + j + jj] += mul;
          }
        }
      }
    }
  }
}

int main() {

  TYPE m1[N] = {0}, m2[N] = {0}, prod[N] = {0};
  hls_top(row_size, m1, m2, prod);

  return 0;
}
