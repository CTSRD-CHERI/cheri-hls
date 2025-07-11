#include <stdint.h>
#define MIN(x, y) ((x) < (y) ? (x) : (y))
#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define TYPE int
typedef uint32_t u32;
typedef uint32_t u64;

// Problem Constants
#define nAtoms 256
#define domainEdge 20
#define blockSide 4
//#define blockSide     1
#define nBlocks (blockSide * blockSide * blockSide)
#define blockEdge (domainEdge / ((TYPE)blockSide))
// Memory Bound
// This is an artifact of using statically-allocated arrays. We'll pretend that
// it doesn't exist and instead track the actual number of points.
#define densityFactor 10
// LJ coefficients
#define lj1 2
#define lj2 3

typedef struct {
  int x;
  int y;
  int z;
} dvector_t;
typedef struct {
  int x;
  int y;
  int z;
} ivector_t;

void hls_top(
    int size, int n_points[blockSide][blockSide][blockSide],
    dvector_t force[blockSide][blockSide][blockSide][densityFactor],
    dvector_t position[blockSide][blockSide][blockSide][densityFactor]) {

  ivector_t b0, b1; // b0 is the current block, b1 is b0 or a neighboring block
  dvector_t p, q;   // p is a point in b0, q is a point in either b0 or b1
  int p_idx, q_idx;
  TYPE dx, dy, dz, r2inv, r6inv, potential, f;

// Iterate over the grid, block by block
loop_grid0_x:
  for (b0.x = 0; b0.x < size; b0.x++) {
  loop_grid0_y:
    for (b0.y = 0; b0.y < size; b0.y++) {
    loop_grid0_z:
      for (b0.z = 0; b0.z < size; b0.z++) {
      // Iterate over the 3x3x3 (modulo boundary conditions) cube of blocks
      // around b0
      loop_grid1_x:
        for (b1.x = MAX(0, b0.x - 1); b1.x < MIN(size, b0.x + 2); b1.x++) {
        loop_grid1_y:
          for (b1.y = MAX(0, b0.y - 1); b1.y < MIN(size, b0.y + 2); b1.y++) {
          loop_grid1_z:
            for (b1.z = MAX(0, b0.z - 1); b1.z < MIN(size, b0.z + 2); b1.z++) {
              // For all points in b0
              dvector_t *base_q = position[b1.x][b1.y][b1.z];
              int q_idx_range = n_points[b1.x][b1.y][b1.z];
            loop_p:
              for (p_idx = 0; p_idx < n_points[b0.x][b0.y][b0.z]; p_idx++) {
                p = position[b0.x][b0.y][b0.z][p_idx];
                TYPE sum_x = force[b0.x][b0.y][b0.z][p_idx].x;
                TYPE sum_y = force[b0.x][b0.y][b0.z][p_idx].y;
                TYPE sum_z = force[b0.x][b0.y][b0.z][p_idx].z;
              // For all points in b1
              loop_q:
                for (q_idx = 0; q_idx < q_idx_range; q_idx++) {
                  q = *(base_q + q_idx);

                  // Don't compute our own
                  if (q.x != p.x || q.y != p.y || q.z != p.z) {
                    // Compute the LJ-potential
                    dx = p.x - q.x;
                    dy = p.y - q.y;
                    dz = p.z - q.z;
                    r2inv = (dx * dx + dy * dy + dz * dz);
                    r6inv = r2inv * r2inv * r2inv;
                    potential = r6inv * (lj1 * r6inv - lj2);
                    // Update forces
                    f = r2inv * potential;
                    sum_x += f * dx;
                    sum_y += f * dy;
                    sum_z += f * dz;
                  }
                } // loop_q
                force[b0.x][b0.y][b0.z][p_idx].x = sum_x;
                force[b0.x][b0.y][b0.z][p_idx].y = sum_y;
                force[b0.x][b0.y][b0.z][p_idx].z = sum_z;
              } // loop_p
            }
          }
        } // loop_grid1_*
      }
    }
  } // loop_grid0_*
}

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
u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
int a[NUM][blockSide][blockSide][blockSide] = {{0}};
dvector_t b[NUM][blockSide][blockSide][blockSide][densityFactor] = {
    {{1, 1, 1}}};
dvector_t c[NUM][blockSide][blockSide][blockSide][densityFactor] = {
    {{1, 1, 1}}};

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

u32 hls_top_init(int test_case) { return 0; }

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
  asm("fence");
  for (int i = 0; i < NUM; i++)
    hls_top(blockSide, a[i], b[i], c[i]);
  asm("fence");

  success();
  return 0;
}
