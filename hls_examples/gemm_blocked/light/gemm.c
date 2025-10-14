/*
Implementation based on algorithm described in:
The cache performance and optimizations of blocked algorithms
M. D. Lam, E. E. Rothberg, and M. E. Wolf
ASPLOS 1991
*/

#include "../../chls.h"

#include <stdint.h>
// Data Type
#define TYPE int

// Algorithm Parameters
#define row_size 64
#define col_size 64
#define N row_size *col_size
#define block_size 8
#define NUMOFBLOCKS N / block_size / block_size

typedef uint32_t u32;
void stream_write(u32 size, int *array1, int *array2) {
  for (int i = 0; i < size; i++) {
    array1[i] = array2[i];
  }
}

void hls_top(int size, TYPE xm1[N], TYPE xm2[N], TYPE xprod[N], u32 *flag,
             u32 cap[12]) {
#pragma HLS INTERFACE m_axi port = xm1
#pragma HLS INTERFACE m_axi port = xm2
#pragma HLS INTERFACE m_axi port = xprod
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return
  int i, k, j, jj, kk;
  int i_row, k_row;
  TYPE temp_x, mul;

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
          temp_x = cheri_load(m1, i_row + k + kk, &flag_buf, caps[3]);
        loopj:
          for (j = 0; j < block_size; ++j) {
            int temp_m2 = cheri_load(m2, k_row + j + jj, &flag_buf, caps[4]);
            mul = temp_x * temp_m2;

            int temp_p =
                cheri_load(prod, i_row + j + jj, &flag_buf, caps[5]) + mul;
            cheri_store(prod, i_row + j + jj, temp_p, &flag_buf, caps[5]);
          }
        }
      }
    }
  }
  cheri_stream_write(size * size, xprod, prod, &flag_buf, caps[2], caps[5]);
}

int main() {
  TYPE m1[N] = {0}, m2[N] = {0}, prod[N] = {0};
  hls_top(row_size, m1, m2, prod);

  return 0;
}
