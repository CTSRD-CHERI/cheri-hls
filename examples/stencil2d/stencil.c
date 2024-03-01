// Define input sizes
#define col_size 64
#define row_size 128
#define f_size 9

// Data Bounds
#define TYPE int
#define MAX 1000
#define MIN 1

void hls_top(int size, TYPE xorig[row_size * col_size],
             TYPE xsol[row_size * col_size], TYPE xfilter[f_size]) {
#pragma HLS INTERFACE m_axi port = xorig
#pragma HLS INTERFACE m_axi port = xsol
#pragma HLS INTERFACE m_axi port = xfilter
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  int i, r, c, k1, k2;
  TYPE temp, mul;

  TYPE orig[row_size * col_size], filter[row_size * col_size], sol[f_size];

  for (i = 0; i < size * col_size; i++)
    orig[i] = xorig[i];
  for (i = 0; i < f_size; i++)
    filter[i] = xfilter[i];

stencil_label1:
  for (r = 0; r < size - 2; r++) {
  stencil_label2:
    for (c = 0; c < col_size - 2; c++) {
      temp = (TYPE)0;
    stencil_label3:
      for (k1 = 0; k1 < 3; k1++) {
      stencil_label4:
        for (k2 = 0; k2 < 3; k2++) {
          mul = filter[k1 * 3 + k2] * orig[(r + k1) * col_size + c + k2];
          temp += mul;
        }
      }
      sol[(r * col_size) + c] = temp;
    }
  }
  for (i = 0; i < size * col_size; i++)
    xsol[i] = sol[i];
}

int main() {
  TYPE orig[row_size * col_size];
  TYPE sol[row_size * col_size];
  TYPE filter[f_size];
  hls_top(row_size, orig, sol, filter);

  return 0;
}
