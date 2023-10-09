#include "xvect_mult.h"
#include <stdint.h>

// HLS IP instance
#define NUM 8
#define SIZE 10
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

u32 hls_vect_mult_init(int test_case, u64 phy) {

  XVect_mult *top = vect_mult_insts + test_case;
  top->Control_BaseAddress = phy;

  if (!XVect_mult_IsReady(top))
    return 4;

  XVect_mult_Set_size(top, SIZE);

  u64 buffer_a = a[test_case];
  // base_buffer_address;
  u64 buffer_b = b[test_case];
  // base_buffer_address + 100;
  u64 buffer_c = c[test_case];
  // base_buffer_address + 200;

  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_A_DATA + 4, (u32)(0));
  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_B_DATA + 4, (u32)(0));
  XVect_mult_WriteReg(top->Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_C_DATA + 4, (u32)(0));
  XVect_mult_WriteReg(top->Control_BaseAddress, XVECT_MULT_CONTROL_ADDR_A_DATA,
                      (u32)(buffer_a));
  XVect_mult_WriteReg(top->Control_BaseAddress, XVECT_MULT_CONTROL_ADDR_B_DATA,
                      (u32)(buffer_b));
  XVect_mult_WriteReg(top->Control_BaseAddress, XVECT_MULT_CONTROL_ADDR_C_DATA,
                      (u32)(buffer_c));

  for (int i = 0; i < 10; i++) {
    a[test_case][i] = i + test_case;
    b[test_case][i] = i + test_case;
    c_gold[test_case][i] = (i + test_case) * (i + test_case);
    c[test_case][i] = 0;
  }

  return 0;
}

int main() {
  int status;

  // Initialize
  for (int i = 0; i < NUM; i++)
    if (hls_vect_mult_init(i, base_phy_addr[i]))
      return 4;

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
