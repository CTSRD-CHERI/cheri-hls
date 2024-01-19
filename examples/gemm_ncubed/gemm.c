// Define compute data type
#define TYPE int

// Specify row/column sizes
#define row_size 64
#define col_size 64
#define N row_size *col_size

void hls_top(TYPE m1[N], TYPE m2[N], TYPE prod[N], int size) {
#pragma HLS INTERFACE m_axi port = m1
#pragma HLS INTERFACE m_axi port = m2
#pragma HLS INTERFACE m_axi port = prod
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  int i, j, k;
  int k_col, i_col;
  TYPE mult;

outer:
  for (i = 0; i < size; i++) {
  middle:
    for (j = 0; j < size; j++) {
      i_col = i * size;
      TYPE sum = 0;
    inner:
      for (k = 0; k < size; k++) {
        k_col = k * size;
        mult = m1[i_col + k] * m2[k_col + j];
        sum += mult;
      }
      prod[i_col + j] = sum;
    }
  }
}

int main() {

  TYPE m1[N] = {0}, m2[N] = {0}, prod[N] = {0};
  hls_top(m1, m2, prod, row_size);

  return 0;
}
