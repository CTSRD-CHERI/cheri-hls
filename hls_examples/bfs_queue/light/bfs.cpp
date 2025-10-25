/*
Implementation based on:
Hong, Oguntebi, Olukotun. "Efficient Parallel Graph Exploration on Multi-Core
CPU and GPU." PACT, 2011.
*/

#include "../../chls-light.h"

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
  // 11 caps: 5 for input arrays + 6 for local arrays
  Cap caps[11];
  u32 buffer[20];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(5, buffer, cap, caps);

  int nodes_begin[N_NODES];
  int nodes_end[N_NODES];
  edge_t edges[N_EDGES];
  level_t level[N_NODES] = {0};
  edge_index_t level_counts[N_LEVELS] = {0};

  create_cap(N_NODES, caps, 5);      // queue
  create_cap(N_NODES, caps, 6);      // nodes_begin
  create_cap(N_NODES, caps, 7);      // nodes_end
  create_cap(N_EDGES, caps, 8);      // edges
  create_cap(N_NODES, caps, 9);      // level
  create_cap(N_LEVELS, caps, 10);    // level_counts

  for (int i = 0; i < node; i++) {
    int temp = cheri_load(xnodes_b, i, &flag_buf, caps[0]);
    cheri_store(nodes_begin, i, temp, &flag_buf, caps[6]);
  }
  for (int i = 0; i < node; i++) {
    int temp = cheri_load(xnodes_e, i, &flag_buf, caps[1]);
    cheri_store(nodes_end, i, temp, &flag_buf, caps[7]);
  }

  for (int i = 0; i < N_EDGES; i++) {
    edge_t temp = cheri_load(xedges, i, &flag_buf, caps[2]);
    cheri_store(edges, i, temp, &flag_buf, caps[8]);
  }

  q_in = 1;
  q_out = 0;
  cheri_store(level, starting_node, 0, &flag_buf, caps[9]);
  cheri_store(level_counts, 0, 1, &flag_buf, caps[10]);

  // Q_PUSH(starting_node)
  cheri_store(queue, q_in == 0 ? N_NODES - 1 : q_in - 1, starting_node, &flag_buf, caps[5]);
  q_in = (q_in + 1) % N_NODES;

loop_queue:
  for (dummy = 0; dummy < node; dummy++) { // Typically while(not_empty(queue)){
    // Q_EMPTY()
    if (q_in > q_out ? q_in == q_out + 1 : (q_in == 0) && (q_out == N_NODES - 1))
      break;
    // Q_PEEK()
    n = cheri_load(queue, q_out, &flag_buf, caps[5]);
    // Q_POP()
    q_out = (q_out + 1) % N_NODES;

    edge_index_t tmp_begin = cheri_load(nodes_begin, n, &flag_buf, caps[6]);
    edge_index_t tmp_end = cheri_load(nodes_end, n, &flag_buf, caps[7]);
  loop_neighbors:
    for (e = tmp_begin; e < tmp_end; e++) {
      node_index_t tmp_dst = cheri_load(edges, e, &flag_buf, caps[8]);
      level_t tmp_level = cheri_load(level, tmp_dst, &flag_buf, caps[9]);

      if (tmp_level == MAX_LEVEL) { // Unmarked
        level_t level_n = cheri_load(level, n, &flag_buf, caps[9]);
        level_t new_level = level_n + 1;
        cheri_store(level, tmp_dst, new_level, &flag_buf, caps[9]);

        edge_index_t count = cheri_load(level_counts, new_level, &flag_buf, caps[10]);
        cheri_store(level_counts, new_level, count + 1, &flag_buf, caps[10]);

        // Q_PUSH(tmp_dst)
        cheri_store(queue, q_in == 0 ? N_NODES - 1 : q_in - 1, tmp_dst, &flag_buf, caps[5]);
        q_in = (q_in + 1) % N_NODES;
      }
    }
  }

  for (int i = 0; i < node; i++) {
    level_t temp = cheri_load(level, i, &flag_buf, caps[9]);
    cheri_store(xlevel, i, temp, &flag_buf, caps[3]);
  }

  for (int i = 0; i < levels; i++) {
    edge_index_t temp = cheri_load(level_counts, i, &flag_buf, caps[10]);
    cheri_store(xlevel_counts, i, temp, &flag_buf, caps[4]);
  }

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
