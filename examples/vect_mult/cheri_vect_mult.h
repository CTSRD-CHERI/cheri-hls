#include "cheri_hls_cap.h"
#include "xvect_mult_hw.h"
void init_xvect_mult(hls_kernel *x) {
  x->ctrl = XVECT_MULT_CONTROL_ADDR_AP_CTRL;
  x->gie = XVECT_MULT_CONTROL_ADDR_GIE;
  x->ier = XVECT_MULT_CONTROL_ADDR_IER;
  x->isr = XVECT_MULT_CONTROL_ADDR_ISR;
  x->data_size = 4;
  x->data = malloc((ctrl_reg)*x->data_size);
  x->data[0] = &ctrl_reg(XVECT_MULT_CONTROL_ADDR_SIZE_DATA, 32, 1);
  x->data[1] = &ctrl_reg(XVECT_MULT_CONTROL_ADDR_A_DATA, 64, 100);
  x->data[2] = &ctrl_reg(XVECT_MULT_CONTROL_ADDR_B_DATA, 64, 100);
  x->data[3] = &ctrl_reg(XVECT_MULT_CONTROL_ADDR_C_DATA, 64, 100);
}
