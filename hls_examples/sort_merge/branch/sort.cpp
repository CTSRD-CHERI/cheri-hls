#include "../../chls-fullcap.h"

#define SIZE 2048
#define TYPE int

void merge(TYPE a[SIZE], int start, int m, int stop, u32 *flag_buf, Cap cap_a,
           Cap cap_temp) {
  TYPE temp[SIZE];
  int i, j, k;

merge_label1:
  for (i = start; i <= m; i++) {
    TYPE temp_val = cheri_load(a, i, flag_buf, cap_a);
    if (*flag_buf) {
      return;
    }
    cheri_store(temp, i, temp_val, flag_buf, cap_temp);
    if (*flag_buf) {
      return;
    }
  }

merge_label2:
  for (j = m + 1; j <= stop; j++) {
    TYPE temp_val = cheri_load(a, j, flag_buf, cap_a);
    if (*flag_buf) {
      return;
    }
    cheri_store(temp, m + 1 + stop - j, temp_val, flag_buf, cap_temp);
    if (*flag_buf) {
      return;
    }
  }

  i = start;
  j = stop;

merge_label3:
  for (k = start; k <= stop; k++) {
    TYPE tmp_j = cheri_load(temp, j, flag_buf, cap_temp);
    if (*flag_buf) {
      return;
    }
    TYPE tmp_i = cheri_load(temp, i, flag_buf, cap_temp);
    if (*flag_buf) {
      return;
    }
    if (tmp_j < tmp_i) {
      cheri_store(a, k, tmp_j, flag_buf, cap_a);
      if (*flag_buf) {
        break;
        // return;
      }
      j--;
    } else {
      cheri_store(a, k, tmp_i, flag_buf, cap_a);
      if (*flag_buf) {
        break; // return;
      }
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
  // 4 caps: 2 for input arrays + 2 for local arrays (a and temp)
  Cap caps[4];
  u32 buffer[8];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(2, buffer, cap, caps);

  start = 0;
  stop = size;

  TYPE a[SIZE];

  create_cap(SIZE, caps, 2); // a
  create_cap(SIZE, caps, 3); // temp

  for (i = 0; i < size; i++) {
    TYPE temp = cheri_load(xa, i, &flag_buf, caps[0]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
    cheri_store(a, i, temp, &flag_buf, caps[2]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
  }

mergesort_label1:
  for (m = 1; m < stop - start; m += m) {
  mergesort_label2:
    for (i = start; i < stop; i += m + m) {
      from = i;
      mid = i + m - 1;
      to = i + m + m - 1;
      if (to < stop) {
        merge(a, from, mid, to, &flag_buf, caps[2], caps[3]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
      } else {
        merge(a, from, mid, stop, &flag_buf, caps[2], caps[3]);
        if (flag_buf) {
          *flag = 1;
          return;
        }
      }
    }
  }

  for (i = 0; i < size; i++) {
    TYPE temp = cheri_load(a, i, &flag_buf, caps[2]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
    cheri_store(xb, i, temp, &flag_buf, caps[1]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
  }

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
