#include <stdint.h>
typedef uint32_t u32;
typedef uint32_t u64;
#define TYPE int

#define PI 3142
#ifndef M_SQRT1_2
#define M_SQRT1_2 707
#endif

////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

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

int reversed8[8] = {0, 4, 2, 6, 1, 5, 3, 7};
int reversed[8] = {0, 4, 2, 6, 1, 5, 3, 7};

void twiddles8(TYPE *a_x, TYPE *a_y, int i, int n) {
  int j;
  int phi, tmp, phi_x, phi_y;

twiddles:
  for (j = 1; j < 8; j++) {
    phi = ((-2 * PI * reversed8[j] / n) * i);
    phi_x = phi % 7;
    phi_y = phi % 3;
    tmp = a_x[j];
    a_x[j] = cmplx_M_x(a_x[j], a_y[j], phi_x, phi_y);
    a_y[j] = cmplx_M_y(tmp, a_y[j], phi_x, phi_y);
  }
}
// END TWIDDLES ////

void FF2(TYPE *a0_x, TYPE *a0_y, TYPE *a1_x, TYPE *a1_y) {
  TYPE c0_x = *a0_x;
  TYPE c0_y = *a0_y;
  *a0_x = cmplx_add_x(c0_x, *a1_x);
  *a0_y = cmplx_add_y(c0_y, *a1_y);
  *a1_x = cmplx_sub_x(c0_x, *a1_x);
  *a1_y = cmplx_sub_y(c0_y, *a1_y);
}

void FFT4(TYPE *a0_x, TYPE *a0_y, TYPE *a1_x, TYPE *a1_y, TYPE *a2_x,
          TYPE *a2_y, TYPE *a3_x, TYPE *a3_y) {
  TYPE exp_1_44_x;
  TYPE exp_1_44_y;
  TYPE tmp;
  exp_1_44_x = 0;
  exp_1_44_y = -1;
  FF2(a0_x, a0_y, a2_x, a2_y);
  FF2(a1_x, a1_y, a3_x, a3_y);
  tmp = *a3_x;
  *a3_x = *a3_x * exp_1_44_x - *a3_y * exp_1_44_y;
  *a3_y = tmp * exp_1_44_y - *a3_y * exp_1_44_x;
  FF2(a0_x, a0_y, a1_x, a1_y);
  FF2(a2_x, a2_y, a3_x, a3_y);
}

void FFT8(TYPE *a_x, TYPE *a_y) {
  TYPE exp_1_8_x, exp_1_4_x, exp_3_8_x;
  TYPE exp_1_8_y, exp_1_4_y, exp_3_8_y;
  TYPE tmp_1;
  exp_1_8_x = 1;
  exp_1_8_y = -1;
  exp_1_4_x = 0;
  exp_1_4_y = -1;
  exp_3_8_x = -1;
  exp_3_8_y = -1;
  FF2(&a_x[0], &a_y[0], &a_x[4], &a_y[4]);
  FF2(&a_x[1], &a_y[1], &a_x[5], &a_y[5]);
  FF2(&a_x[2], &a_y[2], &a_x[6], &a_y[6]);
  FF2(&a_x[3], &a_y[3], &a_x[7], &a_y[7]);
  tmp_1 = a_x[5];
  a_x[5] =
      cm_fl_mul_x(cmplx_mul_x(a_x[5], a_y[5], exp_1_8_x, exp_1_8_y), M_SQRT1_2);
  a_y[5] =
      cm_fl_mul_y(cmplx_mul_y(tmp_1, a_y[5], exp_1_8_x, exp_1_8_y), M_SQRT1_2);
  tmp_1 = a_x[6];
  a_x[6] = cmplx_mul_x(a_x[6], a_y[6], exp_1_4_x, exp_1_4_y);
  a_y[6] = cmplx_mul_y(tmp_1, a_y[6], exp_1_4_x, exp_1_4_y);
  tmp_1 = a_x[7];
  a_x[7] =
      cm_fl_mul_x(cmplx_mul_x(a_x[7], a_y[7], exp_3_8_x, exp_3_8_y), M_SQRT1_2);
  a_y[7] =
      cm_fl_mul_y(cmplx_mul_y(tmp_1, a_y[7], exp_3_8_x, exp_3_8_y), M_SQRT1_2);
  FFT4(&a_x[0], &a_y[0], &a_x[1], &a_y[1], &a_x[2], &a_y[2], &a_x[3], &a_y[3]);
  FFT4(&a_x[4], &a_y[4], &a_x[5], &a_y[5], &a_x[6], &a_y[6], &a_x[7], &a_y[7]);
}

void loadx8(TYPE *a_x, TYPE *x, int offset, int sx) {
  a_x[0] = x[0 * sx + offset];
  a_x[1] = x[1 * sx + offset];
  a_x[2] = x[2 * sx + offset];
  a_x[3] = x[3 * sx + offset];
  a_x[4] = x[4 * sx + offset];
  a_x[5] = x[5 * sx + offset];
  a_x[6] = x[6 * sx + offset];
  a_x[7] = x[7 * sx + offset];
}

void loady8(TYPE *a_y, TYPE *x, int offset, int sx) {
  a_y[0] = x[0 * sx + offset];
  a_y[1] = x[1 * sx + offset];
  a_y[2] = x[2 * sx + offset];
  a_y[3] = x[3 * sx + offset];
  a_y[4] = x[4 * sx + offset];
  a_y[5] = x[5 * sx + offset];
  a_y[6] = x[6 * sx + offset];
  a_y[7] = x[7 * sx + offset];
}

void hls_top(int size, TYPE work_x[512], TYPE work_y[512]) {
  int tid, hi, lo, stride;
  TYPE DATA_x[THREADS * 8];
  TYPE DATA_y[THREADS * 8];

  TYPE data_x[8];
  TYPE data_y[8];

  TYPE smem[8 * 8 * 9];

  stride = THREADS;

// Do it all at once...
loop1:
  for (tid = 0; tid < THREADS; tid++) {
    // GLOBAL_LOAD...
    data_x[0] = work_x[0 * stride + tid];
    data_x[1] = work_x[1 * stride + tid];
    data_x[2] = work_x[2 * stride + tid];
    data_x[3] = work_x[3 * stride + tid];
    data_x[4] = work_x[4 * stride + tid];
    data_x[5] = work_x[5 * stride + tid];
    data_x[6] = work_x[6 * stride + tid];
    data_x[7] = work_x[7 * stride + tid];

    data_y[0] = work_y[0 * stride + tid];
    data_y[1] = work_y[1 * stride + tid];
    data_y[2] = work_y[2 * stride + tid];
    data_y[3] = work_y[3 * stride + tid];
    data_y[4] = work_y[4 * stride + tid];
    data_y[5] = work_y[5 * stride + tid];
    data_y[6] = work_y[6 * stride + tid];
    data_y[7] = work_y[7 * stride + tid];

    // First 8 point FFT...
    FFT8(data_x, data_y);

    // First Twiddle
    twiddles8(data_x, data_y, tid, 512);

    // save for fence
    DATA_x[tid * 8] = data_x[0];
    DATA_x[tid * 8 + 1] = data_x[1];
    DATA_x[tid * 8 + 2] = data_x[2];
    DATA_x[tid * 8 + 3] = data_x[3];
    DATA_x[tid * 8 + 4] = data_x[4];
    DATA_x[tid * 8 + 5] = data_x[5];
    DATA_x[tid * 8 + 6] = data_x[6];
    DATA_x[tid * 8 + 7] = data_x[7];

    DATA_y[tid * 8] = data_y[0];
    DATA_y[tid * 8 + 1] = data_y[1];
    DATA_y[tid * 8 + 2] = data_y[2];
    DATA_y[tid * 8 + 3] = data_y[3];
    DATA_y[tid * 8 + 4] = data_y[4];
    DATA_y[tid * 8 + 5] = data_y[5];
    DATA_y[tid * 8 + 6] = data_y[6];
    DATA_y[tid * 8 + 7] = data_y[7];
  }
  int sx, offset;
  sx = 66;
loop2:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = hi * 8 + lo;
    smem[0 * sx + offset] = DATA_x[tid * 8 + 0];
    smem[4 * sx + offset] = DATA_x[tid * 8 + 1];
    smem[1 * sx + offset] = DATA_x[tid * 8 + 4];
    smem[5 * sx + offset] = DATA_x[tid * 8 + 5];
    smem[2 * sx + offset] = DATA_x[tid * 8 + 2];
    smem[6 * sx + offset] = DATA_x[tid * 8 + 3];
    smem[3 * sx + offset] = DATA_x[tid * 8 + 6];
    smem[7 * sx + offset] = DATA_x[tid * 8 + 7];
  }
  sx = 8;
loop3:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = lo * 66 + hi;

    DATA_x[tid * 8 + 0] = smem[0 * sx + offset];
    DATA_x[tid * 8 + 4] = smem[4 * sx + offset];
    DATA_x[tid * 8 + 1] = smem[1 * sx + offset];
    DATA_x[tid * 8 + 5] = smem[5 * sx + offset];
    DATA_x[tid * 8 + 2] = smem[2 * sx + offset];
    DATA_x[tid * 8 + 6] = smem[6 * sx + offset];
    DATA_x[tid * 8 + 3] = smem[3 * sx + offset];
    DATA_x[tid * 8 + 7] = smem[7 * sx + offset];
  }

  sx = 66;
loop4:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = hi * 8 + lo;

    smem[0 * sx + offset] = DATA_y[tid * 8 + 0];
    smem[4 * sx + offset] = DATA_y[tid * 8 + 1];
    smem[1 * sx + offset] = DATA_y[tid * 8 + 4];
    smem[5 * sx + offset] = DATA_y[tid * 8 + 5];
    smem[2 * sx + offset] = DATA_y[tid * 8 + 2];
    smem[6 * sx + offset] = DATA_y[tid * 8 + 3];
    smem[3 * sx + offset] = DATA_y[tid * 8 + 6];
    smem[7 * sx + offset] = DATA_y[tid * 8 + 7];
  }

loop5:
  for (tid = 0; tid < size; tid++) {
    data_y[0] = DATA_y[tid * 8 + 0];
    data_y[1] = DATA_y[tid * 8 + 1];
    data_y[2] = DATA_y[tid * 8 + 2];
    data_y[3] = DATA_y[tid * 8 + 3];
    data_y[4] = DATA_y[tid * 8 + 4];
    data_y[5] = DATA_y[tid * 8 + 5];
    data_y[6] = DATA_y[tid * 8 + 6];
    data_y[7] = DATA_y[tid * 8 + 7];

    hi = tid >> 3;
    lo = tid & 7;

    loady8(data_y, smem, lo * 66 + hi, 8);

    DATA_y[tid * 8] = data_y[0];
    DATA_y[tid * 8 + 1] = data_y[1];
    DATA_y[tid * 8 + 2] = data_y[2];
    DATA_y[tid * 8 + 3] = data_y[3];
    DATA_y[tid * 8 + 4] = data_y[4];
    DATA_y[tid * 8 + 5] = data_y[5];
    DATA_y[tid * 8 + 6] = data_y[6];
    DATA_y[tid * 8 + 7] = data_y[7];
  }

loop6:
  for (tid = 0; tid < size; tid++) {
    data_x[0] = DATA_x[tid * 8 + 0];
    data_x[1] = DATA_x[tid * 8 + 1];
    data_x[2] = DATA_x[tid * 8 + 2];
    data_x[3] = DATA_x[tid * 8 + 3];
    data_x[4] = DATA_x[tid * 8 + 4];
    data_x[5] = DATA_x[tid * 8 + 5];
    data_x[6] = DATA_x[tid * 8 + 6];
    data_x[7] = DATA_x[tid * 8 + 7];

    data_y[0] = DATA_y[tid * 8 + 0];
    data_y[1] = DATA_y[tid * 8 + 1];
    data_y[2] = DATA_y[tid * 8 + 2];
    data_y[3] = DATA_y[tid * 8 + 3];
    data_y[4] = DATA_y[tid * 8 + 4];
    data_y[5] = DATA_y[tid * 8 + 5];
    data_y[6] = DATA_y[tid * 8 + 6];
    data_y[7] = DATA_y[tid * 8 + 7];

    // Second FFT8...
    FFT8(data_x, data_y);

    // Calculate hi for second twiddle calculation...
    hi = tid >> 3;

    // Second twiddles calc, use hi and size stride version as defined in
    // G80/SHOC...
    twiddles8(data_x, data_y, hi, size);

    // Save for final transpose...
    DATA_x[tid * 8] = data_x[0];
    DATA_x[tid * 8 + 1] = data_x[1];
    DATA_x[tid * 8 + 2] = data_x[2];
    DATA_x[tid * 8 + 3] = data_x[3];
    DATA_x[tid * 8 + 4] = data_x[4];
    DATA_x[tid * 8 + 5] = data_x[5];
    DATA_x[tid * 8 + 6] = data_x[6];
    DATA_x[tid * 8 + 7] = data_x[7];

    DATA_y[tid * 8] = data_y[0];
    DATA_y[tid * 8 + 1] = data_y[1];
    DATA_y[tid * 8 + 2] = data_y[2];
    DATA_y[tid * 8 + 3] = data_y[3];
    DATA_y[tid * 8 + 4] = data_y[4];
    DATA_y[tid * 8 + 5] = data_y[5];
    DATA_y[tid * 8 + 6] = data_y[6];
    DATA_y[tid * 8 + 7] = data_y[7];
  }

  // Transpose..
  sx = 72;
loop7:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = hi * 8 + lo;
    smem[0 * sx + offset] = DATA_x[tid * 8 + 0];
    smem[4 * sx + offset] = DATA_x[tid * 8 + 1];
    smem[1 * sx + offset] = DATA_x[tid * 8 + 4];
    smem[5 * sx + offset] = DATA_x[tid * 8 + 5];
    smem[2 * sx + offset] = DATA_x[tid * 8 + 2];
    smem[6 * sx + offset] = DATA_x[tid * 8 + 3];
    smem[3 * sx + offset] = DATA_x[tid * 8 + 6];
    smem[7 * sx + offset] = DATA_x[tid * 8 + 7];
  }

  sx = 8;
loop8:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = hi * 72 + lo;

    DATA_x[tid * 8 + 0] = smem[0 * sx + offset];
    DATA_x[tid * 8 + 4] = smem[4 * sx + offset];
    DATA_x[tid * 8 + 1] = smem[1 * sx + offset];
    DATA_x[tid * 8 + 5] = smem[5 * sx + offset];
    DATA_x[tid * 8 + 2] = smem[2 * sx + offset];
    DATA_x[tid * 8 + 6] = smem[6 * sx + offset];
    DATA_x[tid * 8 + 3] = smem[3 * sx + offset];
    DATA_x[tid * 8 + 7] = smem[7 * sx + offset];
  }

  sx = 72;
loop9:
  for (tid = 0; tid < size; tid++) {
    hi = tid >> 3;
    lo = tid & 7;
    offset = hi * 8 + lo;

    smem[0 * sx + offset] = DATA_y[tid * 8 + 0];
    smem[4 * sx + offset] = DATA_y[tid * 8 + 1];
    smem[1 * sx + offset] = DATA_y[tid * 8 + 4];
    smem[5 * sx + offset] = DATA_y[tid * 8 + 5];
    smem[2 * sx + offset] = DATA_y[tid * 8 + 2];
    smem[6 * sx + offset] = DATA_y[tid * 8 + 3];
    smem[3 * sx + offset] = DATA_y[tid * 8 + 6];
    smem[7 * sx + offset] = DATA_y[tid * 8 + 7];
  }

loop10:
  for (tid = 0; tid < size; tid++) {
    data_y[0] = DATA_y[tid * 8 + 0];
    data_y[1] = DATA_y[tid * 8 + 1];
    data_y[2] = DATA_y[tid * 8 + 2];
    data_y[3] = DATA_y[tid * 8 + 3];
    data_y[4] = DATA_y[tid * 8 + 4];
    data_y[5] = DATA_y[tid * 8 + 5];
    data_y[6] = DATA_y[tid * 8 + 6];
    data_y[7] = DATA_y[tid * 8 + 7];

    hi = tid >> 3;
    lo = tid & 7;

    loady8(data_y, smem, hi * 72 + lo, 8);

    DATA_y[tid * 8 + 0] = data_y[0];
    DATA_y[tid * 8 + 1] = data_y[1];
    DATA_y[tid * 8 + 2] = data_y[2];
    DATA_y[tid * 8 + 3] = data_y[3];
    DATA_y[tid * 8 + 4] = data_y[4];
    DATA_y[tid * 8 + 5] = data_y[5];
    DATA_y[tid * 8 + 6] = data_y[6];
    DATA_y[tid * 8 + 7] = data_y[7];
  }

loop11:
  for (tid = 0; tid < size; tid++) {
    // Load post-trans
    data_y[0] = DATA_y[tid * 8];
    data_y[1] = DATA_y[tid * 8 + 1];
    data_y[2] = DATA_y[tid * 8 + 2];
    data_y[3] = DATA_y[tid * 8 + 3];
    data_y[4] = DATA_y[tid * 8 + 4];
    data_y[5] = DATA_y[tid * 8 + 5];
    data_y[6] = DATA_y[tid * 8 + 6];
    data_y[7] = DATA_y[tid * 8 + 7];

    data_x[0] = DATA_x[tid * 8];
    data_x[1] = DATA_x[tid * 8 + 1];
    data_x[2] = DATA_x[tid * 8 + 2];
    data_x[3] = DATA_x[tid * 8 + 3];
    data_x[4] = DATA_x[tid * 8 + 4];
    data_x[5] = DATA_x[tid * 8 + 5];
    data_x[6] = DATA_x[tid * 8 + 6];
    data_x[7] = DATA_x[tid * 8 + 7];

    // Final 8pt FFT...
    FFT8(data_x, data_y);

    // Global store
    work_x[0 * stride + tid] = data_x[reversed[0]];
    work_x[1 * stride + tid] = data_x[reversed[1]];
    work_x[2 * stride + tid] = data_x[reversed[2]];
    work_x[3 * stride + tid] = data_x[reversed[3]];
    work_x[4 * stride + tid] = data_x[reversed[4]];
    work_x[5 * stride + tid] = data_x[reversed[5]];
    work_x[6 * stride + tid] = data_x[reversed[6]];
    work_x[7 * stride + tid] = data_x[reversed[7]];

    work_y[0 * stride + tid] = data_y[reversed[0]];
    work_y[1 * stride + tid] = data_y[reversed[1]];
    work_y[2 * stride + tid] = data_y[reversed[2]];
    work_y[3 * stride + tid] = data_y[reversed[3]];
    work_y[4 * stride + tid] = data_y[reversed[4]];
    work_y[5 * stride + tid] = data_y[reversed[5]];
    work_y[6 * stride + tid] = data_y[reversed[6]];
    work_y[7 * stride + tid] = data_y[reversed[7]];
  }
}

extern volatile u32 tohost;
#define TERM (&tohost)

#ifdef CAPCHECKER
#define CAP
#endif

#ifdef CAP
#include <cheri_init_globals.h>
#include <cheriintrin.h>
#endif

// HLS IP instance
#define SIZE 512
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
int a[NUM][SIZE];
int c[NUM][SIZE];

#ifdef CAPCHECKER
u64 capchecker_base_phy_addr = 0xc0020000;
u64 capchecker_size = 0x00002000;
#define capchecker_nbentries (capchecker_size / sizeof(void *))

void capchecker_install_cap(int cap_idx, void *cap) {
  void *almighty = cheri_ddc_get();
  volatile void **capchecker_ptr =
      __builtin_cheri_address_set(almighty, capchecker_base_phy_addr);
  capchecker_ptr = __builtin_cheri_bounds_set(capchecker_ptr, capchecker_size);
  capchecker_ptr[cap_idx] = cap;
}
#endif

volatile void __attribute__((noinline)) success() {
#ifdef CAP
  void *almighty = cheri_ddc_get();
  volatile u32 *physical_addr =
      __builtin_cheri_address_set(almighty, (volatile u32 *)&tohost);
  physical_addr = __builtin_cheri_bounds_set(physical_addr, 0x4);
  *physical_addr = 1;
#else
  *((volatile u32 *)&tohost) = 1;
#endif
}

volatile void fail() {
#ifdef CAP
  void *almighty = cheri_ddc_get();
  volatile u32 *physical_addr =
      __builtin_cheri_address_set(almighty, (volatile u32 *)&tohost);
  physical_addr = __builtin_cheri_bounds_set(physical_addr, 0x4);
  *physical_addr = 1;
#else
  *((volatile u32 *)&tohost) = 1;
#endif
}

volatile void reg_error() {
  while (1)
    ;
}

u32 hls_top_init(int test_case) {

  for (int i = 0; i < SIZE; i++) {
    a[test_case][i] = i;
    c[test_case][i] = i;
  }

  return 0;
}

int main() {

  // Initialise .captable
#ifdef CAP
  void *almighty = cheri_ddc_get();
  cheri_init_globals_3(almighty, almighty, almighty);
#endif

  // Initialize
  for (int i = 0; i < NUM; i++) {
    if (hls_top_init(i))
      return 4;
  }

  // Compute
  asm("fence");
  for (int i = 0; i < NUM; i++)
    hls_top(64, a[i], c[i]);
  asm("fence");

  success();
  return 0;
}
