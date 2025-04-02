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

// Helper functions to compute indices in flattened arrays
int block_index(int x, int y, int z) {
  return (x * blockSide * blockSide) + (y * blockSide) + z;
}

int point_index(int block_idx, int point_idx) {
  return (block_idx * densityFactor) + point_idx;
}

void hls_top(int size, 
             int xn_points[blockSide * blockSide * blockSide],
             int force_x[blockSide * blockSide * blockSide * densityFactor],
             int force_y[blockSide * blockSide * blockSide * densityFactor],
             int force_z[blockSide * blockSide * blockSide * densityFactor],
             int position_x[blockSide * blockSide * blockSide * densityFactor],
             int position_y[blockSide * blockSide * blockSide * densityFactor],
             int position_z[blockSide * blockSide * blockSide * densityFactor]) {
#pragma HLS INTERFACE m_axi port = xn_points
#pragma HLS INTERFACE m_axi port = force_x
#pragma HLS INTERFACE m_axi port = force_y
#pragma HLS INTERFACE m_axi port = force_z
#pragma HLS INTERFACE m_axi port = position_x
#pragma HLS INTERFACE m_axi port = position_y
#pragma HLS INTERFACE m_axi port = position_z
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return

  int b0_x, b0_y, b0_z; // Current block coordinates
  int b1_x, b1_y, b1_z; // Neighboring block coordinates
  int p_x, p_y, p_z;    // Point coordinates in b0
  int q_x, q_y, q_z;    // Point coordinates in b1
  int p_idx, q_idx;
  int b0_idx, b1_idx;   // Flattened block indices
  int p_flat_idx, q_flat_idx; // Flattened point indices
  TYPE dx, dy, dz, r2inv, r6inv, potential, f;

  // Local arrays
  int n_points[blockSide * blockSide * blockSide];
  int force_x_local[blockSide * blockSide * blockSide * densityFactor];
  int force_y_local[blockSide * blockSide * blockSide * densityFactor];
  int force_z_local[blockSide * blockSide * blockSide * densityFactor];
  int pos_x_local[blockSide * blockSide * blockSide * densityFactor];
  int pos_y_local[blockSide * blockSide * blockSide * densityFactor];
  int pos_z_local[blockSide * blockSide * blockSide * densityFactor];

  // Copy input data to local arrays
  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      for (int k = 0; k < size; k++) {
        int idx = block_index(i, j, k);
        n_points[idx] = xn_points[idx];
      }
    }
  }

  // Copy force data
  for (int i = 0; i < size * size * size * densityFactor; i++) {
    force_x_local[i] = force_x[i];
    force_y_local[i] = force_y[i];
    force_z_local[i] = force_z[i];
    pos_x_local[i] = position_x[i];
    pos_y_local[i] = position_y[i];
    pos_z_local[i] = position_z[i];
  }

  // Iterate over the grid, block by block
  loop_grid0_x:
  for (b0_x = 0; b0_x < size; b0_x++) {
  loop_grid0_y:
    for (b0_y = 0; b0_y < size; b0_y++) {
    loop_grid0_z:
      for (b0_z = 0; b0_z < size; b0_z++) {
        b0_idx = block_index(b0_x, b0_y, b0_z);
        
        // Iterate over the 3x3x3 (modulo boundary conditions) cube of blocks around b0
        loop_grid1_x:
        for (b1_x = MAX(0, b0_x - 1); b1_x < MIN(size, b0_x + 2); b1_x++) {
        loop_grid1_y:
          for (b1_y = MAX(0, b0_y - 1); b1_y < MIN(size, b0_y + 2); b1_y++) {
          loop_grid1_z:
            for (b1_z = MAX(0, b0_z - 1); b1_z < MIN(size, b0_z + 2); b1_z++) {
              b1_idx = block_index(b1_x, b1_y, b1_z);
              int q_idx_range = n_points[b1_idx];
              
              // For all points in b0
              loop_p:
              for (p_idx = 0; p_idx < n_points[b0_idx]; p_idx++) {
                p_flat_idx = point_index(b0_idx, p_idx);
                p_x = pos_x_local[p_flat_idx];
                p_y = pos_y_local[p_flat_idx];
                p_z = pos_z_local[p_flat_idx];
                
                TYPE sum_x = force_x_local[p_flat_idx];
                TYPE sum_y = force_y_local[p_flat_idx];
                TYPE sum_z = force_z_local[p_flat_idx];
                
                // For all points in b1
                loop_q:
                for (q_idx = 0; q_idx < q_idx_range; q_idx++) {
                  q_flat_idx = point_index(b1_idx, q_idx);
                  q_x = pos_x_local[q_flat_idx];
                  q_y = pos_y_local[q_flat_idx];
                  q_z = pos_z_local[q_flat_idx];

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
                
                force_x_local[p_flat_idx] = sum_x;
                force_y_local[p_flat_idx] = sum_y;
                force_z_local[p_flat_idx] = sum_z;
              } // loop_p
            }
          }
        } // loop_grid1_*
      }
    }
  } // loop_grid0_*

  // Copy back results
  for (int i = 0; i < size * size * size * densityFactor; i++) {
    force_x[i] = force_x_local[i];
    force_y[i] = force_y_local[i];
    force_z[i] = force_z_local[i];
  }
}

int main() {
  int n_points[blockSide * blockSide * blockSide] = {0};
  int force_x[blockSide * blockSide * blockSide * densityFactor] = {1};
  int force_y[blockSide * blockSide * blockSide * densityFactor] = {1};
  int force_z[blockSide * blockSide * blockSide * densityFactor] = {1};
  int position_x[blockSide * blockSide * blockSide * densityFactor] = {1};
  int position_y[blockSide * blockSide * blockSide * densityFactor] = {1};
  int position_z[blockSide * blockSide * blockSide * densityFactor] = {1};
  
  hls_top(blockSide, n_points, force_x, force_y, force_z, position_x,
          position_y, position_z);

  return 0;
}
