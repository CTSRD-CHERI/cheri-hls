/*
Implementations based on:
V. Volkov and B. Kazian. Fitting fft onto the g80 architecture. 2008.
*/

#include "../../chls-fullcap.h"

#define TYPE int

typedef struct complex_t {
  TYPE x;
  TYPE y;
} complex;

#define PI 3142
#ifndef M_SQRT1_2
#define M_SQRT1_2 707
#endif
void fft1D_512(TYPE work_x[512], TYPE work_y[512]);

////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  TYPE work_x[512];
  TYPE work_y[512];
};

//////BEGIN TWIDDLES ////////
#define THREADS 64
#define cmplx_M_x(a_x, a_y, b_x, b_y) (a_x * b_x - a_y * b_y)
#define cmplx_M_y(a_x, a_y, b_x, b_y) (a_x * b_y + a_y * b_x)
#define cmplx_MUL_x(a_x, a_y, b_x, b_y) (a_x * b_x - a_y * b_y)
#define cmplx_MUL_y(a_x, a_y, b_x, b_y) (a_x * b_y + a_y * b_x)
#define cmplx_mul_x(a_x, a_y, b_x, b_y) (a_x * b_x - a_y * b_y)
#define cmplx_mul_y(a_x, a_y, b_x, b_y) (a_x * b_y + a_y * b_x)
#define cmplx_add_x(a_x, b_x) (a_x + b_x)
#define cmplx_add_y(a_y, b_y) (a_y + b_y)
#define cmplx_sub_x(a_x, b_x) (a_x - b_x)
#define cmplx_sub_y(a_y, b_y) (a_y - b_y)
#define cm_fl_mul_x(a_x, b) (b * a_x)
#define cm_fl_mul_y(a_y, b) (b * a_y)

void twiddles8(TYPE a_x[8], TYPE a_y[8], int i, int n, u32 *flag_buf,
               Cap *caps) {
  int reversed8[8] = {0, 4, 2, 6, 1, 5, 3, 7};
  int j;
  TYPE phi, tmp, phi_x, phi_y;

twiddles:
  for (j = 1; j < 8; j++) {
    phi = ((-2 * PI * reversed8[j] / n) * i);
    phi_x = phi % 7;
    phi_y = phi % 3;
    tmp = cheri_load(a_x, j, flag_buf, caps[3]);
    TYPE a_x_j = cheri_load(a_x, j, flag_buf, caps[3]);
    TYPE a_y_j = cheri_load(a_y, j, flag_buf, caps[4]);
    cheri_store(a_x, j, cmplx_M_x(a_x_j, a_y_j, phi_x, phi_y), flag_buf,
                caps[3]);
    cheri_store(a_y, j, cmplx_M_y(tmp, a_y_j, phi_x, phi_y), flag_buf, caps[4]);
  }
}
////END TWIDDLES ////

#define FF2(a0_x, a0_y, a1_x, a1_y)                                            \
  {                                                                            \
    TYPE c0_x = *a0_x;                                                         \
    TYPE c0_y = *a0_y;                                                         \
    *a0_x = cmplx_add_x(c0_x, *a1_x);                                          \
    *a0_y = cmplx_add_y(c0_y, *a1_y);                                          \
    *a1_x = cmplx_sub_x(c0_x, *a1_x);                                          \
    *a1_y = cmplx_sub_y(c0_y, *a1_y);                                          \
  }

#define FFT4(a0_x, a0_y, a1_x, a1_y, a2_x, a2_y, a3_x, a3_y)                   \
  {                                                                            \
    TYPE exp_1_44_x;                                                           \
    TYPE exp_1_44_y;                                                           \
    TYPE tmp;                                                                  \
    exp_1_44_x = 0;                                                            \
    exp_1_44_y = -1;                                                           \
    FF2(a0_x, a0_y, a2_x, a2_y);                                               \
    FF2(a1_x, a1_y, a3_x, a3_y);                                               \
    tmp = *a3_x;                                                               \
    *a3_x = *a3_x * exp_1_44_x - *a3_y * exp_1_44_y;                           \
    *a3_y = tmp * exp_1_44_y - *a3_y * exp_1_44_x;                             \
    FF2(a0_x, a0_y, a1_x, a1_y);                                               \
    FF2(a2_x, a2_y, a3_x, a3_y);                                               \
  }

#define FFT8(a_x, a_y)                                                         \
  {                                                                            \
    TYPE exp_1_8_x, exp_1_4_x, exp_3_8_x;                                      \
    TYPE exp_1_8_y, exp_1_4_y, exp_3_8_y;                                      \
    TYPE tmp_1;                                                                \
    exp_1_8_x = 1;                                                             \
    exp_1_8_y = -1;                                                            \
    exp_1_4_x = 0;                                                             \
    exp_1_4_y = -1;                                                            \
    exp_3_8_x = -1;                                                            \
    exp_3_8_y = -1;                                                            \
    FF2(&a_x[0], &a_y[0], &a_x[4], &a_y[4]);                                   \
    FF2(&a_x[1], &a_y[1], &a_x[5], &a_y[5]);                                   \
    FF2(&a_x[2], &a_y[2], &a_x[6], &a_y[6]);                                   \
    FF2(&a_x[3], &a_y[3], &a_x[7], &a_y[7]);                                   \
    tmp_1 = a_x[5];                                                            \
    a_x[5] = cm_fl_mul_x(cmplx_mul_x(a_x[5], a_y[5], exp_1_8_x, exp_1_8_y),    \
                         M_SQRT1_2);                                           \
    a_y[5] = cm_fl_mul_y(cmplx_mul_y(tmp_1, a_y[5], exp_1_8_x, exp_1_8_y),     \
                         M_SQRT1_2);                                           \
    tmp_1 = a_x[6];                                                            \
    a_x[6] = cmplx_mul_x(a_x[6], a_y[6], exp_1_4_x, exp_1_4_y);                \
    a_y[6] = cmplx_mul_y(tmp_1, a_y[6], exp_1_4_x, exp_1_4_y);                 \
    tmp_1 = a_x[7];                                                            \
    a_x[7] = cm_fl_mul_x(cmplx_mul_x(a_x[7], a_y[7], exp_3_8_x, exp_3_8_y),    \
                         M_SQRT1_2);                                           \
    a_y[7] = cm_fl_mul_y(cmplx_mul_y(tmp_1, a_y[7], exp_3_8_x, exp_3_8_y),     \
                         M_SQRT1_2);                                           \
    FFT4(&a_x[0], &a_y[0], &a_x[1], &a_y[1], &a_x[2], &a_y[2], &a_x[3],        \
         &a_y[3]);                                                             \
    FFT4(&a_x[4], &a_y[4], &a_x[5], &a_y[5], &a_x[6], &a_y[6], &a_x[7],        \
         &a_y[7]);                                                             \
  }

void loadx8(TYPE a_x[], TYPE x[], int offset, int sx, u32 *flag_buf, Cap *caps,
            int x_cap_idx, int a_x_cap_idx) {
  cheri_store(a_x, 0, cheri_load(x, 0 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_x_cap_idx]);
  cheri_store(a_x, 1, cheri_load(x, 1 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_x_cap_idx]);
  cheri_store(a_x, 2, cheri_load(x, 2 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_x_cap_idx]);
  cheri_store(a_x, 3, cheri_load(x, 3 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_x_cap_idx]);
  cheri_store(a_x, 4, cheri_load(x, 4 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_x_cap_idx]);
  cheri_store(a_x, 5, cheri_load(x, 5 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_x_cap_idx]);
  cheri_store(a_x, 6, cheri_load(x, 6 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_x_cap_idx]);
  cheri_store(a_x, 7, cheri_load(x, 7 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_x_cap_idx]);
}

void loady8(TYPE a_y[], TYPE x[], int offset, int sx, u32 *flag_buf, Cap *caps,
            int x_cap_idx, int a_y_cap_idx) {
  cheri_store(a_y, 0, cheri_load(x, 0 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_y_cap_idx]);
  cheri_store(a_y, 1, cheri_load(x, 1 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_y_cap_idx]);
  cheri_store(a_y, 2, cheri_load(x, 2 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_y_cap_idx]);
  cheri_store(a_y, 3, cheri_load(x, 3 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_y_cap_idx]);
  cheri_store(a_y, 4, cheri_load(x, 4 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_y_cap_idx]);
  cheri_store(a_y, 5, cheri_load(x, 5 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_y_cap_idx]);
  cheri_store(a_y, 6, cheri_load(x, 6 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_y_cap_idx]);
  cheri_store(a_y, 7, cheri_load(x, 7 * sx + offset, flag_buf, caps[x_cap_idx]),
              flag_buf, caps[a_y_cap_idx]);
}

void hls_top(int size, TYPE work_x[512], TYPE work_y[512], u32 *flag,
             u32 cap[8]) {
#pragma HLS INTERFACE m_axi port = work_x
#pragma HLS INTERFACE m_axi port = work_y
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  int tid, hi, lo, stride;
  int reversed[] = {0, 4, 2, 6, 1, 5, 3, 7};
  TYPE DATA_x[THREADS * 8];
  TYPE DATA_y[THREADS * 8];
#pragma HLS array_partition variable = DATA_x type = complete
#pragma HLS array_partition variable = DATA_y type = complete

  TYPE data_x[8];
  TYPE data_y[8];
#pragma HLS array_partition variable = data_x type = complete
#pragma HLS array_partition variable = data_y type = complete

  TYPE smem[8 * 8 * 9];
#pragma HLS array_partition variable = smem type = cyclic factor = 8

  u32 flag_buf = 0;
  // 2 arrays (work_x, work_y) + 5 local arrays (DATA_x, DATA_y, data_x, data_y,
  // smem) = 7 caps 7 * 4 = 28, but rounded to 32 for alignment
  Cap caps[8];
  u32 buffer[32];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(2, buffer, cap, caps);
  create_cap(THREADS * 8, caps, 2); // DATA_x
  create_cap(THREADS * 8, caps, 3); // DATA_y
  create_cap(8, caps, 4);           // data_x
  create_cap(8, caps, 5);           // data_y
  create_cap(8 * 8 * 9, caps, 6);   // smem
  create_cap(8, caps, 7);           // reversed

  // Initialize reversed array with CHERI
  cheri_store(reversed, 0, 0, &flag_buf, caps[7]);
  cheri_store(reversed, 1, 4, &flag_buf, caps[7]);
  cheri_store(reversed, 2, 2, &flag_buf, caps[7]);
  cheri_store(reversed, 3, 6, &flag_buf, caps[7]);
  cheri_store(reversed, 4, 1, &flag_buf, caps[7]);
  cheri_store(reversed, 5, 5, &flag_buf, caps[7]);
  cheri_store(reversed, 6, 3, &flag_buf, caps[7]);
  cheri_store(reversed, 7, 7, &flag_buf, caps[7]);

  stride = THREADS;

  // Do it all at once...
loop1:
  for (tid = 0; tid < THREADS; tid++) {
    // GLOBAL_LOAD...
    cheri_store(data_x, 0,
                cheri_load(work_x, 0 * stride + tid, &flag_buf, caps[0]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 1,
                cheri_load(work_x, 1 * stride + tid, &flag_buf, caps[0]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 2,
                cheri_load(work_x, 2 * stride + tid, &flag_buf, caps[0]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 3,
                cheri_load(work_x, 3 * stride + tid, &flag_buf, caps[0]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 4,
                cheri_load(work_x, 4 * stride + tid, &flag_buf, caps[0]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 5,
                cheri_load(work_x, 5 * stride + tid, &flag_buf, caps[0]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 6,
                cheri_load(work_x, 6 * stride + tid, &flag_buf, caps[0]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 7,
                cheri_load(work_x, 7 * stride + tid, &flag_buf, caps[0]),
                &flag_buf, caps[4]);

    cheri_store(data_y, 0,
                cheri_load(work_y, 0 * stride + tid, &flag_buf, caps[1]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 1,
                cheri_load(work_y, 1 * stride + tid, &flag_buf, caps[1]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 2,
                cheri_load(work_y, 2 * stride + tid, &flag_buf, caps[1]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 3,
                cheri_load(work_y, 3 * stride + tid, &flag_buf, caps[1]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 4,
                cheri_load(work_y, 4 * stride + tid, &flag_buf, caps[1]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 5,
                cheri_load(work_y, 5 * stride + tid, &flag_buf, caps[1]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 6,
                cheri_load(work_y, 6 * stride + tid, &flag_buf, caps[1]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 7,
                cheri_load(work_y, 7 * stride + tid, &flag_buf, caps[1]),
                &flag_buf, caps[5]);

    // First 8 point FFT...
    FFT8(data_x, data_y);

    // First Twiddle
    twiddles8(data_x, data_y, tid, 512, &flag_buf, caps);

    // save for fence
    cheri_store(DATA_x, tid * 8, cheri_load(data_x, 0, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 1, cheri_load(data_x, 1, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 2, cheri_load(data_x, 2, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 3, cheri_load(data_x, 3, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 4, cheri_load(data_x, 4, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 5, cheri_load(data_x, 5, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 6, cheri_load(data_x, 6, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 7, cheri_load(data_x, 7, &flag_buf, caps[4]),
                &flag_buf, caps[2]);

    cheri_store(DATA_y, tid * 8, cheri_load(data_y, 0, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 1, cheri_load(data_y, 1, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 2, cheri_load(data_y, 2, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 3, cheri_load(data_y, 3, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 4, cheri_load(data_y, 4, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 5, cheri_load(data_y, 5, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 6, cheri_load(data_y, 6, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 7, cheri_load(data_y, 7, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
  }
  int sx, offset;
  sx = 66;
loop2:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = hi * 8 + lo;
    cheri_store(smem, 0 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 0, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 4 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 1, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 1 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 4, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 5 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 5, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 2 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 2, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 6 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 3, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 3 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 6, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 7 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 7, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
  }
  sx = 8;
loop3:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = lo * 66 + hi;

    cheri_store(DATA_x, tid * 8 + 0,
                cheri_load(smem, 0 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 4,
                cheri_load(smem, 4 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 1,
                cheri_load(smem, 1 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 5,
                cheri_load(smem, 5 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 2,
                cheri_load(smem, 2 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 6,
                cheri_load(smem, 6 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 3,
                cheri_load(smem, 3 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 7,
                cheri_load(smem, 7 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
  }

  sx = 66;
loop4:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = hi * 8 + lo;

    cheri_store(smem, 0 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 0, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 4 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 1, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 1 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 4, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 5 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 5, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 2 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 2, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 6 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 3, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 3 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 6, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 7 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 7, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
  }

loop5:
  for (tid = 0; tid < size; tid++) {
    cheri_store(data_y, 0, cheri_load(DATA_y, tid * 8 + 0, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 1, cheri_load(DATA_y, tid * 8 + 1, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 2, cheri_load(DATA_y, tid * 8 + 2, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 3, cheri_load(DATA_y, tid * 8 + 3, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 4, cheri_load(DATA_y, tid * 8 + 4, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 5, cheri_load(DATA_y, tid * 8 + 5, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 6, cheri_load(DATA_y, tid * 8 + 6, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 7, cheri_load(DATA_y, tid * 8 + 7, &flag_buf, caps[3]),
                &flag_buf, caps[5]);

    hi = tid >> 3;
    lo = tid & 7;

    loady8(data_y, smem, lo * 66 + hi, 8, &flag_buf, caps, 6, 5);

    cheri_store(DATA_y, tid * 8, cheri_load(data_y, 0, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 1, cheri_load(data_y, 1, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 2, cheri_load(data_y, 2, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 3, cheri_load(data_y, 3, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 4, cheri_load(data_y, 4, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 5, cheri_load(data_y, 5, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 6, cheri_load(data_y, 6, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 7, cheri_load(data_y, 7, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
  }

loop6:
  for (tid = 0; tid < size; tid++) {
    cheri_store(data_x, 0, cheri_load(DATA_x, tid * 8 + 0, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 1, cheri_load(DATA_x, tid * 8 + 1, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 2, cheri_load(DATA_x, tid * 8 + 2, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 3, cheri_load(DATA_x, tid * 8 + 3, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 4, cheri_load(DATA_x, tid * 8 + 4, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 5, cheri_load(DATA_x, tid * 8 + 5, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 6, cheri_load(DATA_x, tid * 8 + 6, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 7, cheri_load(DATA_x, tid * 8 + 7, &flag_buf, caps[2]),
                &flag_buf, caps[4]);

    cheri_store(data_y, 0, cheri_load(DATA_y, tid * 8 + 0, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 1, cheri_load(DATA_y, tid * 8 + 1, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 2, cheri_load(DATA_y, tid * 8 + 2, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 3, cheri_load(DATA_y, tid * 8 + 3, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 4, cheri_load(DATA_y, tid * 8 + 4, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 5, cheri_load(DATA_y, tid * 8 + 5, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 6, cheri_load(DATA_y, tid * 8 + 6, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 7, cheri_load(DATA_y, tid * 8 + 7, &flag_buf, caps[3]),
                &flag_buf, caps[5]);

    // Second FFT8...
    FFT8(data_x, data_y);

    // Calculate hi for second twiddle calculation...
    hi = tid >> 3;

    // Second twiddles calc, use hi and size stride version as defined in
    // G80/SHOC...
    twiddles8(data_x, data_y, hi, size, &flag_buf, caps);

    // Save for final transpose...
    cheri_store(DATA_x, tid * 8, cheri_load(data_x, 0, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 1, cheri_load(data_x, 1, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 2, cheri_load(data_x, 2, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 3, cheri_load(data_x, 3, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 4, cheri_load(data_x, 4, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 5, cheri_load(data_x, 5, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 6, cheri_load(data_x, 6, &flag_buf, caps[4]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 7, cheri_load(data_x, 7, &flag_buf, caps[4]),
                &flag_buf, caps[2]);

    cheri_store(DATA_y, tid * 8, cheri_load(data_y, 0, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 1, cheri_load(data_y, 1, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 2, cheri_load(data_y, 2, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 3, cheri_load(data_y, 3, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 4, cheri_load(data_y, 4, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 5, cheri_load(data_y, 5, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 6, cheri_load(data_y, 6, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 7, cheri_load(data_y, 7, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
  }

  // Transpose..
  sx = 72;
loop7:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = hi * 8 + lo;
    cheri_store(smem, 0 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 0, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 4 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 1, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 1 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 4, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 5 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 5, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 2 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 2, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 6 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 3, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 3 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 6, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
    cheri_store(smem, 7 * sx + offset,
                cheri_load(DATA_x, tid * 8 + 7, &flag_buf, caps[2]), &flag_buf,
                caps[6]);
  }

  sx = 8;
loop8:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = hi * 72 + lo;

    cheri_store(DATA_x, tid * 8 + 0,
                cheri_load(smem, 0 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 4,
                cheri_load(smem, 4 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 1,
                cheri_load(smem, 1 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 5,
                cheri_load(smem, 5 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 2,
                cheri_load(smem, 2 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 6,
                cheri_load(smem, 6 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 3,
                cheri_load(smem, 3 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
    cheri_store(DATA_x, tid * 8 + 7,
                cheri_load(smem, 7 * sx + offset, &flag_buf, caps[6]),
                &flag_buf, caps[2]);
  }

  sx = 72;
loop9:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = hi * 8 + lo;

    cheri_store(smem, 0 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 0, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 4 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 1, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 1 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 4, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 5 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 5, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 2 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 2, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 6 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 3, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 3 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 6, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
    cheri_store(smem, 7 * sx + offset,
                cheri_load(DATA_y, tid * 8 + 7, &flag_buf, caps[3]), &flag_buf,
                caps[6]);
  }

loop10:
  for (tid = 0; tid < size; tid++) {
    cheri_store(data_y, 0, cheri_load(DATA_y, tid * 8 + 0, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 1, cheri_load(DATA_y, tid * 8 + 1, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 2, cheri_load(DATA_y, tid * 8 + 2, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 3, cheri_load(DATA_y, tid * 8 + 3, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 4, cheri_load(DATA_y, tid * 8 + 4, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 5, cheri_load(DATA_y, tid * 8 + 5, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 6, cheri_load(DATA_y, tid * 8 + 6, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 7, cheri_load(DATA_y, tid * 8 + 7, &flag_buf, caps[3]),
                &flag_buf, caps[5]);

    hi = tid >> 3;
    lo = tid & 7;

    loady8(data_y, smem, hi * 72 + lo, 8, &flag_buf, caps, 6, 5);

    cheri_store(DATA_y, tid * 8 + 0, cheri_load(data_y, 0, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 1, cheri_load(data_y, 1, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 2, cheri_load(data_y, 2, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 3, cheri_load(data_y, 3, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 4, cheri_load(data_y, 4, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 5, cheri_load(data_y, 5, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 6, cheri_load(data_y, 6, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
    cheri_store(DATA_y, tid * 8 + 7, cheri_load(data_y, 7, &flag_buf, caps[5]),
                &flag_buf, caps[3]);
  }

loop11:
  for (tid = 0; tid < size; tid++) {
    // Load post-trans
    cheri_store(data_y, 0, cheri_load(DATA_y, tid * 8, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 1, cheri_load(DATA_y, tid * 8 + 1, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 2, cheri_load(DATA_y, tid * 8 + 2, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 3, cheri_load(DATA_y, tid * 8 + 3, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 4, cheri_load(DATA_y, tid * 8 + 4, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 5, cheri_load(DATA_y, tid * 8 + 5, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 6, cheri_load(DATA_y, tid * 8 + 6, &flag_buf, caps[3]),
                &flag_buf, caps[5]);
    cheri_store(data_y, 7, cheri_load(DATA_y, tid * 8 + 7, &flag_buf, caps[3]),
                &flag_buf, caps[5]);

    cheri_store(data_x, 0, cheri_load(DATA_x, tid * 8, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 1, cheri_load(DATA_x, tid * 8 + 1, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 2, cheri_load(DATA_x, tid * 8 + 2, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 3, cheri_load(DATA_x, tid * 8 + 3, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 4, cheri_load(DATA_x, tid * 8 + 4, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 5, cheri_load(DATA_x, tid * 8 + 5, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 6, cheri_load(DATA_x, tid * 8 + 6, &flag_buf, caps[2]),
                &flag_buf, caps[4]);
    cheri_store(data_x, 7, cheri_load(DATA_x, tid * 8 + 7, &flag_buf, caps[2]),
                &flag_buf, caps[4]);

    // Final 8pt FFT...
    FFT8(data_x, data_y);

    // Global store
    cheri_store(work_x, 0 * stride + tid,
                cheri_load(data_x, cheri_load(reversed, 0, &flag_buf, caps[7]),
                           &flag_buf, caps[4]),
                &flag_buf, caps[0]);
    cheri_store(work_x, 1 * stride + tid,
                cheri_load(data_x, cheri_load(reversed, 1, &flag_buf, caps[7]),
                           &flag_buf, caps[4]),
                &flag_buf, caps[0]);
    cheri_store(work_x, 2 * stride + tid,
                cheri_load(data_x, cheri_load(reversed, 2, &flag_buf, caps[7]),
                           &flag_buf, caps[4]),
                &flag_buf, caps[0]);
    cheri_store(work_x, 3 * stride + tid,
                cheri_load(data_x, cheri_load(reversed, 3, &flag_buf, caps[7]),
                           &flag_buf, caps[4]),
                &flag_buf, caps[0]);
    cheri_store(work_x, 4 * stride + tid,
                cheri_load(data_x, cheri_load(reversed, 4, &flag_buf, caps[7]),
                           &flag_buf, caps[4]),
                &flag_buf, caps[0]);
    cheri_store(work_x, 5 * stride + tid,
                cheri_load(data_x, cheri_load(reversed, 5, &flag_buf, caps[7]),
                           &flag_buf, caps[4]),
                &flag_buf, caps[0]);
    cheri_store(work_x, 6 * stride + tid,
                cheri_load(data_x, cheri_load(reversed, 6, &flag_buf, caps[7]),
                           &flag_buf, caps[4]),
                &flag_buf, caps[0]);
    cheri_store(work_x, 7 * stride + tid,
                cheri_load(data_x, cheri_load(reversed, 7, &flag_buf, caps[7]),
                           &flag_buf, caps[4]),
                &flag_buf, caps[0]);

    cheri_store(work_y, 0 * stride + tid,
                cheri_load(data_y, cheri_load(reversed, 0, &flag_buf, caps[7]),
                           &flag_buf, caps[5]),
                &flag_buf, caps[1]);
    cheri_store(work_y, 1 * stride + tid,
                cheri_load(data_y, cheri_load(reversed, 1, &flag_buf, caps[7]),
                           &flag_buf, caps[5]),
                &flag_buf, caps[1]);
    cheri_store(work_y, 2 * stride + tid,
                cheri_load(data_y, cheri_load(reversed, 2, &flag_buf, caps[7]),
                           &flag_buf, caps[5]),
                &flag_buf, caps[1]);
    cheri_store(work_y, 3 * stride + tid,
                cheri_load(data_y, cheri_load(reversed, 3, &flag_buf, caps[7]),
                           &flag_buf, caps[5]),
                &flag_buf, caps[1]);
    cheri_store(work_y, 4 * stride + tid,
                cheri_load(data_y, cheri_load(reversed, 4, &flag_buf, caps[7]),
                           &flag_buf, caps[5]),
                &flag_buf, caps[1]);
    cheri_store(work_y, 5 * stride + tid,
                cheri_load(data_y, cheri_load(reversed, 5, &flag_buf, caps[7]),
                           &flag_buf, caps[5]),
                &flag_buf, caps[1]);
    cheri_store(work_y, 6 * stride + tid,
                cheri_load(data_y, cheri_load(reversed, 6, &flag_buf, caps[7]),
                           &flag_buf, caps[5]),
                &flag_buf, caps[1]);
    cheri_store(work_y, 7 * stride + tid,
                cheri_load(data_y, cheri_load(reversed, 7, &flag_buf, caps[7]),
                           &flag_buf, caps[5]),
                &flag_buf, caps[1]);
  }

  *flag = flag_buf;
}

int main() {
  TYPE a_x[512];
  TYPE a_y[512];
  int i;
  float max, min;
  max = 2147483646;
  min = -2147483646;

  for (i = 0; i < 512; i++) {
    a_x[i] = (TYPE)(i); //(TYPE)(((double) rand() / (RAND_MAX)) * (max-min) +
                        // min);//i;
    a_y[i] =
        (TYPE)(i); //(((double) rand() / (RAND_MAX)) * (max-min) + min);//i;
  }

  u32 cap[8] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(64, a_x, a_y, &flag, cap);

  return 0;
}
