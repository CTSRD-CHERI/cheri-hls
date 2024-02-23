#include <stdint.h>
typedef uint32_t u32;
typedef uint32_t u64;

#define NNZ 1666
#define N 494
#define L 10

#define TYPE int

#define MAX 1000
#define MIN 10
#define ran 100

void hls_top(int n, int l, TYPE nzval[N * L], int cols[N * L], TYPE vec[N],
             TYPE out[N]) {
  int i, j;
  TYPE Si;

ellpack_1:
  for (i = 0; i < n; i++) {
    TYPE sum = out[i];
  ellpack_2:
    for (j = 0; j < l; j++) {
      Si = nzval[j + i * l] * vec[cols[j + i * l]];
      sum += Si;
    }
    out[i] = sum;
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
#define NUM 8
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
u32 a[NUM][N * L];
u32 b[NUM][N * L];
u32 c[NUM][N];
u32 d[NUM][N];

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

volatile void success() {
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

  for (int i = 0; i < N * L; i++) {
    a[test_case][i] = i;
    b[test_case][i] = i;
  }
  for (int i = 0; i < N; i++) {
    c[test_case][i] = i;
    d[test_case][i] = i;
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
    hls_top(N, L, a[i], b[i], c[i], d[i]);
  asm("fence");

  success();
  return 0;
}
