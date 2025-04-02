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
             int xemission[N_STATES * N_TOKENS], int xpath[N_OBS]) {
#pragma HLS INTERFACE m_axi port = xobs
#pragma HLS INTERFACE m_axi port = xinit
#pragma HLS INTERFACE m_axi port = xtransition
#pragma HLS INTERFACE m_axi port = xemission
#pragma HLS INTERFACE m_axi port = xpath
#pragma HLS INTERFACE s_axilite port = n_tokens
#pragma HLS INTERFACE s_axilite port = return

  int obs[N_OBS];
  int init[N_STATES];
  int transition[N_STATES * N_STATES];
  int emission[N_STATES * N_TOKENS];
  int path[N_OBS];

  for (int i = 0; i < N_OBS; i++)
    obs[i] = xobs[i];
  for (int i = 0; i < N_STATES; i++)
    init[i] = xinit[i];
  for (int i = 0; i < N_STATES * N_STATES; i++)
    transition[i] = xtransition[i];
  for (int i = 0; i < N_STATES * n_tokens; i++)
    emission[i] = xemission[i];

  prob_t llike[N_OBS * N_STATES];
  step_t t;
  state_t prev, curr;
  prob_t min_p, p;
  state_t min_s, s;
// All probabilities are in -log space. (i.e.: P(x) => -log(P(x)) )

// Initialize with first observation and initial probabilities
L_init:
  for (s = 0; s < N_STATES; s++) {
    llike[0 + s] = init[s] + emission[s * n_tokens + obs[0]];
  }

// Iteratively compute the probabilities over time
L_timestep:
  for (t = 1; t < N_OBS; t++) {
  L_curr_state:
    for (curr = 0; curr < N_STATES; curr++) {
      // Compute likelihood HMM is in current state and where it came from.
      prev = 0;
      min_p = llike[(t - 1) * N_STATES + prev] +
              transition[prev * N_STATES + curr] +
              emission[curr * n_tokens + obs[t]];
    L_prev_state:
      for (prev = 1; prev < N_STATES; prev++) {
        p = llike[(t - 1) * N_STATES + prev] +
            transition[prev * N_STATES + curr] +
            emission[curr * n_tokens + obs[t]];
        if (p < min_p) {
          min_p = p;
        }
      }
      llike[t * N_STATES + curr] = min_p;
    }
  }

  // Identify end state
  min_s = 0;
  min_p = llike[(N_OBS - 1) * N_STATES + min_s];
L_end:
  for (s = 1; s < N_STATES; s++) {
    p = llike[(N_OBS - 1) * N_STATES + s];
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
    min_p = llike[t * N_STATES + min_s] +
            transition[min_s * N_STATES + path[t + 1]];
  L_state:
    for (s = 1; s < N_STATES; s++) {
      p = llike[t * N_STATES + s] + transition[s * N_STATES + path[t + 1]];
      if (p < min_p) {
        min_p = p;
        min_s = s;
      }
    }
    path[t] = min_s;
  }

  for (int i = 0; i < N_OBS; i++)
    xpath[i] = path[i];
}

int main() {
  tok_t obs[N_OBS] = {0};
  prob_t init[N_STATES] = {0};
  prob_t transition[N_STATES * N_STATES] = {0};
  prob_t emission[N_STATES * N_TOKENS] = {0};
  state_t path[N_OBS] = {0};
  hls_top(N_TOKENS, obs, init, transition, emission, path);

  return 0;
}
