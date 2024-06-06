#include <sys/accel.h>

static void init_buffer_config(struct buffer_config *bc, int o, int w, int b) {
  bc->bytes = 4 * (b + 4);
  bc->offset = o;
  bc->addr_width = w;
  bc->size = b;
}

void init_xvect_mult(struct accel_config *x) {
  x->buffer_count = 3;
  x->buffers = malloc((buffer_config)*x->buffer_count);

  init_buffer_config(x->buffers[0], 0x10, 32, 1000);
  init_buffer_config(x->buffers[1], 0x18, 64, 1000);
  init_buffer_config(x->buffers[2], 0x24, 64, 1000);
  x->bytes = 4 * (2 + x->buffers[0]->bytes + x->buffers[1]->bytes +
                  x->buffers[2]->bytes);
}
