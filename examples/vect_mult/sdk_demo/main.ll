; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-unknown-freebsd"

%struct.XVect_mult = type { i64, i32 }

@vect_mult_done = dso_local global i32 0, align 4
@vect_mult = dso_local global %struct.XVect_mult zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"vect_mult\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %size = alloca i32, align 4
  %a = alloca [1000 x i32], align 4
  %b = alloca [1000 x i32], align 4
  %buffer_a = alloca i32*, align 8
  %buffer_b = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %call = call signext i32 @hls_vect_mult_init(%struct.XVect_mult* noundef @vect_mult)
  store i32 %call, i32* %status, align 4
  %0 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call signext i32 @setup_interrupt()
  store i32 %call1, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = call signext i32 @XVect_mult_IsReady(%struct.XVect_mult* noundef @vect_mult)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  br label %if.end7

if.else:                                          ; preds = %if.end4
  store i32 -1, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then6
  store i32 100, i32* %size, align 4
  %2 = load i32, i32* %size, align 4
  call void @XVect_mult_Set_size(%struct.XVect_mult* noundef @vect_mult, i32 noundef signext %2)
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %a, i64 0, i64 0
  store i32* %arrayidx, i32** %buffer_a, align 8
  %arrayidx8 = getelementptr inbounds [1000 x i32], [1000 x i32]* %b, i64 0, i64 0
  store i32* %arrayidx8, i32** %buffer_b, align 8
  %3 = load i32*, i32** %buffer_a, align 8
  %4 = ptrtoint i32* %3 to i64
  call void @XVect_mult_Set_a(%struct.XVect_mult* noundef @vect_mult, i64 noundef %4)
  %5 = load i32*, i32** %buffer_b, align 8
  %6 = ptrtoint i32* %5 to i64
  call void @XVect_mult_Set_b(%struct.XVect_mult* noundef @vect_mult, i64 noundef %6)
  call void @hls_vect_mult_start(i8* noundef bitcast (%struct.XVect_mult* @vect_mult to i8*))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end7
  %7 = load i32, i32* @vect_mult_done, align 4
  %tobool9 = icmp ne i32 %7, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.else, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i32 @hls_vect_mult_init(%struct.XVect_mult* noundef %vect_mult_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %vect_mult_ptr.addr = alloca %struct.XVect_mult*, align 8
  %status = alloca i32, align 4
  store %struct.XVect_mult* %vect_mult_ptr, %struct.XVect_mult** %vect_mult_ptr.addr, align 8
  %0 = load %struct.XVect_mult*, %struct.XVect_mult** %vect_mult_ptr.addr, align 8
  %call = call signext i32 @XVect_mult_Initialize(%struct.XVect_mult* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %status, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare dso_local signext i32 @XVect_mult_IsReady(%struct.XVect_mult* noundef) #1

declare dso_local void @XVect_mult_Set_size(%struct.XVect_mult* noundef, i32 noundef signext) #1

declare dso_local void @XVect_mult_Set_a(%struct.XVect_mult* noundef, i64 noundef) #1

declare dso_local void @XVect_mult_Set_b(%struct.XVect_mult* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hls_vect_mult_start(i8* noundef %vect_mult_ptr) #0 {
entry:
  %vect_mult_ptr.addr = alloca i8*, align 8
  %pAccelerator = alloca %struct.XVect_mult*, align 8
  store i8* %vect_mult_ptr, i8** %vect_mult_ptr.addr, align 8
  %0 = load i8*, i8** %vect_mult_ptr.addr, align 8
  %1 = bitcast i8* %0 to %struct.XVect_mult*
  store %struct.XVect_mult* %1, %struct.XVect_mult** %pAccelerator, align 8
  %2 = load %struct.XVect_mult*, %struct.XVect_mult** %pAccelerator, align 8
  call void @XVect_mult_InterruptEnable(%struct.XVect_mult* noundef %2, i32 noundef signext 1)
  %3 = load %struct.XVect_mult*, %struct.XVect_mult** %pAccelerator, align 8
  call void @XVect_mult_InterruptGlobalEnable(%struct.XVect_mult* noundef %3)
  %4 = load %struct.XVect_mult*, %struct.XVect_mult** %pAccelerator, align 8
  call void @XVect_mult_Start(%struct.XVect_mult* noundef %4)
  ret void
}

declare dso_local signext i32 @XVect_mult_Initialize(%struct.XVect_mult* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i32 @setup_interrupt() #0 {
entry:
  ret i32 0
}

declare dso_local void @XVect_mult_InterruptEnable(%struct.XVect_mult* noundef, i32 noundef signext) #1

declare dso_local void @XVect_mult_InterruptGlobalEnable(%struct.XVect_mult* noundef) #1

declare dso_local void @XVect_mult_Start(%struct.XVect_mult* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,-save-restore" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{i32 1, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 14.0.0 (https://github.com/CTSRD-CHERI/llvm-project.git ed9d9964fb200af225739a89bfb988cbe8d8f69e)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
