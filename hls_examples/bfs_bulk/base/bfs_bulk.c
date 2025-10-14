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

  node_t nodes[N_NODES];
  edge_t edges[N_EDGES];
  level_t level[N_NODES] = {0};
  edge_index_t level_counts[N_LEVELS] = {0};

  for (int i = 0; i < node; i++)
    nodes[i].edge_begin = xnodes_b[i];
  for (int i = 0; i < node; i++)
    nodes[i].edge_end = xnodes_e[i];

  for (int i = 0; i < N_EDGES; i++)
    edges[i].dst = xedges[i];

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

  for (int i = 0; i < node; i++)
    xlevel[i] = level[i];

  for (int i = 0; i < levels; i++)
    xlevel_counts[i] = level_counts[i];
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
