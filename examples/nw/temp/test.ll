; ModuleID = '/workspace/examples/nw/temp/test.bc'
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
  br label %VITIS_LOOP_18_1, !dbg !28

VITIS_LOOP_18_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !31
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_18_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_18_1 ], [ %inc, %for.inc ]
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
define void @hls_top(i32 %alen, i32 %blen, i32* "fpga.decayed.dim.hint"="128" %xSEQA, i32* "fpga.decayed.dim.hint"="128" %xSEQB, i32* "fpga.decayed.dim.hint"="256" %xalignedA, i32* "fpga.decayed.dim.hint"="256" %xalignedB, i32* "fpga.decayed.dim.hint"="16641" %xM, i32* "fpga.decayed.dim.hint"="16641" %xptr) #3 !dbg !47 !fpga.function.pragma !50 {
entry:
  %SEQA = alloca [128 x i32], align 4
  %SEQB = alloca [128 x i32], align 4
  %alignedA = alloca [256 x i32], align 4
  %alignedB = alloca [256 x i32], align 4
  %M = alloca [16641 x i32], align 4
  %ptr = alloca [16641 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %alen, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i32 %blen, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i32* %xSEQA, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32* %xSEQB, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32* %xalignedA, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32* %xalignedB, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32* %xM, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32* %xptr, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xSEQA, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !69
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xSEQB, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !70
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xalignedA, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !71
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xalignedB, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !72
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xM, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !73
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xptr, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !74
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i32 %alen, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !75
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i32 %blen, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !76
  call void @llvm.sideeffect() #9 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !77
  %0 = bitcast [128 x i32]* %SEQA to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 512, i8* %0) #10, !dbg !78
  call void @llvm.dbg.declare(metadata [128 x i32]* %SEQA, metadata !79, metadata !DIExpression()), !dbg !83
  %1 = bitcast [128 x i32]* %SEQB to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 512, i8* %1) #10, !dbg !84
  call void @llvm.dbg.declare(metadata [128 x i32]* %SEQB, metadata !85, metadata !DIExpression()), !dbg !86
  %2 = bitcast [256 x i32]* %alignedA to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %2) #10, !dbg !87
  call void @llvm.dbg.declare(metadata [256 x i32]* %alignedA, metadata !88, metadata !DIExpression()), !dbg !92
  %3 = bitcast [256 x i32]* %alignedB to i8*, !dbg !93
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %3) #10, !dbg !93
  call void @llvm.dbg.declare(metadata [256 x i32]* %alignedB, metadata !94, metadata !DIExpression()), !dbg !95
  %4 = bitcast [16641 x i32]* %M to i8*, !dbg !96
  call void @llvm.lifetime.start.p0i8(i64 66564, i8* %4) #10, !dbg !96
  call void @llvm.dbg.declare(metadata [16641 x i32]* %M, metadata !97, metadata !DIExpression()), !dbg !101
  %5 = bitcast [16641 x i32]* %ptr to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 66564, i8* %5) #10, !dbg !102
  call void @llvm.dbg.declare(metadata [16641 x i32]* %ptr, metadata !103, metadata !DIExpression()), !dbg !104
  br label %VITIS_LOOP_43_1, !dbg !102

VITIS_LOOP_43_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !105, metadata !DIExpression()), !dbg !107
  br label %for.cond, !dbg !108

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_43_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_43_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !105, metadata !DIExpression()), !dbg !107
  %cmp = icmp slt i32 %i.0, 128, !dbg !109
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !111

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !112
  %arrayidx = getelementptr inbounds i32, i32* %xSEQA, i64 %idxprom, !dbg !112
  %6 = load i32, i32* %arrayidx, align 4, !dbg !112
  %idxprom1 = sext i32 %i.0 to i64, !dbg !113
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i64 0, i64 %idxprom1, !dbg !113
  store i32 %6, i32* %arrayidx2, align 4, !dbg !114
  br label %for.inc, !dbg !113

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !115
  call void @llvm.dbg.value(metadata i32 %inc, metadata !105, metadata !DIExpression()), !dbg !107
  br label %for.cond, !dbg !116, !llvm.loop !117

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_45_2, !dbg !118

VITIS_LOOP_45_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !120, metadata !DIExpression()), !dbg !122
  br label %for.cond4, !dbg !123

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_45_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_45_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !120, metadata !DIExpression()), !dbg !122
  %cmp5 = icmp slt i32 %i3.0, 128, !dbg !124
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !126

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end14

for.body7:                                        ; preds = %for.cond4
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !127
  %arrayidx9 = getelementptr inbounds i32, i32* %xSEQB, i64 %idxprom8, !dbg !127
  %7 = load i32, i32* %arrayidx9, align 4, !dbg !127
  %idxprom10 = sext i32 %i3.0 to i64, !dbg !128
  %arrayidx11 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i64 0, i64 %idxprom10, !dbg !128
  store i32 %7, i32* %arrayidx11, align 4, !dbg !129
  br label %for.inc12, !dbg !128

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i3.0, 1, !dbg !130
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !120, metadata !DIExpression()), !dbg !122
  br label %for.cond4, !dbg !131, !llvm.loop !132

for.end14:                                        ; preds = %for.cond.cleanup6
  br label %init_row, !dbg !135

init_row:                                         ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !136, metadata !DIExpression()), !dbg !137
  br label %for.cond15, !dbg !138

for.cond15:                                       ; preds = %for.inc20, %init_row
  %a_idx.0 = phi i32 [ 0, %init_row ], [ %inc21, %for.inc20 ]
  call void @llvm.dbg.value(metadata i32 %a_idx.0, metadata !136, metadata !DIExpression()), !dbg !137
  %cmp16 = icmp slt i32 %a_idx.0, 129, !dbg !140
  br i1 %cmp16, label %for.body17, label %for.end22, !dbg !142

for.body17:                                       ; preds = %for.cond15
  %mul = mul nsw i32 %a_idx.0, -1, !dbg !143
  %idxprom18 = sext i32 %a_idx.0 to i64, !dbg !145
  %arrayidx19 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom18, !dbg !145
  store i32 %mul, i32* %arrayidx19, align 4, !dbg !146
  br label %for.inc20, !dbg !147

for.inc20:                                        ; preds = %for.body17
  %inc21 = add nsw i32 %a_idx.0, 1, !dbg !148
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !136, metadata !DIExpression()), !dbg !137
  br label %for.cond15, !dbg !149, !llvm.loop !150

for.end22:                                        ; preds = %for.cond15
  br label %init_col, !dbg !151

init_col:                                         ; preds = %for.end22
  call void @llvm.dbg.value(metadata i32 0, metadata !153, metadata !DIExpression()), !dbg !154
  br label %for.cond23, !dbg !155

for.cond23:                                       ; preds = %for.inc30, %init_col
  %b_idx.0 = phi i32 [ 0, %init_col ], [ %inc31, %for.inc30 ]
  call void @llvm.dbg.value(metadata i32 %b_idx.0, metadata !153, metadata !DIExpression()), !dbg !154
  %cmp24 = icmp slt i32 %b_idx.0, 129, !dbg !157
  br i1 %cmp24, label %for.body25, label %for.end32, !dbg !159

for.body25:                                       ; preds = %for.cond23
  %mul26 = mul nsw i32 %b_idx.0, -1, !dbg !160
  %mul27 = mul nsw i32 %b_idx.0, 129, !dbg !162
  %idxprom28 = sext i32 %mul27 to i64, !dbg !163
  %arrayidx29 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom28, !dbg !163
  store i32 %mul26, i32* %arrayidx29, align 4, !dbg !164
  br label %for.inc30, !dbg !165

for.inc30:                                        ; preds = %for.body25
  %inc31 = add nsw i32 %b_idx.0, 1, !dbg !166
  call void @llvm.dbg.value(metadata i32 %inc31, metadata !153, metadata !DIExpression()), !dbg !154
  br label %for.cond23, !dbg !167, !llvm.loop !168

for.end32:                                        ; preds = %for.cond23
  br label %fill_out, !dbg !169

fill_out:                                         ; preds = %for.end32
  call void @llvm.dbg.value(metadata i32 1, metadata !153, metadata !DIExpression()), !dbg !154
  br label %for.cond33, !dbg !171

for.cond33:                                       ; preds = %for.inc95, %fill_out
  %b_idx.1 = phi i32 [ 1, %fill_out ], [ %inc96, %for.inc95 ]
  call void @llvm.dbg.value(metadata i32 %b_idx.1, metadata !153, metadata !DIExpression()), !dbg !154
  %cmp34 = icmp slt i32 %b_idx.1, 129, !dbg !173
  br i1 %cmp34, label %for.body35, label %for.end97, !dbg !175

for.body35:                                       ; preds = %for.cond33
  br label %fill_in, !dbg !176

fill_in:                                          ; preds = %for.body35
  call void @llvm.dbg.value(metadata i32 1, metadata !136, metadata !DIExpression()), !dbg !137
  br label %for.cond36, !dbg !177

for.cond36:                                       ; preds = %for.inc92, %fill_in
  %a_idx.1 = phi i32 [ 1, %fill_in ], [ %inc93, %for.inc92 ]
  call void @llvm.dbg.value(metadata i32 %a_idx.1, metadata !136, metadata !DIExpression()), !dbg !137
  %cmp37 = icmp slt i32 %a_idx.1, 129, !dbg !180
  br i1 %cmp37, label %for.body38, label %for.end94, !dbg !182

for.body38:                                       ; preds = %for.cond36
  %sub = sub nsw i32 %a_idx.1, 1, !dbg !183
  %idxprom39 = sext i32 %sub to i64, !dbg !186
  %arrayidx40 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i64 0, i64 %idxprom39, !dbg !186
  %8 = load i32, i32* %arrayidx40, align 4, !dbg !186
  %sub41 = sub nsw i32 %b_idx.1, 1, !dbg !187
  %idxprom42 = sext i32 %sub41 to i64, !dbg !188
  %arrayidx43 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i64 0, i64 %idxprom42, !dbg !188
  %9 = load i32, i32* %arrayidx43, align 4, !dbg !188
  %cmp44 = icmp eq i32 %8, %9, !dbg !189
  br i1 %cmp44, label %if.then, label %if.else, !dbg !190

if.then:                                          ; preds = %for.body38
  call void @llvm.dbg.value(metadata i32 1, metadata !191, metadata !DIExpression()), !dbg !192
  br label %if.end, !dbg !193

if.else:                                          ; preds = %for.body38
  call void @llvm.dbg.value(metadata i32 -1, metadata !191, metadata !DIExpression()), !dbg !192
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %score.0 = phi i32 [ 1, %if.then ], [ -1, %if.else ]
  call void @llvm.dbg.value(metadata i32 %score.0, metadata !191, metadata !DIExpression()), !dbg !192
  %sub45 = sub nsw i32 %b_idx.1, 1, !dbg !195
  %mul46 = mul nsw i32 %sub45, 129, !dbg !196
  call void @llvm.dbg.value(metadata i32 %mul46, metadata !197, metadata !DIExpression()), !dbg !198
  %mul47 = mul nsw i32 %b_idx.1, 129, !dbg !199
  call void @llvm.dbg.value(metadata i32 %mul47, metadata !200, metadata !DIExpression()), !dbg !201
  %sub48 = sub nsw i32 %a_idx.1, 1, !dbg !202
  %add = add nsw i32 %mul46, %sub48, !dbg !203
  %idxprom49 = sext i32 %add to i64, !dbg !204
  %arrayidx50 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom49, !dbg !204
  %10 = load i32, i32* %arrayidx50, align 4, !dbg !204
  %add51 = add nsw i32 %10, %score.0, !dbg !205
  call void @llvm.dbg.value(metadata i32 %add51, metadata !206, metadata !DIExpression()), !dbg !207
  %add52 = add nsw i32 %mul46, %a_idx.1, !dbg !208
  %idxprom53 = sext i32 %add52 to i64, !dbg !209
  %arrayidx54 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom53, !dbg !209
  %11 = load i32, i32* %arrayidx54, align 4, !dbg !209
  %add55 = add nsw i32 %11, -1, !dbg !210
  call void @llvm.dbg.value(metadata i32 %add55, metadata !211, metadata !DIExpression()), !dbg !212
  %sub56 = sub nsw i32 %a_idx.1, 1, !dbg !213
  %add57 = add nsw i32 %mul47, %sub56, !dbg !214
  %idxprom58 = sext i32 %add57 to i64, !dbg !215
  %arrayidx59 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom58, !dbg !215
  %12 = load i32, i32* %arrayidx59, align 4, !dbg !215
  %add60 = add nsw i32 %12, -1, !dbg !216
  call void @llvm.dbg.value(metadata i32 %add60, metadata !217, metadata !DIExpression()), !dbg !218
  %cmp61 = icmp sgt i32 %add55, %add60, !dbg !219
  br i1 %cmp61, label %cond.true, label %cond.false, !dbg !220

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !220

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !220

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add55, %cond.true ], [ %add60, %cond.false ], !dbg !220
  %cmp62 = icmp sgt i32 %add51, %cond, !dbg !221
  br i1 %cmp62, label %cond.true63, label %cond.false64, !dbg !222

cond.true63:                                      ; preds = %cond.end
  br label %cond.end70, !dbg !222

cond.false64:                                     ; preds = %cond.end
  %cmp65 = icmp sgt i32 %add55, %add60, !dbg !223
  br i1 %cmp65, label %cond.true66, label %cond.false67, !dbg !224

cond.true66:                                      ; preds = %cond.false64
  br label %cond.end68, !dbg !224

cond.false67:                                     ; preds = %cond.false64
  br label %cond.end68, !dbg !224

cond.end68:                                       ; preds = %cond.false67, %cond.true66
  %cond69 = phi i32 [ %add55, %cond.true66 ], [ %add60, %cond.false67 ], !dbg !224
  br label %cond.end70, !dbg !222

cond.end70:                                       ; preds = %cond.end68, %cond.true63
  %cond71 = phi i32 [ %add51, %cond.true63 ], [ %cond69, %cond.end68 ], !dbg !222
  call void @llvm.dbg.value(metadata i32 %cond71, metadata !225, metadata !DIExpression()), !dbg !226
  %add72 = add nsw i32 %mul47, %a_idx.1, !dbg !227
  %idxprom73 = sext i32 %add72 to i64, !dbg !228
  %arrayidx74 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom73, !dbg !228
  store i32 %cond71, i32* %arrayidx74, align 4, !dbg !229
  %cmp75 = icmp eq i32 %cond71, %add60, !dbg !230
  br i1 %cmp75, label %if.then76, label %if.else80, !dbg !232

if.then76:                                        ; preds = %cond.end70
  %add77 = add nsw i32 %mul47, %a_idx.1, !dbg !233
  %idxprom78 = sext i32 %add77 to i64, !dbg !235
  %arrayidx79 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i64 0, i64 %idxprom78, !dbg !235
  store i32 60, i32* %arrayidx79, align 4, !dbg !236
  br label %if.end91, !dbg !237

if.else80:                                        ; preds = %cond.end70
  %cmp81 = icmp eq i32 %cond71, %add55, !dbg !238
  br i1 %cmp81, label %if.then82, label %if.else86, !dbg !240

if.then82:                                        ; preds = %if.else80
  %add83 = add nsw i32 %mul47, %a_idx.1, !dbg !241
  %idxprom84 = sext i32 %add83 to i64, !dbg !243
  %arrayidx85 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i64 0, i64 %idxprom84, !dbg !243
  store i32 94, i32* %arrayidx85, align 4, !dbg !244
  br label %if.end90, !dbg !245

if.else86:                                        ; preds = %if.else80
  %add87 = add nsw i32 %mul47, %a_idx.1, !dbg !246
  %idxprom88 = sext i32 %add87 to i64, !dbg !248
  %arrayidx89 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i64 0, i64 %idxprom88, !dbg !248
  store i32 92, i32* %arrayidx89, align 4, !dbg !249
  br label %if.end90

if.end90:                                         ; preds = %if.else86, %if.then82
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then76
  br label %for.inc92, !dbg !250

for.inc92:                                        ; preds = %if.end91
  %inc93 = add nsw i32 %a_idx.1, 1, !dbg !251
  call void @llvm.dbg.value(metadata i32 %inc93, metadata !136, metadata !DIExpression()), !dbg !137
  br label %for.cond36, !dbg !252, !llvm.loop !253

for.end94:                                        ; preds = %for.cond36
  br label %for.inc95, !dbg !256

for.inc95:                                        ; preds = %for.end94
  %inc96 = add nsw i32 %b_idx.1, 1, !dbg !257
  call void @llvm.dbg.value(metadata i32 %inc96, metadata !153, metadata !DIExpression()), !dbg !154
  br label %for.cond33, !dbg !258, !llvm.loop !259

for.end97:                                        ; preds = %for.cond33
  call void @llvm.dbg.value(metadata i32 128, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 128, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 0, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !265
  br label %trace, !dbg !266

trace:                                            ; preds = %for.end97
  br label %while.cond, !dbg !267

while.cond:                                       ; preds = %if.end147, %trace
  %a_idx.2 = phi i32 [ 128, %trace ], [ %a_idx.4, %if.end147 ]
  %b_idx.2 = phi i32 [ 128, %trace ], [ %b_idx.4, %if.end147 ]
  %a_str_idx.0 = phi i32 [ 0, %trace ], [ %a_str_idx.2, %if.end147 ]
  %b_str_idx.0 = phi i32 [ 0, %trace ], [ %b_str_idx.2, %if.end147 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.0, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 %a_str_idx.0, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %b_idx.2, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 %a_idx.2, metadata !136, metadata !DIExpression()), !dbg !137
  %cmp98 = icmp sgt i32 %a_idx.2, 0, !dbg !268
  br i1 %cmp98, label %lor.end, label %lor.rhs, !dbg !269

lor.rhs:                                          ; preds = %while.cond
  %cmp99 = icmp sgt i32 %b_idx.2, 0, !dbg !270
  br label %lor.end, !dbg !269

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %13 = phi i1 [ true, %while.cond ], [ %cmp99, %lor.rhs ]
  br i1 %13, label %while.body, label %while.end, !dbg !267

while.body:                                       ; preds = %lor.end
  %mul100 = mul nsw i32 %b_idx.2, 129, !dbg !271
  call void @llvm.dbg.value(metadata i32 %mul100, metadata !273, metadata !DIExpression()), !dbg !274
  %add101 = add nsw i32 %mul100, %a_idx.2, !dbg !275
  %idxprom102 = sext i32 %add101 to i64, !dbg !277
  %arrayidx103 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i64 0, i64 %idxprom102, !dbg !277
  %14 = load i32, i32* %arrayidx103, align 4, !dbg !277
  %cmp104 = icmp eq i32 %14, 92, !dbg !278
  br i1 %cmp104, label %if.then105, label %if.else119, !dbg !279

if.then105:                                       ; preds = %while.body
  %inc106 = add nsw i32 %a_str_idx.0, 1, !dbg !280
  call void @llvm.dbg.value(metadata i32 %inc106, metadata !262, metadata !DIExpression()), !dbg !263
  %inc107 = add nsw i32 %b_str_idx.0, 1, !dbg !282
  call void @llvm.dbg.value(metadata i32 %inc107, metadata !264, metadata !DIExpression()), !dbg !265
  %sub108 = sub nsw i32 %a_idx.2, 1, !dbg !283
  %idxprom109 = sext i32 %sub108 to i64, !dbg !284
  %arrayidx110 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i64 0, i64 %idxprom109, !dbg !284
  %15 = load i32, i32* %arrayidx110, align 4, !dbg !284
  %idxprom111 = sext i32 %inc106 to i64, !dbg !285
  %arrayidx112 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i64 0, i64 %idxprom111, !dbg !285
  store i32 %15, i32* %arrayidx112, align 4, !dbg !286
  %sub113 = sub nsw i32 %b_idx.2, 1, !dbg !287
  %idxprom114 = sext i32 %sub113 to i64, !dbg !288
  %arrayidx115 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i64 0, i64 %idxprom114, !dbg !288
  %16 = load i32, i32* %arrayidx115, align 4, !dbg !288
  %idxprom116 = sext i32 %inc107 to i64, !dbg !289
  %arrayidx117 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i64 0, i64 %idxprom116, !dbg !289
  store i32 %16, i32* %arrayidx117, align 4, !dbg !290
  %dec = add nsw i32 %a_idx.2, -1, !dbg !291
  call void @llvm.dbg.value(metadata i32 %dec, metadata !136, metadata !DIExpression()), !dbg !137
  %dec118 = add nsw i32 %b_idx.2, -1, !dbg !292
  call void @llvm.dbg.value(metadata i32 %dec118, metadata !153, metadata !DIExpression()), !dbg !154
  br label %if.end147, !dbg !293

if.else119:                                       ; preds = %while.body
  %add120 = add nsw i32 %mul100, %a_idx.2, !dbg !294
  %idxprom121 = sext i32 %add120 to i64, !dbg !296
  %arrayidx122 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i64 0, i64 %idxprom121, !dbg !296
  %17 = load i32, i32* %arrayidx122, align 4, !dbg !296
  %cmp123 = icmp eq i32 %17, 60, !dbg !297
  br i1 %cmp123, label %if.then124, label %if.else135, !dbg !298

if.then124:                                       ; preds = %if.else119
  %inc125 = add nsw i32 %a_str_idx.0, 1, !dbg !299
  call void @llvm.dbg.value(metadata i32 %inc125, metadata !262, metadata !DIExpression()), !dbg !263
  %inc126 = add nsw i32 %b_str_idx.0, 1, !dbg !301
  call void @llvm.dbg.value(metadata i32 %inc126, metadata !264, metadata !DIExpression()), !dbg !265
  %sub127 = sub nsw i32 %a_idx.2, 1, !dbg !302
  %idxprom128 = sext i32 %sub127 to i64, !dbg !303
  %arrayidx129 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i64 0, i64 %idxprom128, !dbg !303
  %18 = load i32, i32* %arrayidx129, align 4, !dbg !303
  %idxprom130 = sext i32 %inc125 to i64, !dbg !304
  %arrayidx131 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i64 0, i64 %idxprom130, !dbg !304
  store i32 %18, i32* %arrayidx131, align 4, !dbg !305
  %idxprom132 = sext i32 %inc126 to i64, !dbg !306
  %arrayidx133 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i64 0, i64 %idxprom132, !dbg !306
  store i32 45, i32* %arrayidx133, align 4, !dbg !307
  %dec134 = add nsw i32 %a_idx.2, -1, !dbg !308
  call void @llvm.dbg.value(metadata i32 %dec134, metadata !136, metadata !DIExpression()), !dbg !137
  br label %if.end146, !dbg !309

if.else135:                                       ; preds = %if.else119
  %inc136 = add nsw i32 %a_str_idx.0, 1, !dbg !310
  call void @llvm.dbg.value(metadata i32 %inc136, metadata !262, metadata !DIExpression()), !dbg !263
  %inc137 = add nsw i32 %b_str_idx.0, 1, !dbg !312
  call void @llvm.dbg.value(metadata i32 %inc137, metadata !264, metadata !DIExpression()), !dbg !265
  %idxprom138 = sext i32 %inc136 to i64, !dbg !313
  %arrayidx139 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i64 0, i64 %idxprom138, !dbg !313
  store i32 45, i32* %arrayidx139, align 4, !dbg !314
  %sub140 = sub nsw i32 %b_idx.2, 1, !dbg !315
  %idxprom141 = sext i32 %sub140 to i64, !dbg !316
  %arrayidx142 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i64 0, i64 %idxprom141, !dbg !316
  %19 = load i32, i32* %arrayidx142, align 4, !dbg !316
  %idxprom143 = sext i32 %inc137 to i64, !dbg !317
  %arrayidx144 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i64 0, i64 %idxprom143, !dbg !317
  store i32 %19, i32* %arrayidx144, align 4, !dbg !318
  %dec145 = add nsw i32 %b_idx.2, -1, !dbg !319
  call void @llvm.dbg.value(metadata i32 %dec145, metadata !153, metadata !DIExpression()), !dbg !154
  br label %if.end146

if.end146:                                        ; preds = %if.else135, %if.then124
  %a_idx.3 = phi i32 [ %dec134, %if.then124 ], [ %a_idx.2, %if.else135 ]
  %b_idx.3 = phi i32 [ %b_idx.2, %if.then124 ], [ %dec145, %if.else135 ]
  %a_str_idx.1 = phi i32 [ %inc125, %if.then124 ], [ %inc136, %if.else135 ]
  %b_str_idx.1 = phi i32 [ %inc126, %if.then124 ], [ %inc137, %if.else135 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.1, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 %a_str_idx.1, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %b_idx.3, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 %a_idx.3, metadata !136, metadata !DIExpression()), !dbg !137
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.then105
  %a_idx.4 = phi i32 [ %dec, %if.then105 ], [ %a_idx.3, %if.end146 ]
  %b_idx.4 = phi i32 [ %dec118, %if.then105 ], [ %b_idx.3, %if.end146 ]
  %a_str_idx.2 = phi i32 [ %inc106, %if.then105 ], [ %a_str_idx.1, %if.end146 ]
  %b_str_idx.2 = phi i32 [ %inc107, %if.then105 ], [ %b_str_idx.1, %if.end146 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.2, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 %a_str_idx.2, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %b_idx.4, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i32 %a_idx.4, metadata !136, metadata !DIExpression()), !dbg !137
  br label %while.cond, !dbg !267, !llvm.loop !320

while.end:                                        ; preds = %lor.end
  br label %pad_a, !dbg !267

pad_a:                                            ; preds = %while.end
  br label %for.cond148, !dbg !323

for.cond148:                                      ; preds = %for.inc153, %pad_a
  %a_str_idx.3 = phi i32 [ %a_str_idx.0, %pad_a ], [ %inc154, %for.inc153 ]
  call void @llvm.dbg.value(metadata i32 %a_str_idx.3, metadata !262, metadata !DIExpression()), !dbg !263
  %cmp149 = icmp slt i32 %a_str_idx.3, 256, !dbg !324
  br i1 %cmp149, label %for.body150, label %for.end155, !dbg !327

for.body150:                                      ; preds = %for.cond148
  %idxprom151 = sext i32 %a_str_idx.3 to i64, !dbg !328
  %arrayidx152 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i64 0, i64 %idxprom151, !dbg !328
  store i32 95, i32* %arrayidx152, align 4, !dbg !330
  br label %for.inc153, !dbg !331

for.inc153:                                       ; preds = %for.body150
  %inc154 = add nsw i32 %a_str_idx.3, 1, !dbg !332
  call void @llvm.dbg.value(metadata i32 %inc154, metadata !262, metadata !DIExpression()), !dbg !263
  br label %for.cond148, !dbg !333, !llvm.loop !334

for.end155:                                       ; preds = %for.cond148
  br label %pad_b, !dbg !335

pad_b:                                            ; preds = %for.end155
  br label %for.cond156, !dbg !337

for.cond156:                                      ; preds = %for.inc161, %pad_b
  %b_str_idx.3 = phi i32 [ %b_str_idx.0, %pad_b ], [ %inc162, %for.inc161 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.3, metadata !264, metadata !DIExpression()), !dbg !265
  %cmp157 = icmp slt i32 %b_str_idx.3, 256, !dbg !338
  br i1 %cmp157, label %for.body158, label %for.end163, !dbg !341

for.body158:                                      ; preds = %for.cond156
  %idxprom159 = sext i32 %b_str_idx.3 to i64, !dbg !342
  %arrayidx160 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i64 0, i64 %idxprom159, !dbg !342
  store i32 95, i32* %arrayidx160, align 4, !dbg !344
  br label %for.inc161, !dbg !345

for.inc161:                                       ; preds = %for.body158
  %inc162 = add nsw i32 %b_str_idx.3, 1, !dbg !346
  call void @llvm.dbg.value(metadata i32 %inc162, metadata !264, metadata !DIExpression()), !dbg !265
  br label %for.cond156, !dbg !347, !llvm.loop !348

for.end163:                                       ; preds = %for.cond156
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i32 0, i32 0, !dbg !351
  call void @stream_write(i32 256, i32* %xalignedA, i32* %arraydecay), !dbg !352
  %arraydecay164 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i32 0, i32 0, !dbg !353
  call void @stream_write(i32 256, i32* %xalignedB, i32* %arraydecay164), !dbg !354
  %arraydecay165 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i32 0, i32 0, !dbg !355
  call void @stream_write(i32 16641, i32* %xM, i32* %arraydecay165), !dbg !356
  %arraydecay166 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i32 0, i32 0, !dbg !357
  call void @stream_write(i32 16641, i32* %xptr, i32* %arraydecay166), !dbg !358
  %20 = bitcast [16641 x i32]* %ptr to i8*, !dbg !359
  call void @llvm.lifetime.end.p0i8(i64 66564, i8* %20) #10, !dbg !359
  %21 = bitcast [16641 x i32]* %M to i8*, !dbg !359
  call void @llvm.lifetime.end.p0i8(i64 66564, i8* %21) #10, !dbg !359
  %22 = bitcast [256 x i32]* %alignedB to i8*, !dbg !359
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %22) #10, !dbg !359
  %23 = bitcast [256 x i32]* %alignedA to i8*, !dbg !359
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %23) #10, !dbg !359
  %24 = bitcast [128 x i32]* %SEQB to i8*, !dbg !359
  call void @llvm.lifetime.end.p0i8(i64 512, i8* %24) #10, !dbg !359
  %25 = bitcast [128 x i32]* %SEQA to i8*, !dbg !359
  call void @llvm.lifetime.end.p0i8(i64 512, i8* %25) #10, !dbg !359
  ret void, !dbg !359
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
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="4096" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8192" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="532512" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/nw/nw_prj/solution/.autopilot/db/nw.pp.0.c", directory: "/workspace/examples/nw")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "stream_write", scope: !8, file: !8, line: 16, type: !9, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "nw.c", directory: "/workspace/examples/nw")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !17, !17}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 15, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/nw")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 42, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/nw")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20}
!20 = !{!"fpga.inline", !"user", !21}
!21 = !DILocation(line: 17, column: 9, scope: !7)
!22 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 16, type: !11)
!23 = !DILocation(line: 16, column: 23, scope: !7)
!24 = !DILocalVariable(name: "array1", arg: 2, scope: !7, file: !8, line: 16, type: !17)
!25 = !DILocation(line: 16, column: 34, scope: !7)
!26 = !DILocalVariable(name: "array2", arg: 3, scope: !7, file: !8, line: 16, type: !17)
!27 = !DILocation(line: 16, column: 47, scope: !7)
!28 = !DILocation(line: 16, column: 55, scope: !7)
!29 = !DILocalVariable(name: "i", scope: !30, file: !8, line: 18, type: !18)
!30 = distinct !DILexicalBlock(scope: !7, file: !8, line: 18, column: 19)
!31 = !DILocation(line: 18, column: 28, scope: !30)
!32 = !DILocation(line: 18, column: 24, scope: !30)
!33 = !DILocation(line: 18, column: 37, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !8, line: 18, column: 19)
!35 = !DILocation(line: 18, column: 19, scope: !30)
!36 = !DILocation(line: 19, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !8, line: 18, column: 50)
!38 = !DILocation(line: 19, column: 5, scope: !37)
!39 = !DILocation(line: 19, column: 15, scope: !37)
!40 = !DILocation(line: 20, column: 3, scope: !37)
!41 = !DILocation(line: 18, column: 46, scope: !34)
!42 = !DILocation(line: 18, column: 19, scope: !34)
!43 = distinct !{!43, !35, !44, !45}
!44 = !DILocation(line: 20, column: 3, scope: !30)
!45 = !{!"llvm.loop.name", !"VITIS_LOOP_18_1"}
!46 = !DILocation(line: 21, column: 1, scope: !7)
!47 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 22, type: !48, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !18, !18, !17, !17, !17, !17, !17, !17}
!50 = !{!51}
!51 = !{!"fpga.top", !"user", !52}
!52 = !DILocation(line: 22, column: 16, scope: !47)
!53 = !DILocalVariable(name: "alen", arg: 1, scope: !47, file: !8, line: 22, type: !18)
!54 = !DILocation(line: 22, column: 60, scope: !47)
!55 = !DILocalVariable(name: "blen", arg: 2, scope: !47, file: !8, line: 22, type: !18)
!56 = !DILocation(line: 22, column: 70, scope: !47)
!57 = !DILocalVariable(name: "xSEQA", arg: 3, scope: !47, file: !8, line: 22, type: !17)
!58 = !DILocation(line: 22, column: 80, scope: !47)
!59 = !DILocalVariable(name: "xSEQB", arg: 4, scope: !47, file: !8, line: 22, type: !17)
!60 = !DILocation(line: 22, column: 96, scope: !47)
!61 = !DILocalVariable(name: "xalignedA", arg: 5, scope: !47, file: !8, line: 23, type: !17)
!62 = !DILocation(line: 23, column: 18, scope: !47)
!63 = !DILocalVariable(name: "xalignedB", arg: 6, scope: !47, file: !8, line: 23, type: !17)
!64 = !DILocation(line: 23, column: 44, scope: !47)
!65 = !DILocalVariable(name: "xM", arg: 7, scope: !47, file: !8, line: 24, type: !17)
!66 = !DILocation(line: 24, column: 18, scope: !47)
!67 = !DILocalVariable(name: "xptr", arg: 8, scope: !47, file: !8, line: 25, type: !17)
!68 = !DILocation(line: 25, column: 18, scope: !47)
!69 = !DILocation(line: 26, column: 9, scope: !47)
!70 = !DILocation(line: 27, column: 9, scope: !47)
!71 = !DILocation(line: 28, column: 9, scope: !47)
!72 = !DILocation(line: 29, column: 9, scope: !47)
!73 = !DILocation(line: 30, column: 9, scope: !47)
!74 = !DILocation(line: 31, column: 9, scope: !47)
!75 = !DILocation(line: 32, column: 9, scope: !47)
!76 = !DILocation(line: 33, column: 9, scope: !47)
!77 = !DILocation(line: 34, column: 9, scope: !47)
!78 = !DILocation(line: 36, column: 2, scope: !47)
!79 = !DILocalVariable(name: "SEQA", scope: !47, file: !8, line: 36, type: !80)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 4096, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 128)
!83 = !DILocation(line: 36, column: 6, scope: !47)
!84 = !DILocation(line: 37, column: 3, scope: !47)
!85 = !DILocalVariable(name: "SEQB", scope: !47, file: !8, line: 37, type: !80)
!86 = !DILocation(line: 37, column: 7, scope: !47)
!87 = !DILocation(line: 38, column: 3, scope: !47)
!88 = !DILocalVariable(name: "alignedA", scope: !47, file: !8, line: 38, type: !89)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 256)
!92 = !DILocation(line: 38, column: 7, scope: !47)
!93 = !DILocation(line: 39, column: 3, scope: !47)
!94 = !DILocalVariable(name: "alignedB", scope: !47, file: !8, line: 39, type: !89)
!95 = !DILocation(line: 39, column: 7, scope: !47)
!96 = !DILocation(line: 40, column: 3, scope: !47)
!97 = !DILocalVariable(name: "M", scope: !47, file: !8, line: 40, type: !98)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 532512, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 16641)
!101 = !DILocation(line: 40, column: 7, scope: !47)
!102 = !DILocation(line: 41, column: 3, scope: !47)
!103 = !DILocalVariable(name: "ptr", scope: !47, file: !8, line: 41, type: !98)
!104 = !DILocation(line: 41, column: 7, scope: !47)
!105 = !DILocalVariable(name: "i", scope: !106, file: !8, line: 43, type: !18)
!106 = distinct !DILexicalBlock(scope: !47, file: !8, line: 43, column: 20)
!107 = !DILocation(line: 43, column: 29, scope: !106)
!108 = !DILocation(line: 43, column: 25, scope: !106)
!109 = !DILocation(line: 43, column: 38, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !8, line: 43, column: 20)
!111 = !DILocation(line: 43, column: 20, scope: !106)
!112 = !DILocation(line: 44, column: 15, scope: !110)
!113 = !DILocation(line: 44, column: 5, scope: !110)
!114 = !DILocation(line: 44, column: 13, scope: !110)
!115 = !DILocation(line: 43, column: 46, scope: !110)
!116 = !DILocation(line: 43, column: 20, scope: !110)
!117 = distinct !{!117, !111, !118, !119}
!118 = !DILocation(line: 44, column: 22, scope: !106)
!119 = !{!"llvm.loop.name", !"VITIS_LOOP_43_1"}
!120 = !DILocalVariable(name: "i", scope: !121, file: !8, line: 45, type: !18)
!121 = distinct !DILexicalBlock(scope: !47, file: !8, line: 45, column: 20)
!122 = !DILocation(line: 45, column: 29, scope: !121)
!123 = !DILocation(line: 45, column: 25, scope: !121)
!124 = !DILocation(line: 45, column: 38, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !8, line: 45, column: 20)
!126 = !DILocation(line: 45, column: 20, scope: !121)
!127 = !DILocation(line: 46, column: 15, scope: !125)
!128 = !DILocation(line: 46, column: 5, scope: !125)
!129 = !DILocation(line: 46, column: 13, scope: !125)
!130 = !DILocation(line: 45, column: 46, scope: !125)
!131 = !DILocation(line: 45, column: 20, scope: !125)
!132 = distinct !{!132, !126, !133, !134}
!133 = !DILocation(line: 46, column: 22, scope: !121)
!134 = !{!"llvm.loop.name", !"VITIS_LOOP_45_2"}
!135 = !DILocation(line: 51, column: 3, scope: !47)
!136 = !DILocalVariable(name: "a_idx", scope: !47, file: !8, line: 50, type: !18)
!137 = !DILocation(line: 50, column: 7, scope: !47)
!138 = !DILocation(line: 54, column: 8, scope: !139)
!139 = distinct !DILexicalBlock(scope: !47, file: !8, line: 54, column: 3)
!140 = !DILocation(line: 54, column: 25, scope: !141)
!141 = distinct !DILexicalBlock(scope: !139, file: !8, line: 54, column: 3)
!142 = !DILocation(line: 54, column: 3, scope: !139)
!143 = !DILocation(line: 55, column: 22, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !8, line: 54, column: 47)
!145 = !DILocation(line: 55, column: 5, scope: !144)
!146 = !DILocation(line: 55, column: 14, scope: !144)
!147 = !DILocation(line: 56, column: 3, scope: !144)
!148 = !DILocation(line: 54, column: 43, scope: !141)
!149 = !DILocation(line: 54, column: 3, scope: !141)
!150 = distinct !{!150, !142, !151, !152}
!151 = !DILocation(line: 56, column: 3, scope: !139)
!152 = !{!"llvm.loop.name", !"init_row"}
!153 = !DILocalVariable(name: "b_idx", scope: !47, file: !8, line: 50, type: !18)
!154 = !DILocation(line: 50, column: 14, scope: !47)
!155 = !DILocation(line: 58, column: 8, scope: !156)
!156 = distinct !DILexicalBlock(scope: !47, file: !8, line: 58, column: 3)
!157 = !DILocation(line: 58, column: 25, scope: !158)
!158 = distinct !DILexicalBlock(scope: !156, file: !8, line: 58, column: 3)
!159 = !DILocation(line: 58, column: 3, scope: !156)
!160 = !DILocation(line: 59, column: 34, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !8, line: 58, column: 47)
!162 = !DILocation(line: 59, column: 13, scope: !161)
!163 = !DILocation(line: 59, column: 5, scope: !161)
!164 = !DILocation(line: 59, column: 26, scope: !161)
!165 = !DILocation(line: 60, column: 3, scope: !161)
!166 = !DILocation(line: 58, column: 43, scope: !158)
!167 = !DILocation(line: 58, column: 3, scope: !158)
!168 = distinct !{!168, !159, !169, !170}
!169 = !DILocation(line: 60, column: 3, scope: !156)
!170 = !{!"llvm.loop.name", !"init_col"}
!171 = !DILocation(line: 64, column: 8, scope: !172)
!172 = distinct !DILexicalBlock(scope: !47, file: !8, line: 64, column: 3)
!173 = !DILocation(line: 64, column: 25, scope: !174)
!174 = distinct !DILexicalBlock(scope: !172, file: !8, line: 64, column: 3)
!175 = !DILocation(line: 64, column: 3, scope: !172)
!176 = !DILocation(line: 64, column: 47, scope: !174)
!177 = !DILocation(line: 66, column: 10, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !8, line: 66, column: 5)
!179 = distinct !DILexicalBlock(scope: !174, file: !8, line: 64, column: 47)
!180 = !DILocation(line: 66, column: 27, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !8, line: 66, column: 5)
!182 = !DILocation(line: 66, column: 5, scope: !178)
!183 = !DILocation(line: 67, column: 22, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !8, line: 67, column: 11)
!185 = distinct !DILexicalBlock(scope: !181, file: !8, line: 66, column: 49)
!186 = !DILocation(line: 67, column: 11, scope: !184)
!187 = !DILocation(line: 67, column: 41, scope: !184)
!188 = !DILocation(line: 67, column: 30, scope: !184)
!189 = !DILocation(line: 67, column: 27, scope: !184)
!190 = !DILocation(line: 67, column: 11, scope: !185)
!191 = !DILocalVariable(name: "score", scope: !47, file: !8, line: 48, type: !18)
!192 = !DILocation(line: 48, column: 7, scope: !47)
!193 = !DILocation(line: 69, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !184, file: !8, line: 67, column: 47)
!195 = !DILocation(line: 73, column: 23, scope: !185)
!196 = !DILocation(line: 73, column: 28, scope: !185)
!197 = !DILocalVariable(name: "row_up", scope: !47, file: !8, line: 49, type: !18)
!198 = !DILocation(line: 49, column: 12, scope: !47)
!199 = !DILocation(line: 74, column: 21, scope: !185)
!200 = !DILocalVariable(name: "row", scope: !47, file: !8, line: 49, type: !18)
!201 = !DILocation(line: 49, column: 7, scope: !47)
!202 = !DILocation(line: 76, column: 35, scope: !185)
!203 = !DILocation(line: 76, column: 26, scope: !185)
!204 = !DILocation(line: 76, column: 17, scope: !185)
!205 = !DILocation(line: 76, column: 41, scope: !185)
!206 = !DILocalVariable(name: "up_left", scope: !47, file: !8, line: 48, type: !18)
!207 = !DILocation(line: 48, column: 14, scope: !47)
!208 = !DILocation(line: 77, column: 21, scope: !185)
!209 = !DILocation(line: 77, column: 12, scope: !185)
!210 = !DILocation(line: 77, column: 32, scope: !185)
!211 = !DILocalVariable(name: "up", scope: !47, file: !8, line: 48, type: !18)
!212 = !DILocation(line: 48, column: 23, scope: !47)
!213 = !DILocation(line: 78, column: 29, scope: !185)
!214 = !DILocation(line: 78, column: 20, scope: !185)
!215 = !DILocation(line: 78, column: 14, scope: !185)
!216 = !DILocation(line: 78, column: 35, scope: !185)
!217 = !DILocalVariable(name: "left", scope: !47, file: !8, line: 48, type: !18)
!218 = !DILocation(line: 48, column: 27, scope: !47)
!219 = !DILocation(line: 80, column: 35, scope: !185)
!220 = !DILocation(line: 80, column: 29, scope: !185)
!221 = !DILocation(line: 80, column: 25, scope: !185)
!222 = !DILocation(line: 80, column: 14, scope: !185)
!223 = !DILocation(line: 80, column: 86, scope: !185)
!224 = !DILocation(line: 80, column: 80, scope: !185)
!225 = !DILocalVariable(name: "max", scope: !47, file: !8, line: 48, type: !18)
!226 = !DILocation(line: 48, column: 33, scope: !47)
!227 = !DILocation(line: 82, column: 13, scope: !185)
!228 = !DILocation(line: 82, column: 7, scope: !185)
!229 = !DILocation(line: 82, column: 22, scope: !185)
!230 = !DILocation(line: 83, column: 15, scope: !231)
!231 = distinct !DILexicalBlock(scope: !185, file: !8, line: 83, column: 11)
!232 = !DILocation(line: 83, column: 11, scope: !185)
!233 = !DILocation(line: 84, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !8, line: 83, column: 24)
!235 = !DILocation(line: 84, column: 9, scope: !234)
!236 = !DILocation(line: 84, column: 26, scope: !234)
!237 = !DILocation(line: 85, column: 7, scope: !234)
!238 = !DILocation(line: 85, column: 22, scope: !239)
!239 = distinct !DILexicalBlock(scope: !231, file: !8, line: 85, column: 18)
!240 = !DILocation(line: 85, column: 18, scope: !231)
!241 = !DILocation(line: 86, column: 17, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !8, line: 85, column: 29)
!243 = !DILocation(line: 86, column: 9, scope: !242)
!244 = !DILocation(line: 86, column: 26, scope: !242)
!245 = !DILocation(line: 87, column: 7, scope: !242)
!246 = !DILocation(line: 88, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !239, file: !8, line: 87, column: 14)
!248 = !DILocation(line: 88, column: 9, scope: !247)
!249 = !DILocation(line: 88, column: 26, scope: !247)
!250 = !DILocation(line: 90, column: 5, scope: !185)
!251 = !DILocation(line: 66, column: 45, scope: !181)
!252 = !DILocation(line: 66, column: 5, scope: !181)
!253 = distinct !{!253, !182, !254, !255}
!254 = !DILocation(line: 90, column: 5, scope: !178)
!255 = !{!"llvm.loop.name", !"fill_in"}
!256 = !DILocation(line: 91, column: 3, scope: !179)
!257 = !DILocation(line: 64, column: 43, scope: !174)
!258 = !DILocation(line: 64, column: 3, scope: !174)
!259 = distinct !{!259, !175, !260, !261}
!260 = !DILocation(line: 91, column: 3, scope: !172)
!261 = !{!"llvm.loop.name", !"fill_out"}
!262 = !DILocalVariable(name: "a_str_idx", scope: !47, file: !8, line: 51, type: !18)
!263 = !DILocation(line: 51, column: 7, scope: !47)
!264 = !DILocalVariable(name: "b_str_idx", scope: !47, file: !8, line: 51, type: !18)
!265 = !DILocation(line: 51, column: 18, scope: !47)
!266 = !DILocation(line: 97, column: 3, scope: !47)
!267 = !DILocation(line: 100, column: 3, scope: !47)
!268 = !DILocation(line: 100, column: 16, scope: !47)
!269 = !DILocation(line: 100, column: 20, scope: !47)
!270 = !DILocation(line: 100, column: 29, scope: !47)
!271 = !DILocation(line: 101, column: 15, scope: !272)
!272 = distinct !DILexicalBlock(scope: !47, file: !8, line: 100, column: 34)
!273 = !DILocalVariable(name: "r", scope: !47, file: !8, line: 49, type: !18)
!274 = !DILocation(line: 49, column: 20, scope: !47)
!275 = !DILocation(line: 102, column: 15, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !8, line: 102, column: 9)
!277 = !DILocation(line: 102, column: 9, scope: !276)
!278 = !DILocation(line: 102, column: 24, scope: !276)
!279 = !DILocation(line: 102, column: 9, scope: !272)
!280 = !DILocation(line: 103, column: 16, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !8, line: 102, column: 33)
!282 = !DILocation(line: 104, column: 16, scope: !281)
!283 = !DILocation(line: 105, column: 40, scope: !281)
!284 = !DILocation(line: 105, column: 29, scope: !281)
!285 = !DILocation(line: 105, column: 7, scope: !281)
!286 = !DILocation(line: 105, column: 27, scope: !281)
!287 = !DILocation(line: 106, column: 40, scope: !281)
!288 = !DILocation(line: 106, column: 29, scope: !281)
!289 = !DILocation(line: 106, column: 7, scope: !281)
!290 = !DILocation(line: 106, column: 27, scope: !281)
!291 = !DILocation(line: 107, column: 12, scope: !281)
!292 = !DILocation(line: 108, column: 12, scope: !281)
!293 = !DILocation(line: 109, column: 5, scope: !281)
!294 = !DILocation(line: 109, column: 22, scope: !295)
!295 = distinct !DILexicalBlock(scope: !276, file: !8, line: 109, column: 16)
!296 = !DILocation(line: 109, column: 16, scope: !295)
!297 = !DILocation(line: 109, column: 31, scope: !295)
!298 = !DILocation(line: 109, column: 16, scope: !276)
!299 = !DILocation(line: 110, column: 16, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !8, line: 109, column: 39)
!301 = !DILocation(line: 111, column: 16, scope: !300)
!302 = !DILocation(line: 112, column: 40, scope: !300)
!303 = !DILocation(line: 112, column: 29, scope: !300)
!304 = !DILocation(line: 112, column: 7, scope: !300)
!305 = !DILocation(line: 112, column: 27, scope: !300)
!306 = !DILocation(line: 113, column: 7, scope: !300)
!307 = !DILocation(line: 113, column: 27, scope: !300)
!308 = !DILocation(line: 114, column: 12, scope: !300)
!309 = !DILocation(line: 115, column: 5, scope: !300)
!310 = !DILocation(line: 116, column: 16, scope: !311)
!311 = distinct !DILexicalBlock(scope: !295, file: !8, line: 115, column: 12)
!312 = !DILocation(line: 117, column: 16, scope: !311)
!313 = !DILocation(line: 118, column: 7, scope: !311)
!314 = !DILocation(line: 118, column: 27, scope: !311)
!315 = !DILocation(line: 119, column: 40, scope: !311)
!316 = !DILocation(line: 119, column: 29, scope: !311)
!317 = !DILocation(line: 119, column: 7, scope: !311)
!318 = !DILocation(line: 119, column: 27, scope: !311)
!319 = !DILocation(line: 120, column: 12, scope: !311)
!320 = distinct !{!320, !267, !321, !322}
!321 = !DILocation(line: 122, column: 3, scope: !47)
!322 = !{!"llvm.loop.name", !"trace"}
!323 = !DILocation(line: 126, column: 3, scope: !47)
!324 = !DILocation(line: 126, column: 20, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !8, line: 126, column: 3)
!326 = distinct !DILexicalBlock(scope: !47, file: !8, line: 126, column: 3)
!327 = !DILocation(line: 126, column: 3, scope: !326)
!328 = !DILocation(line: 127, column: 5, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !8, line: 126, column: 46)
!330 = !DILocation(line: 127, column: 25, scope: !329)
!331 = !DILocation(line: 128, column: 3, scope: !329)
!332 = !DILocation(line: 126, column: 42, scope: !325)
!333 = !DILocation(line: 126, column: 3, scope: !325)
!334 = distinct !{!334, !327, !335, !336}
!335 = !DILocation(line: 128, column: 3, scope: !326)
!336 = !{!"llvm.loop.name", !"pad_a"}
!337 = !DILocation(line: 130, column: 3, scope: !47)
!338 = !DILocation(line: 130, column: 20, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !8, line: 130, column: 3)
!340 = distinct !DILexicalBlock(scope: !47, file: !8, line: 130, column: 3)
!341 = !DILocation(line: 130, column: 3, scope: !340)
!342 = !DILocation(line: 131, column: 5, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !8, line: 130, column: 46)
!344 = !DILocation(line: 131, column: 25, scope: !343)
!345 = !DILocation(line: 132, column: 3, scope: !343)
!346 = !DILocation(line: 130, column: 42, scope: !339)
!347 = !DILocation(line: 130, column: 3, scope: !339)
!348 = distinct !{!348, !341, !349, !350}
!349 = !DILocation(line: 132, column: 3, scope: !340)
!350 = !{!"llvm.loop.name", !"pad_b"}
!351 = !DILocation(line: 141, column: 38, scope: !47)
!352 = !DILocation(line: 141, column: 3, scope: !47)
!353 = !DILocation(line: 142, column: 38, scope: !47)
!354 = !DILocation(line: 142, column: 3, scope: !47)
!355 = !DILocation(line: 143, column: 43, scope: !47)
!356 = !DILocation(line: 143, column: 3, scope: !47)
!357 = !DILocation(line: 144, column: 45, scope: !47)
!358 = !DILocation(line: 144, column: 3, scope: !47)
!359 = !DILocation(line: 145, column: 1, scope: !47)
