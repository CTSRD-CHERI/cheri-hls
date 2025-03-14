#define N 10

// void hls_top(int size, int a[N]) {
//#pragma HLS INTERFACE m_axi port = a
//#pragma HLS INTERFACE s_axilite port = size
//   for (int i = 0; i < size; i++) {
//#pragma HLS PIPELINE
//     a[i] = i;
//   }
// }

void hls_top(int size, int a[N], int c[N]) {
#pragma HLS INTERFACE m_axi port = a
#pragma HLS INTERFACE m_axi port = c
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return

  int b[N] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

  for (int i = 0; i < size; i++)
#pragma HLS PIPELINE
    c[i] = a[i] * b[i];
}

int main() {
  int a[N], b[N], c[N], c_gold[N];
  for (int i = 0; i < N; i++) {
    a[i] = i;
    b[i] = i;
    c[i] = 0;
    c_gold[i] = a[i] * b[i];
  }
  hls_top(N, a, c);
  int res = 0;
  for (int i = 0; i < N; i++) {
    res += (c_gold[i] == c[i]);
  }
  return (res != N);
}
