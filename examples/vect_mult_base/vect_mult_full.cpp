#define N 10
#include "ap_int.h"
#include <stdint.h>
#include <stdio.h>

typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef struct {
  u64 addr;          // remove
  u64 base;          // remove - talk to Theo if he can come up with attack to
                     // necessitate having the lower bound
  u64 top;           // remove
                     // u64 array_size;
  ap_uint<18> otype; // remove
  ap_uint<12> perms; // simplify to read and write
  ap_uint<4> uperms; // remove?
} Cap;

static inline uint64_t getField(u64 val, unsigned startBit, unsigned length) {
  u64 shifted = val >> startBit;
  u64 mask = (1ULL << length) - 1ULL;
  return shifted & mask;
}

bool checkAccess(Cap cap, u64 offset, u64 nBytes, bool isRead, bool isWrite) {
  return cap.base <= (cap.addr + offset) &&
         ((cap.addr + offset + nBytes) <= cap.top) &&
         (!isWrite || ((cap.perms >> 8) & 0x1)) &&
         (!isRead || ((cap.perms >> 9 & 0x1)));
}

Cap decode(ap_uint<32> buffer_0, ap_uint<32> buffer_1, ap_uint<32> buffer_2,
           ap_uint<32> buffer_3) {

  ap_uint<64> cap = (buffer_3, buffer_2);
  ap_uint<64> addr = (buffer_1, buffer_0);

  cap ^= 0x00001ffffc018004;                 // nullptr [127:64]
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
  bool L_msb = false;
  bool L_carry_out = false;

  if (!I_E) {
    E = 0;
    T_13_0 = (T_11_3, T_E);
    B_13_0 = (B_13_3, B_E);
    ap_uint<12> T_11_0 = T_13_0 & 0x0fff;
    ap_uint<12> B_11_0 = B_13_0 & 0x0fff;
    L_carry_out = (T_11_0 < B_11_0);
    L_msb = false;
  } else {
    E = (T_E, B_E);
    T_13_0 = (T_11_3 << 3);
    B_13_0 = (B_13_3 << 3);
    ap_uint<12> T_11_3_only = (T_13_0 >> 3) & 0x01ff;
    ap_uint<12> B_11_3_only = (B_13_0 >> 3) & 0x01ff;
    L_carry_out = (T_11_3_only < B_11_3_only);
    L_msb = true;
  }
  ap_uint<2> B_13_12 = (B_13_0 >> 12) & 0x3;
  ap_uint<2> T_13_12 = B_13_12 + (L_carry_out ? 1 : 0) + (L_msb ? 1 : 0);
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
void load_capability(int n_bytes, u32 *cap, u32 *buffer) {
  for (auto i = 0; i < n_bytes; i++)
    buffer[i] = cap[i];
}

void hls_top(int size, int a[N], int b[N], int c[N], u32 *flag, u32 cap[12]) {
#pragma HLS INTERFACE m_axi port = a
#pragma HLS INTERFACE m_axi port = b
#pragma HLS INTERFACE m_axi port = c
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  u32 flag_buf = 0;
  u32 buffer[12];
#pragma HLS array_partition variable = buffer type = complete

  // load cap to buffer
  load_capability(12, cap, buffer);
  // distribute buffer to multiple decode function

  Cap cap_c = decode(buffer[0], buffer[1], buffer[2], buffer[3]);
  Cap cap_b = decode(buffer[4], buffer[5], buffer[6], buffer[7]);
  Cap cap_a = decode(buffer[8], buffer[9], buffer[10], buffer[11]);

  // check capabilities for a b and c
  for (int i = 0; i < size; i++) {
    //  //  //#pragma HLS PIPELINE
    // a[i] = b[i];
    // c[i] = i;

    flag_buf |=
        !(checkAccess(cap_a, 4 * i, 4, true,
                      false)); // cap struct,offset, nBytes, isRead, isWrite
    flag_buf |=
        !(checkAccess(cap_b, 4 * i, 4, true,
                      false)); // cap struct,offset, nBytes, isRead, isWrite
    flag_buf |=
        !(checkAccess(cap_c, 4 * i, 4, false,
                      true)); // cap struct,offset, nBytes, isRead, isWrite
    c[i] = a[i] * b[i];
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

  // encoder to create capabilities?
  // create a 128-bit value that matches cheri specification
  // see if it's decoded correctly
  // xilinx ap_int<128> but for now int x[4]

  u32 flag[1] = {0};

  // assert(i=>0 && i <n);

  hls_top(N, a, b, c, flag, ret);

  // can check return values, see if it returns exception, no exception,
  // etc. non-standard in C but might need additional hls library pc, gcc;
  // hls

  int res = 0;
  for (int i = 0; i < N; i++) {
    res += (c_gold[i] == c[i]);
  }

  // u64 cap = 0xff7d0000048190c4ULL;
  // u64 addr = 0x00000000800010c0ULL;

  // u64 cap = 0xff7d000007938e24ULL;
  // u64 addr = 0x0000000080000e20ULL;

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

  // __builtin_cheri_perms_and(c,0x6ffff); cannot read
  // u64 cap = 0xdf7d000007ab8e84ULL;
  // u64 addr = 0x0000000080000e80ULL;

  // Cap x = decode(cap, addr);
  // printf("addr: %lx\n", x.addr);
  // printf("base: %lx\n", x.base);
  // printf("top:  %lx\n", x.top);
  // printf("otype:%x\n", x.otype);
  // printf("perms:%x\n", x.perms);
  // printf("uperm:%x\n", x.uperms);
  // bool y = checkAccess(x, 20, true, true); // cap, nBytes, isRead, isWrite

  // return (ret[5] != 0xabcd);
  return 0;
}
