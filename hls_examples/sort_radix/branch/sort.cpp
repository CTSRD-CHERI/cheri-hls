/*
Implementation based on algorithm described in:
A. Danalis, G. Marin, C. McCurdy, J. S. Meredith, P. C. Roth, K. Spafford, V.
Tipparaju, and J. S. Vetter. The scalable heterogeneous computing (shoc)
benchmark suite. In Proceedings of the 3rd Workshop on General-Purpose
Computation on Graphics Processing Units, 2010
*/

#include "../../chls-fullcap.h"

#define TYPE int

#define SIZE 2048
#define NUMOFBLOCKS 512

#define ELEMENTSPERBLOCK 4
#define RADIXSIZE 4
#define BUCKETSIZE NUMOFBLOCKS *RADIXSIZE
#define MASK 0x3

#define SCAN_BLOCK 16
#define SCAN_RADIX BUCKETSIZE / SCAN_BLOCK

void local_scan(int bucket[BUCKETSIZE], u32 *flag_buf, Cap cap_bucket) {
  int radixID, i, bucket_indx;
local_1:
  for (radixID = 0; radixID < SCAN_RADIX; radixID++) {
  local_2:
    for (i = 1; i < SCAN_BLOCK; i++) {
      bucket_indx = radixID * SCAN_BLOCK + i;
      int val1 = cheri_load(bucket, bucket_indx, flag_buf, cap_bucket);
      if (*flag_buf) {
        return;
      }
      int val2 = cheri_load(bucket, bucket_indx - 1, flag_buf, cap_bucket);
      if (*flag_buf) {
        return;
      }
      cheri_store(bucket, bucket_indx, val1 + val2, flag_buf, cap_bucket);
      if (*flag_buf) {
        return;
      }
    }
  }
}

void sum_scan(int sum[SCAN_RADIX], int bucket[BUCKETSIZE], u32 *flag_buf,
              Cap cap_sum, Cap cap_bucket) {
  int radixID, bucket_indx;
  cheri_store(sum, 0, 0, flag_buf, cap_sum);
  if (*flag_buf) {
    return;
  }
  int temp = 0;

sum_1:
  for (radixID = 1; radixID < SCAN_RADIX; radixID++) {
    bucket_indx = radixID << 4 - 1;
    int bucket_val = cheri_load(bucket, bucket_indx, flag_buf, cap_bucket);
    if (*flag_buf) {
      return;
    }
    temp += bucket_val;
    cheri_store(sum, radixID, temp, flag_buf, cap_sum);
    if (*flag_buf) {
      return;
    }
  }
}

void last_step_scan(int bucket[BUCKETSIZE], int sum[SCAN_RADIX], u32 *flag_buf,
                    Cap cap_bucket, Cap cap_sum) {
  int radixID, i, bucket_indx;
last_1:
  for (radixID = 0; radixID < SCAN_RADIX; radixID++) {
  last_2:
    for (i = 0; i < SCAN_BLOCK; i++) {
      bucket_indx = radixID * SCAN_BLOCK + i;
      int bucket_val = cheri_load(bucket, bucket_indx, flag_buf, cap_bucket);
      if (*flag_buf) {
        return;
      }
      int sum_val = cheri_load(sum, radixID, flag_buf, cap_sum);
      if (*flag_buf) {
        return;
      }
      cheri_store(bucket, bucket_indx, bucket_val + sum_val, flag_buf,
                  cap_bucket);
      if (*flag_buf) {
        return;
      }
    }
  }
}

void init(int bucket[BUCKETSIZE], u32 *flag_buf, Cap cap_bucket) {
  int i;
init_1:
  for (i = 0; i < BUCKETSIZE; i++) {
    cheri_store(bucket, i, 0, flag_buf, cap_bucket);
    if (*flag_buf) {
      return;
    }
  }
}

void hist(int bucket[BUCKETSIZE], int a[SIZE], int exp, u32 *flag_buf,
          Cap cap_bucket, Cap cap_a) {
  int blockID, i, bucket_indx, a_indx;
  blockID = 0;
hist_1:
  for (blockID = 0; blockID < NUMOFBLOCKS; blockID++) {
  hist_2:
    for (i = 0; i < 4; i++) {
      a_indx = blockID * ELEMENTSPERBLOCK + i;
      int a_val = cheri_load(a, a_indx, flag_buf, cap_a);
      if (*flag_buf) {
        return;
      }
      bucket_indx = ((a_val >> exp) & 0x3) * NUMOFBLOCKS + blockID + 1;
      if (bucket_indx >= BUCKETSIZE)
        bucket_indx = BUCKETSIZE - 1;
      int bucket_val = cheri_load(bucket, bucket_indx, flag_buf, cap_bucket);
      if (*flag_buf) {
        return;
      }
      cheri_store(bucket, bucket_indx, bucket_val + 1, flag_buf, cap_bucket);
      if (*flag_buf) {
        return;
      }
    }
  }
}

void update(int b[SIZE], int bucket[BUCKETSIZE], int a[SIZE], int exp,
            u32 *flag_buf, Cap cap_b, Cap cap_bucket, Cap cap_a) {
  int i, blockID, bucket_indx, a_indx;
  blockID = 0;

update_1:
  for (blockID = 0; blockID < NUMOFBLOCKS; blockID++) {
  update_2:
    for (i = 0; i < 4; i++) {
      int a_val =
          cheri_load(a, blockID * ELEMENTSPERBLOCK + i, flag_buf, cap_a);
      if (*flag_buf) {
        return;
      }
      bucket_indx = ((a_val >> exp) & 0x3) * NUMOFBLOCKS + blockID;
      a_indx = blockID * ELEMENTSPERBLOCK + i;
      int bucket_val = cheri_load(bucket, bucket_indx, flag_buf, cap_bucket);
      if (*flag_buf) {
        return;
      }
      int a_indx_val = cheri_load(a, a_indx, flag_buf, cap_a);
      if (*flag_buf) {
        return;
      }
      // cheri_store(b, bucket_val, a_indx_val, flag_buf, cap_b);
      b[bucket_val] = a_indx_val;
      if (bucket_indx >= BUCKETSIZE)
        bucket_indx = BUCKETSIZE - 1;
      int new_bucket_val =
          cheri_load(bucket, bucket_indx, flag_buf, cap_bucket);
      if (*flag_buf) {
        return;
      }
      cheri_store(bucket, bucket_indx, new_bucket_val + 1, flag_buf,
                  cap_bucket);
      if (*flag_buf) {
        return;
      }
    }
  }
}

void hls_top(int xa[SIZE], int xb[SIZE], int xbucket[BUCKETSIZE],
             int xsum[SCAN_RADIX], u32 *flag, u32 cap[16]) {
#pragma HLS INTERFACE m_axi port = xa
#pragma HLS INTERFACE m_axi port = xb
#pragma HLS INTERFACE m_axi port = xbucket
#pragma HLS INTERFACE m_axi port = xsum
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  int exp = 0;
  int valid_buffer = 0;
#define BUFFER_A 0
#define BUFFER_B 1

  u32 flag_buf = 0;
  // 8 caps: 4 for input arrays + 4 for local arrays
  Cap caps[8];
  u32 buffer[16];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(4, buffer, cap, caps);

  int a[SIZE];
  int b[SIZE];
  int bucket[BUCKETSIZE];
  int sum[SCAN_RADIX];

  create_cap(SIZE, caps, 4);       // a
  create_cap(SIZE, caps, 5);       // b
  create_cap(BUCKETSIZE, caps, 6); // bucket
  create_cap(SCAN_RADIX, caps, 7); // sum

  for (int i = 0; i < SIZE; i++) {
    int temp = cheri_load(xa, i, &flag_buf, caps[0]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
    cheri_store(a, i, temp, &flag_buf, caps[4]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
  }

sort_1:
  for (exp = 0; exp < 32; exp += 2) {
    init(bucket, &flag_buf, caps[6]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
    if (valid_buffer == BUFFER_A) {
      hist(bucket, a, exp, &flag_buf, caps[6], caps[4]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
    } else {
      hist(bucket, b, exp, &flag_buf, caps[6], caps[5]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
    }

    local_scan(bucket, &flag_buf, caps[6]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
    sum_scan(sum, bucket, &flag_buf, caps[7], caps[6]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
    last_step_scan(bucket, sum, &flag_buf, caps[6], caps[7]);
    if (flag_buf) {
      *flag = 1;
      return;
    }

    if (valid_buffer == BUFFER_A) {
      update(b, bucket, a, exp, &flag_buf, caps[5], caps[6], caps[4]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
      valid_buffer = BUFFER_B;
    } else {
      update(a, bucket, b, exp, &flag_buf, caps[4], caps[6], caps[5]);
      if (flag_buf) {
        *flag = 1;
        return;
      }
      valid_buffer = BUFFER_A;
    }
  }

  for (int i = 0; i < SIZE; i++) {
    int temp = cheri_load(b, i, &flag_buf, caps[5]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
    cheri_store(xb, i, temp, &flag_buf, caps[1]);
    if (flag_buf) {
      *flag = 1;
      return;
    }
  }

  *flag = flag_buf;
}

int main() {
  int a[SIZE] = {1};
  int b[SIZE] = {1};
  int bucket[BUCKETSIZE] = {1};
  int sum[SCAN_RADIX] = {1};

  u32 cap[16] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(a, b, bucket, sum, &flag, cap);

  return 0;
}
