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

void hls_top(node_index_t starting_node, int levels, int node,
             node_t nodes[N_NODES], edge_t edges[N_EDGES],
             level_t level[N_NODES], edge_index_t level_counts[N_LEVELS]) {
#pragma HLS INTERFACE m_axi port = nodes
#pragma HLS INTERFACE m_axi port = edges
#pragma HLS INTERFACE m_axi port = level
#pragma HLS INTERFACE m_axi port = level_counts
#pragma HLS INTERFACE s_axilite port = starting_node
#pragma HLS INTERFACE s_axilite port = level
#pragma HLS INTERFACE s_axilite port = node
#pragma HLS INTERFACE s_axilite port = return

  node_index_t queue[N_NODES];
  node_index_t q_in, q_out;
  node_index_t dummy;
  node_index_t n;
  edge_index_t e;

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
    edge_index_t tmp_begin = nodes[n].edge_begin;
    edge_index_t tmp_end = nodes[n].edge_end;
  loop_neighbors:
    for (e = tmp_begin; e < tmp_end; e++) {
      node_index_t tmp_dst = edges[e].dst;
      level_t tmp_level = level[tmp_dst];

      if (tmp_level == MAX_LEVEL) { // Unmarked
        level_t tmp_level = level[n] + 1;
        level[tmp_dst] = tmp_level;
        ++level_counts[tmp_level];
        Q_PUSH(tmp_dst);
      }
    }
  }
}

int main() {
  node_t nodes[N_NODES] = {{1, 1}};
  edge_t edges[N_EDGES] = {{1}};
  node_index_t starting_node = 0;
  level_t level[N_NODES] = {0};
  edge_index_t level_counts[N_LEVELS] = {1};

  hls_top(starting_node, N_LEVELS, N_NODES, nodes, edges, level, level_counts);
  return 0;
}
