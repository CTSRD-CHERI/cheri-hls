// Define compute data type
#define TYPE int

// Specify row/column sizes
#define row_size 64
#define col_size 64
#define N row_size *col_size

void hls_top(int size, TYPE xm1[N], TYPE xm2[N], TYPE xprod[N]) {
#pragma HLS INTERFACE m_axi port = xm1
#pragma HLS INTERFACE m_axi port = xm2
#pragma HLS INTERFACE m_axi port = xprod
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  int i, j, k;
  int k_col, i_col;
  TYPE mult;

  TYPE m1[N], m2[N], prod[N];

  for (i = 0; i < size * size; i++)
    m1[i] = xm1[i];
  for (i = 0; i < size * size; i++)
    m2[i] = xm2[i];

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

  for (i = 0; i < size * size; i++)
    xprod[i] = prod[i];
}

int main() {

  TYPE m1[N] = {0}, m2[N] = {0}, prod[N] = {0};
  hls_top(row_size, m1, m2, prod);

  return 0;
}
