; ModuleID = 'xvect_mult.c'
source_filename = "xvect_mult.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-unknown-freebsd"

%struct.XVect_mult = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_Start(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data = alloca i32, align 4
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 0
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  %and = and i32 %6, 128
  store i32 %and, i32* %Data, align 4
  %7 = load i32, i32* %Data, align 4
  %or = or i32 %7, 1
  %8 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress3 = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %8, i32 0, i32 0
  %9 = load i64, i64* %Control_BaseAddress3, align 8
  %add4 = add i64 %9, 0
  %10 = inttoptr i64 %add4 to i32*
  store volatile i32 %or, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @XVect_mult_IsDone(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data = alloca i32, align 4
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 0
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  store i32 %6, i32* %Data, align 4
  %7 = load i32, i32* %Data, align 4
  %shr = lshr i32 %7, 1
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @XVect_mult_IsIdle(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data = alloca i32, align 4
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 0
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  store i32 %6, i32* %Data, align 4
  %7 = load i32, i32* %Data, align 4
  %shr = lshr i32 %7, 2
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @XVect_mult_IsReady(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data = alloca i32, align 4
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 0
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  store i32 %6, i32* %Data, align 4
  %7 = load i32, i32* %Data, align 4
  %and = and i32 %7, 1
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_EnableAutoRestart(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 0
  %5 = inttoptr i64 %add to i32*
  store volatile i32 128, i32* %5, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_DisableAutoRestart(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 0
  %5 = inttoptr i64 %add to i32*
  store volatile i32 0, i32* %5, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_Set_size(%struct.XVect_mult* noundef %InstancePtr, i32 noundef signext %Data) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data.addr = alloca i32, align 4
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  store i32 %Data, i32* %Data.addr, align 4
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load i32, i32* %Data.addr, align 4
  %4 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %4, i32 0, i32 0
  %5 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %5, 16
  %6 = inttoptr i64 %add to i32*
  store volatile i32 %3, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @XVect_mult_Get_size(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data = alloca i32, align 4
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 16
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  store i32 %6, i32* %Data, align 4
  %7 = load i32, i32* %Data, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_Set_a(%struct.XVect_mult* noundef %InstancePtr, i64 noundef %Data) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data.addr = alloca i64, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  store i64 %Data, i64* %Data.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load i64, i64* %Data.addr, align 8
  %conv3 = trunc i64 %3 to i32
  %4 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %4, i32 0, i32 0
  %5 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %5, 24
  %6 = inttoptr i64 %add to i32*
  store volatile i32 %conv3, i32* %6, align 4
  %7 = load i64, i64* %Data.addr, align 8
  %shr = lshr i64 %7, 32
  %conv4 = trunc i64 %shr to i32
  %8 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress5 = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %8, i32 0, i32 0
  %9 = load i64, i64* %Control_BaseAddress5, align 8
  %add6 = add i64 %9, 28
  %10 = inttoptr i64 %add6 to i32*
  store volatile i32 %conv4, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XVect_mult_Get_a(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data = alloca i64, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 24
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  %conv3 = zext i32 %6 to i64
  store i64 %conv3, i64* %Data, align 8
  %7 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress4 = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %7, i32 0, i32 0
  %8 = load i64, i64* %Control_BaseAddress4, align 8
  %add5 = add i64 %8, 28
  %9 = inttoptr i64 %add5 to i32*
  %10 = load volatile i32, i32* %9, align 4
  %conv6 = zext i32 %10 to i64
  %shl = shl i64 %conv6, 32
  %11 = load i64, i64* %Data, align 8
  %add7 = add i64 %11, %shl
  store i64 %add7, i64* %Data, align 8
  %12 = load i64, i64* %Data, align 8
  ret i64 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_Set_b(%struct.XVect_mult* noundef %InstancePtr, i64 noundef %Data) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data.addr = alloca i64, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  store i64 %Data, i64* %Data.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load i64, i64* %Data.addr, align 8
  %conv3 = trunc i64 %3 to i32
  %4 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %4, i32 0, i32 0
  %5 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %5, 36
  %6 = inttoptr i64 %add to i32*
  store volatile i32 %conv3, i32* %6, align 4
  %7 = load i64, i64* %Data.addr, align 8
  %shr = lshr i64 %7, 32
  %conv4 = trunc i64 %shr to i32
  %8 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress5 = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %8, i32 0, i32 0
  %9 = load i64, i64* %Control_BaseAddress5, align 8
  %add6 = add i64 %9, 40
  %10 = inttoptr i64 %add6 to i32*
  store volatile i32 %conv4, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XVect_mult_Get_b(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data = alloca i64, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 36
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  %conv3 = zext i32 %6 to i64
  store i64 %conv3, i64* %Data, align 8
  %7 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress4 = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %7, i32 0, i32 0
  %8 = load i64, i64* %Control_BaseAddress4, align 8
  %add5 = add i64 %8, 40
  %9 = inttoptr i64 %add5 to i32*
  %10 = load volatile i32, i32* %9, align 4
  %conv6 = zext i32 %10 to i64
  %shl = shl i64 %conv6, 32
  %11 = load i64, i64* %Data, align 8
  %add7 = add i64 %11, %shl
  store i64 %add7, i64* %Data, align 8
  %12 = load i64, i64* %Data, align 8
  ret i64 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_Set_c(%struct.XVect_mult* noundef %InstancePtr, i64 noundef %Data) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data.addr = alloca i64, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  store i64 %Data, i64* %Data.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load i64, i64* %Data.addr, align 8
  %conv3 = trunc i64 %3 to i32
  %4 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %4, i32 0, i32 0
  %5 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %5, 48
  %6 = inttoptr i64 %add to i32*
  store volatile i32 %conv3, i32* %6, align 4
  %7 = load i64, i64* %Data.addr, align 8
  %shr = lshr i64 %7, 32
  %conv4 = trunc i64 %shr to i32
  %8 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress5 = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %8, i32 0, i32 0
  %9 = load i64, i64* %Control_BaseAddress5, align 8
  %add6 = add i64 %9, 52
  %10 = inttoptr i64 %add6 to i32*
  store volatile i32 %conv4, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @XVect_mult_Get_c(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Data = alloca i64, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 48
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  %conv3 = zext i32 %6 to i64
  store i64 %conv3, i64* %Data, align 8
  %7 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress4 = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %7, i32 0, i32 0
  %8 = load i64, i64* %Control_BaseAddress4, align 8
  %add5 = add i64 %8, 52
  %9 = inttoptr i64 %add5 to i32*
  %10 = load volatile i32, i32* %9, align 4
  %conv6 = zext i32 %10 to i64
  %shl = shl i64 %conv6, 32
  %11 = load i64, i64* %Data, align 8
  %add7 = add i64 %11, %shl
  store i64 %add7, i64* %Data, align 8
  %12 = load i64, i64* %Data, align 8
  ret i64 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_InterruptGlobalEnable(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 4
  %5 = inttoptr i64 %add to i32*
  store volatile i32 1, i32* %5, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_InterruptGlobalDisable(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 4
  %5 = inttoptr i64 %add to i32*
  store volatile i32 0, i32* %5, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_InterruptEnable(%struct.XVect_mult* noundef %InstancePtr, i32 noundef signext %Mask) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Mask.addr = alloca i32, align 4
  %Register = alloca i32, align 4
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  store i32 %Mask, i32* %Mask.addr, align 4
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 8
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  store i32 %6, i32* %Register, align 4
  %7 = load i32, i32* %Register, align 4
  %8 = load i32, i32* %Mask.addr, align 4
  %or = or i32 %7, %8
  %9 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress3 = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %9, i32 0, i32 0
  %10 = load i64, i64* %Control_BaseAddress3, align 8
  %add4 = add i64 %10, 8
  %11 = inttoptr i64 %add4 to i32*
  store volatile i32 %or, i32* %11, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_InterruptDisable(%struct.XVect_mult* noundef %InstancePtr, i32 noundef signext %Mask) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Mask.addr = alloca i32, align 4
  %Register = alloca i32, align 4
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  store i32 %Mask, i32* %Mask.addr, align 4
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 8
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  store i32 %6, i32* %Register, align 4
  %7 = load i32, i32* %Register, align 4
  %8 = load i32, i32* %Mask.addr, align 4
  %neg = xor i32 %8, -1
  %and = and i32 %7, %neg
  %9 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress3 = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %9, i32 0, i32 0
  %10 = load i64, i64* %Control_BaseAddress3, align 8
  %add4 = add i64 %10, 8
  %11 = inttoptr i64 %add4 to i32*
  store volatile i32 %and, i32* %11, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @XVect_mult_InterruptClear(%struct.XVect_mult* noundef %InstancePtr, i32 noundef signext %Mask) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  %Mask.addr = alloca i32, align 4
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  store i32 %Mask, i32* %Mask.addr, align 4
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load i32, i32* %Mask.addr, align 4
  %4 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %4, i32 0, i32 0
  %5 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %5, 12
  %6 = inttoptr i64 %add to i32*
  store volatile i32 %3, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @XVect_mult_InterruptGetEnabled(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 8
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @XVect_mult_InterruptGetStatus(%struct.XVect_mult* noundef %InstancePtr) #0 {
entry:
  %InstancePtr.addr = alloca %struct.XVect_mult*, align 8
  store %struct.XVect_mult* %InstancePtr, %struct.XVect_mult** %InstancePtr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %cmp = icmp ne %struct.XVect_mult* %0, null
  %conv = zext i1 %cmp to i32
  %1 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %IsReady = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %1, i32 0, i32 1
  %2 = load i32, i32* %IsReady, align 8
  %cmp1 = icmp eq i32 %2, 1
  %conv2 = zext i1 %cmp1 to i32
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %InstancePtr.addr, align 8
  %Control_BaseAddress = getelementptr inbounds %struct.XVect_mult, %struct.XVect_mult* %3, i32 0, i32 0
  %4 = load i64, i64* %Control_BaseAddress, align 8
  %add = add i64 %4, 12
  %5 = inttoptr i64 %add to i32*
  %6 = load volatile i32, i32* %5, align 4
  ret i32 %6
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
