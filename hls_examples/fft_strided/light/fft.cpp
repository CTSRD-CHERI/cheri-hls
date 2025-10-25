#include "../../chls-light.h"

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
  // 10 caps: 6 for input arrays + 4 for local arrays
  Cap caps[10];
  u32 buffer[24];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(6, buffer, cap, caps);

  int real[FFT_SIZE];
  int img[FFT_SIZE];
  int real_twid[FFT_SIZE / 2];
  int img_twid[FFT_SIZE / 2];

  create_cap(FFT_SIZE, caps, 6);        // real
  create_cap(FFT_SIZE, caps, 7);        // img
  create_cap(FFT_SIZE / 2, caps, 8);    // real_twid
  create_cap(FFT_SIZE / 2, caps, 9);    // img_twid

  for (int i = 0; i < size; i++) {
    int temp = cheri_load(xreal, i, &flag_buf, caps[0]);
    cheri_store(real, i, temp, &flag_buf, caps[6]);
  }
  for (int i = 0; i < size; i++) {
    int temp = cheri_load(ximg, i, &flag_buf, caps[1]);
    cheri_store(img, i, temp, &flag_buf, caps[7]);
  }
  for (int i = 0; i < size / 2; i++) {
    int temp = cheri_load(xreal_twid, i, &flag_buf, caps[2]);
    cheri_store(real_twid, i, temp, &flag_buf, caps[8]);
  }
  for (int i = 0; i < size / 2; i++) {
    int temp = cheri_load(ximg_twid, i, &flag_buf, caps[3]);
    cheri_store(img_twid, i, temp, &flag_buf, caps[9]);
  }

outer:
  for (span = size >> 1; span; span >>= 1, log++) {
  inner:
    for (odd = span; odd < size; odd++) {
      odd |= span;
      even = odd ^ span;

      int real_even = cheri_load(real, even, &flag_buf, caps[6]);
      int real_odd = cheri_load(real, odd, &flag_buf, caps[6]);
      temp = real_even + real_odd;
      cheri_store(real, odd, real_even - real_odd, &flag_buf, caps[6]);
      cheri_store(real, even, temp, &flag_buf, caps[6]);

      int img_even = cheri_load(img, even, &flag_buf, caps[7]);
      int img_odd = cheri_load(img, odd, &flag_buf, caps[7]);
      temp = img_even + img_odd;
      cheri_store(img, odd, img_even - img_odd, &flag_buf, caps[7]);
      cheri_store(img, even, temp, &flag_buf, caps[7]);

      rootindex = (even << log) & (size - 1);
      if (rootindex) {
        int real_twid_root = cheri_load(real_twid, rootindex, &flag_buf, caps[8]);
        int img_twid_root = cheri_load(img_twid, rootindex, &flag_buf, caps[9]);
        int real_odd_val = cheri_load(real, odd, &flag_buf, caps[6]);
        int img_odd_val = cheri_load(img, odd, &flag_buf, caps[7]);

        temp = real_twid_root * real_odd_val - img_twid_root * img_odd_val;
        int new_img_odd = real_twid_root * img_odd_val + img_twid_root * real_odd_val;
        cheri_store(img, odd, new_img_odd, &flag_buf, caps[7]);
        cheri_store(real, odd, temp, &flag_buf, caps[6]);
      }
    }
  }
  for (int i = 0; i < size; i++) {
    int temp = cheri_load(real, i, &flag_buf, caps[6]);
    cheri_store(yreal, i, temp, &flag_buf, caps[4]);
  }
  for (int i = 0; i < size; i++) {
    int temp = cheri_load(img, i, &flag_buf, caps[7]);
    cheri_store(yimg, i, temp, &flag_buf, caps[5]);
  }

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
