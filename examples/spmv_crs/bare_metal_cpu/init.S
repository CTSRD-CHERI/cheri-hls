.section .text

.global _start

#define STACK_SIZE 0x100000

.option nocapmode
_start:
  # Get PCC
  cspecialr ct0, pcc
  # Set it to cap mode
  li t1, 1
  csetflags ct0, ct0, t1
  # Set its address after this block
  la t2, _capstart
  csetaddr ct0, ct0, t2
  # Jump into cap mode
  jalr.cap ct0

.option capmode
_capstart:
  # Setup a stack
  cllc ct0, _MEM_END - STACK_SIZE
  li t1, STACK_SIZE
  csetbounds csp, ct0, t1
  cincoffset csp, csp, t1

  # Install a trap vector
  cllc ct0, _trap
  cgetaddr t1, ct0
  ori t1, t1, 1
  csetaddr ct0, ct0, t1
  cspecialw mtcc, ct0

  j main

_end:
  j _end

_trap:
  j _trap

.global tohost
tohost:
  .dword 0
