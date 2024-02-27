#define FFT_SIZE 1024
// #define twoPI 6.28318530717959

void hls_top(int size, int xreal[FFT_SIZE], int ximg[FFT_SIZE],
             int xreal_twid[FFT_SIZE], int ximg_twid[FFT_SIZE],
             int yreal[FFT_SIZE], int yimg[FFT_SIZE]) {
#pragma HLS INTERFACE m_axi port = xreal
#pragma HLS INTERFACE m_axi port = ximg
#pragma HLS INTERFACE m_axi port = yreal
#pragma HLS INTERFACE m_axi port = yimg
#pragma HLS INTERFACE m_axi port = xreal_twid
#pragma HLS INTERFACE m_axi port = ximg_twid
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  int even, odd, span, log, rootindex;
  int temp;
  log = 0;

  int real[FFT_SIZE];
  int img[FFT_SIZE];
  int real_twid[FFT_SIZE / 2];
  int img_twid[FFT_SIZE / 2];

  for (int i = 0; i < size; i++)
    real[i] = xreal[i];
  for (int i = 0; i < size; i++)
    img[i] = ximg[i];
  for (int i = 0; i < size / 2; i++)
    real_twid[i] = xreal_twid[i];
  for (int i = 0; i < size / 2; i++)
    img_twid[i] = ximg_twid[i];

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
  for (int i = 0; i < size; i++)
    yreal[i] = real[i];
  for (int i = 0; i < size; i++)
    yimg[i] = img[i];
}

int main() {
  int size = FFT_SIZE;
  int data_x[size];
  int data_y[size];
  int ydata_x[size];
  int ydata_y[size];
  int img[size];
  int real[size];
  int i;

  // set up twiddles...
  int twoPI = (int)6283;
  int typed;
  int n;

  // Pre-calc twiddles
  for (n = 0; n < (size >> 1); n++) {
    typed = (int)(twoPI * n / size);
    real[n] = 2000 * typed;
    img[n] = -2000 * typed;
  }

  // Init data
  for (i = 0; i < size; i++) {
    data_x[i] = (int)(i);
    data_y[i] = (int)(i);
  }

  hls_top(size, data_x, data_y, real, img, ydata_x, ydata_y);

  return 0;
}
