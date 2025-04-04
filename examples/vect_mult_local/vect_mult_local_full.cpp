#define N 10
#include "ap_int.h"
#include <stdint.h>
#include <stdio.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef struct {
  u64 addr;
  u64 base;
  u64 top;
  ap_uint<18> otype;
  ap_uint<12> perms;
  ap_uint<4> uperms;
} Cap;

static inline uint64_t getField(u64 val, unsigned startBit, unsigned length) {
#pragma HLS INLINE
  u64 shifted = val >> startBit;
  u64 mask = (1ULL << length) - 1ULL;
  return shifted & mask;
}

Cap decode(ap_uint<32> buffer_0, ap_uint<32> buffer_1, ap_uint<32> buffer_2,
           ap_uint<32> buffer_3) {
#pragma HLS INLINE

  ap_uint<64> cap = (buffer_3, buffer_2);
  ap_uint<64> addr = (buffer_1, buffer_0);

  cap ^= 0x00001ffffc018004; // nullptr [127:64]
  bool read = getField(cap, 61, 1);
  bool write = getField(cap, 60, 1);
  ap_uint<12> perms = getField(cap, 52, 12); // bits [127:112]
  ap_uint<4> uperms = getField(cap, 48, 4);  // bits [115:112]
  bool f = (getField(cap, 47, 1) != 0);      // bit 111
  ap_uint<18> otype = getField(cap, 27, 18); // bits [109:91]
  bool I_E = (getField(cap, 26, 1) != 0);    // bit 90
  ap_uint<9> T_11_3 = getField(cap, 17, 9);  // bits [89:81]
  ap_uint<3> T_E = getField(cap, 14, 3);     // bits [80:78]
  ap_uint<11> B_13_3 = getField(cap, 3, 11); // bits [77:67]
  ap_uint<3> B_E = getField(cap, 0, 3);      // bits [66:64]
  ap_uint<6> E = 0;
  ap_uint<14> T_13_0 = 0;
  ap_uint<14> B_13_0 = 0;
  bool L_carry_out = false;

  if (!I_E) {
    E = 0;
    T_13_0 = (T_11_3, T_E);
    B_13_0 = (B_13_3, B_E);
    ap_uint<12> T_11_0 = T_13_0 & 0x0fff;
    ap_uint<12> B_11_0 = B_13_0 & 0x0fff;
    L_carry_out = (T_11_0 < B_11_0);
  } else {
    E = (T_E, B_E);
    T_13_0 = (T_11_3 << 3);
    B_13_0 = (B_13_3 << 3);
    ap_uint<12> T_11_3_only = (T_13_0 >> 3) & 0x01ff;
    ap_uint<12> B_11_3_only = (B_13_0 >> 3) & 0x01ff;
    L_carry_out = (T_11_3_only < B_11_3_only);
  }
  ap_uint<2> B_13_12 = (B_13_0 >> 12) & 0x3;
  ap_uint<2> T_13_12 = B_13_12 + (L_carry_out ? 1 : 0) + (I_E ? 1 : 0);
  T_13_12 &= 0x3;

  T_13_0 &= 0x0fff;
  T_13_0 = (T_13_12, T_13_0.range(11, 0));

  ap_uint<3> A3 = ((addr >> (E + 11)) & 0x7);
  ap_uint<3> T3 = ((T_13_0 >> 11) & 0x7);
  ap_uint<3> B3 = ((B_13_0 >> 11) & 0x7);
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
  u64 a_top = addr >> (E + 14);
  u64 top = ((a_top + c_t) << (E + 14)) | ((u64)(T_13_0 & 0x3FFF) << E);
  u64 base = ((a_top + c_b) << (E + 14)) | ((u64)(B_13_0 & 0x3FFF) << E);

  Cap c;
  c.top = top;
  c.base = base;
  c.addr = addr;
  c.otype = otype;
  c.perms = perms;
  c.uperms = uperms;
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

void checkAccess(u32 *flag_buf, Cap cap, u64 offset, u64 nBytes, bool isWrite) {
#pragma HLS INLINE
  *flag_buf |= !((cap.base <= cap.addr + (4 * offset)) &&
                 ((cap.addr + 4 * offset + nBytes) <= cap.top) &&
                 (!isWrite || (cap.perms.range(8, 8))) &&
                 (isWrite || (cap.perms.range(9, 9))));
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

void create_cap(int size, Cap *caps, u8 index) {
#pragma HLS INLINE
  Cap new_cap;
  new_cap.base = 0;
  new_cap.addr = 0;
  new_cap.top = size * 4;
  new_cap.perms = 0xFFF;
  caps[index] = new_cap;
  return;
}

void hls_top(int size, int a[N], int c[N], u32 *flag, u32 cap[8]) {
#pragma HLS INTERFACE m_axi port = a
#pragma HLS INTERFACE m_axi port = c
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return
  int b[N] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

  u32 flag_buf = 0;
  // 3 and 12 comes from program analysis
  Cap caps[3];
  u32 buffer[12];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(2, buffer, cap, caps);
  create_cap(N, caps, 2); // size, caps array, cap index of b

  for (int i = 0; i < size; i++) {
#pragma HLS PIPELINE

    int a_elem = cheri_load(a, i, &flag_buf, caps[0]);
    int b_elem = cheri_load(b, i, &flag_buf, caps[2]);

    int c_elem = a_elem * b_elem;

    cheri_store(c, i, c_elem, &flag_buf, caps[1]);
  }

  *flag = flag_buf;
  return;
}

// hw testbench - see things in bits
int main() {

  int a[N], b[N], c[N], c_gold[N];
  for (int i = 0; i < N; i++) {
    a[i] = i;
    b[i] = i;
    c[i] = 0;
    c_gold[i] = a[i] * b[i];
  }
  u32 ret[4] = {0x800010c0LL, 0x00000000LL, 0x048190c4LL, 0xff7d0000};

  // xilinx ap_int<128> but for now int x[4]

  u32 flag[1] = {0};

  hls_top(N, a, c, flag, ret);

  // can check return values, see if it returns exception, no exception,
  // etc. non-standard in C but might need additional hls library pc, gcc;
  // hls

  int res = 0;
  for (int i = 0; i < N; i++) {
    res += (c_gold[i] == c[i]);
  }

  // u64 cap = 0xff7d0000048190c4ULL;
  // u64 addr = 0x00000000800010c0ULL;

  // u32 cap[4] = {0x80000e20, 0x00000000, 0x07938e24, 0xef7d0000};

  // __builtin_cheri_bounds_set(c,1);
  // u64 cap = 0xff7d000007b5ced4ULL;
  // u64 addr = 0x0000000080000ed0ULL;

  // __builtin_cheri_bounds_set(c,4);
  // u64 cap = 0xff7d000007b48ed4ULL;
  // u64 addr = 0x0000000080000ed0ULL;

  // __builtin_cheri_bounds_set(c,20);
  // u64 cap = 0xff7d000007b88ed4ULL;
  // u64 addr = 0x0000000080000ed0ULL;

  // __builtin_cheri_perms_and(c,0x77fff); cannot write
  // u64 cap = 0xef7d000007ab8e84ULL;
  // u64 addr = 0x0000000080000e80ULL;
  // ju32 cap[4] = {0x80000e80, 0x00000000, 0x07ab8e84, 0xff7d0000};

  // __builtin_cheri_perms_and(c,0x6ffff); cannot read
  // u64 cap = 0xdf7d000007ab8e84ULL;
  // u64 addr = 0x0000000080000e80ULL;

  // u32 cap[4] = {0x80001050, 0x00000000, 0x04659054, 0xff7d0000};
  //  u32 cap[4] = {0x80001190, 0x00000000, 0x04b59194, 0xff7d0000};
  //   u32 cap[4] = {0x800012d0, 0x00000000, 0x050592d4, 0xff7d0000};

  // array a, set to bounds 39
  // u32 cap[4] = {0x80001050, 0x00000000, 0x04199054, 0xff7d0000};
  u32 cap[4] = {0x80000eb0, 0x00000000, 0x07b44eb4, 0xff7d0000};

  u32 flag_buf = 0;
  Cap caps[1];
  u32 buffer[4];

  load_cap(1, buffer, cap, caps);
  printf("CAPbase: %lx\n", caps[0].base);
  printf("CAP top: %lx\n", caps[0].top);
  // printf("CAP write: %d\n", caps[0].write);
  // printf("CAP read: %d\n", caps[0].read);
  int y = cheri_load(a, 8, &flag_buf, caps[0]);
  printf("Value read: %d\n", y);
  printf("Flag buf: %d\n", flag_buf);

  // flag_buf = 0;
  // cheri_store(a, 0, 3, &flag_buf, caps[0]);
  // printf("Value stored: %d\n", a[0]);
  // printf("Flag buf: %d\n", flag_buf);

  // Cap x = decode(addr & 0xffffffff, addr >> 32, cap & 0xffffffff, cap >> 32);
  //  printf("addr: %lx\n", x.addr);
  // printf("base: %lx\n", x.base);
  // printf("top:  %lx\n", x.top);
  // printf("read:%d\n", x.read);
  // printf("write:%d\n", x.write);
  //  printf("otype:%x\n", x.otype);
  //  printf("perms:%x\n", x.perms);
  //  printf("uperm:%x\n", x.uperms);
  //  bool y = checkWrite(addr, x, 5, 15);
  //  printf("access:%d\n", y);

  // return (y != 1);
  return 0;
}
