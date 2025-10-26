#include "../../chls.h"

// Define compute data type
#define TYPE int

// Specify row/column sizes
#define row_size 64
#define col_size 64
#define N row_size *col_size

void hls_top(int size, TYPE xm1[N], TYPE xm2[N], TYPE xprod[N], u32 *flag,
             u32 cap[12]) {
#pragma HLS INTERFACE m_axi port = xm1
#pragma HLS INTERFACE m_axi port = xm2
#pragma HLS INTERFACE m_axi port = xprod
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  int i, j, k;
  int k_col, i_col;
  TYPE mult;

  u32 flag_buf = 0;
  // 3 and 12 comes from program analysis
  Cap caps[6];
  u32 buffer[12];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(3, buffer, cap, caps);

  TYPE m1[N], m2[N], prod[N];
  create_cap(N, caps, 3);
  create_cap(N, caps, 4);
  create_cap(N, caps, 5);

  for (i = 0; i < size * size; i++) {
    int temp = cheri_load(xm1, i, &flag_buf, caps[0]);
    cheri_store(m1, i, temp, &flag_buf, caps[3]);
  }
  for (i = 0; i < size * size; i++) {
    int temp = cheri_load(xm2, i, &flag_buf, caps[1]);
    cheri_store(m2, i, temp, &flag_buf, caps[4]);
  }

outer:
  for (i = 0; i < size; i++) {
  middle:
    for (j = 0; j < size; j++) {
      i_col = i * size;
      TYPE sum = 0;
    inner:
      for (k = 0; k < size; k++) {
        k_col = k * size;
        int temp_m1 = cheri_load(m1, i_col + k, &flag_buf, caps[3]);
        int temp_m2 = cheri_load(m2, k_col + j, &flag_buf, caps[4]);
        mult = temp_m1 * temp_m2;
        sum += mult;
      }
      cheri_store(prod, i_col + j, sum, &flag_buf, caps[5]);
    }
  }

  for (i = 0; i < size * size; i++) {
    int temp = cheri_load(prod, i, &flag_buf, caps[5]);
    cheri_store(xprod, i, temp, &flag_buf, caps[2]);
  }
  *flag = flag_buf;
}

int main() {

  TYPE m1[N] = {0}, m2[N] = {0}, prod[N] = {0};

  u32 cap[12] = {
      0,          0,          0xf90d8007, 0x30001fff, 0,          0,
      0xf90d8007, 0x30001fff, 0,          0,          0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(row_size, m1, m2, prod, &flag, cap);

  return 0;
}
