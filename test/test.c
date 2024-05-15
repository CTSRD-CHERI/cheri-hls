#include <sys/types.h>
#include <sys/accel.h>
#include <sys/module.h>
#include <sys/syscall.h>

#include <err.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int
main(int argc __unused, char **argv __unused)
{

	struct accel_ctrl_args aca;
	int rc;

	printf("------\ntest accel syscall\n------\n");
	aca.buffer_count = 12;
	printf("buffer = %d\n", aca.buffer_count);
	rc = __syscall(584, &aca);
	printf("after malloc: buffer = %d\n", aca.buffer_count);
	rc = __syscall(585, &aca);
	printf("after demalloc: buffer = %d\n", aca.buffer_count);

	return rc;
}
