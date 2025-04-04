; ModuleID = '/workspace/examples/bfs_bulk/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @hls_top(i32 %starting_node, i32 %levels, i32 %node, i32* "fpga.decayed.dim.hint"="256" %xnodes_b, i32* "fpga.decayed.dim.hint"="256" %xnodes_e, i32* "fpga.decayed.dim.hint"="4096" %xedges, i32* "fpga.decayed.dim.hint"="256" %xlevel, i32* "fpga.decayed.dim.hint"="10" %xlevel_counts) #0 !dbg !7 !fpga.function.pragma !14 {
entry:
  %node_edge_begin = alloca [256 x i32], align 4
  %node_edge_end = alloca [256 x i32], align 4
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
  %0 = bitcast [256 x i32]* %node_edge_begin to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %0) #9, !dbg !42
  call void @llvm.dbg.declare(metadata [256 x i32]* %node_edge_begin, metadata !43, metadata !DIExpression()), !dbg !47
  %1 = bitcast [256 x i32]* %node_edge_end to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %1) #9, !dbg !48
  call void @llvm.dbg.declare(metadata [256 x i32]* %node_edge_end, metadata !49, metadata !DIExpression()), !dbg !50
  %2 = bitcast [4096 x i32]* %edges_dst to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %2) #9, !dbg !51
  call void @llvm.dbg.declare(metadata [4096 x i32]* %edges_dst, metadata !52, metadata !DIExpression()), !dbg !56
  %3 = bitcast [256 x i32]* %level to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %3) #9, !dbg !57
  call void @llvm.dbg.declare(metadata [256 x i32]* %level, metadata !58, metadata !DIExpression()), !dbg !61
  %4 = bitcast [256 x i32]* %level to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 1024, i1 false), !dbg !61
  %5 = bitcast [10 x i32]* %level_counts to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %5) #9, !dbg !62
  call void @llvm.dbg.declare(metadata [10 x i32]* %level_counts, metadata !63, metadata !DIExpression()), !dbg !68
  %6 = bitcast [10 x i32]* %level_counts to i8*, !dbg !68
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 40, i1 false), !dbg !68
  br label %VITIS_LOOP_62_1, !dbg !62

VITIS_LOOP_62_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !71
  br label %for.cond, !dbg !72

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_62_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_62_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !69, metadata !DIExpression()), !dbg !71
  %cmp = icmp slt i32 %i.0, %node, !dbg !73
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !75

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !76
  %arrayidx = getelementptr inbounds i32, i32* %xnodes_b, i64 %idxprom, !dbg !76
  %7 = load i32, i32* %arrayidx, align 4, !dbg !76
  %idxprom1 = sext i32 %i.0 to i64, !dbg !77
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %node_edge_begin, i64 0, i64 %idxprom1, !dbg !77
  store i32 %7, i32* %arrayidx2, align 4, !dbg !78
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !79
  call void @llvm.dbg.value(metadata i32 %inc, metadata !69, metadata !DIExpression()), !dbg !71
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_64_2, !dbg !82

VITIS_LOOP_64_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !86
  br label %for.cond4, !dbg !87

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_64_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_64_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !84, metadata !DIExpression()), !dbg !86
  %cmp5 = icmp slt i32 %i3.0, %node, !dbg !88
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !90

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end14

for.body7:                                        ; preds = %for.cond4
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !91
  %arrayidx9 = getelementptr inbounds i32, i32* %xnodes_e, i64 %idxprom8, !dbg !91
  %8 = load i32, i32* %arrayidx9, align 4, !dbg !91
  %idxprom10 = sext i32 %i3.0 to i64, !dbg !92
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* %node_edge_end, i64 0, i64 %idxprom10, !dbg !92
  store i32 %8, i32* %arrayidx11, align 4, !dbg !93
  br label %for.inc12, !dbg !92

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i3.0, 1, !dbg !94
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !84, metadata !DIExpression()), !dbg !86
  br label %for.cond4, !dbg !95, !llvm.loop !96

for.end14:                                        ; preds = %for.cond.cleanup6
  br label %VITIS_LOOP_67_3, !dbg !97

VITIS_LOOP_67_3:                                  ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !99, metadata !DIExpression()), !dbg !101
  br label %for.cond16, !dbg !102

for.cond16:                                       ; preds = %for.inc24, %VITIS_LOOP_67_3
  %i15.0 = phi i32 [ 0, %VITIS_LOOP_67_3 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %i15.0, metadata !99, metadata !DIExpression()), !dbg !101
  %conv = sext i32 %i15.0 to i64, !dbg !103
  %cmp17 = icmp slt i64 %conv, 4096, !dbg !105
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18, !dbg !106

for.cond.cleanup18:                               ; preds = %for.cond16
  br label %for.end26

for.body19:                                       ; preds = %for.cond16
  %idxprom20 = sext i32 %i15.0 to i64, !dbg !107
  %arrayidx21 = getelementptr inbounds i32, i32* %xedges, i64 %idxprom20, !dbg !107
  %9 = load i32, i32* %arrayidx21, align 4, !dbg !107
  %idxprom22 = sext i32 %i15.0 to i64, !dbg !108
  %arrayidx23 = getelementptr inbounds [4096 x i32], [4096 x i32]* %edges_dst, i64 0, i64 %idxprom22, !dbg !108
  store i32 %9, i32* %arrayidx23, align 4, !dbg !109
  br label %for.inc24, !dbg !108

for.inc24:                                        ; preds = %for.body19
  %inc25 = add nsw i32 %i15.0, 1, !dbg !110
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !99, metadata !DIExpression()), !dbg !101
  br label %for.cond16, !dbg !111, !llvm.loop !112

for.end26:                                        ; preds = %for.cond.cleanup18
  %idxprom27 = sext i32 %starting_node to i64, !dbg !115
  %arrayidx28 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom27, !dbg !115
  store i32 0, i32* %arrayidx28, align 4, !dbg !116
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 0, !dbg !117
  store i32 1, i32* %arrayidx29, align 4, !dbg !118
  br label %loop_horizons, !dbg !117

loop_horizons:                                    ; preds = %for.end26
  call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()), !dbg !120
  br label %for.cond30, !dbg !121

for.cond30:                                       ; preds = %for.inc68, %loop_horizons
  %horizon.0 = phi i32 [ 0, %loop_horizons ], [ %inc69, %for.inc68 ]
  call void @llvm.dbg.value(metadata i32 %horizon.0, metadata !119, metadata !DIExpression()), !dbg !120
  %cmp31 = icmp slt i32 %horizon.0, %levels, !dbg !123
  br i1 %cmp31, label %for.body32, label %for.end70, !dbg !125

for.body32:                                       ; preds = %for.cond30
  call void @llvm.dbg.value(metadata i32 0, metadata !126, metadata !DIExpression()), !dbg !127
  br label %loop_nodes, !dbg !128

loop_nodes:                                       ; preds = %for.body32
  call void @llvm.dbg.value(metadata i32 0, metadata !130, metadata !DIExpression()), !dbg !131
  br label %for.cond33, !dbg !132

for.cond33:                                       ; preds = %for.inc59, %loop_nodes
  %n.0 = phi i32 [ 0, %loop_nodes ], [ %inc60, %for.inc59 ]
  %cnt.0 = phi i32 [ 0, %loop_nodes ], [ %cnt.3, %for.inc59 ]
  call void @llvm.dbg.value(metadata i32 %cnt.0, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !130, metadata !DIExpression()), !dbg !131
  %cmp34 = icmp slt i32 %n.0, %node, !dbg !134
  br i1 %cmp34, label %for.body35, label %for.end61, !dbg !136

for.body35:                                       ; preds = %for.cond33
  %idxprom36 = sext i32 %n.0 to i64, !dbg !137
  %arrayidx37 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom36, !dbg !137
  %10 = load i32, i32* %arrayidx37, align 4, !dbg !137
  %cmp38 = icmp eq i32 %10, %horizon.0, !dbg !140
  br i1 %cmp38, label %if.then, label %if.end58, !dbg !141

if.then:                                          ; preds = %for.body35
  %idxprom39 = sext i32 %n.0 to i64, !dbg !142
  %arrayidx40 = getelementptr inbounds [256 x i32], [256 x i32]* %node_edge_begin, i64 0, i64 %idxprom39, !dbg !142
  %11 = load i32, i32* %arrayidx40, align 4, !dbg !142
  call void @llvm.dbg.value(metadata i32 %11, metadata !144, metadata !DIExpression()), !dbg !145
  %idxprom41 = sext i32 %n.0 to i64, !dbg !146
  %arrayidx42 = getelementptr inbounds [256 x i32], [256 x i32]* %node_edge_end, i64 0, i64 %idxprom41, !dbg !146
  %12 = load i32, i32* %arrayidx42, align 4, !dbg !146
  call void @llvm.dbg.value(metadata i32 %12, metadata !147, metadata !DIExpression()), !dbg !148
  br label %loop_neighbors, !dbg !149

loop_neighbors:                                   ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 %11, metadata !150, metadata !DIExpression()), !dbg !151
  br label %for.cond43, !dbg !152

for.cond43:                                       ; preds = %for.inc55, %loop_neighbors
  %e.0 = phi i32 [ %11, %loop_neighbors ], [ %inc56, %for.inc55 ]
  %cnt.1 = phi i32 [ %cnt.0, %loop_neighbors ], [ %cnt.2, %for.inc55 ]
  call void @llvm.dbg.value(metadata i32 %cnt.1, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !150, metadata !DIExpression()), !dbg !151
  %cmp44 = icmp slt i32 %e.0, %12, !dbg !154
  br i1 %cmp44, label %for.body45, label %for.end57, !dbg !156

for.body45:                                       ; preds = %for.cond43
  %idxprom46 = sext i32 %e.0 to i64, !dbg !157
  %arrayidx47 = getelementptr inbounds [4096 x i32], [4096 x i32]* %edges_dst, i64 0, i64 %idxprom46, !dbg !157
  %13 = load i32, i32* %arrayidx47, align 4, !dbg !157
  call void @llvm.dbg.value(metadata i32 %13, metadata !159, metadata !DIExpression()), !dbg !160
  %idxprom48 = sext i32 %13 to i64, !dbg !161
  %arrayidx49 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom48, !dbg !161
  %14 = load i32, i32* %arrayidx49, align 4, !dbg !161
  call void @llvm.dbg.value(metadata i32 %14, metadata !162, metadata !DIExpression()), !dbg !163
  %cmp50 = icmp eq i32 %14, 255, !dbg !164
  br i1 %cmp50, label %if.then51, label %if.end, !dbg !166

if.then51:                                        ; preds = %for.body45
  %add = add nsw i32 %horizon.0, 1, !dbg !167
  %idxprom52 = sext i32 %13 to i64, !dbg !169
  %arrayidx53 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom52, !dbg !169
  store i32 %add, i32* %arrayidx53, align 4, !dbg !170
  %inc54 = add nsw i32 %cnt.1, 1, !dbg !171
  call void @llvm.dbg.value(metadata i32 %inc54, metadata !126, metadata !DIExpression()), !dbg !127
  br label %if.end, !dbg !172

if.end:                                           ; preds = %if.then51, %for.body45
  %cnt.2 = phi i32 [ %inc54, %if.then51 ], [ %cnt.1, %for.body45 ]
  call void @llvm.dbg.value(metadata i32 %cnt.2, metadata !126, metadata !DIExpression()), !dbg !127
  br label %for.inc55, !dbg !173

for.inc55:                                        ; preds = %if.end
  %inc56 = add nsw i32 %e.0, 1, !dbg !174
  call void @llvm.dbg.value(metadata i32 %inc56, metadata !150, metadata !DIExpression()), !dbg !151
  br label %for.cond43, !dbg !175, !llvm.loop !176

for.end57:                                        ; preds = %for.cond43
  br label %if.end58, !dbg !179

if.end58:                                         ; preds = %for.end57, %for.body35
  %cnt.3 = phi i32 [ %cnt.1, %for.end57 ], [ %cnt.0, %for.body35 ]
  call void @llvm.dbg.value(metadata i32 %cnt.3, metadata !126, metadata !DIExpression()), !dbg !127
  br label %for.inc59, !dbg !180

for.inc59:                                        ; preds = %if.end58
  %inc60 = add nsw i32 %n.0, 1, !dbg !181
  call void @llvm.dbg.value(metadata i32 %inc60, metadata !130, metadata !DIExpression()), !dbg !131
  br label %for.cond33, !dbg !182, !llvm.loop !183

for.end61:                                        ; preds = %for.cond33
  %add62 = add nsw i32 %horizon.0, 1, !dbg !186
  %idxprom63 = sext i32 %add62 to i64, !dbg !188
  %arrayidx64 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 %idxprom63, !dbg !188
  store i32 %cnt.0, i32* %arrayidx64, align 4, !dbg !189
  %cmp65 = icmp eq i32 %cnt.0, 0, !dbg !190
  br i1 %cmp65, label %if.then66, label %if.end67, !dbg !191

if.then66:                                        ; preds = %for.end61
  br label %for.end70, !dbg !192

if.end67:                                         ; preds = %for.end61
  br label %for.inc68, !dbg !193

for.inc68:                                        ; preds = %if.end67
  %inc69 = add nsw i32 %horizon.0, 1, !dbg !194
  call void @llvm.dbg.value(metadata i32 %inc69, metadata !119, metadata !DIExpression()), !dbg !120
  br label %for.cond30, !dbg !195, !llvm.loop !196

for.end70:                                        ; preds = %if.then66, %for.cond30
  br label %VITIS_LOOP_96_4, !dbg !197

VITIS_LOOP_96_4:                                  ; preds = %for.end70
  call void @llvm.dbg.value(metadata i32 0, metadata !199, metadata !DIExpression()), !dbg !201
  br label %for.cond72, !dbg !202

for.cond72:                                       ; preds = %for.inc80, %VITIS_LOOP_96_4
  %i71.0 = phi i32 [ 0, %VITIS_LOOP_96_4 ], [ %inc81, %for.inc80 ]
  call void @llvm.dbg.value(metadata i32 %i71.0, metadata !199, metadata !DIExpression()), !dbg !201
  %cmp73 = icmp slt i32 %i71.0, %node, !dbg !203
  br i1 %cmp73, label %for.body75, label %for.cond.cleanup74, !dbg !205

for.cond.cleanup74:                               ; preds = %for.cond72
  br label %for.end82

for.body75:                                       ; preds = %for.cond72
  %idxprom76 = sext i32 %i71.0 to i64, !dbg !206
  %arrayidx77 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom76, !dbg !206
  %15 = load i32, i32* %arrayidx77, align 4, !dbg !206
  %idxprom78 = sext i32 %i71.0 to i64, !dbg !207
  %arrayidx79 = getelementptr inbounds i32, i32* %xlevel, i64 %idxprom78, !dbg !207
  store i32 %15, i32* %arrayidx79, align 4, !dbg !208
  br label %for.inc80, !dbg !207

for.inc80:                                        ; preds = %for.body75
  %inc81 = add nsw i32 %i71.0, 1, !dbg !209
  call void @llvm.dbg.value(metadata i32 %inc81, metadata !199, metadata !DIExpression()), !dbg !201
  br label %for.cond72, !dbg !210, !llvm.loop !211

for.end82:                                        ; preds = %for.cond.cleanup74
  br label %VITIS_LOOP_99_5, !dbg !212

VITIS_LOOP_99_5:                                  ; preds = %for.end82
  call void @llvm.dbg.value(metadata i32 0, metadata !214, metadata !DIExpression()), !dbg !216
  br label %for.cond84, !dbg !217

for.cond84:                                       ; preds = %for.inc92, %VITIS_LOOP_99_5
  %i83.0 = phi i32 [ 0, %VITIS_LOOP_99_5 ], [ %inc93, %for.inc92 ]
  call void @llvm.dbg.value(metadata i32 %i83.0, metadata !214, metadata !DIExpression()), !dbg !216
  %cmp85 = icmp slt i32 %i83.0, %levels, !dbg !218
  br i1 %cmp85, label %for.body87, label %for.cond.cleanup86, !dbg !220

for.cond.cleanup86:                               ; preds = %for.cond84
  br label %for.end94

for.body87:                                       ; preds = %for.cond84
  %idxprom88 = sext i32 %i83.0 to i64, !dbg !221
  %arrayidx89 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 %idxprom88, !dbg !221
  %16 = load i32, i32* %arrayidx89, align 4, !dbg !221
  %idxprom90 = sext i32 %i83.0 to i64, !dbg !222
  %arrayidx91 = getelementptr inbounds i32, i32* %xlevel_counts, i64 %idxprom90, !dbg !222
  store i32 %16, i32* %arrayidx91, align 4, !dbg !223
  br label %for.inc92, !dbg !222

for.inc92:                                        ; preds = %for.body87
  %inc93 = add nsw i32 %i83.0, 1, !dbg !224
  call void @llvm.dbg.value(metadata i32 %inc93, metadata !214, metadata !DIExpression()), !dbg !216
  br label %for.cond84, !dbg !225, !llvm.loop !226

for.end94:                                        ; preds = %for.cond.cleanup86
  %17 = bitcast [10 x i32]* %level_counts to i8*, !dbg !229
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %17) #9, !dbg !229
  %18 = bitcast [256 x i32]* %level to i8*, !dbg !229
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %18) #9, !dbg !229
  %19 = bitcast [4096 x i32]* %edges_dst to i8*, !dbg !229
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %19) #9, !dbg !229
  %20 = bitcast [256 x i32]* %node_edge_end to i8*, !dbg !229
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %20) #9, !dbg !229
  %21 = bitcast [256 x i32]* %node_edge_begin to i8*, !dbg !229
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %21) #9, !dbg !229
  ret void, !dbg !229
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
!1 = !DIFile(filename: "/workspace/examples/bfs_bulk/bfs_bulk_prj/solution/.autopilot/db/bfs_bulk.pp.0.c", directory: "/workspace/examples/bfs_bulk")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 37, type: !9, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "bfs_bulk.c", directory: "/workspace/examples/bfs_bulk")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !12, !12, !13, !13, !13, !13, !13}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_index_t", file: !8, line: 21, baseType: !12)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!14 = !{!15}
!15 = !{!"fpga.top", !"user", !16}
!16 = !DILocation(line: 37, column: 16, scope: !7)
!17 = !DILocalVariable(name: "starting_node", arg: 1, scope: !7, file: !8, line: 37, type: !11)
!18 = !DILocation(line: 37, column: 69, scope: !7)
!19 = !DILocalVariable(name: "levels", arg: 2, scope: !7, file: !8, line: 37, type: !12)
!20 = !DILocation(line: 37, column: 88, scope: !7)
!21 = !DILocalVariable(name: "node", arg: 3, scope: !7, file: !8, line: 37, type: !12)
!22 = !DILocation(line: 37, column: 100, scope: !7)
!23 = !DILocalVariable(name: "xnodes_b", arg: 4, scope: !7, file: !8, line: 38, type: !13)
!24 = !DILocation(line: 38, column: 18, scope: !7)
!25 = !DILocalVariable(name: "xnodes_e", arg: 5, scope: !7, file: !8, line: 38, type: !13)
!26 = !DILocation(line: 38, column: 44, scope: !7)
!27 = !DILocalVariable(name: "xedges", arg: 6, scope: !7, file: !8, line: 38, type: !13)
!28 = !DILocation(line: 38, column: 70, scope: !7)
!29 = !DILocalVariable(name: "xlevel", arg: 7, scope: !7, file: !8, line: 39, type: !13)
!30 = !DILocation(line: 39, column: 18, scope: !7)
!31 = !DILocalVariable(name: "xlevel_counts", arg: 8, scope: !7, file: !8, line: 39, type: !13)
!32 = !DILocation(line: 39, column: 42, scope: !7)
!33 = !DILocation(line: 41, column: 9, scope: !7)
!34 = !DILocation(line: 42, column: 9, scope: !7)
!35 = !DILocation(line: 43, column: 9, scope: !7)
!36 = !DILocation(line: 44, column: 9, scope: !7)
!37 = !DILocation(line: 45, column: 9, scope: !7)
!38 = !DILocation(line: 46, column: 9, scope: !7)
!39 = !DILocation(line: 47, column: 9, scope: !7)
!40 = !DILocation(line: 48, column: 9, scope: !7)
!41 = !DILocation(line: 49, column: 9, scope: !7)
!42 = !DILocation(line: 56, column: 3, scope: !7)
!43 = !DILocalVariable(name: "node_edge_begin", scope: !7, file: !8, line: 56, type: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 256)
!47 = !DILocation(line: 56, column: 7, scope: !7)
!48 = !DILocation(line: 57, column: 3, scope: !7)
!49 = !DILocalVariable(name: "node_edge_end", scope: !7, file: !8, line: 57, type: !44)
!50 = !DILocation(line: 57, column: 7, scope: !7)
!51 = !DILocation(line: 58, column: 3, scope: !7)
!52 = !DILocalVariable(name: "edges_dst", scope: !7, file: !8, line: 58, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 131072, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 4096)
!56 = !DILocation(line: 58, column: 7, scope: !7)
!57 = !DILocation(line: 59, column: 3, scope: !7)
!58 = !DILocalVariable(name: "level", scope: !7, file: !8, line: 59, type: !59)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8192, elements: !45)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "level_t", file: !8, line: 35, baseType: !12)
!61 = !DILocation(line: 59, column: 11, scope: !7)
!62 = !DILocation(line: 60, column: 3, scope: !7)
!63 = !DILocalVariable(name: "level_counts", scope: !7, file: !8, line: 60, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 320, elements: !66)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_index_t", file: !8, line: 20, baseType: !12)
!66 = !{!67}
!67 = !DISubrange(count: 10)
!68 = !DILocation(line: 60, column: 16, scope: !7)
!69 = !DILocalVariable(name: "i", scope: !70, file: !8, line: 62, type: !12)
!70 = distinct !DILexicalBlock(scope: !7, file: !8, line: 62, column: 20)
!71 = !DILocation(line: 62, column: 29, scope: !70)
!72 = !DILocation(line: 62, column: 25, scope: !70)
!73 = !DILocation(line: 62, column: 38, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !8, line: 62, column: 20)
!75 = !DILocation(line: 62, column: 20, scope: !70)
!76 = !DILocation(line: 63, column: 26, scope: !74)
!77 = !DILocation(line: 63, column: 5, scope: !74)
!78 = !DILocation(line: 63, column: 24, scope: !74)
!79 = !DILocation(line: 62, column: 47, scope: !74)
!80 = !DILocation(line: 62, column: 20, scope: !74)
!81 = distinct !{!81, !75, !82, !83}
!82 = !DILocation(line: 63, column: 36, scope: !70)
!83 = !{!"llvm.loop.name", !"VITIS_LOOP_62_1"}
!84 = !DILocalVariable(name: "i", scope: !85, file: !8, line: 64, type: !12)
!85 = distinct !DILexicalBlock(scope: !7, file: !8, line: 64, column: 20)
!86 = !DILocation(line: 64, column: 29, scope: !85)
!87 = !DILocation(line: 64, column: 25, scope: !85)
!88 = !DILocation(line: 64, column: 38, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !8, line: 64, column: 20)
!90 = !DILocation(line: 64, column: 20, scope: !85)
!91 = !DILocation(line: 65, column: 24, scope: !89)
!92 = !DILocation(line: 65, column: 5, scope: !89)
!93 = !DILocation(line: 65, column: 22, scope: !89)
!94 = !DILocation(line: 64, column: 47, scope: !89)
!95 = !DILocation(line: 64, column: 20, scope: !89)
!96 = distinct !{!96, !90, !97, !98}
!97 = !DILocation(line: 65, column: 34, scope: !85)
!98 = !{!"llvm.loop.name", !"VITIS_LOOP_64_2"}
!99 = !DILocalVariable(name: "i", scope: !100, file: !8, line: 67, type: !12)
!100 = distinct !DILexicalBlock(scope: !7, file: !8, line: 67, column: 20)
!101 = !DILocation(line: 67, column: 29, scope: !100)
!102 = !DILocation(line: 67, column: 25, scope: !100)
!103 = !DILocation(line: 67, column: 36, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !8, line: 67, column: 20)
!105 = !DILocation(line: 67, column: 38, scope: !104)
!106 = !DILocation(line: 67, column: 20, scope: !100)
!107 = !DILocation(line: 68, column: 20, scope: !104)
!108 = !DILocation(line: 68, column: 5, scope: !104)
!109 = !DILocation(line: 68, column: 18, scope: !104)
!110 = !DILocation(line: 67, column: 60, scope: !104)
!111 = !DILocation(line: 67, column: 20, scope: !104)
!112 = distinct !{!112, !106, !113, !114}
!113 = !DILocation(line: 68, column: 28, scope: !100)
!114 = !{!"llvm.loop.name", !"VITIS_LOOP_67_3"}
!115 = !DILocation(line: 70, column: 3, scope: !7)
!116 = !DILocation(line: 70, column: 24, scope: !7)
!117 = !DILocation(line: 71, column: 3, scope: !7)
!118 = !DILocation(line: 71, column: 19, scope: !7)
!119 = !DILocalVariable(name: "horizon", scope: !7, file: !8, line: 53, type: !60)
!120 = !DILocation(line: 53, column: 11, scope: !7)
!121 = !DILocation(line: 73, column: 8, scope: !122)
!122 = distinct !DILexicalBlock(scope: !7, file: !8, line: 73, column: 3)
!123 = !DILocation(line: 73, column: 29, scope: !124)
!124 = distinct !DILexicalBlock(scope: !122, file: !8, line: 73, column: 3)
!125 = !DILocation(line: 73, column: 3, scope: !122)
!126 = !DILocalVariable(name: "cnt", scope: !7, file: !8, line: 54, type: !65)
!127 = !DILocation(line: 54, column: 16, scope: !7)
!128 = !DILocation(line: 74, column: 5, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !8, line: 73, column: 50)
!130 = !DILocalVariable(name: "n", scope: !7, file: !8, line: 51, type: !11)
!131 = !DILocation(line: 51, column: 15, scope: !7)
!132 = !DILocation(line: 77, column: 10, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !8, line: 77, column: 5)
!134 = !DILocation(line: 77, column: 19, scope: !135)
!135 = distinct !DILexicalBlock(scope: !133, file: !8, line: 77, column: 5)
!136 = !DILocation(line: 77, column: 5, scope: !133)
!137 = !DILocation(line: 78, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !8, line: 78, column: 11)
!139 = distinct !DILexicalBlock(scope: !135, file: !8, line: 77, column: 32)
!140 = !DILocation(line: 78, column: 20, scope: !138)
!141 = !DILocation(line: 78, column: 11, scope: !139)
!142 = !DILocation(line: 79, column: 34, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !8, line: 78, column: 32)
!144 = !DILocalVariable(name: "tmp_begin", scope: !143, file: !8, line: 79, type: !65)
!145 = !DILocation(line: 79, column: 22, scope: !143)
!146 = !DILocation(line: 80, column: 32, scope: !143)
!147 = !DILocalVariable(name: "tmp_end", scope: !143, file: !8, line: 80, type: !65)
!148 = !DILocation(line: 80, column: 22, scope: !143)
!149 = !DILocation(line: 80, column: 9, scope: !143)
!150 = !DILocalVariable(name: "e", scope: !7, file: !8, line: 52, type: !65)
!151 = !DILocation(line: 52, column: 16, scope: !7)
!152 = !DILocation(line: 82, column: 14, scope: !153)
!153 = distinct !DILexicalBlock(scope: !143, file: !8, line: 82, column: 9)
!154 = !DILocation(line: 82, column: 31, scope: !155)
!155 = distinct !DILexicalBlock(scope: !153, file: !8, line: 82, column: 9)
!156 = !DILocation(line: 82, column: 9, scope: !153)
!157 = !DILocation(line: 83, column: 34, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !8, line: 82, column: 47)
!159 = !DILocalVariable(name: "tmp_dst", scope: !158, file: !8, line: 83, type: !11)
!160 = !DILocation(line: 83, column: 24, scope: !158)
!161 = !DILocation(line: 84, column: 31, scope: !158)
!162 = !DILocalVariable(name: "tmp_level", scope: !158, file: !8, line: 84, type: !60)
!163 = !DILocation(line: 84, column: 19, scope: !158)
!164 = !DILocation(line: 86, column: 25, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !8, line: 86, column: 15)
!166 = !DILocation(line: 86, column: 15, scope: !158)
!167 = !DILocation(line: 87, column: 38, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !8, line: 86, column: 33)
!169 = !DILocation(line: 87, column: 13, scope: !168)
!170 = !DILocation(line: 87, column: 28, scope: !168)
!171 = !DILocation(line: 88, column: 13, scope: !168)
!172 = !DILocation(line: 89, column: 11, scope: !168)
!173 = !DILocation(line: 90, column: 9, scope: !158)
!174 = !DILocation(line: 82, column: 43, scope: !155)
!175 = !DILocation(line: 82, column: 9, scope: !155)
!176 = distinct !{!176, !156, !177, !178}
!177 = !DILocation(line: 90, column: 9, scope: !153)
!178 = !{!"llvm.loop.name", !"loop_neighbors"}
!179 = !DILocation(line: 91, column: 7, scope: !143)
!180 = !DILocation(line: 92, column: 5, scope: !139)
!181 = !DILocation(line: 77, column: 28, scope: !135)
!182 = !DILocation(line: 77, column: 5, scope: !135)
!183 = distinct !{!183, !136, !184, !185}
!184 = !DILocation(line: 92, column: 5, scope: !133)
!185 = !{!"llvm.loop.name", !"loop_nodes"}
!186 = !DILocation(line: 93, column: 31, scope: !187)
!187 = distinct !DILexicalBlock(scope: !129, file: !8, line: 93, column: 9)
!188 = !DILocation(line: 93, column: 10, scope: !187)
!189 = !DILocation(line: 93, column: 36, scope: !187)
!190 = !DILocation(line: 93, column: 43, scope: !187)
!191 = !DILocation(line: 93, column: 9, scope: !129)
!192 = !DILocation(line: 94, column: 7, scope: !187)
!193 = !DILocation(line: 95, column: 3, scope: !129)
!194 = !DILocation(line: 73, column: 46, scope: !124)
!195 = !DILocation(line: 73, column: 3, scope: !124)
!196 = distinct !{!196, !125, !197, !198}
!197 = !DILocation(line: 95, column: 3, scope: !122)
!198 = !{!"llvm.loop.name", !"loop_horizons"}
!199 = !DILocalVariable(name: "i", scope: !200, file: !8, line: 96, type: !12)
!200 = distinct !DILexicalBlock(scope: !7, file: !8, line: 96, column: 20)
!201 = !DILocation(line: 96, column: 29, scope: !200)
!202 = !DILocation(line: 96, column: 25, scope: !200)
!203 = !DILocation(line: 96, column: 38, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !8, line: 96, column: 20)
!205 = !DILocation(line: 96, column: 20, scope: !200)
!206 = !DILocation(line: 97, column: 17, scope: !204)
!207 = !DILocation(line: 97, column: 5, scope: !204)
!208 = !DILocation(line: 97, column: 15, scope: !204)
!209 = !DILocation(line: 96, column: 47, scope: !204)
!210 = !DILocation(line: 96, column: 20, scope: !204)
!211 = distinct !{!211, !205, !212, !213}
!212 = !DILocation(line: 97, column: 24, scope: !200)
!213 = !{!"llvm.loop.name", !"VITIS_LOOP_96_4"}
!214 = !DILocalVariable(name: "i", scope: !215, file: !8, line: 99, type: !12)
!215 = distinct !DILexicalBlock(scope: !7, file: !8, line: 99, column: 20)
!216 = !DILocation(line: 99, column: 29, scope: !215)
!217 = !DILocation(line: 99, column: 25, scope: !215)
!218 = !DILocation(line: 99, column: 38, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !8, line: 99, column: 20)
!220 = !DILocation(line: 99, column: 20, scope: !215)
!221 = !DILocation(line: 100, column: 24, scope: !219)
!222 = !DILocation(line: 100, column: 5, scope: !219)
!223 = !DILocation(line: 100, column: 22, scope: !219)
!224 = !DILocation(line: 99, column: 49, scope: !219)
!225 = !DILocation(line: 99, column: 20, scope: !219)
!226 = distinct !{!226, !220, !227, !228}
!227 = !DILocation(line: 100, column: 38, scope: !215)
!228 = !{!"llvm.loop.name", !"VITIS_LOOP_99_5"}
!229 = !DILocation(line: 101, column: 1, scope: !7)
