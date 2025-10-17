#include "../../chls.h"

#define SIZE 2048
#define TYPE int

void merge(TYPE a[SIZE], int start, int m, int stop) {
  TYPE temp[SIZE];
  int i, j, k;

merge_label1:
  for (i = start; i <= m; i++) {
    temp[i] = a[i];
  }

merge_label2:
  for (j = m + 1; j <= stop; j++) {
    temp[m + 1 + stop - j] = a[j];
  }

  i = start;
  j = stop;

merge_label3:
  for (k = start; k <= stop; k++) {
    TYPE tmp_j = temp[j];
    TYPE tmp_i = temp[i];
    if (tmp_j < tmp_i) {
      a[k] = tmp_j;
      j--;
    } else {
      a[k] = tmp_i;
      i++;
    }
  }
}

void hls_top(int size, TYPE xa[SIZE], TYPE xb[SIZE], u32 *flag, u32 cap[8]) {
#pragma HLS INTERFACE m_axi port = xa
#pragma HLS INTERFACE m_axi port = xb
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return
  int start, stop;
  int i, m, from, mid, to;

  u32 flag_buf = 0;
  // 2 arrays (xa, xb) * 4 = 8
  Cap caps[2];
  u32 buffer[8];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(2, buffer, cap, caps);

  start = 0;
  stop = size;

  TYPE a[SIZE];

  for (i = 0; i < size; i++)
    a[i] = cheri_load(xa, i, &flag_buf, caps[0]);

mergesort_label1:
  for (m = 1; m < stop - start; m += m) {
  mergesort_label2:
    for (i = start; i < stop; i += m + m) {
      from = i;
      mid = i + m - 1;
      to = i + m + m - 1;
      if (to < stop) {
        merge(a, from, mid, to);
      } else {
        merge(a, from, mid, stop);
      }
    }
  }

  for (i = 0; i < size; i++)
    cheri_store(xb, i, a[i], &flag_buf, caps[1]);

  *flag = flag_buf;
}

int main() {
  TYPE a[SIZE];

  for (int i = 0; i < SIZE; i++)
    a[i] = 0;

  u32 cap[8] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(SIZE, a, a, &flag, cap);
  return 0;
}
