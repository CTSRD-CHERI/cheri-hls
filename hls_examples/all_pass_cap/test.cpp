#define N 1000
#include "../chls.h"
#include <iostream>

Cap hls_top(u32 cap[4]) {
  u32 buffer[4];
  Cap caps[1];
  load_cap(1, buffer, cap, caps);

  return caps[0];
}

void encode(Cap c, ap_uint<64> addr, ap_uint<32> *buffer_0,
            ap_uint<32> *buffer_1, ap_uint<32> *buffer_2,
            ap_uint<32> *buffer_3) {
  // Reconstruct base and top from relative values
  u32 base = addr + c.base;
  u32 top = addr + c.top;

  // Calculate E (exponent) by finding the minimum E that can represent the
  // range
  ap_uint<6> E = 0;
  ap_uint<14> T_13_0 = 0;
  ap_uint<14> B_13_0 = 0;
  bool I_E = false;

  // Try to find suitable E value
  for (E = 0; E <= 45; E++) {
    if (E == 0) {
      // Internal exponent mode (I_E = 0)
      if ((base & ((1 << 14) - 1)) == (base & ((1 << E) - 1)) &&
          (top & ((1 << 14) - 1)) == (top & ((1 << E) - 1))) {
        T_13_0 = (top >> E) & 0x3FFF;
        B_13_0 = (base >> E) & 0x3FFF;
        I_E = false;
        break;
      }
    } else if (E >= 3) {
      // External exponent mode (I_E = 1)
      if ((base & ((1 << E) - 1)) == 0 && (top & ((1 << E) - 1)) == 0) {
        T_13_0 = (top >> E) & 0x3FFF;
        B_13_0 = (base >> E) & 0x3FFF;
        I_E = true;
        break;
      }
    }
  }

  // Extract T and B components based on I_E
  ap_uint<9> T_11_3;
  ap_uint<3> T_E;
  ap_uint<11> B_13_3;
  ap_uint<3> B_E;

  if (!I_E) {
    // Internal exponent mode
    T_11_3 = T_13_0.range(13, 5); // Upper 9 bits
    T_E = T_13_0.range(2, 0);     // Lower 3 bits for internal
    B_13_3 = B_13_0.range(13, 3); // Upper 11 bits
    B_E = B_13_0.range(2, 0);     // Lower 3 bits
  } else {
    // External exponent mode
    T_11_3 = T_13_0.range(13, 5); // Upper 9 bits (shifted)
    T_E = E.range(5, 3);          // Upper 3 bits of E
    B_13_3 = B_13_0.range(13, 3); // Upper 11 bits (shifted)
    B_E = E.range(2, 0);          // Lower 3 bits of E
  }

  // Calculate correction bits for carry
  ap_uint<3> A3 = ((addr >> (E + 11)) & 0x7);
  ap_uint<3> T3 = T_13_0.range(13, 11);
  ap_uint<3> B3 = B_13_0.range(13, 11);
  ap_uint<3> R = B3 - 1;

  // Adjust T_13_12 if needed (reverse of decode logic)
  bool L_carry_out = false;
  if (!I_E) {
    ap_uint<12> T_11_0 = T_13_0.range(11, 0);
    ap_uint<12> B_11_0 = B_13_0.range(11, 0);
    L_carry_out = (T_11_0 < B_11_0);
  } else {
    ap_uint<12> T_11_3_only = (T_13_0 >> 3) & 0x01ff;
    ap_uint<12> B_11_3_only = (B_13_0 >> 3) & 0x01ff;
    L_carry_out = (T_11_3_only < B_11_3_only);
  }

  // Construct the capability bits
  ap_uint<64> cap = 0;

  // Set permission bits
  cap.range(61, 61) = c.read ? 1 : 0;  // read permission
  cap.range(60, 60) = c.write ? 1 : 0; // write permission

  // Set f bit (bit 47) - assuming 0 for now
  cap.range(47, 47) = 0;

  // Set I_E bit (bit 26)
  cap.range(26, 26) = I_E ? 1 : 0;

  // Set T components (bits [25:17] and [16:14])
  cap.range(25, 17) = T_11_3;
  cap.range(16, 14) = T_E;

  // Set B components (bits [13:3] and [2:0])
  cap.range(13, 3) = B_13_3;
  cap.range(2, 0) = B_E;

  // Apply XOR mask (reverse of decode)
  cap ^= 0x00001ffffc018004;

  // Split into output buffers
  *buffer_0 = addr.range(31, 0);
  *buffer_1 = addr.range(63, 32);
  *buffer_2 = cap.range(31, 0);
  *buffer_3 = cap.range(63, 32);
}

// hw testbench - see things in bits
int main() {

  Cap c;

  c.base = 16;
  c.top = 165536;
  c.read = 1;
  c.write = 1;

  ap_uint<32> b[4] = {0, 0, 0, 0};
  encode(c, 0, &b[0], &b[1], &b[2], &b[3]);

  u32 ret[4];

  encode(c, 0, &b[0], &b[1], &b[2], &b[3]);

  std::cout << "b[0] = " << std::hex << b[0] << std::endl;
  std::cout << "b[1] = " << std::hex << b[1] << std::endl;
  std::cout << "b[2] = " << std::hex << b[2] << std::endl;
  std::cout << "b[3] = " << std::hex << b[3] << std::endl;

  ret[0] = b[0];
  ret[1] = b[1];
  ret[2] = b[2];
  ret[3] = b[3];

  Cap x = hls_top(ret);

  std::cout << "base = " << x.base << std::endl;
  std::cout << "top = " << x.top << std::endl;
  std::cout << "read = " << x.read << std::endl;
  std::cout << "write = " << x.write << std::endl;
  std::cout << "size = " << x.top - x.base << std::endl;

  // for (int i = 0; i < 4; i++)
  //   assert(ret[i] == b[i]);

  return 0;
}
