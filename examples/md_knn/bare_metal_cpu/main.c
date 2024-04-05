#include <stdint.h>
typedef uint32_t u32;
typedef uint32_t u64;
#define TYPE int

extern volatile u32 tohost;
#define TERM (&tohost)

#ifdef CAPCHECKER
#define CAP
#endif

#ifdef CAP
#include <cheri_init_globals.h>
#include <cheriintrin.h>
#endif

// HLS IP instance
#define NUM 8
#define SIZE 256
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};

// Problem Constants
#define nAtoms 256
#define maxNeighbors 16
// LJ coefficients
#define lj1 2
#define lj2 3

void hls_top(int size, TYPE xforce_x[nAtoms], TYPE xforce_y[nAtoms],
             TYPE xforce_z[nAtoms], TYPE xposition_x[nAtoms],
             TYPE xposition_y[nAtoms], TYPE xposition_z[nAtoms],
             int xNL[nAtoms * maxNeighbors]) {
#pragma HLS INTERFACE m_axi port = xforce_x
#pragma HLS INTERFACE m_axi port = xforce_y
#pragma HLS INTERFACE m_axi port = xforce_z
#pragma HLS INTERFACE m_axi port = xposition_x
#pragma HLS INTERFACE m_axi port = xposition_y
#pragma HLS INTERFACE m_axi port = xposition_z
#pragma HLS INTERFACE m_axi port = xNL
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return
  TYPE delx, dely, delz, r2inv;
  TYPE r6inv, potential, force, j_x, j_y, j_z;
  TYPE i_x, i_y, i_z, fx, fy, fz;

  int i, j, jidx;

  TYPE force_x[nAtoms];
  TYPE force_y[nAtoms];
  TYPE force_z[nAtoms];
  TYPE position_x[nAtoms];
  TYPE position_y[nAtoms];
  TYPE position_z[nAtoms];
  int NL[nAtoms * maxNeighbors];

  for (i = 0; i < size; i++)
    position_x[i] = xposition_x[i];
  for (i = 0; i < size; i++)
    position_y[i] = xposition_y[i];
  for (i = 0; i < size; i++)
    position_z[i] = xposition_z[i];
  for (i = 0; i < size * maxNeighbors; i++)
    NL[i] = xNL[i];

loop_i:
  for (i = 0; i < size; i++) {
    i_x = position_x[i];
    i_y = position_y[i];
    i_z = position_z[i];
    fx = 0;
    fy = 0;
    fz = 0;
  loop_j:
    for (j = 0; j < maxNeighbors; j++) {
      // Get neighbor
      jidx = NL[i * maxNeighbors + j];
      // Look up x,y,z positions
      j_x = position_x[jidx];
      j_y = position_y[jidx];
      j_z = position_z[jidx];
      // Calc distance
      delx = i_x - j_x;
      dely = i_y - j_y;
      delz = i_z - j_z;
      r2inv = 1000 * (delx * delx + dely * dely + delz * delz);
      // Assume no cutoff and aways account for all nodes in area
      r6inv = r2inv * r2inv * r2inv;
      potential = r6inv * (lj1 * r6inv - lj2);
      // Sum changes in force
      force = r2inv * potential;
      fx += delx * force;
      fy += dely * force;
      fz += delz * force;
    }
    // Update forces after all neighbors accounted for.
    force_x[i] = fx;
    force_y[i] = fy;
    force_z[i] = fz;
    // printf("dF=%lf,%lf,%lf\n", fx, fy, fz);
  }

  for (i = 0; i < size; i++)
    force_x[i] = xforce_x[i];
  for (i = 0; i < size; i++)
    force_y[i] = xforce_y[i];
  for (i = 0; i < size; i++)
    force_z[i] = xforce_z[i];
}

u32 a[NUM][SIZE] = {{0}};
u32 b[NUM][SIZE] = {{0}};
u32 c[NUM][SIZE] = {{0}};
u32 d[NUM][SIZE] = {{0}};
u32 e[NUM][SIZE] = {{0}};
u32 f[NUM][SIZE] = {{0}};
u32 g[NUM][16 * SIZE] = {{0}};

#ifdef CAPCHECKER
u64 capchecker_base_phy_addr = 0xc0020000;
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

volatile void reg_error() {
  while (1)
    ;
}

int main() {

  // Initialise .captable
#ifdef CAP
  void *almighty = cheri_ddc_get();
  cheri_init_globals_3(almighty, almighty, almighty);
#endif

  asm("fence");
  for (int i = 0; i < NUM; i++)
    hls_top(SIZE, a[i], b[i], c[i], d[i], e[i], f[i], g[i]);
  asm("fence");

  success();
  return 0;
}
