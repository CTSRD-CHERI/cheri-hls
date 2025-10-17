#include "ap_int.h"
#include <stdint.h>
#include <stdio.h>

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

Cap decode(ap_uint<32> buffer_0, ap_uint<32> buffer_1, ap_uint<32> buffer_2,
           ap_uint<32> buffer_3) {
#pragma HLS INLINE

  ap_uint<64> cap = (buffer_3, buffer_2);
  ap_uint<64> addr = (buffer_1, buffer_0);

  cap ^= 0x00001ffffc018004;         // nullptr [127:64]
  bool read = cap.range(61, 61);     // getField(cap, 61, 1);
  bool write = cap.range(60, 60);    // getField(cap, 60, 1);
  bool f = (cap.range(47, 47) != 0); //(getField(cap, 47, 1) != 0); // bit 111
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

  int b = buf[i];
  return (*flag_buf) ? 0 : b;
}

void cheri_store(int *buf, int i, int val, u32 *flag_buf, Cap cap) {
#pragma HLS INLINE
  checkAccess(flag_buf, cap, i, 4, true);
  buf[i] = (*flag_buf) ? buf[i] : val;
  return;
}

void cheri_stream_write_nl(u32 size, int *array1, int *array2, u32 *flag_buf,
                           Cap cap) {
#pragma HLS INLINE
  for (int i = 0; i < size; i++) {
    checkAccess(flag_buf, cap, i, 4, true);
  }
  if ((*flag_buf)) {
    for (int i = 0; i < size; i++) {
      array1[i] = array2[i];
    }
  }
}

void cheri_stream_write(u32 size, int *array1, int *array2, u32 *flag_buf,
                        Cap cap1, Cap cap2) {
#pragma HLS INLINE
  for (int i = 0; i < size; i++) {
    checkAccess(flag_buf, cap1, i, 4, true);
  }
  for (int i = 0; i < size; i++) {
    checkAccess(flag_buf, cap2, i, 4, false);
  }
  if ((*flag_buf)) {
    for (int i = 0; i < size; i++) {
      array1[i] = array2[i];
    }
  }
}
