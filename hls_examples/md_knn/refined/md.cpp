/*
Implemenataion based on:
A. Danalis, G. Marin, C. McCurdy, J. S. Meredith, P. C. Roth, K. Spafford, V.
Tipparaju, and J. S. Vetter. The scalable heterogeneous computing (shoc)
benchmark suite. In Proceedings of the 3rd Workshop on General-Purpose
Computation on Graphics Processing Units, 2010.
*/

#include "../../chls.h"

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
             int xNL[nAtoms * maxNeighbors], u32 *flag, u32 cap[28]) {
#pragma HLS INTERFACE m_axi port = xforce_x
#pragma HLS INTERFACE m_axi port = xforce_y
#pragma HLS INTERFACE m_axi port = xforce_z
#pragma HLS INTERFACE m_axi port = xposition_x
#pragma HLS INTERFACE m_axi port = xposition_y
#pragma HLS INTERFACE m_axi port = xposition_z
#pragma HLS INTERFACE m_axi port = xNL
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return
  TYPE delx, dely, delz, r2inv;
  TYPE r6inv, potential, force, j_x, j_y, j_z;
  TYPE i_x, i_y, i_z, fx, fy, fz;

  int i, j, jidx;

  u32 flag_buf = 0;
  // 7 arrays (xforce_x, xforce_y, xforce_z, xposition_x, xposition_y,
  // xposition_z, xNL) * 4 = 28
  Cap caps[7];
  u32 buffer[28];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(7, buffer, cap, caps);

  TYPE force_x[nAtoms];
  TYPE force_y[nAtoms];
  TYPE force_z[nAtoms];
  TYPE position_x[nAtoms];
  TYPE position_y[nAtoms];
  TYPE position_z[nAtoms];
  int NL[nAtoms * maxNeighbors];

  for (i = 0; i < size; i++)
    position_x[i] = cheri_load(xposition_x, i, &flag_buf, caps[3]);
  for (i = 0; i < size; i++)
    position_y[i] = cheri_load(xposition_y, i, &flag_buf, caps[4]);
  for (i = 0; i < size; i++)
    position_z[i] = cheri_load(xposition_z, i, &flag_buf, caps[5]);
  for (i = 0; i < size * maxNeighbors; i++)
    NL[i] = cheri_load(xNL, i, &flag_buf, caps[6]);

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
    cheri_store(xforce_x, i, force_x[i], &flag_buf, caps[0]);
  for (i = 0; i < size; i++)
    cheri_store(xforce_y, i, force_y[i], &flag_buf, caps[1]);
  for (i = 0; i < size; i++)
    cheri_store(xforce_z, i, force_z[i], &flag_buf, caps[2]);

  *flag = flag_buf;
}

int main() {
  TYPE force_x[nAtoms] = {0};
  TYPE force_y[nAtoms] = {0};
  TYPE force_z[nAtoms] = {0};
  TYPE position_x[nAtoms] = {0};
  TYPE position_y[nAtoms] = {0};
  TYPE position_z[nAtoms] = {0};
  int NL[nAtoms * maxNeighbors] = {0};

  u32 cap[28] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(nAtoms, force_x, force_y, force_z, position_x, position_y, position_z,
          NL, &flag, cap);

  return 0;
}
