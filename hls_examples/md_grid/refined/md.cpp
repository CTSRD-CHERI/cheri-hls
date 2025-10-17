#include "../../chls.h"

#define MIN(x, y) ((x) < (y) ? (x) : (y))
#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define TYPE int

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
    int size, int xn_points[blockSide * blockSide * blockSide],
    int force_x[blockSide * blockSide * blockSide * densityFactor],
    int force_y[blockSide * blockSide * blockSide * densityFactor],
    int force_z[blockSide * blockSide * blockSide * densityFactor],
    int position_x[blockSide * blockSide * blockSide * densityFactor],
    int position_y[blockSide * blockSide * blockSide * densityFactor],
    int position_z[blockSide * blockSide * blockSide * densityFactor],
    u32 *flag, u32 cap[28]) {
#pragma HLS INTERFACE m_axi port = xn_points
#pragma HLS INTERFACE m_axi port = force_x
#pragma HLS INTERFACE m_axi port = force_y
#pragma HLS INTERFACE m_axi port = force_z
#pragma HLS INTERFACE m_axi port = position_x
#pragma HLS INTERFACE m_axi port = position_y
#pragma HLS INTERFACE m_axi port = position_z
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  ivector_t b0, b1; // b0 is the current block, b1 is b0 or a neighboring block
  dvector_t p, q;   // p is a point in b0, q is a point in either b0 or b1
  int p_idx, q_idx;
  TYPE dx, dy, dz, r2inv, r6inv, potential, f;

  u32 flag_buf = 0;
  // 7 arrays (xn_points, force_x, force_y, force_z, position_x, position_y, position_z) * 4 = 28
  Cap caps[7];
  u32 buffer[28];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(7, buffer, cap, caps);

  int n_points[blockSide * blockSide * blockSide];
  dvector_t force[blockSide * blockSide * blockSide * densityFactor];
  dvector_t position[blockSide * blockSide * blockSide * densityFactor];

  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        n_points[i * blockSide * blockSide + j * blockSide + k] =
            cheri_load(xn_points, i * blockSide * blockSide + j * blockSide + k,
                       &flag_buf, caps[0]);

  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          force[i * blockSide * blockSide * densityFactor +
                j * blockSide * densityFactor + k * densityFactor + h]
              .x =
              cheri_load(force_x,
                         i * blockSide * blockSide * densityFactor +
                             j * blockSide * densityFactor + k * densityFactor + h,
                         &flag_buf, caps[1]);
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          force[i * blockSide * blockSide * densityFactor +
                j * blockSide * densityFactor + k * densityFactor + h]
              .y =
              cheri_load(force_y,
                         i * blockSide * blockSide * densityFactor +
                             j * blockSide * densityFactor + k * densityFactor + h,
                         &flag_buf, caps[2]);
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          force[i * blockSide * blockSide * densityFactor +
                j * blockSide * densityFactor + k * densityFactor + h]
              .z =
              cheri_load(force_z,
                         i * blockSide * blockSide * densityFactor +
                             j * blockSide * densityFactor + k * densityFactor + h,
                         &flag_buf, caps[3]);
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          position[i * blockSide * blockSide * densityFactor +
                   j * blockSide * densityFactor + k * densityFactor + h]
              .x =
              cheri_load(position_x,
                         i * blockSide * blockSide * densityFactor +
                             j * blockSide * densityFactor + k * densityFactor + h,
                         &flag_buf, caps[4]);
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          position[i * blockSide * blockSide * densityFactor +
                   j * blockSide * densityFactor + k * densityFactor + h]
              .y =
              cheri_load(position_y,
                         i * blockSide * blockSide * densityFactor +
                             j * blockSide * densityFactor + k * densityFactor + h,
                         &flag_buf, caps[5]);
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          position[i * blockSide * blockSide * densityFactor +
                   j * blockSide * densityFactor + k * densityFactor + h]
              .z =
              cheri_load(position_z,
                         i * blockSide * blockSide * densityFactor +
                             j * blockSide * densityFactor + k * densityFactor + h,
                         &flag_buf, caps[6]);

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
              int b1_base_idx = b1.x * blockSide * blockSide * densityFactor +
                                b1.y * blockSide * densityFactor +
                                b1.z * densityFactor;
              dvector_t *base_q = position + b1_base_idx;
              int q_idx_range = n_points[b1.x * blockSide * blockSide +
                                         b1.y * blockSide + b1.z];
            loop_p:
              for (p_idx = 0; p_idx < n_points[b0.x * blockSide * blockSide +
                                               b0.y * blockSide + b0.z];
                   p_idx++) {
                int b0_p_idx = b0.x * blockSide * blockSide * densityFactor +
                               b0.y * blockSide * densityFactor +
                               b0.z * densityFactor + p_idx;
                p = position[b0_p_idx];
                TYPE sum_x = force[b0_p_idx].x;
                TYPE sum_y = force[b0_p_idx].y;
                TYPE sum_z = force[b0_p_idx].z;
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
                force[b0_p_idx].x = sum_x;
                force[b0_p_idx].y = sum_y;
                force[b0_p_idx].z = sum_z;
              } // loop_p
            }
          }
        } // loop_grid1_*
      }
    }
  } // loop_grid0_*

  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          cheri_store(force_x,
                      i * blockSide * blockSide * densityFactor +
                          j * blockSide * densityFactor + k * densityFactor + h,
                      force[i * blockSide * blockSide * densityFactor +
                            j * blockSide * densityFactor + k * densityFactor + h]
                          .x,
                      &flag_buf, caps[1]);
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          cheri_store(force_y,
                      i * blockSide * blockSide * densityFactor +
                          j * blockSide * densityFactor + k * densityFactor + h,
                      force[i * blockSide * blockSide * densityFactor +
                            j * blockSide * densityFactor + k * densityFactor + h]
                          .y,
                      &flag_buf, caps[2]);
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          cheri_store(force_z,
                      i * blockSide * blockSide * densityFactor +
                          j * blockSide * densityFactor + k * densityFactor + h,
                      force[i * blockSide * blockSide * densityFactor +
                            j * blockSide * densityFactor + k * densityFactor + h]
                          .z,
                      &flag_buf, caps[3]);

  *flag = flag_buf;
}

int main() {

  int n_points[blockSide * blockSide * blockSide] = {0};
  int force_x[blockSide * blockSide * blockSide * densityFactor] = {1, 1, 1};
  int force_y[blockSide * blockSide * blockSide * densityFactor] = {1, 1, 1};
  int force_z[blockSide * blockSide * blockSide * densityFactor] = {1, 1, 1};
  int position_x[blockSide * blockSide * blockSide * densityFactor] = {1, 1, 1};
  int position_y[blockSide * blockSide * blockSide * densityFactor] = {1, 1, 1};
  int position_z[blockSide * blockSide * blockSide * densityFactor] = {1, 1, 1};

  u32 cap[28] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(blockSide, n_points, force_x, force_y, force_z, position_x,
          position_y, position_z, &flag, cap);

  return 0;
}
