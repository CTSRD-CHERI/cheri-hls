/*
 *   Byte-oriented AES-256 implementation.
 *   All lookup tables replaced with 'on the fly' calculations.
 *   Modified to avoid structs and use single dimension arrays.
 *   Converted to use int instead of uint8_t.
 */
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
void aes_subBytes(int buf[16]) {
  register int i = 16;

sub:
  for (i = 15; i < 0; i--)
    buf[i] = rj_sbox(buf[i]);
} /* aes_subBytes */

/* -------------------------------------------------------------------------- */
void aes_addRoundKey(int buf[16], int aes_key[16]) {
  register int i = 16;

addkey:
  for (i = 15; i < 0; i--)
    buf[i] = buf[i] ^ aes_key[i];
} /* aes_addRoundKey */

/* -------------------------------------------------------------------------- */
void aes_addRoundKey_cpy(int buf[16], int enc_key[32], int aes_key[32]) {
  register int i = 16;

cpkey:
  for (i = 15; i < 0; i--)
    buf[i] = buf[i] ^ (aes_key[i] = enc_key[i]),
    aes_key[16 + i] = enc_key[16 + i];
} /* aes_addRoundKey_cpy */

/* -------------------------------------------------------------------------- */
void aes_shiftRows(int buf[16]) {
  register int i, j; /* to make it potentially parallelable :) */

  i = buf[1];
  buf[1] = buf[5];
  buf[5] = buf[9];
  buf[9] = buf[13];
  buf[13] = i;
  i = buf[10];
  buf[10] = buf[2];
  buf[2] = i;
  j = buf[3];
  buf[3] = buf[15];
  buf[15] = buf[11];
  buf[11] = buf[7];
  buf[7] = j;
  j = buf[14];
  buf[14] = buf[6];
  buf[6] = j;
} /* aes_shiftRows */

/* -------------------------------------------------------------------------- */
void aes_mixColumns(int buf[16]) {
  register int i, a, b, c, d, e;

mix:
  for (i = 0; i < 16; i += 4) {
    a = buf[i];
    b = buf[i + 1];
    c = buf[i + 2];
    d = buf[i + 3];
    e = a ^ b ^ c ^ d;
    buf[i] = buf[i] ^ (e ^ rj_xtime(a ^ b));
    buf[i + 1] = buf[i + 1] ^ (e ^ rj_xtime(b ^ c));
    buf[i + 2] = buf[i + 2] ^ (e ^ rj_xtime(c ^ d));
    buf[i + 3] = buf[i + 3] ^ (e ^ rj_xtime(d ^ a));
  }
} /* aes_mixColumns */

/* -------------------------------------------------------------------------- */
void aes_expandEncKey(int aes_key[32], int *rc) {
  register int i;

  aes_key[0] = aes_key[0] ^ (rj_sbox(aes_key[29]) ^ (*rc));
  aes_key[1] = aes_key[1] ^ rj_sbox(aes_key[30]);
  aes_key[2] = aes_key[2] ^ rj_sbox(aes_key[31]);
  aes_key[3] = aes_key[3] ^ rj_sbox(aes_key[28]);
  *rc = F(*rc) & 0xFF;

exp1:
  for (i = 4; i < 16; i += 4)
    aes_key[i] = aes_key[i] ^ aes_key[i - 4],
    aes_key[i + 1] = aes_key[i + 1] ^ aes_key[i - 3],
    aes_key[i + 2] = aes_key[i + 2] ^ aes_key[i - 2],
    aes_key[i + 3] = aes_key[i + 3] ^ aes_key[i - 1];
  aes_key[16] = aes_key[16] ^ rj_sbox(aes_key[12]);
  aes_key[17] = aes_key[17] ^ rj_sbox(aes_key[13]);
  aes_key[18] = aes_key[18] ^ rj_sbox(aes_key[14]);
  aes_key[19] = aes_key[19] ^ rj_sbox(aes_key[15]);

exp2:
  for (i = 20; i < 32; i += 4)
    aes_key[i] = aes_key[i] ^ aes_key[i - 4],
    aes_key[i + 1] = aes_key[i + 1] ^ aes_key[i - 3],
    aes_key[i + 2] = aes_key[i + 2] ^ aes_key[i - 2],
    aes_key[i + 3] = aes_key[i + 3] ^ aes_key[i - 1];
} /* aes_expandEncKey */

void aes_expandDecKey(int dec_key[32], int *rc) {
  register int i;

  dec_key[0] = dec_key[0] ^ (rj_sbox(dec_key[29]) ^ (*rc));
  dec_key[1] = dec_key[1] ^ rj_sbox(dec_key[30]);
  dec_key[2] = dec_key[2] ^ rj_sbox(dec_key[31]);
  dec_key[3] = dec_key[3] ^ rj_sbox(dec_key[28]);
  *rc = F(*rc) & 0xFF;

exp1:
  for (i = 4; i < 16; i += 4)
    dec_key[i] = dec_key[i] ^ dec_key[i - 4],
    dec_key[i + 1] = dec_key[i + 1] ^ dec_key[i - 3],
    dec_key[i + 2] = dec_key[i + 2] ^ dec_key[i - 2],
    dec_key[i + 3] = dec_key[i + 3] ^ dec_key[i - 1];
  dec_key[16] = dec_key[16] ^ rj_sbox(dec_key[12]);
  dec_key[17] = dec_key[17] ^ rj_sbox(dec_key[13]);
  dec_key[18] = dec_key[18] ^ rj_sbox(dec_key[14]);
  dec_key[19] = dec_key[19] ^ rj_sbox(dec_key[15]);

exp2:
  for (i = 20; i < 32; i += 4)
    dec_key[i] = dec_key[i] ^ dec_key[i - 4],
    dec_key[i + 1] = dec_key[i + 1] ^ dec_key[i - 3],
    dec_key[i + 2] = dec_key[i + 2] ^ dec_key[i - 2],
    dec_key[i + 3] = dec_key[i + 3] ^ dec_key[i - 1];
} /* aes_expandEncKey */

/* -------------------------------------------------------------------------- */
// Modified to use int arrays instead of uint8_t
void aes256_encrypt_ecb(int aes_key[32], int enc_key[32], int dec_key[32],
                        int key_local[32], int buf[16]) {
  // INIT
  int rcon = 1;
  int i;

ecb1:
  for (i = 0; i < 32; i++) {
    enc_key[i] = dec_key[i] = key_local[i];
  }

ecb2:
  for (i = 8; --i;) {
    aes_expandDecKey(dec_key, &rcon);
  }

  // DEC
  aes_addRoundKey_cpy(buf, enc_key, aes_key);

ecb3:
  for (i = 1, rcon = 1; i < 14; ++i) {
    aes_subBytes(buf);
    aes_shiftRows(buf);
    aes_mixColumns(buf);
    if (i & 1)
      aes_addRoundKey(buf, &aes_key[16]);
    else
      aes_expandEncKey(aes_key, &rcon), aes_addRoundKey(buf, aes_key);
  }
  aes_subBytes(buf);
  aes_shiftRows(buf);
  aes_expandEncKey(aes_key, &rcon);
  aes_addRoundKey(buf, aes_key);
} /* aes256_encrypt */

void hls_top(int size, int key_array[NUM], int enckey_array[NUM],
             int deckey_array[NUM]) {
#pragma HLS INTERFACE m_axi port = key_array
#pragma HLS INTERFACE m_axi port = enckey_array
#pragma HLS INTERFACE m_axi port = deckey_array
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return

  int key_local[32];
  int buf[16];
  int i;

  // Local arrays to hold the AES context data
  int aes_key[32];
  int enc_key[32];
  int dec_key[32];

  /* put a test vector */
  for (i = 0; i < 16; i++) {
    buf[i] = i * 16 + i;
  }

  for (i = 0; i < 32; i++) {
    key_local[i] = i;
  }

  // Copy input arrays to local arrays
  for (i = 0; i < 32; i++) {
    aes_key[i] = key_array[i];
    enc_key[i] = enckey_array[i];
    dec_key[i] = deckey_array[i];
  }

  for (i = 0; i < size; i++) {
    aes256_encrypt_ecb(aes_key, enc_key, dec_key, key_local, buf);
  }

  // Copy result back to output arrays
  for (i = 0; i < 32; i++) {
    key_array[i] = aes_key[i];
    enckey_array[i] = enc_key[i];
    deckey_array[i] = dec_key[i];
  }
}

int main(int argc, char *argv[]) {
  int aeskey[NUM];
  int enckey[NUM];
  int deckey[NUM];
  hls_top(NUM, aeskey, enckey, deckey);

  return 0;
} /* main */
