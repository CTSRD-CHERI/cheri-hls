#include <stdint.h>
typedef uint32_t u32;
typedef uint32_t u64;
#define TYPE int

#define SIZE 2048
#define NUMOFBLOCKS 512

#define ELEMENTSPERBLOCK 4
#define RADIXSIZE 4
#define BUCKETSIZE NUMOFBLOCKS *RADIXSIZE
#define MASK 0x3

#define SCAN_BLOCK 16
#define SCAN_RADIX BUCKETSIZE / SCAN_BLOCK

void local_scan(int bucket[BUCKETSIZE]) {
  int radixID, i, bucket_indx;
local_1:
  for (radixID = 0; radixID < SCAN_RADIX; radixID++) {
  local_2:
    for (i = 1; i < SCAN_BLOCK; i++) {
      bucket_indx = radixID * SCAN_BLOCK + i;
      bucket[bucket_indx] += bucket[bucket_indx - 1];
    }
  }
}

void sum_scan(int sum[SCAN_RADIX], int bucket[BUCKETSIZE]) {
  int radixID, bucket_indx;
  sum[0] = 0;
sum_1:
  for (radixID = 1; radixID < SCAN_RADIX; radixID++) {
    bucket_indx = radixID * SCAN_BLOCK - 1;
    sum[radixID] = sum[radixID - 1] + bucket[bucket_indx];
  }
}

void last_step_scan(int bucket[BUCKETSIZE], int sum[SCAN_RADIX]) {
  int radixID, i, bucket_indx;
last_1:
  for (radixID = 0; radixID < SCAN_RADIX; radixID++) {
  last_2:
    for (i = 0; i < SCAN_BLOCK; i++) {
      bucket_indx = radixID * SCAN_BLOCK + i;
      bucket[bucket_indx] = bucket[bucket_indx] + sum[radixID];
    }
  }
}

void init(int bucket[BUCKETSIZE]) {
  int i;
init_1:
  for (i = 0; i < BUCKETSIZE; i++) {
    bucket[i] = 0;
  }
}

void hist(int bucket[BUCKETSIZE], int a[SIZE], int exp) {
  int blockID, i, bucket_indx, a_indx;
  blockID = 0;
hist_1:
  for (blockID = 0; blockID < NUMOFBLOCKS; blockID++) {
  hist_2:
    for (i = 0; i < 4; i++) {
      a_indx = blockID * ELEMENTSPERBLOCK + i;
      bucket_indx = ((a[a_indx] >> exp) & 0x3) * NUMOFBLOCKS + blockID + 1;
      bucket[bucket_indx]++;
    }
  }
}

void update(int b[SIZE], int bucket[BUCKETSIZE], int a[SIZE], int exp) {
  int i, blockID, bucket_indx, a_indx;
  blockID = 0;

update_1:
  for (blockID = 0; blockID < NUMOFBLOCKS; blockID++) {
  update_2:
    for (i = 0; i < 4; i++) {
      bucket_indx =
          ((a[blockID * ELEMENTSPERBLOCK + i] >> exp) & 0x3) * NUMOFBLOCKS +
          blockID;
      a_indx = blockID * ELEMENTSPERBLOCK + i;
      b[bucket[bucket_indx]] = a[a_indx];
      bucket[bucket_indx]++;
    }
  }
}

void hls_top(int a[SIZE], int b[SIZE], int bucket[BUCKETSIZE],
             int sum[SCAN_RADIX]) {

  int exp = 0;
  int valid_buffer = 0;
#define BUFFER_A 0
#define BUFFER_B 1

sort_1:
  for (exp = 0; exp < 32; exp += 2) {
    init(bucket);
    if (valid_buffer == BUFFER_A) {
      hist(bucket, a, exp);
    } else {
      hist(bucket, b, exp);
    }

    local_scan(bucket);
    sum_scan(sum, bucket);
    last_step_scan(bucket, sum);

    if (valid_buffer == BUFFER_A) {
      update(b, bucket, a, exp);
      valid_buffer = BUFFER_B;
    } else {
      update(a, bucket, b, exp);
      valid_buffer = BUFFER_A;
    }
  }
  // If trip count is even, buffer A will be valid at the end.
}

#ifndef DEBUG
extern volatile u32 tohost;
#define TERM (&tohost)
#endif

#ifdef CAPCHECKER
#define CAP
#endif

#ifdef CAP
#include <cheri_init_globals.h>
#include <cheriintrin.h>
#endif

// HLS IP instance
#define NUM 8
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
u32 a[NUM][SIZE];
u32 b[NUM][SIZE];
u32 bucket[NUM][BUCKETSIZE];
u32 sum[NUM][SCAN_RADIX];

#ifdef CAPCHECKER
u64 capchecker_base_phy_addr = 0xc0100000;
u64 capchecker_size = 0x00002000;
#define capchecker_nbentries (capchecker_size / sizeof(void *))

void capchecker_install_cap(int cap_idx, void *cap) {
  void *almighty = cheri_ddc_get();
  volatile void **capchecker_ptr =
      __builtin_cheri_address_set(almighty, capchecker_base_phy_addr);
  capchecker_ptr = __builtin_cheri_bounds_set(capchecker_ptr, capchecker_size);
  capchecker_ptr[cap_idx] = cap;
}
#endif

#ifndef DEBUG
volatile void __attribute__((noinline)) success() {
#ifdef CAP
  void *almighty = cheri_ddc_get();
  volatile u32 *physical_addr =
      __builtin_cheri_address_set(almighty, (volatile u32 *)&tohost);
  physical_addr = __builtin_cheri_bounds_set(physical_addr, 0x4);
  *physical_addr = 1;
#else
  *((volatile u32 *)&tohost) = 1;
#endif
}

volatile void fail() {
#ifdef CAP
  void *almighty = cheri_ddc_get();
  volatile u32 *physical_addr =
      __builtin_cheri_address_set(almighty, (volatile u32 *)&tohost);
  physical_addr = __builtin_cheri_bounds_set(physical_addr, 0x4);
  *physical_addr = 1;
#else
  *((volatile u32 *)&tohost) = 1;
#endif
}
#else
volatile void success() {}
#endif

volatile void reg_error() {
  while (1)
    ;
}

u32 hls_top_init(int test_case) {

  for (int i = 0; i < SIZE; i++) {
    a[test_case][i] = i;
    b[test_case][i] = i;
  }
  for (int i = 0; i < BUCKETSIZE; i++) {
    bucket[test_case][i] = 1;
  }
  for (int i = 0; i < SCAN_RADIX; i++) {
    sum[test_case][i] = 1;
  }

  return 0;
}

int main() {

  // Initialise .captable
#ifdef CAP
  void *almighty = cheri_ddc_get();
  cheri_init_globals_3(almighty, almighty, almighty);
#endif

  // Initialize
  for (int i = 0; i < NUM; i++) {
    if (hls_top_init(i))
      return 4;
  }

  // Compute
#ifndef DEBUG
  asm("fence");
#endif
  for (int i = 0; i < NUM; i++)
    hls_top(a[i], b[i], bucket[i], sum[i]);
#ifndef DEBUG
  asm("fence");
  success();
#endif
  return 0;
}
