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

static void hls_vect_mult_isr(void *vect_mult_ptr) {
  XVect_mult *pAccelerator = (XVect_mult *)vect_mult_ptr;
  XVect_mult_InterruptClear(pAccelerator, 1);

  // Fetch result C
  int c = XVect_mult_Get_c(vect_mult_ptr);
  vect_mult_done = 1;
}

int main() {
  int status;

  // Setup the matrix mult
  status = hls_vect_mult_init(&vect_mult);
  if (status != XST_SUCCESS) {
    // printf("HLS peripheral setup failed\n\r");
    return -1;
  }
  // Setup the interrupt

  if (XVect_mult_IsReady(&vect_mult))
    // printf("HLS peripheral is ready.  Starting... ");
    ;
  else {
    // printf("!!! HLS peripheral is not ready! Exiting...\n\r");
    return -1;
  }

  // Initialize data
  int size = 100;
  XVect_mult_Set_size(&vect_mult, size);

  int a[1000], b[1000];
  int *buffer_a = &a[0];
  int *buffer_b = &b[0];
  XVect_mult_Set_a(&vect_mult, buffer_a);
  XVect_mult_Set_b(&vect_mult, buffer_b);

  hls_vect_mult_start(&vect_mult);

  // while (!vect_mult_done)
  //   ;
  return 8;
}
