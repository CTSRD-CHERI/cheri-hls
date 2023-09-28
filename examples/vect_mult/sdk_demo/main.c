// Add header file for calling the HLS IP
// #include "cheribgas_de10_bare.h"
// #include "uart16550.h"
#include "xvect_mult.h"
#include <stdint.h>

// HLS IP instance
#define XVECT_MULT_0_DEVICE_ID 0
XVect_mult vect_mult;
volatile int vect_mult_done = 0;

static int hls_vect_mult_init(XVect_mult *vect_mult_ptr) {
  int status = XVect_mult_Initialize(vect_mult_ptr, "vect_mult");
  if (status != XST_SUCCESS) {
    return XST_DEVICE_NOT_FOUND;
  }
  return status;
}

static void hls_vect_mult_start(void *vect_mult_ptr) {
  XVect_mult *pAccelerator = (XVect_mult *)vect_mult_ptr;
  XVect_mult_InterruptEnable(pAccelerator, 1);
  XVect_mult_InterruptGlobalEnable(pAccelerator);
  XVect_mult_Start(pAccelerator);
}

int main() {
  int status;
  // uart_init();
  // puts("hello");

  vect_mult.Control_BaseAddress = 0xC0002000;

  if (!XVect_mult_IsReady(&vect_mult))
    // HLS peripheral is not ready!
    return 2;

  // Initialize data
  int size = 10;
  XVect_mult_Set_size(&vect_mult, size);

  // int *buffer_a = (int *)malloc(size * sizeof(int));
  // // int *buffer_b = (int *)malloc(size * sizeof(int));
  // // int *buffer_c = (int *)malloc(size * sizeof(int));

  u64 base = 0xC0002000;
  u64 buffer_a = 0x80000100;
  u64 buffer_b = 0x80000200;
  u64 buffer_c = 0x80000300;

  // XVect_mult_Set_a(&vect_mult, buffer_a);
  // XVect_mult_Set_b(&vect_mult, buffer_b);
  // XVect_mult_Set_c(&vect_mult, buffer_c);

  XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_A_DATA, (u32)(buffer_a));
  XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_C_DATA, (u32)(buffer_c));
  XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_A_DATA + 4, (u32)(0));
  XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_B_DATA, (u32)(buffer_b));
  XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_B_DATA + 4, (u32)(0));
  XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_C_DATA + 4, (u32)(0));

  u64 low_a = XVect_mult_ReadReg(vect_mult.Control_BaseAddress,
                                 XVECT_MULT_CONTROL_ADDR_A_DATA);
  u64 high_a = XVect_mult_ReadReg(vect_mult.Control_BaseAddress,
                                  XVECT_MULT_CONTROL_ADDR_A_DATA + 4);
  u64 new_a = low_a | (high_a << 32);
  if (high_a != 0)
    return 1;
  if (buffer_a != low_a)
    return 1;
  if (buffer_a != new_a)
    return 1;

  u64 low_b = XVect_mult_ReadReg(vect_mult.Control_BaseAddress,
                                 XVECT_MULT_CONTROL_ADDR_B_DATA);
  u64 high_b = XVect_mult_ReadReg(vect_mult.Control_BaseAddress,
                                  XVECT_MULT_CONTROL_ADDR_B_DATA + 4);
  u64 new_b = low_b | (high_b << 32);
  if (high_b != 0)
    return 2;
  if (buffer_b != low_b)
    return 2;
  if (buffer_b != new_b)
    return 2;

  u64 low_c = XVect_mult_ReadReg(vect_mult.Control_BaseAddress,
                                 XVECT_MULT_CONTROL_ADDR_C_DATA);
  u64 high_c = XVect_mult_ReadReg(vect_mult.Control_BaseAddress,
                                  XVECT_MULT_CONTROL_ADDR_C_DATA + 4);
  u64 new_c = low_c | (high_c << 32);
  if (high_c != 0)
    return 3;
  if (buffer_c != low_c)
    return 3;
  if (buffer_c != new_c)
    return 3;

  XVect_mult_Start(&vect_mult);

  while (!XVect_mult_IsDone(&vect_mult))
    ;

  return 8;
}
