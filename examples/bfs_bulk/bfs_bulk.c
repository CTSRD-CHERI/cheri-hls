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

void hls_top(node_t nodes[N_NODES], edge_t edges[N_EDGES],
             node_index_t starting_node, level_t level[N_NODES],
             edge_index_t level_counts[N_LEVELS], int levels, int node) {
#pragma HLS INTERFACE m_axi port = nodes
#pragma HLS INTERFACE m_axi port = edges
#pragma HLS INTERFACE m_axi port = level
#pragma HLS INTERFACE m_axi port = level_counts
#pragma HLS INTERFACE s_axilite port = starting_node
#pragma HLS INTERFACE s_axilite port = level
#pragma HLS INTERFACE s_axilite port = node
#pragma HLS INTERFACE s_axilite port = return

  node_index_t n;
  edge_index_t e;
  level_t horizon;
  edge_index_t cnt;

  level[starting_node] = 0;
  level_counts[0] = 1;

loop_horizons:
  for (horizon = 0; horizon < levels; horizon++) {
    cnt = 0;
  // Add unmarked neighbors of the current horizon to the next horizon
  loop_nodes:
    for (n = 0; n < node; n++) {
      if (level[n] == horizon) {
        edge_index_t tmp_begin = nodes[n].edge_begin;
        edge_index_t tmp_end = nodes[n].edge_end;
      loop_neighbors:
        for (e = tmp_begin; e < tmp_end; e++) {
          node_index_t tmp_dst = edges[e].dst;
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
}

int main() {
  node_t nodes[N_NODES] = {{1, 1}};
  edge_t edges[N_EDGES] = {{1}};
  node_index_t starting_node = 0;
  level_t level[N_NODES] = {0};
  edge_index_t level_counts[N_LEVELS] = {1};

  hls_top(nodes, edges, starting_node, level, level_counts, N_LEVELS, N_NODES);
  return 0;
}
