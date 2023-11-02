MEMORY {
  MEM  (rwx) : ORIGIN = 0x80000000, LENGTH = 0x10000000
  /* NOTE: was advised that the memory mapped region for the uart should not be
   *       defined here
   */
  /*UART (rw) : ORIGIN = 0x62300000, LENGTH = 0x1000*/
}

_MEM_END = ORIGIN(MEM) + LENGTH(MEM) - 16;

ENTRY(_start)

SECTIONS
{
  .text : { *(.text) } > MEM
  .rodata : { *(.rodata) } > MEM
  .data : { *(.data) } > MEM
  .bss (NOLOAD) : { *(.bss) } > MEM
  .sbss (NOLOAD) : { *(.sbss) } > MEM
  /*.uart (NOLOAD) : { uart16550 = .; } > UART*/
}
