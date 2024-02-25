#include <stdint.h>
typedef uint32_t u32;
typedef uint32_t u64;

extern volatile u32 tohost;
#define TERM (&tohost)

#ifdef CAPCHECKER
#define CAP
#endif

#ifdef CAP
#include <cheri_init_globals.h>
#include <cheriintrin.h>
#endif

// HLS IP instance
#define NUM 8

#define SCALE 8
#define EDGE_FACTOR 16

#define N_NODES (1LL << SCALE)
#define N_EDGES (N_NODES * EDGE_FACTOR)

// upper limit
#define N_LEVELS 10

typedef int edge_index_t;
typedef int node_index_t;
typedef struct edge_t_struct {
  node_index_t dst;
} edge_t;
typedef struct node_t_struct {
  edge_index_t edge_begin;
  edge_index_t edge_end;
} node_t;
typedef int level_t;

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

void hls_top(node_index_t starting_node, int levels, int node,
             node_t nodes[N_NODES], edge_t edges[N_EDGES],
             level_t level[N_NODES], edge_index_t level_counts[N_LEVELS], ) {

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

u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};

node_t nodes[NUM][N_NODES] = {{{1, 1}}};
edge_t edges[NUM][N_EDGES] = {{{1}}};
node_index_t starting_node[NUM] = {0};
level_t level[NUM][N_NODES] = {{0}};
edge_index_t level_counts[NUM][N_LEVELS] = {{1}};

#ifdef CAPCHECKER
u64 capchecker_base_phy_addr = 0xc0020000;
u64 capchecker_size = 0x00002000;
#define capchecker_nbentries (capchecker_size / sizeof(void *))

void capchecker_install_cap(int cap_idx, void *cap) {
  void *almighty = cheri_ddc_get();
  volatile void **capchecker_ptr =
      __builtin_cheri_address_set(almighty, capchecker_base_phy_addr);
  capchecker_ptr = __builtin_cheri_bounds_set(capchecker_ptr, capchecker_size);
  capchecker_ptr[cap_idx] = cap;
}
#endif

volatile void success() {
#ifdef CAP
  void *almighty = cheri_ddc_get();
  volatile u32 *physical_addr =
      __builtin_cheri_address_set(almighty, (volatile u32 *)&tohost);
  physical_addr = __builtin_cheri_bounds_set(physical_addr, 0x4);
  *physical_addr = 1;
#else
  *((volatile u32 *)&tohost) = 1;
#endif
}

volatile void fail() {
#ifdef CAP
  void *almighty = cheri_ddc_get();
  volatile u32 *physical_addr =
      __builtin_cheri_address_set(almighty, (volatile u32 *)&tohost);
  physical_addr = __builtin_cheri_bounds_set(physical_addr, 0x4);
  *physical_addr = 1;
#else
  *((volatile u32 *)&tohost) = 1;
#endif
}

volatile void reg_error() {
  while (1)
    ;
}

int main() {

  // Initialise .captable
#ifdef CAP
  void *almighty = cheri_ddc_get();
  cheri_init_globals_3(almighty, almighty, almighty);
#endif

  // Compute
  asm("fence");
  for (int i = 0; i < NUM; i++)
    hls_top(starting_node[i], N_LEVELS, N_NODES, nodes[i], edges[i], level[i],
            level_counts[i]);
  asm("fence");

  success();
  return 0;
}
