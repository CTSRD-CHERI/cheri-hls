; ModuleID = '/workspace/examples/spmv_crs/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: alwaysinline nounwind
define void @stream_write(i32 %size, i32* %array1, i32* %array2) #0 !dbg !9 !fpga.function.pragma !21 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32* %array1, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32* %array2, metadata !28, metadata !DIExpression()), !dbg !29
  br label %VITIS_LOOP_17_1, !dbg !30

VITIS_LOOP_17_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !31, metadata !DIExpression()), !dbg !33
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_17_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_17_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !31, metadata !DIExpression()), !dbg !33
  %cmp = icmp ult i32 %i.0, %size, !dbg !35
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !37

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !38
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !38
  %0 = load i32, i32* %arrayidx, align 4, !dbg !38
  %idxprom1 = sext i32 %i.0 to i64, !dbg !40
  %arrayidx2 = getelementptr inbounds i32, i32* %array1, i64 %idxprom1, !dbg !40
  store i32 %0, i32* %arrayidx2, align 4, !dbg !41
  br label %for.inc, !dbg !42

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !43
  call void @llvm.dbg.value(metadata i32 %inc, metadata !31, metadata !DIExpression()), !dbg !33
  br label %for.cond, !dbg !44, !llvm.loop !45

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !48
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
define void @hls_top(i32 %size, i32* "fpga.decayed.dim.hint"="1666" %xval, i32* "fpga.decayed.dim.hint"="1666" %xcols, i32* "fpga.decayed.dim.hint"="495" %xrowDelimiters, i32* "fpga.decayed.dim.hint"="494" %xvec, i32* "fpga.decayed.dim.hint"="494" %xout) #3 !dbg !49 !fpga.function.pragma !52 {
entry:
  %val = alloca [1666 x i32], align 4
  %cols = alloca [1666 x i32], align 4
  %rowDelimiters = alloca [495 x i32], align 4
  %vec = alloca [494 x i32], align 4
  %out = alloca [494 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i32* %xval, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32* %xcols, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32* %xrowDelimiters, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32* %xvec, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32* %xout, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xval, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !67
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xcols, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !68
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xrowDelimiters, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !69
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xvec, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !70
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xout, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !71
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !72
  call void @llvm.sideeffect() #9 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !73
  %0 = bitcast [1666 x i32]* %val to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 6664, i8* %0) #10, !dbg !74
  call void @llvm.dbg.declare(metadata [1666 x i32]* %val, metadata !75, metadata !DIExpression()), !dbg !79
  %1 = bitcast [1666 x i32]* %cols to i8*, !dbg !80
  call void @llvm.lifetime.start.p0i8(i64 6664, i8* %1) #10, !dbg !80
  call void @llvm.dbg.declare(metadata [1666 x i32]* %cols, metadata !81, metadata !DIExpression()), !dbg !82
  %2 = bitcast [495 x i32]* %rowDelimiters to i8*, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 1980, i8* %2) #10, !dbg !83
  call void @llvm.dbg.declare(metadata [495 x i32]* %rowDelimiters, metadata !84, metadata !DIExpression()), !dbg !88
  %3 = bitcast [494 x i32]* %vec to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 1976, i8* %3) #10, !dbg !89
  call void @llvm.dbg.declare(metadata [494 x i32]* %vec, metadata !90, metadata !DIExpression()), !dbg !94
  %4 = bitcast [494 x i32]* %out to i8*, !dbg !95
  call void @llvm.lifetime.start.p0i8(i64 1976, i8* %4) #10, !dbg !95
  call void @llvm.dbg.declare(metadata [494 x i32]* %out, metadata !96, metadata !DIExpression()), !dbg !97
  br label %VITIS_LOOP_39_1, !dbg !95

VITIS_LOOP_39_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()), !dbg !99
  br label %for.cond, !dbg !100

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_39_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_39_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !98, metadata !DIExpression()), !dbg !99
  %cmp = icmp slt i32 %i.0, 495, !dbg !102
  br i1 %cmp, label %for.body, label %for.end, !dbg !104

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !105
  %arrayidx = getelementptr inbounds i32, i32* %xrowDelimiters, i64 %idxprom, !dbg !105
  %5 = load i32, i32* %arrayidx, align 4, !dbg !105
  %idxprom1 = sext i32 %i.0 to i64, !dbg !106
  %arrayidx2 = getelementptr inbounds [495 x i32], [495 x i32]* %rowDelimiters, i64 0, i64 %idxprom1, !dbg !106
  store i32 %5, i32* %arrayidx2, align 4, !dbg !107
  br label %for.inc, !dbg !106

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !108
  call void @llvm.dbg.value(metadata i32 %inc, metadata !98, metadata !DIExpression()), !dbg !99
  br label %for.cond, !dbg !109, !llvm.loop !110

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_41_2, !dbg !111

VITIS_LOOP_41_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()), !dbg !99
  br label %for.cond3, !dbg !113

for.cond3:                                        ; preds = %for.inc10, %VITIS_LOOP_41_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_41_2 ], [ %inc11, %for.inc10 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !98, metadata !DIExpression()), !dbg !99
  %cmp4 = icmp slt i32 %i.1, 1666, !dbg !115
  br i1 %cmp4, label %for.body5, label %for.end12, !dbg !117

for.body5:                                        ; preds = %for.cond3
  %idxprom6 = sext i32 %i.1 to i64, !dbg !118
  %arrayidx7 = getelementptr inbounds i32, i32* %xval, i64 %idxprom6, !dbg !118
  %6 = load i32, i32* %arrayidx7, align 4, !dbg !118
  %idxprom8 = sext i32 %i.1 to i64, !dbg !119
  %arrayidx9 = getelementptr inbounds [1666 x i32], [1666 x i32]* %val, i64 0, i64 %idxprom8, !dbg !119
  store i32 %6, i32* %arrayidx9, align 4, !dbg !120
  br label %for.inc10, !dbg !119

for.inc10:                                        ; preds = %for.body5
  %inc11 = add nsw i32 %i.1, 1, !dbg !121
  call void @llvm.dbg.value(metadata i32 %inc11, metadata !98, metadata !DIExpression()), !dbg !99
  br label %for.cond3, !dbg !122, !llvm.loop !123

for.end12:                                        ; preds = %for.cond3
  br label %VITIS_LOOP_43_3, !dbg !124

VITIS_LOOP_43_3:                                  ; preds = %for.end12
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()), !dbg !99
  br label %for.cond13, !dbg !126

for.cond13:                                       ; preds = %for.inc20, %VITIS_LOOP_43_3
  %i.2 = phi i32 [ 0, %VITIS_LOOP_43_3 ], [ %inc21, %for.inc20 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !98, metadata !DIExpression()), !dbg !99
  %cmp14 = icmp slt i32 %i.2, 1666, !dbg !128
  br i1 %cmp14, label %for.body15, label %for.end22, !dbg !130

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %i.2 to i64, !dbg !131
  %arrayidx17 = getelementptr inbounds i32, i32* %xcols, i64 %idxprom16, !dbg !131
  %7 = load i32, i32* %arrayidx17, align 4, !dbg !131
  %idxprom18 = sext i32 %i.2 to i64, !dbg !132
  %arrayidx19 = getelementptr inbounds [1666 x i32], [1666 x i32]* %cols, i64 0, i64 %idxprom18, !dbg !132
  store i32 %7, i32* %arrayidx19, align 4, !dbg !133
  br label %for.inc20, !dbg !132

for.inc20:                                        ; preds = %for.body15
  %inc21 = add nsw i32 %i.2, 1, !dbg !134
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !98, metadata !DIExpression()), !dbg !99
  br label %for.cond13, !dbg !135, !llvm.loop !136

for.end22:                                        ; preds = %for.cond13
  br label %VITIS_LOOP_45_4, !dbg !137

VITIS_LOOP_45_4:                                  ; preds = %for.end22
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()), !dbg !99
  br label %for.cond23, !dbg !139

for.cond23:                                       ; preds = %for.inc30, %VITIS_LOOP_45_4
  %i.3 = phi i32 [ 0, %VITIS_LOOP_45_4 ], [ %inc31, %for.inc30 ]
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !98, metadata !DIExpression()), !dbg !99
  %cmp24 = icmp slt i32 %i.3, 494, !dbg !141
  br i1 %cmp24, label %for.body25, label %for.end32, !dbg !143

for.body25:                                       ; preds = %for.cond23
  %idxprom26 = sext i32 %i.3 to i64, !dbg !144
  %arrayidx27 = getelementptr inbounds i32, i32* %xvec, i64 %idxprom26, !dbg !144
  %8 = load i32, i32* %arrayidx27, align 4, !dbg !144
  %idxprom28 = sext i32 %i.3 to i64, !dbg !145
  %arrayidx29 = getelementptr inbounds [494 x i32], [494 x i32]* %vec, i64 0, i64 %idxprom28, !dbg !145
  store i32 %8, i32* %arrayidx29, align 4, !dbg !146
  br label %for.inc30, !dbg !145

for.inc30:                                        ; preds = %for.body25
  %inc31 = add nsw i32 %i.3, 1, !dbg !147
  call void @llvm.dbg.value(metadata i32 %inc31, metadata !98, metadata !DIExpression()), !dbg !99
  br label %for.cond23, !dbg !148, !llvm.loop !149

for.end32:                                        ; preds = %for.cond23
  %arrayidx33 = getelementptr inbounds i32, i32* %xrowDelimiters, i64 0, !dbg !152
  %9 = load i32, i32* %arrayidx33, align 4, !dbg !152
  call void @llvm.dbg.value(metadata i32 %9, metadata !153, metadata !DIExpression()), !dbg !154
  br label %spmv_1, !dbg !155

spmv_1:                                           ; preds = %for.end32
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()), !dbg !99
  br label %for.cond34, !dbg !156

for.cond34:                                       ; preds = %for.inc54, %spmv_1
  %i.4 = phi i32 [ 0, %spmv_1 ], [ %inc55, %for.inc54 ]
  %temp.0 = phi i32 [ %9, %spmv_1 ], [ %10, %for.inc54 ]
  call void @llvm.dbg.value(metadata i32 %temp.0, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !98, metadata !DIExpression()), !dbg !99
  %cmp35 = icmp slt i32 %i.4, %size, !dbg !158
  br i1 %cmp35, label %for.body36, label %for.end56, !dbg !160

for.body36:                                       ; preds = %for.cond34
  call void @llvm.dbg.value(metadata i32 0, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 0, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 %temp.0, metadata !165, metadata !DIExpression()), !dbg !167
  %add = add nsw i32 %i.4, 1, !dbg !168
  %idxprom37 = sext i32 %add to i64, !dbg !169
  %arrayidx38 = getelementptr inbounds [495 x i32], [495 x i32]* %rowDelimiters, i64 0, i64 %idxprom37, !dbg !169
  %10 = load i32, i32* %arrayidx38, align 4, !dbg !169
  call void @llvm.dbg.value(metadata i32 %10, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i32 %10, metadata !153, metadata !DIExpression()), !dbg !154
  br label %spmv_2, !dbg !172

spmv_2:                                           ; preds = %for.body36
  call void @llvm.dbg.value(metadata i32 %temp.0, metadata !173, metadata !DIExpression()), !dbg !174
  br label %for.cond39, !dbg !175

for.cond39:                                       ; preds = %for.inc49, %spmv_2
  %j.0 = phi i32 [ %temp.0, %spmv_2 ], [ %inc50, %for.inc49 ]
  %sum.0 = phi i32 [ 0, %spmv_2 ], [ %add48, %for.inc49 ]
  call void @llvm.dbg.value(metadata i32 %sum.0, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !173, metadata !DIExpression()), !dbg !174
  %cmp40 = icmp slt i32 %j.0, %10, !dbg !177
  br i1 %cmp40, label %for.body41, label %for.end51, !dbg !179

for.body41:                                       ; preds = %for.cond39
  %idxprom42 = sext i32 %j.0 to i64, !dbg !180
  %arrayidx43 = getelementptr inbounds [1666 x i32], [1666 x i32]* %val, i64 0, i64 %idxprom42, !dbg !180
  %11 = load i32, i32* %arrayidx43, align 4, !dbg !180
  %idxprom44 = sext i32 %j.0 to i64, !dbg !182
  %arrayidx45 = getelementptr inbounds [1666 x i32], [1666 x i32]* %cols, i64 0, i64 %idxprom44, !dbg !182
  %12 = load i32, i32* %arrayidx45, align 4, !dbg !182
  %idxprom46 = sext i32 %12 to i64, !dbg !183
  %arrayidx47 = getelementptr inbounds [494 x i32], [494 x i32]* %vec, i64 0, i64 %idxprom46, !dbg !183
  %13 = load i32, i32* %arrayidx47, align 4, !dbg !183
  %mul = mul nsw i32 %11, %13, !dbg !184
  call void @llvm.dbg.value(metadata i32 %mul, metadata !163, metadata !DIExpression()), !dbg !164
  %add48 = add nsw i32 %sum.0, %mul, !dbg !185
  call void @llvm.dbg.value(metadata i32 %add48, metadata !161, metadata !DIExpression()), !dbg !162
  br label %for.inc49, !dbg !186

for.inc49:                                        ; preds = %for.body41
  %inc50 = add nsw i32 %j.0, 1, !dbg !187
  call void @llvm.dbg.value(metadata i32 %inc50, metadata !173, metadata !DIExpression()), !dbg !174
  br label %for.cond39, !dbg !188, !llvm.loop !189

for.end51:                                        ; preds = %for.cond39
  %idxprom52 = sext i32 %i.4 to i64, !dbg !192
  %arrayidx53 = getelementptr inbounds [494 x i32], [494 x i32]* %out, i64 0, i64 %idxprom52, !dbg !192
  store i32 %sum.0, i32* %arrayidx53, align 4, !dbg !193
  br label %for.inc54, !dbg !194

for.inc54:                                        ; preds = %for.end51
  %inc55 = add nsw i32 %i.4, 1, !dbg !195
  call void @llvm.dbg.value(metadata i32 %inc55, metadata !98, metadata !DIExpression()), !dbg !99
  br label %for.cond34, !dbg !196, !llvm.loop !197

for.end56:                                        ; preds = %for.cond34
  %arraydecay = getelementptr inbounds [494 x i32], [494 x i32]* %out, i32 0, i32 0, !dbg !200
  call void @stream_write(i32 494, i32* %xout, i32* %arraydecay), !dbg !201
  %14 = bitcast [494 x i32]* %out to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 1976, i8* %14) #10, !dbg !202
  %15 = bitcast [494 x i32]* %vec to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 1976, i8* %15) #10, !dbg !202
  %16 = bitcast [495 x i32]* %rowDelimiters to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 1980, i8* %16) #10, !dbg !202
  %17 = bitcast [1666 x i32]* %cols to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 6664, i8* %17) #10, !dbg !202
  %18 = bitcast [1666 x i32]* %val to i8*, !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 6664, i8* %18) #10, !dbg !202
  ret void, !dbg !202
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
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="53312" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="15840" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="15808" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/workspace/examples/spmv_crs/spmv_crs_prj/solution/.autopilot/db/spmv_crs.pp.0.c", directory: "/workspace/examples/spmv_crs")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!"clang version 7.0.0 "}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "stream_write", scope: !10, file: !10, line: 15, type: !11, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DIFile(filename: "spmv_crs.c", directory: "/workspace/examples/spmv_crs")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !19, !19}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !10, line: 14, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 26, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/spmv_crs")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 42, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/spmv_crs")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{!22}
!22 = !{!"fpga.inline", !"user", !23}
!23 = !DILocation(line: 16, column: 9, scope: !9)
!24 = !DILocalVariable(name: "size", arg: 1, scope: !9, file: !10, line: 15, type: !13)
!25 = !DILocation(line: 15, column: 23, scope: !9)
!26 = !DILocalVariable(name: "array1", arg: 2, scope: !9, file: !10, line: 15, type: !19)
!27 = !DILocation(line: 15, column: 34, scope: !9)
!28 = !DILocalVariable(name: "array2", arg: 3, scope: !9, file: !10, line: 15, type: !19)
!29 = !DILocation(line: 15, column: 47, scope: !9)
!30 = !DILocation(line: 15, column: 55, scope: !9)
!31 = !DILocalVariable(name: "i", scope: !32, file: !10, line: 17, type: !20)
!32 = distinct !DILexicalBlock(scope: !9, file: !10, line: 17, column: 19)
!33 = !DILocation(line: 17, column: 28, scope: !32)
!34 = !DILocation(line: 17, column: 24, scope: !32)
!35 = !DILocation(line: 17, column: 37, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !10, line: 17, column: 19)
!37 = !DILocation(line: 17, column: 19, scope: !32)
!38 = !DILocation(line: 18, column: 17, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !10, line: 17, column: 50)
!40 = !DILocation(line: 18, column: 5, scope: !39)
!41 = !DILocation(line: 18, column: 15, scope: !39)
!42 = !DILocation(line: 19, column: 3, scope: !39)
!43 = !DILocation(line: 17, column: 46, scope: !36)
!44 = !DILocation(line: 17, column: 19, scope: !36)
!45 = distinct !{!45, !37, !46, !47}
!46 = !DILocation(line: 19, column: 3, scope: !32)
!47 = !{!"llvm.loop.name", !"VITIS_LOOP_17_1"}
!48 = !DILocation(line: 20, column: 1, scope: !9)
!49 = distinct !DISubprogram(name: "hls_top", scope: !10, file: !10, line: 22, type: !50, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !20, !19, !19, !19, !19, !19}
!52 = !{!53}
!53 = !{!"fpga.top", !"user", !54}
!54 = !DILocation(line: 22, column: 16, scope: !49)
!55 = !DILocalVariable(name: "size", arg: 1, scope: !49, file: !10, line: 22, type: !20)
!56 = !DILocation(line: 22, column: 60, scope: !49)
!57 = !DILocalVariable(name: "xval", arg: 2, scope: !49, file: !10, line: 22, type: !19)
!58 = !DILocation(line: 22, column: 70, scope: !49)
!59 = !DILocalVariable(name: "xcols", arg: 3, scope: !49, file: !10, line: 22, type: !19)
!60 = !DILocation(line: 22, column: 86, scope: !49)
!61 = !DILocalVariable(name: "xrowDelimiters", arg: 4, scope: !49, file: !10, line: 23, type: !19)
!62 = !DILocation(line: 23, column: 18, scope: !49)
!63 = !DILocalVariable(name: "xvec", arg: 5, scope: !49, file: !10, line: 23, type: !19)
!64 = !DILocation(line: 23, column: 47, scope: !49)
!65 = !DILocalVariable(name: "xout", arg: 6, scope: !49, file: !10, line: 23, type: !19)
!66 = !DILocation(line: 23, column: 62, scope: !49)
!67 = !DILocation(line: 24, column: 9, scope: !49)
!68 = !DILocation(line: 25, column: 9, scope: !49)
!69 = !DILocation(line: 26, column: 9, scope: !49)
!70 = !DILocation(line: 27, column: 9, scope: !49)
!71 = !DILocation(line: 28, column: 9, scope: !49)
!72 = !DILocation(line: 29, column: 9, scope: !49)
!73 = !DILocation(line: 30, column: 9, scope: !49)
!74 = !DILocation(line: 34, column: 3, scope: !49)
!75 = !DILocalVariable(name: "val", scope: !49, file: !10, line: 34, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 53312, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1666)
!79 = !DILocation(line: 34, column: 7, scope: !49)
!80 = !DILocation(line: 35, column: 3, scope: !49)
!81 = !DILocalVariable(name: "cols", scope: !49, file: !10, line: 35, type: !76)
!82 = !DILocation(line: 35, column: 7, scope: !49)
!83 = !DILocation(line: 36, column: 3, scope: !49)
!84 = !DILocalVariable(name: "rowDelimiters", scope: !49, file: !10, line: 36, type: !85)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 15840, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 495)
!88 = !DILocation(line: 36, column: 7, scope: !49)
!89 = !DILocation(line: 37, column: 3, scope: !49)
!90 = !DILocalVariable(name: "vec", scope: !49, file: !10, line: 37, type: !91)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 15808, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 494)
!94 = !DILocation(line: 37, column: 7, scope: !49)
!95 = !DILocation(line: 38, column: 3, scope: !49)
!96 = !DILocalVariable(name: "out", scope: !49, file: !10, line: 38, type: !91)
!97 = !DILocation(line: 38, column: 7, scope: !49)
!98 = !DILocalVariable(name: "i", scope: !49, file: !10, line: 31, type: !20)
!99 = !DILocation(line: 31, column: 6, scope: !49)
!100 = !DILocation(line: 39, column: 25, scope: !101)
!101 = distinct !DILexicalBlock(scope: !49, file: !10, line: 39, column: 20)
!102 = !DILocation(line: 39, column: 34, scope: !103)
!103 = distinct !DILexicalBlock(scope: !101, file: !10, line: 39, column: 20)
!104 = !DILocation(line: 39, column: 20, scope: !101)
!105 = !DILocation(line: 40, column: 24, scope: !103)
!106 = !DILocation(line: 40, column: 5, scope: !103)
!107 = !DILocation(line: 40, column: 22, scope: !103)
!108 = !DILocation(line: 39, column: 46, scope: !103)
!109 = !DILocation(line: 39, column: 20, scope: !103)
!110 = distinct !{!110, !104, !111, !112}
!111 = !DILocation(line: 40, column: 40, scope: !101)
!112 = !{!"llvm.loop.name", !"VITIS_LOOP_39_1"}
!113 = !DILocation(line: 41, column: 25, scope: !114)
!114 = distinct !DILexicalBlock(scope: !49, file: !10, line: 41, column: 20)
!115 = !DILocation(line: 41, column: 34, scope: !116)
!116 = distinct !DILexicalBlock(scope: !114, file: !10, line: 41, column: 20)
!117 = !DILocation(line: 41, column: 20, scope: !114)
!118 = !DILocation(line: 42, column: 14, scope: !116)
!119 = !DILocation(line: 42, column: 5, scope: !116)
!120 = !DILocation(line: 42, column: 12, scope: !116)
!121 = !DILocation(line: 41, column: 43, scope: !116)
!122 = !DILocation(line: 41, column: 20, scope: !116)
!123 = distinct !{!123, !117, !124, !125}
!124 = !DILocation(line: 42, column: 20, scope: !114)
!125 = !{!"llvm.loop.name", !"VITIS_LOOP_41_2"}
!126 = !DILocation(line: 43, column: 25, scope: !127)
!127 = distinct !DILexicalBlock(scope: !49, file: !10, line: 43, column: 20)
!128 = !DILocation(line: 43, column: 34, scope: !129)
!129 = distinct !DILexicalBlock(scope: !127, file: !10, line: 43, column: 20)
!130 = !DILocation(line: 43, column: 20, scope: !127)
!131 = !DILocation(line: 44, column: 15, scope: !129)
!132 = !DILocation(line: 44, column: 5, scope: !129)
!133 = !DILocation(line: 44, column: 13, scope: !129)
!134 = !DILocation(line: 43, column: 43, scope: !129)
!135 = !DILocation(line: 43, column: 20, scope: !129)
!136 = distinct !{!136, !130, !137, !138}
!137 = !DILocation(line: 44, column: 22, scope: !127)
!138 = !{!"llvm.loop.name", !"VITIS_LOOP_43_3"}
!139 = !DILocation(line: 45, column: 25, scope: !140)
!140 = distinct !DILexicalBlock(scope: !49, file: !10, line: 45, column: 20)
!141 = !DILocation(line: 45, column: 34, scope: !142)
!142 = distinct !DILexicalBlock(scope: !140, file: !10, line: 45, column: 20)
!143 = !DILocation(line: 45, column: 20, scope: !140)
!144 = !DILocation(line: 46, column: 14, scope: !142)
!145 = !DILocation(line: 46, column: 5, scope: !142)
!146 = !DILocation(line: 46, column: 12, scope: !142)
!147 = !DILocation(line: 45, column: 42, scope: !142)
!148 = !DILocation(line: 45, column: 20, scope: !142)
!149 = distinct !{!149, !143, !150, !151}
!150 = !DILocation(line: 46, column: 20, scope: !140)
!151 = !{!"llvm.loop.name", !"VITIS_LOOP_45_4"}
!152 = !DILocation(line: 48, column: 14, scope: !49)
!153 = !DILocalVariable(name: "temp", scope: !49, file: !10, line: 48, type: !20)
!154 = !DILocation(line: 48, column: 7, scope: !49)
!155 = !DILocation(line: 48, column: 3, scope: !49)
!156 = !DILocation(line: 50, column: 8, scope: !157)
!157 = distinct !DILexicalBlock(scope: !49, file: !10, line: 50, column: 3)
!158 = !DILocation(line: 50, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !157, file: !10, line: 50, column: 3)
!160 = !DILocation(line: 50, column: 3, scope: !157)
!161 = !DILocalVariable(name: "sum", scope: !49, file: !10, line: 32, type: !20)
!162 = !DILocation(line: 32, column: 7, scope: !49)
!163 = !DILocalVariable(name: "Si", scope: !49, file: !10, line: 32, type: !20)
!164 = !DILocation(line: 32, column: 12, scope: !49)
!165 = !DILocalVariable(name: "tmp_begin", scope: !166, file: !10, line: 53, type: !20)
!166 = distinct !DILexicalBlock(scope: !159, file: !10, line: 50, column: 30)
!167 = !DILocation(line: 53, column: 9, scope: !166)
!168 = !DILocation(line: 54, column: 35, scope: !166)
!169 = !DILocation(line: 54, column: 19, scope: !166)
!170 = !DILocalVariable(name: "tmp_end", scope: !166, file: !10, line: 54, type: !20)
!171 = !DILocation(line: 54, column: 9, scope: !166)
!172 = !DILocation(line: 55, column: 5, scope: !166)
!173 = !DILocalVariable(name: "j", scope: !49, file: !10, line: 31, type: !20)
!174 = !DILocation(line: 31, column: 9, scope: !49)
!175 = !DILocation(line: 57, column: 10, scope: !176)
!176 = distinct !DILexicalBlock(scope: !166, file: !10, line: 57, column: 5)
!177 = !DILocation(line: 57, column: 27, scope: !178)
!178 = distinct !DILexicalBlock(scope: !176, file: !10, line: 57, column: 5)
!179 = !DILocation(line: 57, column: 5, scope: !176)
!180 = !DILocation(line: 58, column: 12, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !10, line: 57, column: 43)
!182 = !DILocation(line: 58, column: 25, scope: !181)
!183 = !DILocation(line: 58, column: 21, scope: !181)
!184 = !DILocation(line: 58, column: 19, scope: !181)
!185 = !DILocation(line: 59, column: 17, scope: !181)
!186 = !DILocation(line: 60, column: 5, scope: !181)
!187 = !DILocation(line: 57, column: 39, scope: !178)
!188 = !DILocation(line: 57, column: 5, scope: !178)
!189 = distinct !{!189, !179, !190, !191}
!190 = !DILocation(line: 60, column: 5, scope: !176)
!191 = !{!"llvm.loop.name", !"spmv_2"}
!192 = !DILocation(line: 61, column: 5, scope: !166)
!193 = !DILocation(line: 61, column: 12, scope: !166)
!194 = !DILocation(line: 62, column: 3, scope: !166)
!195 = !DILocation(line: 50, column: 26, scope: !159)
!196 = !DILocation(line: 50, column: 3, scope: !159)
!197 = distinct !{!197, !160, !198, !199}
!198 = !DILocation(line: 62, column: 3, scope: !157)
!199 = !{!"llvm.loop.name", !"spmv_1"}
!200 = !DILocation(line: 63, column: 27, scope: !49)
!201 = !DILocation(line: 63, column: 3, scope: !49)
!202 = !DILocation(line: 64, column: 1, scope: !49)
