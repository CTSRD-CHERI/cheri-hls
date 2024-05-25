#include <stdint.h>
typedef uint32_t u32;
typedef uint32_t u64;

#define NNZ 1666
#define N 494

#define TYPE int

#define MAX 1000
#define MIN 10
#define ran 100

volatile void hls_top(int size, TYPE val[NNZ], int cols[NNZ],
                      int rowDelimiters[N + 1], TYPE vec[N], TYPE out[N]) {
#pragma HLS INTERFACE m_axi port = val
#pragma HLS INTERFACE m_axi port = cols
#pragma HLS INTERFACE m_axi port = rowDelimiters
#pragma HLS INTERFACE m_axi port = vec
#pragma HLS INTERFACE m_axi port = out
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  int i, j;
  TYPE sum, Si;

spmv_1:
  for (i = 0; i < size; i++) {
    sum = 0;
    Si = 0;
    int tmp_begin = rowDelimiters[i];
    int tmp_end = rowDelimiters[i + 1];
  spmv_2:
    for (j = tmp_begin; j < tmp_end; j++) {
      Si = val[j] * vec[cols[j]];
      sum = sum + Si;
    }
    out[i] = sum;
  }
}

volatile void fillVal(TYPE A[NNZ]) {
  int j;
  for (j = 0; j < NNZ; j++) {
    A[j] = ran;
  }
}

void fill(TYPE x[N]) {
  int j;
  for (j = 0; j < N; j++) {
    x[j] = ran;
  }
}

volatile void initMat(int colind[NNZ], int rowDelimiters[N + 1]) {
  int nnzAssigned = 0;
  float prob = (float)NNZ / ((float)N * (float)N);

  int fillRemaining = 0;
  int i, j;
  for (i = 0; i < N; i++) {
    rowDelimiters[i] = nnzAssigned;
    for (j = 0; j < N; j++) {
      int numEntriesLeft = (N * N) - ((i * N) + j);
      int needToAssign = NNZ - nnzAssigned;
      if (numEntriesLeft <= needToAssign) {
        fillRemaining = 1;
      }
      /*sim p = 0.5*/
      if ((nnzAssigned < NNZ && j % 2) || fillRemaining == 1) {
        colind[nnzAssigned] = j;
        nnzAssigned++;
      }
    }
  }
  rowDelimiters[N] = NNZ;
}

#ifndef DEBUG
extern volatile u32 tohost;
#define TERM (&tohost)
#endif

#ifdef CAPCHECKER
#define CAP
#endif

#ifdef CAP
#include <cheri_init_globals.h>
#include <cheriintrin.h>
#endif

// HLS IP instance
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
u32 a[NUM][NNZ];
u32 b[NUM][NNZ];
u32 c[NUM][N + 1];
u32 d[NUM][N];
u32 e[NUM][N] = {{0}};

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

#ifndef DEBUG
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
#else
volatile void success() {}
#endif

volatile void reg_error() {
  while (1)
    ;
}

u32 hls_top_init(int test_case) {

  fillVal(a[test_case]);
  fill(d[test_case]);
  initMat(b[test_case], c[test_case]);

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
    if (hls_top_init(i))
      return 4;
  }

  // Compute
#ifndef DEBUG
  asm("fence");
#endif
  for (int i = 0; i < NUM; i++)
    hls_top(N, a[i], b[i], c[i], d[i], e[i]);
#ifndef DEBUG
  asm("fence");
#endif

  success();
  return 0;
}
