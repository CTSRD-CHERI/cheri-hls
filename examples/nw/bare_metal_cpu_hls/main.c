#include "xhls_top.h"
#include <stdint.h>

extern volatile u32 tohost;
#define TERM (&tohost)

#ifdef CAPCHECKER
#define CAP
#endif

#ifdef CAP
#include <cheri_init_globals.h>
#include <cheriintrin.h>
#endif

// HLS IP instance
#define ALEN 128
#define BLEN 128
XHls_top top_insts[NUM];
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};

int SEQA[NUM][ALEN] = {{0}};
int SEQB[NUM][BLEN] = {{0}};
int alignedA[NUM][ALEN + BLEN] = {{0}};
int alignedB[NUM][ALEN + BLEN] = {{0}};
int M[NUM][(ALEN + 1) * (BLEN + 1)] = {{0}};
int ptr[NUM][(ALEN + 1) * (BLEN + 1)] = {{0}};

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

volatile void __attribute__((noinline)) success() {
#ifdef CAP
  void *almighty = cheri_ddc_get();
  volatile u32 *physical_addr =
      __builtin_cheri_address_set(almighty, (volatile u32 *)&tohost);
  physical_addr = __builtin_cheri_bounds_set(physical_addr, 0x4);
  *physical_addr = 1;
#else
  *((volatile u32 *)&tohost) = 1;
#endif
}

volatile void fail() {
#ifdef CAP
  void *almighty = cheri_ddc_get();
  volatile u32 *physical_addr =
      __builtin_cheri_address_set(almighty, (volatile u32 *)&tohost);
  physical_addr = __builtin_cheri_bounds_set(physical_addr, 0x4);
  *physical_addr = 1;
#else
  *((volatile u32 *)&tohost) = 1;
#endif
}

volatile void reg_error() {
  while (1)
    ;
}

u32 hls_top_init(int test_case, u32 *phy) {

  XHls_top *top = top_insts + test_case;
  top->Control_BaseAddress = phy;

  if (!XHls_top_IsReady(top))
    return 4;

  XHls_top_Set_alen(top, ALEN);
  XHls_top_Set_blen(top, BLEN);

  u32 buffer_SEQA = SEQA[test_case];
  u32 buffer_SEQB = SEQB[test_case];
  u32 buffer_alignedA = alignedA[test_case];
  u32 buffer_alignedB = alignedB[test_case];
  u32 buffer_M = M[test_case];
  u32 buffer_ptr = ptr[test_case];

#ifdef CAPCHECKER
  u32 SEQA_cap_id = (test_case << 5) + 0;
  u32 SEQB_cap_id = (test_case << 5) + 1;
  u32 alignedA_cap_id = (test_case << 5) + 2;
  u32 alignedB_cap_id = (test_case << 5) + 3;
  u32 M_cap_id = (test_case << 5) + 4;
  u32 ptr_cap_id = (test_case << 5) + 5;

  // Configuring data buffers
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_SEQA_DATA + 4,
                    (u32)(SEQA_cap_id << (32 - 8)));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_SEQB_DATA + 4,
                    (u32)(SEQB_cap_id << (32 - 8)));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_ALIGNEDA_DATA + 4,
                    (u32)(alignedA_cap_id << (32 - 8)));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_ALIGNEDB_DATA + 4,
                    (u32)(alignedB_cap_id << (32 - 8)));
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_M_DATA + 4,
                    (u32)(M_cap_id << (32 - 8)));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_PTR_DATA + 4,
                    (u32)(ptr_cap_id << (32 - 8)));
#else
  // Configuring data buffers
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_SEQA_DATA + 4, (u32)(0));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_SEQB_DATA + 4, (u32)(0));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_ALIGNEDA_DATA + 4, (u32)(0));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_ALIGNEDB_DATA + 4, (u32)(0));
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_M_DATA + 4,
                    (u32)(0));
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_PTR_DATA + 4, (u32)(0));
#endif

  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_SEQA_DATA,
                    buffer_SEQA);
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_SEQB_DATA,
                    buffer_SEQB);
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_ALIGNEDA_DATA, buffer_alignedA);
  XHls_top_WriteReg(top->Control_BaseAddress,
                    XHLS_TOP_CONTROL_ADDR_ALIGNEDB_DATA, buffer_alignedB);
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_M_DATA,
                    buffer_M);
  XHls_top_WriteReg(top->Control_BaseAddress, XHLS_TOP_CONTROL_ADDR_PTR_DATA,
                    buffer_ptr);

#ifdef CAPCHECKER
  // Configuring capchecker
  capchecker_install_cap(SEQA_cap_id, &SEQA);
  capchecker_install_cap(SEQB_cap_id, &SEQB);
  capchecker_install_cap(alignedA_cap_id, &alignedA);
  capchecker_install_cap(alignedB_cap_id, &alignedB);
  capchecker_install_cap(M_cap_id, &M);
  capchecker_install_cap(ptr_cap_id, &ptr);
#endif

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
    if (hls_top_init(i, physical_addr))
      return 4;
  }

  // Compute
  asm("fence");
  for (int i = 0; i < NUM; i++)
    XHls_top_Start(top_insts + i);
  for (int i = 0; i < NUM; i++)
    while (!XHls_top_IsDone(top_insts + i))
      ;
  asm("fence");

  success();
  return 0;
}
