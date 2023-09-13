// Add header file for calling the HLS IP
#include "xvect_mult.h"

// HLS IP instance
#define XVECT_MULT_0_DEVICE_ID 0
XVect_mult vect_mult;
int vect_mult_done = 0;

static int setup_interrupt() {
  // JC: Need to replace this with RSIC V
  // int result;
  // XScuGic_Config *pCfg = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
  // if (pCfg == NULL) {
  //   print("Interrupt Configuration Lookup Failed\n\r");
  //   return XST_FAILURE;
  // }
  // result = XScuGic_CfgInitialize(&ScuGic, pCfg, pCfg->CpuBaseAddress);
  // if (result != XST_SUCCESS) {
  //   return result;
  // }
  // // self test
  // result = XScuGic_SelfTest(&ScuGic);
  // if (result != XST_SUCCESS) {
  //   return result;
  // }

  // auto result =
  //     XScuGic_Connect(&ScuGic, XPAR_FABRIC_SVM_CLASSIFIER_0_INTERRUPT_INTR,
  //                     (Xil_InterruptHandler)hls_classifier_isr, &classifier);
  // if (result != XST_SUCCESS) {
  //   return result;
  // }
  // XScuGic_Enable(&ScuGic, XPAR_FABRIC_SVM_CLASSIFIER_0_INTERRUPT_INTR);

  return XST_SUCCESS;
}

static int hls_vect_mult_init(XVect_mult *vect_mult_ptr) {
  int status = XVect_mult_Initialize(vect_mult_ptr, "vect_mult");
  if (status != XST_SUCCESS) {
    printf("ERROR: Could not initialize accelerator.\n");
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
    printf("HLS peripheral setup failed\n\r");
    exit(-1);
  }
  // Setup the interrupt
  status = setup_interrupt();
  if (status != XST_SUCCESS) {
    printf("Interrupt setup failed\n\r");
    exit(-1);
  }

  if (XVect_mult_IsReady(&vect_mult))
    printf("HLS peripheral is ready.  Starting... ");
  else {
    printf("!!! HLS peripheral is not ready! Exiting...\n\r");
    exit(-1);
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

  while (!vect_mult_done)
    ;
  return 0;
}
