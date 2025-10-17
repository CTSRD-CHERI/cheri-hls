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

void hls_top(int size, int xn_points[blockSide * blockSide * blockSide],
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

  // b0 is the current block, b1 is b0 or a neighboring block
  int b0_x, b0_y, b0_z, b1_x, b1_y, b1_z;
  // p is a point in b0, q is a point in either b0 or b1
  int p_x, p_y, p_z, q_x, q_y, q_z;
  int p_idx, q_idx;
  TYPE dx, dy, dz, r2inv, r6inv, potential, f;

  u32 flag_buf = 0;
  // 7 arrays (xn_points, force_x, force_y, force_z, position_x, position_y,
  // position_z) * 4 = 28
  Cap caps[7];
  u32 buffer[28];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(7, buffer, cap, caps);

  int n_points[blockSide * blockSide * blockSide];
  int force_ox[blockSide * blockSide * blockSide * densityFactor];
  int force_oy[blockSide * blockSide * blockSide * densityFactor];
  int force_oz[blockSide * blockSide * blockSide * densityFactor];
  int position_ox[blockSide * blockSide * blockSide * densityFactor];
  int position_oy[blockSide * blockSide * blockSide * densityFactor];
  int position_oz[blockSide * blockSide * blockSide * densityFactor];

  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++) {
        int idx = i * blockSide * blockSide + j * blockSide + k;
        n_points[idx] = cheri_load(xn_points, idx, &flag_buf, caps[0]);
      }

  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++) {
          int idx = i * blockSide * blockSide * densityFactor +
                    j * blockSide * densityFactor + k * densityFactor + h;
          force_ox[idx] = cheri_load(force_x, idx, &flag_buf, caps[1]);
        }
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++) {
          int idx = i * blockSide * blockSide * densityFactor +
                    j * blockSide * densityFactor + k * densityFactor + h;
          force_oy[idx] = cheri_load(force_y, idx, &flag_buf, caps[2]);
        }
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++) {
          int idx = i * blockSide * blockSide * densityFactor +
                    j * blockSide * densityFactor + k * densityFactor + h;
          force_oz[idx] = cheri_load(force_z, idx, &flag_buf, caps[3]);
        }
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++) {
          int idx = i * blockSide * blockSide * densityFactor +
                    j * blockSide * densityFactor + k * densityFactor + h;
          position_ox[idx] = cheri_load(position_x, idx, &flag_buf, caps[4]);
        }
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++) {
          int idx = i * blockSide * blockSide * densityFactor +
                    j * blockSide * densityFactor + k * densityFactor + h;
          position_oy[idx] = cheri_load(position_y, idx, &flag_buf, caps[5]);
        }
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++) {
          int idx = i * blockSide * blockSide * densityFactor +
                    j * blockSide * densityFactor + k * densityFactor + h;
          position_oz[idx] = cheri_load(position_z, idx, &flag_buf, caps[6]);
        }

// Iterate over the grid, block by block
loop_grid0_x:
  for (b0_x = 0; b0_x < size; b0_x++) {
  loop_grid0_y:
    for (b0_y = 0; b0_y < size; b0_y++) {
    loop_grid0_z:
      for (b0_z = 0; b0_z < size; b0_z++) {
      // Iterate over the 3x3x3 (modulo boundary conditions) cube of blocks
      // around b0
      loop_grid1_x:
        for (b1_x = MAX(0, b0_x - 1); b1_x < MIN(size, b0_x + 2); b1_x++) {
        loop_grid1_y:
          for (b1_y = MAX(0, b0_y - 1); b1_y < MIN(size, b0_y + 2); b1_y++) {
          loop_grid1_z:
            for (b1_z = MAX(0, b0_z - 1); b1_z < MIN(size, b0_z + 2); b1_z++) {
              // For all points in b0
              int b1_base_idx = b1_x * blockSide * blockSide * densityFactor +
                                b1_y * blockSide * densityFactor +
                                b1_z * densityFactor;
              int q_idx_range = n_points[b1_x * blockSide * blockSide +
                                         b1_y * blockSide + b1_z];
            loop_p:
              for (p_idx = 0; p_idx < n_points[b0_x * blockSide * blockSide +
                                               b0_y * blockSide + b0_z];
                   p_idx++) {
                int b0_p_idx = b0_x * blockSide * blockSide * densityFactor +
                               b0_y * blockSide * densityFactor +
                               b0_z * densityFactor + p_idx;
                p_x = position_ox[b0_p_idx];
                p_y = position_oy[b0_p_idx];
                p_z = position_oz[b0_p_idx];
                TYPE sum_x = force_ox[b0_p_idx];
                TYPE sum_y = force_oy[b0_p_idx];
                TYPE sum_z = force_oz[b0_p_idx];
              // For all points in b1
              loop_q:
                for (q_idx = 0; q_idx < q_idx_range; q_idx++) {
                  int q_offset = b1_base_idx + q_idx;
                  q_x = position_ox[q_offset];
                  q_y = position_oy[q_offset];
                  q_z = position_oz[q_offset];

                  // Don't compute our own
                  if (q_x != p_x || q_y != p_y || q_z != p_z) {
                    // Compute the LJ-potential
                    dx = p_x - q_x;
                    dy = p_y - q_y;
                    dz = p_z - q_z;
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
                force_ox[b0_p_idx] = sum_x;
                force_oy[b0_p_idx] = sum_y;
                force_oz[b0_p_idx] = sum_z;
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
        for (int h = 0; h < densityFactor; h++) {
          int idx = i * blockSide * blockSide * densityFactor +
                    j * blockSide * densityFactor + k * densityFactor + h;
          cheri_store(force_x, idx, force_ox[idx], &flag_buf, caps[1]);
        }
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++) {
          int idx = i * blockSide * blockSide * densityFactor +
                    j * blockSide * densityFactor + k * densityFactor + h;
          cheri_store(force_y, idx, force_oy[idx], &flag_buf, caps[2]);
        }
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++) {
          int idx = i * blockSide * blockSide * densityFactor +
                    j * blockSide * densityFactor + k * densityFactor + h;
          cheri_store(force_z, idx, force_oz[idx], &flag_buf, caps[3]);
        }

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
