#include <stdint.h>
typedef uint32_t u32;
typedef uint32_t u64;
#define ALEN 128
#define BLEN 128

#define MATCH_SCORE 1
#define MISMATCH_SCORE -1
#define GAP_SCORE -1

#define ALIGN '\\'
#define SKIPA '^'
#define SKIPB '<'

#define MAX(A, B) (((A) > (B)) ? (A) : (B))

void hls_top(int alen, int blen, int SEQA[ALEN], int SEQB[BLEN],
             int alignedA[ALEN + BLEN], int alignedB[ALEN + BLEN],
             int M[(ALEN + 1) * (BLEN + 1)], int ptr[(ALEN + 1) * (BLEN + 1)]) {

  int score, up_left, up, left, max;
  int row, row_up, r;
  int a_idx, b_idx;
  int a_str_idx, b_str_idx;

init_row:
  for (a_idx = 0; a_idx < (ALEN + 1); a_idx++) {
    M[a_idx] = a_idx * GAP_SCORE;
  }
init_col:
  for (b_idx = 0; b_idx < (BLEN + 1); b_idx++) {
    M[b_idx * (ALEN + 1)] = b_idx * GAP_SCORE;
  }

// Matrix filling loop
fill_out:
  for (b_idx = 1; b_idx < (BLEN + 1); b_idx++) {
  fill_in:
    for (a_idx = 1; a_idx < (ALEN + 1); a_idx++) {
      if (SEQA[a_idx - 1] == SEQB[b_idx - 1]) {
        score = MATCH_SCORE;
      } else {
        score = MISMATCH_SCORE;
      }

      row_up = (b_idx - 1) * (ALEN + 1);
      row = (b_idx) * (ALEN + 1);

      up_left = M[row_up + (a_idx - 1)] + score;
      up = M[row_up + (a_idx)] + GAP_SCORE;
      left = M[row + (a_idx - 1)] + GAP_SCORE;

      max = MAX(up_left, MAX(up, left));

      M[row + a_idx] = max;
      if (max == left) {
        ptr[row + a_idx] = SKIPB;
      } else if (max == up) {
        ptr[row + a_idx] = SKIPA;
      } else {
        ptr[row + a_idx] = ALIGN;
      }
    }
  }

  // TraceBack (n.b. aligned sequences are backwards to avoid string appending)
  a_idx = ALEN;
  b_idx = BLEN;
  a_str_idx = 0;
  b_str_idx = 0;

trace:
  while (a_idx > 0 || b_idx > 0) {
    r = b_idx * (ALEN + 1);
    if (ptr[r + a_idx] == ALIGN) {
      alignedA[a_str_idx++] = SEQA[a_idx - 1];
      alignedB[b_str_idx++] = SEQB[b_idx - 1];
      a_idx--;
      b_idx--;
    } else if (ptr[r + a_idx] == SKIPB) {
      alignedA[a_str_idx++] = SEQA[a_idx - 1];
      alignedB[b_str_idx++] = '-';
      a_idx--;
    } else { // SKIPA
      alignedA[a_str_idx++] = '-';
      alignedB[b_str_idx++] = SEQB[b_idx - 1];
      b_idx--;
    }
  }

// Pad the result
pad_a:
  for (; a_str_idx < ALEN + BLEN; a_str_idx++) {
    alignedA[a_str_idx] = '_';
  }
pad_b:
  for (; b_str_idx < ALEN + BLEN; b_str_idx++) {
    alignedB[b_str_idx] = '_';
  }
}

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

int main() {

  // Initialise .captable
#ifdef CAP
  void *almighty = cheri_ddc_get();
  cheri_init_globals_3(almighty, almighty, almighty);
#endif

  // Compute
  asm("fence");
  for (int i = 0; i < NUM; i++)
    hls_top(ALEN, BLEN, SEQA[i], SEQB[i], alignedA[i], alignedB[i], M[i],
            ptr[i]);
  asm("fence");

  success();
  return 0;
}
