#include "../../chls.h"

#define FFT_SIZE 1024
// #define twoPI 6.28318530717959

void hls_top(int size, int xreal[FFT_SIZE], int ximg[FFT_SIZE],
             int xreal_twid[FFT_SIZE], int ximg_twid[FFT_SIZE],
             int yreal[FFT_SIZE], int yimg[FFT_SIZE], u32 *flag, u32 cap[24]) {
#pragma HLS INTERFACE m_axi port = xreal
#pragma HLS INTERFACE m_axi port = ximg
#pragma HLS INTERFACE m_axi port = yreal
#pragma HLS INTERFACE m_axi port = yimg
#pragma HLS INTERFACE m_axi port = xreal_twid
#pragma HLS INTERFACE m_axi port = ximg_twid
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  int even, odd, span, log, rootindex;
  int temp;
  log = 0;

  u32 flag_buf = 0;
  // 6 and 24 comes from program analysis
  Cap caps[6];
  u32 buffer[24];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(6, buffer, cap, caps);

  int real[FFT_SIZE];
  int img[FFT_SIZE];
  int real_twid[FFT_SIZE / 2];
  int img_twid[FFT_SIZE / 2];

  for (int i = 0; i < size; i++)
    real[i] = cheri_load(xreal, i, &flag_buf, caps[0]);
  for (int i = 0; i < size; i++)
    img[i] = cheri_load(ximg, i, &flag_buf, caps[1]);
  for (int i = 0; i < size / 2; i++)
    real_twid[i] = cheri_load(xreal_twid, i, &flag_buf, caps[2]);
  for (int i = 0; i < size / 2; i++)
    img_twid[i] = cheri_load(ximg_twid, i, &flag_buf, caps[3]);

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
    cheri_store(yreal, i, real[i], &flag_buf, caps[4]);
  for (int i = 0; i < size; i++)
    cheri_store(yimg, i, img[i], &flag_buf, caps[5]);

  *flag = flag_buf;
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

  u32 cap[24] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(size, data_x, data_y, real, img, ydata_x, ydata_y, &flag, cap);

  return 0;
}
