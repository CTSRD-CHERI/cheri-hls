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
#define TYPE int
typedef char tok_t;
typedef TYPE prob_t;
typedef char state_t;
typedef int step_t;

#define N_STATES 64
#define N_OBS 140
#define N_TOKENS 64
void hls_top(int n_tokens, tok_t obs[N_OBS], prob_t init[N_STATES],
             prob_t transition[N_STATES * N_STATES],
             prob_t emission[N_STATES * N_TOKENS], state_t path[N_OBS]) {

  prob_t llike[N_OBS][N_STATES];
  step_t t;
  state_t prev, curr;
  prob_t min_p, p;
  state_t min_s, s;
// All probabilities are in -log space. (i.e.: P(x) => -log(P(x)) )

// Initialize with first observation and initial probabilities
L_init:
  for (s = 0; s < N_STATES; s++) {
    llike[0][s] = init[s] + emission[s * n_tokens + obs[0]];
  }

// Iteratively compute the probabilities over time
L_timestep:
  for (t = 1; t < N_OBS; t++) {
  L_curr_state:
    for (curr = 0; curr < N_STATES; curr++) {
      // Compute likelihood HMM is in current state and where it came from.
      prev = 0;
      min_p = llike[t - 1][prev] + transition[prev * N_STATES + curr] +
              emission[curr * n_tokens + obs[t]];
    L_prev_state:
      for (prev = 1; prev < N_STATES; prev++) {
        p = llike[t - 1][prev] + transition[prev * N_STATES + curr] +
            emission[curr * n_tokens + obs[t]];
        if (p < min_p) {
          min_p = p;
        }
      }
      llike[t][curr] = min_p;
    }
  }

  // Identify end state
  min_s = 0;
  min_p = llike[N_OBS - 1][min_s];
L_end:
  for (s = 1; s < N_STATES; s++) {
    p = llike[N_OBS - 1][s];
    if (p < min_p) {
      min_p = p;
      min_s = s;
    }
  }
  path[N_OBS - 1] = min_s;

// Backtrack to recover full path
L_backtrack:
  for (t = N_OBS - 2; t >= 0; t--) {
    min_s = 0;
    min_p = llike[t][min_s] + transition[min_s * N_STATES + path[t + 1]];
  L_state:
    for (s = 1; s < N_STATES; s++) {
      p = llike[t][s] + transition[s * N_STATES + path[t + 1]];
      if (p < min_p) {
        min_p = p;
        min_s = s;
      }
    }
    path[t] = min_s;
  }
}

u64 base_phy_addr[NUM] = {0xC0010000, 0xC0011000, 0xC0012000, 0xC0013000,
                          0xC0014000, 0xC0015000, 0xC0016000, 0xC0017000};
tok_t a[NUM][N_OBS] = {{0}};
prob_t b[NUM][N_STATES] = {{0}};
prob_t c[NUM][N_STATES * N_STATES] = {{0}};
prob_t d[NUM][N_STATES * N_TOKENS] = {{0}};
state_t e[NUM][N_OBS] = {{0}};

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
    hls_top(N_TOKENS, a[i], b[i], c[i], d[i], e[i]);
  asm("fence");

  success();
  return 0;
}
