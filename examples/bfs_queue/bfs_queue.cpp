#define N 1000
#include "ap_int.h"
#include <stdint.h>
#include <stdio.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;

typedef struct {
  int base;
  int top;
  bool read;
  bool write;
} Cap;

Cap decode(ap_uint<32> buffer_0, ap_uint<32> buffer_1, ap_uint<32> buffer_2,
           ap_uint<32> buffer_3) {
#pragma HLS INLINE

  ap_uint<64> cap = (buffer_3, buffer_2);
  ap_uint<64> addr = (buffer_1, buffer_0);

  cap ^= 0x00001ffffc018004;         // nullptr [127:64]
  bool read = cap.range(61, 61);     // getField(cap, 61, 1);
  bool write = cap.range(60, 60);    // getField(cap, 60, 1);
  bool f = (cap.range(47, 47) != 0); //(getField(cap, 47, 1) != 0); // bit 111
  bool I_E =
      (cap.range(26, 26) != 0); //(getField(cap, 26, 1) != 0);    // bit 90
  ap_uint<9> T_11_3 =
      cap.range(25, 17); // getField(cap, 17, 9);  // bits [89:81]
  ap_uint<3> T_E =
      cap.range(16, 14); // getField(cap, 14, 3);     // bits [80:78]
  ap_uint<11> B_13_3 = cap.range(13, 3); // getField(cap, 3, 11); // bits
                                         // [77:67]
  ap_uint<3> B_E = cap.range(2, 0); // getField(cap, 0, 3);      // bits [66:64]
  ap_uint<6> E = 0;
  ap_uint<14> T_13_0 = 0;
  ap_uint<14> B_13_0 = 0;
  bool L_carry_out = false;

  if (!I_E) {
    E = 0;
    T_13_0 = (T_11_3, T_E);
    B_13_0 = (B_13_3, B_E);
    ap_uint<12> T_11_0 = T_13_0.range(11, 0); //& 0x0fff;
    ap_uint<12> B_11_0 = B_13_0.range(11, 0); //& 0x0fff;
    L_carry_out = (T_11_0 < B_11_0);
  } else {
    E = (T_E, B_E);
    T_13_0 = (T_11_3 << 3);
    B_13_0 = (B_13_3 << 3);
    ap_uint<12> T_11_3_only = T_13_0.range(11, 3); //(T_13_0 >> 3) & 0x01ff;
    ap_uint<12> B_11_3_only = T_13_0.range(11, 3); //(B_13_0 >> 3) & 0x01ff;
    L_carry_out = (T_11_3_only < B_11_3_only);
  }
  ap_uint<2> B_13_12 = B_13_0.range(13, 12); //(B_13_0 >> 12) & 0x3;
  ap_uint<2> T_13_12 = B_13_12 + (L_carry_out ? 1 : 0) + (I_E ? 1 : 0);

  T_13_0 = (T_13_12, T_13_0.range(11, 0));

  ap_uint<3> A3 = ((addr >> (E + 11)) & 0x7);
  ap_uint<3> T3 = T_13_0.range(13, 11); //((T_13_0 >> 11) & 0x7);
  ap_uint<3> B3 = B_13_0.range(13, 11); //((B_13_0 >> 11) & 0x7);
  ap_uint<3> R = B3 - 1;

  ap_int<2> c_t = 0;
  ap_int<2> c_b = 0;

  if ((A3 < R) && !(T3 < R)) {
    c_t = -1;
  } else if (!(A3 < R) && (T3 < R)) {
    c_t = 1;
  }
  if ((A3 < R) && !(B3 < R)) {
    c_b = -1;
  } else if (!(A3 < R) && (T3 < R)) {
    c_b = 1;
  }
  u32 a_top = addr >> (E + 14);
  u32 top = ((a_top + c_t) << (E + 14)) | ((u32)(T_13_0 & 0x3FFF) << E);
  u32 base = ((a_top + c_b) << (E + 14)) | ((u32)(B_13_0 & 0x3FFF) << E);

  Cap c;
  c.base = base - addr;
  c.top = top - addr;
  c.read = read;
  c.write = write;
  return c;
}

void load_cap(int num, u32 *buffer, u32 *cap, Cap *caps) {
#pragma HLS INLINE

  for (int i = 0; i < num * 4; i++)
#pragma HLS PIPELINE
    buffer[i] = cap[i];

  int i = 0;
  for (int j = 0; j < num; j++) {
    caps[j] = decode(buffer[i], buffer[i + 1], buffer[i + 2], buffer[i + 3]);
    i += 4;
  }
}

void create_cap(int size, Cap *caps, u8 index) {
#pragma HLS INLINE
  Cap new_cap;
  new_cap.base = 0;
  new_cap.top = size * 4;
  new_cap.write = true;
  new_cap.read = true;
  caps[index] = new_cap;
  return;
}

void checkAccess(u32 *flag_buf, Cap cap, u16 offset, ap_uint<3> nBytes,
                 bool isWrite) {
#pragma HLS INLINE
  *flag_buf |=
      !((cap.base <= (4 * offset)) && ((4 * offset + nBytes) <= cap.top) &&
        (!isWrite || (cap.write)) && (isWrite || (cap.read)));
}

int cheri_load(int *buf, int i, u32 *flag_buf, Cap cap) {
#pragma HLS INLINE
  checkAccess(flag_buf, cap, i, 4, false);
  int b = buf[i];
  return (*flag_buf) ? b : 0;
}

void cheri_store(int *buf, int i, int val, u32 *flag_buf, Cap cap) {
#pragma HLS INLINE
  checkAccess(flag_buf, cap, i, 4, true);
  buf[i] = flag_buf ? val : buf[i];
  return;
}
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

  int nodes_edge_begin[N_NODES];
  int nodes_edge_end[N_NODES];
  int edges_dst[N_EDGES];
  level_t level[N_NODES] = {0};
  edge_index_t level_counts[N_LEVELS] = {0};

  u32 flag_buf = 1;
  Cap caps[5];
  u32 buffer[20];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete
  load_cap(5, buffer, cap, caps);

  for (int i = 0; i < node; i++) {
    int xnodes_b_elem = cheri_load(xnodes_b, i, &flag_buf, caps[0]);
    nodes_edge_begin[i] = xnodes_b_elem;
  }
  for (int i = 0; i < node; i++) {
    int xnodes_e_elem = cheri_load(xnodes_e, i, &flag_buf, caps[1]);
    nodes_edge_end[i] = xnodes_e_elem;
  }

  for (int i = 0; i < N_EDGES; i++) {
    int xedges_elem = cheri_load(xedges, i, &flag_buf, caps[2]);
    edges_dst[i] = xedges_elem;
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

  for (int i = 0; i < node; i++) {
    int level_elem = level[i];
    cheri_store(xlevel, i, level_elem, &flag_buf, caps[4]);
  }

  for (int i = 0; i < levels; i++) {
    int xlevel_counts_elem = level_counts[i];
    cheri_store(xlevel_counts, i, xlevel_counts_elem, &flag_buf, caps[5]);
  }
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
