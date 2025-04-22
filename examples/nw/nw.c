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
             int xM[(ALEN + 1) * (BLEN + 1)],
             int xptr[(ALEN + 1) * (BLEN + 1)]) {
#pragma HLS INTERFACE m_axi port = xSEQA
#pragma HLS INTERFACE m_axi port = xSEQB
#pragma HLS INTERFACE m_axi port = xalignedA
#pragma HLS INTERFACE m_axi port = xalignedB
#pragma HLS INTERFACE m_axi port = xM
#pragma HLS INTERFACE m_axi port = xptr
#pragma HLS INTERFACE s_axilite port = alen
#pragma HLS INTERFACE s_axilite port = blen
#pragma HLS INTERFACE s_axilite port = return

  int SEQA[ALEN];
  int SEQB[BLEN];
  int alignedA[ALEN + BLEN];
  int alignedB[ALEN + BLEN];
  int M[(ALEN + 1) * (BLEN + 1)];
  int ptr[(ALEN + 1) * (BLEN + 1)];

  for (int i = 0; i < ALEN; i++)
    SEQA[i] = xSEQA[i];
  for (int i = 0; i < BLEN; i++)
    SEQB[i] = xSEQB[i];

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
      a_str_idx++;
      b_str_idx++;
      alignedA[a_str_idx] = SEQA[a_idx - 1];
      alignedB[b_str_idx] = SEQB[b_idx - 1];
      a_idx--;
      b_idx--;
    } else if (ptr[r + a_idx] == SKIPB) {
      a_str_idx++;
      b_str_idx++;
      alignedA[a_str_idx] = SEQA[a_idx - 1];
      alignedB[b_str_idx] = '-';
      a_idx--;
    } else { // SKIPA
      a_str_idx++;
      b_str_idx++;
      alignedA[a_str_idx] = '-';
      alignedB[b_str_idx] = SEQB[b_idx - 1];
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

  for (int i = 0; i < ALEN + BLEN; i++) {
    xalignedA[i] = alignedA[i];
    xalignedB[i] = alignedB[i];
  }
  for (int i = 0; i < (ALEN + 1) * (BLEN + 1); i++) {
    xM[i] = M[i];
    xptr[i] = ptr[i];
  }
}

int main() {

  int SEQA[ALEN] = {0};
  int SEQB[BLEN] = {0};
  int alignedA[ALEN + BLEN] = {0};
  int alignedB[ALEN + BLEN] = {0};
  int M[(ALEN + 1) * (BLEN + 1)] = {0};
  int ptr[(ALEN + 1) * (BLEN + 1)] = {0};

  hls_top(ALEN, BLEN, SEQA, SEQB, alignedA, alignedB, M, ptr);
  return 0;
}
