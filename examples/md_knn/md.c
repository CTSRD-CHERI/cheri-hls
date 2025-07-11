/*
Implemenataion based on:
A. Danalis, G. Marin, C. McCurdy, J. S. Meredith, P. C. Roth, K. Spafford, V.
Tipparaju, and J. S. Vetter. The scalable heterogeneous computing (shoc)
benchmark suite. In Proceedings of the 3rd Workshop on General-Purpose
Computation on Graphics Processing Units, 2010.
*/

#define TYPE int

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

int main() {
  TYPE force_x[nAtoms] = {0};
  TYPE force_y[nAtoms] = {0};
  TYPE force_z[nAtoms] = {0};
  TYPE position_x[nAtoms] = {0};
  TYPE position_y[nAtoms] = {0};
  TYPE position_z[nAtoms] = {0};
  int NL[nAtoms * maxNeighbors] = {0};
  hls_top(nAtoms, force_x, force_y, force_z, position_x, position_y, position_z,
          NL);

  return 0;
}
