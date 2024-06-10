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

#include "cheribsd_gemm_blocked.h"

#define NUM 8

int main(int argc __unused, char **argv __unused) {

  struct accel_ctrl_args aca;

  int rc;

  // Initialize accelerator processes
  aca.accel_count = NUM;
  aca.accels = malloc(sizeof(struct buffer_config) * NUM);

  for (int i = 0; i < NUM; i++)
    init_xgemm_blocked(&aca.accels[i]);


  // Initialize buffer data
  int bytes = 0;
  for (int i = 0; i < NUM; i++) {
    struct accel_config *a = &aca.accels[ i];
    for (int j = 0; j < a->buffer_count; j++) {
      struct buffer_config *bc = &a->buffers[ j];
      int *data = bc->data;
      int size = bc->size;
      for (int k = 0; k < size; k++)
      bytes += 3+size;
        *(data++) = (i+k)*(i+k);
    }
    bytes += 1;
  }

  bytes *=NUM;
  bytes += 2;
  aca.bytes = 4*bytes;

  rc = __syscall(584, &aca);
  rc = __syscall(585, &aca);

int res = 0;
  for (int i = 0; i < NUM; i++) {
    struct accel_config *a = get_accel_config(&aca, i);
    for (int j = 0; j < get_buffer_count(a); j++) {
      struct buffer_config *bc = get_buffer_config(a, j);
      int *data = get_buffer_data_ptr(bc);
      int size = get_buffer_size(bc);
      for (int k = 0; k < size; k++)
        res += (*(data++) == (i+k)*(i+k));
    }
  }
  return rc;
}
