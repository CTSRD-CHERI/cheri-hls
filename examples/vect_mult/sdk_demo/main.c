// Add header file for calling the HLS IP
#include "xvect_mult.h"

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

  u64 buffer_a = 0xC0002100;
  u64 buffer_b = 0xC0002200;
  u64 buffer_c = 0xC0002300;

  // XVect_mult_Set_a(&vect_mult, buffer_a);
  // XVect_mult_Set_b(&vect_mult, buffer_b);
  // XVect_mult_Set_c(&vect_mult, buffer_c);

  XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
                      XVECT_MULT_CONTROL_ADDR_A_DATA, (u32)(buffer_a));

  // XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
  //                     XVECT_MULT_CONTROL_ADDR_A_DATA + 4,
  //                     (u32)(buffer_a >> 32));
  // XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
  //                     XVECT_MULT_CONTROL_ADDR_A_DATA, (u32)(buffer_a));
  // XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
  //                     XVECT_MULT_CONTROL_ADDR_B_DATA, (u32)(buffer_b));
  // XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
  //                     XVECT_MULT_CONTROL_ADDR_C_DATA, (u32)(buffer_c));
  // XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
  //                     XVECT_MULT_CONTROL_ADDR_B_DATA + 4,
  //                     (u32)(buffer_b >> 32));
  // XVect_mult_WriteReg(vect_mult.Control_BaseAddress,
  //                     XVECT_MULT_CONTROL_ADDR_C_DATA + 4,
  //                     (u32)(buffer_c >> 32));

  // hls_vect_mult_start(&vect_mult);

  // while (!vect_mult_done);
  return 8;
}
