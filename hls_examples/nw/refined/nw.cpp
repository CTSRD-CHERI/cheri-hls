#include "../../chls.h"

#define ALEN 128
#define BLEN 128

#define MATCH_SCORE 1
#define MISMATCH_SCORE -1
#define GAP_SCORE -1

#define ALIGN '\\'
#define SKIPA '^'
#define SKIPB '<'

#define MAX(A, B) (((A) > (B)) ? (A) : (B))

void hls_top(int alen, int blen, int xSEQA[ALEN], int xSEQB[BLEN],
             int xalignedA[ALEN + BLEN], int xalignedB[ALEN + BLEN],
             int xM[(ALEN + 1) * (BLEN + 1)], int xptr[(ALEN + 1) * (BLEN + 1)],
             u32 *flag, u32 cap[24]) {
#pragma HLS INTERFACE m_axi port = xSEQA
#pragma HLS INTERFACE m_axi port = xSEQB
#pragma HLS INTERFACE m_axi port = xalignedA
#pragma HLS INTERFACE m_axi port = xalignedB
#pragma HLS INTERFACE m_axi port = xM
#pragma HLS INTERFACE m_axi port = xptr
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = alen
#pragma HLS INTERFACE s_axilite port = blen
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  u32 flag_buf = 0;
  // 6 arrays (xSEQA, xSEQB, xalignedA, xalignedB, xM, xptr) * 4 = 24
  Cap caps[6];
  u32 buffer[24];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(6, buffer, cap, caps);

  int SEQA[ALEN];
  int SEQB[BLEN];
  int alignedA[ALEN + BLEN];
  int alignedB[ALEN + BLEN];
  int M[(ALEN + 1) * (BLEN + 1)];
  int ptr[(ALEN + 1) * (BLEN + 1)];

  for (int i = 0; i < ALEN; i++)
    SEQA[i] = cheri_load(xSEQA, i, &flag_buf, caps[0]);
  for (int i = 0; i < BLEN; i++)
    SEQB[i] = cheri_load(xSEQB, i, &flag_buf, caps[1]);

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

  for (int i = 0; i < ALEN + BLEN; i++)
    cheri_store(xalignedA, i, alignedA[i], &flag_buf, caps[2]);
  for (int i = 0; i < ALEN + BLEN; i++)
    cheri_store(xalignedB, i, alignedB[i], &flag_buf, caps[3]);
  for (int i = 0; i < (ALEN + 1) * (BLEN + 1); i++)
    cheri_store(xM, i, M[i], &flag_buf, caps[4]);
  for (int i = 0; i < (ALEN + 1) * (BLEN + 1); i++)
    cheri_store(xptr, i, ptr[i], &flag_buf, caps[5]);

  *flag = flag_buf;
}

int main() {

  int SEQA[ALEN] = {0};
  int SEQB[BLEN] = {0};
  int alignedA[ALEN + BLEN] = {0};
  int alignedB[ALEN + BLEN] = {0};
  int M[(ALEN + 1) * (BLEN + 1)] = {0};
  int ptr[(ALEN + 1) * (BLEN + 1)] = {0};

  u32 cap[24] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(ALEN, BLEN, SEQA, SEQB, alignedA, alignedB, M, ptr, &flag, cap);
  return 0;
}
