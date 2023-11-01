#include "xvect_mult.h"
#include <stdint.h>

#ifdef CAP
#include <cheri_init_globals.h>
#include <cheriintrin.h>
#endif

// HLS IP instance
#define NUM 1
#define SIZE 10
// #define SIZE 10
XVect_mult vect_mult_insts[NUM];
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
u32 a[NUM][SIZE];
u32 b[NUM][SIZE];
u32 c[NUM][SIZE];
u32 c_gold[NUM][SIZE];

volatile void success() {
  while (1)
    ;
}

volatile void fail() {
  while (1)
    ;
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

  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_A_DATA + 4, (u32)(0));
  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_B_DATA + 4, (u32)(0));
  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_C_DATA + 4, (u32)(0));
  XVect_mult_WriteReg(top->Control_BaseAddress, XVECT_MULT_CONTROL_ADDR_A_DATA,
                      (u32)(buffer_a));

  // XVect_mult_WriteReg(top->Control_BaseAddress,
  // XVECT_MULT_CONTROL_ADDR_A_DATA,
  //                     10);

  XVect_mult_WriteReg(top->Control_BaseAddress, XVECT_MULT_CONTROL_ADDR_B_DATA,
                      (u32)(buffer_b));
  XVect_mult_WriteReg(top->Control_BaseAddress, XVECT_MULT_CONTROL_ADDR_C_DATA,
                      (u32)(buffer_c));

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
  //                        XVECT_MULT_CONTROL_ADDR_A_DATA);
  // if (d != buffer_a)
  //   // if (d != 10)
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
    c[test_case][i] = 0;
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
