; ModuleID = '/workspace/examples/backprop/backprop_prj/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_hls_top_ir(i32 %sets, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="832" "maxi" %xweights1, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4096" "maxi" %xweights2, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="192" "maxi" %xweights3, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" "maxi" %xbiases1, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="64" "maxi" %xbiases2, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="3" "maxi" %xbiases3, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2119" "maxi" %xtraining_data, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="489" "maxi" %xtraining_targets) local_unnamed_addr #0 {
entry:
  %xweights1_copy = alloca [832 x i32], align 512
  %malloccall = tail call i8* @malloc(i64 16384)
  %xweights2_copy = bitcast i8* %malloccall to [4096 x i32]*
  %xweights3_copy = alloca [192 x i32], align 512
  %xbiases1_copy = alloca [64 x i32], align 512
  %xbiases2_copy = alloca [64 x i32], align 512
  %xbiases3_copy = alloca [3 x i32], align 512
  %malloccall1 = tail call i8* @malloc(i64 8476)
  %xtraining_data_copy = bitcast i8* %malloccall1 to [2119 x i32]*
  %xtraining_targets_copy = alloca [489 x i32], align 512
  %0 = bitcast i32* %xweights1 to [832 x i32]*
  %1 = bitcast i32* %xweights2 to [4096 x i32]*
  %2 = bitcast i32* %xweights3 to [192 x i32]*
  %3 = bitcast i32* %xbiases1 to [64 x i32]*
  %4 = bitcast i32* %xbiases2 to [64 x i32]*
  %5 = bitcast i32* %xbiases3 to [3 x i32]*
  %6 = bitcast i32* %xtraining_data to [2119 x i32]*
  %7 = bitcast i32* %xtraining_targets to [489 x i32]*
  call fastcc void @copy_in([832 x i32]* nonnull %0, [832 x i32]* nonnull align 512 %xweights1_copy, [4096 x i32]* nonnull %1, [4096 x i32]* %xweights2_copy, [192 x i32]* nonnull %2, [192 x i32]* nonnull align 512 %xweights3_copy, [64 x i32]* nonnull %3, [64 x i32]* nonnull align 512 %xbiases1_copy, [64 x i32]* nonnull %4, [64 x i32]* nonnull align 512 %xbiases2_copy, [3 x i32]* nonnull %5, [3 x i32]* nonnull align 512 %xbiases3_copy, [2119 x i32]* nonnull %6, [2119 x i32]* %xtraining_data_copy, [489 x i32]* nonnull %7, [489 x i32]* nonnull align 512 %xtraining_targets_copy)
  call void @apatb_hls_top_hw(i32 %sets, [832 x i32]* %xweights1_copy, [4096 x i32]* %xweights2_copy, [192 x i32]* %xweights3_copy, [64 x i32]* %xbiases1_copy, [64 x i32]* %xbiases2_copy, [3 x i32]* %xbiases3_copy, [2119 x i32]* %xtraining_data_copy, [489 x i32]* %xtraining_targets_copy)
  call void @copy_back([832 x i32]* %0, [832 x i32]* %xweights1_copy, [4096 x i32]* %1, [4096 x i32]* %xweights2_copy, [192 x i32]* %2, [192 x i32]* %xweights3_copy, [64 x i32]* %3, [64 x i32]* %xbiases1_copy, [64 x i32]* %4, [64 x i32]* %xbiases2_copy, [3 x i32]* %5, [3 x i32]* %xbiases3_copy, [2119 x i32]* %6, [2119 x i32]* %xtraining_data_copy, [489 x i32]* %7, [489 x i32]* %xtraining_targets_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([832 x i32]* noalias readonly, [832 x i32]* noalias align 512, [4096 x i32]* noalias readonly, [4096 x i32]* noalias, [192 x i32]* noalias readonly, [192 x i32]* noalias align 512, [64 x i32]* noalias readonly, [64 x i32]* noalias align 512, [64 x i32]* noalias readonly, [64 x i32]* noalias align 512, [3 x i32]* noalias readonly, [3 x i32]* noalias align 512, [2119 x i32]* noalias readonly, [2119 x i32]* noalias, [489 x i32]* noalias readonly, [489 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a832i32([832 x i32]* align 512 %1, [832 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %3, [4096 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a192i32([192 x i32]* align 512 %5, [192 x i32]* %4)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %7, [64 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %9, [64 x i32]* %8)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* align 512 %11, [3 x i32]* %10)
  call fastcc void @onebyonecpy_hls.p0a2119i32([2119 x i32]* %13, [2119 x i32]* %12)
  call fastcc void @onebyonecpy_hls.p0a489i32([489 x i32]* align 512 %15, [489 x i32]* %14)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a832i32([832 x i32]* noalias align 512 %dst, [832 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [832 x i32]* %dst, null
  %1 = icmp eq [832 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a832i32([832 x i32]* nonnull %dst, [832 x i32]* nonnull %src, i64 832)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a832i32([832 x i32]* %dst, [832 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [832 x i32]* %src, null
  %1 = icmp eq [832 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [832 x i32], [832 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [832 x i32], [832 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* noalias %dst, [4096 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [4096 x i32]* %dst, null
  %1 = icmp eq [4096 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4096i32([4096 x i32]* nonnull %dst, [4096 x i32]* nonnull %src, i64 4096)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a4096i32([4096 x i32]* %dst, [4096 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [4096 x i32]* %src, null
  %1 = icmp eq [4096 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4096 x i32], [4096 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4096 x i32], [4096 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a192i32([192 x i32]* noalias align 512 %dst, [192 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [192 x i32]* %dst, null
  %1 = icmp eq [192 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a192i32([192 x i32]* nonnull %dst, [192 x i32]* nonnull %src, i64 192)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a192i32([192 x i32]* %dst, [192 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [192 x i32]* %src, null
  %1 = icmp eq [192 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [192 x i32], [192 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [192 x i32], [192 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* noalias align 512 %dst, [64 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x i32]* %dst, null
  %1 = icmp eq [64 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a64i32([64 x i32]* nonnull %dst, [64 x i32]* nonnull %src, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a64i32([64 x i32]* %dst, [64 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [64 x i32]* %src, null
  %1 = icmp eq [64 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [64 x i32], [64 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [64 x i32], [64 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* noalias align 512 %dst, [3 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x i32]* %dst, null
  %1 = icmp eq [3 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3i32([3 x i32]* nonnull %dst, [3 x i32]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a3i32([3 x i32]* %dst, [3 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x i32]* %src, null
  %1 = icmp eq [3 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x i32], [3 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x i32], [3 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2119i32([2119 x i32]* noalias %dst, [2119 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2119 x i32]* %dst, null
  %1 = icmp eq [2119 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2119i32([2119 x i32]* nonnull %dst, [2119 x i32]* nonnull %src, i64 2119)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a2119i32([2119 x i32]* %dst, [2119 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [2119 x i32]* %src, null
  %1 = icmp eq [2119 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2119 x i32], [2119 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2119 x i32], [2119 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a489i32([489 x i32]* noalias align 512 %dst, [489 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [489 x i32]* %dst, null
  %1 = icmp eq [489 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a489i32([489 x i32]* nonnull %dst, [489 x i32]* nonnull %src, i64 489)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a489i32([489 x i32]* %dst, [489 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [489 x i32]* %src, null
  %1 = icmp eq [489 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [489 x i32], [489 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [489 x i32], [489 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([832 x i32]* noalias, [832 x i32]* noalias readonly align 512, [4096 x i32]* noalias, [4096 x i32]* noalias readonly, [192 x i32]* noalias, [192 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [3 x i32]* noalias, [3 x i32]* noalias readonly align 512, [2119 x i32]* noalias, [2119 x i32]* noalias readonly, [489 x i32]* noalias, [489 x i32]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a832i32([832 x i32]* %0, [832 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %2, [4096 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a192i32([192 x i32]* %4, [192 x i32]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %6, [64 x i32]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %8, [64 x i32]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* %10, [3 x i32]* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a2119i32([2119 x i32]* %12, [2119 x i32]* %13)
  call fastcc void @onebyonecpy_hls.p0a489i32([489 x i32]* %14, [489 x i32]* align 512 %15)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_hls_top_hw(i32, [832 x i32]*, [4096 x i32]*, [192 x i32]*, [64 x i32]*, [64 x i32]*, [3 x i32]*, [2119 x i32]*, [489 x i32]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([832 x i32]* noalias, [832 x i32]* noalias readonly align 512, [4096 x i32]* noalias, [4096 x i32]* noalias readonly, [192 x i32]* noalias, [192 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [64 x i32]* noalias, [64 x i32]* noalias readonly align 512, [3 x i32]* noalias, [3 x i32]* noalias readonly align 512, [2119 x i32]* noalias, [2119 x i32]* noalias readonly, [489 x i32]* noalias, [489 x i32]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* %10, [3 x i32]* align 512 %11)
  ret void
}

define void @hls_top_hw_stub_wrapper(i32, [832 x i32]*, [4096 x i32]*, [192 x i32]*, [64 x i32]*, [64 x i32]*, [3 x i32]*, [2119 x i32]*, [489 x i32]*) #5 {
entry:
  call void @copy_out([832 x i32]* null, [832 x i32]* %1, [4096 x i32]* null, [4096 x i32]* %2, [192 x i32]* null, [192 x i32]* %3, [64 x i32]* null, [64 x i32]* %4, [64 x i32]* null, [64 x i32]* %5, [3 x i32]* null, [3 x i32]* %6, [2119 x i32]* null, [2119 x i32]* %7, [489 x i32]* null, [489 x i32]* %8)
  %9 = bitcast [832 x i32]* %1 to i32*
  %10 = bitcast [4096 x i32]* %2 to i32*
  %11 = bitcast [192 x i32]* %3 to i32*
  %12 = bitcast [64 x i32]* %4 to i32*
  %13 = bitcast [64 x i32]* %5 to i32*
  %14 = bitcast [3 x i32]* %6 to i32*
  %15 = bitcast [2119 x i32]* %7 to i32*
  %16 = bitcast [489 x i32]* %8 to i32*
  call void @hls_top_hw_stub(i32 %0, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16)
  call void @copy_in([832 x i32]* null, [832 x i32]* %1, [4096 x i32]* null, [4096 x i32]* %2, [192 x i32]* null, [192 x i32]* %3, [64 x i32]* null, [64 x i32]* %4, [64 x i32]* null, [64 x i32]* %5, [3 x i32]* null, [3 x i32]* %6, [2119 x i32]* null, [2119 x i32]* %7, [489 x i32]* null, [489 x i32]* %8)
  ret void
}

declare void @hls_top_hw_stub(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
