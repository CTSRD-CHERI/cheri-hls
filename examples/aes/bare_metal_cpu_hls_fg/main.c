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
#define SIZE 32
typedef struct {
  uint8_t key[32];
  uint8_t enckey[32];
  uint8_t deckey[32];
} aes256_context;

XHls_top top_insts[NUM];
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
u32 a[NUM][SIZE];
u32 b[NUM][SIZE];
u32 c[NUM][SIZE];
u32 cap[12];

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

  XHls_top_Set_size(top, 32);

  u32 buffer_a = a[test_case];
  u32 buffer_b = b[test_case];
  u32 buffer_c = c[test_case];

  u32 **capp = (u32 **)cap;
  capp[2] = a;
  capp[1] = b;
  capp[0] = c;

  XHls_top_Set_cap(top, (capp));
#ifdef CAPCHECKER
  u32 a_cap_id = (test_case << 5) + 0;
  u32 b_cap_id = (test_case << 5) + 1;
  u32 c_cap_id = (test_case << 5) + 2;

  // Configuring data buffers
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_KEY_ARRAY_DATA + 4,
                    (u32)(a_cap_id << (32 - 8)));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_ENCKEY_ARRAY_DATA + 4,
                    (u32)(b_cap_id << (32 - 8)));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_DECKEY_ARRAY_DATA + 4,
                    (u32)(c_cap_id << (32 - 8)));
#else
  // Configuring data buffers
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_KEY_ARRAY_DATA + 4, (u32)(0));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_ENCKEY_ARRAY_DATA + 4, (u32)(0));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_DECKEY_ARRAY_DATA + 4, (u32)(0));
  // XHls_top_WriteReg(top->Control_BaseAddress,
  //                  XHLS_TOP_CONTROL_ADDR_RET_DATA + 4, (u32)(0));
#endif

  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_KEY_ARRAY_DATA, (u32)(buffer_a));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_ENCKEY_ARRAY_DATA, (u32)(buffer_b));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_DECKEY_ARRAY_DATA, (u32)(buffer_c));
  // XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_RET_DATA,
  //(u32)(cap));

#ifdef CAPCHECKER
  // Configuring capchecker
  capchecker_install_cap(a_cap_id, &a);
  capchecker_install_cap(b_cap_id, &b);
  capchecker_install_cap(c_cap_id, &c);
#endif

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
  u32 flag = 0;

  // Compute
  asm("fence");
  for (int i = 0; i < NUM; i++)
    XHls_top_Start(top_insts + i);
  for (int i = 0; i < NUM; i++) {
    while (!XHls_top_Get_flag_vld(top_insts + i)) {
      flag |= XHls_top_Get_flag(top_insts + i);
    }
  }
  for (int i = 0; i < NUM; i++)
    while (!XHls_top_IsDone(top_insts + i))
      ;
  asm("fence");

  success();
  return 0;
}
