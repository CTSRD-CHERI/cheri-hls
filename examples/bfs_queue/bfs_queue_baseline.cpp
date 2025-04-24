#define N 1000
#include "ap_int.h"
#include <stdint.h>
#include <stdio.h>

/*
Implementation based on:
Hong, Oguntebi, Olukotun. "Efficient Parallel Graph Exploration on Multi-Core
CPU and GPU." PACT, 2011.
*/

#define Q_PUSH(node)                                                           \
  {                                                                            \
    queue[q_in == 0 ? N_NODES - 1 : q_in - 1] = node;                          \
    q_in = (q_in + 1) % N_NODES;                                               \
  }
#define Q_PEEK() (queue[q_out])
#define Q_POP()                                                                \
  { q_out = (q_out + 1) % N_NODES; }
#define Q_EMPTY()                                                              \
  (q_in > q_out ? q_in == q_out + 1 : (q_in == 0) && (q_out == N_NODES - 1))

// Terminology (but not values) from graph500 spec
//   graph density = 2^-(2*SCALE - EDGE_FACTOR)
#define SCALE 8
#define EDGE_FACTOR 16

#define N_NODES (1 << SCALE)
#define N_EDGES (N_NODES * EDGE_FACTOR)

// upper limit
#define N_LEVELS 10

// Larger than necessary for small graphs, but appropriate for large ones
typedef int edge_index_t;
typedef int node_index_t;

typedef struct edge_t_struct {
  // These fields are common in practice, but we elect not to use them.
  // weight_t weight;
  // node_index_t src;
  node_index_t dst;
} edge_t;

typedef struct node_t_struct {
  edge_index_t edge_begin;
  edge_index_t edge_end;
} node_t;

typedef int level_t;
#define MAX_LEVEL 255
typedef uint16_t u16;
typedef uint32_t u32;

void stream_write(u32 size, int *array1, int *array2) {
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
  node_index_t queue[N_NODES];
  node_index_t q_in, q_out;
  node_index_t dummy;
  node_index_t n;
  edge_index_t e;

  int nodes_edge_begin[N_NODES];
  int nodes_edge_end[N_NODES];
  int edges_dst[N_EDGES];
  level_t level[N_NODES] = {0};
  edge_index_t level_counts[N_LEVELS] = {0};

  for (int i = 0; i < node; i++) {
    nodes_edge_begin[i] = xnodes_b[i];
  }
  for (int i = 0; i < node; i++) {
    nodes_edge_end[i] = xnodes_e[i];
  }

  for (int i = 0; i < N_EDGES; i++) {
    edges_dst[i] = xedges[i];
  }

  q_in = 1;
  q_out = 0;
  level[starting_node] = 0;
  level_counts[0] = 1;
  Q_PUSH(starting_node);

loop_queue:
  for (dummy = 0; dummy < node; dummy++) { // Typically while(not_empty(queue)){
    if (Q_EMPTY())
      break;
    n = Q_PEEK();
    Q_POP();
    edge_index_t tmp_begin = nodes_edge_begin[n];
    edge_index_t tmp_end = nodes_edge_end[n];
  loop_neighbors:
    for (e = tmp_begin; e < tmp_end; e++) {
      node_index_t tmp_dst = edges_dst[e];
      level_t tmp_level = level[tmp_dst];

      if (tmp_level == MAX_LEVEL) { // Unmarked
        level_t tmp_level = level[n] + 1;
        level[tmp_dst] = tmp_level;
        level_counts[tmp_level] = level_counts[tmp_level] + 1;
        Q_PUSH(tmp_dst);
      }
    }
  }
  // for (int i = 0; i < node; i++) {
  //   xlevel[i] = level[i];
  // }
  // for (int i = 0; i < levels; i++) {
  //   xlevel_counts[i] = level_counts[i];
  // }
  stream_write(node, xlevel, level);
  stream_write(levels, xlevel_counts, level_counts);

  // for (int i = 0; i < node; i++) {
  //   int level_elem = level[i];
  //   cheri_store(xlevel, i, level_elem, &flag_buf, caps[3]);
  // }
  //
  // for (int i = 0; i < node; i++) {
  //  checkAccess(&flag_buf, caps[3], i, 4, true);
  //}
  // if (flag_buf) {
  //  for (int i = 0; i < node; i++) {
  //    xlevel[i] = level[i];
  //  }
  //}
  // for (int i = 0; i < levels; i++) {
  //  checkAccess(&flag_buf, caps[4], i, 4, true);
  //}
  // if (flag_buf) {
  //  for (int i = 0; i < levels; i++) {
  //    xlevel_counts[i] = level_counts[i];
  //  }
  //}

  // for loop from 0 to levels, check access for each one
  //  if statement, if flag not triggered, then run for loop just do a simple
  //  store

  // for (int i = 0; i < levels; i++) {
  //   int xlevel_counts_elem = level_counts[i];
  //   cheri_store(xlevel_counts, i, xlevel_counts_elem, &flag_buf, caps[4]);
  // }
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
