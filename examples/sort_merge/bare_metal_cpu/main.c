#include <stdint.h>
typedef uint32_t u32;
typedef uint32_t u64;
#define TYPE int

#ifndef DEBUG
extern volatile u32 tohost;
#define TERM (&tohost)
#endif

#ifdef CAPCHECKER
#define CAP
#endif

#ifdef CAP
#include <cheri_init_globals.h>
#include <cheriintrin.h>
#endif

// HLS IP instance
#define NUM 8
#define SIZE 2048
void merge(TYPE a[SIZE], int start, int m, int stop) {
  TYPE temp[SIZE];
  int i, j, k;

merge_label1:
  for (i = start; i <= m; i++) {
    temp[i] = a[i];
  }

merge_label2:
  for (j = m + 1; j <= stop; j++) {
    temp[m + 1 + stop - j] = a[j];
  }

  i = start;
  j = stop;

merge_label3:
  for (k = start; k <= stop; k++) {
    TYPE tmp_j = temp[j];
    TYPE tmp_i = temp[i];
    if (tmp_j < tmp_i) {
      a[k] = tmp_j;
      j--;
    } else {
      a[k] = tmp_i;
      i++;
    }
  }
}

void hls_top(int size, TYPE a[SIZE]) {
  int start, stop;
  int i, m, from, mid, to;

  start = 0;
  stop = SIZE;

mergesort_label1:
  for (m = 1; m < stop - start; m += m) {
  mergesort_label2:
    for (i = start; i < stop; i += m + m) {
      from = i;
      mid = i + m - 1;
      to = i + m + m - 1;
      if (to < stop) {
        merge(a, from, mid, to);
      } else {
        merge(a, from, mid, stop);
      }
    }
  }
}

u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
u32 a[NUM][SIZE];

#ifdef CAPCHECKER
u64 capchecker_base_phy_addr = 0xc0100000;
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

#ifndef DEBUG
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
#else
void success() {}
#endif

volatile void reg_error() {
  while (1)
    ;
}

u32 hls_top_init(int test_case) {

  for (int i = 0; i < SIZE; i++) {
    a[test_case][i] = 0;
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
#ifndef DEBUG
  asm("fence");
#endif
  for (int i = 0; i < NUM; i++)
    hls_top(SIZE, a[i]);
#ifndef DEBUG
  asm("fence");
#endif

  success();
  return 0;
}
