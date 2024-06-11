#include <sys/accel.h>

#define row_size 64
#define col_size 64
#define N row_size *col_size

struct buffer_config;
struct accel_config;

static void init_buffer(struct buffer_config *bc, int o, int w, int b) {
  int *data = init_buffer_config(bc, o, w, b);
  data = malloc(b * sizeof(int));
}

void init_xviterbi(struct accel_config *x) {
  struct buffer_config *b = set_buffer_count(x, 4);
  struct buffer_config bc[4];
  b = bc;

  init_buffer(get_buffer_config(x, 0), 0x10, 32, 1);
  init_buffer(get_buffer_config(x, 1), 0x18, 64, N);
  init_buffer(get_buffer_config(x, 2), 0x24, 64, N);
  init_buffer(get_buffer_config(x, 3), 0x30, 64, N);
}
