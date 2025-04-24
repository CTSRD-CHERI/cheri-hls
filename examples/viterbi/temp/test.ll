; ModuleID = '/workspace/examples/viterbi/temp/test.bc'
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
  br label %VITIS_LOOP_15_1, !dbg !28

VITIS_LOOP_15_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !31
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_15_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_15_1 ], [ %inc, %for.inc ]
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
define void @hls_top(i32 %n_tokens, i32* "fpga.decayed.dim.hint"="140" %xobs, i32* "fpga.decayed.dim.hint"="64" %xinit, i32* "fpga.decayed.dim.hint"="4096" %xtransition, i32* "fpga.decayed.dim.hint"="4096" %xemission, i32* "fpga.decayed.dim.hint"="140" %xpath) #3 !dbg !47 !fpga.function.pragma !50 {
entry:
  %obs = alloca [140 x i32], align 4
  %init = alloca [64 x i32], align 4
  %transition = alloca [4096 x i32], align 4
  %emission = alloca [4096 x i32], align 4
  %path = alloca [140 x i32], align 4
  %llike = alloca [8960 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %n_tokens, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i32* %xobs, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i32* %xinit, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32* %xtransition, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32* %xemission, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32* %xpath, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xobs, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !65
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xinit, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !66
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xtransition, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !67
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xemission, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !68
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xpath, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !69
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i32 %n_tokens, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !70
  call void @llvm.sideeffect() #9 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !71
  %0 = bitcast [140 x i32]* %obs to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 560, i8* %0) #10, !dbg !72
  call void @llvm.dbg.declare(metadata [140 x i32]* %obs, metadata !73, metadata !DIExpression()), !dbg !77
  %1 = bitcast [64 x i32]* %init to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %1) #10, !dbg !78
  call void @llvm.dbg.declare(metadata [64 x i32]* %init, metadata !79, metadata !DIExpression()), !dbg !83
  %2 = bitcast [4096 x i32]* %transition to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %2) #10, !dbg !84
  call void @llvm.dbg.declare(metadata [4096 x i32]* %transition, metadata !85, metadata !DIExpression()), !dbg !89
  %3 = bitcast [4096 x i32]* %emission to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %3) #10, !dbg !90
  call void @llvm.dbg.declare(metadata [4096 x i32]* %emission, metadata !91, metadata !DIExpression()), !dbg !92
  %4 = bitcast [140 x i32]* %path to i8*, !dbg !93
  call void @llvm.lifetime.start.p0i8(i64 560, i8* %4) #10, !dbg !93
  call void @llvm.dbg.declare(metadata [140 x i32]* %path, metadata !94, metadata !DIExpression()), !dbg !95
  br label %VITIS_LOOP_37_1, !dbg !93

VITIS_LOOP_37_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !98
  br label %for.cond, !dbg !99

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_37_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_37_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !96, metadata !DIExpression()), !dbg !98
  %cmp = icmp slt i32 %i.0, 140, !dbg !100
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !102

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !103
  %arrayidx = getelementptr inbounds i32, i32* %xobs, i64 %idxprom, !dbg !103
  %5 = load i32, i32* %arrayidx, align 4, !dbg !103
  %idxprom1 = sext i32 %i.0 to i64, !dbg !104
  %arrayidx2 = getelementptr inbounds [140 x i32], [140 x i32]* %obs, i64 0, i64 %idxprom1, !dbg !104
  store i32 %5, i32* %arrayidx2, align 4, !dbg !105
  br label %for.inc, !dbg !104

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %inc, metadata !96, metadata !DIExpression()), !dbg !98
  br label %for.cond, !dbg !107, !llvm.loop !108

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_39_2, !dbg !109

VITIS_LOOP_39_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !111, metadata !DIExpression()), !dbg !113
  br label %for.cond4, !dbg !114

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_39_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_39_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !111, metadata !DIExpression()), !dbg !113
  %cmp5 = icmp slt i32 %i3.0, 64, !dbg !115
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !117

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end14

for.body7:                                        ; preds = %for.cond4
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !118
  %arrayidx9 = getelementptr inbounds i32, i32* %xinit, i64 %idxprom8, !dbg !118
  %6 = load i32, i32* %arrayidx9, align 4, !dbg !118
  %idxprom10 = sext i32 %i3.0 to i64, !dbg !119
  %arrayidx11 = getelementptr inbounds [64 x i32], [64 x i32]* %init, i64 0, i64 %idxprom10, !dbg !119
  store i32 %6, i32* %arrayidx11, align 4, !dbg !120
  br label %for.inc12, !dbg !119

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i3.0, 1, !dbg !121
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !111, metadata !DIExpression()), !dbg !113
  br label %for.cond4, !dbg !122, !llvm.loop !123

for.end14:                                        ; preds = %for.cond.cleanup6
  br label %VITIS_LOOP_41_3, !dbg !124

VITIS_LOOP_41_3:                                  ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !126, metadata !DIExpression()), !dbg !128
  br label %for.cond16, !dbg !129

for.cond16:                                       ; preds = %for.inc24, %VITIS_LOOP_41_3
  %i15.0 = phi i32 [ 0, %VITIS_LOOP_41_3 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %i15.0, metadata !126, metadata !DIExpression()), !dbg !128
  %cmp17 = icmp slt i32 %i15.0, 4096, !dbg !130
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18, !dbg !132

for.cond.cleanup18:                               ; preds = %for.cond16
  br label %for.end26

for.body19:                                       ; preds = %for.cond16
  %idxprom20 = sext i32 %i15.0 to i64, !dbg !133
  %arrayidx21 = getelementptr inbounds i32, i32* %xtransition, i64 %idxprom20, !dbg !133
  %7 = load i32, i32* %arrayidx21, align 4, !dbg !133
  %idxprom22 = sext i32 %i15.0 to i64, !dbg !134
  %arrayidx23 = getelementptr inbounds [4096 x i32], [4096 x i32]* %transition, i64 0, i64 %idxprom22, !dbg !134
  store i32 %7, i32* %arrayidx23, align 4, !dbg !135
  br label %for.inc24, !dbg !134

for.inc24:                                        ; preds = %for.body19
  %inc25 = add nsw i32 %i15.0, 1, !dbg !136
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !126, metadata !DIExpression()), !dbg !128
  br label %for.cond16, !dbg !137, !llvm.loop !138

for.end26:                                        ; preds = %for.cond.cleanup18
  br label %VITIS_LOOP_43_4, !dbg !139

VITIS_LOOP_43_4:                                  ; preds = %for.end26
  call void @llvm.dbg.value(metadata i32 0, metadata !141, metadata !DIExpression()), !dbg !143
  br label %for.cond28, !dbg !144

for.cond28:                                       ; preds = %for.inc36, %VITIS_LOOP_43_4
  %i27.0 = phi i32 [ 0, %VITIS_LOOP_43_4 ], [ %inc37, %for.inc36 ]
  call void @llvm.dbg.value(metadata i32 %i27.0, metadata !141, metadata !DIExpression()), !dbg !143
  %mul = mul nsw i32 64, %n_tokens, !dbg !145
  %cmp29 = icmp slt i32 %i27.0, %mul, !dbg !147
  br i1 %cmp29, label %for.body31, label %for.cond.cleanup30, !dbg !148

for.cond.cleanup30:                               ; preds = %for.cond28
  br label %for.end38

for.body31:                                       ; preds = %for.cond28
  %idxprom32 = sext i32 %i27.0 to i64, !dbg !149
  %arrayidx33 = getelementptr inbounds i32, i32* %xemission, i64 %idxprom32, !dbg !149
  %8 = load i32, i32* %arrayidx33, align 4, !dbg !149
  %idxprom34 = sext i32 %i27.0 to i64, !dbg !150
  %arrayidx35 = getelementptr inbounds [4096 x i32], [4096 x i32]* %emission, i64 0, i64 %idxprom34, !dbg !150
  store i32 %8, i32* %arrayidx35, align 4, !dbg !151
  br label %for.inc36, !dbg !150

for.inc36:                                        ; preds = %for.body31
  %inc37 = add nsw i32 %i27.0, 1, !dbg !152
  call void @llvm.dbg.value(metadata i32 %inc37, metadata !141, metadata !DIExpression()), !dbg !143
  br label %for.cond28, !dbg !153, !llvm.loop !154

for.end38:                                        ; preds = %for.cond.cleanup30
  call void @llvm.dbg.declare(metadata [8960 x i32]* %llike, metadata !157, metadata !DIExpression()), !dbg !162
  br label %L_init, !dbg !163

L_init:                                           ; preds = %for.end38
  call void @llvm.dbg.value(metadata i32 0, metadata !164, metadata !DIExpression()), !dbg !166
  br label %for.cond39, !dbg !167

for.cond39:                                       ; preds = %for.inc52, %L_init
  %s.0 = phi i32 [ 0, %L_init ], [ %inc53, %for.inc52 ]
  call void @llvm.dbg.value(metadata i32 %s.0, metadata !164, metadata !DIExpression()), !dbg !166
  %cmp40 = icmp slt i32 %s.0, 64, !dbg !169
  br i1 %cmp40, label %for.body41, label %for.end54, !dbg !171

for.body41:                                       ; preds = %for.cond39
  %idxprom42 = sext i32 %s.0 to i64, !dbg !172
  %arrayidx43 = getelementptr inbounds [64 x i32], [64 x i32]* %init, i64 0, i64 %idxprom42, !dbg !172
  %9 = load i32, i32* %arrayidx43, align 4, !dbg !172
  %mul44 = mul nsw i32 %s.0, %n_tokens, !dbg !174
  %arrayidx45 = getelementptr inbounds [140 x i32], [140 x i32]* %obs, i64 0, i64 0, !dbg !175
  %10 = load i32, i32* %arrayidx45, align 4, !dbg !175
  %add = add nsw i32 %mul44, %10, !dbg !176
  %idxprom46 = sext i32 %add to i64, !dbg !177
  %arrayidx47 = getelementptr inbounds [4096 x i32], [4096 x i32]* %emission, i64 0, i64 %idxprom46, !dbg !177
  %11 = load i32, i32* %arrayidx47, align 4, !dbg !177
  %add48 = add nsw i32 %9, %11, !dbg !178
  %add49 = add nsw i32 0, %s.0, !dbg !179
  %idxprom50 = sext i32 %add49 to i64, !dbg !180
  %arrayidx51 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom50, !dbg !180
  store i32 %add48, i32* %arrayidx51, align 4, !dbg !181
  br label %for.inc52, !dbg !182

for.inc52:                                        ; preds = %for.body41
  %inc53 = add nsw i32 %s.0, 1, !dbg !183
  call void @llvm.dbg.value(metadata i32 %inc53, metadata !164, metadata !DIExpression()), !dbg !166
  br label %for.cond39, !dbg !184, !llvm.loop !185

for.end54:                                        ; preds = %for.cond39
  br label %L_timestep, !dbg !186

L_timestep:                                       ; preds = %for.end54
  call void @llvm.dbg.value(metadata i32 1, metadata !188, metadata !DIExpression()), !dbg !190
  br label %for.cond55, !dbg !191

for.cond55:                                       ; preds = %for.inc108, %L_timestep
  %t.0 = phi i32 [ 1, %L_timestep ], [ %inc109, %for.inc108 ]
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !188, metadata !DIExpression()), !dbg !190
  %cmp56 = icmp slt i32 %t.0, 140, !dbg !193
  br i1 %cmp56, label %for.body57, label %for.end110, !dbg !195

for.body57:                                       ; preds = %for.cond55
  br label %L_curr_state, !dbg !196

L_curr_state:                                     ; preds = %for.body57
  call void @llvm.dbg.value(metadata i32 0, metadata !197, metadata !DIExpression()), !dbg !198
  br label %for.cond58, !dbg !199

for.cond58:                                       ; preds = %for.inc105, %L_curr_state
  %curr.0 = phi i32 [ 0, %L_curr_state ], [ %inc106, %for.inc105 ]
  call void @llvm.dbg.value(metadata i32 %curr.0, metadata !197, metadata !DIExpression()), !dbg !198
  %cmp59 = icmp slt i32 %curr.0, 64, !dbg !202
  br i1 %cmp59, label %for.body60, label %for.end107, !dbg !204

for.body60:                                       ; preds = %for.cond58
  call void @llvm.dbg.value(metadata i32 0, metadata !205, metadata !DIExpression()), !dbg !206
  %sub = sub nsw i32 %t.0, 1, !dbg !207
  %mul61 = mul nsw i32 %sub, 64, !dbg !209
  %add62 = add nsw i32 %mul61, 0, !dbg !210
  %idxprom63 = sext i32 %add62 to i64, !dbg !211
  %arrayidx64 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom63, !dbg !211
  %12 = load i32, i32* %arrayidx64, align 4, !dbg !211
  %mul65 = mul nsw i32 0, 64, !dbg !212
  %add66 = add nsw i32 %mul65, %curr.0, !dbg !213
  %idxprom67 = sext i32 %add66 to i64, !dbg !214
  %arrayidx68 = getelementptr inbounds [4096 x i32], [4096 x i32]* %transition, i64 0, i64 %idxprom67, !dbg !214
  %13 = load i32, i32* %arrayidx68, align 4, !dbg !214
  %add69 = add nsw i32 %12, %13, !dbg !215
  %mul70 = mul nsw i32 %curr.0, %n_tokens, !dbg !216
  %idxprom71 = sext i32 %t.0 to i64, !dbg !217
  %arrayidx72 = getelementptr inbounds [140 x i32], [140 x i32]* %obs, i64 0, i64 %idxprom71, !dbg !217
  %14 = load i32, i32* %arrayidx72, align 4, !dbg !217
  %add73 = add nsw i32 %mul70, %14, !dbg !218
  %idxprom74 = sext i32 %add73 to i64, !dbg !219
  %arrayidx75 = getelementptr inbounds [4096 x i32], [4096 x i32]* %emission, i64 0, i64 %idxprom74, !dbg !219
  %15 = load i32, i32* %arrayidx75, align 4, !dbg !219
  %add76 = add nsw i32 %add69, %15, !dbg !220
  call void @llvm.dbg.value(metadata i32 %add76, metadata !221, metadata !DIExpression()), !dbg !222
  br label %L_prev_state, !dbg !223

L_prev_state:                                     ; preds = %for.body60
  call void @llvm.dbg.value(metadata i32 1, metadata !205, metadata !DIExpression()), !dbg !206
  br label %for.cond77, !dbg !224

for.cond77:                                       ; preds = %for.inc98, %L_prev_state
  %prev.0 = phi i32 [ 1, %L_prev_state ], [ %inc99, %for.inc98 ]
  %min_p.0 = phi i32 [ %add76, %L_prev_state ], [ %min_p.1, %for.inc98 ]
  call void @llvm.dbg.value(metadata i32 %min_p.0, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32 %prev.0, metadata !205, metadata !DIExpression()), !dbg !206
  %cmp78 = icmp slt i32 %prev.0, 64, !dbg !226
  br i1 %cmp78, label %for.body79, label %for.end100, !dbg !228

for.body79:                                       ; preds = %for.cond77
  %sub80 = sub nsw i32 %t.0, 1, !dbg !229
  %mul81 = mul nsw i32 %sub80, 64, !dbg !231
  %add82 = add nsw i32 %mul81, %prev.0, !dbg !232
  %idxprom83 = sext i32 %add82 to i64, !dbg !233
  %arrayidx84 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom83, !dbg !233
  %16 = load i32, i32* %arrayidx84, align 4, !dbg !233
  %mul85 = mul nsw i32 %prev.0, 64, !dbg !234
  %add86 = add nsw i32 %mul85, %curr.0, !dbg !235
  %idxprom87 = sext i32 %add86 to i64, !dbg !236
  %arrayidx88 = getelementptr inbounds [4096 x i32], [4096 x i32]* %transition, i64 0, i64 %idxprom87, !dbg !236
  %17 = load i32, i32* %arrayidx88, align 4, !dbg !236
  %add89 = add nsw i32 %16, %17, !dbg !237
  %mul90 = mul nsw i32 %curr.0, %n_tokens, !dbg !238
  %idxprom91 = sext i32 %t.0 to i64, !dbg !239
  %arrayidx92 = getelementptr inbounds [140 x i32], [140 x i32]* %obs, i64 0, i64 %idxprom91, !dbg !239
  %18 = load i32, i32* %arrayidx92, align 4, !dbg !239
  %add93 = add nsw i32 %mul90, %18, !dbg !240
  %idxprom94 = sext i32 %add93 to i64, !dbg !241
  %arrayidx95 = getelementptr inbounds [4096 x i32], [4096 x i32]* %emission, i64 0, i64 %idxprom94, !dbg !241
  %19 = load i32, i32* %arrayidx95, align 4, !dbg !241
  %add96 = add nsw i32 %add89, %19, !dbg !242
  call void @llvm.dbg.value(metadata i32 %add96, metadata !243, metadata !DIExpression()), !dbg !244
  %cmp97 = icmp slt i32 %add96, %min_p.0, !dbg !245
  br i1 %cmp97, label %if.then, label %if.end, !dbg !247

if.then:                                          ; preds = %for.body79
  call void @llvm.dbg.value(metadata i32 %add96, metadata !221, metadata !DIExpression()), !dbg !222
  br label %if.end, !dbg !248

if.end:                                           ; preds = %if.then, %for.body79
  %min_p.1 = phi i32 [ %add96, %if.then ], [ %min_p.0, %for.body79 ]
  call void @llvm.dbg.value(metadata i32 %min_p.1, metadata !221, metadata !DIExpression()), !dbg !222
  br label %for.inc98, !dbg !250

for.inc98:                                        ; preds = %if.end
  %inc99 = add nsw i32 %prev.0, 1, !dbg !251
  call void @llvm.dbg.value(metadata i32 %inc99, metadata !205, metadata !DIExpression()), !dbg !206
  br label %for.cond77, !dbg !252, !llvm.loop !253

for.end100:                                       ; preds = %for.cond77
  %mul101 = mul nsw i32 %t.0, 64, !dbg !256
  %add102 = add nsw i32 %mul101, %curr.0, !dbg !257
  %idxprom103 = sext i32 %add102 to i64, !dbg !258
  %arrayidx104 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom103, !dbg !258
  store i32 %min_p.0, i32* %arrayidx104, align 4, !dbg !259
  br label %for.inc105, !dbg !260

for.inc105:                                       ; preds = %for.end100
  %inc106 = add nsw i32 %curr.0, 1, !dbg !261
  call void @llvm.dbg.value(metadata i32 %inc106, metadata !197, metadata !DIExpression()), !dbg !198
  br label %for.cond58, !dbg !262, !llvm.loop !263

for.end107:                                       ; preds = %for.cond58
  br label %for.inc108, !dbg !266

for.inc108:                                       ; preds = %for.end107
  %inc109 = add nsw i32 %t.0, 1, !dbg !267
  call void @llvm.dbg.value(metadata i32 %inc109, metadata !188, metadata !DIExpression()), !dbg !190
  br label %for.cond55, !dbg !268, !llvm.loop !269

for.end110:                                       ; preds = %for.cond55
  call void @llvm.dbg.value(metadata i32 0, metadata !272, metadata !DIExpression()), !dbg !273
  %add111 = add nsw i32 8896, 0, !dbg !274
  %idxprom112 = sext i32 %add111 to i64, !dbg !275
  %arrayidx113 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom112, !dbg !275
  %20 = load i32, i32* %arrayidx113, align 4, !dbg !275
  call void @llvm.dbg.value(metadata i32 %20, metadata !221, metadata !DIExpression()), !dbg !222
  br label %L_end, !dbg !276

L_end:                                            ; preds = %for.end110
  call void @llvm.dbg.value(metadata i32 1, metadata !164, metadata !DIExpression()), !dbg !166
  br label %for.cond114, !dbg !277

for.cond114:                                      ; preds = %for.inc123, %L_end
  %min_p.2 = phi i32 [ %20, %L_end ], [ %min_p.3, %for.inc123 ]
  %min_s.0 = phi i32 [ 0, %L_end ], [ %min_s.1, %for.inc123 ]
  %s.1 = phi i32 [ 1, %L_end ], [ %inc124, %for.inc123 ]
  call void @llvm.dbg.value(metadata i32 %s.1, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i32 %min_s.0, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 %min_p.2, metadata !221, metadata !DIExpression()), !dbg !222
  %cmp115 = icmp slt i32 %s.1, 64, !dbg !279
  br i1 %cmp115, label %for.body116, label %for.end125, !dbg !281

for.body116:                                      ; preds = %for.cond114
  %add117 = add nsw i32 8896, %s.1, !dbg !282
  %idxprom118 = sext i32 %add117 to i64, !dbg !284
  %arrayidx119 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom118, !dbg !284
  %21 = load i32, i32* %arrayidx119, align 4, !dbg !284
  call void @llvm.dbg.value(metadata i32 %21, metadata !243, metadata !DIExpression()), !dbg !244
  %cmp120 = icmp slt i32 %21, %min_p.2, !dbg !285
  br i1 %cmp120, label %if.then121, label %if.end122, !dbg !287

if.then121:                                       ; preds = %for.body116
  call void @llvm.dbg.value(metadata i32 %21, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32 %s.1, metadata !272, metadata !DIExpression()), !dbg !273
  br label %if.end122, !dbg !288

if.end122:                                        ; preds = %if.then121, %for.body116
  %min_p.3 = phi i32 [ %21, %if.then121 ], [ %min_p.2, %for.body116 ]
  %min_s.1 = phi i32 [ %s.1, %if.then121 ], [ %min_s.0, %for.body116 ]
  call void @llvm.dbg.value(metadata i32 %min_s.1, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 %min_p.3, metadata !221, metadata !DIExpression()), !dbg !222
  br label %for.inc123, !dbg !290

for.inc123:                                       ; preds = %if.end122
  %inc124 = add nsw i32 %s.1, 1, !dbg !291
  call void @llvm.dbg.value(metadata i32 %inc124, metadata !164, metadata !DIExpression()), !dbg !166
  br label %for.cond114, !dbg !292, !llvm.loop !293

for.end125:                                       ; preds = %for.cond114
  %arrayidx126 = getelementptr inbounds [140 x i32], [140 x i32]* %path, i64 0, i64 139, !dbg !296
  store i32 %min_s.0, i32* %arrayidx126, align 4, !dbg !297
  br label %L_backtrack, !dbg !296

L_backtrack:                                      ; preds = %for.end125
  call void @llvm.dbg.value(metadata i32 138, metadata !188, metadata !DIExpression()), !dbg !190
  br label %for.cond127, !dbg !298

for.cond127:                                      ; preds = %for.inc165, %L_backtrack
  %t.1 = phi i32 [ 138, %L_backtrack ], [ %dec, %for.inc165 ]
  call void @llvm.dbg.value(metadata i32 %t.1, metadata !188, metadata !DIExpression()), !dbg !190
  %cmp128 = icmp sge i32 %t.1, 0, !dbg !300
  br i1 %cmp128, label %for.body129, label %for.end166, !dbg !302

for.body129:                                      ; preds = %for.cond127
  call void @llvm.dbg.value(metadata i32 0, metadata !272, metadata !DIExpression()), !dbg !273
  %mul130 = mul nsw i32 %t.1, 64, !dbg !303
  %add131 = add nsw i32 %mul130, 0, !dbg !305
  %idxprom132 = sext i32 %add131 to i64, !dbg !306
  %arrayidx133 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom132, !dbg !306
  %22 = load i32, i32* %arrayidx133, align 4, !dbg !306
  %mul134 = mul nsw i32 0, 64, !dbg !307
  %add135 = add nsw i32 %t.1, 1, !dbg !308
  %idxprom136 = sext i32 %add135 to i64, !dbg !309
  %arrayidx137 = getelementptr inbounds [140 x i32], [140 x i32]* %path, i64 0, i64 %idxprom136, !dbg !309
  %23 = load i32, i32* %arrayidx137, align 4, !dbg !309
  %add138 = add nsw i32 %mul134, %23, !dbg !310
  %idxprom139 = sext i32 %add138 to i64, !dbg !311
  %arrayidx140 = getelementptr inbounds [4096 x i32], [4096 x i32]* %transition, i64 0, i64 %idxprom139, !dbg !311
  %24 = load i32, i32* %arrayidx140, align 4, !dbg !311
  %add141 = add nsw i32 %22, %24, !dbg !312
  call void @llvm.dbg.value(metadata i32 %add141, metadata !221, metadata !DIExpression()), !dbg !222
  br label %L_state, !dbg !313

L_state:                                          ; preds = %for.body129
  call void @llvm.dbg.value(metadata i32 1, metadata !164, metadata !DIExpression()), !dbg !166
  br label %for.cond142, !dbg !314

for.cond142:                                      ; preds = %for.inc160, %L_state
  %min_p.4 = phi i32 [ %add141, %L_state ], [ %min_p.5, %for.inc160 ]
  %min_s.2 = phi i32 [ 0, %L_state ], [ %min_s.3, %for.inc160 ]
  %s.2 = phi i32 [ 1, %L_state ], [ %inc161, %for.inc160 ]
  call void @llvm.dbg.value(metadata i32 %s.2, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i32 %min_s.2, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 %min_p.4, metadata !221, metadata !DIExpression()), !dbg !222
  %cmp143 = icmp slt i32 %s.2, 64, !dbg !316
  br i1 %cmp143, label %for.body144, label %for.end162, !dbg !318

for.body144:                                      ; preds = %for.cond142
  %mul145 = mul nsw i32 %t.1, 64, !dbg !319
  %add146 = add nsw i32 %mul145, %s.2, !dbg !321
  %idxprom147 = sext i32 %add146 to i64, !dbg !322
  %arrayidx148 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom147, !dbg !322
  %25 = load i32, i32* %arrayidx148, align 4, !dbg !322
  %mul149 = mul nsw i32 %s.2, 64, !dbg !323
  %add150 = add nsw i32 %t.1, 1, !dbg !324
  %idxprom151 = sext i32 %add150 to i64, !dbg !325
  %arrayidx152 = getelementptr inbounds [140 x i32], [140 x i32]* %path, i64 0, i64 %idxprom151, !dbg !325
  %26 = load i32, i32* %arrayidx152, align 4, !dbg !325
  %add153 = add nsw i32 %mul149, %26, !dbg !326
  %idxprom154 = sext i32 %add153 to i64, !dbg !327
  %arrayidx155 = getelementptr inbounds [4096 x i32], [4096 x i32]* %transition, i64 0, i64 %idxprom154, !dbg !327
  %27 = load i32, i32* %arrayidx155, align 4, !dbg !327
  %add156 = add nsw i32 %25, %27, !dbg !328
  call void @llvm.dbg.value(metadata i32 %add156, metadata !243, metadata !DIExpression()), !dbg !244
  %cmp157 = icmp slt i32 %add156, %min_p.4, !dbg !329
  br i1 %cmp157, label %if.then158, label %if.end159, !dbg !331

if.then158:                                       ; preds = %for.body144
  call void @llvm.dbg.value(metadata i32 %add156, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32 %s.2, metadata !272, metadata !DIExpression()), !dbg !273
  br label %if.end159, !dbg !332

if.end159:                                        ; preds = %if.then158, %for.body144
  %min_p.5 = phi i32 [ %add156, %if.then158 ], [ %min_p.4, %for.body144 ]
  %min_s.3 = phi i32 [ %s.2, %if.then158 ], [ %min_s.2, %for.body144 ]
  call void @llvm.dbg.value(metadata i32 %min_s.3, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i32 %min_p.5, metadata !221, metadata !DIExpression()), !dbg !222
  br label %for.inc160, !dbg !334

for.inc160:                                       ; preds = %if.end159
  %inc161 = add nsw i32 %s.2, 1, !dbg !335
  call void @llvm.dbg.value(metadata i32 %inc161, metadata !164, metadata !DIExpression()), !dbg !166
  br label %for.cond142, !dbg !336, !llvm.loop !337

for.end162:                                       ; preds = %for.cond142
  %idxprom163 = sext i32 %t.1 to i64, !dbg !340
  %arrayidx164 = getelementptr inbounds [140 x i32], [140 x i32]* %path, i64 0, i64 %idxprom163, !dbg !340
  store i32 %min_s.2, i32* %arrayidx164, align 4, !dbg !341
  br label %for.inc165, !dbg !342

for.inc165:                                       ; preds = %for.end162
  %dec = add nsw i32 %t.1, -1, !dbg !343
  call void @llvm.dbg.value(metadata i32 %dec, metadata !188, metadata !DIExpression()), !dbg !190
  br label %for.cond127, !dbg !344, !llvm.loop !345

for.end166:                                       ; preds = %for.cond127
  %arraydecay = getelementptr inbounds [140 x i32], [140 x i32]* %path, i32 0, i32 0, !dbg !348
  call void @stream_write(i32 140, i32* %xpath, i32* %arraydecay), !dbg !349
  %28 = bitcast [140 x i32]* %path to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 560, i8* %28) #10, !dbg !350
  %29 = bitcast [4096 x i32]* %emission to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %29) #10, !dbg !350
  %30 = bitcast [4096 x i32]* %transition to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %30) #10, !dbg !350
  %31 = bitcast [64 x i32]* %init to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %31) #10, !dbg !350
  %32 = bitcast [140 x i32]* %obs to i8*, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 560, i8* %32) #10, !dbg !350
  ret void, !dbg !350
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
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="4480" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="2048" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="131072" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/viterbi/viterbi_prj/solution/.autopilot/db/viterbi.pp.0.c", directory: "/workspace/examples/viterbi")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "stream_write", scope: !8, file: !8, line: 13, type: !9, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "viterbi.c", directory: "/workspace/examples/viterbi")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !17, !17}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 7, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/viterbi")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 42, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/viterbi")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20}
!20 = !{!"fpga.inline", !"user", !21}
!21 = !DILocation(line: 14, column: 9, scope: !7)
!22 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 13, type: !11)
!23 = !DILocation(line: 13, column: 23, scope: !7)
!24 = !DILocalVariable(name: "array1", arg: 2, scope: !7, file: !8, line: 13, type: !17)
!25 = !DILocation(line: 13, column: 34, scope: !7)
!26 = !DILocalVariable(name: "array2", arg: 3, scope: !7, file: !8, line: 13, type: !17)
!27 = !DILocation(line: 13, column: 47, scope: !7)
!28 = !DILocation(line: 13, column: 55, scope: !7)
!29 = !DILocalVariable(name: "i", scope: !30, file: !8, line: 15, type: !18)
!30 = distinct !DILexicalBlock(scope: !7, file: !8, line: 15, column: 19)
!31 = !DILocation(line: 15, column: 28, scope: !30)
!32 = !DILocation(line: 15, column: 24, scope: !30)
!33 = !DILocation(line: 15, column: 37, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !8, line: 15, column: 19)
!35 = !DILocation(line: 15, column: 19, scope: !30)
!36 = !DILocation(line: 16, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !8, line: 15, column: 50)
!38 = !DILocation(line: 16, column: 5, scope: !37)
!39 = !DILocation(line: 16, column: 15, scope: !37)
!40 = !DILocation(line: 17, column: 3, scope: !37)
!41 = !DILocation(line: 15, column: 46, scope: !34)
!42 = !DILocation(line: 15, column: 19, scope: !34)
!43 = distinct !{!43, !35, !44, !45}
!44 = !DILocation(line: 17, column: 3, scope: !30)
!45 = !{!"llvm.loop.name", !"VITIS_LOOP_15_1"}
!46 = !DILocation(line: 18, column: 1, scope: !7)
!47 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 20, type: !48, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !18, !17, !17, !17, !17, !17}
!50 = !{!51}
!51 = !{!"fpga.top", !"user", !52}
!52 = !DILocation(line: 20, column: 16, scope: !47)
!53 = !DILocalVariable(name: "n_tokens", arg: 1, scope: !47, file: !8, line: 20, type: !18)
!54 = !DILocation(line: 20, column: 60, scope: !47)
!55 = !DILocalVariable(name: "xobs", arg: 2, scope: !47, file: !8, line: 20, type: !17)
!56 = !DILocation(line: 20, column: 74, scope: !47)
!57 = !DILocalVariable(name: "xinit", arg: 3, scope: !47, file: !8, line: 20, type: !17)
!58 = !DILocation(line: 20, column: 89, scope: !47)
!59 = !DILocalVariable(name: "xtransition", arg: 4, scope: !47, file: !8, line: 21, type: !17)
!60 = !DILocation(line: 21, column: 18, scope: !47)
!61 = !DILocalVariable(name: "xemission", arg: 5, scope: !47, file: !8, line: 22, type: !17)
!62 = !DILocation(line: 22, column: 18, scope: !47)
!63 = !DILocalVariable(name: "xpath", arg: 6, scope: !47, file: !8, line: 22, type: !17)
!64 = !DILocation(line: 22, column: 42, scope: !47)
!65 = !DILocation(line: 23, column: 9, scope: !47)
!66 = !DILocation(line: 24, column: 9, scope: !47)
!67 = !DILocation(line: 25, column: 9, scope: !47)
!68 = !DILocation(line: 26, column: 9, scope: !47)
!69 = !DILocation(line: 27, column: 9, scope: !47)
!70 = !DILocation(line: 28, column: 9, scope: !47)
!71 = !DILocation(line: 29, column: 9, scope: !47)
!72 = !DILocation(line: 31, column: 2, scope: !47)
!73 = !DILocalVariable(name: "obs", scope: !47, file: !8, line: 31, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 4480, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 140)
!77 = !DILocation(line: 31, column: 6, scope: !47)
!78 = !DILocation(line: 32, column: 3, scope: !47)
!79 = !DILocalVariable(name: "init", scope: !47, file: !8, line: 32, type: !80)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 64)
!83 = !DILocation(line: 32, column: 7, scope: !47)
!84 = !DILocation(line: 33, column: 3, scope: !47)
!85 = !DILocalVariable(name: "transition", scope: !47, file: !8, line: 33, type: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 131072, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 4096)
!89 = !DILocation(line: 33, column: 7, scope: !47)
!90 = !DILocation(line: 34, column: 3, scope: !47)
!91 = !DILocalVariable(name: "emission", scope: !47, file: !8, line: 34, type: !86)
!92 = !DILocation(line: 34, column: 7, scope: !47)
!93 = !DILocation(line: 35, column: 3, scope: !47)
!94 = !DILocalVariable(name: "path", scope: !47, file: !8, line: 35, type: !74)
!95 = !DILocation(line: 35, column: 7, scope: !47)
!96 = !DILocalVariable(name: "i", scope: !97, file: !8, line: 37, type: !18)
!97 = distinct !DILexicalBlock(scope: !47, file: !8, line: 37, column: 20)
!98 = !DILocation(line: 37, column: 29, scope: !97)
!99 = !DILocation(line: 37, column: 25, scope: !97)
!100 = !DILocation(line: 37, column: 38, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !8, line: 37, column: 20)
!102 = !DILocation(line: 37, column: 20, scope: !97)
!103 = !DILocation(line: 38, column: 14, scope: !101)
!104 = !DILocation(line: 38, column: 5, scope: !101)
!105 = !DILocation(line: 38, column: 12, scope: !101)
!106 = !DILocation(line: 37, column: 46, scope: !101)
!107 = !DILocation(line: 37, column: 20, scope: !101)
!108 = distinct !{!108, !102, !109, !110}
!109 = !DILocation(line: 38, column: 20, scope: !97)
!110 = !{!"llvm.loop.name", !"VITIS_LOOP_37_1"}
!111 = !DILocalVariable(name: "i", scope: !112, file: !8, line: 39, type: !18)
!112 = distinct !DILexicalBlock(scope: !47, file: !8, line: 39, column: 20)
!113 = !DILocation(line: 39, column: 29, scope: !112)
!114 = !DILocation(line: 39, column: 25, scope: !112)
!115 = !DILocation(line: 39, column: 38, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !8, line: 39, column: 20)
!117 = !DILocation(line: 39, column: 20, scope: !112)
!118 = !DILocation(line: 40, column: 15, scope: !116)
!119 = !DILocation(line: 40, column: 5, scope: !116)
!120 = !DILocation(line: 40, column: 13, scope: !116)
!121 = !DILocation(line: 39, column: 45, scope: !116)
!122 = !DILocation(line: 39, column: 20, scope: !116)
!123 = distinct !{!123, !117, !124, !125}
!124 = !DILocation(line: 40, column: 22, scope: !112)
!125 = !{!"llvm.loop.name", !"VITIS_LOOP_39_2"}
!126 = !DILocalVariable(name: "i", scope: !127, file: !8, line: 41, type: !18)
!127 = distinct !DILexicalBlock(scope: !47, file: !8, line: 41, column: 20)
!128 = !DILocation(line: 41, column: 29, scope: !127)
!129 = !DILocation(line: 41, column: 25, scope: !127)
!130 = !DILocation(line: 41, column: 38, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !8, line: 41, column: 20)
!132 = !DILocation(line: 41, column: 20, scope: !127)
!133 = !DILocation(line: 42, column: 21, scope: !131)
!134 = !DILocation(line: 42, column: 5, scope: !131)
!135 = !DILocation(line: 42, column: 19, scope: !131)
!136 = !DILocation(line: 41, column: 50, scope: !131)
!137 = !DILocation(line: 41, column: 20, scope: !131)
!138 = distinct !{!138, !132, !139, !140}
!139 = !DILocation(line: 42, column: 34, scope: !127)
!140 = !{!"llvm.loop.name", !"VITIS_LOOP_41_3"}
!141 = !DILocalVariable(name: "i", scope: !142, file: !8, line: 43, type: !18)
!142 = distinct !DILexicalBlock(scope: !47, file: !8, line: 43, column: 20)
!143 = !DILocation(line: 43, column: 29, scope: !142)
!144 = !DILocation(line: 43, column: 25, scope: !142)
!145 = !DILocation(line: 43, column: 43, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !8, line: 43, column: 20)
!147 = !DILocation(line: 43, column: 38, scope: !146)
!148 = !DILocation(line: 43, column: 20, scope: !142)
!149 = !DILocation(line: 44, column: 19, scope: !146)
!150 = !DILocation(line: 44, column: 5, scope: !146)
!151 = !DILocation(line: 44, column: 17, scope: !146)
!152 = !DILocation(line: 43, column: 56, scope: !146)
!153 = !DILocation(line: 43, column: 20, scope: !146)
!154 = distinct !{!154, !148, !155, !156}
!155 = !DILocation(line: 44, column: 30, scope: !142)
!156 = !{!"llvm.loop.name", !"VITIS_LOOP_43_4"}
!157 = !DILocalVariable(name: "llike", scope: !47, file: !8, line: 46, type: !158)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 286720, elements: !160)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "prob_t", file: !8, line: 4, baseType: !18)
!160 = !{!161}
!161 = !DISubrange(count: 8960)
!162 = !DILocation(line: 46, column: 10, scope: !47)
!163 = !DILocation(line: 50, column: 3, scope: !47)
!164 = !DILocalVariable(name: "s", scope: !47, file: !8, line: 50, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "state_t", file: !8, line: 5, baseType: !18)
!166 = !DILocation(line: 50, column: 18, scope: !47)
!167 = !DILocation(line: 55, column: 8, scope: !168)
!168 = distinct !DILexicalBlock(scope: !47, file: !8, line: 55, column: 3)
!169 = !DILocation(line: 55, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !168, file: !8, line: 55, column: 3)
!171 = !DILocation(line: 55, column: 3, scope: !168)
!172 = !DILocation(line: 56, column: 20, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !8, line: 55, column: 28)
!174 = !DILocation(line: 56, column: 41, scope: !173)
!175 = !DILocation(line: 56, column: 54, scope: !173)
!176 = !DILocation(line: 56, column: 52, scope: !173)
!177 = !DILocation(line: 56, column: 30, scope: !173)
!178 = !DILocation(line: 56, column: 28, scope: !173)
!179 = !DILocation(line: 56, column: 13, scope: !173)
!180 = !DILocation(line: 56, column: 5, scope: !173)
!181 = !DILocation(line: 56, column: 18, scope: !173)
!182 = !DILocation(line: 57, column: 3, scope: !173)
!183 = !DILocation(line: 55, column: 24, scope: !170)
!184 = !DILocation(line: 55, column: 3, scope: !170)
!185 = distinct !{!185, !171, !186, !187}
!186 = !DILocation(line: 57, column: 3, scope: !168)
!187 = !{!"llvm.loop.name", !"L_init"}
!188 = !DILocalVariable(name: "t", scope: !47, file: !8, line: 47, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "step_t", file: !8, line: 6, baseType: !18)
!190 = !DILocation(line: 47, column: 10, scope: !47)
!191 = !DILocation(line: 61, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !47, file: !8, line: 61, column: 3)
!193 = !DILocation(line: 61, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !192, file: !8, line: 61, column: 3)
!195 = !DILocation(line: 61, column: 3, scope: !192)
!196 = !DILocation(line: 61, column: 29, scope: !194)
!197 = !DILocalVariable(name: "curr", scope: !47, file: !8, line: 48, type: !165)
!198 = !DILocation(line: 48, column: 17, scope: !47)
!199 = !DILocation(line: 63, column: 10, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !8, line: 63, column: 5)
!201 = distinct !DILexicalBlock(scope: !194, file: !8, line: 61, column: 29)
!202 = !DILocation(line: 63, column: 25, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !8, line: 63, column: 5)
!204 = !DILocation(line: 63, column: 5, scope: !200)
!205 = !DILocalVariable(name: "prev", scope: !47, file: !8, line: 48, type: !165)
!206 = !DILocation(line: 48, column: 11, scope: !47)
!207 = !DILocation(line: 66, column: 24, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !8, line: 63, column: 39)
!209 = !DILocation(line: 66, column: 29, scope: !208)
!210 = !DILocation(line: 66, column: 34, scope: !208)
!211 = !DILocation(line: 66, column: 15, scope: !208)
!212 = !DILocation(line: 67, column: 31, scope: !208)
!213 = !DILocation(line: 67, column: 36, scope: !208)
!214 = !DILocation(line: 67, column: 15, scope: !208)
!215 = !DILocation(line: 66, column: 42, scope: !208)
!216 = !DILocation(line: 68, column: 29, scope: !208)
!217 = !DILocation(line: 68, column: 42, scope: !208)
!218 = !DILocation(line: 68, column: 40, scope: !208)
!219 = !DILocation(line: 68, column: 15, scope: !208)
!220 = !DILocation(line: 67, column: 44, scope: !208)
!221 = !DILocalVariable(name: "min_p", scope: !47, file: !8, line: 49, type: !159)
!222 = !DILocation(line: 49, column: 10, scope: !47)
!223 = !DILocation(line: 66, column: 7, scope: !208)
!224 = !DILocation(line: 70, column: 12, scope: !225)
!225 = distinct !DILexicalBlock(scope: !208, file: !8, line: 70, column: 7)
!226 = !DILocation(line: 70, column: 27, scope: !227)
!227 = distinct !DILexicalBlock(scope: !225, file: !8, line: 70, column: 7)
!228 = !DILocation(line: 70, column: 7, scope: !225)
!229 = !DILocation(line: 71, column: 22, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !8, line: 70, column: 41)
!231 = !DILocation(line: 71, column: 27, scope: !230)
!232 = !DILocation(line: 71, column: 32, scope: !230)
!233 = !DILocation(line: 71, column: 13, scope: !230)
!234 = !DILocation(line: 72, column: 29, scope: !230)
!235 = !DILocation(line: 72, column: 34, scope: !230)
!236 = !DILocation(line: 72, column: 13, scope: !230)
!237 = !DILocation(line: 71, column: 40, scope: !230)
!238 = !DILocation(line: 73, column: 27, scope: !230)
!239 = !DILocation(line: 73, column: 40, scope: !230)
!240 = !DILocation(line: 73, column: 38, scope: !230)
!241 = !DILocation(line: 73, column: 13, scope: !230)
!242 = !DILocation(line: 72, column: 42, scope: !230)
!243 = !DILocalVariable(name: "p", scope: !47, file: !8, line: 49, type: !159)
!244 = !DILocation(line: 49, column: 17, scope: !47)
!245 = !DILocation(line: 74, column: 15, scope: !246)
!246 = distinct !DILexicalBlock(scope: !230, file: !8, line: 74, column: 13)
!247 = !DILocation(line: 74, column: 13, scope: !230)
!248 = !DILocation(line: 76, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !8, line: 74, column: 24)
!250 = !DILocation(line: 77, column: 7, scope: !230)
!251 = !DILocation(line: 70, column: 37, scope: !227)
!252 = !DILocation(line: 70, column: 7, scope: !227)
!253 = distinct !{!253, !228, !254, !255}
!254 = !DILocation(line: 77, column: 7, scope: !225)
!255 = !{!"llvm.loop.name", !"L_prev_state"}
!256 = !DILocation(line: 78, column: 15, scope: !208)
!257 = !DILocation(line: 78, column: 20, scope: !208)
!258 = !DILocation(line: 78, column: 7, scope: !208)
!259 = !DILocation(line: 78, column: 28, scope: !208)
!260 = !DILocation(line: 79, column: 5, scope: !208)
!261 = !DILocation(line: 63, column: 35, scope: !203)
!262 = !DILocation(line: 63, column: 5, scope: !203)
!263 = distinct !{!263, !204, !264, !265}
!264 = !DILocation(line: 79, column: 5, scope: !200)
!265 = !{!"llvm.loop.name", !"L_curr_state"}
!266 = !DILocation(line: 80, column: 3, scope: !201)
!267 = !DILocation(line: 61, column: 25, scope: !194)
!268 = !DILocation(line: 61, column: 3, scope: !194)
!269 = distinct !{!269, !195, !270, !271}
!270 = !DILocation(line: 80, column: 3, scope: !192)
!271 = !{!"llvm.loop.name", !"L_timestep"}
!272 = !DILocalVariable(name: "min_s", scope: !47, file: !8, line: 50, type: !165)
!273 = !DILocation(line: 50, column: 11, scope: !47)
!274 = !DILocation(line: 84, column: 32, scope: !47)
!275 = !DILocation(line: 84, column: 11, scope: !47)
!276 = !DILocation(line: 84, column: 3, scope: !47)
!277 = !DILocation(line: 86, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !47, file: !8, line: 86, column: 3)
!279 = !DILocation(line: 86, column: 17, scope: !280)
!280 = distinct !DILexicalBlock(scope: !278, file: !8, line: 86, column: 3)
!281 = !DILocation(line: 86, column: 3, scope: !278)
!282 = !DILocation(line: 87, column: 30, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !8, line: 86, column: 28)
!284 = !DILocation(line: 87, column: 9, scope: !283)
!285 = !DILocation(line: 88, column: 11, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !8, line: 88, column: 9)
!287 = !DILocation(line: 88, column: 9, scope: !283)
!288 = !DILocation(line: 91, column: 5, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !8, line: 88, column: 20)
!290 = !DILocation(line: 92, column: 3, scope: !283)
!291 = !DILocation(line: 86, column: 24, scope: !280)
!292 = !DILocation(line: 86, column: 3, scope: !280)
!293 = distinct !{!293, !281, !294, !295}
!294 = !DILocation(line: 92, column: 3, scope: !278)
!295 = !{!"llvm.loop.name", !"L_end"}
!296 = !DILocation(line: 93, column: 3, scope: !47)
!297 = !DILocation(line: 93, column: 17, scope: !47)
!298 = !DILocation(line: 97, column: 8, scope: !299)
!299 = distinct !DILexicalBlock(scope: !47, file: !8, line: 97, column: 3)
!300 = !DILocation(line: 97, column: 23, scope: !301)
!301 = distinct !DILexicalBlock(scope: !299, file: !8, line: 97, column: 3)
!302 = !DILocation(line: 97, column: 3, scope: !299)
!303 = !DILocation(line: 99, column: 21, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !8, line: 97, column: 34)
!305 = !DILocation(line: 99, column: 26, scope: !304)
!306 = !DILocation(line: 99, column: 13, scope: !304)
!307 = !DILocation(line: 100, column: 30, scope: !304)
!308 = !DILocation(line: 100, column: 44, scope: !304)
!309 = !DILocation(line: 100, column: 37, scope: !304)
!310 = !DILocation(line: 100, column: 35, scope: !304)
!311 = !DILocation(line: 100, column: 13, scope: !304)
!312 = !DILocation(line: 99, column: 35, scope: !304)
!313 = !DILocation(line: 99, column: 5, scope: !304)
!314 = !DILocation(line: 102, column: 10, scope: !315)
!315 = distinct !DILexicalBlock(scope: !304, file: !8, line: 102, column: 5)
!316 = !DILocation(line: 102, column: 19, scope: !317)
!317 = distinct !DILexicalBlock(scope: !315, file: !8, line: 102, column: 5)
!318 = !DILocation(line: 102, column: 5, scope: !315)
!319 = !DILocation(line: 103, column: 19, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !8, line: 102, column: 30)
!321 = !DILocation(line: 103, column: 24, scope: !320)
!322 = !DILocation(line: 103, column: 11, scope: !320)
!323 = !DILocation(line: 103, column: 44, scope: !320)
!324 = !DILocation(line: 103, column: 58, scope: !320)
!325 = !DILocation(line: 103, column: 51, scope: !320)
!326 = !DILocation(line: 103, column: 49, scope: !320)
!327 = !DILocation(line: 103, column: 31, scope: !320)
!328 = !DILocation(line: 103, column: 29, scope: !320)
!329 = !DILocation(line: 104, column: 13, scope: !330)
!330 = distinct !DILexicalBlock(scope: !320, file: !8, line: 104, column: 11)
!331 = !DILocation(line: 104, column: 11, scope: !320)
!332 = !DILocation(line: 107, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !8, line: 104, column: 22)
!334 = !DILocation(line: 108, column: 5, scope: !320)
!335 = !DILocation(line: 102, column: 26, scope: !317)
!336 = !DILocation(line: 102, column: 5, scope: !317)
!337 = distinct !{!337, !318, !338, !339}
!338 = !DILocation(line: 108, column: 5, scope: !315)
!339 = !{!"llvm.loop.name", !"L_state"}
!340 = !DILocation(line: 109, column: 5, scope: !304)
!341 = !DILocation(line: 109, column: 13, scope: !304)
!342 = !DILocation(line: 110, column: 3, scope: !304)
!343 = !DILocation(line: 97, column: 30, scope: !301)
!344 = !DILocation(line: 97, column: 3, scope: !301)
!345 = distinct !{!345, !302, !346, !347}
!346 = !DILocation(line: 110, column: 3, scope: !299)
!347 = !{!"llvm.loop.name", !"L_backtrack"}
!348 = !DILocation(line: 112, column: 28, scope: !47)
!349 = !DILocation(line: 112, column: 3, scope: !47)
!350 = !DILocation(line: 113, column: 1, scope: !47)
