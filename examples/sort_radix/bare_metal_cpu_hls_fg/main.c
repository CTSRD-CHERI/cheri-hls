#include "xhls_top.h"
#include <stdint.h>

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
#define SIZE 2048
#define NUMOFBLOCKS 512

#define ELEMENTSPERBLOCK 4
#define RADIXSIZE 4
#define BUCKETSIZE NUMOFBLOCKS *RADIXSIZE
#define MASK 0x3

#define SCAN_BLOCK 16
#define SCAN_RADIX BUCKETSIZE / SCAN_BLOCK
XHls_top top_insts[NUM];
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
u32 a[NUM][SIZE];
u32 b[NUM][SIZE];
u32 bucket[NUM][BUCKETSIZE];
u32 sum[NUM][SCAN_RADIX];

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

u32 hls_top_init(int test_case, u32 *phy) {

  XHls_top *top = top_insts + test_case;
  top->Control_BaseAddress = phy;

  if (!XHls_top_IsReady(top))
    return 4;

  u32 buffer_a = a[test_case];
  u32 buffer_b = b[test_case];
  u32 buffer_bucket = bucket[test_case];
  u32 buffer_sum = sum[test_case];

#ifdef CAPCHECKER
  u32 a_cap_id = (test_case << 5) + 0;
  u32 b_cap_id = (test_case << 5) + 1;
  u32 bucket_cap_id = (test_case << 5) + 2;
  u32 sum_cap_id = (test_case << 5) + 3;

  // Configuring data buffers
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_A_DATA + 4,
                    (u32)(a_cap_id << (32 - 8)));
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_B_DATA + 4,
                    (u32)(b_cap_id << (32 - 8)));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_BUCKET_DATA + 4,
                    (u32)(bucket_cap_id << (32 - 8)));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_SUM_DATA + 4,
                    (u32)(sum_cap_id << (32 - 8)));
#else
  // Configuring data buffers
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_A_DATA + 4,
                    (u32)(0));
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_B_DATA + 4,
                    (u32)(0));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_BUCKET_DATA + 4, (u32)(0));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_SUM_DATA + 4, (u32)(0));
#endif

  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_A_DATA,
                    (u32)(buffer_a));
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_B_DATA,
                    (u32)(buffer_b));
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_BUCKET_DATA,
                    (u32)(buffer_bucket));
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_SUM_DATA,
                    (u32)(buffer_sum));

#ifdef CAPCHECKER
  // Configuring capchecker
  capchecker_install_cap(a_cap_id, &a);
  capchecker_install_cap(b_cap_id, &b);
  capchecker_install_cap(bucket_cap_id, &bucket);
  capchecker_install_cap(sum_cap_id, &sum);
#endif

  for (int i = 0; i < SIZE; i++) {
    a[test_case][i] = i;
    b[test_case][i] = i;
  }
  for (int i = 0; i < BUCKETSIZE; i++) {
    bucket[test_case][i] = 0;
  }
  for (int i = 0; i < SCAN_RADIX; i++) {
    sum[test_case][i] = 0;
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
#ifdef CAP
    u32 *physical_addr =
        __builtin_cheri_address_set(almighty, base_phy_addr[i]);
    physical_addr = __builtin_cheri_bounds_set(physical_addr, 0x1000);
#else
    u32 *physical_addr = (volatile u32 *)base_phy_addr[i];
#endif
    if (hls_top_init(i, physical_addr))
      return 4;
  }

  // Compute
  asm("fence");
  for (int i = 0; i < NUM; i++)
    XHls_top_Start(top_insts + i);
  for (int i = 0; i < NUM; i++)
    while (!XHls_top_IsDone(top_insts + i))
      ;
  asm("fence");

  success();
  return 0;
}
