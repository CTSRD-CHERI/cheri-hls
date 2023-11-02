/******************************************************************************
 *
 * Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 ******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

typedef int data_t;

#include "xil_printf.h"
#include <stdio.h>
// Add BSP header files
#include <stdlib.h> // Standard C functions, e.g. exit()
// #include <stdbool.h> // Provides a Boolean data type for ANSI/ISO-C
#include "xparameters.h" // Parameter definitions for processor periperals
#include "xscugic.h"     // Processor interrupt controller device driver
#include "xtime_l.h"
#include "xvect_mult.h" // Device driver for HLS HW block
#include <arm_neon.h>

#include "sw_tanh_vect_mult.h"

// HLS vect_mult HW instance
XVect_mult vect_mult;
// Interrupt Controller Instance
XScuGic ScuGic;
// Global variable definitions - used by ISR
volatile static int vect_mult_run = 0;
volatile static int vect_mult_res_vld = 0;

// Setup and helper functions
int setup_interrupt();
int hls_vect_mult_init(XVect_mult *vect_mult_ptr);
void hls_vect_mult_start(void *vect_mult_ptr);
// The ISR prototype
void hls_vect_mult_isr(void *vect_mult_ptr);

volatile static int data_set_ctr = 0;
volatile static u32 res_hw[TESTDATA_SET_NUM] = {0};
data_t *vect_mult_buffer = &testData[0];

int main() {
  int status;

  // Setup the matrix mult
  status = hls_vect_mult_init(&vect_mult);
  if (status != XST_SUCCESS) {
    print("HLS peripheral setup failed\n\r");
    exit(-1);
  }
  // Setup the interrupt
  status = setup_interrupt();
  if (status != XST_SUCCESS) {
    print("Interrupt setup failed\n\r");
    exit(-1);
  }

  if (XVect_mult_IsReady(&vect_mult))
    print("HLS peripheral is ready.  Starting... ");
  else {
    print("!!! HLS peripheral is not ready! Exiting...\n\r");
    exit(-1);
  }

  // use interrupt
  // vect_mult_run = 1;
  XVect_mult_Set_in_V(&vect_mult, *((XVect_mult_In_v *)vect_mult_buffer));
  hls_vect_mult_start(&vect_mult);

  return 0;
}

int hls_vect_mult_init(XVect_mult *vect_mult_ptr) {
  XVect_mult_Config *cfgPtr;
  int status;

  cfgPtr = XVect_mult_LookupConfig(XPAR_SVM_CLASSIFIER_0_DEVICE_ID);
  if (!cfgPtr) {
    print("ERROR: Lookup of accelerator configuration failed.\n\r");
    return XST_FAILURE;
  }
  status = XVect_mult_CfgInitialize(vect_mult_ptr, cfgPtr);
  if (status != XST_SUCCESS) {
    print("ERROR: Could not initialize accelerator.\n\r");
    return XST_FAILURE;
  }
  return status;
}

void hls_vect_mult_start(void *vect_mult_ptr) {
  XVect_mult *pAccelerator = (XVect_mult *)vect_mult_ptr;
  XVect_mult_InterruptEnable(pAccelerator, 1);
  XVect_mult_InterruptGlobalEnable(pAccelerator);
  XVect_mult_Start(pAccelerator);
}

void hls_vect_mult_isr(void *vect_mult_ptr) {

  XVect_mult *pAccelerator = (XVect_mult *)vect_mult_ptr;

  // clear the local interrupt
  XVect_mult_InterruptClear(pAccelerator, 1);

  vect_mult_res_vld = 1;
}

int setup_interrupt() {
  // This functions sets up the interrupt on the ARM
  int result;
  XScuGic_Config *pCfg = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
  if (pCfg == NULL) {
    print("Interrupt Configuration Lookup Failed\n\r");
    return XST_FAILURE;
  }
  result = XScuGic_CfgInitialize(&ScuGic, pCfg, pCfg->CpuBaseAddress);
  if (result != XST_SUCCESS) {
    return result;
  }
  // self test
  result = XScuGic_SelfTest(&ScuGic);
  if (result != XST_SUCCESS) {
    return result;
  }
  // Initialize the exception handler
  Xil_ExceptionInit();
  // Register the exception handler
  // print("Register the exception handler\n\r");
  Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                               (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                               &ScuGic);
  // Enable the exception handler
  Xil_ExceptionEnable();
  // Connect the Adder ISR to the exception table
  // print("Connect the Adder ISR to the Exception handler table\n\r");
  result = XScuGic_Connect(&ScuGic, XPAR_FABRIC_SVM_CLASSIFIER_0_INTERRUPT_INTR,
                           (Xil_InterruptHandler)hls_vect_mult_isr, &vect_mult);
  if (result != XST_SUCCESS) {
    return result;
  }
  // print("Enable the Adder ISR\n\r");
  XScuGic_Enable(&ScuGic, XPAR_FABRIC_SVM_CLASSIFIER_0_INTERRUPT_INTR);
  return XST_SUCCESS;
}
