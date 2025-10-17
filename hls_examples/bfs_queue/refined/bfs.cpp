/*
Implementation based on:
Hong, Oguntebi, Olukotun. "Efficient Parallel Graph Exploration on Multi-Core
CPU and GPU." PACT, 2011.
*/

#include "../../chls.h"

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
typedef int edge_t;

typedef int level_t;
#define MAX_LEVEL 255

void hls_top(node_index_t starting_node, int levels, int node,
             int xnodes_b[N_NODES], int xnodes_e[N_NODES], int xedges[N_EDGES],
             int xlevel[N_NODES], int xlevel_counts[N_LEVELS], u32 *flag,
             u32 cap[20]) {
#pragma HLS INTERFACE m_axi port = xnodes_b
#pragma HLS INTERFACE m_axi port = xnodes_e
#pragma HLS INTERFACE m_axi port = xedges
#pragma HLS INTERFACE m_axi port = xlevel
#pragma HLS INTERFACE m_axi port = xlevel_counts
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = starting_node
#pragma HLS INTERFACE s_axilite port = levels
#pragma HLS INTERFACE s_axilite port = node
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  node_index_t queue[N_NODES];
  node_index_t q_in, q_out;
  node_index_t dummy;
  node_index_t n;
  edge_index_t e;

  u32 flag_buf = 0;
  // 5 arrays (xnodes_b, xnodes_e, xedges, xlevel, xlevel_counts) * 4 = 20
  Cap caps[5];
  u32 buffer[20];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(5, buffer, cap, caps);

  int nodes_begin[N_NODES];
  int nodes_end[N_NODES];
  edge_t edges[N_EDGES];
  level_t level[N_NODES] = {0};
  edge_index_t level_counts[N_LEVELS] = {0};

  for (int i = 0; i < node; i++)
    nodes_begin[i] = cheri_load(xnodes_b, i, &flag_buf, caps[0]);
  for (int i = 0; i < node; i++)
    nodes_end[i] = cheri_load(xnodes_e, i, &flag_buf, caps[1]);

  for (int i = 0; i < N_EDGES; i++)
    edges[i] = cheri_load(xedges, i, &flag_buf, caps[2]);

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
    edge_index_t tmp_begin = nodes_begin[n];
    edge_index_t tmp_end = nodes_end[n];
  loop_neighbors:
    for (e = tmp_begin; e < tmp_end; e++) {
      node_index_t tmp_dst = edges[e];
      level_t tmp_level = level[tmp_dst];

      if (tmp_level == MAX_LEVEL) { // Unmarked
        level_t tmp_level = level[n] + 1;
        level[tmp_dst] = tmp_level;
        ++level_counts[tmp_level];
        Q_PUSH(tmp_dst);
      }
    }
  }

  for (int i = 0; i < node; i++)
    cheri_store(xlevel, i, level[i], &flag_buf, caps[3]);

  for (int i = 0; i < levels; i++)
    cheri_store(xlevel_counts, i, level_counts[i], &flag_buf, caps[4]);

  *flag = flag_buf;
}

int main() {
  int nodes_b[N_NODES] = {1};
  int nodes_e[N_NODES] = {1};
  int edges[N_EDGES] = {1};
  int starting_node = 0;
  int level[N_NODES] = {0};
  int level_counts[N_LEVELS] = {1};

  u32 cap[20] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(starting_node, N_LEVELS, N_NODES, nodes_b, nodes_e, edges, level,
          level_counts, &flag, cap);
  return 0;
}
