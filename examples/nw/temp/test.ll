; ModuleID = '/workspace/examples/nw/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @hls_top(i32 %alen, i32 %blen, i32* "fpga.decayed.dim.hint"="128" %xSEQA, i32* "fpga.decayed.dim.hint"="128" %xSEQB, i32* "fpga.decayed.dim.hint"="256" %xalignedA, i32* "fpga.decayed.dim.hint"="256" %xalignedB, i32* "fpga.decayed.dim.hint"="16641" %xM, i32* "fpga.decayed.dim.hint"="16641" %xptr) #0 !dbg !7 !fpga.function.pragma !13 {
entry:
  %SEQA = alloca [128 x i32], align 4
  %SEQB = alloca [128 x i32], align 4
  %alignedA = alloca [256 x i32], align 4
  %alignedB = alloca [256 x i32], align 4
  %M = alloca [16641 x i32], align 4
  %ptr = alloca [16641 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %alen, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 %blen, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32* %xSEQA, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32* %xSEQB, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32* %xalignedA, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32* %xalignedB, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32* %xM, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i32* %xptr, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xSEQA, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !32
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xSEQB, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !33
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xalignedA, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !34
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xalignedB, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !35
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xM, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !36
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xptr, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !37
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %alen, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !38
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %blen, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !39
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !40
  %0 = bitcast [128 x i32]* %SEQA to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 512, i8* %0) #9, !dbg !41
  call void @llvm.dbg.declare(metadata [128 x i32]* %SEQA, metadata !42, metadata !DIExpression()), !dbg !46
  %1 = bitcast [128 x i32]* %SEQB to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 512, i8* %1) #9, !dbg !47
  call void @llvm.dbg.declare(metadata [128 x i32]* %SEQB, metadata !48, metadata !DIExpression()), !dbg !49
  %2 = bitcast [256 x i32]* %alignedA to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %2) #9, !dbg !50
  call void @llvm.dbg.declare(metadata [256 x i32]* %alignedA, metadata !51, metadata !DIExpression()), !dbg !55
  %3 = bitcast [256 x i32]* %alignedB to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %3) #9, !dbg !56
  call void @llvm.dbg.declare(metadata [256 x i32]* %alignedB, metadata !57, metadata !DIExpression()), !dbg !58
  %4 = bitcast [16641 x i32]* %M to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 66564, i8* %4) #9, !dbg !59
  call void @llvm.dbg.declare(metadata [16641 x i32]* %M, metadata !60, metadata !DIExpression()), !dbg !64
  %5 = bitcast [16641 x i32]* %ptr to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 66564, i8* %5) #9, !dbg !65
  call void @llvm.dbg.declare(metadata [16641 x i32]* %ptr, metadata !66, metadata !DIExpression()), !dbg !67
  br label %VITIS_LOOP_35_1, !dbg !65

VITIS_LOOP_35_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !68, metadata !DIExpression()), !dbg !70
  br label %for.cond, !dbg !71

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_35_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_35_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !68, metadata !DIExpression()), !dbg !70
  %cmp = icmp slt i32 %i.0, 128, !dbg !72
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !74

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !75
  %arrayidx = getelementptr inbounds i32, i32* %xSEQA, i64 %idxprom, !dbg !75
  %6 = load i32, i32* %arrayidx, align 4, !dbg !75
  %idxprom1 = sext i32 %i.0 to i64, !dbg !76
  %arrayidx2 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i64 0, i64 %idxprom1, !dbg !76
  store i32 %6, i32* %arrayidx2, align 4, !dbg !77
  br label %for.inc, !dbg !76

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !78
  call void @llvm.dbg.value(metadata i32 %inc, metadata !68, metadata !DIExpression()), !dbg !70
  br label %for.cond, !dbg !79, !llvm.loop !80

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_37_2, !dbg !81

VITIS_LOOP_37_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !83, metadata !DIExpression()), !dbg !85
  br label %for.cond4, !dbg !86

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_37_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_37_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !83, metadata !DIExpression()), !dbg !85
  %cmp5 = icmp slt i32 %i3.0, 128, !dbg !87
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !89

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end14

for.body7:                                        ; preds = %for.cond4
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !90
  %arrayidx9 = getelementptr inbounds i32, i32* %xSEQB, i64 %idxprom8, !dbg !90
  %7 = load i32, i32* %arrayidx9, align 4, !dbg !90
  %idxprom10 = sext i32 %i3.0 to i64, !dbg !91
  %arrayidx11 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i64 0, i64 %idxprom10, !dbg !91
  store i32 %7, i32* %arrayidx11, align 4, !dbg !92
  br label %for.inc12, !dbg !91

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i3.0, 1, !dbg !93
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !83, metadata !DIExpression()), !dbg !85
  br label %for.cond4, !dbg !94, !llvm.loop !95

for.end14:                                        ; preds = %for.cond.cleanup6
  br label %init_row, !dbg !98

init_row:                                         ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !99, metadata !DIExpression()), !dbg !100
  br label %for.cond15, !dbg !101

for.cond15:                                       ; preds = %for.inc20, %init_row
  %a_idx.0 = phi i32 [ 0, %init_row ], [ %inc21, %for.inc20 ]
  call void @llvm.dbg.value(metadata i32 %a_idx.0, metadata !99, metadata !DIExpression()), !dbg !100
  %cmp16 = icmp slt i32 %a_idx.0, 129, !dbg !103
  br i1 %cmp16, label %for.body17, label %for.end22, !dbg !105

for.body17:                                       ; preds = %for.cond15
  %mul = mul nsw i32 %a_idx.0, -1, !dbg !106
  %idxprom18 = sext i32 %a_idx.0 to i64, !dbg !108
  %arrayidx19 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom18, !dbg !108
  store i32 %mul, i32* %arrayidx19, align 4, !dbg !109
  br label %for.inc20, !dbg !110

for.inc20:                                        ; preds = %for.body17
  %inc21 = add nsw i32 %a_idx.0, 1, !dbg !111
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !99, metadata !DIExpression()), !dbg !100
  br label %for.cond15, !dbg !112, !llvm.loop !113

for.end22:                                        ; preds = %for.cond15
  br label %init_col, !dbg !114

init_col:                                         ; preds = %for.end22
  call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !117
  br label %for.cond23, !dbg !118

for.cond23:                                       ; preds = %for.inc30, %init_col
  %b_idx.0 = phi i32 [ 0, %init_col ], [ %inc31, %for.inc30 ]
  call void @llvm.dbg.value(metadata i32 %b_idx.0, metadata !116, metadata !DIExpression()), !dbg !117
  %cmp24 = icmp slt i32 %b_idx.0, 129, !dbg !120
  br i1 %cmp24, label %for.body25, label %for.end32, !dbg !122

for.body25:                                       ; preds = %for.cond23
  %mul26 = mul nsw i32 %b_idx.0, -1, !dbg !123
  %mul27 = mul nsw i32 %b_idx.0, 129, !dbg !125
  %idxprom28 = sext i32 %mul27 to i64, !dbg !126
  %arrayidx29 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom28, !dbg !126
  store i32 %mul26, i32* %arrayidx29, align 4, !dbg !127
  br label %for.inc30, !dbg !128

for.inc30:                                        ; preds = %for.body25
  %inc31 = add nsw i32 %b_idx.0, 1, !dbg !129
  call void @llvm.dbg.value(metadata i32 %inc31, metadata !116, metadata !DIExpression()), !dbg !117
  br label %for.cond23, !dbg !130, !llvm.loop !131

for.end32:                                        ; preds = %for.cond23
  br label %fill_out, !dbg !132

fill_out:                                         ; preds = %for.end32
  call void @llvm.dbg.value(metadata i32 1, metadata !116, metadata !DIExpression()), !dbg !117
  br label %for.cond33, !dbg !134

for.cond33:                                       ; preds = %for.inc95, %fill_out
  %b_idx.1 = phi i32 [ 1, %fill_out ], [ %inc96, %for.inc95 ]
  call void @llvm.dbg.value(metadata i32 %b_idx.1, metadata !116, metadata !DIExpression()), !dbg !117
  %cmp34 = icmp slt i32 %b_idx.1, 129, !dbg !136
  br i1 %cmp34, label %for.body35, label %for.end97, !dbg !138

for.body35:                                       ; preds = %for.cond33
  br label %fill_in, !dbg !139

fill_in:                                          ; preds = %for.body35
  call void @llvm.dbg.value(metadata i32 1, metadata !99, metadata !DIExpression()), !dbg !100
  br label %for.cond36, !dbg !140

for.cond36:                                       ; preds = %for.inc92, %fill_in
  %a_idx.1 = phi i32 [ 1, %fill_in ], [ %inc93, %for.inc92 ]
  call void @llvm.dbg.value(metadata i32 %a_idx.1, metadata !99, metadata !DIExpression()), !dbg !100
  %cmp37 = icmp slt i32 %a_idx.1, 129, !dbg !143
  br i1 %cmp37, label %for.body38, label %for.end94, !dbg !145

for.body38:                                       ; preds = %for.cond36
  %sub = sub nsw i32 %a_idx.1, 1, !dbg !146
  %idxprom39 = sext i32 %sub to i64, !dbg !149
  %arrayidx40 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i64 0, i64 %idxprom39, !dbg !149
  %8 = load i32, i32* %arrayidx40, align 4, !dbg !149
  %sub41 = sub nsw i32 %b_idx.1, 1, !dbg !150
  %idxprom42 = sext i32 %sub41 to i64, !dbg !151
  %arrayidx43 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i64 0, i64 %idxprom42, !dbg !151
  %9 = load i32, i32* %arrayidx43, align 4, !dbg !151
  %cmp44 = icmp eq i32 %8, %9, !dbg !152
  br i1 %cmp44, label %if.then, label %if.else, !dbg !153

if.then:                                          ; preds = %for.body38
  call void @llvm.dbg.value(metadata i32 1, metadata !154, metadata !DIExpression()), !dbg !155
  br label %if.end, !dbg !156

if.else:                                          ; preds = %for.body38
  call void @llvm.dbg.value(metadata i32 -1, metadata !154, metadata !DIExpression()), !dbg !155
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %score.0 = phi i32 [ 1, %if.then ], [ -1, %if.else ]
  call void @llvm.dbg.value(metadata i32 %score.0, metadata !154, metadata !DIExpression()), !dbg !155
  %sub45 = sub nsw i32 %b_idx.1, 1, !dbg !158
  %mul46 = mul nsw i32 %sub45, 129, !dbg !159
  call void @llvm.dbg.value(metadata i32 %mul46, metadata !160, metadata !DIExpression()), !dbg !161
  %mul47 = mul nsw i32 %b_idx.1, 129, !dbg !162
  call void @llvm.dbg.value(metadata i32 %mul47, metadata !163, metadata !DIExpression()), !dbg !164
  %sub48 = sub nsw i32 %a_idx.1, 1, !dbg !165
  %add = add nsw i32 %mul46, %sub48, !dbg !166
  %idxprom49 = sext i32 %add to i64, !dbg !167
  %arrayidx50 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom49, !dbg !167
  %10 = load i32, i32* %arrayidx50, align 4, !dbg !167
  %add51 = add nsw i32 %10, %score.0, !dbg !168
  call void @llvm.dbg.value(metadata i32 %add51, metadata !169, metadata !DIExpression()), !dbg !170
  %add52 = add nsw i32 %mul46, %a_idx.1, !dbg !171
  %idxprom53 = sext i32 %add52 to i64, !dbg !172
  %arrayidx54 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom53, !dbg !172
  %11 = load i32, i32* %arrayidx54, align 4, !dbg !172
  %add55 = add nsw i32 %11, -1, !dbg !173
  call void @llvm.dbg.value(metadata i32 %add55, metadata !174, metadata !DIExpression()), !dbg !175
  %sub56 = sub nsw i32 %a_idx.1, 1, !dbg !176
  %add57 = add nsw i32 %mul47, %sub56, !dbg !177
  %idxprom58 = sext i32 %add57 to i64, !dbg !178
  %arrayidx59 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom58, !dbg !178
  %12 = load i32, i32* %arrayidx59, align 4, !dbg !178
  %add60 = add nsw i32 %12, -1, !dbg !179
  call void @llvm.dbg.value(metadata i32 %add60, metadata !180, metadata !DIExpression()), !dbg !181
  %cmp61 = icmp sgt i32 %add55, %add60, !dbg !182
  br i1 %cmp61, label %cond.true, label %cond.false, !dbg !183

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !183

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !183

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add55, %cond.true ], [ %add60, %cond.false ], !dbg !183
  %cmp62 = icmp sgt i32 %add51, %cond, !dbg !184
  br i1 %cmp62, label %cond.true63, label %cond.false64, !dbg !185

cond.true63:                                      ; preds = %cond.end
  br label %cond.end70, !dbg !185

cond.false64:                                     ; preds = %cond.end
  %cmp65 = icmp sgt i32 %add55, %add60, !dbg !186
  br i1 %cmp65, label %cond.true66, label %cond.false67, !dbg !187

cond.true66:                                      ; preds = %cond.false64
  br label %cond.end68, !dbg !187

cond.false67:                                     ; preds = %cond.false64
  br label %cond.end68, !dbg !187

cond.end68:                                       ; preds = %cond.false67, %cond.true66
  %cond69 = phi i32 [ %add55, %cond.true66 ], [ %add60, %cond.false67 ], !dbg !187
  br label %cond.end70, !dbg !185

cond.end70:                                       ; preds = %cond.end68, %cond.true63
  %cond71 = phi i32 [ %add51, %cond.true63 ], [ %cond69, %cond.end68 ], !dbg !185
  call void @llvm.dbg.value(metadata i32 %cond71, metadata !188, metadata !DIExpression()), !dbg !189
  %add72 = add nsw i32 %mul47, %a_idx.1, !dbg !190
  %idxprom73 = sext i32 %add72 to i64, !dbg !191
  %arrayidx74 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom73, !dbg !191
  store i32 %cond71, i32* %arrayidx74, align 4, !dbg !192
  %cmp75 = icmp eq i32 %cond71, %add60, !dbg !193
  br i1 %cmp75, label %if.then76, label %if.else80, !dbg !195

if.then76:                                        ; preds = %cond.end70
  %add77 = add nsw i32 %mul47, %a_idx.1, !dbg !196
  %idxprom78 = sext i32 %add77 to i64, !dbg !198
  %arrayidx79 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i64 0, i64 %idxprom78, !dbg !198
  store i32 60, i32* %arrayidx79, align 4, !dbg !199
  br label %if.end91, !dbg !200

if.else80:                                        ; preds = %cond.end70
  %cmp81 = icmp eq i32 %cond71, %add55, !dbg !201
  br i1 %cmp81, label %if.then82, label %if.else86, !dbg !203

if.then82:                                        ; preds = %if.else80
  %add83 = add nsw i32 %mul47, %a_idx.1, !dbg !204
  %idxprom84 = sext i32 %add83 to i64, !dbg !206
  %arrayidx85 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i64 0, i64 %idxprom84, !dbg !206
  store i32 94, i32* %arrayidx85, align 4, !dbg !207
  br label %if.end90, !dbg !208

if.else86:                                        ; preds = %if.else80
  %add87 = add nsw i32 %mul47, %a_idx.1, !dbg !209
  %idxprom88 = sext i32 %add87 to i64, !dbg !211
  %arrayidx89 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i64 0, i64 %idxprom88, !dbg !211
  store i32 92, i32* %arrayidx89, align 4, !dbg !212
  br label %if.end90

if.end90:                                         ; preds = %if.else86, %if.then82
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then76
  br label %for.inc92, !dbg !213

for.inc92:                                        ; preds = %if.end91
  %inc93 = add nsw i32 %a_idx.1, 1, !dbg !214
  call void @llvm.dbg.value(metadata i32 %inc93, metadata !99, metadata !DIExpression()), !dbg !100
  br label %for.cond36, !dbg !215, !llvm.loop !216

for.end94:                                        ; preds = %for.cond36
  br label %for.inc95, !dbg !219

for.inc95:                                        ; preds = %for.end94
  %inc96 = add nsw i32 %b_idx.1, 1, !dbg !220
  call void @llvm.dbg.value(metadata i32 %inc96, metadata !116, metadata !DIExpression()), !dbg !117
  br label %for.cond33, !dbg !221, !llvm.loop !222

for.end97:                                        ; preds = %for.cond33
  call void @llvm.dbg.value(metadata i32 128, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.value(metadata i32 128, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 0, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 0, metadata !227, metadata !DIExpression()), !dbg !228
  br label %trace, !dbg !229

trace:                                            ; preds = %for.end97
  br label %while.cond, !dbg !230

while.cond:                                       ; preds = %if.end147, %trace
  %a_idx.2 = phi i32 [ 128, %trace ], [ %a_idx.4, %if.end147 ]
  %b_idx.2 = phi i32 [ 128, %trace ], [ %b_idx.4, %if.end147 ]
  %a_str_idx.0 = phi i32 [ 0, %trace ], [ %a_str_idx.2, %if.end147 ]
  %b_str_idx.0 = phi i32 [ 0, %trace ], [ %b_str_idx.2, %if.end147 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.0, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 %a_str_idx.0, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %b_idx.2, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 %a_idx.2, metadata !99, metadata !DIExpression()), !dbg !100
  %cmp98 = icmp sgt i32 %a_idx.2, 0, !dbg !231
  br i1 %cmp98, label %lor.end, label %lor.rhs, !dbg !232

lor.rhs:                                          ; preds = %while.cond
  %cmp99 = icmp sgt i32 %b_idx.2, 0, !dbg !233
  br label %lor.end, !dbg !232

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %13 = phi i1 [ true, %while.cond ], [ %cmp99, %lor.rhs ]
  br i1 %13, label %while.body, label %while.end, !dbg !230

while.body:                                       ; preds = %lor.end
  %mul100 = mul nsw i32 %b_idx.2, 129, !dbg !234
  call void @llvm.dbg.value(metadata i32 %mul100, metadata !236, metadata !DIExpression()), !dbg !237
  %add101 = add nsw i32 %mul100, %a_idx.2, !dbg !238
  %idxprom102 = sext i32 %add101 to i64, !dbg !240
  %arrayidx103 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i64 0, i64 %idxprom102, !dbg !240
  %14 = load i32, i32* %arrayidx103, align 4, !dbg !240
  %cmp104 = icmp eq i32 %14, 92, !dbg !241
  br i1 %cmp104, label %if.then105, label %if.else119, !dbg !242

if.then105:                                       ; preds = %while.body
  %inc106 = add nsw i32 %a_str_idx.0, 1, !dbg !243
  call void @llvm.dbg.value(metadata i32 %inc106, metadata !225, metadata !DIExpression()), !dbg !226
  %inc107 = add nsw i32 %b_str_idx.0, 1, !dbg !245
  call void @llvm.dbg.value(metadata i32 %inc107, metadata !227, metadata !DIExpression()), !dbg !228
  %sub108 = sub nsw i32 %a_idx.2, 1, !dbg !246
  %idxprom109 = sext i32 %sub108 to i64, !dbg !247
  %arrayidx110 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i64 0, i64 %idxprom109, !dbg !247
  %15 = load i32, i32* %arrayidx110, align 4, !dbg !247
  %idxprom111 = sext i32 %inc106 to i64, !dbg !248
  %arrayidx112 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i64 0, i64 %idxprom111, !dbg !248
  store i32 %15, i32* %arrayidx112, align 4, !dbg !249
  %sub113 = sub nsw i32 %b_idx.2, 1, !dbg !250
  %idxprom114 = sext i32 %sub113 to i64, !dbg !251
  %arrayidx115 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i64 0, i64 %idxprom114, !dbg !251
  %16 = load i32, i32* %arrayidx115, align 4, !dbg !251
  %idxprom116 = sext i32 %inc107 to i64, !dbg !252
  %arrayidx117 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i64 0, i64 %idxprom116, !dbg !252
  store i32 %16, i32* %arrayidx117, align 4, !dbg !253
  %dec = add nsw i32 %a_idx.2, -1, !dbg !254
  call void @llvm.dbg.value(metadata i32 %dec, metadata !99, metadata !DIExpression()), !dbg !100
  %dec118 = add nsw i32 %b_idx.2, -1, !dbg !255
  call void @llvm.dbg.value(metadata i32 %dec118, metadata !116, metadata !DIExpression()), !dbg !117
  br label %if.end147, !dbg !256

if.else119:                                       ; preds = %while.body
  %add120 = add nsw i32 %mul100, %a_idx.2, !dbg !257
  %idxprom121 = sext i32 %add120 to i64, !dbg !259
  %arrayidx122 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i64 0, i64 %idxprom121, !dbg !259
  %17 = load i32, i32* %arrayidx122, align 4, !dbg !259
  %cmp123 = icmp eq i32 %17, 60, !dbg !260
  br i1 %cmp123, label %if.then124, label %if.else135, !dbg !261

if.then124:                                       ; preds = %if.else119
  %inc125 = add nsw i32 %a_str_idx.0, 1, !dbg !262
  call void @llvm.dbg.value(metadata i32 %inc125, metadata !225, metadata !DIExpression()), !dbg !226
  %inc126 = add nsw i32 %b_str_idx.0, 1, !dbg !264
  call void @llvm.dbg.value(metadata i32 %inc126, metadata !227, metadata !DIExpression()), !dbg !228
  %sub127 = sub nsw i32 %a_idx.2, 1, !dbg !265
  %idxprom128 = sext i32 %sub127 to i64, !dbg !266
  %arrayidx129 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQA, i64 0, i64 %idxprom128, !dbg !266
  %18 = load i32, i32* %arrayidx129, align 4, !dbg !266
  %idxprom130 = sext i32 %inc125 to i64, !dbg !267
  %arrayidx131 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i64 0, i64 %idxprom130, !dbg !267
  store i32 %18, i32* %arrayidx131, align 4, !dbg !268
  %idxprom132 = sext i32 %inc126 to i64, !dbg !269
  %arrayidx133 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i64 0, i64 %idxprom132, !dbg !269
  store i32 45, i32* %arrayidx133, align 4, !dbg !270
  %dec134 = add nsw i32 %a_idx.2, -1, !dbg !271
  call void @llvm.dbg.value(metadata i32 %dec134, metadata !99, metadata !DIExpression()), !dbg !100
  br label %if.end146, !dbg !272

if.else135:                                       ; preds = %if.else119
  %inc136 = add nsw i32 %a_str_idx.0, 1, !dbg !273
  call void @llvm.dbg.value(metadata i32 %inc136, metadata !225, metadata !DIExpression()), !dbg !226
  %inc137 = add nsw i32 %b_str_idx.0, 1, !dbg !275
  call void @llvm.dbg.value(metadata i32 %inc137, metadata !227, metadata !DIExpression()), !dbg !228
  %idxprom138 = sext i32 %inc136 to i64, !dbg !276
  %arrayidx139 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i64 0, i64 %idxprom138, !dbg !276
  store i32 45, i32* %arrayidx139, align 4, !dbg !277
  %sub140 = sub nsw i32 %b_idx.2, 1, !dbg !278
  %idxprom141 = sext i32 %sub140 to i64, !dbg !279
  %arrayidx142 = getelementptr inbounds [128 x i32], [128 x i32]* %SEQB, i64 0, i64 %idxprom141, !dbg !279
  %19 = load i32, i32* %arrayidx142, align 4, !dbg !279
  %idxprom143 = sext i32 %inc137 to i64, !dbg !280
  %arrayidx144 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i64 0, i64 %idxprom143, !dbg !280
  store i32 %19, i32* %arrayidx144, align 4, !dbg !281
  %dec145 = add nsw i32 %b_idx.2, -1, !dbg !282
  call void @llvm.dbg.value(metadata i32 %dec145, metadata !116, metadata !DIExpression()), !dbg !117
  br label %if.end146

if.end146:                                        ; preds = %if.else135, %if.then124
  %a_idx.3 = phi i32 [ %dec134, %if.then124 ], [ %a_idx.2, %if.else135 ]
  %b_idx.3 = phi i32 [ %b_idx.2, %if.then124 ], [ %dec145, %if.else135 ]
  %a_str_idx.1 = phi i32 [ %inc125, %if.then124 ], [ %inc136, %if.else135 ]
  %b_str_idx.1 = phi i32 [ %inc126, %if.then124 ], [ %inc137, %if.else135 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.1, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 %a_str_idx.1, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %b_idx.3, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 %a_idx.3, metadata !99, metadata !DIExpression()), !dbg !100
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.then105
  %a_idx.4 = phi i32 [ %dec, %if.then105 ], [ %a_idx.3, %if.end146 ]
  %b_idx.4 = phi i32 [ %dec118, %if.then105 ], [ %b_idx.3, %if.end146 ]
  %a_str_idx.2 = phi i32 [ %inc106, %if.then105 ], [ %a_str_idx.1, %if.end146 ]
  %b_str_idx.2 = phi i32 [ %inc107, %if.then105 ], [ %b_str_idx.1, %if.end146 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.2, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 %a_str_idx.2, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 %b_idx.4, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 %a_idx.4, metadata !99, metadata !DIExpression()), !dbg !100
  br label %while.cond, !dbg !230, !llvm.loop !283

while.end:                                        ; preds = %lor.end
  br label %pad_a, !dbg !230

pad_a:                                            ; preds = %while.end
  br label %for.cond148, !dbg !286

for.cond148:                                      ; preds = %for.inc153, %pad_a
  %a_str_idx.3 = phi i32 [ %a_str_idx.0, %pad_a ], [ %inc154, %for.inc153 ]
  call void @llvm.dbg.value(metadata i32 %a_str_idx.3, metadata !225, metadata !DIExpression()), !dbg !226
  %cmp149 = icmp slt i32 %a_str_idx.3, 256, !dbg !287
  br i1 %cmp149, label %for.body150, label %for.end155, !dbg !290

for.body150:                                      ; preds = %for.cond148
  %idxprom151 = sext i32 %a_str_idx.3 to i64, !dbg !291
  %arrayidx152 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i64 0, i64 %idxprom151, !dbg !291
  store i32 95, i32* %arrayidx152, align 4, !dbg !293
  br label %for.inc153, !dbg !294

for.inc153:                                       ; preds = %for.body150
  %inc154 = add nsw i32 %a_str_idx.3, 1, !dbg !295
  call void @llvm.dbg.value(metadata i32 %inc154, metadata !225, metadata !DIExpression()), !dbg !226
  br label %for.cond148, !dbg !296, !llvm.loop !297

for.end155:                                       ; preds = %for.cond148
  br label %pad_b, !dbg !298

pad_b:                                            ; preds = %for.end155
  br label %for.cond156, !dbg !300

for.cond156:                                      ; preds = %for.inc161, %pad_b
  %b_str_idx.3 = phi i32 [ %b_str_idx.0, %pad_b ], [ %inc162, %for.inc161 ]
  call void @llvm.dbg.value(metadata i32 %b_str_idx.3, metadata !227, metadata !DIExpression()), !dbg !228
  %cmp157 = icmp slt i32 %b_str_idx.3, 256, !dbg !301
  br i1 %cmp157, label %for.body158, label %for.end163, !dbg !304

for.body158:                                      ; preds = %for.cond156
  %idxprom159 = sext i32 %b_str_idx.3 to i64, !dbg !305
  %arrayidx160 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i64 0, i64 %idxprom159, !dbg !305
  store i32 95, i32* %arrayidx160, align 4, !dbg !307
  br label %for.inc161, !dbg !308

for.inc161:                                       ; preds = %for.body158
  %inc162 = add nsw i32 %b_str_idx.3, 1, !dbg !309
  call void @llvm.dbg.value(metadata i32 %inc162, metadata !227, metadata !DIExpression()), !dbg !228
  br label %for.cond156, !dbg !310, !llvm.loop !311

for.end163:                                       ; preds = %for.cond156
  br label %VITIS_LOOP_126_3, !dbg !312

VITIS_LOOP_126_3:                                 ; preds = %for.end163
  call void @llvm.dbg.value(metadata i32 0, metadata !314, metadata !DIExpression()), !dbg !316
  br label %for.cond165, !dbg !317

for.cond165:                                      ; preds = %for.inc177, %VITIS_LOOP_126_3
  %i164.0 = phi i32 [ 0, %VITIS_LOOP_126_3 ], [ %inc178, %for.inc177 ]
  call void @llvm.dbg.value(metadata i32 %i164.0, metadata !314, metadata !DIExpression()), !dbg !316
  %cmp166 = icmp slt i32 %i164.0, 256, !dbg !318
  br i1 %cmp166, label %for.body168, label %for.cond.cleanup167, !dbg !320

for.cond.cleanup167:                              ; preds = %for.cond165
  br label %for.end179

for.body168:                                      ; preds = %for.cond165
  %idxprom169 = sext i32 %i164.0 to i64, !dbg !321
  %arrayidx170 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedA, i64 0, i64 %idxprom169, !dbg !321
  %20 = load i32, i32* %arrayidx170, align 4, !dbg !321
  %idxprom171 = sext i32 %i164.0 to i64, !dbg !323
  %arrayidx172 = getelementptr inbounds i32, i32* %xalignedA, i64 %idxprom171, !dbg !323
  store i32 %20, i32* %arrayidx172, align 4, !dbg !324
  %idxprom173 = sext i32 %i164.0 to i64, !dbg !325
  %arrayidx174 = getelementptr inbounds [256 x i32], [256 x i32]* %alignedB, i64 0, i64 %idxprom173, !dbg !325
  %21 = load i32, i32* %arrayidx174, align 4, !dbg !325
  %idxprom175 = sext i32 %i164.0 to i64, !dbg !326
  %arrayidx176 = getelementptr inbounds i32, i32* %xalignedB, i64 %idxprom175, !dbg !326
  store i32 %21, i32* %arrayidx176, align 4, !dbg !327
  br label %for.inc177, !dbg !328

for.inc177:                                       ; preds = %for.body168
  %inc178 = add nsw i32 %i164.0, 1, !dbg !329
  call void @llvm.dbg.value(metadata i32 %inc178, metadata !314, metadata !DIExpression()), !dbg !316
  br label %for.cond165, !dbg !330, !llvm.loop !331

for.end179:                                       ; preds = %for.cond.cleanup167
  br label %VITIS_LOOP_130_4, !dbg !332

VITIS_LOOP_130_4:                                 ; preds = %for.end179
  call void @llvm.dbg.value(metadata i32 0, metadata !334, metadata !DIExpression()), !dbg !336
  br label %for.cond181, !dbg !337

for.cond181:                                      ; preds = %for.inc193, %VITIS_LOOP_130_4
  %i180.0 = phi i32 [ 0, %VITIS_LOOP_130_4 ], [ %inc194, %for.inc193 ]
  call void @llvm.dbg.value(metadata i32 %i180.0, metadata !334, metadata !DIExpression()), !dbg !336
  %cmp182 = icmp slt i32 %i180.0, 16641, !dbg !338
  br i1 %cmp182, label %for.body184, label %for.cond.cleanup183, !dbg !340

for.cond.cleanup183:                              ; preds = %for.cond181
  br label %for.end195

for.body184:                                      ; preds = %for.cond181
  %idxprom185 = sext i32 %i180.0 to i64, !dbg !341
  %arrayidx186 = getelementptr inbounds [16641 x i32], [16641 x i32]* %M, i64 0, i64 %idxprom185, !dbg !341
  %22 = load i32, i32* %arrayidx186, align 4, !dbg !341
  %idxprom187 = sext i32 %i180.0 to i64, !dbg !343
  %arrayidx188 = getelementptr inbounds i32, i32* %xM, i64 %idxprom187, !dbg !343
  store i32 %22, i32* %arrayidx188, align 4, !dbg !344
  %idxprom189 = sext i32 %i180.0 to i64, !dbg !345
  %arrayidx190 = getelementptr inbounds [16641 x i32], [16641 x i32]* %ptr, i64 0, i64 %idxprom189, !dbg !345
  %23 = load i32, i32* %arrayidx190, align 4, !dbg !345
  %idxprom191 = sext i32 %i180.0 to i64, !dbg !346
  %arrayidx192 = getelementptr inbounds i32, i32* %xptr, i64 %idxprom191, !dbg !346
  store i32 %23, i32* %arrayidx192, align 4, !dbg !347
  br label %for.inc193, !dbg !348

for.inc193:                                       ; preds = %for.body184
  %inc194 = add nsw i32 %i180.0, 1, !dbg !349
  call void @llvm.dbg.value(metadata i32 %inc194, metadata !334, metadata !DIExpression()), !dbg !336
  br label %for.cond181, !dbg !350, !llvm.loop !351

for.end195:                                       ; preds = %for.cond.cleanup183
  %24 = bitcast [16641 x i32]* %ptr to i8*, !dbg !354
  call void @llvm.lifetime.end.p0i8(i64 66564, i8* %24) #9, !dbg !354
  %25 = bitcast [16641 x i32]* %M to i8*, !dbg !354
  call void @llvm.lifetime.end.p0i8(i64 66564, i8* %25) #9, !dbg !354
  %26 = bitcast [256 x i32]* %alignedB to i8*, !dbg !354
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %26) #9, !dbg !354
  %27 = bitcast [256 x i32]* %alignedA to i8*, !dbg !354
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %27) #9, !dbg !354
  %28 = bitcast [128 x i32]* %SEQB to i8*, !dbg !354
  call void @llvm.lifetime.end.p0i8(i64 512, i8* %28) #9, !dbg !354
  %29 = bitcast [128 x i32]* %SEQA to i8*, !dbg !354
  call void @llvm.lifetime.end.p0i8(i64 512, i8* %29) #9, !dbg !354
  ret void, !dbg !354
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
attributes #4 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="4096" "xlx.source"="user" }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8192" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="532512" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #9 = { nounwind }

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
!7 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 14, type: !9, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "nw.c", directory: "/workspace/examples/nw")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !11, !12, !12, !12, !12, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 14, column: 16, scope: !7)
!16 = !DILocalVariable(name: "alen", arg: 1, scope: !7, file: !8, line: 14, type: !11)
!17 = !DILocation(line: 14, column: 60, scope: !7)
!18 = !DILocalVariable(name: "blen", arg: 2, scope: !7, file: !8, line: 14, type: !11)
!19 = !DILocation(line: 14, column: 70, scope: !7)
!20 = !DILocalVariable(name: "xSEQA", arg: 3, scope: !7, file: !8, line: 14, type: !12)
!21 = !DILocation(line: 14, column: 80, scope: !7)
!22 = !DILocalVariable(name: "xSEQB", arg: 4, scope: !7, file: !8, line: 14, type: !12)
!23 = !DILocation(line: 14, column: 96, scope: !7)
!24 = !DILocalVariable(name: "xalignedA", arg: 5, scope: !7, file: !8, line: 15, type: !12)
!25 = !DILocation(line: 15, column: 18, scope: !7)
!26 = !DILocalVariable(name: "xalignedB", arg: 6, scope: !7, file: !8, line: 15, type: !12)
!27 = !DILocation(line: 15, column: 44, scope: !7)
!28 = !DILocalVariable(name: "xM", arg: 7, scope: !7, file: !8, line: 16, type: !12)
!29 = !DILocation(line: 16, column: 18, scope: !7)
!30 = !DILocalVariable(name: "xptr", arg: 8, scope: !7, file: !8, line: 17, type: !12)
!31 = !DILocation(line: 17, column: 18, scope: !7)
!32 = !DILocation(line: 18, column: 9, scope: !7)
!33 = !DILocation(line: 19, column: 9, scope: !7)
!34 = !DILocation(line: 20, column: 9, scope: !7)
!35 = !DILocation(line: 21, column: 9, scope: !7)
!36 = !DILocation(line: 22, column: 9, scope: !7)
!37 = !DILocation(line: 23, column: 9, scope: !7)
!38 = !DILocation(line: 24, column: 9, scope: !7)
!39 = !DILocation(line: 25, column: 9, scope: !7)
!40 = !DILocation(line: 26, column: 9, scope: !7)
!41 = !DILocation(line: 28, column: 2, scope: !7)
!42 = !DILocalVariable(name: "SEQA", scope: !7, file: !8, line: 28, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 4096, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 128)
!46 = !DILocation(line: 28, column: 6, scope: !7)
!47 = !DILocation(line: 29, column: 3, scope: !7)
!48 = !DILocalVariable(name: "SEQB", scope: !7, file: !8, line: 29, type: !43)
!49 = !DILocation(line: 29, column: 7, scope: !7)
!50 = !DILocation(line: 30, column: 3, scope: !7)
!51 = !DILocalVariable(name: "alignedA", scope: !7, file: !8, line: 30, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 256)
!55 = !DILocation(line: 30, column: 7, scope: !7)
!56 = !DILocation(line: 31, column: 3, scope: !7)
!57 = !DILocalVariable(name: "alignedB", scope: !7, file: !8, line: 31, type: !52)
!58 = !DILocation(line: 31, column: 7, scope: !7)
!59 = !DILocation(line: 32, column: 3, scope: !7)
!60 = !DILocalVariable(name: "M", scope: !7, file: !8, line: 32, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 532512, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 16641)
!64 = !DILocation(line: 32, column: 7, scope: !7)
!65 = !DILocation(line: 33, column: 3, scope: !7)
!66 = !DILocalVariable(name: "ptr", scope: !7, file: !8, line: 33, type: !61)
!67 = !DILocation(line: 33, column: 7, scope: !7)
!68 = !DILocalVariable(name: "i", scope: !69, file: !8, line: 35, type: !11)
!69 = distinct !DILexicalBlock(scope: !7, file: !8, line: 35, column: 20)
!70 = !DILocation(line: 35, column: 29, scope: !69)
!71 = !DILocation(line: 35, column: 25, scope: !69)
!72 = !DILocation(line: 35, column: 38, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !8, line: 35, column: 20)
!74 = !DILocation(line: 35, column: 20, scope: !69)
!75 = !DILocation(line: 36, column: 15, scope: !73)
!76 = !DILocation(line: 36, column: 5, scope: !73)
!77 = !DILocation(line: 36, column: 13, scope: !73)
!78 = !DILocation(line: 35, column: 46, scope: !73)
!79 = !DILocation(line: 35, column: 20, scope: !73)
!80 = distinct !{!80, !74, !81, !82}
!81 = !DILocation(line: 36, column: 22, scope: !69)
!82 = !{!"llvm.loop.name", !"VITIS_LOOP_35_1"}
!83 = !DILocalVariable(name: "i", scope: !84, file: !8, line: 37, type: !11)
!84 = distinct !DILexicalBlock(scope: !7, file: !8, line: 37, column: 20)
!85 = !DILocation(line: 37, column: 29, scope: !84)
!86 = !DILocation(line: 37, column: 25, scope: !84)
!87 = !DILocation(line: 37, column: 38, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !8, line: 37, column: 20)
!89 = !DILocation(line: 37, column: 20, scope: !84)
!90 = !DILocation(line: 38, column: 15, scope: !88)
!91 = !DILocation(line: 38, column: 5, scope: !88)
!92 = !DILocation(line: 38, column: 13, scope: !88)
!93 = !DILocation(line: 37, column: 46, scope: !88)
!94 = !DILocation(line: 37, column: 20, scope: !88)
!95 = distinct !{!95, !89, !96, !97}
!96 = !DILocation(line: 38, column: 22, scope: !84)
!97 = !{!"llvm.loop.name", !"VITIS_LOOP_37_2"}
!98 = !DILocation(line: 43, column: 3, scope: !7)
!99 = !DILocalVariable(name: "a_idx", scope: !7, file: !8, line: 42, type: !11)
!100 = !DILocation(line: 42, column: 7, scope: !7)
!101 = !DILocation(line: 46, column: 8, scope: !102)
!102 = distinct !DILexicalBlock(scope: !7, file: !8, line: 46, column: 3)
!103 = !DILocation(line: 46, column: 25, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !8, line: 46, column: 3)
!105 = !DILocation(line: 46, column: 3, scope: !102)
!106 = !DILocation(line: 47, column: 22, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !8, line: 46, column: 47)
!108 = !DILocation(line: 47, column: 5, scope: !107)
!109 = !DILocation(line: 47, column: 14, scope: !107)
!110 = !DILocation(line: 48, column: 3, scope: !107)
!111 = !DILocation(line: 46, column: 43, scope: !104)
!112 = !DILocation(line: 46, column: 3, scope: !104)
!113 = distinct !{!113, !105, !114, !115}
!114 = !DILocation(line: 48, column: 3, scope: !102)
!115 = !{!"llvm.loop.name", !"init_row"}
!116 = !DILocalVariable(name: "b_idx", scope: !7, file: !8, line: 42, type: !11)
!117 = !DILocation(line: 42, column: 14, scope: !7)
!118 = !DILocation(line: 50, column: 8, scope: !119)
!119 = distinct !DILexicalBlock(scope: !7, file: !8, line: 50, column: 3)
!120 = !DILocation(line: 50, column: 25, scope: !121)
!121 = distinct !DILexicalBlock(scope: !119, file: !8, line: 50, column: 3)
!122 = !DILocation(line: 50, column: 3, scope: !119)
!123 = !DILocation(line: 51, column: 34, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !8, line: 50, column: 47)
!125 = !DILocation(line: 51, column: 13, scope: !124)
!126 = !DILocation(line: 51, column: 5, scope: !124)
!127 = !DILocation(line: 51, column: 26, scope: !124)
!128 = !DILocation(line: 52, column: 3, scope: !124)
!129 = !DILocation(line: 50, column: 43, scope: !121)
!130 = !DILocation(line: 50, column: 3, scope: !121)
!131 = distinct !{!131, !122, !132, !133}
!132 = !DILocation(line: 52, column: 3, scope: !119)
!133 = !{!"llvm.loop.name", !"init_col"}
!134 = !DILocation(line: 56, column: 8, scope: !135)
!135 = distinct !DILexicalBlock(scope: !7, file: !8, line: 56, column: 3)
!136 = !DILocation(line: 56, column: 25, scope: !137)
!137 = distinct !DILexicalBlock(scope: !135, file: !8, line: 56, column: 3)
!138 = !DILocation(line: 56, column: 3, scope: !135)
!139 = !DILocation(line: 56, column: 47, scope: !137)
!140 = !DILocation(line: 58, column: 10, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !8, line: 58, column: 5)
!142 = distinct !DILexicalBlock(scope: !137, file: !8, line: 56, column: 47)
!143 = !DILocation(line: 58, column: 27, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !8, line: 58, column: 5)
!145 = !DILocation(line: 58, column: 5, scope: !141)
!146 = !DILocation(line: 59, column: 22, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !8, line: 59, column: 11)
!148 = distinct !DILexicalBlock(scope: !144, file: !8, line: 58, column: 49)
!149 = !DILocation(line: 59, column: 11, scope: !147)
!150 = !DILocation(line: 59, column: 41, scope: !147)
!151 = !DILocation(line: 59, column: 30, scope: !147)
!152 = !DILocation(line: 59, column: 27, scope: !147)
!153 = !DILocation(line: 59, column: 11, scope: !148)
!154 = !DILocalVariable(name: "score", scope: !7, file: !8, line: 40, type: !11)
!155 = !DILocation(line: 40, column: 7, scope: !7)
!156 = !DILocation(line: 61, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !147, file: !8, line: 59, column: 47)
!158 = !DILocation(line: 65, column: 23, scope: !148)
!159 = !DILocation(line: 65, column: 28, scope: !148)
!160 = !DILocalVariable(name: "row_up", scope: !7, file: !8, line: 41, type: !11)
!161 = !DILocation(line: 41, column: 12, scope: !7)
!162 = !DILocation(line: 66, column: 21, scope: !148)
!163 = !DILocalVariable(name: "row", scope: !7, file: !8, line: 41, type: !11)
!164 = !DILocation(line: 41, column: 7, scope: !7)
!165 = !DILocation(line: 68, column: 35, scope: !148)
!166 = !DILocation(line: 68, column: 26, scope: !148)
!167 = !DILocation(line: 68, column: 17, scope: !148)
!168 = !DILocation(line: 68, column: 41, scope: !148)
!169 = !DILocalVariable(name: "up_left", scope: !7, file: !8, line: 40, type: !11)
!170 = !DILocation(line: 40, column: 14, scope: !7)
!171 = !DILocation(line: 69, column: 21, scope: !148)
!172 = !DILocation(line: 69, column: 12, scope: !148)
!173 = !DILocation(line: 69, column: 32, scope: !148)
!174 = !DILocalVariable(name: "up", scope: !7, file: !8, line: 40, type: !11)
!175 = !DILocation(line: 40, column: 23, scope: !7)
!176 = !DILocation(line: 70, column: 29, scope: !148)
!177 = !DILocation(line: 70, column: 20, scope: !148)
!178 = !DILocation(line: 70, column: 14, scope: !148)
!179 = !DILocation(line: 70, column: 35, scope: !148)
!180 = !DILocalVariable(name: "left", scope: !7, file: !8, line: 40, type: !11)
!181 = !DILocation(line: 40, column: 27, scope: !7)
!182 = !DILocation(line: 72, column: 35, scope: !148)
!183 = !DILocation(line: 72, column: 29, scope: !148)
!184 = !DILocation(line: 72, column: 25, scope: !148)
!185 = !DILocation(line: 72, column: 14, scope: !148)
!186 = !DILocation(line: 72, column: 86, scope: !148)
!187 = !DILocation(line: 72, column: 80, scope: !148)
!188 = !DILocalVariable(name: "max", scope: !7, file: !8, line: 40, type: !11)
!189 = !DILocation(line: 40, column: 33, scope: !7)
!190 = !DILocation(line: 74, column: 13, scope: !148)
!191 = !DILocation(line: 74, column: 7, scope: !148)
!192 = !DILocation(line: 74, column: 22, scope: !148)
!193 = !DILocation(line: 75, column: 15, scope: !194)
!194 = distinct !DILexicalBlock(scope: !148, file: !8, line: 75, column: 11)
!195 = !DILocation(line: 75, column: 11, scope: !148)
!196 = !DILocation(line: 76, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !8, line: 75, column: 24)
!198 = !DILocation(line: 76, column: 9, scope: !197)
!199 = !DILocation(line: 76, column: 26, scope: !197)
!200 = !DILocation(line: 77, column: 7, scope: !197)
!201 = !DILocation(line: 77, column: 22, scope: !202)
!202 = distinct !DILexicalBlock(scope: !194, file: !8, line: 77, column: 18)
!203 = !DILocation(line: 77, column: 18, scope: !194)
!204 = !DILocation(line: 78, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !8, line: 77, column: 29)
!206 = !DILocation(line: 78, column: 9, scope: !205)
!207 = !DILocation(line: 78, column: 26, scope: !205)
!208 = !DILocation(line: 79, column: 7, scope: !205)
!209 = !DILocation(line: 80, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !8, line: 79, column: 14)
!211 = !DILocation(line: 80, column: 9, scope: !210)
!212 = !DILocation(line: 80, column: 26, scope: !210)
!213 = !DILocation(line: 82, column: 5, scope: !148)
!214 = !DILocation(line: 58, column: 45, scope: !144)
!215 = !DILocation(line: 58, column: 5, scope: !144)
!216 = distinct !{!216, !145, !217, !218}
!217 = !DILocation(line: 82, column: 5, scope: !141)
!218 = !{!"llvm.loop.name", !"fill_in"}
!219 = !DILocation(line: 83, column: 3, scope: !142)
!220 = !DILocation(line: 56, column: 43, scope: !137)
!221 = !DILocation(line: 56, column: 3, scope: !137)
!222 = distinct !{!222, !138, !223, !224}
!223 = !DILocation(line: 83, column: 3, scope: !135)
!224 = !{!"llvm.loop.name", !"fill_out"}
!225 = !DILocalVariable(name: "a_str_idx", scope: !7, file: !8, line: 43, type: !11)
!226 = !DILocation(line: 43, column: 7, scope: !7)
!227 = !DILocalVariable(name: "b_str_idx", scope: !7, file: !8, line: 43, type: !11)
!228 = !DILocation(line: 43, column: 18, scope: !7)
!229 = !DILocation(line: 89, column: 3, scope: !7)
!230 = !DILocation(line: 92, column: 3, scope: !7)
!231 = !DILocation(line: 92, column: 16, scope: !7)
!232 = !DILocation(line: 92, column: 20, scope: !7)
!233 = !DILocation(line: 92, column: 29, scope: !7)
!234 = !DILocation(line: 93, column: 15, scope: !235)
!235 = distinct !DILexicalBlock(scope: !7, file: !8, line: 92, column: 34)
!236 = !DILocalVariable(name: "r", scope: !7, file: !8, line: 41, type: !11)
!237 = !DILocation(line: 41, column: 20, scope: !7)
!238 = !DILocation(line: 94, column: 15, scope: !239)
!239 = distinct !DILexicalBlock(scope: !235, file: !8, line: 94, column: 9)
!240 = !DILocation(line: 94, column: 9, scope: !239)
!241 = !DILocation(line: 94, column: 24, scope: !239)
!242 = !DILocation(line: 94, column: 9, scope: !235)
!243 = !DILocation(line: 95, column: 16, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !8, line: 94, column: 33)
!245 = !DILocation(line: 96, column: 16, scope: !244)
!246 = !DILocation(line: 97, column: 40, scope: !244)
!247 = !DILocation(line: 97, column: 29, scope: !244)
!248 = !DILocation(line: 97, column: 7, scope: !244)
!249 = !DILocation(line: 97, column: 27, scope: !244)
!250 = !DILocation(line: 98, column: 40, scope: !244)
!251 = !DILocation(line: 98, column: 29, scope: !244)
!252 = !DILocation(line: 98, column: 7, scope: !244)
!253 = !DILocation(line: 98, column: 27, scope: !244)
!254 = !DILocation(line: 99, column: 12, scope: !244)
!255 = !DILocation(line: 100, column: 12, scope: !244)
!256 = !DILocation(line: 101, column: 5, scope: !244)
!257 = !DILocation(line: 101, column: 22, scope: !258)
!258 = distinct !DILexicalBlock(scope: !239, file: !8, line: 101, column: 16)
!259 = !DILocation(line: 101, column: 16, scope: !258)
!260 = !DILocation(line: 101, column: 31, scope: !258)
!261 = !DILocation(line: 101, column: 16, scope: !239)
!262 = !DILocation(line: 102, column: 16, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !8, line: 101, column: 39)
!264 = !DILocation(line: 103, column: 16, scope: !263)
!265 = !DILocation(line: 104, column: 40, scope: !263)
!266 = !DILocation(line: 104, column: 29, scope: !263)
!267 = !DILocation(line: 104, column: 7, scope: !263)
!268 = !DILocation(line: 104, column: 27, scope: !263)
!269 = !DILocation(line: 105, column: 7, scope: !263)
!270 = !DILocation(line: 105, column: 27, scope: !263)
!271 = !DILocation(line: 106, column: 12, scope: !263)
!272 = !DILocation(line: 107, column: 5, scope: !263)
!273 = !DILocation(line: 108, column: 16, scope: !274)
!274 = distinct !DILexicalBlock(scope: !258, file: !8, line: 107, column: 12)
!275 = !DILocation(line: 109, column: 16, scope: !274)
!276 = !DILocation(line: 110, column: 7, scope: !274)
!277 = !DILocation(line: 110, column: 27, scope: !274)
!278 = !DILocation(line: 111, column: 40, scope: !274)
!279 = !DILocation(line: 111, column: 29, scope: !274)
!280 = !DILocation(line: 111, column: 7, scope: !274)
!281 = !DILocation(line: 111, column: 27, scope: !274)
!282 = !DILocation(line: 112, column: 12, scope: !274)
!283 = distinct !{!283, !230, !284, !285}
!284 = !DILocation(line: 114, column: 3, scope: !7)
!285 = !{!"llvm.loop.name", !"trace"}
!286 = !DILocation(line: 118, column: 3, scope: !7)
!287 = !DILocation(line: 118, column: 20, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !8, line: 118, column: 3)
!289 = distinct !DILexicalBlock(scope: !7, file: !8, line: 118, column: 3)
!290 = !DILocation(line: 118, column: 3, scope: !289)
!291 = !DILocation(line: 119, column: 5, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !8, line: 118, column: 46)
!293 = !DILocation(line: 119, column: 25, scope: !292)
!294 = !DILocation(line: 120, column: 3, scope: !292)
!295 = !DILocation(line: 118, column: 42, scope: !288)
!296 = !DILocation(line: 118, column: 3, scope: !288)
!297 = distinct !{!297, !290, !298, !299}
!298 = !DILocation(line: 120, column: 3, scope: !289)
!299 = !{!"llvm.loop.name", !"pad_a"}
!300 = !DILocation(line: 122, column: 3, scope: !7)
!301 = !DILocation(line: 122, column: 20, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !8, line: 122, column: 3)
!303 = distinct !DILexicalBlock(scope: !7, file: !8, line: 122, column: 3)
!304 = !DILocation(line: 122, column: 3, scope: !303)
!305 = !DILocation(line: 123, column: 5, scope: !306)
!306 = distinct !DILexicalBlock(scope: !302, file: !8, line: 122, column: 46)
!307 = !DILocation(line: 123, column: 25, scope: !306)
!308 = !DILocation(line: 124, column: 3, scope: !306)
!309 = !DILocation(line: 122, column: 42, scope: !302)
!310 = !DILocation(line: 122, column: 3, scope: !302)
!311 = distinct !{!311, !304, !312, !313}
!312 = !DILocation(line: 124, column: 3, scope: !303)
!313 = !{!"llvm.loop.name", !"pad_b"}
!314 = !DILocalVariable(name: "i", scope: !315, file: !8, line: 126, type: !11)
!315 = distinct !DILexicalBlock(scope: !7, file: !8, line: 126, column: 21)
!316 = !DILocation(line: 126, column: 30, scope: !315)
!317 = !DILocation(line: 126, column: 26, scope: !315)
!318 = !DILocation(line: 126, column: 39, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !8, line: 126, column: 21)
!320 = !DILocation(line: 126, column: 21, scope: !315)
!321 = !DILocation(line: 127, column: 20, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !8, line: 126, column: 57)
!323 = !DILocation(line: 127, column: 5, scope: !322)
!324 = !DILocation(line: 127, column: 18, scope: !322)
!325 = !DILocation(line: 128, column: 20, scope: !322)
!326 = !DILocation(line: 128, column: 5, scope: !322)
!327 = !DILocation(line: 128, column: 18, scope: !322)
!328 = !DILocation(line: 129, column: 3, scope: !322)
!329 = !DILocation(line: 126, column: 53, scope: !319)
!330 = !DILocation(line: 126, column: 21, scope: !319)
!331 = distinct !{!331, !320, !332, !333}
!332 = !DILocation(line: 129, column: 3, scope: !315)
!333 = !{!"llvm.loop.name", !"VITIS_LOOP_126_3"}
!334 = !DILocalVariable(name: "i", scope: !335, file: !8, line: 130, type: !11)
!335 = distinct !DILexicalBlock(scope: !7, file: !8, line: 130, column: 21)
!336 = !DILocation(line: 130, column: 30, scope: !335)
!337 = !DILocation(line: 130, column: 26, scope: !335)
!338 = !DILocation(line: 130, column: 39, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !8, line: 130, column: 21)
!340 = !DILocation(line: 130, column: 21, scope: !335)
!341 = !DILocation(line: 131, column: 13, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !8, line: 130, column: 69)
!343 = !DILocation(line: 131, column: 5, scope: !342)
!344 = !DILocation(line: 131, column: 11, scope: !342)
!345 = !DILocation(line: 132, column: 15, scope: !342)
!346 = !DILocation(line: 132, column: 5, scope: !342)
!347 = !DILocation(line: 132, column: 13, scope: !342)
!348 = !DILocation(line: 133, column: 3, scope: !342)
!349 = !DILocation(line: 130, column: 65, scope: !339)
!350 = !DILocation(line: 130, column: 21, scope: !339)
!351 = distinct !{!351, !340, !352, !353}
!352 = !DILocation(line: 133, column: 3, scope: !335)
!353 = !{!"llvm.loop.name", !"VITIS_LOOP_130_4"}
!354 = !DILocation(line: 134, column: 1, scope: !7)
