#include "../../chls.h"

// Define input sizes
#define col_size 64
#define row_size 128
#define f_size 9

// Data Bounds
#define TYPE int

void hls_top(int size, TYPE xorig[row_size * col_size],
             TYPE xsol[row_size * col_size], TYPE xfilter[f_size], u32 *flag,
             u32 cap[12]) {
#pragma HLS INTERFACE m_axi port = xorig
#pragma HLS INTERFACE m_axi port = xsol
#pragma HLS INTERFACE m_axi port = xfilter
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  int i, r, c, k1, k2;
  TYPE temp, mul;

  u32 flag_buf = 0;
  // 3 and 12 comes from program analysis
  Cap caps[3];
  u32 buffer[12];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(3, buffer, cap, caps);

  TYPE sol[row_size * col_size] = {0};

stencil_label1:
  for (r = 0; r < size - 2; r++) {
  stencil_label2:
    for (c = 0; c < col_size - 2; c++) {
      temp = 0;
    stencil_label3:
      for (k1 = 0; k1 < 3; k1++) {
      stencil_label4:
        for (k2 = 0; k2 < 3; k2++) {
          TYPE filter_elem =
              cheri_load(xfilter, k1 * 3 + k2, &flag_buf, caps[2]);
          TYPE orig_elem = cheri_load(xorig, (r + k1) * col_size + c + k2,
                                      &flag_buf, caps[0]);
          temp += filter_elem * orig_elem;
        }
      }
      sol[(r * col_size) + c] = temp;
    }
  }

  for (i = 0; i < size * col_size; i++)
    cheri_store(xsol, i, sol[i], &flag_buf, caps[1]);

  *flag = flag_buf;
}

int main() {
  TYPE orig[row_size * col_size];
  TYPE sol[row_size * col_size];
  TYPE filter[f_size];

  u32 cap[12] = {
      0,          0,          0xf90d8007, 0x30001fff, 0,          0,
      0xf90d8007, 0x30001fff, 0,          0,          0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(row_size, orig, sol, filter, &flag, cap);

  return 0;
}
