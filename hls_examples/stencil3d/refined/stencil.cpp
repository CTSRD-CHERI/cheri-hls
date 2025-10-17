/*
Implementation based on algorithm described in:
"Stencil computation optimization and auto-tuning on state-of-the-art multicore
architectures" K. Datta, M. Murphy, V. Volkov, S. Williams, J. Carter, L.
Oliker, D. Patterson, J. Shalf, K. Yelick SC 2008
*/

#include "../../chls.h"

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

void hls_top(int size, TYPE xC[2], TYPE xorig[SIZE], TYPE xsol[SIZE], u32 *flag,
             u32 cap[12]) {
#pragma HLS INTERFACE m_axi port = xC
#pragma HLS INTERFACE m_axi port = xorig
#pragma HLS INTERFACE m_axi port = xsol
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  int i, j, k;
  TYPE sum0, sum1, mul0, mul1;

  u32 flag_buf = 0;
  // 3 and 12 comes from program analysis
  Cap caps[3];
  u32 buffer[12];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(3, buffer, cap, caps);

  TYPE C[2], orig[SIZE], sol[SIZE];

  C[0] = cheri_load(xC, 0, &flag_buf, caps[0]);
  C[1] = cheri_load(xC, 1, &flag_buf, caps[0]);
  for (i = 0; i < row_size * size * height_size; i++)
    orig[i] = cheri_load(xorig, i, &flag_buf, caps[1]);

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
  for (i = 0; i < row_size * size * height_size; i++)
    cheri_store(xsol, i, sol[i], &flag_buf, caps[2]);

  *flag = flag_buf;
}

int main() {
  TYPE C[2] = {1};
  TYPE orig[SIZE] = {1};
  TYPE sol[SIZE] = {1};

  u32 cap[12] = {
      0,          0,          0xf90d8007, 0x30001fff, 0,          0,
      0xf90d8007, 0x30001fff, 0,          0,          0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(col_size, C, orig, sol, &flag, cap);

  return 0;
}
