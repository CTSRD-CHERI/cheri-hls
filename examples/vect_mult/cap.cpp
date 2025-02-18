#include "cap.h"
#include <stdint.h>
#include <stdio.h>

// cap encode(int base, int offset, int address, int perms) {
//   // stuff
//   return cap
// }

static inline uint64_t getField(u64 val, unsigned startBit, unsigned length) {
  u64 shifted = val >> startBit;
  u64 mask = (1ULL << length) - 1ULL;
  return static_cast<u64>(shifted & mask);
}

bool checkAccess(Cap cap, u64 nBytes, bool isRead, bool isWrite) {
  return cap.base <= cap.addr && ((cap.addr + nBytes) <= cap.top) &&
         (!isWrite || ((cap.perms >> 8) & 0x1)) &&
         (!isRead || ((cap.perms >> 9 & 0x1)));
}

Cap decode(u64 cap, u64 addr) {
  cap ^= 0x00001ffffc018004;              // nullptr [127:64]
  uint16_t perms = getField(cap, 52, 12); // bits [127:112]
  uint16_t uperms = getField(cap, 48, 4); // bits [115:112]
  bool f = (getField(cap, 47, 1) != 0);   // bit 111
  uint32_t otype = getField(cap, 27, 18); // bits [109:91]
  bool I_E = (getField(cap, 26, 1) != 0); // bit 90
  uint16_t T_11_3 = getField(cap, 17, 9); // bits [89:81]
  uint8_t T_E = getField(cap, 14, 3);     // bits [80:78]
  uint16_t B_13_3 = getField(cap, 3, 11); // bits [77:67]
  uint8_t B_E = getField(cap, 0, 3);      // bits [66:64]
  uint8_t E = 0;
  uint16_t T_13_0 = 0;
  uint16_t B_13_0 = 0;
  bool L_msb = false;
  bool L_carry_out = false;

  if (!I_E) {
    E = 0;
    T_13_0 = (static_cast<uint16_t>(T_11_3) << 3) | T_E;
    B_13_0 = (static_cast<uint16_t>(B_13_3) << 3) | B_E;
    uint16_t T_11_0 = T_13_0 & 0x0fff;
    uint16_t B_11_0 = B_13_0 & 0x0fff;
    L_carry_out = (T_11_0 < B_11_0);
    L_msb = false;
  } else {
    E = (static_cast<uint8_t>(T_E) << 3) | B_E;
    T_13_0 = (static_cast<uint16_t>(T_11_3) << 3);
    B_13_0 = (static_cast<uint16_t>(B_13_3) << 3);
    uint16_t T_11_3_only = (T_13_0 >> 3) & 0x01ff;
    uint16_t B_11_3_only = (B_13_0 >> 3) & 0x01ff;
    L_carry_out = (T_11_3_only < B_11_3_only);
    L_msb = true;
  }
  uint16_t B_13_12 = (B_13_0 >> 12) & 0x3;
  uint16_t T_13_12 = B_13_12 + (L_carry_out ? 1 : 0) + (L_msb ? 1 : 0);
  T_13_12 &= 0x3;

  T_13_0 &= 0x0fff;
  T_13_0 |= (T_13_12 << 12);

  uint8_t A3 = static_cast<uint8_t>((addr >> (E + 11)) & 0x7);
  uint8_t T3 = static_cast<uint8_t>((T_13_0 >> 11) & 0x7);
  uint8_t B3 = static_cast<uint8_t>((B_13_0 >> 11) & 0x7);
  uint8_t R = B3 - 1;

  int c_t = 0;
  int c_b = 0;

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

// hw testbench - see things in bits
int main() {
  u32 ret[4] = {0x800010c0LL, 0x00000000LL, 0x048190c4LL, 0xff7d0000};
  // u64 cap = 0xff7d0000048190c4ULL;
  // u64 addr = 0x00000000800010c0ULL;
  u64 cap = (static_cast<u64>(ret[3]) << 32) | (static_cast<u64>(ret[2]));
  u64 addr = (static_cast<u64>(ret[1]) << 32) | (static_cast<u64>(ret[0]));
  Cap c = decode(cap, addr);
  printf("addr: %lx\n", c.addr);
  printf("base: %lx\n", c.base);
  printf("top:  %lx\n", c.top);
  printf("otype:%x\n", c.otype);
  printf("perms:%x\n", c.perms);
  printf("uperm:%x\n", c.uperms);
  bool x = checkAccess(c, 10, false, false);
  printf("%d\n", x);

  // encoder to create capabilities?
  // create a 128-bit value that matches cheri specification
  // see if it's decoded correctly
  // xilinx ap_int<128> but for now int x[4]

  // can check return values, see if it returns exception, no exception, etc.
  // non-standard in C but might need additional hls library
  // pc, gcc; hls

  return 0;
}
