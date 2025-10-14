#define N 1000
#include "../../chls-fullcap.h"

void hls_top(int size, int a[N], int b[N], int c[N], u32 *flag, u32 cap[12]) {
#pragma HLS INTERFACE m_axi port = a
#pragma HLS INTERFACE m_axi port = b
#pragma HLS INTERFACE m_axi port = c
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  u32 flag_buf = 0;
  // 3 and 12 comes from program analysis
  Cap caps[3];
  u32 buffer[12];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(3, buffer, cap, caps);

  for (int i = 0; i < size; i++) {
#pragma HLS PIPELINE

    int a_elem = cheri_load(a, i, &flag_buf, caps[0]);
    int b_elem = cheri_load(b, i, &flag_buf, caps[1]);

    int c_elem = a_elem * b_elem;

    cheri_store(c, i, c_elem, &flag_buf, caps[2]);
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
