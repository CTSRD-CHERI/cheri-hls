/*
 *   Byte-oriented AES-256 implementation.
 *   All lookup tables replaced with 'on the fly' calculations.
 *   Modified to avoid structs and use single dimension arrays.
 *   Converted to use int instead of uint8_t.
 */
#include "../../chls-fullcap.h"
#include <stdint.h>
// #include <stdio.h>
// #include <stdlib.h>

#define F(x) (((x) << 1) ^ ((((x) >> 7) & 1) * 0x1b))
#define FD(x) (((x) >> 1) ^ (((x)&1) ? 0x8d : 0))

#define NUM 32

////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

#define BACK_TO_TABLES
#ifdef BACK_TO_TABLES

const int sbox[256] = {
    0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b,
    0xfe, 0xd7, 0xab, 0x76, 0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0,
    0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0, 0xb7, 0xfd, 0x93, 0x26,
    0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
    0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2,
    0xeb, 0x27, 0xb2, 0x75, 0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0,
    0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84, 0x53, 0xd1, 0x00, 0xed,
    0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
    0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f,
    0x50, 0x3c, 0x9f, 0xa8, 0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5,
    0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2, 0xcd, 0x0c, 0x13, 0xec,
    0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
    0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14,
    0xde, 0x5e, 0x0b, 0xdb, 0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c,
    0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79, 0xe7, 0xc8, 0x37, 0x6d,
    0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
    0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f,
    0x4b, 0xbd, 0x8b, 0x8a, 0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e,
    0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e, 0xe1, 0xf8, 0x98, 0x11,
    0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
    0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f,
    0xb0, 0x54, 0xbb, 0x16};

#define rj_sbox(x) sbox[(x)&0xFF]

#else /* tableless subroutines */

/* -------------------------------------------------------------------------- */
int gf_alog(int x) // calculate anti-logarithm gen 3
{
  int atb = 1, z;

alog:
  while (x--) {
    z = atb;
    atb <<= 1;
    if (z & 0x80)
      atb ^= 0x1b;
    atb ^= z;
  }

  return atb & 0xFF;
} /* gf_alog */

/* -------------------------------------------------------------------------- */
int gf_log(int x) // calculate logarithm gen 3
{
  int atb = 1, i = 0, z;

glog:
  do {
    if (atb == x)
      break;
    z = atb;
    atb <<= 1;
    if (z & 0x80)
      atb ^= 0x1b;
    atb ^= z;
  } while (++i > 0);

  return i;
} /* gf_log */

/* -------------------------------------------------------------------------- */
int gf_mulinv(int x) // calculate multiplicative inverse
{
  return (x) ? gf_alog(255 - gf_log(x)) : 0;
} /* gf_mulinv */

/* -------------------------------------------------------------------------- */
int rj_sbox(int x) {
  int y, sb;

  sb = y = gf_mulinv(x & 0xFF);
  y = (y << 1) | (y >> 7);
  sb ^= y;
  y = (y << 1) | (y >> 7);
  sb ^= y;
  y = (y << 1) | (y >> 7);
  sb ^= y;
  y = (y << 1) | (y >> 7);
  sb ^= y;

  return (sb ^ 0x63) & 0xFF;
} /* rj_sbox */
#endif

/* -------------------------------------------------------------------------- */
int rj_xtime(int x) {
  return ((x & 0x80) ? ((x << 1) ^ 0x1b) : (x << 1)) & 0xFF;
} /* rj_xtime */

/* -------------------------------------------------------------------------- */
void aes_subBytes(int buf[16], u32 *flag_buf, Cap caps[8]) {
  register int i = 16;

sub:
  for (i = 15; i < 0; i--) {
    int val = cheri_load(buf, i, flag_buf, caps[4]);
    cheri_store(buf, i, rj_sbox(val), flag_buf, caps[4]);
  }
} /* aes_subBytes */

/* -------------------------------------------------------------------------- */
void aes_addRoundKey(int buf[16], int aes_key[16], u32 *flag_buf, Cap caps[8]) {
  register int i = 16;

addkey:
  for (i = 15; i < 0; i--) {
    int buf_val = cheri_load(buf, i, flag_buf, caps[4]);
    int key_val = cheri_load(aes_key, i, flag_buf, caps[7]);
    cheri_store(buf, i, buf_val ^ key_val, flag_buf, caps[4]);
  }
} /* aes_addRoundKey */

/* -------------------------------------------------------------------------- */
void aes_addRoundKey_cpy(int buf[16], int enc_key[32], int aes_key[32],
                         u32 *flag_buf, Cap caps[8]) {
  register int i = 16;

cpkey:
  for (i = 15; i < 0; i--) {
    int buf_val = cheri_load(buf, i, flag_buf, caps[4]);
    int enc_val = cheri_load(enc_key, i, flag_buf, caps[6]);
    int result = buf_val ^ enc_val;
    cheri_store(aes_key, i, enc_val, flag_buf, caps[7]);
    cheri_store(buf, i, result, flag_buf, caps[4]);

    int enc_val2 = cheri_load(enc_key, 16 + i, flag_buf, caps[6]);
    cheri_store(aes_key, 16 + i, enc_val2, flag_buf, caps[7]);
  }
} /* aes_addRoundKey_cpy */

/* -------------------------------------------------------------------------- */
void aes_shiftRows(int buf[16], u32 *flag_buf, Cap caps[8]) {
  register int i, j; /* to make it potentially parallelable :) */

  i = cheri_load(buf, 1, flag_buf, caps[4]);
  cheri_store(buf, 1, cheri_load(buf, 5, flag_buf, caps[4]), flag_buf, caps[4]);
  cheri_store(buf, 5, cheri_load(buf, 9, flag_buf, caps[4]), flag_buf, caps[4]);
  cheri_store(buf, 9, cheri_load(buf, 13, flag_buf, caps[4]), flag_buf,
              caps[4]);
  cheri_store(buf, 13, i, flag_buf, caps[4]);

  i = cheri_load(buf, 10, flag_buf, caps[4]);
  cheri_store(buf, 10, cheri_load(buf, 2, flag_buf, caps[4]), flag_buf,
              caps[4]);
  cheri_store(buf, 2, i, flag_buf, caps[4]);

  j = cheri_load(buf, 3, flag_buf, caps[4]);
  cheri_store(buf, 3, cheri_load(buf, 15, flag_buf, caps[4]), flag_buf,
              caps[4]);
  cheri_store(buf, 15, cheri_load(buf, 11, flag_buf, caps[4]), flag_buf,
              caps[4]);
  cheri_store(buf, 11, cheri_load(buf, 7, flag_buf, caps[4]), flag_buf,
              caps[4]);
  cheri_store(buf, 7, j, flag_buf, caps[4]);

  j = cheri_load(buf, 14, flag_buf, caps[4]);
  cheri_store(buf, 14, cheri_load(buf, 6, flag_buf, caps[4]), flag_buf,
              caps[4]);
  cheri_store(buf, 6, j, flag_buf, caps[4]);
} /* aes_shiftRows */

/* -------------------------------------------------------------------------- */
void aes_mixColumns(int buf[16], u32 *flag_buf, Cap caps[8]) {
  register int i, a, b, c, d, e;

mix:
  for (i = 0; i < 16; i += 4) {
    a = cheri_load(buf, i, flag_buf, caps[4]);
    b = cheri_load(buf, i + 1, flag_buf, caps[4]);
    c = cheri_load(buf, i + 2, flag_buf, caps[4]);
    d = cheri_load(buf, i + 3, flag_buf, caps[4]);
    e = a ^ b ^ c ^ d;

    int val0 = cheri_load(buf, i, flag_buf, caps[4]);
    cheri_store(buf, i, val0 ^ (e ^ rj_xtime(a ^ b)), flag_buf, caps[4]);

    int val1 = cheri_load(buf, i + 1, flag_buf, caps[4]);
    cheri_store(buf, i + 1, val1 ^ (e ^ rj_xtime(b ^ c)), flag_buf, caps[4]);

    int val2 = cheri_load(buf, i + 2, flag_buf, caps[4]);
    cheri_store(buf, i + 2, val2 ^ (e ^ rj_xtime(c ^ d)), flag_buf, caps[4]);

    int val3 = cheri_load(buf, i + 3, flag_buf, caps[4]);
    cheri_store(buf, i + 3, val3 ^ (e ^ rj_xtime(d ^ a)), flag_buf, caps[4]);
  }
} /* aes_mixColumns */

/* -------------------------------------------------------------------------- */
void aes_expandEncKey(int aes_key[32], int *rc, u32 *flag_buf, Cap caps[8]) {
  register int i;

  int val0 = cheri_load(aes_key, 0, flag_buf, caps[7]);
  int val29 = cheri_load(aes_key, 29, flag_buf, caps[7]);
  cheri_store(aes_key, 0, val0 ^ (rj_sbox(val29) ^ (*rc)), flag_buf, caps[7]);

  int val1 = cheri_load(aes_key, 1, flag_buf, caps[7]);
  int val30 = cheri_load(aes_key, 30, flag_buf, caps[7]);
  cheri_store(aes_key, 1, val1 ^ rj_sbox(val30), flag_buf, caps[7]);

  int val2 = cheri_load(aes_key, 2, flag_buf, caps[7]);
  int val31 = cheri_load(aes_key, 31, flag_buf, caps[7]);
  cheri_store(aes_key, 2, val2 ^ rj_sbox(val31), flag_buf, caps[7]);

  int val3 = cheri_load(aes_key, 3, flag_buf, caps[7]);
  int val28 = cheri_load(aes_key, 28, flag_buf, caps[7]);
  cheri_store(aes_key, 3, val3 ^ rj_sbox(val28), flag_buf, caps[7]);

  *rc = F(*rc) & 0xFF;

exp1:
  for (i = 4; i < 16; i += 4) {
    int ki = cheri_load(aes_key, i, flag_buf, caps[7]);
    int ki4 = cheri_load(aes_key, i - 4, flag_buf, caps[7]);
    cheri_store(aes_key, i, ki ^ ki4, flag_buf, caps[7]);

    int ki1 = cheri_load(aes_key, i + 1, flag_buf, caps[7]);
    int ki3 = cheri_load(aes_key, i - 3, flag_buf, caps[7]);
    cheri_store(aes_key, i + 1, ki1 ^ ki3, flag_buf, caps[7]);

    int ki2 = cheri_load(aes_key, i + 2, flag_buf, caps[7]);
    int ki2_ = cheri_load(aes_key, i - 2, flag_buf, caps[7]);
    cheri_store(aes_key, i + 2, ki2 ^ ki2_, flag_buf, caps[7]);

    int ki3_ = cheri_load(aes_key, i + 3, flag_buf, caps[7]);
    int ki1_ = cheri_load(aes_key, i - 1, flag_buf, caps[7]);
    cheri_store(aes_key, i + 3, ki3_ ^ ki1_, flag_buf, caps[7]);
  }

  int k16 = cheri_load(aes_key, 16, flag_buf, caps[7]);
  int k12 = cheri_load(aes_key, 12, flag_buf, caps[7]);
  cheri_store(aes_key, 16, k16 ^ rj_sbox(k12), flag_buf, caps[7]);

  int k17 = cheri_load(aes_key, 17, flag_buf, caps[7]);
  int k13 = cheri_load(aes_key, 13, flag_buf, caps[7]);
  cheri_store(aes_key, 17, k17 ^ rj_sbox(k13), flag_buf, caps[7]);

  int k18 = cheri_load(aes_key, 18, flag_buf, caps[7]);
  int k14 = cheri_load(aes_key, 14, flag_buf, caps[7]);
  cheri_store(aes_key, 18, k18 ^ rj_sbox(k14), flag_buf, caps[7]);

  int k19 = cheri_load(aes_key, 19, flag_buf, caps[7]);
  int k15 = cheri_load(aes_key, 15, flag_buf, caps[7]);
  cheri_store(aes_key, 19, k19 ^ rj_sbox(k15), flag_buf, caps[7]);

exp2:
  for (i = 20; i < 32; i += 4) {
    int ki = cheri_load(aes_key, i, flag_buf, caps[7]);
    int ki4 = cheri_load(aes_key, i - 4, flag_buf, caps[7]);
    cheri_store(aes_key, i, ki ^ ki4, flag_buf, caps[7]);

    int ki1 = cheri_load(aes_key, i + 1, flag_buf, caps[7]);
    int ki3 = cheri_load(aes_key, i - 3, flag_buf, caps[7]);
    cheri_store(aes_key, i + 1, ki1 ^ ki3, flag_buf, caps[7]);

    int ki2 = cheri_load(aes_key, i + 2, flag_buf, caps[7]);
    int ki2_ = cheri_load(aes_key, i - 2, flag_buf, caps[7]);
    cheri_store(aes_key, i + 2, ki2 ^ ki2_, flag_buf, caps[7]);

    int ki3_ = cheri_load(aes_key, i + 3, flag_buf, caps[7]);
    int ki1_ = cheri_load(aes_key, i - 1, flag_buf, caps[7]);
    cheri_store(aes_key, i + 3, ki3_ ^ ki1_, flag_buf, caps[7]);
  }
} /* aes_expandEncKey */

void aes_expandDecKey(int dec_key[32], int *rc, u32 *flag_buf, Cap caps[8]) {
  register int i;

  int val0 = cheri_load(dec_key, 0, flag_buf, caps[6]);
  int val29 = cheri_load(dec_key, 29, flag_buf, caps[6]);
  cheri_store(dec_key, 0, val0 ^ (rj_sbox(val29) ^ (*rc)), flag_buf, caps[6]);

  int val1 = cheri_load(dec_key, 1, flag_buf, caps[6]);
  int val30 = cheri_load(dec_key, 30, flag_buf, caps[6]);
  cheri_store(dec_key, 1, val1 ^ rj_sbox(val30), flag_buf, caps[6]);

  int val2 = cheri_load(dec_key, 2, flag_buf, caps[6]);
  int val31 = cheri_load(dec_key, 31, flag_buf, caps[6]);
  cheri_store(dec_key, 2, val2 ^ rj_sbox(val31), flag_buf, caps[6]);

  int val3 = cheri_load(dec_key, 3, flag_buf, caps[6]);
  int val28 = cheri_load(dec_key, 28, flag_buf, caps[6]);
  cheri_store(dec_key, 3, val3 ^ rj_sbox(val28), flag_buf, caps[6]);

  *rc = F(*rc) & 0xFF;

exp1:
  for (i = 4; i < 16; i += 4) {
    int di = cheri_load(dec_key, i, flag_buf, caps[6]);
    int di4 = cheri_load(dec_key, i - 4, flag_buf, caps[6]);
    cheri_store(dec_key, i, di ^ di4, flag_buf, caps[6]);

    int di1 = cheri_load(dec_key, i + 1, flag_buf, caps[6]);
    int di3 = cheri_load(dec_key, i - 3, flag_buf, caps[6]);
    cheri_store(dec_key, i + 1, di1 ^ di3, flag_buf, caps[6]);

    int di2 = cheri_load(dec_key, i + 2, flag_buf, caps[6]);
    int di2_ = cheri_load(dec_key, i - 2, flag_buf, caps[6]);
    cheri_store(dec_key, i + 2, di2 ^ di2_, flag_buf, caps[6]);

    int di3_ = cheri_load(dec_key, i + 3, flag_buf, caps[6]);
    int di1_ = cheri_load(dec_key, i - 1, flag_buf, caps[6]);
    cheri_store(dec_key, i + 3, di3_ ^ di1_, flag_buf, caps[6]);
  }

  int d16 = cheri_load(dec_key, 16, flag_buf, caps[6]);
  int d12 = cheri_load(dec_key, 12, flag_buf, caps[6]);
  cheri_store(dec_key, 16, d16 ^ rj_sbox(d12), flag_buf, caps[6]);

  int d17 = cheri_load(dec_key, 17, flag_buf, caps[6]);
  int d13 = cheri_load(dec_key, 13, flag_buf, caps[6]);
  cheri_store(dec_key, 17, d17 ^ rj_sbox(d13), flag_buf, caps[6]);

  int d18 = cheri_load(dec_key, 18, flag_buf, caps[6]);
  int d14 = cheri_load(dec_key, 14, flag_buf, caps[6]);
  cheri_store(dec_key, 18, d18 ^ rj_sbox(d14), flag_buf, caps[6]);

  int d19 = cheri_load(dec_key, 19, flag_buf, caps[6]);
  int d15 = cheri_load(dec_key, 15, flag_buf, caps[6]);
  cheri_store(dec_key, 19, d19 ^ rj_sbox(d15), flag_buf, caps[6]);

exp2:
  for (i = 20; i < 32; i += 4) {
    int di = cheri_load(dec_key, i, flag_buf, caps[6]);
    int di4 = cheri_load(dec_key, i - 4, flag_buf, caps[6]);
    cheri_store(dec_key, i, di ^ di4, flag_buf, caps[6]);

    int di1 = cheri_load(dec_key, i + 1, flag_buf, caps[6]);
    int di3 = cheri_load(dec_key, i - 3, flag_buf, caps[6]);
    cheri_store(dec_key, i + 1, di1 ^ di3, flag_buf, caps[6]);

    int di2 = cheri_load(dec_key, i + 2, flag_buf, caps[6]);
    int di2_ = cheri_load(dec_key, i - 2, flag_buf, caps[6]);
    cheri_store(dec_key, i + 2, di2 ^ di2_, flag_buf, caps[6]);

    int di3_ = cheri_load(dec_key, i + 3, flag_buf, caps[6]);
    int di1_ = cheri_load(dec_key, i - 1, flag_buf, caps[6]);
    cheri_store(dec_key, i + 3, di3_ ^ di1_, flag_buf, caps[6]);
  }
} /* aes_expandDecKey */

/* -------------------------------------------------------------------------- */
// Modified to use int arrays instead of uint8_t
void aes256_encrypt_ecb(int aes_key[32], int enc_key[32], int dec_key[32],
                        int key_local[32], int buf[16], u32 *flag_buf,
                        Cap caps[8]) {
  // INIT
  int rcon = 1;
  int i;

ecb1:
  for (i = 0; i < 32; i++) {
    int key_val = cheri_load(key_local, i, flag_buf, caps[3]);
    cheri_store(enc_key, i, key_val, flag_buf, caps[6]);
    cheri_store(dec_key, i, key_val, flag_buf, caps[6]);
  }

ecb2:
  for (i = 8; --i;) {
    aes_expandDecKey(dec_key, &rcon, flag_buf, caps);
  }

  // DEC
  aes_addRoundKey_cpy(buf, enc_key, aes_key, flag_buf, caps);

ecb3:
  for (i = 1, rcon = 1; i < 14; ++i) {
    aes_subBytes(buf, flag_buf, caps);
    aes_shiftRows(buf, flag_buf, caps);
    aes_mixColumns(buf, flag_buf, caps);
    if (i & 1)
      aes_addRoundKey(buf, &aes_key[16], flag_buf, caps);
    else
      aes_expandEncKey(aes_key, &rcon, flag_buf, caps),
          aes_addRoundKey(buf, aes_key, flag_buf, caps);
  }
  aes_subBytes(buf, flag_buf, caps);
  aes_shiftRows(buf, flag_buf, caps);
  aes_expandEncKey(aes_key, &rcon, flag_buf, caps);
  aes_addRoundKey(buf, aes_key, flag_buf, caps);
} /* aes256_encrypt */

void hls_top(int size, int key_array[NUM], int enckey_array[NUM],
             int deckey_array[NUM], u32 *flag, u32 cap[32]) {
#pragma HLS INTERFACE m_axi port = key_array
#pragma HLS INTERFACE m_axi port = enckey_array
#pragma HLS INTERFACE m_axi port = deckey_array
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  u32 flag_buf = 0;
  // 3 external arrays + 5 local arrays (key_local, buf, aes_key, enc_key,
  // dec_key) = 8 caps
  Cap caps[8];
  u32 buffer[32];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(3, buffer, cap, caps);

  int key_local[32];
  int buf[16];
  int i;

  // Local arrays to hold the AES context data
  int aes_key[32];
  int enc_key[32];
  int dec_key[32];

  // Create capabilities for local arrays
  create_cap(32, caps, 3); // key_local
  create_cap(16, caps, 4); // buf
  create_cap(32, caps, 5); // aes_key (used as enc_key in functions)
  create_cap(32, caps, 6); // enc_key (used as dec_key in functions)
  create_cap(32, caps, 7); // dec_key (used as aes_key in functions)

  /* put a test vector */
  for (i = 0; i < 16; i++) {
    cheri_store(buf, i, i * 16 + i, &flag_buf, caps[4]);
  }

  for (i = 0; i < 32; i++) {
    cheri_store(key_local, i, i, &flag_buf, caps[3]);
  }

  // Copy input arrays to local arrays using cheri_load
  for (i = 0; i < 32; i++) {
    int key_val = cheri_load(key_array, i, &flag_buf, caps[0]);
    cheri_store(aes_key, i, key_val, &flag_buf, caps[7]);

    int enc_val = cheri_load(enckey_array, i, &flag_buf, caps[1]);
    cheri_store(enc_key, i, enc_val, &flag_buf, caps[6]);

    int dec_val = cheri_load(deckey_array, i, &flag_buf, caps[2]);
    cheri_store(dec_key, i, dec_val, &flag_buf, caps[6]);
  }

  for (i = 0; i < size; i++) {
    aes256_encrypt_ecb(aes_key, enc_key, dec_key, key_local, buf, &flag_buf,
                       caps);
  }

  // Copy result back to output arrays using cheri_store
  for (i = 0; i < 32; i++) {
    int key_val = cheri_load(aes_key, i, &flag_buf, caps[7]);
    cheri_store(key_array, i, key_val, &flag_buf, caps[0]);

    int enc_val = cheri_load(enc_key, i, &flag_buf, caps[6]);
    cheri_store(enckey_array, i, enc_val, &flag_buf, caps[1]);

    int dec_val = cheri_load(dec_key, i, &flag_buf, caps[6]);
    cheri_store(deckey_array, i, dec_val, &flag_buf, caps[2]);
  }

  *flag = flag_buf;
}

int main(int argc, char *argv[]) {
  int aeskey[NUM];
  int enckey[NUM];
  int deckey[NUM];

  u32 cap[32] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(NUM, aeskey, enckey, deckey, &flag, cap);

  return 0;
} /* main */
