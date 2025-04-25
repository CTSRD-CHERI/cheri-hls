; ModuleID = '/workspace/examples/bfs_bulk/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: alwaysinline nounwind
define void @_Z12stream_writejPiS_(i32 %size, i32* %array1, i32* %array2) #0 !dbg !7 !fpga.function.pragma !19 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32* %array1, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32* %array2, metadata !26, metadata !DIExpression()), !dbg !27
  br label %VITIS_LOOP_43_1, !dbg !28

VITIS_LOOP_43_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !31
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_43_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_43_1 ], [ %inc, %for.inc ]
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
define void @_Z7hls_topiiiPiS_S_S_S_(i32 %starting_node, i32 %levels, i32 %node, i32* "fpga.decayed.dim.hint"="256" %xnodes_b, i32* "fpga.decayed.dim.hint"="256" %xnodes_e, i32* "fpga.decayed.dim.hint"="4096" %xedges, i32* "fpga.decayed.dim.hint"="256" %xlevel, i32* "fpga.decayed.dim.hint"="10" %xlevel_counts) #3 !dbg !47 !fpga.function.pragma !51 {
entry:
  %node_edge_begin = alloca [256 x i32], align 4
  %node_edge_end = alloca [256 x i32], align 4
  %edges_dst = alloca [4096 x i32], align 4
  %level = alloca [256 x i32], align 4
  %level_counts = alloca [10 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %starting_node, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 %levels, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32 %node, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* %xnodes_b, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32* %xnodes_e, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i32* %xedges, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata i32* %xlevel, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i32* %xlevel_counts, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xnodes_b, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !70
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xnodes_e, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !71
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xedges, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !72
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xlevel, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !73
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xlevel_counts, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !74
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i32 %starting_node, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !75
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i32 %levels, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !76
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i32 %node, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !77
  call void @llvm.sideeffect() #9 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !78
  %0 = bitcast [256 x i32]* %node_edge_begin to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %0) #10, !dbg !79
  call void @llvm.dbg.declare(metadata [256 x i32]* %node_edge_begin, metadata !80, metadata !DIExpression()), !dbg !84
  %1 = bitcast [256 x i32]* %node_edge_end to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %1) #10, !dbg !85
  call void @llvm.dbg.declare(metadata [256 x i32]* %node_edge_end, metadata !86, metadata !DIExpression()), !dbg !87
  %2 = bitcast [4096 x i32]* %edges_dst to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %2) #10, !dbg !88
  call void @llvm.dbg.declare(metadata [4096 x i32]* %edges_dst, metadata !89, metadata !DIExpression()), !dbg !93
  %3 = bitcast [256 x i32]* %level to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %3) #10, !dbg !94
  call void @llvm.dbg.declare(metadata [256 x i32]* %level, metadata !95, metadata !DIExpression()), !dbg !98
  %4 = bitcast [256 x i32]* %level to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 1024, i1 false), !dbg !98
  %5 = bitcast [10 x i32]* %level_counts to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %5) #10, !dbg !99
  call void @llvm.dbg.declare(metadata [10 x i32]* %level_counts, metadata !100, metadata !DIExpression()), !dbg !105
  %6 = bitcast [10 x i32]* %level_counts to i8*, !dbg !105
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 40, i1 false), !dbg !105
  br label %VITIS_LOOP_72_1, !dbg !99

VITIS_LOOP_72_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()), !dbg !108
  br label %for.cond, !dbg !109

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_72_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_72_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !106, metadata !DIExpression()), !dbg !108
  %cmp = icmp slt i32 %i.0, %node, !dbg !110
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !112

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !113
  %arrayidx = getelementptr inbounds i32, i32* %xnodes_b, i64 %idxprom, !dbg !113
  %7 = load i32, i32* %arrayidx, align 4, !dbg !113
  %idxprom1 = sext i32 %i.0 to i64, !dbg !114
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %node_edge_begin, i64 0, i64 %idxprom1, !dbg !114
  store i32 %7, i32* %arrayidx2, align 4, !dbg !115
  br label %for.inc, !dbg !114

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !116
  call void @llvm.dbg.value(metadata i32 %inc, metadata !106, metadata !DIExpression()), !dbg !108
  br label %for.cond, !dbg !117, !llvm.loop !118

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_74_2, !dbg !119

VITIS_LOOP_74_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !123
  br label %for.cond4, !dbg !124

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_74_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_74_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !121, metadata !DIExpression()), !dbg !123
  %cmp5 = icmp slt i32 %i3.0, %node, !dbg !125
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !127

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end14

for.body7:                                        ; preds = %for.cond4
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !128
  %arrayidx9 = getelementptr inbounds i32, i32* %xnodes_e, i64 %idxprom8, !dbg !128
  %8 = load i32, i32* %arrayidx9, align 4, !dbg !128
  %idxprom10 = sext i32 %i3.0 to i64, !dbg !129
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* %node_edge_end, i64 0, i64 %idxprom10, !dbg !129
  store i32 %8, i32* %arrayidx11, align 4, !dbg !130
  br label %for.inc12, !dbg !129

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i3.0, 1, !dbg !131
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !121, metadata !DIExpression()), !dbg !123
  br label %for.cond4, !dbg !132, !llvm.loop !133

for.end14:                                        ; preds = %for.cond.cleanup6
  br label %VITIS_LOOP_77_3, !dbg !134

VITIS_LOOP_77_3:                                  ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !136, metadata !DIExpression()), !dbg !138
  br label %for.cond16, !dbg !139

for.cond16:                                       ; preds = %for.inc24, %VITIS_LOOP_77_3
  %i15.0 = phi i32 [ 0, %VITIS_LOOP_77_3 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %i15.0, metadata !136, metadata !DIExpression()), !dbg !138
  %conv = sext i32 %i15.0 to i64, !dbg !140
  %cmp17 = icmp slt i64 %conv, 4096, !dbg !142
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18, !dbg !143

for.cond.cleanup18:                               ; preds = %for.cond16
  br label %for.end26

for.body19:                                       ; preds = %for.cond16
  %idxprom20 = sext i32 %i15.0 to i64, !dbg !144
  %arrayidx21 = getelementptr inbounds i32, i32* %xedges, i64 %idxprom20, !dbg !144
  %9 = load i32, i32* %arrayidx21, align 4, !dbg !144
  %idxprom22 = sext i32 %i15.0 to i64, !dbg !145
  %arrayidx23 = getelementptr inbounds [4096 x i32], [4096 x i32]* %edges_dst, i64 0, i64 %idxprom22, !dbg !145
  store i32 %9, i32* %arrayidx23, align 4, !dbg !146
  br label %for.inc24, !dbg !145

for.inc24:                                        ; preds = %for.body19
  %inc25 = add nsw i32 %i15.0, 1, !dbg !147
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !136, metadata !DIExpression()), !dbg !138
  br label %for.cond16, !dbg !148, !llvm.loop !149

for.end26:                                        ; preds = %for.cond.cleanup18
  %idxprom27 = sext i32 %starting_node to i64, !dbg !152
  %arrayidx28 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom27, !dbg !152
  store i32 0, i32* %arrayidx28, align 4, !dbg !153
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 0, !dbg !154
  store i32 1, i32* %arrayidx29, align 4, !dbg !155
  br label %loop_horizons, !dbg !154

loop_horizons:                                    ; preds = %for.end26
  call void @llvm.dbg.value(metadata i32 0, metadata !156, metadata !DIExpression()), !dbg !157
  br label %for.cond30, !dbg !158

for.cond30:                                       ; preds = %for.inc68, %loop_horizons
  %horizon.0 = phi i32 [ 0, %loop_horizons ], [ %inc69, %for.inc68 ]
  call void @llvm.dbg.value(metadata i32 %horizon.0, metadata !156, metadata !DIExpression()), !dbg !157
  %cmp31 = icmp slt i32 %horizon.0, %levels, !dbg !160
  br i1 %cmp31, label %for.body32, label %for.end70, !dbg !162

for.body32:                                       ; preds = %for.cond30
  call void @llvm.dbg.value(metadata i32 0, metadata !163, metadata !DIExpression()), !dbg !164
  br label %loop_nodes, !dbg !165

loop_nodes:                                       ; preds = %for.body32
  call void @llvm.dbg.value(metadata i32 0, metadata !167, metadata !DIExpression()), !dbg !168
  br label %for.cond33, !dbg !169

for.cond33:                                       ; preds = %for.inc59, %loop_nodes
  %n.0 = phi i32 [ 0, %loop_nodes ], [ %inc60, %for.inc59 ]
  %cnt.0 = phi i32 [ 0, %loop_nodes ], [ %cnt.3, %for.inc59 ]
  call void @llvm.dbg.value(metadata i32 %cnt.0, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !167, metadata !DIExpression()), !dbg !168
  %cmp34 = icmp slt i32 %n.0, %node, !dbg !171
  br i1 %cmp34, label %for.body35, label %for.end61, !dbg !173

for.body35:                                       ; preds = %for.cond33
  %idxprom36 = sext i32 %n.0 to i64, !dbg !174
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom36, !dbg !174
  %10 = load i32, i32* %arrayidx37, align 4, !dbg !174
  %cmp38 = icmp eq i32 %10, %horizon.0, !dbg !177
  br i1 %cmp38, label %if.then, label %if.end58, !dbg !178

if.then:                                          ; preds = %for.body35
  %idxprom39 = sext i32 %n.0 to i64, !dbg !179
  %arrayidx40 = getelementptr inbounds [256 x i32], [256 x i32]* %node_edge_begin, i64 0, i64 %idxprom39, !dbg !179
  %11 = load i32, i32* %arrayidx40, align 4, !dbg !179
  call void @llvm.dbg.value(metadata i32 %11, metadata !181, metadata !DIExpression()), !dbg !182
  %idxprom41 = sext i32 %n.0 to i64, !dbg !183
  %arrayidx42 = getelementptr inbounds [256 x i32], [256 x i32]* %node_edge_end, i64 0, i64 %idxprom41, !dbg !183
  %12 = load i32, i32* %arrayidx42, align 4, !dbg !183
  call void @llvm.dbg.value(metadata i32 %12, metadata !184, metadata !DIExpression()), !dbg !185
  br label %loop_neighbors, !dbg !186

loop_neighbors:                                   ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 %11, metadata !187, metadata !DIExpression()), !dbg !188
  br label %for.cond43, !dbg !189

for.cond43:                                       ; preds = %for.inc55, %loop_neighbors
  %e.0 = phi i32 [ %11, %loop_neighbors ], [ %inc56, %for.inc55 ]
  %cnt.1 = phi i32 [ %cnt.0, %loop_neighbors ], [ %cnt.2, %for.inc55 ]
  call void @llvm.dbg.value(metadata i32 %cnt.1, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !187, metadata !DIExpression()), !dbg !188
  %cmp44 = icmp slt i32 %e.0, %12, !dbg !191
  br i1 %cmp44, label %for.body45, label %for.end57, !dbg !193

for.body45:                                       ; preds = %for.cond43
  %idxprom46 = sext i32 %e.0 to i64, !dbg !194
  %arrayidx47 = getelementptr inbounds [4096 x i32], [4096 x i32]* %edges_dst, i64 0, i64 %idxprom46, !dbg !194
  %13 = load i32, i32* %arrayidx47, align 4, !dbg !194
  call void @llvm.dbg.value(metadata i32 %13, metadata !196, metadata !DIExpression()), !dbg !197
  %idxprom48 = sext i32 %13 to i64, !dbg !198
  %arrayidx49 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom48, !dbg !198
  %14 = load i32, i32* %arrayidx49, align 4, !dbg !198
  call void @llvm.dbg.value(metadata i32 %14, metadata !199, metadata !DIExpression()), !dbg !200
  %cmp50 = icmp eq i32 %14, 255, !dbg !201
  br i1 %cmp50, label %if.then51, label %if.end, !dbg !203

if.then51:                                        ; preds = %for.body45
  %add = add nsw i32 %horizon.0, 1, !dbg !204
  %idxprom52 = sext i32 %13 to i64, !dbg !206
  %arrayidx53 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom52, !dbg !206
  store i32 %add, i32* %arrayidx53, align 4, !dbg !207
  %inc54 = add nsw i32 %cnt.1, 1, !dbg !208
  call void @llvm.dbg.value(metadata i32 %inc54, metadata !163, metadata !DIExpression()), !dbg !164
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then51, %for.body45
  %cnt.2 = phi i32 [ %inc54, %if.then51 ], [ %cnt.1, %for.body45 ]
  call void @llvm.dbg.value(metadata i32 %cnt.2, metadata !163, metadata !DIExpression()), !dbg !164
  br label %for.inc55, !dbg !210

for.inc55:                                        ; preds = %if.end
  %inc56 = add nsw i32 %e.0, 1, !dbg !211
  call void @llvm.dbg.value(metadata i32 %inc56, metadata !187, metadata !DIExpression()), !dbg !188
  br label %for.cond43, !dbg !212, !llvm.loop !213

for.end57:                                        ; preds = %for.cond43
  br label %if.end58, !dbg !216

if.end58:                                         ; preds = %for.end57, %for.body35
  %cnt.3 = phi i32 [ %cnt.1, %for.end57 ], [ %cnt.0, %for.body35 ]
  call void @llvm.dbg.value(metadata i32 %cnt.3, metadata !163, metadata !DIExpression()), !dbg !164
  br label %for.inc59, !dbg !217

for.inc59:                                        ; preds = %if.end58
  %inc60 = add nsw i32 %n.0, 1, !dbg !218
  call void @llvm.dbg.value(metadata i32 %inc60, metadata !167, metadata !DIExpression()), !dbg !168
  br label %for.cond33, !dbg !219, !llvm.loop !220

for.end61:                                        ; preds = %for.cond33
  %add62 = add nsw i32 %horizon.0, 1, !dbg !223
  %idxprom63 = sext i32 %add62 to i64, !dbg !225
  %arrayidx64 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 %idxprom63, !dbg !225
  store i32 %cnt.0, i32* %arrayidx64, align 4, !dbg !226
  %cmp65 = icmp eq i32 %cnt.0, 0, !dbg !227
  br i1 %cmp65, label %if.then66, label %if.end67, !dbg !228

if.then66:                                        ; preds = %for.end61
  br label %for.end70, !dbg !229

if.end67:                                         ; preds = %for.end61
  br label %for.inc68, !dbg !230

for.inc68:                                        ; preds = %if.end67
  %inc69 = add nsw i32 %horizon.0, 1, !dbg !231
  call void @llvm.dbg.value(metadata i32 %inc69, metadata !156, metadata !DIExpression()), !dbg !157
  br label %for.cond30, !dbg !232, !llvm.loop !233

for.end70:                                        ; preds = %if.then66, %for.cond30
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %level, i32 0, i32 0, !dbg !236
  call void @_Z12stream_writejPiS_(i32 %node, i32* %xlevel, i32* %arraydecay), !dbg !237
  %arraydecay71 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i32 0, i32 0, !dbg !238
  call void @_Z12stream_writejPiS_(i32 %levels, i32* %xlevel_counts, i32* %arraydecay71), !dbg !239
  %15 = bitcast [10 x i32]* %level_counts to i8*, !dbg !240
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %15) #10, !dbg !240
  %16 = bitcast [256 x i32]* %level to i8*, !dbg !240
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %16) #10, !dbg !240
  %17 = bitcast [4096 x i32]* %edges_dst to i8*, !dbg !240
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %17) #10, !dbg !240
  %18 = bitcast [256 x i32]* %node_edge_end to i8*, !dbg !240
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %18) #10, !dbg !240
  %19 = bitcast [256 x i32]* %node_edge_begin to i8*, !dbg !240
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %19) #10, !dbg !240
  ret void, !dbg !240
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="stream_write" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8192" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="131072" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="320" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/bfs_bulk/bfs_bulk_prj/solution/.autopilot/db/bfs_bulk.pp.0.cpp", directory: "/workspace/examples/bfs_bulk")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "stream_write", linkageName: "_Z12stream_writejPiS_", scope: !8, file: !8, line: 41, type: !9, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "bfs_bulk.cpp", directory: "/workspace/examples/bfs_bulk")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !17, !17}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 25, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/bfs_bulk")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 42, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/bfs_bulk")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20}
!20 = !{!"fpga.inline", !"user", !21}
!21 = !DILocation(line: 42, column: 9, scope: !7)
!22 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 41, type: !11)
!23 = !DILocation(line: 41, column: 23, scope: !7)
!24 = !DILocalVariable(name: "array1", arg: 2, scope: !7, file: !8, line: 41, type: !17)
!25 = !DILocation(line: 41, column: 34, scope: !7)
!26 = !DILocalVariable(name: "array2", arg: 3, scope: !7, file: !8, line: 41, type: !17)
!27 = !DILocation(line: 41, column: 47, scope: !7)
!28 = !DILocation(line: 41, column: 55, scope: !7)
!29 = !DILocalVariable(name: "i", scope: !30, file: !8, line: 43, type: !18)
!30 = distinct !DILexicalBlock(scope: !7, file: !8, line: 43, column: 19)
!31 = !DILocation(line: 43, column: 28, scope: !30)
!32 = !DILocation(line: 43, column: 24, scope: !30)
!33 = !DILocation(line: 43, column: 37, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !8, line: 43, column: 19)
!35 = !DILocation(line: 43, column: 19, scope: !30)
!36 = !DILocation(line: 44, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !8, line: 43, column: 50)
!38 = !DILocation(line: 44, column: 5, scope: !37)
!39 = !DILocation(line: 44, column: 15, scope: !37)
!40 = !DILocation(line: 45, column: 3, scope: !37)
!41 = !DILocation(line: 43, column: 46, scope: !34)
!42 = !DILocation(line: 43, column: 19, scope: !34)
!43 = distinct !{!43, !35, !44, !45}
!44 = !DILocation(line: 45, column: 3, scope: !30)
!45 = !{!"llvm.loop.name", !"VITIS_LOOP_43_1"}
!46 = !DILocation(line: 46, column: 1, scope: !7)
!47 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiiiPiS_S_S_S_", scope: !8, file: !8, line: 48, type: !48, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !18, !18, !17, !17, !17, !17, !17}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_index_t", file: !8, line: 23, baseType: !18)
!51 = !{!52}
!52 = !{!"fpga.top", !"user", !53}
!53 = !DILocation(line: 48, column: 16, scope: !47)
!54 = !DILocalVariable(name: "starting_node", arg: 1, scope: !47, file: !8, line: 48, type: !50)
!55 = !DILocation(line: 48, column: 69, scope: !47)
!56 = !DILocalVariable(name: "levels", arg: 2, scope: !47, file: !8, line: 48, type: !18)
!57 = !DILocation(line: 48, column: 88, scope: !47)
!58 = !DILocalVariable(name: "node", arg: 3, scope: !47, file: !8, line: 48, type: !18)
!59 = !DILocation(line: 48, column: 100, scope: !47)
!60 = !DILocalVariable(name: "xnodes_b", arg: 4, scope: !47, file: !8, line: 49, type: !17)
!61 = !DILocation(line: 49, column: 18, scope: !47)
!62 = !DILocalVariable(name: "xnodes_e", arg: 5, scope: !47, file: !8, line: 49, type: !17)
!63 = !DILocation(line: 49, column: 44, scope: !47)
!64 = !DILocalVariable(name: "xedges", arg: 6, scope: !47, file: !8, line: 49, type: !17)
!65 = !DILocation(line: 49, column: 70, scope: !47)
!66 = !DILocalVariable(name: "xlevel", arg: 7, scope: !47, file: !8, line: 50, type: !17)
!67 = !DILocation(line: 50, column: 18, scope: !47)
!68 = !DILocalVariable(name: "xlevel_counts", arg: 8, scope: !47, file: !8, line: 50, type: !17)
!69 = !DILocation(line: 50, column: 42, scope: !47)
!70 = !DILocation(line: 51, column: 9, scope: !47)
!71 = !DILocation(line: 52, column: 9, scope: !47)
!72 = !DILocation(line: 53, column: 9, scope: !47)
!73 = !DILocation(line: 54, column: 9, scope: !47)
!74 = !DILocation(line: 55, column: 9, scope: !47)
!75 = !DILocation(line: 56, column: 9, scope: !47)
!76 = !DILocation(line: 57, column: 9, scope: !47)
!77 = !DILocation(line: 58, column: 9, scope: !47)
!78 = !DILocation(line: 59, column: 9, scope: !47)
!79 = !DILocation(line: 66, column: 3, scope: !47)
!80 = !DILocalVariable(name: "node_edge_begin", scope: !47, file: !8, line: 66, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 256)
!84 = !DILocation(line: 66, column: 7, scope: !47)
!85 = !DILocation(line: 67, column: 3, scope: !47)
!86 = !DILocalVariable(name: "node_edge_end", scope: !47, file: !8, line: 67, type: !81)
!87 = !DILocation(line: 67, column: 7, scope: !47)
!88 = !DILocation(line: 68, column: 3, scope: !47)
!89 = !DILocalVariable(name: "edges_dst", scope: !47, file: !8, line: 68, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 131072, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 4096)
!93 = !DILocation(line: 68, column: 7, scope: !47)
!94 = !DILocation(line: 69, column: 3, scope: !47)
!95 = !DILocalVariable(name: "level", scope: !47, file: !8, line: 69, type: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 8192, elements: !82)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "level_t", file: !8, line: 39, baseType: !18)
!98 = !DILocation(line: 69, column: 11, scope: !47)
!99 = !DILocation(line: 70, column: 3, scope: !47)
!100 = !DILocalVariable(name: "level_counts", scope: !47, file: !8, line: 70, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 320, elements: !103)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_index_t", file: !8, line: 22, baseType: !18)
!103 = !{!104}
!104 = !DISubrange(count: 10)
!105 = !DILocation(line: 70, column: 16, scope: !47)
!106 = !DILocalVariable(name: "i", scope: !107, file: !8, line: 72, type: !18)
!107 = distinct !DILexicalBlock(scope: !47, file: !8, line: 72, column: 20)
!108 = !DILocation(line: 72, column: 29, scope: !107)
!109 = !DILocation(line: 72, column: 25, scope: !107)
!110 = !DILocation(line: 72, column: 38, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !8, line: 72, column: 20)
!112 = !DILocation(line: 72, column: 20, scope: !107)
!113 = !DILocation(line: 73, column: 26, scope: !111)
!114 = !DILocation(line: 73, column: 5, scope: !111)
!115 = !DILocation(line: 73, column: 24, scope: !111)
!116 = !DILocation(line: 72, column: 47, scope: !111)
!117 = !DILocation(line: 72, column: 20, scope: !111)
!118 = distinct !{!118, !112, !119, !120}
!119 = !DILocation(line: 73, column: 36, scope: !107)
!120 = !{!"llvm.loop.name", !"VITIS_LOOP_72_1"}
!121 = !DILocalVariable(name: "i", scope: !122, file: !8, line: 74, type: !18)
!122 = distinct !DILexicalBlock(scope: !47, file: !8, line: 74, column: 20)
!123 = !DILocation(line: 74, column: 29, scope: !122)
!124 = !DILocation(line: 74, column: 25, scope: !122)
!125 = !DILocation(line: 74, column: 38, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !8, line: 74, column: 20)
!127 = !DILocation(line: 74, column: 20, scope: !122)
!128 = !DILocation(line: 75, column: 24, scope: !126)
!129 = !DILocation(line: 75, column: 5, scope: !126)
!130 = !DILocation(line: 75, column: 22, scope: !126)
!131 = !DILocation(line: 74, column: 47, scope: !126)
!132 = !DILocation(line: 74, column: 20, scope: !126)
!133 = distinct !{!133, !127, !134, !135}
!134 = !DILocation(line: 75, column: 34, scope: !122)
!135 = !{!"llvm.loop.name", !"VITIS_LOOP_74_2"}
!136 = !DILocalVariable(name: "i", scope: !137, file: !8, line: 77, type: !18)
!137 = distinct !DILexicalBlock(scope: !47, file: !8, line: 77, column: 20)
!138 = !DILocation(line: 77, column: 29, scope: !137)
!139 = !DILocation(line: 77, column: 25, scope: !137)
!140 = !DILocation(line: 77, column: 36, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !8, line: 77, column: 20)
!142 = !DILocation(line: 77, column: 38, scope: !141)
!143 = !DILocation(line: 77, column: 20, scope: !137)
!144 = !DILocation(line: 78, column: 20, scope: !141)
!145 = !DILocation(line: 78, column: 5, scope: !141)
!146 = !DILocation(line: 78, column: 18, scope: !141)
!147 = !DILocation(line: 77, column: 60, scope: !141)
!148 = !DILocation(line: 77, column: 20, scope: !141)
!149 = distinct !{!149, !143, !150, !151}
!150 = !DILocation(line: 78, column: 28, scope: !137)
!151 = !{!"llvm.loop.name", !"VITIS_LOOP_77_3"}
!152 = !DILocation(line: 80, column: 3, scope: !47)
!153 = !DILocation(line: 80, column: 24, scope: !47)
!154 = !DILocation(line: 81, column: 3, scope: !47)
!155 = !DILocation(line: 81, column: 19, scope: !47)
!156 = !DILocalVariable(name: "horizon", scope: !47, file: !8, line: 63, type: !97)
!157 = !DILocation(line: 63, column: 11, scope: !47)
!158 = !DILocation(line: 83, column: 8, scope: !159)
!159 = distinct !DILexicalBlock(scope: !47, file: !8, line: 83, column: 3)
!160 = !DILocation(line: 83, column: 29, scope: !161)
!161 = distinct !DILexicalBlock(scope: !159, file: !8, line: 83, column: 3)
!162 = !DILocation(line: 83, column: 3, scope: !159)
!163 = !DILocalVariable(name: "cnt", scope: !47, file: !8, line: 64, type: !102)
!164 = !DILocation(line: 64, column: 16, scope: !47)
!165 = !DILocation(line: 84, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !8, line: 83, column: 50)
!167 = !DILocalVariable(name: "n", scope: !47, file: !8, line: 61, type: !50)
!168 = !DILocation(line: 61, column: 15, scope: !47)
!169 = !DILocation(line: 87, column: 10, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !8, line: 87, column: 5)
!171 = !DILocation(line: 87, column: 19, scope: !172)
!172 = distinct !DILexicalBlock(scope: !170, file: !8, line: 87, column: 5)
!173 = !DILocation(line: 87, column: 5, scope: !170)
!174 = !DILocation(line: 88, column: 11, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !8, line: 88, column: 11)
!176 = distinct !DILexicalBlock(scope: !172, file: !8, line: 87, column: 32)
!177 = !DILocation(line: 88, column: 20, scope: !175)
!178 = !DILocation(line: 88, column: 11, scope: !176)
!179 = !DILocation(line: 89, column: 34, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !8, line: 88, column: 32)
!181 = !DILocalVariable(name: "tmp_begin", scope: !180, file: !8, line: 89, type: !102)
!182 = !DILocation(line: 89, column: 22, scope: !180)
!183 = !DILocation(line: 90, column: 32, scope: !180)
!184 = !DILocalVariable(name: "tmp_end", scope: !180, file: !8, line: 90, type: !102)
!185 = !DILocation(line: 90, column: 22, scope: !180)
!186 = !DILocation(line: 90, column: 9, scope: !180)
!187 = !DILocalVariable(name: "e", scope: !47, file: !8, line: 62, type: !102)
!188 = !DILocation(line: 62, column: 16, scope: !47)
!189 = !DILocation(line: 92, column: 14, scope: !190)
!190 = distinct !DILexicalBlock(scope: !180, file: !8, line: 92, column: 9)
!191 = !DILocation(line: 92, column: 31, scope: !192)
!192 = distinct !DILexicalBlock(scope: !190, file: !8, line: 92, column: 9)
!193 = !DILocation(line: 92, column: 9, scope: !190)
!194 = !DILocation(line: 93, column: 34, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !8, line: 92, column: 47)
!196 = !DILocalVariable(name: "tmp_dst", scope: !195, file: !8, line: 93, type: !50)
!197 = !DILocation(line: 93, column: 24, scope: !195)
!198 = !DILocation(line: 94, column: 31, scope: !195)
!199 = !DILocalVariable(name: "tmp_level", scope: !195, file: !8, line: 94, type: !97)
!200 = !DILocation(line: 94, column: 19, scope: !195)
!201 = !DILocation(line: 96, column: 25, scope: !202)
!202 = distinct !DILexicalBlock(scope: !195, file: !8, line: 96, column: 15)
!203 = !DILocation(line: 96, column: 15, scope: !195)
!204 = !DILocation(line: 97, column: 38, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !8, line: 96, column: 33)
!206 = !DILocation(line: 97, column: 13, scope: !205)
!207 = !DILocation(line: 97, column: 28, scope: !205)
!208 = !DILocation(line: 98, column: 13, scope: !205)
!209 = !DILocation(line: 99, column: 11, scope: !205)
!210 = !DILocation(line: 100, column: 9, scope: !195)
!211 = !DILocation(line: 92, column: 43, scope: !192)
!212 = !DILocation(line: 92, column: 9, scope: !192)
!213 = distinct !{!213, !193, !214, !215}
!214 = !DILocation(line: 100, column: 9, scope: !190)
!215 = !{!"llvm.loop.name", !"loop_neighbors"}
!216 = !DILocation(line: 101, column: 7, scope: !180)
!217 = !DILocation(line: 102, column: 5, scope: !176)
!218 = !DILocation(line: 87, column: 28, scope: !172)
!219 = !DILocation(line: 87, column: 5, scope: !172)
!220 = distinct !{!220, !173, !221, !222}
!221 = !DILocation(line: 102, column: 5, scope: !170)
!222 = !{!"llvm.loop.name", !"loop_nodes"}
!223 = !DILocation(line: 103, column: 31, scope: !224)
!224 = distinct !DILexicalBlock(scope: !166, file: !8, line: 103, column: 9)
!225 = !DILocation(line: 103, column: 10, scope: !224)
!226 = !DILocation(line: 103, column: 36, scope: !224)
!227 = !DILocation(line: 103, column: 43, scope: !224)
!228 = !DILocation(line: 103, column: 9, scope: !166)
!229 = !DILocation(line: 104, column: 7, scope: !224)
!230 = !DILocation(line: 105, column: 3, scope: !166)
!231 = !DILocation(line: 83, column: 46, scope: !161)
!232 = !DILocation(line: 83, column: 3, scope: !161)
!233 = distinct !{!233, !162, !234, !235}
!234 = !DILocation(line: 105, column: 3, scope: !159)
!235 = !{!"llvm.loop.name", !"loop_horizons"}
!236 = !DILocation(line: 106, column: 30, scope: !47)
!237 = !DILocation(line: 106, column: 3, scope: !47)
!238 = !DILocation(line: 107, column: 39, scope: !47)
!239 = !DILocation(line: 107, column: 3, scope: !47)
!240 = !DILocation(line: 108, column: 1, scope: !47)
