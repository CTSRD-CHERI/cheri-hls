/*
Implementations based on:
Harish and Narayanan. "Accelerating large graph algorithms on the GPU using
CUDA." HiPC, 2007. Hong, Oguntebi, Olukotun. "Efficient Parallel Graph
Exploration on Multi-Core CPU and GPU." PACT, 2011.
*/

// Terminology (but not values) from graph500 spec
//   graph density = 2^-(2*SCALE - EDGE_FACTOR)
#define SCALE 8
#define EDGE_FACTOR 16

#define N_NODES (1LL << SCALE)
#define N_EDGES (N_NODES * EDGE_FACTOR)

// upper limit
#define N_LEVELS 10
#include "ap_int.h"
#include <stdint.h>

// Larger than necessary for small graphs, but appropriate for large ones
typedef int edge_index_t;
typedef int node_index_t;
typedef uint16_t u16;
typedef uint32_t u32;

// typedef struct edge_t_struct {
//   // These fields are common in practice, but we elect not to use them.
//   // weight_t weight;
//   // node_index_t src;
//   node_index_t dst;
// } edge_t;
//
// typedef struct node_t_struct {
//   edge_index_t edge_begin;
//   edge_index_t edge_end;
// } node_t;

typedef int level_t;

void stream_write(u32 size, int *array1, int *array2) {
#pragma HLS INLINE
  for (int i = 0; i < size; i++) {
    array1[i] = array2[i];
  }
}

void hls_top(node_index_t starting_node, int levels, int node,
             int xnodes_b[N_NODES], int xnodes_e[N_NODES], int xedges[N_EDGES],
             int xlevel[N_NODES], int xlevel_counts[N_LEVELS]) {
#pragma HLS INTERFACE m_axi port = xnodes_b
#pragma HLS INTERFACE m_axi port = xnodes_e
#pragma HLS INTERFACE m_axi port = xedges
#pragma HLS INTERFACE m_axi port = xlevel
#pragma HLS INTERFACE m_axi port = xlevel_counts
#pragma HLS INTERFACE s_axilite port = starting_node
#pragma HLS INTERFACE s_axilite port = levels
#pragma HLS INTERFACE s_axilite port = node
#pragma HLS INTERFACE s_axilite port = return

  node_index_t n;
  edge_index_t e;
  level_t horizon;
  edge_index_t cnt;

  int node_edge_begin[N_NODES];
  int node_edge_end[N_NODES];
  int edges_dst[N_EDGES];
  level_t level[N_NODES] = {0};
  edge_index_t level_counts[N_LEVELS] = {0};

  for (int i = 0; i < node; i++)
    node_edge_begin[i] = xnodes_b[i];
  for (int i = 0; i < node; i++)
    node_edge_end[i] = xnodes_e[i];

  for (int i = 0; i < N_EDGES; i++)
    edges_dst[i] = xedges[i];

  level[starting_node] = 0;
  level_counts[0] = 1;
loop_horizons:
  for (horizon = 0; horizon < levels; horizon++) {
    cnt = 0;
  // Add unmarked neighbors of the current horizon to the next horizon
  loop_nodes:
    for (n = 0; n < node; n++) {
      if (level[n] == horizon) {
        edge_index_t tmp_begin = node_edge_begin[n];
        edge_index_t tmp_end = node_edge_end[n];
      loop_neighbors:
        for (e = tmp_begin; e < tmp_end; e++) {
          node_index_t tmp_dst = edges_dst[e];
          level_t tmp_level = level[tmp_dst];

          if (tmp_level == 255) { // Unmarked
            level[tmp_dst] = horizon + 1;
            ++cnt;
          }
        }
      }
    }
    if ((level_counts[horizon + 1] = cnt) == 0)
      break;
  }
  stream_write(node, xlevel, level);
  stream_write(levels, xlevel_counts, level_counts);
}

int main() {
  int nodes_b[N_NODES] = {1};
  int nodes_e[N_NODES] = {1};
  int edges[N_EDGES] = {1};
  int starting_node = 0;
  int level[N_NODES] = {0};
  int level_counts[N_LEVELS] = {1};

  hls_top(starting_node, N_LEVELS, N_NODES, nodes_b, nodes_e, edges, level,
          level_counts);
  return 0;
}
