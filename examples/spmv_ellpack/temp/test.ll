; ModuleID = '/workspace/examples/spmv_ellpack/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @hls_top(i32 %n, i32 %l, i32* "fpga.decayed.dim.hint"="4940" %xnzval, i32* "fpga.decayed.dim.hint"="4940" %xcols, i32* "fpga.decayed.dim.hint"="494" %xvec, i32* "fpga.decayed.dim.hint"="494" %xout) #0 !dbg !7 !fpga.function.pragma !13 {
entry:
  %nzval = alloca [4940 x i32], align 4
  %cols = alloca [4940 x i32], align 4
  %vec = alloca [494 x i32], align 4
  %out = alloca [494 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 %l, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32* %xnzval, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32* %xcols, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32* %xvec, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32* %xout, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xnzval, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !28
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xcols, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !29
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xvec, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !30
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xout, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !31
  call void @llvm.sideeffect() #6 [ "xlx_s_axilite"(i32 %n, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !32
  call void @llvm.sideeffect() #6 [ "xlx_s_axilite"(i32 %l, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !33
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !34
  %0 = bitcast [4940 x i32]* %nzval to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 19760, i8* %0) #8, !dbg !35
  call void @llvm.dbg.declare(metadata [4940 x i32]* %nzval, metadata !36, metadata !DIExpression()), !dbg !40
  %1 = bitcast [4940 x i32]* %cols to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 19760, i8* %1) #8, !dbg !41
  call void @llvm.dbg.declare(metadata [4940 x i32]* %cols, metadata !42, metadata !DIExpression()), !dbg !43
  %2 = bitcast [494 x i32]* %vec to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 1976, i8* %2) #8, !dbg !44
  call void @llvm.dbg.declare(metadata [494 x i32]* %vec, metadata !45, metadata !DIExpression()), !dbg !49
  %3 = bitcast [494 x i32]* %out to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 1976, i8* %3) #8, !dbg !50
  call void @llvm.dbg.declare(metadata [494 x i32]* %out, metadata !51, metadata !DIExpression()), !dbg !52
  br label %VITIS_LOOP_34_1, !dbg !50

VITIS_LOOP_34_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.cond, !dbg !55

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_34_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_34_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !53, metadata !DIExpression()), !dbg !54
  %mul = mul nsw i32 %n, %l, !dbg !57
  %cmp = icmp slt i32 %i.0, %mul, !dbg !59
  br i1 %cmp, label %for.body, label %for.end, !dbg !60

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !61
  %arrayidx = getelementptr inbounds i32, i32* %xnzval, i64 %idxprom, !dbg !61
  %4 = load i32, i32* %arrayidx, align 4, !dbg !61
  %idxprom1 = sext i32 %i.0 to i64, !dbg !62
  %arrayidx2 = getelementptr inbounds [4940 x i32], [4940 x i32]* %nzval, i64 0, i64 %idxprom1, !dbg !62
  store i32 %4, i32* %arrayidx2, align 4, !dbg !63
  br label %for.inc, !dbg !62

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !64
  call void @llvm.dbg.value(metadata i32 %inc, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.cond, !dbg !65, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_36_2, !dbg !67

VITIS_LOOP_36_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.cond3, !dbg !69

for.cond3:                                        ; preds = %for.inc11, %VITIS_LOOP_36_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_36_2 ], [ %inc12, %for.inc11 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !53, metadata !DIExpression()), !dbg !54
  %mul4 = mul nsw i32 %n, %l, !dbg !71
  %cmp5 = icmp slt i32 %i.1, %mul4, !dbg !73
  br i1 %cmp5, label %for.body6, label %for.end13, !dbg !74

for.body6:                                        ; preds = %for.cond3
  %idxprom7 = sext i32 %i.1 to i64, !dbg !75
  %arrayidx8 = getelementptr inbounds i32, i32* %xcols, i64 %idxprom7, !dbg !75
  %5 = load i32, i32* %arrayidx8, align 4, !dbg !75
  %idxprom9 = sext i32 %i.1 to i64, !dbg !76
  %arrayidx10 = getelementptr inbounds [4940 x i32], [4940 x i32]* %cols, i64 0, i64 %idxprom9, !dbg !76
  store i32 %5, i32* %arrayidx10, align 4, !dbg !77
  br label %for.inc11, !dbg !76

for.inc11:                                        ; preds = %for.body6
  %inc12 = add nsw i32 %i.1, 1, !dbg !78
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.cond3, !dbg !79, !llvm.loop !80

for.end13:                                        ; preds = %for.cond3
  br label %VITIS_LOOP_38_3, !dbg !81

VITIS_LOOP_38_3:                                  ; preds = %for.end13
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.cond14, !dbg !83

for.cond14:                                       ; preds = %for.inc21, %VITIS_LOOP_38_3
  %i.2 = phi i32 [ 0, %VITIS_LOOP_38_3 ], [ %inc22, %for.inc21 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !53, metadata !DIExpression()), !dbg !54
  %cmp15 = icmp slt i32 %i.2, %n, !dbg !85
  br i1 %cmp15, label %for.body16, label %for.end23, !dbg !87

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %i.2 to i64, !dbg !88
  %arrayidx18 = getelementptr inbounds i32, i32* %xvec, i64 %idxprom17, !dbg !88
  %6 = load i32, i32* %arrayidx18, align 4, !dbg !88
  %idxprom19 = sext i32 %i.2 to i64, !dbg !89
  %arrayidx20 = getelementptr inbounds [494 x i32], [494 x i32]* %vec, i64 0, i64 %idxprom19, !dbg !89
  store i32 %6, i32* %arrayidx20, align 4, !dbg !90
  br label %for.inc21, !dbg !89

for.inc21:                                        ; preds = %for.body16
  %inc22 = add nsw i32 %i.2, 1, !dbg !91
  call void @llvm.dbg.value(metadata i32 %inc22, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.cond14, !dbg !92, !llvm.loop !93

for.end23:                                        ; preds = %for.cond14
  br label %ellpack_1, !dbg !94

ellpack_1:                                        ; preds = %for.end23
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.cond24, !dbg !96

for.cond24:                                       ; preds = %for.inc48, %ellpack_1
  %i.3 = phi i32 [ 0, %ellpack_1 ], [ %inc49, %for.inc48 ]
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !53, metadata !DIExpression()), !dbg !54
  %cmp25 = icmp slt i32 %i.3, %n, !dbg !98
  br i1 %cmp25, label %for.body26, label %for.end50, !dbg !100

for.body26:                                       ; preds = %for.cond24
  %idxprom27 = sext i32 %i.3 to i64, !dbg !101
  %arrayidx28 = getelementptr inbounds [494 x i32], [494 x i32]* %out, i64 0, i64 %idxprom27, !dbg !101
  %7 = load i32, i32* %arrayidx28, align 4, !dbg !101
  call void @llvm.dbg.value(metadata i32 %7, metadata !103, metadata !DIExpression()), !dbg !104
  br label %ellpack_2, !dbg !105

ellpack_2:                                        ; preds = %for.body26
  call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()), !dbg !107
  br label %for.cond29, !dbg !108

for.cond29:                                       ; preds = %for.inc43, %ellpack_2
  %j.0 = phi i32 [ 0, %ellpack_2 ], [ %inc44, %for.inc43 ]
  %sum.0 = phi i32 [ %7, %ellpack_2 ], [ %add42, %for.inc43 ]
  call void @llvm.dbg.value(metadata i32 %sum.0, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !106, metadata !DIExpression()), !dbg !107
  %cmp30 = icmp slt i32 %j.0, %l, !dbg !110
  br i1 %cmp30, label %for.body31, label %for.end45, !dbg !112

for.body31:                                       ; preds = %for.cond29
  %mul32 = mul nsw i32 %i.3, %l, !dbg !113
  %add = add nsw i32 %j.0, %mul32, !dbg !115
  %idxprom33 = sext i32 %add to i64, !dbg !116
  %arrayidx34 = getelementptr inbounds [4940 x i32], [4940 x i32]* %nzval, i64 0, i64 %idxprom33, !dbg !116
  %8 = load i32, i32* %arrayidx34, align 4, !dbg !116
  %mul35 = mul nsw i32 %i.3, %l, !dbg !117
  %add36 = add nsw i32 %j.0, %mul35, !dbg !118
  %idxprom37 = sext i32 %add36 to i64, !dbg !119
  %arrayidx38 = getelementptr inbounds [4940 x i32], [4940 x i32]* %cols, i64 0, i64 %idxprom37, !dbg !119
  %9 = load i32, i32* %arrayidx38, align 4, !dbg !119
  %idxprom39 = sext i32 %9 to i64, !dbg !120
  %arrayidx40 = getelementptr inbounds [494 x i32], [494 x i32]* %vec, i64 0, i64 %idxprom39, !dbg !120
  %10 = load i32, i32* %arrayidx40, align 4, !dbg !120
  %mul41 = mul nsw i32 %8, %10, !dbg !121
  call void @llvm.dbg.value(metadata i32 %mul41, metadata !122, metadata !DIExpression()), !dbg !123
  %add42 = add nsw i32 %sum.0, %mul41, !dbg !124
  call void @llvm.dbg.value(metadata i32 %add42, metadata !103, metadata !DIExpression()), !dbg !104
  br label %for.inc43, !dbg !125

for.inc43:                                        ; preds = %for.body31
  %inc44 = add nsw i32 %j.0, 1, !dbg !126
  call void @llvm.dbg.value(metadata i32 %inc44, metadata !106, metadata !DIExpression()), !dbg !107
  br label %for.cond29, !dbg !127, !llvm.loop !128

for.end45:                                        ; preds = %for.cond29
  %idxprom46 = sext i32 %i.3 to i64, !dbg !131
  %arrayidx47 = getelementptr inbounds [494 x i32], [494 x i32]* %out, i64 0, i64 %idxprom46, !dbg !131
  store i32 %sum.0, i32* %arrayidx47, align 4, !dbg !132
  br label %for.inc48, !dbg !133

for.inc48:                                        ; preds = %for.end45
  %inc49 = add nsw i32 %i.3, 1, !dbg !134
  call void @llvm.dbg.value(metadata i32 %inc49, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.cond24, !dbg !135, !llvm.loop !136

for.end50:                                        ; preds = %for.cond24
  br label %VITIS_LOOP_51_4, !dbg !137

VITIS_LOOP_51_4:                                  ; preds = %for.end50
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.cond51, !dbg !139

for.cond51:                                       ; preds = %for.inc58, %VITIS_LOOP_51_4
  %i.4 = phi i32 [ 0, %VITIS_LOOP_51_4 ], [ %inc59, %for.inc58 ]
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !53, metadata !DIExpression()), !dbg !54
  %cmp52 = icmp slt i32 %i.4, %n, !dbg !141
  br i1 %cmp52, label %for.body53, label %for.end60, !dbg !143

for.body53:                                       ; preds = %for.cond51
  %idxprom54 = sext i32 %i.4 to i64, !dbg !144
  %arrayidx55 = getelementptr inbounds [494 x i32], [494 x i32]* %out, i64 0, i64 %idxprom54, !dbg !144
  %11 = load i32, i32* %arrayidx55, align 4, !dbg !144
  %idxprom56 = sext i32 %i.4 to i64, !dbg !145
  %arrayidx57 = getelementptr inbounds i32, i32* %xout, i64 %idxprom56, !dbg !145
  store i32 %11, i32* %arrayidx57, align 4, !dbg !146
  br label %for.inc58, !dbg !145

for.inc58:                                        ; preds = %for.body53
  %inc59 = add nsw i32 %i.4, 1, !dbg !147
  call void @llvm.dbg.value(metadata i32 %inc59, metadata !53, metadata !DIExpression()), !dbg !54
  br label %for.cond51, !dbg !148, !llvm.loop !149

for.end60:                                        ; preds = %for.cond51
  %12 = bitcast [494 x i32]* %out to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 1976, i8* %12) #8, !dbg !152
  %13 = bitcast [494 x i32]* %vec to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 1976, i8* %13) #8, !dbg !152
  %14 = bitcast [4940 x i32]* %cols to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 19760, i8* %14) #8, !dbg !152
  %15 = bitcast [4940 x i32]* %nzval to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 19760, i8* %15) #8, !dbg !152
  ret void, !dbg !152
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="158080" "xlx.source"="user" }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="15808" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/spmv_ellpack/spmv_ellpack_prj/solution/.autopilot/db/spmv_ellpack.pp.0.c", directory: "/workspace/examples/spmv_ellpack")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 17, type: !9, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "spmv_ellpack.c", directory: "/workspace/examples/spmv_ellpack")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !11, !12, !12, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 17, column: 16, scope: !7)
!16 = !DILocalVariable(name: "n", arg: 1, scope: !7, file: !8, line: 17, type: !11)
!17 = !DILocation(line: 17, column: 60, scope: !7)
!18 = !DILocalVariable(name: "l", arg: 2, scope: !7, file: !8, line: 17, type: !11)
!19 = !DILocation(line: 17, column: 67, scope: !7)
!20 = !DILocalVariable(name: "xnzval", arg: 3, scope: !7, file: !8, line: 17, type: !12)
!21 = !DILocation(line: 17, column: 74, scope: !7)
!22 = !DILocalVariable(name: "xcols", arg: 4, scope: !7, file: !8, line: 17, type: !12)
!23 = !DILocation(line: 17, column: 96, scope: !7)
!24 = !DILocalVariable(name: "xvec", arg: 5, scope: !7, file: !8, line: 17, type: !12)
!25 = !DILocation(line: 17, column: 117, scope: !7)
!26 = !DILocalVariable(name: "xout", arg: 6, scope: !7, file: !8, line: 18, type: !12)
!27 = !DILocation(line: 18, column: 18, scope: !7)
!28 = !DILocation(line: 19, column: 9, scope: !7)
!29 = !DILocation(line: 20, column: 9, scope: !7)
!30 = !DILocation(line: 21, column: 9, scope: !7)
!31 = !DILocation(line: 22, column: 9, scope: !7)
!32 = !DILocation(line: 23, column: 9, scope: !7)
!33 = !DILocation(line: 24, column: 9, scope: !7)
!34 = !DILocation(line: 25, column: 9, scope: !7)
!35 = !DILocation(line: 29, column: 3, scope: !7)
!36 = !DILocalVariable(name: "nzval", scope: !7, file: !8, line: 29, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 158080, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 4940)
!40 = !DILocation(line: 29, column: 7, scope: !7)
!41 = !DILocation(line: 30, column: 3, scope: !7)
!42 = !DILocalVariable(name: "cols", scope: !7, file: !8, line: 30, type: !37)
!43 = !DILocation(line: 30, column: 7, scope: !7)
!44 = !DILocation(line: 31, column: 3, scope: !7)
!45 = !DILocalVariable(name: "vec", scope: !7, file: !8, line: 31, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 15808, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 494)
!49 = !DILocation(line: 31, column: 7, scope: !7)
!50 = !DILocation(line: 32, column: 3, scope: !7)
!51 = !DILocalVariable(name: "out", scope: !7, file: !8, line: 32, type: !46)
!52 = !DILocation(line: 32, column: 7, scope: !7)
!53 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 26, type: !11)
!54 = !DILocation(line: 26, column: 6, scope: !7)
!55 = !DILocation(line: 34, column: 25, scope: !56)
!56 = distinct !DILexicalBlock(scope: !7, file: !8, line: 34, column: 20)
!57 = !DILocation(line: 34, column: 38, scope: !58)
!58 = distinct !DILexicalBlock(scope: !56, file: !8, line: 34, column: 20)
!59 = !DILocation(line: 34, column: 34, scope: !58)
!60 = !DILocation(line: 34, column: 20, scope: !56)
!61 = !DILocation(line: 35, column: 16, scope: !58)
!62 = !DILocation(line: 35, column: 5, scope: !58)
!63 = !DILocation(line: 35, column: 14, scope: !58)
!64 = !DILocation(line: 34, column: 44, scope: !58)
!65 = !DILocation(line: 34, column: 20, scope: !58)
!66 = distinct !{!66, !60, !67, !68}
!67 = !DILocation(line: 35, column: 24, scope: !56)
!68 = !{!"llvm.loop.name", !"VITIS_LOOP_34_1"}
!69 = !DILocation(line: 36, column: 25, scope: !70)
!70 = distinct !DILexicalBlock(scope: !7, file: !8, line: 36, column: 20)
!71 = !DILocation(line: 36, column: 38, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !8, line: 36, column: 20)
!73 = !DILocation(line: 36, column: 34, scope: !72)
!74 = !DILocation(line: 36, column: 20, scope: !70)
!75 = !DILocation(line: 37, column: 15, scope: !72)
!76 = !DILocation(line: 37, column: 5, scope: !72)
!77 = !DILocation(line: 37, column: 13, scope: !72)
!78 = !DILocation(line: 36, column: 44, scope: !72)
!79 = !DILocation(line: 36, column: 20, scope: !72)
!80 = distinct !{!80, !74, !81, !82}
!81 = !DILocation(line: 37, column: 22, scope: !70)
!82 = !{!"llvm.loop.name", !"VITIS_LOOP_36_2"}
!83 = !DILocation(line: 38, column: 25, scope: !84)
!84 = distinct !DILexicalBlock(scope: !7, file: !8, line: 38, column: 20)
!85 = !DILocation(line: 38, column: 34, scope: !86)
!86 = distinct !DILexicalBlock(scope: !84, file: !8, line: 38, column: 20)
!87 = !DILocation(line: 38, column: 20, scope: !84)
!88 = !DILocation(line: 39, column: 14, scope: !86)
!89 = !DILocation(line: 39, column: 5, scope: !86)
!90 = !DILocation(line: 39, column: 12, scope: !86)
!91 = !DILocation(line: 38, column: 40, scope: !86)
!92 = !DILocation(line: 38, column: 20, scope: !86)
!93 = distinct !{!93, !87, !94, !95}
!94 = !DILocation(line: 39, column: 20, scope: !84)
!95 = !{!"llvm.loop.name", !"VITIS_LOOP_38_3"}
!96 = !DILocation(line: 42, column: 8, scope: !97)
!97 = distinct !DILexicalBlock(scope: !7, file: !8, line: 42, column: 3)
!98 = !DILocation(line: 42, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !97, file: !8, line: 42, column: 3)
!100 = !DILocation(line: 42, column: 3, scope: !97)
!101 = !DILocation(line: 43, column: 15, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !8, line: 42, column: 27)
!103 = !DILocalVariable(name: "sum", scope: !102, file: !8, line: 43, type: !11)
!104 = !DILocation(line: 43, column: 9, scope: !102)
!105 = !DILocation(line: 43, column: 5, scope: !102)
!106 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 26, type: !11)
!107 = !DILocation(line: 26, column: 9, scope: !7)
!108 = !DILocation(line: 45, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !102, file: !8, line: 45, column: 5)
!110 = !DILocation(line: 45, column: 19, scope: !111)
!111 = distinct !DILexicalBlock(scope: !109, file: !8, line: 45, column: 5)
!112 = !DILocation(line: 45, column: 5, scope: !109)
!113 = !DILocation(line: 46, column: 24, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !8, line: 45, column: 29)
!115 = !DILocation(line: 46, column: 20, scope: !114)
!116 = !DILocation(line: 46, column: 12, scope: !114)
!117 = !DILocation(line: 46, column: 46, scope: !114)
!118 = !DILocation(line: 46, column: 42, scope: !114)
!119 = !DILocation(line: 46, column: 35, scope: !114)
!120 = !DILocation(line: 46, column: 31, scope: !114)
!121 = !DILocation(line: 46, column: 29, scope: !114)
!122 = !DILocalVariable(name: "Si", scope: !7, file: !8, line: 27, type: !11)
!123 = !DILocation(line: 27, column: 7, scope: !7)
!124 = !DILocation(line: 47, column: 11, scope: !114)
!125 = !DILocation(line: 48, column: 5, scope: !114)
!126 = !DILocation(line: 45, column: 25, scope: !111)
!127 = !DILocation(line: 45, column: 5, scope: !111)
!128 = distinct !{!128, !112, !129, !130}
!129 = !DILocation(line: 48, column: 5, scope: !109)
!130 = !{!"llvm.loop.name", !"ellpack_2"}
!131 = !DILocation(line: 49, column: 5, scope: !102)
!132 = !DILocation(line: 49, column: 12, scope: !102)
!133 = !DILocation(line: 50, column: 3, scope: !102)
!134 = !DILocation(line: 42, column: 23, scope: !99)
!135 = !DILocation(line: 42, column: 3, scope: !99)
!136 = distinct !{!136, !100, !137, !138}
!137 = !DILocation(line: 50, column: 3, scope: !97)
!138 = !{!"llvm.loop.name", !"ellpack_1"}
!139 = !DILocation(line: 51, column: 25, scope: !140)
!140 = distinct !DILexicalBlock(scope: !7, file: !8, line: 51, column: 20)
!141 = !DILocation(line: 51, column: 34, scope: !142)
!142 = distinct !DILexicalBlock(scope: !140, file: !8, line: 51, column: 20)
!143 = !DILocation(line: 51, column: 20, scope: !140)
!144 = !DILocation(line: 52, column: 15, scope: !142)
!145 = !DILocation(line: 52, column: 5, scope: !142)
!146 = !DILocation(line: 52, column: 13, scope: !142)
!147 = !DILocation(line: 51, column: 40, scope: !142)
!148 = !DILocation(line: 51, column: 20, scope: !142)
!149 = distinct !{!149, !143, !150, !151}
!150 = !DILocation(line: 52, column: 20, scope: !140)
!151 = !{!"llvm.loop.name", !"VITIS_LOOP_51_4"}
!152 = !DILocation(line: 53, column: 1, scope: !7)
