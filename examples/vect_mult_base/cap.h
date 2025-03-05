#include <stdint.h>
#include <stdio.h>
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef struct {
  u64 addr;
  u64 base;
  u64 top;
  u32 otype;
  u16 perms;
  u16 uperms;
} Cap;

bool checkAccess(Cap cap, u64 nBytes, bool isRead, bool isWrite);

Cap decode(u64 cap, u64 addr);
