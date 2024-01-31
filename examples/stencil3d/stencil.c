/*
Implementation based on algorithm described in:
"Stencil computation optimization and auto-tuning on state-of-the-art multicore
architectures" K. Datta, M. Murphy, V. Volkov, S. Williams, J. Carter, L.
Oliker, D. Patterson, J. Shalf, K. Yelick SC 2008
*/

// Define input sizes
#define height_size 32
#define col_size 32
#define row_size 16
// Data Bounds
#define TYPE int
// Convenience Macros
#define SIZE (row_size * col_size * height_size)
#define INDX(_row_size, _col_size, _i, _j, _k)                                 \
  ((_i) + _row_size * ((_j) + _col_size * (_k)))

void hls_top(int size, TYPE C[2], TYPE orig[SIZE], TYPE sol[SIZE]) {
#pragma HLS INTERFACE m_axi port = C
#pragma HLS INTERFACE m_axi port = orig
#pragma HLS INTERFACE m_axi port = sol
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  int i, j, k;
  TYPE sum0, sum1, mul0, mul1;

// Handle boundary conditions by filling with original values
height_bound_col:
  for (j = 0; j < size; j++) {
  height_bound_row:
    for (k = 0; k < row_size; k++) {
      sol[INDX(row_size, size, k, j, 0)] = orig[INDX(row_size, size, k, j, 0)];
      sol[INDX(row_size, size, k, j, height_size - 1)] =
          orig[INDX(row_size, size, k, j, height_size - 1)];
    }
  }
col_bound_height:
  for (i = 1; i < height_size - 1; i++) {
  col_bound_row:
    for (k = 0; k < row_size; k++) {
      sol[INDX(row_size, size, k, 0, i)] = orig[INDX(row_size, size, k, 0, i)];
      sol[INDX(row_size, size, k, size - 1, i)] =
          orig[INDX(row_size, size, k, size - 1, i)];
    }
  }
row_bound_height:
  for (i = 1; i < height_size - 1; i++) {
  row_bound_col:
    for (j = 1; j < size - 1; j++) {
      sol[INDX(row_size, size, 0, j, i)] = orig[INDX(row_size, size, 0, j, i)];
      sol[INDX(row_size, size, row_size - 1, j, i)] =
          orig[INDX(row_size, size, row_size - 1, j, i)];
    }
  }

// Stencil computation
loop_height:
  for (i = 1; i < height_size - 1; i++) {
  loop_col:
    for (j = 1; j < size - 1; j++) {
    loop_row:
      for (k = 1; k < row_size - 1; k++) {
        sum0 = orig[INDX(row_size, size, k, j, i)];
        sum1 = orig[INDX(row_size, size, k, j, i + 1)] +
               orig[INDX(row_size, size, k, j, i - 1)] +
               orig[INDX(row_size, size, k, j + 1, i)] +
               orig[INDX(row_size, size, k, j - 1, i)] +
               orig[INDX(row_size, size, k + 1, j, i)] +
               orig[INDX(row_size, size, k - 1, j, i)];
        mul0 = sum0 * C[0];
        mul1 = sum1 * C[1];
        sol[INDX(row_size, size, k, j, i)] = mul0 + mul1;
      }
    }
  }
}

int main() {
  TYPE C[2] = {1};
  TYPE orig[SIZE] = {1};
  TYPE sol[SIZE] = {1};
  hls_top(col_size, C, orig, sol);

  return 0;
}
