#include <sys/accel.h>

#define row_size 64
#define col_size 64
#define N row_size *col_size

static void init_buffer_config(struct buffer_config *bc, int o, int w, int b) {
  bc->offset = o;
  bc->addr_width = w;
  bc->size = b;
  bc->data = malloc(b * sizeof(int));
}

void init_xsort_merge(struct accel_config *x) {
  x->buffer_count = 4;
  x->buffers = malloc((buffer_config)*x->buffer_count);

  init_buffer_config(x->buffers[0], 0x10, 32, 1);
  init_buffer_config(x->buffers[1], 0x18, 64, N);
  init_buffer_config(x->buffers[2], 0x24, 64, N);
  init_buffer_config(x->buffers[3], 0x30, 64, N);
}
