// Fixed parameters
#define input_dimension 16
#define possible_outputs 3
#define training_sets 163
#define nodes_per_layer 16
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
              int activations3[possible_outputs]) {
  int i;
  int sum;
  sum = (int)0;

  for (i = 0; i < possible_outputs; i++) {
    sum += exp(-activations3[i]);
  }
  for (i = 0; i < possible_outputs; i++) {
    net_outputs[i] = div(exp(-activations3[i]), sum);
  }
}

void RELU1(int activations1[nodes_per_layer],
           int dactivations1[nodes_per_layer], int size) {
  int i;
  for (i = 0; i < size; i++) {
    dactivations1[i] = activations1[i] * (1 - activations1[i]);
    activations1[i] = (1 + exp(-activations1[i]));
  }
}
void RELU2(int activations2[nodes_per_layer],
           int dactivations2[nodes_per_layer], int size) {
  int i;
  for (i = 0; i < size; i++) {
    dactivations2[i] = activations2[i] * (1 - activations2[i]);
    activations2[i] = (1 + exp(-activations2[i]));
  }
}

void RELU3(int activations3[possible_outputs],
           int dactivations3[possible_outputs], int size) {
  int i;
  for (i = 0; i < size; i++) {
    dactivations3[i] = activations3[i] * (1 - activations3[i]);
    activations3[i] = (1 + exp(-activations3[i]));
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
    int biases1[nodes_per_layer],
    int weights1[input_dimension * nodes_per_layer],
    int activations1[nodes_per_layer], int training_data[input_dimension]) {
  int i, j;
  for (j = 0; j < nodes_per_layer; j++) {
    activations1[j] = (int)0;
    for (i = 0; i < input_dimension; i++) {
      activations1[j] = activations1[j] +
                        weights1[j * input_dimension + i] * training_data[i];
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    activations1[i] = activations1[i] + biases1[i];
  }
}

void matrix_vector_product_with_bias_second_layer(
    int biases2[nodes_per_layer],
    int weights2[nodes_per_layer * nodes_per_layer],
    int activations2[nodes_per_layer], int activations1[nodes_per_layer]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    activations2[i] = (int)0;
    for (j = 0; j < nodes_per_layer; j++) {
      activations2[i] =
          activations2[i] + weights2[i * nodes_per_layer + j] * activations1[j];
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    activations2[i] = activations2[i] + biases2[i];
  }
}

void matrix_vector_product_with_bias_output_layer(
    int biases3[possible_outputs],
    int weights3[nodes_per_layer * possible_outputs],
    int activations3[possible_outputs], int activations2[nodes_per_layer]) {
  int i, j;
  for (j = 0; j < possible_outputs; j++) {
    activations3[j] = (int)0;
    for (i = 0; i < nodes_per_layer; i++) {
      activations3[j] =
          activations3[j] + weights3[j * nodes_per_layer + i] * activations2[i];
    }
  }
  for (i = 0; i < possible_outputs; i++) {
    activations3[i] = activations3[i] + biases3[i];
  }
}

void take_difference(int net_outputs[possible_outputs],
                     int training_targets[possible_outputs],
                     int output_difference[possible_outputs],
                     int dactivations3[possible_outputs]) {
  int i;
  for (i = 0; i < possible_outputs; i++) {
    output_difference[i] =
        (((net_outputs[i]) - training_targets[i]) * -1) * dactivations3[i];
  }
}

void get_delta_matrix_weights3(
    int delta_weights3[nodes_per_layer * possible_outputs],
    int output_difference[possible_outputs],
    int activations2[nodes_per_layer]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < possible_outputs; j++) {
      delta_weights3[i * possible_outputs + j] =
          activations2[i] * output_difference[j];
    }
  }
}

void get_oracle_activations2(int weights3[nodes_per_layer * possible_outputs],
                             int output_difference[possible_outputs],
                             int oracle_activations2[nodes_per_layer],
                             int dactivations2[nodes_per_layer]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    oracle_activations2[i] = (int)0;
    for (j = 0; j < possible_outputs; j++) {
      oracle_activations2[i] =
          oracle_activations2[i] +
          output_difference[j] * weights3[i * possible_outputs + j];
    }
    oracle_activations2[i] = oracle_activations2[i] * dactivations2[i];
  }
}

void get_delta_matrix_weights2(
    int delta_weights2[nodes_per_layer * nodes_per_layer],
    int oracle_activations2[nodes_per_layer],
    int activations1[nodes_per_layer]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      delta_weights2[i * nodes_per_layer + j] =
          activations1[i] * oracle_activations2[j];
    }
  }
}

void get_oracle_activations1(int weights2[nodes_per_layer * nodes_per_layer],
                             int oracle_activations2[nodes_per_layer],
                             int oracle_activations1[nodes_per_layer],
                             int dactivations1[nodes_per_layer]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    oracle_activations1[i] = (int)0;
    for (j = 0; j < nodes_per_layer; j++) {
      oracle_activations1[i] =
          oracle_activations1[i] +
          oracle_activations2[j] * weights2[i * nodes_per_layer + j];
    }
    oracle_activations1[i] = oracle_activations1[i] * dactivations1[i];
  }
}

void get_delta_matrix_weights1(
    int delta_weights1[input_dimension * nodes_per_layer],
    int oracle_activations1[nodes_per_layer],
    int training_data[input_dimension]) {
  int i, j;
  for (i = 0; i < input_dimension; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      delta_weights1[i * nodes_per_layer + j] =
          training_data[i] * oracle_activations1[j];
    }
  }
}

void update_weights(int weights1[input_dimension * nodes_per_layer],
                    int weights2[nodes_per_layer * nodes_per_layer],
                    int weights3[nodes_per_layer * possible_outputs],
                    int delta_weights1[input_dimension * nodes_per_layer],
                    int delta_weights2[nodes_per_layer * nodes_per_layer],
                    int delta_weights3[nodes_per_layer * possible_outputs],
                    int biases1[nodes_per_layer], int biases2[nodes_per_layer],
                    int biases3[possible_outputs],
                    int oracle_activations1[nodes_per_layer],
                    int oracle_activations2[nodes_per_layer],
                    int output_difference[possible_outputs]) {
  int i, j;
  int norm, bias_norm;
  norm = 0;
  bias_norm = 0;

  for (i = 0; i < input_dimension; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      weights1[i * nodes_per_layer + j] =
          weights1[i * nodes_per_layer + j] -
          (delta_weights1[i * nodes_per_layer + j] * learning_rate);
      norm +=
          weights1[i * nodes_per_layer + j] * weights1[i * nodes_per_layer + j];
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    biases1[i] = biases1[i] - (oracle_activations1[i] * learning_rate);
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
      weights2[i * nodes_per_layer + j] =
          weights2[i * nodes_per_layer + j] -
          (delta_weights2[i * nodes_per_layer + j] * learning_rate);
      norm +=
          weights2[i * nodes_per_layer + j] * weights2[i * nodes_per_layer + j];
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    biases2[i] = biases2[i] - (oracle_activations2[i] * learning_rate);
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
      weights3[i * possible_outputs + j] =
          weights3[i * possible_outputs + j] -
          (delta_weights3[i * possible_outputs + j] * learning_rate);
      norm += weights3[i * possible_outputs + j] *
              weights3[i * possible_outputs + j];
    }
  }
  for (i = 0; i < possible_outputs; i++) {
    biases3[i] = biases3[i] - output_difference[i] * learning_rate;
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

  int weights1[input_dimension * nodes_per_layer];
  int weights2[nodes_per_layer * nodes_per_layer];
  int weights3[possible_outputs * nodes_per_layer];
  int biases1[nodes_per_layer];
  int biases2[nodes_per_layer];
  int biases3[possible_outputs];
  int training_data[training_sets * input_dimension];
  int training_targets[training_sets * possible_outputs];

  for (int i = 0; i < training_sets; i++)
    for (int j = 0; j < input_dimension; j++)
      training_data[i * input_dimension + j] =
          xtraining_data[i * input_dimension + j];

  for (int i = 0; i < training_sets; i++)
    for (int j = 0; j < possible_outputs; j++)
      training_targets[(i * possible_outputs) + j] =
          xtraining_targets[i * possible_outputs + j];

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
    RELU1(activations1, dactivations1, nodes_per_layer);
    matrix_vector_product_with_bias_second_layer(biases2, weights2,
                                                 activations2, activations1);
    RELU2(activations2, dactivations2, nodes_per_layer);
    matrix_vector_product_with_bias_output_layer(biases3, weights3,
                                                 activations3, activations2);
    RELU3(activations3, dactivations3, possible_outputs);

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

  int size1 = input_dimension * nodes_per_layer;
  int size2 = nodes_per_layer * nodes_per_layer;
  int size3 = possible_outputs * nodes_per_layer;
  for (int i = 0; i < size1; i++)
    xweights1[i] = weights1[i];
  for (int i = 0; i < size2; i++)
    xweights2[i] = weights2[i];
  for (int i = 0; i < size3; i++)
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
