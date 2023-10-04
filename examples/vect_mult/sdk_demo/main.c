// Add header file for calling the HLS IP
// #include "cheribgas_de10_bare.h"
// #include "uart16550.h"
#include "xvect_mult.h"
#include <stdint.h>

// HLS IP instance
#define NUM 8
XVect_mult vect_mult_insts[NUM];
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
u64 base_buff_phy_addr[NUM] = {0x90010000, 0x90011000, 0x90012000, 0x90013000,
                               0x90014000, 0x90015000, 0x90016000, 0x90017000};

int test_case = 0;

volatile int vect_mult_done = 0;
volatile char *uart_base = 0xC0000000;

void success() {

  *uart_base = 's';
  while (1)
    ;
}

void fail() {
  while (1)
    ;
}

u32 c[NUM][10];

static u32 hls_vect_mult_start(XVect_mult *top, u64 base_address,
                               u64 base_buffer_address) {

  top->Control_BaseAddress = base_address;

  if (!XVect_mult_IsReady(top))
    return 4;

  int size = 10;
  XVect_mult_Set_size(top, size);

  u64 buffer_a = base_buffer_address;
  u64 buffer_b = base_buffer_address + 100;
  u64 buffer_c = base_buffer_address + 200;

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

  u64 low_a = XVect_mult_ReadReg(top->Control_BaseAddress,
                                 XVECT_MULT_CONTROL_ADDR_A_DATA);
  u64 high_a = XVect_mult_ReadReg(top->Control_BaseAddress,
                                  XVECT_MULT_CONTROL_ADDR_A_DATA + 4);
  u64 new_a = low_a | (high_a << 32);
  if (high_a != 0)
    return 1;
  if (buffer_a != low_a)
    return 1;
  if (buffer_a != new_a)
    return 1;

  u64 low_b = XVect_mult_ReadReg(top->Control_BaseAddress,
                                 XVECT_MULT_CONTROL_ADDR_B_DATA);
  u64 high_b = XVect_mult_ReadReg(top->Control_BaseAddress,
                                  XVECT_MULT_CONTROL_ADDR_B_DATA + 4);
  u64 new_b = low_b | (high_b << 32);
  if (high_b != 0)
    return 2;
  if (buffer_b != low_b)
    return 2;
  if (buffer_b != new_b)
    return 2;

  u64 low_c = XVect_mult_ReadReg(top->Control_BaseAddress,
                                 XVECT_MULT_CONTROL_ADDR_C_DATA);
  u64 high_c = XVect_mult_ReadReg(top->Control_BaseAddress,
                                  XVECT_MULT_CONTROL_ADDR_C_DATA + 4);
  u64 new_c = low_c | (high_c << 32);
  if (high_c != 0)
    return 3;
  if (buffer_c != low_c)
    return 3;
  if (buffer_c != new_c)
    return 3;

  u32 *xa = (volatile u32 *)(buffer_a);
  u32 *xb = (volatile u32 *)(buffer_b);
  u32 *xc = (volatile u32 *)(buffer_c);

  u32 a[10], b[10];

  for (int i = 0; i < 10; i++) {
    a[i] = i + test_case;
    b[i] = i + test_case;
    c[test_case][i] = (i + test_case) * (i + test_case);

    *(xa + i) = i + test_case;
    *(xb + i) = i + test_case;
    *(xc + i) = 0;
  }

  test_case++;
  return buffer_c;
}

int main() {
  int status;

  // Initialize
  u32 c_addr[8];
  for (int i = 0; i < NUM; i++)
    c_addr[i] = hls_vect_mult_start(vect_mult_insts + i, base_phy_addr[i],
                                    base_buff_phy_addr[i]);

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
    u32 *xc = (volatile u32 *)(c_addr[n]);
    for (int i = 0; i < 10; i++) {
      u32 c_value = *(xc + i);
      res += ((u32)c_value == c[n][i]);
    }
  }

  // Check
  if (res == NUM * 10) {
    success();
    return 8;
  } else {
    fail();
    return 1;
  }
}
