.section .text

.global _start

_start:
  la sp, _MEM_END
  la a1, _trap
  csrw mtvec, a1
  jal main

_end:
  j _end
  
_trap:
  j _trap
