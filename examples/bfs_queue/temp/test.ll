; ModuleID = '/workspace/examples/bfs_queue/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @hls_top(i32 %starting_node, i32 %levels, i32 %node, i32* "fpga.decayed.dim.hint"="256" %xnodes_b, i32* "fpga.decayed.dim.hint"="256" %xnodes_e, i32* "fpga.decayed.dim.hint"="4096" %xedges, i32* "fpga.decayed.dim.hint"="256" %xlevel, i32* "fpga.decayed.dim.hint"="10" %xlevel_counts) #0 !dbg !7 !fpga.function.pragma !14 {
entry:
  %queue = alloca [256 x i32], align 4
  %nodes_edge_begin = alloca [256 x i32], align 4
  %nodes_edge_end = alloca [256 x i32], align 4
  %edges_dst = alloca [4096 x i32], align 4
  %level = alloca [256 x i32], align 4
  %level_counts = alloca [10 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %starting_node, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32 %levels, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 %node, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32* %xnodes_b, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32* %xnodes_e, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32* %xedges, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32* %xlevel, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i32* %xlevel_counts, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xnodes_b, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !33
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xnodes_e, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !34
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xedges, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !35
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xlevel, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !36
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xlevel_counts, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !37
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %starting_node, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !38
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %levels, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !39
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %node, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !40
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !41
  %0 = bitcast [256 x i32]* %queue to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %0) #9, !dbg !42
  call void @llvm.dbg.declare(metadata [256 x i32]* %queue, metadata !43, metadata !DIExpression()), !dbg !47
  %1 = bitcast [256 x i32]* %nodes_edge_begin to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %1) #9, !dbg !48
  call void @llvm.dbg.declare(metadata [256 x i32]* %nodes_edge_begin, metadata !49, metadata !DIExpression()), !dbg !51
  %2 = bitcast [256 x i32]* %nodes_edge_end to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %2) #9, !dbg !52
  call void @llvm.dbg.declare(metadata [256 x i32]* %nodes_edge_end, metadata !53, metadata !DIExpression()), !dbg !54
  %3 = bitcast [4096 x i32]* %edges_dst to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %3) #9, !dbg !55
  call void @llvm.dbg.declare(metadata [4096 x i32]* %edges_dst, metadata !56, metadata !DIExpression()), !dbg !60
  %4 = bitcast [256 x i32]* %level to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %4) #9, !dbg !61
  call void @llvm.dbg.declare(metadata [256 x i32]* %level, metadata !62, metadata !DIExpression()), !dbg !65
  %5 = bitcast [256 x i32]* %level to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 1024, i1 false), !dbg !65
  %6 = bitcast [10 x i32]* %level_counts to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %6) #9, !dbg !66
  call void @llvm.dbg.declare(metadata [10 x i32]* %level_counts, metadata !67, metadata !DIExpression()), !dbg !72
  %7 = bitcast [10 x i32]* %level_counts to i8*, !dbg !72
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 40, i1 false), !dbg !72
  br label %VITIS_LOOP_73_1, !dbg !66

VITIS_LOOP_73_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !75
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_73_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_73_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !73, metadata !DIExpression()), !dbg !75
  %cmp = icmp slt i32 %i.0, %node, !dbg !77
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !79

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !80
  %arrayidx = getelementptr inbounds i32, i32* %xnodes_b, i64 %idxprom, !dbg !80
  %8 = load i32, i32* %arrayidx, align 4, !dbg !80
  %idxprom1 = sext i32 %i.0 to i64, !dbg !81
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %nodes_edge_begin, i64 0, i64 %idxprom1, !dbg !81
  store i32 %8, i32* %arrayidx2, align 4, !dbg !82
  br label %for.inc, !dbg !81

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !83
  call void @llvm.dbg.value(metadata i32 %inc, metadata !73, metadata !DIExpression()), !dbg !75
  br label %for.cond, !dbg !84, !llvm.loop !85

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_75_2, !dbg !86

VITIS_LOOP_75_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()), !dbg !90
  br label %for.cond4, !dbg !91

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_75_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_75_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !88, metadata !DIExpression()), !dbg !90
  %cmp5 = icmp slt i32 %i3.0, %node, !dbg !92
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !94

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end14

for.body7:                                        ; preds = %for.cond4
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !95
  %arrayidx9 = getelementptr inbounds i32, i32* %xnodes_e, i64 %idxprom8, !dbg !95
  %9 = load i32, i32* %arrayidx9, align 4, !dbg !95
  %idxprom10 = sext i32 %i3.0 to i64, !dbg !96
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* %nodes_edge_end, i64 0, i64 %idxprom10, !dbg !96
  store i32 %9, i32* %arrayidx11, align 4, !dbg !97
  br label %for.inc12, !dbg !96

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i3.0, 1, !dbg !98
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !88, metadata !DIExpression()), !dbg !90
  br label %for.cond4, !dbg !99, !llvm.loop !100

for.end14:                                        ; preds = %for.cond.cleanup6
  br label %VITIS_LOOP_78_3, !dbg !101

VITIS_LOOP_78_3:                                  ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !103, metadata !DIExpression()), !dbg !105
  br label %for.cond16, !dbg !106

for.cond16:                                       ; preds = %for.inc24, %VITIS_LOOP_78_3
  %i15.0 = phi i32 [ 0, %VITIS_LOOP_78_3 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %i15.0, metadata !103, metadata !DIExpression()), !dbg !105
  %cmp17 = icmp slt i32 %i15.0, 4096, !dbg !107
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18, !dbg !109

for.cond.cleanup18:                               ; preds = %for.cond16
  br label %for.end26

for.body19:                                       ; preds = %for.cond16
  %idxprom20 = sext i32 %i15.0 to i64, !dbg !110
  %arrayidx21 = getelementptr inbounds i32, i32* %xedges, i64 %idxprom20, !dbg !110
  %10 = load i32, i32* %arrayidx21, align 4, !dbg !110
  %idxprom22 = sext i32 %i15.0 to i64, !dbg !111
  %arrayidx23 = getelementptr inbounds [4096 x i32], [4096 x i32]* %edges_dst, i64 0, i64 %idxprom22, !dbg !111
  store i32 %10, i32* %arrayidx23, align 4, !dbg !112
  br label %for.inc24, !dbg !111

for.inc24:                                        ; preds = %for.body19
  %inc25 = add nsw i32 %i15.0, 1, !dbg !113
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !103, metadata !DIExpression()), !dbg !105
  br label %for.cond16, !dbg !114, !llvm.loop !115

for.end26:                                        ; preds = %for.cond.cleanup18
  call void @llvm.dbg.value(metadata i32 1, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata i32 0, metadata !120, metadata !DIExpression()), !dbg !121
  %idxprom27 = sext i32 %starting_node to i64, !dbg !122
  %arrayidx28 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom27, !dbg !122
  store i32 0, i32* %arrayidx28, align 4, !dbg !123
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 0, !dbg !124
  store i32 1, i32* %arrayidx29, align 4, !dbg !125
  %cmp30 = icmp eq i32 1, 0, !dbg !126
  br i1 %cmp30, label %cond.true, label %cond.false, !dbg !128

cond.true:                                        ; preds = %for.end26
  br label %cond.end, !dbg !128

cond.false:                                       ; preds = %for.end26
  %sub = sub nsw i32 1, 1, !dbg !129
  br label %cond.end, !dbg !128

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 255, %cond.true ], [ %sub, %cond.false ], !dbg !128
  %idxprom31 = sext i32 %cond to i64, !dbg !130
  %arrayidx32 = getelementptr inbounds [256 x i32], [256 x i32]* %queue, i64 0, i64 %idxprom31, !dbg !130
  store i32 %starting_node, i32* %arrayidx32, align 4, !dbg !131
  %add = add nsw i32 1, 1, !dbg !132
  %rem = srem i32 %add, 256, !dbg !133
  call void @llvm.dbg.value(metadata i32 %rem, metadata !118, metadata !DIExpression()), !dbg !119
  br label %loop_queue, !dbg !134

loop_queue:                                       ; preds = %cond.end
  call void @llvm.dbg.value(metadata i32 0, metadata !135, metadata !DIExpression()), !dbg !136
  br label %for.cond33, !dbg !137

for.cond33:                                       ; preds = %for.inc85, %loop_queue
  %q_in.0 = phi i32 [ %rem, %loop_queue ], [ %q_in.1, %for.inc85 ]
  %q_out.0 = phi i32 [ 0, %loop_queue ], [ %rem46, %for.inc85 ]
  %dummy.0 = phi i32 [ 0, %loop_queue ], [ %inc86, %for.inc85 ]
  call void @llvm.dbg.value(metadata i32 %dummy.0, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i32 %q_out.0, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i32 %q_in.0, metadata !118, metadata !DIExpression()), !dbg !119
  %cmp34 = icmp slt i32 %dummy.0, %node, !dbg !139
  br i1 %cmp34, label %for.body35, label %for.end87, !dbg !141

for.body35:                                       ; preds = %for.cond33
  %cmp36 = icmp sgt i32 %q_in.0, %q_out.0, !dbg !142
  br i1 %cmp36, label %cond.true37, label %cond.false40, !dbg !145

cond.true37:                                      ; preds = %for.body35
  %add38 = add nsw i32 %q_out.0, 1, !dbg !146
  %cmp39 = icmp eq i32 %q_in.0, %add38, !dbg !147
  br i1 %cmp39, label %if.then, label %if.end, !dbg !148

cond.false40:                                     ; preds = %for.body35
  %cmp41 = icmp eq i32 %q_in.0, 0, !dbg !149
  br i1 %cmp41, label %land.lhs.true, label %if.end, !dbg !150

land.lhs.true:                                    ; preds = %cond.false40
  %cmp42 = icmp eq i32 %q_out.0, 255, !dbg !151
  br i1 %cmp42, label %if.then, label %if.end, !dbg !145

if.then:                                          ; preds = %land.lhs.true, %cond.true37
  br label %for.end87, !dbg !152

if.end:                                           ; preds = %land.lhs.true, %cond.false40, %cond.true37
  %idxprom43 = sext i32 %q_out.0 to i64, !dbg !153
  %arrayidx44 = getelementptr inbounds [256 x i32], [256 x i32]* %queue, i64 0, i64 %idxprom43, !dbg !153
  %11 = load i32, i32* %arrayidx44, align 4, !dbg !153
  call void @llvm.dbg.value(metadata i32 %11, metadata !154, metadata !DIExpression()), !dbg !155
  %add45 = add nsw i32 %q_out.0, 1, !dbg !156
  %rem46 = srem i32 %add45, 256, !dbg !158
  call void @llvm.dbg.value(metadata i32 %rem46, metadata !120, metadata !DIExpression()), !dbg !121
  %idxprom47 = sext i32 %11 to i64, !dbg !159
  %arrayidx48 = getelementptr inbounds [256 x i32], [256 x i32]* %nodes_edge_begin, i64 0, i64 %idxprom47, !dbg !159
  %12 = load i32, i32* %arrayidx48, align 4, !dbg !159
  call void @llvm.dbg.value(metadata i32 %12, metadata !160, metadata !DIExpression()), !dbg !161
  %idxprom49 = sext i32 %11 to i64, !dbg !162
  %arrayidx50 = getelementptr inbounds [256 x i32], [256 x i32]* %nodes_edge_end, i64 0, i64 %idxprom49, !dbg !162
  %13 = load i32, i32* %arrayidx50, align 4, !dbg !162
  call void @llvm.dbg.value(metadata i32 %13, metadata !163, metadata !DIExpression()), !dbg !164
  br label %loop_neighbors, !dbg !165

loop_neighbors:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %12, metadata !166, metadata !DIExpression()), !dbg !167
  br label %for.cond51, !dbg !168

for.cond51:                                       ; preds = %for.inc82, %loop_neighbors
  %q_in.1 = phi i32 [ %q_in.0, %loop_neighbors ], [ %q_in.2, %for.inc82 ]
  %e.0 = phi i32 [ %12, %loop_neighbors ], [ %inc83, %for.inc82 ]
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i32 %q_in.1, metadata !118, metadata !DIExpression()), !dbg !119
  %cmp52 = icmp slt i32 %e.0, %13, !dbg !170
  br i1 %cmp52, label %for.body53, label %for.end84, !dbg !172

for.body53:                                       ; preds = %for.cond51
  %idxprom54 = sext i32 %e.0 to i64, !dbg !173
  %arrayidx55 = getelementptr inbounds [4096 x i32], [4096 x i32]* %edges_dst, i64 0, i64 %idxprom54, !dbg !173
  %14 = load i32, i32* %arrayidx55, align 4, !dbg !173
  call void @llvm.dbg.value(metadata i32 %14, metadata !175, metadata !DIExpression()), !dbg !176
  %idxprom56 = sext i32 %14 to i64, !dbg !177
  %arrayidx57 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom56, !dbg !177
  %15 = load i32, i32* %arrayidx57, align 4, !dbg !177
  call void @llvm.dbg.value(metadata i32 %15, metadata !178, metadata !DIExpression()), !dbg !179
  %cmp58 = icmp eq i32 %15, 255, !dbg !180
  br i1 %cmp58, label %if.then59, label %if.end81, !dbg !182

if.then59:                                        ; preds = %for.body53
  %idxprom61 = sext i32 %11 to i64, !dbg !183
  %arrayidx62 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom61, !dbg !183
  %16 = load i32, i32* %arrayidx62, align 4, !dbg !183
  %add63 = add nsw i32 %16, 1, !dbg !185
  call void @llvm.dbg.value(metadata i32 %add63, metadata !186, metadata !DIExpression()), !dbg !187
  %idxprom64 = sext i32 %14 to i64, !dbg !188
  %arrayidx65 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom64, !dbg !188
  store i32 %add63, i32* %arrayidx65, align 4, !dbg !189
  %idxprom66 = sext i32 %add63 to i64, !dbg !190
  %arrayidx67 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 %idxprom66, !dbg !190
  %17 = load i32, i32* %arrayidx67, align 4, !dbg !190
  %add68 = add nsw i32 %17, 1, !dbg !191
  %idxprom69 = sext i32 %add63 to i64, !dbg !192
  %arrayidx70 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 %idxprom69, !dbg !192
  store i32 %add68, i32* %arrayidx70, align 4, !dbg !193
  %cmp71 = icmp eq i32 %q_in.1, 0, !dbg !194
  br i1 %cmp71, label %cond.true72, label %cond.false73, !dbg !196

cond.true72:                                      ; preds = %if.then59
  br label %cond.end75, !dbg !196

cond.false73:                                     ; preds = %if.then59
  %sub74 = sub nsw i32 %q_in.1, 1, !dbg !197
  br label %cond.end75, !dbg !196

cond.end75:                                       ; preds = %cond.false73, %cond.true72
  %cond76 = phi i32 [ 255, %cond.true72 ], [ %sub74, %cond.false73 ], !dbg !196
  %idxprom77 = sext i32 %cond76 to i64, !dbg !198
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* %queue, i64 0, i64 %idxprom77, !dbg !198
  store i32 %14, i32* %arrayidx78, align 4, !dbg !199
  %add79 = add nsw i32 %q_in.1, 1, !dbg !200
  %rem80 = srem i32 %add79, 256, !dbg !201
  call void @llvm.dbg.value(metadata i32 %rem80, metadata !118, metadata !DIExpression()), !dbg !119
  br label %if.end81, !dbg !202

if.end81:                                         ; preds = %cond.end75, %for.body53
  %q_in.2 = phi i32 [ %rem80, %cond.end75 ], [ %q_in.1, %for.body53 ]
  call void @llvm.dbg.value(metadata i32 %q_in.2, metadata !118, metadata !DIExpression()), !dbg !119
  br label %for.inc82, !dbg !203

for.inc82:                                        ; preds = %if.end81
  %inc83 = add nsw i32 %e.0, 1, !dbg !204
  call void @llvm.dbg.value(metadata i32 %inc83, metadata !166, metadata !DIExpression()), !dbg !167
  br label %for.cond51, !dbg !205, !llvm.loop !206

for.end84:                                        ; preds = %for.cond51
  br label %for.inc85, !dbg !209

for.inc85:                                        ; preds = %for.end84
  %inc86 = add nsw i32 %dummy.0, 1, !dbg !210
  call void @llvm.dbg.value(metadata i32 %inc86, metadata !135, metadata !DIExpression()), !dbg !136
  br label %for.cond33, !dbg !211, !llvm.loop !212

for.end87:                                        ; preds = %if.then, %for.cond33
  br label %VITIS_LOOP_109_4, !dbg !213

VITIS_LOOP_109_4:                                 ; preds = %for.end87
  call void @llvm.dbg.value(metadata i32 0, metadata !215, metadata !DIExpression()), !dbg !217
  br label %for.cond89, !dbg !218

for.cond89:                                       ; preds = %for.inc97, %VITIS_LOOP_109_4
  %i88.0 = phi i32 [ 0, %VITIS_LOOP_109_4 ], [ %inc98, %for.inc97 ]
  call void @llvm.dbg.value(metadata i32 %i88.0, metadata !215, metadata !DIExpression()), !dbg !217
  %cmp90 = icmp slt i32 %i88.0, %node, !dbg !219
  br i1 %cmp90, label %for.body92, label %for.cond.cleanup91, !dbg !221

for.cond.cleanup91:                               ; preds = %for.cond89
  br label %for.end99

for.body92:                                       ; preds = %for.cond89
  %idxprom93 = sext i32 %i88.0 to i64, !dbg !222
  %arrayidx94 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom93, !dbg !222
  %18 = load i32, i32* %arrayidx94, align 4, !dbg !222
  %idxprom95 = sext i32 %i88.0 to i64, !dbg !223
  %arrayidx96 = getelementptr inbounds i32, i32* %xlevel, i64 %idxprom95, !dbg !223
  store i32 %18, i32* %arrayidx96, align 4, !dbg !224
  br label %for.inc97, !dbg !223

for.inc97:                                        ; preds = %for.body92
  %inc98 = add nsw i32 %i88.0, 1, !dbg !225
  call void @llvm.dbg.value(metadata i32 %inc98, metadata !215, metadata !DIExpression()), !dbg !217
  br label %for.cond89, !dbg !226, !llvm.loop !227

for.end99:                                        ; preds = %for.cond.cleanup91
  br label %VITIS_LOOP_112_5, !dbg !228

VITIS_LOOP_112_5:                                 ; preds = %for.end99
  call void @llvm.dbg.value(metadata i32 0, metadata !230, metadata !DIExpression()), !dbg !232
  br label %for.cond101, !dbg !233

for.cond101:                                      ; preds = %for.inc109, %VITIS_LOOP_112_5
  %i100.0 = phi i32 [ 0, %VITIS_LOOP_112_5 ], [ %inc110, %for.inc109 ]
  call void @llvm.dbg.value(metadata i32 %i100.0, metadata !230, metadata !DIExpression()), !dbg !232
  %cmp102 = icmp slt i32 %i100.0, %levels, !dbg !234
  br i1 %cmp102, label %for.body104, label %for.cond.cleanup103, !dbg !236

for.cond.cleanup103:                              ; preds = %for.cond101
  br label %for.end111

for.body104:                                      ; preds = %for.cond101
  %idxprom105 = sext i32 %i100.0 to i64, !dbg !237
  %arrayidx106 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 %idxprom105, !dbg !237
  %19 = load i32, i32* %arrayidx106, align 4, !dbg !237
  %idxprom107 = sext i32 %i100.0 to i64, !dbg !238
  %arrayidx108 = getelementptr inbounds i32, i32* %xlevel_counts, i64 %idxprom107, !dbg !238
  store i32 %19, i32* %arrayidx108, align 4, !dbg !239
  br label %for.inc109, !dbg !238

for.inc109:                                       ; preds = %for.body104
  %inc110 = add nsw i32 %i100.0, 1, !dbg !240
  call void @llvm.dbg.value(metadata i32 %inc110, metadata !230, metadata !DIExpression()), !dbg !232
  br label %for.cond101, !dbg !241, !llvm.loop !242

for.end111:                                       ; preds = %for.cond.cleanup103
  %20 = bitcast [10 x i32]* %level_counts to i8*, !dbg !245
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %20) #9, !dbg !245
  %21 = bitcast [256 x i32]* %level to i8*, !dbg !245
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %21) #9, !dbg !245
  %22 = bitcast [4096 x i32]* %edges_dst to i8*, !dbg !245
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %22) #9, !dbg !245
  %23 = bitcast [256 x i32]* %nodes_edge_end to i8*, !dbg !245
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %23) #9, !dbg !245
  %24 = bitcast [256 x i32]* %nodes_edge_begin to i8*, !dbg !245
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %24) #9, !dbg !245
  %25 = bitcast [256 x i32]* %queue to i8*, !dbg !245
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %25) #9, !dbg !245
  ret void, !dbg !245
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8192" "xlx.source"="user" }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="131072" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="320" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/bfs_queue/bfs_queue_prj/solution/.autopilot/db/bfs_queue.pp.0.c", directory: "/workspace/examples/bfs_queue")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 48, type: !9, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "bfs_queue.c", directory: "/workspace/examples/bfs_queue")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !12, !12, !13, !13, !13, !13, !13}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_index_t", file: !8, line: 31, baseType: !12)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!14 = !{!15}
!15 = !{!"fpga.top", !"user", !16}
!16 = !DILocation(line: 48, column: 16, scope: !7)
!17 = !DILocalVariable(name: "starting_node", arg: 1, scope: !7, file: !8, line: 48, type: !11)
!18 = !DILocation(line: 48, column: 69, scope: !7)
!19 = !DILocalVariable(name: "levels", arg: 2, scope: !7, file: !8, line: 48, type: !12)
!20 = !DILocation(line: 48, column: 88, scope: !7)
!21 = !DILocalVariable(name: "node", arg: 3, scope: !7, file: !8, line: 48, type: !12)
!22 = !DILocation(line: 48, column: 100, scope: !7)
!23 = !DILocalVariable(name: "xnodes_b", arg: 4, scope: !7, file: !8, line: 49, type: !13)
!24 = !DILocation(line: 49, column: 18, scope: !7)
!25 = !DILocalVariable(name: "xnodes_e", arg: 5, scope: !7, file: !8, line: 49, type: !13)
!26 = !DILocation(line: 49, column: 42, scope: !7)
!27 = !DILocalVariable(name: "xedges", arg: 6, scope: !7, file: !8, line: 49, type: !13)
!28 = !DILocation(line: 49, column: 66, scope: !7)
!29 = !DILocalVariable(name: "xlevel", arg: 7, scope: !7, file: !8, line: 50, type: !13)
!30 = !DILocation(line: 50, column: 18, scope: !7)
!31 = !DILocalVariable(name: "xlevel_counts", arg: 8, scope: !7, file: !8, line: 50, type: !13)
!32 = !DILocation(line: 50, column: 40, scope: !7)
!33 = !DILocation(line: 51, column: 9, scope: !7)
!34 = !DILocation(line: 52, column: 9, scope: !7)
!35 = !DILocation(line: 53, column: 9, scope: !7)
!36 = !DILocation(line: 54, column: 9, scope: !7)
!37 = !DILocation(line: 55, column: 9, scope: !7)
!38 = !DILocation(line: 56, column: 9, scope: !7)
!39 = !DILocation(line: 57, column: 9, scope: !7)
!40 = !DILocation(line: 58, column: 9, scope: !7)
!41 = !DILocation(line: 59, column: 9, scope: !7)
!42 = !DILocation(line: 61, column: 2, scope: !7)
!43 = !DILocalVariable(name: "queue", scope: !7, file: !8, line: 61, type: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 256)
!47 = !DILocation(line: 61, column: 15, scope: !7)
!48 = !DILocation(line: 67, column: 3, scope: !7)
!49 = !DILocalVariable(name: "nodes_edge_begin", scope: !7, file: !8, line: 67, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8192, elements: !45)
!51 = !DILocation(line: 67, column: 7, scope: !7)
!52 = !DILocation(line: 68, column: 3, scope: !7)
!53 = !DILocalVariable(name: "nodes_edge_end", scope: !7, file: !8, line: 68, type: !50)
!54 = !DILocation(line: 68, column: 7, scope: !7)
!55 = !DILocation(line: 69, column: 3, scope: !7)
!56 = !DILocalVariable(name: "edges_dst", scope: !7, file: !8, line: 69, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 131072, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 4096)
!60 = !DILocation(line: 69, column: 7, scope: !7)
!61 = !DILocation(line: 70, column: 3, scope: !7)
!62 = !DILocalVariable(name: "level", scope: !7, file: !8, line: 70, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 8192, elements: !45)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "level_t", file: !8, line: 45, baseType: !12)
!65 = !DILocation(line: 70, column: 11, scope: !7)
!66 = !DILocation(line: 71, column: 3, scope: !7)
!67 = !DILocalVariable(name: "level_counts", scope: !7, file: !8, line: 71, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 320, elements: !70)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_index_t", file: !8, line: 30, baseType: !12)
!70 = !{!71}
!71 = !DISubrange(count: 10)
!72 = !DILocation(line: 71, column: 16, scope: !7)
!73 = !DILocalVariable(name: "i", scope: !74, file: !8, line: 73, type: !12)
!74 = distinct !DILexicalBlock(scope: !7, file: !8, line: 73, column: 20)
!75 = !DILocation(line: 73, column: 29, scope: !74)
!76 = !DILocation(line: 73, column: 25, scope: !74)
!77 = !DILocation(line: 73, column: 38, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !8, line: 73, column: 20)
!79 = !DILocation(line: 73, column: 20, scope: !74)
!80 = !DILocation(line: 74, column: 27, scope: !78)
!81 = !DILocation(line: 74, column: 5, scope: !78)
!82 = !DILocation(line: 74, column: 25, scope: !78)
!83 = !DILocation(line: 73, column: 47, scope: !78)
!84 = !DILocation(line: 73, column: 20, scope: !78)
!85 = distinct !{!85, !79, !86, !87}
!86 = !DILocation(line: 74, column: 37, scope: !74)
!87 = !{!"llvm.loop.name", !"VITIS_LOOP_73_1"}
!88 = !DILocalVariable(name: "i", scope: !89, file: !8, line: 75, type: !12)
!89 = distinct !DILexicalBlock(scope: !7, file: !8, line: 75, column: 20)
!90 = !DILocation(line: 75, column: 29, scope: !89)
!91 = !DILocation(line: 75, column: 25, scope: !89)
!92 = !DILocation(line: 75, column: 38, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !8, line: 75, column: 20)
!94 = !DILocation(line: 75, column: 20, scope: !89)
!95 = !DILocation(line: 76, column: 25, scope: !93)
!96 = !DILocation(line: 76, column: 5, scope: !93)
!97 = !DILocation(line: 76, column: 23, scope: !93)
!98 = !DILocation(line: 75, column: 47, scope: !93)
!99 = !DILocation(line: 75, column: 20, scope: !93)
!100 = distinct !{!100, !94, !101, !102}
!101 = !DILocation(line: 76, column: 35, scope: !89)
!102 = !{!"llvm.loop.name", !"VITIS_LOOP_75_2"}
!103 = !DILocalVariable(name: "i", scope: !104, file: !8, line: 78, type: !12)
!104 = distinct !DILexicalBlock(scope: !7, file: !8, line: 78, column: 20)
!105 = !DILocation(line: 78, column: 29, scope: !104)
!106 = !DILocation(line: 78, column: 25, scope: !104)
!107 = !DILocation(line: 78, column: 38, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !8, line: 78, column: 20)
!109 = !DILocation(line: 78, column: 20, scope: !104)
!110 = !DILocation(line: 79, column: 20, scope: !108)
!111 = !DILocation(line: 79, column: 5, scope: !108)
!112 = !DILocation(line: 79, column: 18, scope: !108)
!113 = !DILocation(line: 78, column: 58, scope: !108)
!114 = !DILocation(line: 78, column: 20, scope: !108)
!115 = distinct !{!115, !109, !116, !117}
!116 = !DILocation(line: 79, column: 28, scope: !104)
!117 = !{!"llvm.loop.name", !"VITIS_LOOP_78_3"}
!118 = !DILocalVariable(name: "q_in", scope: !7, file: !8, line: 62, type: !11)
!119 = !DILocation(line: 62, column: 16, scope: !7)
!120 = !DILocalVariable(name: "q_out", scope: !7, file: !8, line: 62, type: !11)
!121 = !DILocation(line: 62, column: 22, scope: !7)
!122 = !DILocation(line: 83, column: 3, scope: !7)
!123 = !DILocation(line: 83, column: 24, scope: !7)
!124 = !DILocation(line: 84, column: 3, scope: !7)
!125 = !DILocation(line: 84, column: 19, scope: !7)
!126 = !DILocation(line: 85, column: 16, scope: !127)
!127 = distinct !DILexicalBlock(scope: !7, file: !8, line: 85, column: 3)
!128 = !DILocation(line: 85, column: 11, scope: !127)
!129 = !DILocation(line: 85, column: 43, scope: !127)
!130 = !DILocation(line: 85, column: 5, scope: !127)
!131 = !DILocation(line: 85, column: 48, scope: !127)
!132 = !DILocation(line: 85, column: 78, scope: !127)
!133 = !DILocation(line: 85, column: 83, scope: !127)
!134 = !DILocation(line: 85, column: 95, scope: !127)
!135 = !DILocalVariable(name: "dummy", scope: !7, file: !8, line: 63, type: !11)
!136 = !DILocation(line: 63, column: 16, scope: !7)
!137 = !DILocation(line: 88, column: 8, scope: !138)
!138 = distinct !DILexicalBlock(scope: !7, file: !8, line: 88, column: 3)
!139 = !DILocation(line: 88, column: 25, scope: !140)
!140 = distinct !DILexicalBlock(scope: !138, file: !8, line: 88, column: 3)
!141 = !DILocation(line: 88, column: 3, scope: !138)
!142 = !DILocation(line: 89, column: 15, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !8, line: 89, column: 9)
!144 = distinct !DILexicalBlock(scope: !140, file: !8, line: 88, column: 42)
!145 = !DILocation(line: 89, column: 9, scope: !144)
!146 = !DILocation(line: 89, column: 39, scope: !143)
!147 = !DILocation(line: 89, column: 30, scope: !143)
!148 = !DILocation(line: 89, column: 10, scope: !143)
!149 = !DILocation(line: 89, column: 51, scope: !143)
!150 = !DILocation(line: 89, column: 57, scope: !143)
!151 = !DILocation(line: 89, column: 67, scope: !143)
!152 = !DILocation(line: 90, column: 7, scope: !143)
!153 = !DILocation(line: 91, column: 10, scope: !144)
!154 = !DILocalVariable(name: "n", scope: !7, file: !8, line: 64, type: !11)
!155 = !DILocation(line: 64, column: 16, scope: !7)
!156 = !DILocation(line: 92, column: 22, scope: !157)
!157 = distinct !DILexicalBlock(scope: !144, file: !8, line: 92, column: 5)
!158 = !DILocation(line: 92, column: 27, scope: !157)
!159 = !DILocation(line: 93, column: 30, scope: !144)
!160 = !DILocalVariable(name: "tmp_begin", scope: !144, file: !8, line: 93, type: !69)
!161 = !DILocation(line: 93, column: 18, scope: !144)
!162 = !DILocation(line: 94, column: 28, scope: !144)
!163 = !DILocalVariable(name: "tmp_end", scope: !144, file: !8, line: 94, type: !69)
!164 = !DILocation(line: 94, column: 18, scope: !144)
!165 = !DILocation(line: 94, column: 5, scope: !144)
!166 = !DILocalVariable(name: "e", scope: !7, file: !8, line: 65, type: !69)
!167 = !DILocation(line: 65, column: 16, scope: !7)
!168 = !DILocation(line: 96, column: 10, scope: !169)
!169 = distinct !DILexicalBlock(scope: !144, file: !8, line: 96, column: 5)
!170 = !DILocation(line: 96, column: 27, scope: !171)
!171 = distinct !DILexicalBlock(scope: !169, file: !8, line: 96, column: 5)
!172 = !DILocation(line: 96, column: 5, scope: !169)
!173 = !DILocation(line: 97, column: 30, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !8, line: 96, column: 43)
!175 = !DILocalVariable(name: "tmp_dst", scope: !174, file: !8, line: 97, type: !11)
!176 = !DILocation(line: 97, column: 20, scope: !174)
!177 = !DILocation(line: 98, column: 27, scope: !174)
!178 = !DILocalVariable(name: "tmp_level", scope: !174, file: !8, line: 98, type: !64)
!179 = !DILocation(line: 98, column: 15, scope: !174)
!180 = !DILocation(line: 100, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !174, file: !8, line: 100, column: 11)
!182 = !DILocation(line: 100, column: 11, scope: !174)
!183 = !DILocation(line: 101, column: 29, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !8, line: 100, column: 29)
!185 = !DILocation(line: 101, column: 38, scope: !184)
!186 = !DILocalVariable(name: "tmp_level", scope: !184, file: !8, line: 101, type: !64)
!187 = !DILocation(line: 101, column: 17, scope: !184)
!188 = !DILocation(line: 102, column: 9, scope: !184)
!189 = !DILocation(line: 102, column: 24, scope: !184)
!190 = !DILocation(line: 103, column: 35, scope: !184)
!191 = !DILocation(line: 103, column: 59, scope: !184)
!192 = !DILocation(line: 103, column: 9, scope: !184)
!193 = !DILocation(line: 103, column: 33, scope: !184)
!194 = !DILocation(line: 104, column: 22, scope: !195)
!195 = distinct !DILexicalBlock(scope: !184, file: !8, line: 104, column: 9)
!196 = !DILocation(line: 104, column: 17, scope: !195)
!197 = !DILocation(line: 104, column: 49, scope: !195)
!198 = !DILocation(line: 104, column: 11, scope: !195)
!199 = !DILocation(line: 104, column: 54, scope: !195)
!200 = !DILocation(line: 104, column: 78, scope: !195)
!201 = !DILocation(line: 104, column: 83, scope: !195)
!202 = !DILocation(line: 105, column: 7, scope: !184)
!203 = !DILocation(line: 106, column: 5, scope: !174)
!204 = !DILocation(line: 96, column: 39, scope: !171)
!205 = !DILocation(line: 96, column: 5, scope: !171)
!206 = distinct !{!206, !172, !207, !208}
!207 = !DILocation(line: 106, column: 5, scope: !169)
!208 = !{!"llvm.loop.name", !"loop_neighbors"}
!209 = !DILocation(line: 107, column: 3, scope: !144)
!210 = !DILocation(line: 88, column: 38, scope: !140)
!211 = !DILocation(line: 88, column: 3, scope: !140)
!212 = distinct !{!212, !141, !213, !214}
!213 = !DILocation(line: 107, column: 3, scope: !138)
!214 = !{!"llvm.loop.name", !"loop_queue"}
!215 = !DILocalVariable(name: "i", scope: !216, file: !8, line: 109, type: !12)
!216 = distinct !DILexicalBlock(scope: !7, file: !8, line: 109, column: 21)
!217 = !DILocation(line: 109, column: 30, scope: !216)
!218 = !DILocation(line: 109, column: 26, scope: !216)
!219 = !DILocation(line: 109, column: 39, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !8, line: 109, column: 21)
!221 = !DILocation(line: 109, column: 21, scope: !216)
!222 = !DILocation(line: 110, column: 17, scope: !220)
!223 = !DILocation(line: 110, column: 5, scope: !220)
!224 = !DILocation(line: 110, column: 15, scope: !220)
!225 = !DILocation(line: 109, column: 48, scope: !220)
!226 = !DILocation(line: 109, column: 21, scope: !220)
!227 = distinct !{!227, !221, !228, !229}
!228 = !DILocation(line: 110, column: 24, scope: !216)
!229 = !{!"llvm.loop.name", !"VITIS_LOOP_109_4"}
!230 = !DILocalVariable(name: "i", scope: !231, file: !8, line: 112, type: !12)
!231 = distinct !DILexicalBlock(scope: !7, file: !8, line: 112, column: 21)
!232 = !DILocation(line: 112, column: 30, scope: !231)
!233 = !DILocation(line: 112, column: 26, scope: !231)
!234 = !DILocation(line: 112, column: 39, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !8, line: 112, column: 21)
!236 = !DILocation(line: 112, column: 21, scope: !231)
!237 = !DILocation(line: 113, column: 24, scope: !235)
!238 = !DILocation(line: 113, column: 5, scope: !235)
!239 = !DILocation(line: 113, column: 22, scope: !235)
!240 = !DILocation(line: 112, column: 50, scope: !235)
!241 = !DILocation(line: 112, column: 21, scope: !235)
!242 = distinct !{!242, !236, !243, !244}
!243 = !DILocation(line: 113, column: 38, scope: !231)
!244 = !{!"llvm.loop.name", !"VITIS_LOOP_112_5"}
!245 = !DILocation(line: 114, column: 1, scope: !7)
