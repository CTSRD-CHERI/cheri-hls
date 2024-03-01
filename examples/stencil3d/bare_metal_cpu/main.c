#include <stdint.h>
typedef uint32_t u32;
typedef uint32_t u64;
// Define input sizes
#define height_size 32
#define col_size 32
#define row_size 16
// Data Bounds
#define TYPE int
// Convenience Macros
#define SIZE (row_size * col_size * height_size)
#define INDX(_row_size, _col_size, _i, _j, _k)                                 \
  ((_i) + _row_size * ((_j) + _col_size * (_k)))

void hls_top(int size, TYPE C[2], TYPE orig[SIZE], TYPE sol[SIZE]) {
  int i, j, k;
  TYPE sum0, sum1, mul0, mul1;

// Handle boundary conditions by filling with original values
height_bound_col:
  for (j = 0; j < size; j++) {
  height_bound_row:
    for (k = 0; k < row_size; k++) {
      sol[INDX(row_size, size, k, j, 0)] = orig[INDX(row_size, size, k, j, 0)];
      sol[INDX(row_size, size, k, j, height_size - 1)] =
          orig[INDX(row_size, size, k, j, height_size - 1)];
    }
  }
col_bound_height:
  for (i = 1; i < height_size - 1; i++) {
  col_bound_row:
    for (k = 0; k < row_size; k++) {
      sol[INDX(row_size, size, k, 0, i)] = orig[INDX(row_size, size, k, 0, i)];
      sol[INDX(row_size, size, k, size - 1, i)] =
          orig[INDX(row_size, size, k, size - 1, i)];
    }
  }
row_bound_height:
  for (i = 1; i < height_size - 1; i++) {
  row_bound_col:
    for (j = 1; j < size - 1; j++) {
      sol[INDX(row_size, size, 0, j, i)] = orig[INDX(row_size, size, 0, j, i)];
      sol[INDX(row_size, size, row_size - 1, j, i)] =
          orig[INDX(row_size, size, row_size - 1, j, i)];
    }
  }

// Stencil computation
loop_height:
  for (i = 1; i < height_size - 1; i++) {
  loop_col:
    for (j = 1; j < size - 1; j++) {
    loop_row:
      for (k = 1; k < row_size - 1; k++) {
        sum0 = orig[INDX(row_size, size, k, j, i)];
        sum1 = orig[INDX(row_size, size, k, j, i + 1)] +
               orig[INDX(row_size, size, k, j, i - 1)] +
               orig[INDX(row_size, size, k, j + 1, i)] +
               orig[INDX(row_size, size, k, j - 1, i)] +
               orig[INDX(row_size, size, k + 1, j, i)] +
               orig[INDX(row_size, size, k - 1, j, i)];
        mul0 = sum0 * C[0];
        mul1 = sum1 * C[1];
        sol[INDX(row_size, size, k, j, i)] = mul0 + mul1;
      }
    }
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
u32 a[NUM][2] = {{1}};
u32 b[NUM][SIZE] = {{1}};
u32 c[NUM][SIZE] = {{1}};

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

int main() {

  // Initialise .captable
#ifdef CAP
  void *almighty = cheri_ddc_get();
  cheri_init_globals_3(almighty, almighty, almighty);
#endif

  // Compute
  asm("fence");
  for (int i = 0; i < NUM; i++)
    hls_top(32, a[i], b[i], c[i]);
  asm("fence");

  success();
  return 0;
}
