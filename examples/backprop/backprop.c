// Fixed parameters
#define input_dimension 13
#define possible_outputs 3
#define training_sets 163
#define nodes_per_layer 64
#define layers 2
#define learning_rate 1
#define epochs 1
#define test_sets 15
#define norm_param 5

#define max 1000
#define offset 5

// Data Bounds
#define MAX 1000
#define MIN 1
#define exp(x) x / 2
#define sqrt(x) x
#define div(x, y) (y) ? x / y : x

void soft_max(int net_outputs[possible_outputs],
              int activations[possible_outputs]) {
  int i;
  int sum;
  sum = (int)0;

  for (i = 0; i < possible_outputs; i++) {
    sum += exp(-activations[i]);
  }
  for (i = 0; i < possible_outputs; i++) {
    net_outputs[i] = div(exp(-activations[i]), sum);
  }
}

void RELU(int *activations, int *dactivations, int size) {
  int i;
  for (i = 0; i < size; i++) {
    dactivations[i] = activations[i] * (1 - activations[i]);
    activations[i] = (1 + exp(-activations[i]));
  }
}

void add_bias_to_activations(int biases[nodes_per_layer],
                             int activations[nodes_per_layer], int size) {
  int i;
  for (i = 0; i < size; i++) {
    activations[i] = activations[i] + biases[i];
  }
}

void matrix_vector_product_with_bias_input_layer(
    int biases[nodes_per_layer], int weights[input_dimension * nodes_per_layer],
    int activations[nodes_per_layer], int input_sample[input_dimension]) {
  int i, j;
  for (j = 0; j < nodes_per_layer; j++) {
    activations[j] = (int)0;
    for (i = 0; i < input_dimension; i++) {
      activations[j] += weights[j * input_dimension + i] * input_sample[i];
    }
  }
  add_bias_to_activations(biases, activations, nodes_per_layer);
}

void matrix_vector_product_with_bias_second_layer(
    int biases[nodes_per_layer], int weights[nodes_per_layer * nodes_per_layer],
    int activations[nodes_per_layer], int input_activations[nodes_per_layer]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    activations[i] = (int)0;
    for (j = 0; j < nodes_per_layer; j++) {
      activations[i] += weights[i * nodes_per_layer + j] * input_activations[j];
    }
  }
  add_bias_to_activations(biases, activations, nodes_per_layer);
}

void matrix_vector_product_with_bias_output_layer(
    int biases[possible_outputs],
    int weights[nodes_per_layer * possible_outputs],
    int activations[possible_outputs], int input_activations[nodes_per_layer]) {
  int i, j;
  for (j = 0; j < possible_outputs; j++) {
    activations[j] = (int)0;
    for (i = 0; i < nodes_per_layer; i++) {
      activations[j] += weights[j * nodes_per_layer + i] * input_activations[i];
    }
  }
  add_bias_to_activations(biases, activations, possible_outputs);
}

void take_difference(int net_outputs[possible_outputs],
                     int solutions[possible_outputs],
                     int output_difference[possible_outputs],
                     int dactivations[possible_outputs]) {
  int i;
  for (i = 0; i < possible_outputs; i++) {
    output_difference[i] =
        (((net_outputs[i]) - solutions[i]) * -1) * dactivations[i];
  }
}

void get_delta_matrix_weights3(
    int delta_weights3[nodes_per_layer * possible_outputs],
    int output_difference[possible_outputs],
    int last_activations[nodes_per_layer]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < possible_outputs; j++) {
      delta_weights3[i * possible_outputs + j] =
          last_activations[i] * output_difference[j];
    }
  }
}

void get_oracle_activations2(int weights3[nodes_per_layer * possible_outputs],
                             int output_differences[possible_outputs],
                             int oracle_activations[nodes_per_layer],
                             int dactivations[nodes_per_layer]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    oracle_activations[i] = (int)0;
    for (j = 0; j < possible_outputs; j++) {
      oracle_activations[i] +=
          output_differences[j] * weights3[i * possible_outputs + j];
    }
    oracle_activations[i] = oracle_activations[i] * dactivations[i];
  }
}

void get_delta_matrix_weights2(
    int delta_weights2[nodes_per_layer * nodes_per_layer],
    int output_difference[nodes_per_layer],
    int last_activations[nodes_per_layer]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      delta_weights2[i * nodes_per_layer + j] =
          last_activations[i] * output_difference[j];
    }
  }
}

void get_oracle_activations1(int weights2[nodes_per_layer * nodes_per_layer],
                             int output_differences[nodes_per_layer],
                             int oracle_activations[nodes_per_layer],
                             int dactivations[nodes_per_layer]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    oracle_activations[i] = (int)0;
    for (j = 0; j < nodes_per_layer; j++) {
      oracle_activations[i] +=
          output_differences[j] * weights2[i * nodes_per_layer + j];
    }
    oracle_activations[i] = oracle_activations[i] * dactivations[i];
  }
}

void get_delta_matrix_weights1(
    int delta_weights1[input_dimension * nodes_per_layer],
    int output_difference[nodes_per_layer],
    int last_activations[input_dimension]) {
  int i, j;
  for (i = 0; i < input_dimension; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      delta_weights1[i * nodes_per_layer + j] =
          last_activations[i] * output_difference[j];
    }
  }
}

void update_weights(int weights1[input_dimension * nodes_per_layer],
                    int weights2[nodes_per_layer * nodes_per_layer],
                    int weights3[nodes_per_layer * possible_outputs],
                    int d_weights1[input_dimension * nodes_per_layer],
                    int d_weights2[nodes_per_layer * nodes_per_layer],
                    int d_weights3[nodes_per_layer * possible_outputs],
                    int biases1[nodes_per_layer], int biases2[nodes_per_layer],
                    int biases3[possible_outputs],
                    int d_biases1[nodes_per_layer],
                    int d_biases2[nodes_per_layer],
                    int d_biases3[possible_outputs]) {
  int i, j;
  int norm, bias_norm;
  norm = 0;
  bias_norm = 0;

  for (i = 0; i < input_dimension; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      weights1[i * nodes_per_layer + j] -=
          (d_weights1[i * nodes_per_layer + j] * learning_rate);
      norm +=
          weights1[i * nodes_per_layer + j] * weights1[i * nodes_per_layer + j];
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    biases1[i] -= (d_biases1[i] * learning_rate);
    bias_norm += biases1[i] * biases1[i];
  }

  norm = sqrt(norm);
  bias_norm = sqrt(bias_norm);

  for (i = 0; i < input_dimension; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      weights1[i * nodes_per_layer + j] =
          div(weights1[i * nodes_per_layer + j], norm);
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    biases1[i] = div(biases1[i], bias_norm);
  }

  norm = (int)0;
  bias_norm = (int)0;

  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      weights2[i * nodes_per_layer + j] -=
          (d_weights2[i * nodes_per_layer + j] * learning_rate);
      norm +=
          weights2[i * nodes_per_layer + j] * weights2[i * nodes_per_layer + j];
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    biases2[i] -= (d_biases2[i] * learning_rate);
    bias_norm += biases2[i] * biases2[i];
  }

  norm = sqrt(norm);
  bias_norm = sqrt(bias_norm);

  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      weights2[i * nodes_per_layer + j] =
          div(weights2[i * nodes_per_layer + j], norm);
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    biases2[i] = div(biases2[i], bias_norm);
  }

  norm = 0;
  bias_norm = 0;

  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < possible_outputs; j++) {
      weights3[i * possible_outputs + j] -=
          (d_weights3[i * possible_outputs + j] * learning_rate);
      norm += weights3[i * possible_outputs + j] *
              weights3[i * possible_outputs + j];
    }
  }
  for (i = 0; i < possible_outputs; i++) {
    biases3[i] -= d_biases3[i] * learning_rate;
    bias_norm += biases3[i] * biases3[i];
  }

  norm = sqrt(norm);
  bias_norm = sqrt(bias_norm);

  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < possible_outputs; j++) {
      weights3[i * possible_outputs + j] =
          div(weights3[i * possible_outputs + j], norm);
    }
  }
  for (i = 0; i < possible_outputs; i++) {
    biases3[i] = div(biases3[i], bias_norm);
  }
}

void hls_top(int xsets, int xweights1[input_dimension * nodes_per_layer],
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

  int weights1[input_dimension * nodes_per_layer] = {1};
  int weights2[nodes_per_layer * nodes_per_layer] = {1};
  int weights3[nodes_per_layer * possible_outputs] = {1};
  int biases1[nodes_per_layer] = {1};
  int biases2[nodes_per_layer] = {1};
  int biases3[possible_outputs] = {1};
  int training_data[training_sets * input_dimension] = {1};
  int training_targets[training_sets * possible_outputs] = {1};

  for (int i = 0; i < training_sets * input_dimension; i++)
    training_data[i] = xtraining_data[i];

  for (int i = 0; i < training_sets * possible_outputs; i++)
    training_targets[i] = xtraining_targets[i];

  int i, j;
  // Forward and training structures
  int activations1[nodes_per_layer];
  int activations2[nodes_per_layer];
  int activations3[possible_outputs];
  int dactivations1[nodes_per_layer];
  int dactivations2[nodes_per_layer];
  int dactivations3[possible_outputs];
  int net_outputs[possible_outputs];
  // Training structure
  int output_difference[possible_outputs];
  int delta_weights1[input_dimension * nodes_per_layer];
  int delta_weights2[nodes_per_layer * nodes_per_layer];
  int delta_weights3[nodes_per_layer * possible_outputs];
  int oracle_activations1[nodes_per_layer];
  int oracle_activations2[nodes_per_layer];

  for (i = 0; i < sets; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      activations1[j] = 0;
      activations2[j] = 0;
      if (j < possible_outputs) {
        activations3[j] = 0;
      }
    }
    matrix_vector_product_with_bias_input_layer(
        biases1, weights1, activations1, &training_data[i * input_dimension]);
    RELU(activations1, dactivations1, nodes_per_layer);
    matrix_vector_product_with_bias_second_layer(biases2, weights2,
                                                 activations2, activations1);
    RELU(activations2, dactivations2, nodes_per_layer);
    matrix_vector_product_with_bias_output_layer(biases3, weights3,
                                                 activations3, activations2);
    RELU(activations3, dactivations3, possible_outputs);
    soft_max(net_outputs, activations3);
    take_difference(net_outputs, &training_targets[i * possible_outputs],
                    output_difference, dactivations3);
    get_delta_matrix_weights3(delta_weights3, output_difference, activations2);
    get_oracle_activations2(weights3, output_difference, oracle_activations2,
                            dactivations2);
    get_delta_matrix_weights2(delta_weights2, oracle_activations2,
                              activations1);
    get_oracle_activations1(weights2, oracle_activations2, oracle_activations1,
                            dactivations1);
    get_delta_matrix_weights1(delta_weights1, oracle_activations1,
                              &training_data[i * input_dimension]);
    update_weights(weights1, weights2, weights3, delta_weights1, delta_weights2,
                   delta_weights3, biases1, biases2, biases3,
                   oracle_activations1, oracle_activations2, output_difference);
  }

  for (int i = 0; i < input_dimension * nodes_per_layer; i++)
    xweights1[i] = weights1[i];
  for (int i = 0; i < nodes_per_layer * nodes_per_layer; i++)
    xweights2[i] = weights2[i];
  for (int i = 0; i < nodes_per_layer * possible_outputs; i++)
    xweights3[i] = weights3[i];

  for (int i = 0; i < nodes_per_layer; i++)
    xbiases1[i] = biases1[i];
  for (int i = 0; i < nodes_per_layer; i++)
    xbiases2[i] = biases2[i];
  for (int i = 0; i < possible_outputs; i++)
    xbiases3[i] = biases3[i];
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
