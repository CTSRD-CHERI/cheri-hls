#include "../../chls-light.h"

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
  // 12 caps: 6 for external arrays + 6 for local arrays
  Cap caps[12];
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

  create_cap(ALEN, caps, 6);                      // SEQA
  create_cap(BLEN, caps, 7);                      // SEQB
  create_cap(ALEN + BLEN, caps, 8);               // alignedA
  create_cap(ALEN + BLEN, caps, 9);               // alignedB
  create_cap((ALEN + 1) * (BLEN + 1), caps, 10);  // M
  create_cap((ALEN + 1) * (BLEN + 1), caps, 11);  // ptr

  for (int i = 0; i < ALEN; i++) {
    int temp = cheri_load(xSEQA, i, &flag_buf, caps[0]);
    cheri_store(SEQA, i, temp, &flag_buf, caps[6]);
  }
  for (int i = 0; i < BLEN; i++) {
    int temp = cheri_load(xSEQB, i, &flag_buf, caps[1]);
    cheri_store(SEQB, i, temp, &flag_buf, caps[7]);
  }

  int score, up_left, up, left, max;
  int row, row_up, r;
  int a_idx, b_idx;
  int a_str_idx, b_str_idx;

init_row:
  for (a_idx = 0; a_idx < (ALEN + 1); a_idx++) {
    cheri_store(M, a_idx, a_idx * GAP_SCORE, &flag_buf, caps[10]);
  }
init_col:
  for (b_idx = 0; b_idx < (BLEN + 1); b_idx++) {
    cheri_store(M, b_idx * (ALEN + 1), b_idx * GAP_SCORE, &flag_buf, caps[10]);
  }

// Matrix filling loop
fill_out:
  for (b_idx = 1; b_idx < (BLEN + 1); b_idx++) {
  fill_in:
    for (a_idx = 1; a_idx < (ALEN + 1); a_idx++) {
      int seqa_elem = cheri_load(SEQA, a_idx - 1, &flag_buf, caps[6]);
      int seqb_elem = cheri_load(SEQB, b_idx - 1, &flag_buf, caps[7]);

      if (seqa_elem == seqb_elem) {
        score = MATCH_SCORE;
      } else {
        score = MISMATCH_SCORE;
      }

      row_up = (b_idx - 1) * (ALEN + 1);
      row = (b_idx) * (ALEN + 1);

      int m_up_left = cheri_load(M, row_up + (a_idx - 1), &flag_buf, caps[10]);
      int m_up = cheri_load(M, row_up + (a_idx), &flag_buf, caps[10]);
      int m_left = cheri_load(M, row + (a_idx - 1), &flag_buf, caps[10]);

      up_left = m_up_left + score;
      up = m_up + GAP_SCORE;
      left = m_left + GAP_SCORE;

      max = MAX(up_left, MAX(up, left));

      cheri_store(M, row + a_idx, max, &flag_buf, caps[10]);
      if (max == left) {
        cheri_store(ptr, row + a_idx, SKIPB, &flag_buf, caps[11]);
      } else if (max == up) {
        cheri_store(ptr, row + a_idx, SKIPA, &flag_buf, caps[11]);
      } else {
        cheri_store(ptr, row + a_idx, ALIGN, &flag_buf, caps[11]);
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
    int ptr_elem = cheri_load(ptr, r + a_idx, &flag_buf, caps[11]);

    if (ptr_elem == ALIGN) {
      int seqa_elem = cheri_load(SEQA, a_idx - 1, &flag_buf, caps[6]);
      int seqb_elem = cheri_load(SEQB, b_idx - 1, &flag_buf, caps[7]);
      cheri_store(alignedA, a_str_idx++, seqa_elem, &flag_buf, caps[8]);
      cheri_store(alignedB, b_str_idx++, seqb_elem, &flag_buf, caps[9]);
      a_idx--;
      b_idx--;
    } else if (ptr_elem == SKIPB) {
      int seqa_elem = cheri_load(SEQA, a_idx - 1, &flag_buf, caps[6]);
      cheri_store(alignedA, a_str_idx++, seqa_elem, &flag_buf, caps[8]);
      cheri_store(alignedB, b_str_idx++, (int)'-', &flag_buf, caps[9]);
      a_idx--;
    } else { // SKIPA
      int seqb_elem = cheri_load(SEQB, b_idx - 1, &flag_buf, caps[7]);
      cheri_store(alignedA, a_str_idx++, (int)'-', &flag_buf, caps[8]);
      cheri_store(alignedB, b_str_idx++, seqb_elem, &flag_buf, caps[9]);
      b_idx--;
    }
  }

// Pad the result
pad_a:
  for (; a_str_idx < ALEN + BLEN; a_str_idx++) {
    cheri_store(alignedA, a_str_idx, (int)'_', &flag_buf, caps[8]);
  }
pad_b:
  for (; b_str_idx < ALEN + BLEN; b_str_idx++) {
    cheri_store(alignedB, b_str_idx, (int)'_', &flag_buf, caps[9]);
  }

  for (int i = 0; i < ALEN + BLEN; i++) {
    int temp = cheri_load(alignedA, i, &flag_buf, caps[8]);
    cheri_store(xalignedA, i, temp, &flag_buf, caps[2]);
  }
  for (int i = 0; i < ALEN + BLEN; i++) {
    int temp = cheri_load(alignedB, i, &flag_buf, caps[9]);
    cheri_store(xalignedB, i, temp, &flag_buf, caps[3]);
  }
  for (int i = 0; i < (ALEN + 1) * (BLEN + 1); i++) {
    int temp = cheri_load(M, i, &flag_buf, caps[10]);
    cheri_store(xM, i, temp, &flag_buf, caps[4]);
  }
  for (int i = 0; i < (ALEN + 1) * (BLEN + 1); i++) {
    int temp = cheri_load(ptr, i, &flag_buf, caps[11]);
    cheri_store(xptr, i, temp, &flag_buf, caps[5]);
  }

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
