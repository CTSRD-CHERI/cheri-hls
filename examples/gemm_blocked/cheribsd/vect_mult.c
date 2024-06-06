#include <sys/accel.h>
#include <sys/module.h>
#include <sys/syscall.h>
#include <sys/types.h>

#include <err.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "cheribsd_accel_vect_mult.h"
// static void init_buffer_config(struct buffer_config *bc, int o, int w, int b)
// {
//   bc->bytes = 4 * (b + 4);
//   bc->offset = o;
//   bc->addr_width = w;
//   bc->size = b;
// }
// void init_xvect_mult(struct accel_config *x) {
//   x->buffer_count = 3;
//   x->buffers = malloc((buffer_config)*x->buffer_count);
//
//   init_buffer_config(x->buffers[0], 0x10, 32, 1000);
//   init_buffer_config(x->buffers[1], 0x18, 64, 1000);
//   init_buffer_config(x->buffers[2], 0x24, 64, 1000);
//   x->bytes = 4 * (2 + x->buffers[0]->bytes + x->buffers[1]->bytes +
//                   x->buffers[2]->bytes);
// }

#define NUM 8

int main(int argc __unused, char **argv __unused) {
  printf("------\n");
  printf("test vect_mult\n");
  printf("------\n");

  struct accel_ctrl_args aca;

  // Initialize accelerator processes
  aca.accel_count = NUM;
  aca.accels = malloc((accel_config)*aca.accel_count);
  int bytes = 0;
  for (int i = 0; i < NUM; i++) {
    init_xvect_mult(aca.accels[i]);
    bytes += aca.accel[i].bytes;
  }
  aca.bytes = bytes;

  // Initialize buffer data
  for (int i = 0; i < NUM; i++)
    for (int j = 0; j < aca.accels[i]->buffer_count; j++) {
      aca.accels[i]->buffers[j]->data = malloc((int)*aca.accel_count);
      for (int k = 0; k < aca.accels[i]->buffers[j]->size; k++)
        aca.accels[i]->buffers[j]->data[k] = 1;
    }

  printf("Allocating accelerator buffers for %d vect_mult processes\n", NUM);
  rc = __syscall(584, &aca);
  printf("Deallocating accelerator buffers for %d vect_mult processes\n", NUM);
  rc = __syscall(585, &aca);

  for (int i = 0; i < NUM; i++)
    for (int j = 0; j < aca.accels[i]->buffer_count; j++)
      for (int k = 0; k < aca.accels[i]->buffers[j]->size; k++)
        print("buffer value: accelerator %d buffer %d element %d = %d\n", i, j,
              k, aca.accels[i]->buffers[j]->data[k]);

  printf("------\n");
  printf("Finish.\n");
  printf("------\n");
  return rc;
}
