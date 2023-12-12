#include "xvect_mult.h"
#include <stdint.h>

#ifdef CAPCHECKER
#define CAP
#endif

#ifdef CAP
#include <cheri_init_globals.h>
#include <cheriintrin.h>
#endif

// HLS IP instance
#define NUM 8
#define SIZE 1000
XVect_mult vect_mult_insts[NUM];
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
u32 a[NUM][SIZE];
u32 b[NUM][SIZE];

u32 c[NUM][SIZE];
// u32 c[NUM][SIZE - 1];

u32 c_gold[NUM][SIZE];

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
  while (1)
    asm("li a0, 0xbee");
}

volatile void fail() {
  while (1)
    asm("li a1, 0xb00");
}

volatile void reg_error() {
  while (1)
    ;
}

u32 hls_vect_mult_init(int test_case, u32 *phy) {

  XVect_mult *top = vect_mult_insts + test_case;
  top->Control_BaseAddress = phy;

  if (!XVect_mult_IsReady(top))
    return 4;

  XVect_mult_Set_size(top, SIZE);
  // XVect_mult_Set_size(top, 11);

  u32 buffer_a = a[test_case];
  // base_buffer_address;
  u32 buffer_b = b[test_case];
  // base_buffer_address + 100;
  u32 buffer_c = c[test_case];
  // base_buffer_address + 200;

#ifdef CAPCHECKER
  u32 a_cap_id = (test_case << 5) + 0;
  u32 b_cap_id = (test_case << 5) + 1;
  u32 c_cap_id = (test_case << 5) + 2;

  // Configuring data buffers
  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_A_DATA + 4,
                      (u32)(a_cap_id << (32 - 8)));
  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_B_DATA + 4,
                      (u32)(b_cap_id << (32 - 8)));
  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_C_DATA + 4,
                      (u32)(c_cap_id << (32 - 8)));
#else
  // Configuring data buffers
  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_A_DATA + 4, (u32)(0));
  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_B_DATA + 4, (u32)(0));
  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_C_DATA + 4, (u32)(0));
#endif

  XVect_mult_WriteReg(top->Control_BaseAddress, XVECT_MULT_CONTROL_ADDR_A_DATA,
                      (u32)(buffer_a));
  XVect_mult_WriteReg(top->Control_BaseAddress, XVECT_MULT_CONTROL_ADDR_B_DATA,
                      (u32)(buffer_b));
  XVect_mult_WriteReg(top->Control_BaseAddress, XVECT_MULT_CONTROL_ADDR_C_DATA,
                      (u32)(buffer_c));

#ifdef CAPCHECKER
  // Configuring capchecker
  // TODO per buffer
  capchecker_install_cap(a_cap_id, &a);
  capchecker_install_cap(b_cap_id, &b);
  capchecker_install_cap(c_cap_id, &c);
  // XXX for now just init everything to almighty
  // void *almighty = cheri_ddc_get();
  // for (int i = 0; i < capchecker_nbentries; i++)
  //  capchecker_install_cap(i, almighty);
#endif

  // u32 d;
  // d = XVect_mult_ReadReg(top->Control_BaseAddress,
  //                        XVECT_MULT_CONTROL_ADDR_A_DATA + 4);
  // if (d != 0)
  //   reg_error();
  // d = XVect_mult_ReadReg(top->Control_BaseAddress,
  //                        XVECT_MULT_CONTROL_ADDR_B_DATA + 4);
  // if (d != 0)
  //   reg_error();
  // d = XVect_mult_ReadReg(top->Control_BaseAddress,
  //                        XVECT_MULT_CONTROL_ADDR_C_DATA + 4);
  // if (d != 0)
  //   reg_error();
  // d = XVect_mult_ReadReg(top->Control_BaseAddress,
  //                    k    XVECT_MULT_CONTROL_ADDR_A_DATA);
  // if (d != buffer_a)k
  //   // if (d != 10)k
  //   reg_error();
  // d = XVect_mult_ReadReg(top->Control_BaseAddress,
  //                        XVECT_MULT_CONTROL_ADDR_B_DATA);
  // if (d != buffer_b)
  //   reg_error();
  // d = XVect_mult_ReadReg(top->Control_BaseAddress,
  //                        XVECT_MULT_CONTROL_ADDR_C_DATA);
  // if (d != buffer_c)
  //   reg_error();

  for (int i = 0; i < 10; i++) {
    a[test_case][i] = i + test_case;
    b[test_case][i] = i + test_case;
    c_gold[test_case][i] = (i + test_case) * (i + test_case);
    // if (i != 9)
    // c[test_case][i] = 0;
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
    if (hls_vect_mult_init(i, physical_addr))
      return 4;
  }

  // Compute
  asm("fence");
  for (int i = 0; i < NUM; i++)
    XVect_mult_Start(vect_mult_insts + i);
  for (int i = 0; i < NUM; i++)
    while (!XVect_mult_IsDone(vect_mult_insts + i))
      ;
  asm("fence");

  u32 res = 0;
  for (int n = 0; n < NUM; n++) {
    for (int i = 0; i < SIZE; i++) {
      res += (c_gold[n][i] == c[n][i]);
    }
  }

  // Check
  if (res == NUM * SIZE) {
    success();
    return 8;
  } else {
    fail();
    return 1;
  }
}
