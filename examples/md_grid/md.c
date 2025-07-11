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

void hls_top(int size, int xn_points[blockSide][blockSide][blockSide],
             int force_x[blockSide][blockSide][blockSide][densityFactor],
             int force_y[blockSide][blockSide][blockSide][densityFactor],
             int force_z[blockSide][blockSide][blockSide][densityFactor],
             int position_x[blockSide][blockSide][blockSide][densityFactor],
             int position_y[blockSide][blockSide][blockSide][densityFactor],
             int position_z[blockSide][blockSide][blockSide][densityFactor]) {
#pragma HLS INTERFACE m_axi port = xn_points
#pragma HLS INTERFACE m_axi port = force_x
#pragma HLS INTERFACE m_axi port = force_y
#pragma HLS INTERFACE m_axi port = force_z
#pragma HLS INTERFACE m_axi port = position_x
#pragma HLS INTERFACE m_axi port = position_y
#pragma HLS INTERFACE m_axi port = position_z
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return

  ivector_t b0, b1; // b0 is the current block, b1 is b0 or a neighboring block
  dvector_t p, q;   // p is a point in b0, q is a point in either b0 or b1
  int p_idx, q_idx;
  TYPE dx, dy, dz, r2inv, r6inv, potential, f;

  int n_points[blockSide][blockSide][blockSide];
  dvector_t force[blockSide][blockSide][blockSide][densityFactor];
  dvector_t position[blockSide][blockSide][blockSide][densityFactor];

  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        n_points[i][j][k] = xn_points[i][j][k];

  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          force[i][j][k][h].x = force_x[i][j][k][h];
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          force[i][j][k][h].y = force_y[i][j][k][h];
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          force[i][j][k][h].z = force_z[i][j][k][h];
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          position[i][j][k][h].x = position_x[i][j][k][h];
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          position[i][j][k][h].y = position_y[i][j][k][h];
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          position[i][j][k][h].z = position_z[i][j][k][h];

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

  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          force_x[i][j][k][h] = force[i][j][k][h].x;
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          force_y[i][j][k][h] = force[i][j][k][h].y;
  for (int i = 0; i < size; i++)
    for (int j = 0; j < size; j++)
      for (int k = 0; k < size; k++)
        for (int h = 0; h < densityFactor; h++)
          force_z[i][j][k][h] = force[i][j][k][h].z;
}

int main() {

  int n_points[blockSide][blockSide][blockSide] = {0};
  int force_x[blockSide][blockSide][blockSide][densityFactor] = {{1, 1, 1}};
  int force_y[blockSide][blockSide][blockSide][densityFactor] = {{1, 1, 1}};
  int force_z[blockSide][blockSide][blockSide][densityFactor] = {{1, 1, 1}};
  int position_x[blockSide][blockSide][blockSide][densityFactor] = {{1, 1, 1}};
  int position_y[blockSide][blockSide][blockSide][densityFactor] = {{1, 1, 1}};
  int position_z[blockSide][blockSide][blockSide][densityFactor] = {{1, 1, 1}};
  hls_top(blockSide, n_points, force_x, force_y, force_z, position_x,
          position_y, position_z);

  return 0;
}
