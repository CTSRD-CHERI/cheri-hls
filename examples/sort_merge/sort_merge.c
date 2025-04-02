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

void hls_top(int size, TYPE xa[SIZE], TYPE xb[SIZE]) {
#pragma HLS INTERFACE m_axi port = xa
#pragma HLS INTERFACE m_axi port = xb
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  int start, stop;
  int i, m, from, mid, to;

  start = 0;
  stop = size;

  TYPE a[SIZE];

  for (i = 0; i < size; i++)
    a[i] = xa[i];

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
    xb[i] = a[i];
}

int main() {
  TYPE a[SIZE];

  for (int i = 0; i < SIZE; i++)
    a[i] = 0;

  hls_top(SIZE, a, a);
  return 0;
}
