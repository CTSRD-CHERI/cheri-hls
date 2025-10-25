#include "../../chls-fullcap-inline.h"

#define TYPE int
typedef int tok_t;
typedef int prob_t;
typedef int state_t;
typedef int step_t;

#define N_STATES 64
#define N_OBS 140
#define N_TOKENS 64

void hls_top(int n_tokens, int xobs[N_OBS], int xinit[N_STATES],
             int xtransition[N_STATES * N_STATES],
             int xemission[N_STATES * N_TOKENS], int xpath[N_OBS], u32 *flag,
             u32 cap[20]) {
#pragma HLS INTERFACE m_axi port = xobs
#pragma HLS INTERFACE m_axi port = xinit
#pragma HLS INTERFACE m_axi port = xtransition
#pragma HLS INTERFACE m_axi port = xemission
#pragma HLS INTERFACE m_axi port = xpath
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = n_tokens
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  u32 flag_buf = 0;
  // 11 caps: 5 for external arrays + 6 for local arrays
  Cap caps[11];
  u32 buffer[20];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(5, buffer, cap, caps);

  int obs[N_OBS];
  int init[N_STATES];
  int transition[N_STATES * N_STATES];
  int emission[N_STATES * N_TOKENS];
  int path[N_OBS] = {0};

  create_cap(N_OBS, caps, 5);               // obs
  create_cap(N_STATES, caps, 6);            // init
  create_cap(N_STATES * N_STATES, caps, 7); // transition
  create_cap(N_STATES * N_TOKENS, caps, 8); // emission
  create_cap(N_OBS, caps, 9);               // path
  create_cap(N_OBS * N_STATES, caps, 10);   // llike

  for (int i = 0; i < N_OBS; i++) {
    int temp = cheri_load(xobs, i, &flag_buf, caps[0]);
    if (flag_buf) { *flag =1; return;}
    cheri_store(obs, i, temp, &flag_buf, caps[5]);
    if (flag_buf) { *flag =1; return;}
  }
  for (int i = 0; i < N_STATES; i++) {
    int temp = cheri_load(xinit, i, &flag_buf, caps[1]);
    if (flag_buf) { *flag =1; return;}
    cheri_store(init, i, temp, &flag_buf, caps[6]);
    if (flag_buf) { *flag =1; return;}
  }
  for (int i = 0; i < N_STATES * N_STATES; i++) {
    int temp = cheri_load(xtransition, i, &flag_buf, caps[2]);
    if (flag_buf) { *flag =1; return;}
    cheri_store(transition, i, temp, &flag_buf, caps[7]);
    if (flag_buf) { *flag =1; return;}
  }
  for (int i = 0; i < N_STATES * n_tokens; i++) {
    int temp = cheri_load(xemission, i, &flag_buf, caps[3]);
    if (flag_buf) { *flag =1; return;}
    cheri_store(emission, i, temp, &flag_buf, caps[8]);
    if (flag_buf) { *flag =1; return;}
  }

  prob_t llike[N_OBS * N_STATES];
  step_t t;
  state_t prev, curr;
  prob_t min_p, p;
  state_t min_s, s;
// All probabilities are in -log space. (i.e.: P(x) => -log(P(x)) )

// Initialize with first observation and initial probabilities
L_init:
  for (s = 0; s < N_STATES; s++) {
    int init_elem = cheri_load(init, s, &flag_buf, caps[6]);
    if (flag_buf) { *flag =1; return;}
    int obs_val = cheri_load(obs, 0, &flag_buf, caps[5]);
    if (flag_buf) { *flag =1; return;}
    int emission_idx = s * n_tokens + obs_val;
    int emission_elem = cheri_load(emission, emission_idx, &flag_buf, caps[8]);
    if (flag_buf) { *flag =1; return;}
    cheri_store(llike, 0 * N_STATES + s, init_elem + emission_elem, &flag_buf,
                caps[10]);
    if (flag_buf) { *flag =1; return;}
  }

// Iteratively compute the probabilities over time
L_timestep:
  for (t = 1; t < N_OBS; t++) {
  L_curr_state:
    for (curr = 0; curr < N_STATES; curr++) {
      // Compute likelihood HMM is in current state and where it came from.
      prev = 0;
      int llike_prev =
          cheri_load(llike, (t - 1) * N_STATES + prev, &flag_buf, caps[10]);
      if (flag_buf) { *flag =1; return;}
      int trans_elem =
          cheri_load(transition, prev * N_STATES + curr, &flag_buf, caps[7]);
      if (flag_buf) { *flag =1; return;}
      int obs_elem = cheri_load(obs, t, &flag_buf, caps[5]);
      if (flag_buf) { *flag =1; return;}
      int emis_elem =
          cheri_load(emission, curr * n_tokens + obs_elem, &flag_buf, caps[8]);
      if (flag_buf) { *flag =1; return;}
      min_p = llike_prev + trans_elem + emis_elem;
    L_prev_state:
      for (prev = 1; prev < N_STATES; prev++) {
        llike_prev =
            cheri_load(llike, (t - 1) * N_STATES + prev, &flag_buf, caps[10]);
        if (flag_buf) { *flag =1; return;}
        trans_elem =
            cheri_load(transition, prev * N_STATES + curr, &flag_buf, caps[7]);
        if (flag_buf) { *flag =1; return;}
        emis_elem = cheri_load(emission, curr * n_tokens + obs_elem, &flag_buf,
                               caps[8]);
        if (flag_buf) { *flag =1; return;}
        p = llike_prev + trans_elem + emis_elem;
        if (p < min_p) {
          min_p = p;
        }
      }
      cheri_store(llike, t * N_STATES + curr, min_p, &flag_buf, caps[10]);
      if (flag_buf) { *flag =1; return;}
    }
  }

  // Identify end state
  min_s = 0;
  min_p =
      cheri_load(llike, (N_OBS - 1) * N_STATES + min_s, &flag_buf, caps[10]);
  if (flag_buf) { *flag =1; return;}
L_end:
  for (s = 1; s < N_STATES; s++) {
    p = cheri_load(llike, N_OBS - 1 * N_STATES + s, &flag_buf, caps[10]);
    if (flag_buf) { *flag =1; return;}
    if (p < min_p) {
      min_p = p;
      min_s = s;
    }
  }
  cheri_store(path, N_OBS - 1, min_s, &flag_buf, caps[9]);
  if (flag_buf) { *flag =1; return;}

// Backtrack to recover full path
L_backtrack:
  for (t = N_OBS - 2; t >= 0; t--) {
    min_s = 0;
    int llike_elem =
        cheri_load(llike, t * N_STATES + min_s, &flag_buf, caps[10]);
    if (flag_buf) { *flag =1; return;}
    int path_elem = cheri_load(path, t + 1, &flag_buf, caps[9]);
    if (flag_buf) { *flag =1; return;}
    // int trans_elem = cheri_load(transition, min_s * N_STATES + path_elem,
    //                            &flag_buf, caps[7]);
    int trans_elem = transition[min_s * N_STATES + path_elem];
    min_p = llike_elem + trans_elem;
  L_state:
    for (s = 1; s < N_STATES; s++) {
      llike_elem = cheri_load(llike, t * N_STATES + s, &flag_buf, caps[10]);
      if (flag_buf) { *flag =1; return;}
      // int trans_elem_ =
      //     cheri_load(transition, s * N_STATES + path_elem, &flag_buf,
      //     caps[7]);
      int trans_elem_ = transition[s * N_STATES + path_elem];
      p = llike_elem + trans_elem;
      if (p < min_p) {
        min_p = p;
        min_s = s;
      }
    }
    cheri_store(path, t, min_s, &flag_buf, caps[9]);
    if (flag_buf) { *flag =1; return;}
  }

  for (int i = 0; i < N_OBS; i++) {
    int temp = cheri_load(path, i, &flag_buf, caps[9]);
    if (flag_buf) { *flag =1; return;}
    cheri_store(xpath, i, temp, &flag_buf, caps[4]);
    if (flag_buf) { *flag =1; return;}
  }

  *flag = flag_buf;
}

int main() {
  tok_t obs[N_OBS] = {0};
  prob_t init[N_STATES] = {0};
  prob_t transition[N_STATES * N_STATES] = {0};
  prob_t emission[N_STATES * N_TOKENS] = {0};
  state_t path[N_OBS] = {0};

  u32 cap[20] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(N_TOKENS, obs, init, transition, emission, path, &flag, cap);

  return 0;
}
