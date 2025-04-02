; ModuleID = '/workspace/examples/viterbi/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @hls_top(i32 %n_tokens, i32* "fpga.decayed.dim.hint"="140" %xobs, i32* "fpga.decayed.dim.hint"="64" %xinit, i32* "fpga.decayed.dim.hint"="4096" %xtransition, i32* "fpga.decayed.dim.hint"="4096" %xemission, i32* "fpga.decayed.dim.hint"="140" %xpath) #0 !dbg !7 !fpga.function.pragma !13 {
entry:
  %obs = alloca [140 x i32], align 4
  %init = alloca [64 x i32], align 4
  %transition = alloca [4096 x i32], align 4
  %emission = alloca [4096 x i32], align 4
  %path = alloca [140 x i32], align 4
  %llike = alloca [8960 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %n_tokens, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32* %xobs, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32* %xinit, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32* %xtransition, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32* %xemission, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32* %xpath, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xobs, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !28
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xinit, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !29
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xtransition, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !30
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xemission, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !31
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xpath, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !32
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %n_tokens, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !33
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !34
  %0 = bitcast [140 x i32]* %obs to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 560, i8* %0) #9, !dbg !35
  call void @llvm.dbg.declare(metadata [140 x i32]* %obs, metadata !36, metadata !DIExpression()), !dbg !40
  %1 = bitcast [64 x i32]* %init to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %1) #9, !dbg !41
  call void @llvm.dbg.declare(metadata [64 x i32]* %init, metadata !42, metadata !DIExpression()), !dbg !46
  %2 = bitcast [4096 x i32]* %transition to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %2) #9, !dbg !47
  call void @llvm.dbg.declare(metadata [4096 x i32]* %transition, metadata !48, metadata !DIExpression()), !dbg !52
  %3 = bitcast [4096 x i32]* %emission to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %3) #9, !dbg !53
  call void @llvm.dbg.declare(metadata [4096 x i32]* %emission, metadata !54, metadata !DIExpression()), !dbg !55
  %4 = bitcast [140 x i32]* %path to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 560, i8* %4) #9, !dbg !56
  call void @llvm.dbg.declare(metadata [140 x i32]* %path, metadata !57, metadata !DIExpression()), !dbg !58
  br label %VITIS_LOOP_28_1, !dbg !56

VITIS_LOOP_28_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !59, metadata !DIExpression()), !dbg !61
  br label %for.cond, !dbg !62

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_28_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_28_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !59, metadata !DIExpression()), !dbg !61
  %cmp = icmp slt i32 %i.0, 140, !dbg !63
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !65

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !66
  %arrayidx = getelementptr inbounds i32, i32* %xobs, i64 %idxprom, !dbg !66
  %5 = load i32, i32* %arrayidx, align 4, !dbg !66
  %idxprom1 = sext i32 %i.0 to i64, !dbg !67
  %arrayidx2 = getelementptr inbounds [140 x i32], [140 x i32]* %obs, i64 0, i64 %idxprom1, !dbg !67
  store i32 %5, i32* %arrayidx2, align 4, !dbg !68
  br label %for.inc, !dbg !67

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !69
  call void @llvm.dbg.value(metadata i32 %inc, metadata !59, metadata !DIExpression()), !dbg !61
  br label %for.cond, !dbg !70, !llvm.loop !71

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_30_2, !dbg !72

VITIS_LOOP_30_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !76
  br label %for.cond4, !dbg !77

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_30_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_30_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !74, metadata !DIExpression()), !dbg !76
  %cmp5 = icmp slt i32 %i3.0, 64, !dbg !78
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !80

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end14

for.body7:                                        ; preds = %for.cond4
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !81
  %arrayidx9 = getelementptr inbounds i32, i32* %xinit, i64 %idxprom8, !dbg !81
  %6 = load i32, i32* %arrayidx9, align 4, !dbg !81
  %idxprom10 = sext i32 %i3.0 to i64, !dbg !82
  %arrayidx11 = getelementptr inbounds [64 x i32], [64 x i32]* %init, i64 0, i64 %idxprom10, !dbg !82
  store i32 %6, i32* %arrayidx11, align 4, !dbg !83
  br label %for.inc12, !dbg !82

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i3.0, 1, !dbg !84
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !74, metadata !DIExpression()), !dbg !76
  br label %for.cond4, !dbg !85, !llvm.loop !86

for.end14:                                        ; preds = %for.cond.cleanup6
  br label %VITIS_LOOP_32_3, !dbg !87

VITIS_LOOP_32_3:                                  ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !89, metadata !DIExpression()), !dbg !91
  br label %for.cond16, !dbg !92

for.cond16:                                       ; preds = %for.inc24, %VITIS_LOOP_32_3
  %i15.0 = phi i32 [ 0, %VITIS_LOOP_32_3 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %i15.0, metadata !89, metadata !DIExpression()), !dbg !91
  %cmp17 = icmp slt i32 %i15.0, 4096, !dbg !93
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18, !dbg !95

for.cond.cleanup18:                               ; preds = %for.cond16
  br label %for.end26

for.body19:                                       ; preds = %for.cond16
  %idxprom20 = sext i32 %i15.0 to i64, !dbg !96
  %arrayidx21 = getelementptr inbounds i32, i32* %xtransition, i64 %idxprom20, !dbg !96
  %7 = load i32, i32* %arrayidx21, align 4, !dbg !96
  %idxprom22 = sext i32 %i15.0 to i64, !dbg !97
  %arrayidx23 = getelementptr inbounds [4096 x i32], [4096 x i32]* %transition, i64 0, i64 %idxprom22, !dbg !97
  store i32 %7, i32* %arrayidx23, align 4, !dbg !98
  br label %for.inc24, !dbg !97

for.inc24:                                        ; preds = %for.body19
  %inc25 = add nsw i32 %i15.0, 1, !dbg !99
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !89, metadata !DIExpression()), !dbg !91
  br label %for.cond16, !dbg !100, !llvm.loop !101

for.end26:                                        ; preds = %for.cond.cleanup18
  br label %VITIS_LOOP_34_4, !dbg !102

VITIS_LOOP_34_4:                                  ; preds = %for.end26
  call void @llvm.dbg.value(metadata i32 0, metadata !104, metadata !DIExpression()), !dbg !106
  br label %for.cond28, !dbg !107

for.cond28:                                       ; preds = %for.inc36, %VITIS_LOOP_34_4
  %i27.0 = phi i32 [ 0, %VITIS_LOOP_34_4 ], [ %inc37, %for.inc36 ]
  call void @llvm.dbg.value(metadata i32 %i27.0, metadata !104, metadata !DIExpression()), !dbg !106
  %mul = mul nsw i32 64, %n_tokens, !dbg !108
  %cmp29 = icmp slt i32 %i27.0, %mul, !dbg !110
  br i1 %cmp29, label %for.body31, label %for.cond.cleanup30, !dbg !111

for.cond.cleanup30:                               ; preds = %for.cond28
  br label %for.end38

for.body31:                                       ; preds = %for.cond28
  %idxprom32 = sext i32 %i27.0 to i64, !dbg !112
  %arrayidx33 = getelementptr inbounds i32, i32* %xemission, i64 %idxprom32, !dbg !112
  %8 = load i32, i32* %arrayidx33, align 4, !dbg !112
  %idxprom34 = sext i32 %i27.0 to i64, !dbg !113
  %arrayidx35 = getelementptr inbounds [4096 x i32], [4096 x i32]* %emission, i64 0, i64 %idxprom34, !dbg !113
  store i32 %8, i32* %arrayidx35, align 4, !dbg !114
  br label %for.inc36, !dbg !113

for.inc36:                                        ; preds = %for.body31
  %inc37 = add nsw i32 %i27.0, 1, !dbg !115
  call void @llvm.dbg.value(metadata i32 %inc37, metadata !104, metadata !DIExpression()), !dbg !106
  br label %for.cond28, !dbg !116, !llvm.loop !117

for.end38:                                        ; preds = %for.cond.cleanup30
  call void @llvm.dbg.declare(metadata [8960 x i32]* %llike, metadata !120, metadata !DIExpression()), !dbg !125
  br label %L_init, !dbg !126

L_init:                                           ; preds = %for.end38
  call void @llvm.dbg.value(metadata i32 0, metadata !127, metadata !DIExpression()), !dbg !129
  br label %for.cond39, !dbg !130

for.cond39:                                       ; preds = %for.inc52, %L_init
  %s.0 = phi i32 [ 0, %L_init ], [ %inc53, %for.inc52 ]
  call void @llvm.dbg.value(metadata i32 %s.0, metadata !127, metadata !DIExpression()), !dbg !129
  %cmp40 = icmp slt i32 %s.0, 64, !dbg !132
  br i1 %cmp40, label %for.body41, label %for.end54, !dbg !134

for.body41:                                       ; preds = %for.cond39
  %idxprom42 = sext i32 %s.0 to i64, !dbg !135
  %arrayidx43 = getelementptr inbounds [64 x i32], [64 x i32]* %init, i64 0, i64 %idxprom42, !dbg !135
  %9 = load i32, i32* %arrayidx43, align 4, !dbg !135
  %mul44 = mul nsw i32 %s.0, %n_tokens, !dbg !137
  %arrayidx45 = getelementptr inbounds [140 x i32], [140 x i32]* %obs, i64 0, i64 0, !dbg !138
  %10 = load i32, i32* %arrayidx45, align 4, !dbg !138
  %add = add nsw i32 %mul44, %10, !dbg !139
  %idxprom46 = sext i32 %add to i64, !dbg !140
  %arrayidx47 = getelementptr inbounds [4096 x i32], [4096 x i32]* %emission, i64 0, i64 %idxprom46, !dbg !140
  %11 = load i32, i32* %arrayidx47, align 4, !dbg !140
  %add48 = add nsw i32 %9, %11, !dbg !141
  %add49 = add nsw i32 0, %s.0, !dbg !142
  %idxprom50 = sext i32 %add49 to i64, !dbg !143
  %arrayidx51 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom50, !dbg !143
  store i32 %add48, i32* %arrayidx51, align 4, !dbg !144
  br label %for.inc52, !dbg !145

for.inc52:                                        ; preds = %for.body41
  %inc53 = add nsw i32 %s.0, 1, !dbg !146
  call void @llvm.dbg.value(metadata i32 %inc53, metadata !127, metadata !DIExpression()), !dbg !129
  br label %for.cond39, !dbg !147, !llvm.loop !148

for.end54:                                        ; preds = %for.cond39
  br label %L_timestep, !dbg !149

L_timestep:                                       ; preds = %for.end54
  call void @llvm.dbg.value(metadata i32 1, metadata !151, metadata !DIExpression()), !dbg !153
  br label %for.cond55, !dbg !154

for.cond55:                                       ; preds = %for.inc108, %L_timestep
  %t.0 = phi i32 [ 1, %L_timestep ], [ %inc109, %for.inc108 ]
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !151, metadata !DIExpression()), !dbg !153
  %cmp56 = icmp slt i32 %t.0, 140, !dbg !156
  br i1 %cmp56, label %for.body57, label %for.end110, !dbg !158

for.body57:                                       ; preds = %for.cond55
  br label %L_curr_state, !dbg !159

L_curr_state:                                     ; preds = %for.body57
  call void @llvm.dbg.value(metadata i32 0, metadata !160, metadata !DIExpression()), !dbg !161
  br label %for.cond58, !dbg !162

for.cond58:                                       ; preds = %for.inc105, %L_curr_state
  %curr.0 = phi i32 [ 0, %L_curr_state ], [ %inc106, %for.inc105 ]
  call void @llvm.dbg.value(metadata i32 %curr.0, metadata !160, metadata !DIExpression()), !dbg !161
  %cmp59 = icmp slt i32 %curr.0, 64, !dbg !165
  br i1 %cmp59, label %for.body60, label %for.end107, !dbg !167

for.body60:                                       ; preds = %for.cond58
  call void @llvm.dbg.value(metadata i32 0, metadata !168, metadata !DIExpression()), !dbg !169
  %sub = sub nsw i32 %t.0, 1, !dbg !170
  %mul61 = mul nsw i32 %sub, 64, !dbg !172
  %add62 = add nsw i32 %mul61, 0, !dbg !173
  %idxprom63 = sext i32 %add62 to i64, !dbg !174
  %arrayidx64 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom63, !dbg !174
  %12 = load i32, i32* %arrayidx64, align 4, !dbg !174
  %mul65 = mul nsw i32 0, 64, !dbg !175
  %add66 = add nsw i32 %mul65, %curr.0, !dbg !176
  %idxprom67 = sext i32 %add66 to i64, !dbg !177
  %arrayidx68 = getelementptr inbounds [4096 x i32], [4096 x i32]* %transition, i64 0, i64 %idxprom67, !dbg !177
  %13 = load i32, i32* %arrayidx68, align 4, !dbg !177
  %add69 = add nsw i32 %12, %13, !dbg !178
  %mul70 = mul nsw i32 %curr.0, %n_tokens, !dbg !179
  %idxprom71 = sext i32 %t.0 to i64, !dbg !180
  %arrayidx72 = getelementptr inbounds [140 x i32], [140 x i32]* %obs, i64 0, i64 %idxprom71, !dbg !180
  %14 = load i32, i32* %arrayidx72, align 4, !dbg !180
  %add73 = add nsw i32 %mul70, %14, !dbg !181
  %idxprom74 = sext i32 %add73 to i64, !dbg !182
  %arrayidx75 = getelementptr inbounds [4096 x i32], [4096 x i32]* %emission, i64 0, i64 %idxprom74, !dbg !182
  %15 = load i32, i32* %arrayidx75, align 4, !dbg !182
  %add76 = add nsw i32 %add69, %15, !dbg !183
  call void @llvm.dbg.value(metadata i32 %add76, metadata !184, metadata !DIExpression()), !dbg !185
  br label %L_prev_state, !dbg !186

L_prev_state:                                     ; preds = %for.body60
  call void @llvm.dbg.value(metadata i32 1, metadata !168, metadata !DIExpression()), !dbg !169
  br label %for.cond77, !dbg !187

for.cond77:                                       ; preds = %for.inc98, %L_prev_state
  %prev.0 = phi i32 [ 1, %L_prev_state ], [ %inc99, %for.inc98 ]
  %min_p.0 = phi i32 [ %add76, %L_prev_state ], [ %min_p.1, %for.inc98 ]
  call void @llvm.dbg.value(metadata i32 %min_p.0, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %prev.0, metadata !168, metadata !DIExpression()), !dbg !169
  %cmp78 = icmp slt i32 %prev.0, 64, !dbg !189
  br i1 %cmp78, label %for.body79, label %for.end100, !dbg !191

for.body79:                                       ; preds = %for.cond77
  %sub80 = sub nsw i32 %t.0, 1, !dbg !192
  %mul81 = mul nsw i32 %sub80, 64, !dbg !194
  %add82 = add nsw i32 %mul81, %prev.0, !dbg !195
  %idxprom83 = sext i32 %add82 to i64, !dbg !196
  %arrayidx84 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom83, !dbg !196
  %16 = load i32, i32* %arrayidx84, align 4, !dbg !196
  %mul85 = mul nsw i32 %prev.0, 64, !dbg !197
  %add86 = add nsw i32 %mul85, %curr.0, !dbg !198
  %idxprom87 = sext i32 %add86 to i64, !dbg !199
  %arrayidx88 = getelementptr inbounds [4096 x i32], [4096 x i32]* %transition, i64 0, i64 %idxprom87, !dbg !199
  %17 = load i32, i32* %arrayidx88, align 4, !dbg !199
  %add89 = add nsw i32 %16, %17, !dbg !200
  %mul90 = mul nsw i32 %curr.0, %n_tokens, !dbg !201
  %idxprom91 = sext i32 %t.0 to i64, !dbg !202
  %arrayidx92 = getelementptr inbounds [140 x i32], [140 x i32]* %obs, i64 0, i64 %idxprom91, !dbg !202
  %18 = load i32, i32* %arrayidx92, align 4, !dbg !202
  %add93 = add nsw i32 %mul90, %18, !dbg !203
  %idxprom94 = sext i32 %add93 to i64, !dbg !204
  %arrayidx95 = getelementptr inbounds [4096 x i32], [4096 x i32]* %emission, i64 0, i64 %idxprom94, !dbg !204
  %19 = load i32, i32* %arrayidx95, align 4, !dbg !204
  %add96 = add nsw i32 %add89, %19, !dbg !205
  call void @llvm.dbg.value(metadata i32 %add96, metadata !206, metadata !DIExpression()), !dbg !207
  %cmp97 = icmp slt i32 %add96, %min_p.0, !dbg !208
  br i1 %cmp97, label %if.then, label %if.end, !dbg !210

if.then:                                          ; preds = %for.body79
  call void @llvm.dbg.value(metadata i32 %add96, metadata !184, metadata !DIExpression()), !dbg !185
  br label %if.end, !dbg !211

if.end:                                           ; preds = %if.then, %for.body79
  %min_p.1 = phi i32 [ %add96, %if.then ], [ %min_p.0, %for.body79 ]
  call void @llvm.dbg.value(metadata i32 %min_p.1, metadata !184, metadata !DIExpression()), !dbg !185
  br label %for.inc98, !dbg !213

for.inc98:                                        ; preds = %if.end
  %inc99 = add nsw i32 %prev.0, 1, !dbg !214
  call void @llvm.dbg.value(metadata i32 %inc99, metadata !168, metadata !DIExpression()), !dbg !169
  br label %for.cond77, !dbg !215, !llvm.loop !216

for.end100:                                       ; preds = %for.cond77
  %mul101 = mul nsw i32 %t.0, 64, !dbg !219
  %add102 = add nsw i32 %mul101, %curr.0, !dbg !220
  %idxprom103 = sext i32 %add102 to i64, !dbg !221
  %arrayidx104 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom103, !dbg !221
  store i32 %min_p.0, i32* %arrayidx104, align 4, !dbg !222
  br label %for.inc105, !dbg !223

for.inc105:                                       ; preds = %for.end100
  %inc106 = add nsw i32 %curr.0, 1, !dbg !224
  call void @llvm.dbg.value(metadata i32 %inc106, metadata !160, metadata !DIExpression()), !dbg !161
  br label %for.cond58, !dbg !225, !llvm.loop !226

for.end107:                                       ; preds = %for.cond58
  br label %for.inc108, !dbg !229

for.inc108:                                       ; preds = %for.end107
  %inc109 = add nsw i32 %t.0, 1, !dbg !230
  call void @llvm.dbg.value(metadata i32 %inc109, metadata !151, metadata !DIExpression()), !dbg !153
  br label %for.cond55, !dbg !231, !llvm.loop !232

for.end110:                                       ; preds = %for.cond55
  call void @llvm.dbg.value(metadata i32 0, metadata !235, metadata !DIExpression()), !dbg !236
  %add111 = add nsw i32 8896, 0, !dbg !237
  %idxprom112 = sext i32 %add111 to i64, !dbg !238
  %arrayidx113 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom112, !dbg !238
  %20 = load i32, i32* %arrayidx113, align 4, !dbg !238
  call void @llvm.dbg.value(metadata i32 %20, metadata !184, metadata !DIExpression()), !dbg !185
  br label %L_end, !dbg !239

L_end:                                            ; preds = %for.end110
  call void @llvm.dbg.value(metadata i32 1, metadata !127, metadata !DIExpression()), !dbg !129
  br label %for.cond114, !dbg !240

for.cond114:                                      ; preds = %for.inc123, %L_end
  %min_p.2 = phi i32 [ %20, %L_end ], [ %min_p.3, %for.inc123 ]
  %min_s.0 = phi i32 [ 0, %L_end ], [ %min_s.1, %for.inc123 ]
  %s.1 = phi i32 [ 1, %L_end ], [ %inc124, %for.inc123 ]
  call void @llvm.dbg.value(metadata i32 %s.1, metadata !127, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 %min_s.0, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 %min_p.2, metadata !184, metadata !DIExpression()), !dbg !185
  %cmp115 = icmp slt i32 %s.1, 64, !dbg !242
  br i1 %cmp115, label %for.body116, label %for.end125, !dbg !244

for.body116:                                      ; preds = %for.cond114
  %add117 = add nsw i32 8896, %s.1, !dbg !245
  %idxprom118 = sext i32 %add117 to i64, !dbg !247
  %arrayidx119 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom118, !dbg !247
  %21 = load i32, i32* %arrayidx119, align 4, !dbg !247
  call void @llvm.dbg.value(metadata i32 %21, metadata !206, metadata !DIExpression()), !dbg !207
  %cmp120 = icmp slt i32 %21, %min_p.2, !dbg !248
  br i1 %cmp120, label %if.then121, label %if.end122, !dbg !250

if.then121:                                       ; preds = %for.body116
  call void @llvm.dbg.value(metadata i32 %21, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %s.1, metadata !235, metadata !DIExpression()), !dbg !236
  br label %if.end122, !dbg !251

if.end122:                                        ; preds = %if.then121, %for.body116
  %min_p.3 = phi i32 [ %21, %if.then121 ], [ %min_p.2, %for.body116 ]
  %min_s.1 = phi i32 [ %s.1, %if.then121 ], [ %min_s.0, %for.body116 ]
  call void @llvm.dbg.value(metadata i32 %min_s.1, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 %min_p.3, metadata !184, metadata !DIExpression()), !dbg !185
  br label %for.inc123, !dbg !253

for.inc123:                                       ; preds = %if.end122
  %inc124 = add nsw i32 %s.1, 1, !dbg !254
  call void @llvm.dbg.value(metadata i32 %inc124, metadata !127, metadata !DIExpression()), !dbg !129
  br label %for.cond114, !dbg !255, !llvm.loop !256

for.end125:                                       ; preds = %for.cond114
  %arrayidx126 = getelementptr inbounds [140 x i32], [140 x i32]* %path, i64 0, i64 139, !dbg !259
  store i32 %min_s.0, i32* %arrayidx126, align 4, !dbg !260
  br label %L_backtrack, !dbg !259

L_backtrack:                                      ; preds = %for.end125
  call void @llvm.dbg.value(metadata i32 138, metadata !151, metadata !DIExpression()), !dbg !153
  br label %for.cond127, !dbg !261

for.cond127:                                      ; preds = %for.inc165, %L_backtrack
  %t.1 = phi i32 [ 138, %L_backtrack ], [ %dec, %for.inc165 ]
  call void @llvm.dbg.value(metadata i32 %t.1, metadata !151, metadata !DIExpression()), !dbg !153
  %cmp128 = icmp sge i32 %t.1, 0, !dbg !263
  br i1 %cmp128, label %for.body129, label %for.end166, !dbg !265

for.body129:                                      ; preds = %for.cond127
  call void @llvm.dbg.value(metadata i32 0, metadata !235, metadata !DIExpression()), !dbg !236
  %mul130 = mul nsw i32 %t.1, 64, !dbg !266
  %add131 = add nsw i32 %mul130, 0, !dbg !268
  %idxprom132 = sext i32 %add131 to i64, !dbg !269
  %arrayidx133 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom132, !dbg !269
  %22 = load i32, i32* %arrayidx133, align 4, !dbg !269
  %mul134 = mul nsw i32 0, 64, !dbg !270
  %add135 = add nsw i32 %t.1, 1, !dbg !271
  %idxprom136 = sext i32 %add135 to i64, !dbg !272
  %arrayidx137 = getelementptr inbounds [140 x i32], [140 x i32]* %path, i64 0, i64 %idxprom136, !dbg !272
  %23 = load i32, i32* %arrayidx137, align 4, !dbg !272
  %add138 = add nsw i32 %mul134, %23, !dbg !273
  %idxprom139 = sext i32 %add138 to i64, !dbg !274
  %arrayidx140 = getelementptr inbounds [4096 x i32], [4096 x i32]* %transition, i64 0, i64 %idxprom139, !dbg !274
  %24 = load i32, i32* %arrayidx140, align 4, !dbg !274
  %add141 = add nsw i32 %22, %24, !dbg !275
  call void @llvm.dbg.value(metadata i32 %add141, metadata !184, metadata !DIExpression()), !dbg !185
  br label %L_state, !dbg !276

L_state:                                          ; preds = %for.body129
  call void @llvm.dbg.value(metadata i32 1, metadata !127, metadata !DIExpression()), !dbg !129
  br label %for.cond142, !dbg !277

for.cond142:                                      ; preds = %for.inc160, %L_state
  %min_p.4 = phi i32 [ %add141, %L_state ], [ %min_p.5, %for.inc160 ]
  %min_s.2 = phi i32 [ 0, %L_state ], [ %min_s.3, %for.inc160 ]
  %s.2 = phi i32 [ 1, %L_state ], [ %inc161, %for.inc160 ]
  call void @llvm.dbg.value(metadata i32 %s.2, metadata !127, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 %min_s.2, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 %min_p.4, metadata !184, metadata !DIExpression()), !dbg !185
  %cmp143 = icmp slt i32 %s.2, 64, !dbg !279
  br i1 %cmp143, label %for.body144, label %for.end162, !dbg !281

for.body144:                                      ; preds = %for.cond142
  %mul145 = mul nsw i32 %t.1, 64, !dbg !282
  %add146 = add nsw i32 %mul145, %s.2, !dbg !284
  %idxprom147 = sext i32 %add146 to i64, !dbg !285
  %arrayidx148 = getelementptr inbounds [8960 x i32], [8960 x i32]* %llike, i64 0, i64 %idxprom147, !dbg !285
  %25 = load i32, i32* %arrayidx148, align 4, !dbg !285
  %mul149 = mul nsw i32 %s.2, 64, !dbg !286
  %add150 = add nsw i32 %t.1, 1, !dbg !287
  %idxprom151 = sext i32 %add150 to i64, !dbg !288
  %arrayidx152 = getelementptr inbounds [140 x i32], [140 x i32]* %path, i64 0, i64 %idxprom151, !dbg !288
  %26 = load i32, i32* %arrayidx152, align 4, !dbg !288
  %add153 = add nsw i32 %mul149, %26, !dbg !289
  %idxprom154 = sext i32 %add153 to i64, !dbg !290
  %arrayidx155 = getelementptr inbounds [4096 x i32], [4096 x i32]* %transition, i64 0, i64 %idxprom154, !dbg !290
  %27 = load i32, i32* %arrayidx155, align 4, !dbg !290
  %add156 = add nsw i32 %25, %27, !dbg !291
  call void @llvm.dbg.value(metadata i32 %add156, metadata !206, metadata !DIExpression()), !dbg !207
  %cmp157 = icmp slt i32 %add156, %min_p.4, !dbg !292
  br i1 %cmp157, label %if.then158, label %if.end159, !dbg !294

if.then158:                                       ; preds = %for.body144
  call void @llvm.dbg.value(metadata i32 %add156, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i32 %s.2, metadata !235, metadata !DIExpression()), !dbg !236
  br label %if.end159, !dbg !295

if.end159:                                        ; preds = %if.then158, %for.body144
  %min_p.5 = phi i32 [ %add156, %if.then158 ], [ %min_p.4, %for.body144 ]
  %min_s.3 = phi i32 [ %s.2, %if.then158 ], [ %min_s.2, %for.body144 ]
  call void @llvm.dbg.value(metadata i32 %min_s.3, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 %min_p.5, metadata !184, metadata !DIExpression()), !dbg !185
  br label %for.inc160, !dbg !297

for.inc160:                                       ; preds = %if.end159
  %inc161 = add nsw i32 %s.2, 1, !dbg !298
  call void @llvm.dbg.value(metadata i32 %inc161, metadata !127, metadata !DIExpression()), !dbg !129
  br label %for.cond142, !dbg !299, !llvm.loop !300

for.end162:                                       ; preds = %for.cond142
  %idxprom163 = sext i32 %t.1 to i64, !dbg !303
  %arrayidx164 = getelementptr inbounds [140 x i32], [140 x i32]* %path, i64 0, i64 %idxprom163, !dbg !303
  store i32 %min_s.2, i32* %arrayidx164, align 4, !dbg !304
  br label %for.inc165, !dbg !305

for.inc165:                                       ; preds = %for.end162
  %dec = add nsw i32 %t.1, -1, !dbg !306
  call void @llvm.dbg.value(metadata i32 %dec, metadata !151, metadata !DIExpression()), !dbg !153
  br label %for.cond127, !dbg !307, !llvm.loop !308

for.end166:                                       ; preds = %for.cond127
  br label %VITIS_LOOP_103_5, !dbg !309

VITIS_LOOP_103_5:                                 ; preds = %for.end166
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !313
  br label %for.cond168, !dbg !314

for.cond168:                                      ; preds = %for.inc176, %VITIS_LOOP_103_5
  %i167.0 = phi i32 [ 0, %VITIS_LOOP_103_5 ], [ %inc177, %for.inc176 ]
  call void @llvm.dbg.value(metadata i32 %i167.0, metadata !311, metadata !DIExpression()), !dbg !313
  %cmp169 = icmp slt i32 %i167.0, 140, !dbg !315
  br i1 %cmp169, label %for.body171, label %for.cond.cleanup170, !dbg !317

for.cond.cleanup170:                              ; preds = %for.cond168
  br label %for.end178

for.body171:                                      ; preds = %for.cond168
  %idxprom172 = sext i32 %i167.0 to i64, !dbg !318
  %arrayidx173 = getelementptr inbounds [140 x i32], [140 x i32]* %path, i64 0, i64 %idxprom172, !dbg !318
  %28 = load i32, i32* %arrayidx173, align 4, !dbg !318
  %idxprom174 = sext i32 %i167.0 to i64, !dbg !319
  %arrayidx175 = getelementptr inbounds i32, i32* %xpath, i64 %idxprom174, !dbg !319
  store i32 %28, i32* %arrayidx175, align 4, !dbg !320
  br label %for.inc176, !dbg !319

for.inc176:                                       ; preds = %for.body171
  %inc177 = add nsw i32 %i167.0, 1, !dbg !321
  call void @llvm.dbg.value(metadata i32 %inc177, metadata !311, metadata !DIExpression()), !dbg !313
  br label %for.cond168, !dbg !322, !llvm.loop !323

for.end178:                                       ; preds = %for.cond.cleanup170
  %29 = bitcast [140 x i32]* %path to i8*, !dbg !326
  call void @llvm.lifetime.end.p0i8(i64 560, i8* %29) #9, !dbg !326
  %30 = bitcast [4096 x i32]* %emission to i8*, !dbg !326
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %30) #9, !dbg !326
  %31 = bitcast [4096 x i32]* %transition to i8*, !dbg !326
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %31) #9, !dbg !326
  %32 = bitcast [64 x i32]* %init to i8*, !dbg !326
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %32) #9, !dbg !326
  %33 = bitcast [140 x i32]* %obs to i8*, !dbg !326
  call void @llvm.lifetime.end.p0i8(i64 560, i8* %33) #9, !dbg !326
  ret void, !dbg !326
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
attributes #4 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="4480" "xlx.source"="user" }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="2048" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="131072" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #9 = { nounwind }

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
!7 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 11, type: !9, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "viterbi.c", directory: "/workspace/examples/viterbi")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !12, !12, !12, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 11, column: 16, scope: !7)
!16 = !DILocalVariable(name: "n_tokens", arg: 1, scope: !7, file: !8, line: 11, type: !11)
!17 = !DILocation(line: 11, column: 60, scope: !7)
!18 = !DILocalVariable(name: "xobs", arg: 2, scope: !7, file: !8, line: 11, type: !12)
!19 = !DILocation(line: 11, column: 74, scope: !7)
!20 = !DILocalVariable(name: "xinit", arg: 3, scope: !7, file: !8, line: 11, type: !12)
!21 = !DILocation(line: 11, column: 89, scope: !7)
!22 = !DILocalVariable(name: "xtransition", arg: 4, scope: !7, file: !8, line: 12, type: !12)
!23 = !DILocation(line: 12, column: 18, scope: !7)
!24 = !DILocalVariable(name: "xemission", arg: 5, scope: !7, file: !8, line: 13, type: !12)
!25 = !DILocation(line: 13, column: 18, scope: !7)
!26 = !DILocalVariable(name: "xpath", arg: 6, scope: !7, file: !8, line: 13, type: !12)
!27 = !DILocation(line: 13, column: 42, scope: !7)
!28 = !DILocation(line: 14, column: 9, scope: !7)
!29 = !DILocation(line: 15, column: 9, scope: !7)
!30 = !DILocation(line: 16, column: 9, scope: !7)
!31 = !DILocation(line: 17, column: 9, scope: !7)
!32 = !DILocation(line: 18, column: 9, scope: !7)
!33 = !DILocation(line: 19, column: 9, scope: !7)
!34 = !DILocation(line: 20, column: 9, scope: !7)
!35 = !DILocation(line: 22, column: 2, scope: !7)
!36 = !DILocalVariable(name: "obs", scope: !7, file: !8, line: 22, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 4480, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 140)
!40 = !DILocation(line: 22, column: 6, scope: !7)
!41 = !DILocation(line: 23, column: 3, scope: !7)
!42 = !DILocalVariable(name: "init", scope: !7, file: !8, line: 23, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 64)
!46 = !DILocation(line: 23, column: 7, scope: !7)
!47 = !DILocation(line: 24, column: 3, scope: !7)
!48 = !DILocalVariable(name: "transition", scope: !7, file: !8, line: 24, type: !49)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 131072, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 4096)
!52 = !DILocation(line: 24, column: 7, scope: !7)
!53 = !DILocation(line: 25, column: 3, scope: !7)
!54 = !DILocalVariable(name: "emission", scope: !7, file: !8, line: 25, type: !49)
!55 = !DILocation(line: 25, column: 7, scope: !7)
!56 = !DILocation(line: 26, column: 3, scope: !7)
!57 = !DILocalVariable(name: "path", scope: !7, file: !8, line: 26, type: !37)
!58 = !DILocation(line: 26, column: 7, scope: !7)
!59 = !DILocalVariable(name: "i", scope: !60, file: !8, line: 28, type: !11)
!60 = distinct !DILexicalBlock(scope: !7, file: !8, line: 28, column: 20)
!61 = !DILocation(line: 28, column: 29, scope: !60)
!62 = !DILocation(line: 28, column: 25, scope: !60)
!63 = !DILocation(line: 28, column: 38, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !8, line: 28, column: 20)
!65 = !DILocation(line: 28, column: 20, scope: !60)
!66 = !DILocation(line: 29, column: 14, scope: !64)
!67 = !DILocation(line: 29, column: 5, scope: !64)
!68 = !DILocation(line: 29, column: 12, scope: !64)
!69 = !DILocation(line: 28, column: 46, scope: !64)
!70 = !DILocation(line: 28, column: 20, scope: !64)
!71 = distinct !{!71, !65, !72, !73}
!72 = !DILocation(line: 29, column: 20, scope: !60)
!73 = !{!"llvm.loop.name", !"VITIS_LOOP_28_1"}
!74 = !DILocalVariable(name: "i", scope: !75, file: !8, line: 30, type: !11)
!75 = distinct !DILexicalBlock(scope: !7, file: !8, line: 30, column: 20)
!76 = !DILocation(line: 30, column: 29, scope: !75)
!77 = !DILocation(line: 30, column: 25, scope: !75)
!78 = !DILocation(line: 30, column: 38, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !8, line: 30, column: 20)
!80 = !DILocation(line: 30, column: 20, scope: !75)
!81 = !DILocation(line: 31, column: 15, scope: !79)
!82 = !DILocation(line: 31, column: 5, scope: !79)
!83 = !DILocation(line: 31, column: 13, scope: !79)
!84 = !DILocation(line: 30, column: 45, scope: !79)
!85 = !DILocation(line: 30, column: 20, scope: !79)
!86 = distinct !{!86, !80, !87, !88}
!87 = !DILocation(line: 31, column: 22, scope: !75)
!88 = !{!"llvm.loop.name", !"VITIS_LOOP_30_2"}
!89 = !DILocalVariable(name: "i", scope: !90, file: !8, line: 32, type: !11)
!90 = distinct !DILexicalBlock(scope: !7, file: !8, line: 32, column: 20)
!91 = !DILocation(line: 32, column: 29, scope: !90)
!92 = !DILocation(line: 32, column: 25, scope: !90)
!93 = !DILocation(line: 32, column: 38, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !8, line: 32, column: 20)
!95 = !DILocation(line: 32, column: 20, scope: !90)
!96 = !DILocation(line: 33, column: 21, scope: !94)
!97 = !DILocation(line: 33, column: 5, scope: !94)
!98 = !DILocation(line: 33, column: 19, scope: !94)
!99 = !DILocation(line: 32, column: 50, scope: !94)
!100 = !DILocation(line: 32, column: 20, scope: !94)
!101 = distinct !{!101, !95, !102, !103}
!102 = !DILocation(line: 33, column: 34, scope: !90)
!103 = !{!"llvm.loop.name", !"VITIS_LOOP_32_3"}
!104 = !DILocalVariable(name: "i", scope: !105, file: !8, line: 34, type: !11)
!105 = distinct !DILexicalBlock(scope: !7, file: !8, line: 34, column: 20)
!106 = !DILocation(line: 34, column: 29, scope: !105)
!107 = !DILocation(line: 34, column: 25, scope: !105)
!108 = !DILocation(line: 34, column: 43, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !8, line: 34, column: 20)
!110 = !DILocation(line: 34, column: 38, scope: !109)
!111 = !DILocation(line: 34, column: 20, scope: !105)
!112 = !DILocation(line: 35, column: 19, scope: !109)
!113 = !DILocation(line: 35, column: 5, scope: !109)
!114 = !DILocation(line: 35, column: 17, scope: !109)
!115 = !DILocation(line: 34, column: 56, scope: !109)
!116 = !DILocation(line: 34, column: 20, scope: !109)
!117 = distinct !{!117, !111, !118, !119}
!118 = !DILocation(line: 35, column: 30, scope: !105)
!119 = !{!"llvm.loop.name", !"VITIS_LOOP_34_4"}
!120 = !DILocalVariable(name: "llike", scope: !7, file: !8, line: 37, type: !121)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 286720, elements: !123)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "prob_t", file: !8, line: 3, baseType: !11)
!123 = !{!124}
!124 = !DISubrange(count: 8960)
!125 = !DILocation(line: 37, column: 10, scope: !7)
!126 = !DILocation(line: 41, column: 3, scope: !7)
!127 = !DILocalVariable(name: "s", scope: !7, file: !8, line: 41, type: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "state_t", file: !8, line: 4, baseType: !11)
!129 = !DILocation(line: 41, column: 18, scope: !7)
!130 = !DILocation(line: 46, column: 8, scope: !131)
!131 = distinct !DILexicalBlock(scope: !7, file: !8, line: 46, column: 3)
!132 = !DILocation(line: 46, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !131, file: !8, line: 46, column: 3)
!134 = !DILocation(line: 46, column: 3, scope: !131)
!135 = !DILocation(line: 47, column: 20, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !8, line: 46, column: 28)
!137 = !DILocation(line: 47, column: 41, scope: !136)
!138 = !DILocation(line: 47, column: 54, scope: !136)
!139 = !DILocation(line: 47, column: 52, scope: !136)
!140 = !DILocation(line: 47, column: 30, scope: !136)
!141 = !DILocation(line: 47, column: 28, scope: !136)
!142 = !DILocation(line: 47, column: 13, scope: !136)
!143 = !DILocation(line: 47, column: 5, scope: !136)
!144 = !DILocation(line: 47, column: 18, scope: !136)
!145 = !DILocation(line: 48, column: 3, scope: !136)
!146 = !DILocation(line: 46, column: 24, scope: !133)
!147 = !DILocation(line: 46, column: 3, scope: !133)
!148 = distinct !{!148, !134, !149, !150}
!149 = !DILocation(line: 48, column: 3, scope: !131)
!150 = !{!"llvm.loop.name", !"L_init"}
!151 = !DILocalVariable(name: "t", scope: !7, file: !8, line: 38, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "step_t", file: !8, line: 5, baseType: !11)
!153 = !DILocation(line: 38, column: 10, scope: !7)
!154 = !DILocation(line: 52, column: 8, scope: !155)
!155 = distinct !DILexicalBlock(scope: !7, file: !8, line: 52, column: 3)
!156 = !DILocation(line: 52, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !155, file: !8, line: 52, column: 3)
!158 = !DILocation(line: 52, column: 3, scope: !155)
!159 = !DILocation(line: 52, column: 29, scope: !157)
!160 = !DILocalVariable(name: "curr", scope: !7, file: !8, line: 39, type: !128)
!161 = !DILocation(line: 39, column: 17, scope: !7)
!162 = !DILocation(line: 54, column: 10, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !8, line: 54, column: 5)
!164 = distinct !DILexicalBlock(scope: !157, file: !8, line: 52, column: 29)
!165 = !DILocation(line: 54, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !8, line: 54, column: 5)
!167 = !DILocation(line: 54, column: 5, scope: !163)
!168 = !DILocalVariable(name: "prev", scope: !7, file: !8, line: 39, type: !128)
!169 = !DILocation(line: 39, column: 11, scope: !7)
!170 = !DILocation(line: 57, column: 24, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !8, line: 54, column: 39)
!172 = !DILocation(line: 57, column: 29, scope: !171)
!173 = !DILocation(line: 57, column: 34, scope: !171)
!174 = !DILocation(line: 57, column: 15, scope: !171)
!175 = !DILocation(line: 58, column: 31, scope: !171)
!176 = !DILocation(line: 58, column: 36, scope: !171)
!177 = !DILocation(line: 58, column: 15, scope: !171)
!178 = !DILocation(line: 57, column: 42, scope: !171)
!179 = !DILocation(line: 59, column: 29, scope: !171)
!180 = !DILocation(line: 59, column: 42, scope: !171)
!181 = !DILocation(line: 59, column: 40, scope: !171)
!182 = !DILocation(line: 59, column: 15, scope: !171)
!183 = !DILocation(line: 58, column: 44, scope: !171)
!184 = !DILocalVariable(name: "min_p", scope: !7, file: !8, line: 40, type: !122)
!185 = !DILocation(line: 40, column: 10, scope: !7)
!186 = !DILocation(line: 57, column: 7, scope: !171)
!187 = !DILocation(line: 61, column: 12, scope: !188)
!188 = distinct !DILexicalBlock(scope: !171, file: !8, line: 61, column: 7)
!189 = !DILocation(line: 61, column: 27, scope: !190)
!190 = distinct !DILexicalBlock(scope: !188, file: !8, line: 61, column: 7)
!191 = !DILocation(line: 61, column: 7, scope: !188)
!192 = !DILocation(line: 62, column: 22, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !8, line: 61, column: 41)
!194 = !DILocation(line: 62, column: 27, scope: !193)
!195 = !DILocation(line: 62, column: 32, scope: !193)
!196 = !DILocation(line: 62, column: 13, scope: !193)
!197 = !DILocation(line: 63, column: 29, scope: !193)
!198 = !DILocation(line: 63, column: 34, scope: !193)
!199 = !DILocation(line: 63, column: 13, scope: !193)
!200 = !DILocation(line: 62, column: 40, scope: !193)
!201 = !DILocation(line: 64, column: 27, scope: !193)
!202 = !DILocation(line: 64, column: 40, scope: !193)
!203 = !DILocation(line: 64, column: 38, scope: !193)
!204 = !DILocation(line: 64, column: 13, scope: !193)
!205 = !DILocation(line: 63, column: 42, scope: !193)
!206 = !DILocalVariable(name: "p", scope: !7, file: !8, line: 40, type: !122)
!207 = !DILocation(line: 40, column: 17, scope: !7)
!208 = !DILocation(line: 65, column: 15, scope: !209)
!209 = distinct !DILexicalBlock(scope: !193, file: !8, line: 65, column: 13)
!210 = !DILocation(line: 65, column: 13, scope: !193)
!211 = !DILocation(line: 67, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !8, line: 65, column: 24)
!213 = !DILocation(line: 68, column: 7, scope: !193)
!214 = !DILocation(line: 61, column: 37, scope: !190)
!215 = !DILocation(line: 61, column: 7, scope: !190)
!216 = distinct !{!216, !191, !217, !218}
!217 = !DILocation(line: 68, column: 7, scope: !188)
!218 = !{!"llvm.loop.name", !"L_prev_state"}
!219 = !DILocation(line: 69, column: 15, scope: !171)
!220 = !DILocation(line: 69, column: 20, scope: !171)
!221 = !DILocation(line: 69, column: 7, scope: !171)
!222 = !DILocation(line: 69, column: 28, scope: !171)
!223 = !DILocation(line: 70, column: 5, scope: !171)
!224 = !DILocation(line: 54, column: 35, scope: !166)
!225 = !DILocation(line: 54, column: 5, scope: !166)
!226 = distinct !{!226, !167, !227, !228}
!227 = !DILocation(line: 70, column: 5, scope: !163)
!228 = !{!"llvm.loop.name", !"L_curr_state"}
!229 = !DILocation(line: 71, column: 3, scope: !164)
!230 = !DILocation(line: 52, column: 25, scope: !157)
!231 = !DILocation(line: 52, column: 3, scope: !157)
!232 = distinct !{!232, !158, !233, !234}
!233 = !DILocation(line: 71, column: 3, scope: !155)
!234 = !{!"llvm.loop.name", !"L_timestep"}
!235 = !DILocalVariable(name: "min_s", scope: !7, file: !8, line: 41, type: !128)
!236 = !DILocation(line: 41, column: 11, scope: !7)
!237 = !DILocation(line: 75, column: 32, scope: !7)
!238 = !DILocation(line: 75, column: 11, scope: !7)
!239 = !DILocation(line: 75, column: 3, scope: !7)
!240 = !DILocation(line: 77, column: 8, scope: !241)
!241 = distinct !DILexicalBlock(scope: !7, file: !8, line: 77, column: 3)
!242 = !DILocation(line: 77, column: 17, scope: !243)
!243 = distinct !DILexicalBlock(scope: !241, file: !8, line: 77, column: 3)
!244 = !DILocation(line: 77, column: 3, scope: !241)
!245 = !DILocation(line: 78, column: 30, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !8, line: 77, column: 28)
!247 = !DILocation(line: 78, column: 9, scope: !246)
!248 = !DILocation(line: 79, column: 11, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !8, line: 79, column: 9)
!250 = !DILocation(line: 79, column: 9, scope: !246)
!251 = !DILocation(line: 82, column: 5, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !8, line: 79, column: 20)
!253 = !DILocation(line: 83, column: 3, scope: !246)
!254 = !DILocation(line: 77, column: 24, scope: !243)
!255 = !DILocation(line: 77, column: 3, scope: !243)
!256 = distinct !{!256, !244, !257, !258}
!257 = !DILocation(line: 83, column: 3, scope: !241)
!258 = !{!"llvm.loop.name", !"L_end"}
!259 = !DILocation(line: 84, column: 3, scope: !7)
!260 = !DILocation(line: 84, column: 17, scope: !7)
!261 = !DILocation(line: 88, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !7, file: !8, line: 88, column: 3)
!263 = !DILocation(line: 88, column: 23, scope: !264)
!264 = distinct !DILexicalBlock(scope: !262, file: !8, line: 88, column: 3)
!265 = !DILocation(line: 88, column: 3, scope: !262)
!266 = !DILocation(line: 90, column: 21, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !8, line: 88, column: 34)
!268 = !DILocation(line: 90, column: 26, scope: !267)
!269 = !DILocation(line: 90, column: 13, scope: !267)
!270 = !DILocation(line: 91, column: 30, scope: !267)
!271 = !DILocation(line: 91, column: 44, scope: !267)
!272 = !DILocation(line: 91, column: 37, scope: !267)
!273 = !DILocation(line: 91, column: 35, scope: !267)
!274 = !DILocation(line: 91, column: 13, scope: !267)
!275 = !DILocation(line: 90, column: 35, scope: !267)
!276 = !DILocation(line: 90, column: 5, scope: !267)
!277 = !DILocation(line: 93, column: 10, scope: !278)
!278 = distinct !DILexicalBlock(scope: !267, file: !8, line: 93, column: 5)
!279 = !DILocation(line: 93, column: 19, scope: !280)
!280 = distinct !DILexicalBlock(scope: !278, file: !8, line: 93, column: 5)
!281 = !DILocation(line: 93, column: 5, scope: !278)
!282 = !DILocation(line: 94, column: 19, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !8, line: 93, column: 30)
!284 = !DILocation(line: 94, column: 24, scope: !283)
!285 = !DILocation(line: 94, column: 11, scope: !283)
!286 = !DILocation(line: 94, column: 44, scope: !283)
!287 = !DILocation(line: 94, column: 58, scope: !283)
!288 = !DILocation(line: 94, column: 51, scope: !283)
!289 = !DILocation(line: 94, column: 49, scope: !283)
!290 = !DILocation(line: 94, column: 31, scope: !283)
!291 = !DILocation(line: 94, column: 29, scope: !283)
!292 = !DILocation(line: 95, column: 13, scope: !293)
!293 = distinct !DILexicalBlock(scope: !283, file: !8, line: 95, column: 11)
!294 = !DILocation(line: 95, column: 11, scope: !283)
!295 = !DILocation(line: 98, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !8, line: 95, column: 22)
!297 = !DILocation(line: 99, column: 5, scope: !283)
!298 = !DILocation(line: 93, column: 26, scope: !280)
!299 = !DILocation(line: 93, column: 5, scope: !280)
!300 = distinct !{!300, !281, !301, !302}
!301 = !DILocation(line: 99, column: 5, scope: !278)
!302 = !{!"llvm.loop.name", !"L_state"}
!303 = !DILocation(line: 100, column: 5, scope: !267)
!304 = !DILocation(line: 100, column: 13, scope: !267)
!305 = !DILocation(line: 101, column: 3, scope: !267)
!306 = !DILocation(line: 88, column: 30, scope: !264)
!307 = !DILocation(line: 88, column: 3, scope: !264)
!308 = distinct !{!308, !265, !309, !310}
!309 = !DILocation(line: 101, column: 3, scope: !262)
!310 = !{!"llvm.loop.name", !"L_backtrack"}
!311 = !DILocalVariable(name: "i", scope: !312, file: !8, line: 103, type: !11)
!312 = distinct !DILexicalBlock(scope: !7, file: !8, line: 103, column: 21)
!313 = !DILocation(line: 103, column: 30, scope: !312)
!314 = !DILocation(line: 103, column: 26, scope: !312)
!315 = !DILocation(line: 103, column: 39, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !8, line: 103, column: 21)
!317 = !DILocation(line: 103, column: 21, scope: !312)
!318 = !DILocation(line: 104, column: 16, scope: !316)
!319 = !DILocation(line: 104, column: 5, scope: !316)
!320 = !DILocation(line: 104, column: 14, scope: !316)
!321 = !DILocation(line: 103, column: 47, scope: !316)
!322 = !DILocation(line: 103, column: 21, scope: !316)
!323 = distinct !{!323, !317, !324, !325}
!324 = !DILocation(line: 104, column: 22, scope: !312)
!325 = !{!"llvm.loop.name", !"VITIS_LOOP_103_5"}
!326 = !DILocation(line: 105, column: 1, scope: !7)
