#include <stdint.h>
typedef uint32_t u32;
typedef uint32_t u64;

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
#define NUM 8
#define SIZE 1024
#define FFT_SIZE 1024
void hls_top(int size, int real[FFT_SIZE], int img[FFT_SIZE],
             int real_twid[FFT_SIZE / 2], int img_twid[FFT_SIZE / 2]) {
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

u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
u32 a[NUM][SIZE];
u32 b[NUM][SIZE];
u32 c[NUM][SIZE];
u32 d[NUM][SIZE];

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

  // Init data
  for (int i = 0; i < 1024; i++) {
    a[test_case][i] = (int)(i);
    b[test_case][i] = (int)(i);
  }

  // Pre-calc twiddles
  for (int n = 0; n < (1024 >> 1); n++) {
    int typed = (int)(6283 * n / 1024);
    c[test_case][n] = 2000 * typed;
    d[test_case][n] = -2000 * typed;
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
    hls_top(SIZE, a[i], b[i], c[i], d[i]);
  asm("fence");

  success();
  return 0;
}
