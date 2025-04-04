#include "ap_int.h"
#include <stdint.h>
#include <stdio.h>
// #define twoPI 6.28318530717959
/*
Based on algorithm described here:
http://www.cs.berkeley.edu/~mhoemmen/matrix-seminar/slides/UCB_sparse_tutorial_1.pdf
*/

// These constants valid for the IEEE 494 bus interconnect matrix
#define NNZ 1666
#define N 494
#define L 10

#define TYPE int

#define MAX 1000
#define MIN 10
#define ran 100

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef struct {
  int base;
  int top;
  bool read;
  bool write;
} Cap;

// static inline uint64_t getField(u64 val, unsigned startBit, unsigned length)
// { #pragma HLS INLINE
//   u64 shifted = val >> startBit;
//   u64 mask = (1ULL << length) - 1ULL;
//   return shifted & mask;
// }

Cap decode(ap_uint<32> buffer_0, ap_uint<32> buffer_1, ap_uint<32> buffer_2,
           ap_uint<32> buffer_3) {
#pragma HLS INLINE

  ap_uint<64> cap = (buffer_3, buffer_2);
  ap_uint<64> addr = (buffer_1, buffer_0);

  cap ^= 0x00001ffffc018004;      // nullptr [127:64]
  bool read = cap.range(61, 61);  // getField(cap, 61, 1);
  bool write = cap.range(60, 60); // getField(cap, 60, 1);
  // ap_uint<12> perms = getField(cap, 52, 12); // bits [127:112]
  //  ap_uint<4> uperms = getField(cap, 48, 4);  // bits [115:112]
  bool f = (cap.range(47, 47) != 0); //(getField(cap, 47, 1) != 0); // bit 111
  // ap_uint<18> otype = getField(cap, 27, 18); // bits [109:91]
  bool I_E =
      (cap.range(26, 26) != 0); //(getField(cap, 26, 1) != 0);    // bit 90
  ap_uint<9> T_11_3 =
      cap.range(25, 17); // getField(cap, 17, 9);  // bits [89:81]
  ap_uint<3> T_E =
      cap.range(16, 14); // getField(cap, 14, 3);     // bits [80:78]
  ap_uint<11> B_13_3 = cap.range(13, 3); // getField(cap, 3, 11); // bits
                                         // [77:67]
  ap_uint<3> B_E = cap.range(2, 0); // getField(cap, 0, 3);      // bits [66:64]
  ap_uint<6> E = 0;
  ap_uint<14> T_13_0 = 0;
  ap_uint<14> B_13_0 = 0;
  bool L_carry_out = false;

  if (!I_E) {
    E = 0;
    T_13_0 = (T_11_3, T_E);
    B_13_0 = (B_13_3, B_E);
    ap_uint<12> T_11_0 = T_13_0.range(11, 0); //& 0x0fff;
    ap_uint<12> B_11_0 = B_13_0.range(11, 0); //& 0x0fff;
    L_carry_out = (T_11_0 < B_11_0);
  } else {
    E = (T_E, B_E);
    T_13_0 = (T_11_3 << 3);
    B_13_0 = (B_13_3 << 3);
    ap_uint<12> T_11_3_only = T_13_0.range(11, 3); //(T_13_0 >> 3) & 0x01ff;
    ap_uint<12> B_11_3_only = T_13_0.range(11, 3); //(B_13_0 >> 3) & 0x01ff;
    L_carry_out = (T_11_3_only < B_11_3_only);
  }
  ap_uint<2> B_13_12 = B_13_0.range(13, 12); //(B_13_0 >> 12) & 0x3;
  ap_uint<2> T_13_12 = B_13_12 + (L_carry_out ? 1 : 0) + (I_E ? 1 : 0);
  T_13_12 &= 0x3;

  T_13_0 &= 0x0fff;
  T_13_0 = (T_13_12, T_13_0.range(11, 0));

  ap_uint<3> A3 = ((addr >> (E + 11)) & 0x7);
  ap_uint<3> T3 = T_13_0.range(13, 11); //((T_13_0 >> 11) & 0x7);
  ap_uint<3> B3 = B_13_0.range(13, 11); //((B_13_0 >> 11) & 0x7);
  ap_uint<3> R = B3 - 1;

  ap_int<2> c_t = 0;
  ap_int<2> c_b = 0;

  if ((A3 < R) && !(T3 < R)) {
    c_t = -1;
  } else if (!(A3 < R) && (T3 < R)) {
    c_t = 1;
  }
  if ((A3 < R) && !(B3 < R)) {
    c_b = -1;
  } else if (!(A3 < R) && (T3 < R)) {
    c_b = 1;
  }
  u32 a_top = addr >> (E + 14);
  u32 top = ((a_top + c_t) << (E + 14)) | ((u32)(T_13_0 & 0x3FFF) << E);
  u32 base = ((a_top + c_b) << (E + 14)) | ((u32)(B_13_0 & 0x3FFF) << E);

  Cap c;
  // c.addr = addr;
  c.base = base - addr;
  c.top = top - addr;
  c.read = read;
  c.write = write;
  return c;
}

void load_cap(int num, u32 *buffer, u32 *cap, Cap *caps) {
#pragma HLS INLINE

  for (int i = 0; i < num * 4; i++)
#pragma HLS PIPELINE
    buffer[i] = cap[i];

  int i = 0;
  for (int j = 0; j < num; j++) {
    caps[j] = decode(buffer[i], buffer[i + 1], buffer[i + 2], buffer[i + 3]);
    i += 4;
  }
}

void create_cap(int size, Cap *caps, u8 index) {
#pragma HLS INLINE
  Cap new_cap;
  new_cap.base = 0;
  new_cap.top = size * 4;
  new_cap.write = true;
  new_cap.read = true;
  caps[index] = new_cap;
  return;
}

void checkAccess(u32 *flag_buf, Cap cap, u16 offset, ap_uint<3> nBytes,
                 bool isWrite) {
#pragma HLS INLINE
  *flag_buf |=
      !((cap.base <= (4 * offset)) && ((4 * offset + nBytes) <= cap.top) &&
        (!isWrite || (cap.write)) && (isWrite || (cap.read)));
}

int cheri_load(int *buf, int i, u32 *flag_buf, Cap cap) {
#pragma HLS INLINE
  checkAccess(flag_buf, cap, i, 4, false);
  return (*flag_buf) ? buf[i] : 0;
}

void cheri_store(int *buf, int i, int val, u32 *flag_buf, Cap cap) {
#pragma HLS INLINE
  checkAccess(flag_buf, cap, i, 4, true);

  if ((*flag_buf)) {
    buf[i] = val;
  }
  return;
}

void hls_top(int n, int l, TYPE xnzval[N * L], int xcols[N * L], TYPE xvec[N],
             TYPE xout[N], u32 *flag, u32 cap[16]) {
#pragma HLS INTERFACE m_axi port = xnzval
#pragma HLS INTERFACE m_axi port = xcols
#pragma HLS INTERFACE m_axi port = xvec
#pragma HLS INTERFACE m_axi port = xout
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = n
#pragma HLS INTERFACE s_axilite port = l
#pragma HLS INTERFACE s_axilite port = return
  int i, j;
  TYPE Si;
  u32 flag_buf = 0;
  Cap caps[4];
  u32 buffer[16];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete
  load_cap(4, buffer, cap, caps);

  TYPE nzval[N * L];
  int cols[N * L];
  TYPE vec[N];
  TYPE out[N];

  for (i = 0; i < n * l; i++) {
    int nzvalelem = cheri_load(xnzval, i, &flag_buf, caps[0]);
    nzval[i] = nzvalelem;
  }
  for (i = 0; i < n * l; i++) {
    int colselem = cheri_load(xcols, i, &flag_buf, caps[1]);
    cols[i] = colselem;
  }
  for (i = 0; i < n; i++) {
    int vecelem = cheri_load(xvec, i, &flag_buf, caps[2]);
    vec[i] = vecelem;
  }

ellpack_1:
  for (i = 0; i < n; i++) {
    TYPE sum = out[i];
  ellpack_2:
    for (j = 0; j < l; j++) {
      Si = nzval[j + i * l] * vec[cols[j + i * l]];
      sum += Si;
    }
    out[i] = sum;
  }
  for (i = 0; i < n; i++) {
    int xoutelem = out[i];
    cheri_store(xout, i, xoutelem, &flag_buf, caps[3]);
  }
  *flag = flag_buf;
  return;
}

void fillVal(TYPE nzval[N * L], int colind[N * L], TYPE x[N]) {
  int j, cur_indx, i;
  for (i = 0; i < N; i++) {
    x[i] = ran;
    cur_indx = 0;
    for (j = 0; j < L; j++) {
      nzval[i * L + j] = ran;
      colind[i * L + j] = cur_indx;
    }
  }
}

void initOut(TYPE y[N]) {
  int i;
  for (i = 0; i < N; i++) {
    y[i] = 0;
  }
}

int main() {
  int colind[N * L];
  TYPE nzval[N * L];
  TYPE x[N];
  TYPE y[N];
  int i;

  fillVal(nzval, colind, x);
  initOut(y);
  u32 cap[16];
  u32 flag[1] = {0};

  hls_top(N, L, nzval, colind, x, y, flag, cap);
  return 0;
}
