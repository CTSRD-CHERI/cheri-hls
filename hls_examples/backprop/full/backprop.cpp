#include "../../chls-fullcap.h"

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
              int activations[possible_outputs], u32 *flag_buf, Cap caps[29]) {
  int i;
  int sum;
  sum = (int)0;

  for (i = 0; i < possible_outputs; i++) {
    int act = cheri_load(activations, i, flag_buf, caps[18]);
    sum += exp(-act);
  }
  for (i = 0; i < possible_outputs; i++) {
    int act = cheri_load(activations, i, flag_buf, caps[18]);
    cheri_store(net_outputs, i, div(exp(-act), sum), flag_buf, caps[22]);
  }
}

void RELU(int *activations, int *dactivations, int size, u32 *flag_buf,
          Cap act_cap, Cap dact_cap) {
  int i;
  for (i = 0; i < size; i++) {
    int act = cheri_load(activations, i, flag_buf, act_cap);
    cheri_store(dactivations, i, act * (1 - act), flag_buf, dact_cap);
    cheri_store(activations, i, (1 + exp(-act)), flag_buf, act_cap);
  }
}

void add_bias_to_activations(int biases[nodes_per_layer],
                             int activations[nodes_per_layer], int size,
                             u32 *flag_buf, Cap bias_cap, Cap act_cap) {
  int i;
  for (i = 0; i < size; i++) {
    int bias = cheri_load(biases, i, flag_buf, bias_cap);
    int act = cheri_load(activations, i, flag_buf, act_cap);
    cheri_store(activations, i, act + bias, flag_buf, act_cap);
  }
}

void matrix_vector_product_with_bias_input_layer(
    int biases[nodes_per_layer], int weights[input_dimension * nodes_per_layer],
    int activations[nodes_per_layer], int input_sample[input_dimension],
    u32 *flag_buf, Cap caps[29]) {
  int i, j;
  for (j = 0; j < nodes_per_layer; j++) {
    int sum = 0;
    for (i = 0; i < input_dimension; i++) {
      int w = cheri_load(weights, j * input_dimension + i, flag_buf, caps[8]);
      int inp = cheri_load(input_sample, i, flag_buf, caps[14]);
      sum += w * inp;
    }
    cheri_store(activations, j, sum, flag_buf, caps[15]);
  }
  add_bias_to_activations(biases, activations, nodes_per_layer, flag_buf,
                          caps[11], caps[15]);
}

void matrix_vector_product_with_bias_second_layer(
    int biases[nodes_per_layer], int weights[nodes_per_layer * nodes_per_layer],
    int activations[nodes_per_layer], int input_activations[nodes_per_layer],
    u32 *flag_buf, Cap caps[29]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    int sum = 0;
    for (j = 0; j < nodes_per_layer; j++) {
      int w = cheri_load(weights, i * nodes_per_layer + j, flag_buf, caps[9]);
      int inp = cheri_load(input_activations, j, flag_buf, caps[15]);
      sum += w * inp;
    }
    cheri_store(activations, i, sum, flag_buf, caps[16]);
  }
  add_bias_to_activations(biases, activations, nodes_per_layer, flag_buf,
                          caps[12], caps[16]);
}

void matrix_vector_product_with_bias_output_layer(
    int biases[possible_outputs],
    int weights[nodes_per_layer * possible_outputs],
    int activations[possible_outputs], int input_activations[nodes_per_layer],
    u32 *flag_buf, Cap caps[29]) {
  int i, j;
  for (j = 0; j < possible_outputs; j++) {
    int sum = 0;
    for (i = 0; i < nodes_per_layer; i++) {
      int w = cheri_load(weights, j * nodes_per_layer + i, flag_buf, caps[10]);
      int inp = cheri_load(input_activations, i, flag_buf, caps[16]);
      sum += w * inp;
    }
    cheri_store(activations, j, sum, flag_buf, caps[17]);
  }
  add_bias_to_activations(biases, activations, possible_outputs, flag_buf,
                          caps[13], caps[17]);
}

void take_difference(int net_outputs[possible_outputs],
                     int solutions[possible_outputs],
                     int output_difference[possible_outputs],
                     int dactivations[possible_outputs], u32 *flag_buf,
                     Cap caps[29]) {
  int i;
  for (i = 0; i < possible_outputs; i++) {
    int net_out = cheri_load(net_outputs, i, flag_buf, caps[22]);
    int sol = cheri_load(solutions, i, flag_buf, caps[21]);
    int dact = cheri_load(dactivations, i, flag_buf, caps[20]);
    cheri_store(output_difference, i, (((net_out)-sol) * -1) * dact, flag_buf,
                caps[23]);
  }
}

void get_delta_matrix_weights3(
    int delta_weights3[nodes_per_layer * possible_outputs],
    int output_difference[possible_outputs],
    int last_activations[nodes_per_layer], u32 *flag_buf, Cap caps[29]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    int last_act = cheri_load(last_activations, i, flag_buf, caps[16]);
    for (j = 0; j < possible_outputs; j++) {
      int out_diff = cheri_load(output_difference, j, flag_buf, caps[23]);
      cheri_store(delta_weights3, i * possible_outputs + j, last_act * out_diff,
                  flag_buf, caps[26]);
    }
  }
}

void get_oracle_activations2(int weights3[nodes_per_layer * possible_outputs],
                             int output_differences[possible_outputs],
                             int oracle_activations[nodes_per_layer],
                             int dactivations[nodes_per_layer], u32 *flag_buf,
                             Cap caps[29]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    int sum = 0;
    for (j = 0; j < possible_outputs; j++) {
      int out_diff = cheri_load(output_differences, j, flag_buf, caps[23]);
      int w =
          cheri_load(weights3, i * possible_outputs + j, flag_buf, caps[10]);
      sum += out_diff * w;
    }
    int dact = cheri_load(dactivations, i, flag_buf, caps[19]);
    cheri_store(oracle_activations, i, sum * dact, flag_buf, caps[28]);
  }
}

void get_delta_matrix_weights2(
    int delta_weights2[nodes_per_layer * nodes_per_layer],
    int output_difference[nodes_per_layer],
    int last_activations[nodes_per_layer], u32 *flag_buf, Cap caps[29]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    int last_act = cheri_load(last_activations, i, flag_buf, caps[15]);
    for (j = 0; j < nodes_per_layer; j++) {
      int out_diff = cheri_load(output_difference, j, flag_buf, caps[28]);
      cheri_store(delta_weights2, i * nodes_per_layer + j, last_act * out_diff,
                  flag_buf, caps[25]);
    }
  }
}

void get_oracle_activations1(int weights2[nodes_per_layer * nodes_per_layer],
                             int output_differences[nodes_per_layer],
                             int oracle_activations[nodes_per_layer],
                             int dactivations[nodes_per_layer], u32 *flag_buf,
                             Cap caps[29]) {
  int i, j;
  for (i = 0; i < nodes_per_layer; i++) {
    int sum = 0;
    for (j = 0; j < nodes_per_layer; j++) {
      int out_diff = cheri_load(output_differences, j, flag_buf, caps[28]);
      int w = cheri_load(weights2, i * nodes_per_layer + j, flag_buf, caps[9]);
      sum += out_diff * w;
    }
    int dact = cheri_load(dactivations, i, flag_buf, caps[18]);
    cheri_store(oracle_activations, i, sum * dact, flag_buf, caps[27]);
  }
}

void get_delta_matrix_weights1(
    int delta_weights1[input_dimension * nodes_per_layer],
    int output_difference[nodes_per_layer],
    int last_activations[input_dimension], u32 *flag_buf, Cap caps[29]) {
  int i, j;
  for (i = 0; i < input_dimension; i++) {
    int last_act = cheri_load(last_activations, i, flag_buf, caps[14]);
    for (j = 0; j < nodes_per_layer; j++) {
      int out_diff = cheri_load(output_difference, j, flag_buf, caps[27]);
      cheri_store(delta_weights1, i * nodes_per_layer + j, last_act * out_diff,
                  flag_buf, caps[24]);
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
                    int d_biases3[possible_outputs], u32 *flag_buf,
                    Cap caps[29]) {
  int i, j;
  int norm, bias_norm;
  norm = 0;
  bias_norm = 0;

  for (i = 0; i < input_dimension; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      int w = cheri_load(weights1, i * nodes_per_layer + j, flag_buf, caps[8]);
      int dw =
          cheri_load(d_weights1, i * nodes_per_layer + j, flag_buf, caps[24]);
      w -= (dw * learning_rate);
      cheri_store(weights1, i * nodes_per_layer + j, w, flag_buf, caps[8]);
      norm += w * w;
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    int b = cheri_load(biases1, i, flag_buf, caps[11]);
    int db = cheri_load(d_biases1, i, flag_buf, caps[27]);
    b -= (db * learning_rate);
    cheri_store(biases1, i, b, flag_buf, caps[11]);
    bias_norm += b * b;
  }

  norm = sqrt(norm);
  bias_norm = sqrt(bias_norm);

  for (i = 0; i < input_dimension; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      int w = cheri_load(weights1, i * nodes_per_layer + j, flag_buf, caps[8]);
      cheri_store(weights1, i * nodes_per_layer + j, div(w, norm), flag_buf,
                  caps[8]);
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    int b = cheri_load(biases1, i, flag_buf, caps[11]);
    cheri_store(biases1, i, div(b, bias_norm), flag_buf, caps[11]);
  }

  norm = (int)0;
  bias_norm = (int)0;

  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      int w = cheri_load(weights2, i * nodes_per_layer + j, flag_buf, caps[9]);
      int dw =
          cheri_load(d_weights2, i * nodes_per_layer + j, flag_buf, caps[25]);
      w -= (dw * learning_rate);
      cheri_store(weights2, i * nodes_per_layer + j, w, flag_buf, caps[9]);
      norm += w * w;
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    int b = cheri_load(biases2, i, flag_buf, caps[12]);
    int db = cheri_load(d_biases2, i, flag_buf, caps[28]);
    b -= (db * learning_rate);
    cheri_store(biases2, i, b, flag_buf, caps[12]);
    bias_norm += b * b;
  }

  norm = sqrt(norm);
  bias_norm = sqrt(bias_norm);

  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < nodes_per_layer; j++) {
      int w = cheri_load(weights2, i * nodes_per_layer + j, flag_buf, caps[9]);
      cheri_store(weights2, i * nodes_per_layer + j, div(w, norm), flag_buf,
                  caps[9]);
    }
  }
  for (i = 0; i < nodes_per_layer; i++) {
    int b = cheri_load(biases2, i, flag_buf, caps[12]);
    cheri_store(biases2, i, div(b, bias_norm), flag_buf, caps[12]);
  }

  norm = 0;
  bias_norm = 0;

  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < possible_outputs; j++) {
      int w =
          cheri_load(weights3, i * possible_outputs + j, flag_buf, caps[10]);
      int dw =
          cheri_load(d_weights3, i * possible_outputs + j, flag_buf, caps[26]);
      w -= (dw * learning_rate);
      cheri_store(weights3, i * possible_outputs + j, w, flag_buf, caps[10]);
      norm += w * w;
    }
  }
  for (i = 0; i < possible_outputs; i++) {
    int b = cheri_load(biases3, i, flag_buf, caps[13]);
    int db = cheri_load(d_biases3, i, flag_buf, caps[23]);
    b -= db * learning_rate;
    cheri_store(biases3, i, b, flag_buf, caps[13]);
    bias_norm += b * b;
  }

  norm = sqrt(norm);
  bias_norm = sqrt(bias_norm);

  for (i = 0; i < nodes_per_layer; i++) {
    for (j = 0; j < possible_outputs; j++) {
      int w =
          cheri_load(weights3, i * possible_outputs + j, flag_buf, caps[10]);
      cheri_store(weights3, i * possible_outputs + j, div(w, norm), flag_buf,
                  caps[10]);
    }
  }
  for (i = 0; i < possible_outputs; i++) {
    int b = cheri_load(biases3, i, flag_buf, caps[13]);
    cheri_store(biases3, i, div(b, bias_norm), flag_buf, caps[13]);
  }
}

void hls_top(int sets, int xweights1[input_dimension * nodes_per_layer],
             int xweights2[nodes_per_layer * nodes_per_layer],
             int xweights3[nodes_per_layer * possible_outputs],
             int xbiases1[nodes_per_layer], int xbiases2[nodes_per_layer],
             int xbiases3[possible_outputs],
             int xtraining_data[training_sets * input_dimension],
             int xtraining_targets[training_sets * possible_outputs], u32 *flag,
             u32 cap[32]) {
#pragma HLS INTERFACE m_axi port = xweights1
#pragma HLS INTERFACE m_axi port = xweights2
#pragma HLS INTERFACE m_axi port = xweights3
#pragma HLS INTERFACE m_axi port = xbiases1
#pragma HLS INTERFACE m_axi port = xbiases2
#pragma HLS INTERFACE m_axi port = xbiases3
#pragma HLS INTERFACE m_axi port = xtraining_data
#pragma HLS INTERFACE m_axi port = xtraining_targets
#pragma HLS INTERFACE m_axi port = cap
#pragma HLS INTERFACE s_axilite port = sets
#pragma HLS INTERFACE s_axilite port = flag
#pragma HLS INTERFACE s_axilite port = return

  u32 flag_buf = 0;
  // 29 caps: 8 for external arrays + 21 for local arrays
  Cap caps[29];
  u32 buffer[32];
#pragma HLS array_partition variable = buffer type = complete
#pragma HLS array_partition variable = caps type = complete

  load_cap(8, buffer, cap, caps);

  int weights1[input_dimension * nodes_per_layer] = {1};
  int weights2[nodes_per_layer * nodes_per_layer] = {1};
  int weights3[nodes_per_layer * possible_outputs] = {1};
  int biases1[nodes_per_layer] = {1};
  int biases2[nodes_per_layer] = {1};
  int biases3[possible_outputs] = {1};
  int training_data[training_sets * input_dimension] = {1};
  int training_targets[training_sets * possible_outputs] = {1};

  // Create caps for local arrays: caps[8-28]
  create_cap(input_dimension * nodes_per_layer, caps, 8);   // weights1
  create_cap(nodes_per_layer * nodes_per_layer, caps, 9);   // weights2
  create_cap(nodes_per_layer * possible_outputs, caps, 10); // weights3
  create_cap(nodes_per_layer, caps, 11);                    // biases1
  create_cap(nodes_per_layer, caps, 12);                    // biases2
  create_cap(possible_outputs, caps, 13);                   // biases3
  create_cap(training_sets * input_dimension, caps, 14);    // training_data
  create_cap(nodes_per_layer, caps, 15);                    // activations1
  create_cap(nodes_per_layer, caps, 16);                    // activations2
  create_cap(possible_outputs, caps, 17);                   // activations3
  create_cap(nodes_per_layer, caps, 18);                    // dactivations1
  create_cap(nodes_per_layer, caps, 19);                    // dactivations2
  create_cap(possible_outputs, caps, 20);                   // dactivations3
  create_cap(training_sets * possible_outputs, caps, 21);   // training_targets
  create_cap(possible_outputs, caps, 22);                   // net_outputs
  create_cap(possible_outputs, caps, 23);                   // output_difference
  create_cap(input_dimension * nodes_per_layer, caps, 24);  // delta_weights1
  create_cap(nodes_per_layer * nodes_per_layer, caps, 25);  // delta_weights2
  create_cap(nodes_per_layer * possible_outputs, caps, 26); // delta_weights3
  create_cap(nodes_per_layer, caps, 27); // oracle_activations1
  create_cap(nodes_per_layer, caps, 28); // oracle_activations2

  for (int i = 0; i < training_sets; i++)
    for (int j = 0; j < input_dimension; j++) {
      int temp = cheri_load(xtraining_data, i * input_dimension + j, &flag_buf,
                            caps[6]);
      cheri_store(training_data, i * input_dimension + j, temp, &flag_buf,
                  caps[14]);
    }

  for (int i = 0; i < training_sets; i++)
    for (int j = 0; j < possible_outputs; j++) {
      int temp = cheri_load(xtraining_targets, i * possible_outputs + j,
                            &flag_buf, caps[7]);
      cheri_store(training_targets, i * possible_outputs + j, temp, &flag_buf,
                  caps[21]);
    }

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
      cheri_store(activations1, j, 0, &flag_buf, caps[15]);
      cheri_store(activations2, j, 0, &flag_buf, caps[16]);
      if (j < possible_outputs) {
        cheri_store(activations3, j, 0, &flag_buf, caps[17]);
      }
    }
    matrix_vector_product_with_bias_input_layer(
        biases1, weights1, activations1, &training_data[i * input_dimension],
        &flag_buf, caps);
    RELU(activations1, dactivations1, nodes_per_layer, &flag_buf, caps[15],
         caps[18]);
    matrix_vector_product_with_bias_second_layer(
        biases2, weights2, activations2, activations1, &flag_buf, caps);
    RELU(activations2, dactivations2, nodes_per_layer, &flag_buf, caps[16],
         caps[19]);
    matrix_vector_product_with_bias_output_layer(
        biases3, weights3, activations3, activations2, &flag_buf, caps);
    RELU(activations3, dactivations3, possible_outputs, &flag_buf, caps[17],
         caps[20]);

    soft_max(net_outputs, activations3, &flag_buf, caps);
    take_difference(net_outputs, &training_targets[i * possible_outputs],
                    output_difference, dactivations3, &flag_buf, caps);
    get_delta_matrix_weights3(delta_weights3, output_difference, activations2,
                              &flag_buf, caps);
    get_oracle_activations2(weights3, output_difference, oracle_activations2,
                            dactivations2, &flag_buf, caps);
    get_delta_matrix_weights2(delta_weights2, oracle_activations2, activations1,
                              &flag_buf, caps);
    get_oracle_activations1(weights2, oracle_activations2, oracle_activations1,
                            dactivations1, &flag_buf, caps);
    get_delta_matrix_weights1(delta_weights1, oracle_activations1,
                              &training_data[i * input_dimension], &flag_buf,
                              caps);
    update_weights(weights1, weights2, weights3, delta_weights1, delta_weights2,
                   delta_weights3, biases1, biases2, biases3,
                   oracle_activations1, oracle_activations2, output_difference,
                   &flag_buf, caps);
  }

  for (int i = 0; i < input_dimension * nodes_per_layer; i++) {
    int temp = cheri_load(weights1, i, &flag_buf, caps[8]);
    cheri_store(xweights1, i, temp, &flag_buf, caps[0]);
  }
  for (int i = 0; i < nodes_per_layer * nodes_per_layer; i++) {
    int temp = cheri_load(weights2, i, &flag_buf, caps[9]);
    cheri_store(xweights2, i, temp, &flag_buf, caps[1]);
  }
  for (int i = 0; i < nodes_per_layer * possible_outputs; i++) {
    int temp = cheri_load(weights3, i, &flag_buf, caps[10]);
    cheri_store(xweights3, i, temp, &flag_buf, caps[2]);
  }

  for (int i = 0; i < nodes_per_layer; i++) {
    int temp = cheri_load(biases1, i, &flag_buf, caps[11]);
    cheri_store(xbiases1, i, temp, &flag_buf, caps[3]);
  }
  for (int i = 0; i < nodes_per_layer; i++) {
    int temp = cheri_load(biases2, i, &flag_buf, caps[12]);
    cheri_store(xbiases2, i, temp, &flag_buf, caps[4]);
  }
  for (int i = 0; i < possible_outputs; i++) {
    int temp = cheri_load(biases3, i, &flag_buf, caps[13]);
    cheri_store(xbiases3, i, temp, &flag_buf, caps[5]);
  }

  *flag = flag_buf;
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

  u32 cap[32] = {
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
      0, 0, 0xf90d8007, 0x30001fff, 0, 0, 0xf90d8007, 0x30001fff,
  };
  u32 flag = 0;
  hls_top(training_sets, weights1, weights2, weights3, biases1, biases2,
          biases3, training_data, training_targets, &flag, cap);

  return 0;
}
