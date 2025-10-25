/*
Implementation based on algorithm described in:
"Stencil computation optimization and auto-tuning on state-of-the-art multicore
architectures" K. Datta, M. Murphy, V. Volkov, S. Williams, J. Carter, L.
Oliker, D. Patterson, J. Shalf, K. Yelick SC 2008
*/

#include "../../chls-fullcap.h"

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
  // 6 caps: 3 for input arrays + 3 for local arrays
  Cap caps[6];
  u32 buffer[12];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(3, buffer, cap, caps);

  TYPE C[2], orig[SIZE], sol[SIZE];
  create_cap(2, caps, 3);    // C
  create_cap(SIZE, caps, 4); // orig
  create_cap(SIZE, caps, 5); // sol

  TYPE temp_c0 = cheri_load(xC, 0, &flag_buf, caps[0]);
  if (flag_buf) {
    *flag = 1;
    return;
  }
  cheri_store(C, 0, temp_c0, &flag_buf, caps[3]);
  if (flag_buf) {
    *flag = 1;
    return;
  }
  TYPE temp_c1 = cheri_load(xC, 1, &flag_buf, caps[0]);
  if (flag_buf) {
    *flag = 1;
    return;
  }
  cheri_store(C, 1, temp_c1, &flag_buf, caps[3]);
  if (flag_buf) {
    *flag = 1;
    return;
  }

  for (i = 0; i < row_size * size * height_size; i++) {
    TYPE temp = cheri_load(xorig, i, &flag_buf, caps[1]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
    cheri_store(orig, i, temp, &flag_buf, caps[4]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
  }

// Handle boundary conditions by filling with original values
height_bound_col:
  for (j = 0; j < size; j++) {
  height_bound_row:
    for (k = 0; k < row_size; k++) {
      TYPE temp1 =
          cheri_load(orig, INDX(row_size, size, k, j, 0), &flag_buf, caps[4]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
      cheri_store(sol, INDX(row_size, size, k, j, 0), temp1, &flag_buf,
                  caps[5]);
      if (flag_buf) {
        *flag = 1;
        return;
      }

      TYPE temp2 = cheri_load(orig, INDX(row_size, size, k, j, height_size - 1),
                              &flag_buf, caps[4]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
      cheri_store(sol, INDX(row_size, size, k, j, height_size - 1), temp2,
                  &flag_buf, caps[5]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
    }
  }
col_bound_height:
  for (i = 1; i < height_size - 1; i++) {
  col_bound_row:
    for (k = 0; k < row_size; k++) {
      TYPE temp1 =
          cheri_load(orig, INDX(row_size, size, k, 0, i), &flag_buf, caps[4]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
      cheri_store(sol, INDX(row_size, size, k, 0, i), temp1, &flag_buf,
                  caps[5]);
      if (flag_buf) {
        *flag = 1;
        return;
      }

      TYPE temp2 = cheri_load(orig, INDX(row_size, size, k, size - 1, i),
                              &flag_buf, caps[4]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
      cheri_store(sol, INDX(row_size, size, k, size - 1, i), temp2, &flag_buf,
                  caps[5]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
    }
  }
row_bound_height:
  for (i = 1; i < height_size - 1; i++) {
  row_bound_col:
    for (j = 1; j < size - 1; j++) {
      TYPE temp1 =
          cheri_load(orig, INDX(row_size, size, 0, j, i), &flag_buf, caps[4]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
      cheri_store(sol, INDX(row_size, size, 0, j, i), temp1, &flag_buf,
                  caps[5]);
      if (flag_buf) {
        *flag = 1;
        return;
      }

      TYPE temp2 = cheri_load(orig, INDX(row_size, size, row_size - 1, j, i),
                              &flag_buf, caps[4]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
      cheri_store(sol, INDX(row_size, size, row_size - 1, j, i), temp2,
                  &flag_buf, caps[5]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
    }
  }

// Stencil computation
loop_height:
  for (i = 1; i < height_size - 1; i++) {
  loop_col:
    for (j = 1; j < size - 1; j++) {
    loop_row:
      for (k = 1; k < row_size - 1; k++) {
        sum0 =
            cheri_load(orig, INDX(row_size, size, k, j, i), &flag_buf, caps[4]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
        sum1 = cheri_load(orig, INDX(row_size, size, k, j, i + 1), &flag_buf,
                          caps[4]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
        sum1 += cheri_load(orig, INDX(row_size, size, k, j, i - 1), &flag_buf,
                           caps[4]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
        sum1 += cheri_load(orig, INDX(row_size, size, k, j + 1, i), &flag_buf,
                           caps[4]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
        sum1 += cheri_load(orig, INDX(row_size, size, k, j - 1, i), &flag_buf,
                           caps[4]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
        sum1 += cheri_load(orig, INDX(row_size, size, k + 1, j, i), &flag_buf,
                           caps[4]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
        sum1 += cheri_load(orig, INDX(row_size, size, k - 1, j, i), &flag_buf,
                           caps[4]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
        TYPE c0 = cheri_load(C, 0, &flag_buf, caps[3]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
        TYPE c1 = cheri_load(C, 1, &flag_buf, caps[3]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
        mul0 = sum0 * c0;
        mul1 = sum1 * c1;
        cheri_store(sol, INDX(row_size, size, k, j, i), mul0 + mul1, &flag_buf,
                    caps[5]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
      }
    }
  }
  for (i = 0; i < row_size * size * height_size; i++) {
    TYPE temp = cheri_load(sol, i, &flag_buf, caps[5]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
    cheri_store(xsol, i, temp, &flag_buf, caps[2]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
  }

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
