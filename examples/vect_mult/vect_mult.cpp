#define N 100

void vect_mult(int size, int a[N], int b[N], int c[N]) {
#pragma HLS INTERFACE m_axi port = a
#pragma HLS INTERFACE m_axi port = b
#pragma HLS INTERFACE m_axi port = c
#pragma HLS INTERFACE s_axilite port=size
#pragma HLS INTERFACE s_axilite port=return

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

  vect_mult(N, a, b, c);

  int res = 0;
  for (int i = 0; i < N; i++) {
    res += (c_gold[i] == c[i]);
  }

  return (res != N);
}
