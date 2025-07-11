/*
Implementation based on algorithm described in:
A. Danalis, G. Marin, C. McCurdy, J. S. Meredith, P. C. Roth, K. Spafford, V.
Tipparaju, and J. S. Vetter. The scalable heterogeneous computing (shoc)
benchmark suite. In Proceedings of the 3rd Workshop on General-Purpose
Computation on Graphics Processing Units, 2010
*/

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
  int temp = 0;

sum_1:
  for (radixID = 1; radixID < SCAN_RADIX; radixID++) {
    bucket_indx = radixID << 4 - 1;
    temp += bucket[bucket_indx];
    sum[radixID] = temp;
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
      if (bucket_indx >= BUCKETSIZE)
        bucket_indx = BUCKETSIZE - 1;
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
      if (bucket_indx >= BUCKETSIZE)
        bucket_indx = BUCKETSIZE - 1;
      bucket[bucket_indx]++;
    }
  }
}

void hls_top(int xa[SIZE], int xb[SIZE], int xbucket[BUCKETSIZE],
             int xsum[SCAN_RADIX]) {
#pragma HLS INTERFACE m_axi port = xa
#pragma HLS INTERFACE m_axi port = xb
#pragma HLS INTERFACE m_axi port = xbucket
#pragma HLS INTERFACE m_axi port = xsum
#pragma HLS INTERFACE s_axilite port = return

  int exp = 0;
  int valid_buffer = 0;
#define BUFFER_A 0
#define BUFFER_B 1

  int a[SIZE];
  int b[SIZE];
  int bucket[BUCKETSIZE];
  int sum[SCAN_RADIX];

  for (int i = 0; i < SIZE; i++)
    a[i] = xa[i];

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

  for (int i = 0; i < SIZE; i++)
    xb[i] = b[i];
}

int main() {
  int a[SIZE] = {1};
  int b[SIZE] = {1};
  int bucket[BUCKETSIZE] = {1};
  int sum[SCAN_RADIX] = {1};
  hls_top(a, b, bucket, sum);

  return 0;
}
