#include <math.h>

#define FFT_SIZE 1024
// #define twoPI 6.28318530717959

void hls_top(int real[FFT_SIZE], int img[FFT_SIZE], int real_twid[FFT_SIZE / 2],
             int img_twid[FFT_SIZE / 2], int size) {
#pragma HLS INTERFACE m_axi port = real
#pragma HLS INTERFACE m_axi port = img
#pragma HLS INTERFACE m_axi port = real_twid
#pragma HLS INTERFACE m_axi port = img_twid
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  int even, odd, span, log, rootindex;
  int temp;
  log = 0;

outer:
  for (span = size >> 1; span; span >>= 1, log++) {
  inner:
    for (odd = span; odd < size; odd++) {
      odd |= span;
      even = odd ^ span;

      temp = real[even] + real[odd];
      real[odd] = real[even] - real[odd];
      real[even] = temp;

      temp = img[even] + img[odd];
      img[odd] = img[even] - img[odd];
      img[even] = temp;

      rootindex = (even << log) & (size - 1);
      if (rootindex) {
        temp =
            real_twid[rootindex] * real[odd] - img_twid[rootindex] * img[odd];
        img[odd] =
            real_twid[rootindex] * img[odd] + img_twid[rootindex] * real[odd];
        real[odd] = temp;
      }
    }
  }
}

int main() {
  int size = FFT_SIZE;
  int data_x[size];
  int data_y[size];
  int img[size];
  int real[size];
  int i;

  // set up twiddles...
  int twoPI = (int)6283;
  int typed;
  int n, N;
  N = size;

  // Pre-calc twiddles
  for (n = 0; n < (N >> 1); n++) {
    typed = (int)(twoPI * n / N);
    real[n] = 1000 * cos(typed);
    img[n] = -1000 * sin(typed);
  }

  // Init data
  for (i = 0; i < size; i++) {
    data_x[i] = (int)(i);
    data_y[i] = (int)(i);
  }

  hls_top(data_x, data_y, real, img, size);

  return 0;
}
