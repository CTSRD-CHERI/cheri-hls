#include <sys/accel.h>
#include <sys/module.h>
#include <sys/syscall.h>
#include <sys/types.h>

#include <err.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "cheribsd_md_grid.h"

#define NUM 8

int main(int argc __unused, char **argv __unused) {

  struct accel_ctrl_args aca;

  // Initialize accelerator processes
  aca.accel_count = NUM;
  aca.accels = malloc((accel_config)*aca.accel_count);
  int bytes = 0;
  for (int i = 0; i < NUM; i++) {
    init_xmd_grid(aca.accels[i]);
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

  rc = __syscall(584, &aca);
  rc = __syscall(585, &aca);

  for (int i = 0; i < NUM; i++)
    for (int j = 0; j < aca.accels[i]->buffer_count; j++)
      for (int k = 0; k < aca.accels[i]->buffers[j]->size; k++)
        print("buffer value: accelerator %d buffer %d element %d = %d\n", i, j,
              k, aca.accels[i]->buffers[j]->data[k]);

  return rc;
}
