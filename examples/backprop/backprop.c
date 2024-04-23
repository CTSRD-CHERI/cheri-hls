// Fixed parameters
#define input_dimension 10
#define possible_outputs 1000
#define training_sets 1000
#define nodes_per_layer 1
#define layers 1
#define learning_rate 1
#define epochs 1
#define test_sets 1
#define norm_param 1

// #define input_dimension 13
// #define possible_outputs 3
// #define training_sets 163
// #define nodes_per_layer 64
// #define layers 2
// #define learning_rate 1
// #define epochs 1
// #define test_sets 15
// #define norm_param 5

void hls_top(int sets, int xweights1[input_dimension * nodes_per_layer],
             int xweights2[nodes_per_layer * nodes_per_layer],
             int xweights3[nodes_per_layer * possible_outputs],
             int xbiases1[nodes_per_layer], int xbiases2[nodes_per_layer],
             int xbiases3[possible_outputs],
             int xtraining_data[training_sets * input_dimension],
             int xtraining_targets[training_sets * possible_outputs]) {
#pragma HLS INTERFACE m_axi port = xweights1
#pragma HLS INTERFACE m_axi port = xweights2
#pragma HLS INTERFACE m_axi port = xweights3
#pragma HLS INTERFACE m_axi port = xbiases1
#pragma HLS INTERFACE m_axi port = xbiases2
#pragma HLS INTERFACE m_axi port = xbiases3
#pragma HLS INTERFACE m_axi port = xtraining_data
#pragma HLS INTERFACE m_axi port = xtraining_targets
#pragma HLS INTERFACE s_axilite port = sets
#pragma HLS INTERFACE s_axilite port = return

  for (int i = 0; i < possible_outputs; i++) {
    xbiases3[i] = xtraining_data[i];
  }
}

int main() {

  int weights1[input_dimension * nodes_per_layer];
  int weights2[nodes_per_layer * nodes_per_layer];
  int weights3[nodes_per_layer * possible_outputs];
  int biases1[nodes_per_layer];
  int biases2[nodes_per_layer];
  int biases3[possible_outputs];
  int training_data[training_sets * input_dimension];
  int training_targets[training_sets * possible_outputs];
  hls_top(training_sets, weights1, weights2, weights3, biases1, biases2,
          biases3, training_data, training_targets);

  return 0;
}
