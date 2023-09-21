; ModuleID = 'xvect_mult_linux.c'
source_filename = "xvect_mult_linux.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-unknown-freebsd"

%struct.XVect_mult = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @XVect_mult_Initialize(%struct.XVect_mult* noundef %InstancePtr, i8* noundef %InstanceName) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %InstanceName.addr = alloca i8*, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  store i8* %InstanceName, i8** %InstanceName.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %0, i32 0, i32 0
  store i64 3221233664, i64* %Control_BaseAddress, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @XVect_mult_Release(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{i32 1, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 14.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git ed9d9964fb200af225739a89bfb988cbe8d8f69e)"}
