; ModuleID = 'xvect_mult_sinit.c'
source_filename = "xvect_mult_sinit.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-unknown-freebsd"

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{i32 1, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 14.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git ed9d9964fb200af225739a89bfb988cbe8d8f69e)"}
