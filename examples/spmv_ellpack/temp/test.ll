; ModuleID = '/workspace/examples/spmv_ellpack/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: alwaysinline nounwind
define void @stream_write(i32 %size, i32* %array1, i32* %array2) #0 !dbg !7 !fpga.function.pragma !19 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32* %array1, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32* %array2, metadata !26, metadata !DIExpression()), !dbg !27
  br label %VITIS_LOOP_21_1, !dbg !28

VITIS_LOOP_21_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !31
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_21_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_21_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !29, metadata !DIExpression()), !dbg !31
  %cmp = icmp ult i32 %i.0, %size, !dbg !33
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !35

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !36
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !36
  %0 = load i32, i32* %arrayidx, align 4, !dbg !36
  %idxprom1 = sext i32 %i.0 to i64, !dbg !38
  %arrayidx2 = getelementptr inbounds i32, i32* %array1, i64 %idxprom1, !dbg !38
  store i32 %0, i32* %arrayidx2, align 4, !dbg !39
  br label %for.inc, !dbg !40

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !41
  call void @llvm.dbg.value(metadata i32 %inc, metadata !29, metadata !DIExpression()), !dbg !31
  br label %for.cond, !dbg !42, !llvm.loop !43

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !46
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
define void @hls_top(i32 %n, i32 %l, i32* "fpga.decayed.dim.hint"="4940" %xnzval, i32* "fpga.decayed.dim.hint"="4940" %xcols, i32* "fpga.decayed.dim.hint"="494" %xvec, i32* "fpga.decayed.dim.hint"="494" %xout) #3 !dbg !47 !fpga.function.pragma !50 {
entry:
  %nzval = alloca [4940 x i32], align 4
  %cols = alloca [4940 x i32], align 4
  %vec = alloca [494 x i32], align 4
  %out = alloca [494 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i32 %l, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i32* %xnzval, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32* %xcols, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32* %xvec, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32* %xout, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xnzval, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !65
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xcols, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !66
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xvec, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !67
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xout, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !68
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %n, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !69
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %l, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !70
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !71
  %0 = bitcast [4940 x i32]* %nzval to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 19760, i8* %0) #9, !dbg !72
  call void @llvm.dbg.declare(metadata [4940 x i32]* %nzval, metadata !73, metadata !DIExpression()), !dbg !77
  %1 = bitcast [4940 x i32]* %cols to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 19760, i8* %1) #9, !dbg !78
  call void @llvm.dbg.declare(metadata [4940 x i32]* %cols, metadata !79, metadata !DIExpression()), !dbg !80
  %2 = bitcast [494 x i32]* %vec to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 1976, i8* %2) #9, !dbg !81
  call void @llvm.dbg.declare(metadata [494 x i32]* %vec, metadata !82, metadata !DIExpression()), !dbg !86
  %3 = bitcast [494 x i32]* %out to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 1976, i8* %3) #9, !dbg !87
  call void @llvm.dbg.declare(metadata [494 x i32]* %out, metadata !88, metadata !DIExpression()), !dbg !89
  br label %VITIS_LOOP_43_1, !dbg !87

VITIS_LOOP_43_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !90, metadata !DIExpression()), !dbg !91
  br label %for.cond, !dbg !92

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_43_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_43_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !90, metadata !DIExpression()), !dbg !91
  %mul = mul nsw i32 %n, %l, !dbg !94
  %cmp = icmp slt i32 %i.0, %mul, !dbg !96
  br i1 %cmp, label %for.body, label %for.end, !dbg !97

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !98
  %arrayidx = getelementptr inbounds i32, i32* %xnzval, i64 %idxprom, !dbg !98
  %4 = load i32, i32* %arrayidx, align 4, !dbg !98
  %idxprom1 = sext i32 %i.0 to i64, !dbg !99
  %arrayidx2 = getelementptr inbounds [4940 x i32], [4940 x i32]* %nzval, i64 0, i64 %idxprom1, !dbg !99
  store i32 %4, i32* %arrayidx2, align 4, !dbg !100
  br label %for.inc, !dbg !99

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !101
  call void @llvm.dbg.value(metadata i32 %inc, metadata !90, metadata !DIExpression()), !dbg !91
  br label %for.cond, !dbg !102, !llvm.loop !103

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_45_2, !dbg !104

VITIS_LOOP_45_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !90, metadata !DIExpression()), !dbg !91
  br label %for.cond3, !dbg !106

for.cond3:                                        ; preds = %for.inc11, %VITIS_LOOP_45_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_45_2 ], [ %inc12, %for.inc11 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !90, metadata !DIExpression()), !dbg !91
  %mul4 = mul nsw i32 %n, %l, !dbg !108
  %cmp5 = icmp slt i32 %i.1, %mul4, !dbg !110
  br i1 %cmp5, label %for.body6, label %for.end13, !dbg !111

for.body6:                                        ; preds = %for.cond3
  %idxprom7 = sext i32 %i.1 to i64, !dbg !112
  %arrayidx8 = getelementptr inbounds i32, i32* %xcols, i64 %idxprom7, !dbg !112
  %5 = load i32, i32* %arrayidx8, align 4, !dbg !112
  %idxprom9 = sext i32 %i.1 to i64, !dbg !113
  %arrayidx10 = getelementptr inbounds [4940 x i32], [4940 x i32]* %cols, i64 0, i64 %idxprom9, !dbg !113
  store i32 %5, i32* %arrayidx10, align 4, !dbg !114
  br label %for.inc11, !dbg !113

for.inc11:                                        ; preds = %for.body6
  %inc12 = add nsw i32 %i.1, 1, !dbg !115
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !90, metadata !DIExpression()), !dbg !91
  br label %for.cond3, !dbg !116, !llvm.loop !117

for.end13:                                        ; preds = %for.cond3
  br label %VITIS_LOOP_47_3, !dbg !118

VITIS_LOOP_47_3:                                  ; preds = %for.end13
  call void @llvm.dbg.value(metadata i32 0, metadata !90, metadata !DIExpression()), !dbg !91
  br label %for.cond14, !dbg !120

for.cond14:                                       ; preds = %for.inc21, %VITIS_LOOP_47_3
  %i.2 = phi i32 [ 0, %VITIS_LOOP_47_3 ], [ %inc22, %for.inc21 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !90, metadata !DIExpression()), !dbg !91
  %cmp15 = icmp slt i32 %i.2, %n, !dbg !122
  br i1 %cmp15, label %for.body16, label %for.end23, !dbg !124

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %i.2 to i64, !dbg !125
  %arrayidx18 = getelementptr inbounds i32, i32* %xvec, i64 %idxprom17, !dbg !125
  %6 = load i32, i32* %arrayidx18, align 4, !dbg !125
  %idxprom19 = sext i32 %i.2 to i64, !dbg !126
  %arrayidx20 = getelementptr inbounds [494 x i32], [494 x i32]* %vec, i64 0, i64 %idxprom19, !dbg !126
  store i32 %6, i32* %arrayidx20, align 4, !dbg !127
  br label %for.inc21, !dbg !126

for.inc21:                                        ; preds = %for.body16
  %inc22 = add nsw i32 %i.2, 1, !dbg !128
  call void @llvm.dbg.value(metadata i32 %inc22, metadata !90, metadata !DIExpression()), !dbg !91
  br label %for.cond14, !dbg !129, !llvm.loop !130

for.end23:                                        ; preds = %for.cond14
  br label %ellpack_1, !dbg !131

ellpack_1:                                        ; preds = %for.end23
  call void @llvm.dbg.value(metadata i32 0, metadata !90, metadata !DIExpression()), !dbg !91
  br label %for.cond24, !dbg !133

for.cond24:                                       ; preds = %for.inc48, %ellpack_1
  %i.3 = phi i32 [ 0, %ellpack_1 ], [ %inc49, %for.inc48 ]
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !90, metadata !DIExpression()), !dbg !91
  %cmp25 = icmp slt i32 %i.3, %n, !dbg !135
  br i1 %cmp25, label %for.body26, label %for.end50, !dbg !137

for.body26:                                       ; preds = %for.cond24
  %idxprom27 = sext i32 %i.3 to i64, !dbg !138
  %arrayidx28 = getelementptr inbounds [494 x i32], [494 x i32]* %out, i64 0, i64 %idxprom27, !dbg !138
  %7 = load i32, i32* %arrayidx28, align 4, !dbg !138
  call void @llvm.dbg.value(metadata i32 %7, metadata !140, metadata !DIExpression()), !dbg !141
  br label %ellpack_2, !dbg !142

ellpack_2:                                        ; preds = %for.body26
  call void @llvm.dbg.value(metadata i32 0, metadata !143, metadata !DIExpression()), !dbg !144
  br label %for.cond29, !dbg !145

for.cond29:                                       ; preds = %for.inc43, %ellpack_2
  %j.0 = phi i32 [ 0, %ellpack_2 ], [ %inc44, %for.inc43 ]
  %sum.0 = phi i32 [ %7, %ellpack_2 ], [ %add42, %for.inc43 ]
  call void @llvm.dbg.value(metadata i32 %sum.0, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !143, metadata !DIExpression()), !dbg !144
  %cmp30 = icmp slt i32 %j.0, %l, !dbg !147
  br i1 %cmp30, label %for.body31, label %for.end45, !dbg !149

for.body31:                                       ; preds = %for.cond29
  %mul32 = mul nsw i32 %i.3, %l, !dbg !150
  %add = add nsw i32 %j.0, %mul32, !dbg !152
  %idxprom33 = sext i32 %add to i64, !dbg !153
  %arrayidx34 = getelementptr inbounds [4940 x i32], [4940 x i32]* %nzval, i64 0, i64 %idxprom33, !dbg !153
  %8 = load i32, i32* %arrayidx34, align 4, !dbg !153
  %mul35 = mul nsw i32 %i.3, %l, !dbg !154
  %add36 = add nsw i32 %j.0, %mul35, !dbg !155
  %idxprom37 = sext i32 %add36 to i64, !dbg !156
  %arrayidx38 = getelementptr inbounds [4940 x i32], [4940 x i32]* %cols, i64 0, i64 %idxprom37, !dbg !156
  %9 = load i32, i32* %arrayidx38, align 4, !dbg !156
  %idxprom39 = sext i32 %9 to i64, !dbg !157
  %arrayidx40 = getelementptr inbounds [494 x i32], [494 x i32]* %vec, i64 0, i64 %idxprom39, !dbg !157
  %10 = load i32, i32* %arrayidx40, align 4, !dbg !157
  %mul41 = mul nsw i32 %8, %10, !dbg !158
  call void @llvm.dbg.value(metadata i32 %mul41, metadata !159, metadata !DIExpression()), !dbg !160
  %add42 = add nsw i32 %sum.0, %mul41, !dbg !161
  call void @llvm.dbg.value(metadata i32 %add42, metadata !140, metadata !DIExpression()), !dbg !141
  br label %for.inc43, !dbg !162

for.inc43:                                        ; preds = %for.body31
  %inc44 = add nsw i32 %j.0, 1, !dbg !163
  call void @llvm.dbg.value(metadata i32 %inc44, metadata !143, metadata !DIExpression()), !dbg !144
  br label %for.cond29, !dbg !164, !llvm.loop !165

for.end45:                                        ; preds = %for.cond29
  %idxprom46 = sext i32 %i.3 to i64, !dbg !168
  %arrayidx47 = getelementptr inbounds [494 x i32], [494 x i32]* %out, i64 0, i64 %idxprom46, !dbg !168
  store i32 %sum.0, i32* %arrayidx47, align 4, !dbg !169
  br label %for.inc48, !dbg !170

for.inc48:                                        ; preds = %for.end45
  %inc49 = add nsw i32 %i.3, 1, !dbg !171
  call void @llvm.dbg.value(metadata i32 %inc49, metadata !90, metadata !DIExpression()), !dbg !91
  br label %for.cond24, !dbg !172, !llvm.loop !173

for.end50:                                        ; preds = %for.cond24
  %arraydecay = getelementptr inbounds [494 x i32], [494 x i32]* %out, i32 0, i32 0, !dbg !176
  call void @stream_write(i32 %n, i32* %xout, i32* %arraydecay), !dbg !177
  %11 = bitcast [494 x i32]* %out to i8*, !dbg !178
  call void @llvm.lifetime.end.p0i8(i64 1976, i8* %11) #9, !dbg !178
  %12 = bitcast [494 x i32]* %vec to i8*, !dbg !178
  call void @llvm.lifetime.end.p0i8(i64 1976, i8* %12) #9, !dbg !178
  %13 = bitcast [4940 x i32]* %cols to i8*, !dbg !178
  call void @llvm.lifetime.end.p0i8(i64 19760, i8* %13) #9, !dbg !178
  %14 = bitcast [4940 x i32]* %nzval to i8*, !dbg !178
  call void @llvm.lifetime.end.p0i8(i64 19760, i8* %14) #9, !dbg !178
  ret void, !dbg !178
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="158080" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="15808" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #9 = { nounwind }

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
!7 = distinct !DISubprogram(name: "stream_write", scope: !8, file: !8, line: 19, type: !9, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "spmv_ellpack.c", directory: "/workspace/examples/spmv_ellpack")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !17, !17}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 17, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/spmv_ellpack")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 42, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/spmv_ellpack")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20}
!20 = !{!"fpga.inline", !"user", !21}
!21 = !DILocation(line: 20, column: 9, scope: !7)
!22 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 19, type: !11)
!23 = !DILocation(line: 19, column: 23, scope: !7)
!24 = !DILocalVariable(name: "array1", arg: 2, scope: !7, file: !8, line: 19, type: !17)
!25 = !DILocation(line: 19, column: 34, scope: !7)
!26 = !DILocalVariable(name: "array2", arg: 3, scope: !7, file: !8, line: 19, type: !17)
!27 = !DILocation(line: 19, column: 47, scope: !7)
!28 = !DILocation(line: 19, column: 55, scope: !7)
!29 = !DILocalVariable(name: "i", scope: !30, file: !8, line: 21, type: !18)
!30 = distinct !DILexicalBlock(scope: !7, file: !8, line: 21, column: 19)
!31 = !DILocation(line: 21, column: 28, scope: !30)
!32 = !DILocation(line: 21, column: 24, scope: !30)
!33 = !DILocation(line: 21, column: 37, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !8, line: 21, column: 19)
!35 = !DILocation(line: 21, column: 19, scope: !30)
!36 = !DILocation(line: 22, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !8, line: 21, column: 50)
!38 = !DILocation(line: 22, column: 5, scope: !37)
!39 = !DILocation(line: 22, column: 15, scope: !37)
!40 = !DILocation(line: 23, column: 3, scope: !37)
!41 = !DILocation(line: 21, column: 46, scope: !34)
!42 = !DILocation(line: 21, column: 19, scope: !34)
!43 = distinct !{!43, !35, !44, !45}
!44 = !DILocation(line: 23, column: 3, scope: !30)
!45 = !{!"llvm.loop.name", !"VITIS_LOOP_21_1"}
!46 = !DILocation(line: 24, column: 1, scope: !7)
!47 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 26, type: !48, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !18, !18, !17, !17, !17, !17}
!50 = !{!51}
!51 = !{!"fpga.top", !"user", !52}
!52 = !DILocation(line: 26, column: 16, scope: !47)
!53 = !DILocalVariable(name: "n", arg: 1, scope: !47, file: !8, line: 26, type: !18)
!54 = !DILocation(line: 26, column: 60, scope: !47)
!55 = !DILocalVariable(name: "l", arg: 2, scope: !47, file: !8, line: 26, type: !18)
!56 = !DILocation(line: 26, column: 67, scope: !47)
!57 = !DILocalVariable(name: "xnzval", arg: 3, scope: !47, file: !8, line: 26, type: !17)
!58 = !DILocation(line: 26, column: 74, scope: !47)
!59 = !DILocalVariable(name: "xcols", arg: 4, scope: !47, file: !8, line: 26, type: !17)
!60 = !DILocation(line: 26, column: 96, scope: !47)
!61 = !DILocalVariable(name: "xvec", arg: 5, scope: !47, file: !8, line: 26, type: !17)
!62 = !DILocation(line: 26, column: 117, scope: !47)
!63 = !DILocalVariable(name: "xout", arg: 6, scope: !47, file: !8, line: 27, type: !17)
!64 = !DILocation(line: 27, column: 18, scope: !47)
!65 = !DILocation(line: 28, column: 9, scope: !47)
!66 = !DILocation(line: 29, column: 9, scope: !47)
!67 = !DILocation(line: 30, column: 9, scope: !47)
!68 = !DILocation(line: 31, column: 9, scope: !47)
!69 = !DILocation(line: 32, column: 9, scope: !47)
!70 = !DILocation(line: 33, column: 9, scope: !47)
!71 = !DILocation(line: 34, column: 9, scope: !47)
!72 = !DILocation(line: 38, column: 3, scope: !47)
!73 = !DILocalVariable(name: "nzval", scope: !47, file: !8, line: 38, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 158080, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 4940)
!77 = !DILocation(line: 38, column: 7, scope: !47)
!78 = !DILocation(line: 39, column: 3, scope: !47)
!79 = !DILocalVariable(name: "cols", scope: !47, file: !8, line: 39, type: !74)
!80 = !DILocation(line: 39, column: 7, scope: !47)
!81 = !DILocation(line: 40, column: 3, scope: !47)
!82 = !DILocalVariable(name: "vec", scope: !47, file: !8, line: 40, type: !83)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 15808, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 494)
!86 = !DILocation(line: 40, column: 7, scope: !47)
!87 = !DILocation(line: 41, column: 3, scope: !47)
!88 = !DILocalVariable(name: "out", scope: !47, file: !8, line: 41, type: !83)
!89 = !DILocation(line: 41, column: 7, scope: !47)
!90 = !DILocalVariable(name: "i", scope: !47, file: !8, line: 35, type: !18)
!91 = !DILocation(line: 35, column: 6, scope: !47)
!92 = !DILocation(line: 43, column: 25, scope: !93)
!93 = distinct !DILexicalBlock(scope: !47, file: !8, line: 43, column: 20)
!94 = !DILocation(line: 43, column: 38, scope: !95)
!95 = distinct !DILexicalBlock(scope: !93, file: !8, line: 43, column: 20)
!96 = !DILocation(line: 43, column: 34, scope: !95)
!97 = !DILocation(line: 43, column: 20, scope: !93)
!98 = !DILocation(line: 44, column: 16, scope: !95)
!99 = !DILocation(line: 44, column: 5, scope: !95)
!100 = !DILocation(line: 44, column: 14, scope: !95)
!101 = !DILocation(line: 43, column: 44, scope: !95)
!102 = !DILocation(line: 43, column: 20, scope: !95)
!103 = distinct !{!103, !97, !104, !105}
!104 = !DILocation(line: 44, column: 24, scope: !93)
!105 = !{!"llvm.loop.name", !"VITIS_LOOP_43_1"}
!106 = !DILocation(line: 45, column: 25, scope: !107)
!107 = distinct !DILexicalBlock(scope: !47, file: !8, line: 45, column: 20)
!108 = !DILocation(line: 45, column: 38, scope: !109)
!109 = distinct !DILexicalBlock(scope: !107, file: !8, line: 45, column: 20)
!110 = !DILocation(line: 45, column: 34, scope: !109)
!111 = !DILocation(line: 45, column: 20, scope: !107)
!112 = !DILocation(line: 46, column: 15, scope: !109)
!113 = !DILocation(line: 46, column: 5, scope: !109)
!114 = !DILocation(line: 46, column: 13, scope: !109)
!115 = !DILocation(line: 45, column: 44, scope: !109)
!116 = !DILocation(line: 45, column: 20, scope: !109)
!117 = distinct !{!117, !111, !118, !119}
!118 = !DILocation(line: 46, column: 22, scope: !107)
!119 = !{!"llvm.loop.name", !"VITIS_LOOP_45_2"}
!120 = !DILocation(line: 47, column: 25, scope: !121)
!121 = distinct !DILexicalBlock(scope: !47, file: !8, line: 47, column: 20)
!122 = !DILocation(line: 47, column: 34, scope: !123)
!123 = distinct !DILexicalBlock(scope: !121, file: !8, line: 47, column: 20)
!124 = !DILocation(line: 47, column: 20, scope: !121)
!125 = !DILocation(line: 48, column: 14, scope: !123)
!126 = !DILocation(line: 48, column: 5, scope: !123)
!127 = !DILocation(line: 48, column: 12, scope: !123)
!128 = !DILocation(line: 47, column: 40, scope: !123)
!129 = !DILocation(line: 47, column: 20, scope: !123)
!130 = distinct !{!130, !124, !131, !132}
!131 = !DILocation(line: 48, column: 20, scope: !121)
!132 = !{!"llvm.loop.name", !"VITIS_LOOP_47_3"}
!133 = !DILocation(line: 51, column: 8, scope: !134)
!134 = distinct !DILexicalBlock(scope: !47, file: !8, line: 51, column: 3)
!135 = !DILocation(line: 51, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !134, file: !8, line: 51, column: 3)
!137 = !DILocation(line: 51, column: 3, scope: !134)
!138 = !DILocation(line: 52, column: 15, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !8, line: 51, column: 27)
!140 = !DILocalVariable(name: "sum", scope: !139, file: !8, line: 52, type: !18)
!141 = !DILocation(line: 52, column: 9, scope: !139)
!142 = !DILocation(line: 52, column: 5, scope: !139)
!143 = !DILocalVariable(name: "j", scope: !47, file: !8, line: 35, type: !18)
!144 = !DILocation(line: 35, column: 9, scope: !47)
!145 = !DILocation(line: 54, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !139, file: !8, line: 54, column: 5)
!147 = !DILocation(line: 54, column: 19, scope: !148)
!148 = distinct !DILexicalBlock(scope: !146, file: !8, line: 54, column: 5)
!149 = !DILocation(line: 54, column: 5, scope: !146)
!150 = !DILocation(line: 55, column: 24, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !8, line: 54, column: 29)
!152 = !DILocation(line: 55, column: 20, scope: !151)
!153 = !DILocation(line: 55, column: 12, scope: !151)
!154 = !DILocation(line: 55, column: 46, scope: !151)
!155 = !DILocation(line: 55, column: 42, scope: !151)
!156 = !DILocation(line: 55, column: 35, scope: !151)
!157 = !DILocation(line: 55, column: 31, scope: !151)
!158 = !DILocation(line: 55, column: 29, scope: !151)
!159 = !DILocalVariable(name: "Si", scope: !47, file: !8, line: 36, type: !18)
!160 = !DILocation(line: 36, column: 7, scope: !47)
!161 = !DILocation(line: 56, column: 11, scope: !151)
!162 = !DILocation(line: 57, column: 5, scope: !151)
!163 = !DILocation(line: 54, column: 25, scope: !148)
!164 = !DILocation(line: 54, column: 5, scope: !148)
!165 = distinct !{!165, !149, !166, !167}
!166 = !DILocation(line: 57, column: 5, scope: !146)
!167 = !{!"llvm.loop.name", !"ellpack_2"}
!168 = !DILocation(line: 58, column: 5, scope: !139)
!169 = !DILocation(line: 58, column: 12, scope: !139)
!170 = !DILocation(line: 59, column: 3, scope: !139)
!171 = !DILocation(line: 51, column: 23, scope: !136)
!172 = !DILocation(line: 51, column: 3, scope: !136)
!173 = distinct !{!173, !137, !174, !175}
!174 = !DILocation(line: 59, column: 3, scope: !134)
!175 = !{!"llvm.loop.name", !"ellpack_1"}
!176 = !DILocation(line: 60, column: 25, scope: !47)
!177 = !DILocation(line: 60, column: 3, scope: !47)
!178 = !DILocation(line: 61, column: 1, scope: !47)
