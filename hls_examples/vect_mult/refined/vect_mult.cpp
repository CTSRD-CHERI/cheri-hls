#define N 1000
#include "../../chls.h"

void hls_top(int size, int a[N], int c[N], u32 *flag, u32 cap[8]) {
#pragma HLS INTERFACE m_axi port = a
#pragma HLS INTERFACE m_axi port = c
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return
  int b[N] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};

  u32 flag_buf = 1;
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
  cheri_stream_write_nl(size, a, b, &flag_buf, caps[0]);

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
  u32 ret[12] = {
      0,          0,          0xf90d8007, 0x30001fff, 0,          0,
      0xf90d8007, 0x30001fff, 0,          0,          0xf90d8007, 0x30001fff,
  };

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
  u32 cap[4] = {0x80000e80, 0x00000000, 0x07ab8e84, 0xff7d0000};

  // __builtin_cheri_perms_and(c,0x6ffff); cannot read
  // u64 cap = 0xdf7d000007ab8e84ULL;
  // u64 addr = 0x0000000080000e80ULL;

  u32 flag_buf = 0;
  Cap caps[1];
  u32 buffer[4];

  load_cap(1, buffer, cap, caps);
  int y = cheri_load(a, 3, &flag_buf, caps[0]);
  printf("Value read: %d\n", y);
  printf("Flag buf: %d\n", flag_buf);

  flag_buf = 0;
  cheri_store(a, 0, 3, &flag_buf, caps[0]);
  printf("Value stored: %d\n", a[0]);
  printf("Flag buf: %d\n", flag_buf);

  // flag_buf = 0;
  // Cap b_cap = create_cap(3);
  // int z = cheri_load(b, 2, &flag_buf, b_cap);
  // printf("Value read: %d\n", z);
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
