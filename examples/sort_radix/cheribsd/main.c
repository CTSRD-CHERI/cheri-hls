// clang-format off
#include <sys/types.h>
#include <sys/accel.h>
#include <sys/module.h>
#include <sys/syscall.h>
// clang-format on 

#include <err.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "cheribsd_sort_radix.h"

#define NUM 8

int main(int argc __unused, char **argv __unused) {

  struct accel_ctrl_args aca;

  // Initialize accelerator processes
  struct accel_config *aa = set_accel_count(&aca, NUM);
  aa = malloc(sizeof(struct buffer_config) * NUM);

  for (int i = 0; i < NUM; i++)
    init_xsort_radix(get_accel_config(&aca, i));

  // Initialize buffer data
  for (int i = 0; i < NUM; i++) {
    struct accel_config *a = get_accel_config(&aca, i);
    for (int j = 0; j < get_buffer_count(a); j++) {
      struct buffer_config *bc = get_buffer_config(a, j);
      int *data = get_buffer_data_ptr(bc);
      int size = get_buffer_size(bc);
      for (int k = 0; k < size; k++)
        *(data++) = 1;
    }
  }

  int rc = __syscall(584, &aca);
  rc = __syscall(585, &aca);

  for (int i = 0; i < NUM; i++) {
    struct accel_config *a = get_accel_config(&aca, i);
    for (int j = 0; j < get_buffer_count(a); j++) {
      struct buffer_config *bc = get_buffer_config(a, j);
      int *data = get_buffer_data_ptr(bc);
      int size = get_buffer_size(bc);
      for (int k = 0; k < size; k++)
        ;
      // print("buffer value: accelerator %d buffer %d element %d = %d\n", i, j,
      //       k, *(data++));
    }
  }
  return rc;
}
