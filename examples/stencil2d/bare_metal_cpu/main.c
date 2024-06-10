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
// Define input sizes
#define col_size 64
#define row_size 128
#define f_size 9

// Data Bounds
#define TYPE int
#define MAX 1000
#define MIN 1

void hls_top(int size, TYPE orig[row_size * col_size],
             TYPE sol[row_size * col_size], TYPE filter[f_size]) {
  int r, c, k1, k2;
  TYPE temp, mul;

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
}

#define SIZE_A row_size *col_size
#define SIZE_B row_size *col_size
#define SIZE_C f_size
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
u32 a[NUM][SIZE_A];
u32 b[NUM][SIZE_B];
u32 c[NUM][SIZE_C];

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

  for (int i = 0; i < SIZE_A; i++) {
    a[test_case][i] = i + test_case;
  }
  for (int i = 0; i < SIZE_B; i++) {
    b[test_case][i] = i + test_case;
  }
  for (int i = 0; i < SIZE_C; i++) {
    c[test_case][i] = (i + test_case) * (i + test_case);
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
    hls_top(row_size, a[i], b[i], c[i]);
  asm("fence");

  success();
  return 0;
}
