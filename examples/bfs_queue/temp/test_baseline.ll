; ModuleID = '/workspace/examples/bfs_queue/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @_Z12stream_writejPiS_(i32 %size, i32* %array1, i32* %array2) #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32* %array1, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32* %array2, metadata !23, metadata !DIExpression()), !dbg !24
  br label %VITIS_LOOP_56_1, !dbg !25

VITIS_LOOP_56_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !28
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_56_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_56_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !26, metadata !DIExpression()), !dbg !28
  %cmp = icmp ult i32 %i.0, %size, !dbg !30
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !32

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !33
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !33
  %0 = load i32, i32* %arrayidx, align 4, !dbg !33
  %idxprom1 = sext i32 %i.0 to i64, !dbg !35
  %arrayidx2 = getelementptr inbounds i32, i32* %array1, i64 %idxprom1, !dbg !35
  store i32 %0, i32* %arrayidx2, align 4, !dbg !36
  br label %for.inc, !dbg !37

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !38
  call void @llvm.dbg.value(metadata i32 %inc, metadata !26, metadata !DIExpression()), !dbg !28
  br label %for.cond, !dbg !39, !llvm.loop !40

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !43
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
define void @_Z7hls_topiiiPiS_S_S_S_(i32 %starting_node, i32 %levels, i32 %node, i32* "fpga.decayed.dim.hint"="256" %xnodes_b, i32* "fpga.decayed.dim.hint"="256" %xnodes_e, i32* "fpga.decayed.dim.hint"="4096" %xedges, i32* "fpga.decayed.dim.hint"="256" %xlevel, i32* "fpga.decayed.dim.hint"="10" %xlevel_counts) #3 !dbg !44 !fpga.function.pragma !48 {
entry:
  %queue = alloca [256 x i32], align 4
  %nodes_edge_begin = alloca [256 x i32], align 4
  %nodes_edge_end = alloca [256 x i32], align 4
  %edges_dst = alloca [4096 x i32], align 4
  %level = alloca [256 x i32], align 4
  %level_counts = alloca [10 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %starting_node, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32 %levels, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i32 %node, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i32* %xnodes_b, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32* %xnodes_e, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32* %xedges, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32* %xlevel, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32* %xlevel_counts, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xnodes_b, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !67
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xnodes_e, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !68
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xedges, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !69
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xlevel, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !70
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xlevel_counts, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !71
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i32 %starting_node, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !72
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i32 %levels, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !73
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i32 %node, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !74
  call void @llvm.sideeffect() #9 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !75
  %0 = bitcast [256 x i32]* %queue to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %0) #10, !dbg !76
  call void @llvm.dbg.declare(metadata [256 x i32]* %queue, metadata !77, metadata !DIExpression()), !dbg !81
  %1 = bitcast [256 x i32]* %nodes_edge_begin to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %1) #10, !dbg !82
  call void @llvm.dbg.declare(metadata [256 x i32]* %nodes_edge_begin, metadata !83, metadata !DIExpression()), !dbg !85
  %2 = bitcast [256 x i32]* %nodes_edge_end to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %2) #10, !dbg !86
  call void @llvm.dbg.declare(metadata [256 x i32]* %nodes_edge_end, metadata !87, metadata !DIExpression()), !dbg !88
  %3 = bitcast [4096 x i32]* %edges_dst to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %3) #10, !dbg !89
  call void @llvm.dbg.declare(metadata [4096 x i32]* %edges_dst, metadata !90, metadata !DIExpression()), !dbg !94
  %4 = bitcast [256 x i32]* %level to i8*, !dbg !95
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %4) #10, !dbg !95
  call void @llvm.dbg.declare(metadata [256 x i32]* %level, metadata !96, metadata !DIExpression()), !dbg !99
  %5 = bitcast [256 x i32]* %level to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 1024, i1 false), !dbg !99
  %6 = bitcast [10 x i32]* %level_counts to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 40, i8* %6) #10, !dbg !100
  call void @llvm.dbg.declare(metadata [10 x i32]* %level_counts, metadata !101, metadata !DIExpression()), !dbg !106
  %7 = bitcast [10 x i32]* %level_counts to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 40, i1 false), !dbg !106
  br label %VITIS_LOOP_85_1, !dbg !100

VITIS_LOOP_85_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !107, metadata !DIExpression()), !dbg !109
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_85_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_85_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !107, metadata !DIExpression()), !dbg !109
  %cmp = icmp slt i32 %i.0, %node, !dbg !111
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !113

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !114
  %arrayidx = getelementptr inbounds i32, i32* %xnodes_b, i64 %idxprom, !dbg !114
  %8 = load i32, i32* %arrayidx, align 4, !dbg !114
  %idxprom1 = sext i32 %i.0 to i64, !dbg !116
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* %nodes_edge_begin, i64 0, i64 %idxprom1, !dbg !116
  store i32 %8, i32* %arrayidx2, align 4, !dbg !117
  br label %for.inc, !dbg !118

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !119
  call void @llvm.dbg.value(metadata i32 %inc, metadata !107, metadata !DIExpression()), !dbg !109
  br label %for.cond, !dbg !120, !llvm.loop !121

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_88_2, !dbg !122

VITIS_LOOP_88_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !124, metadata !DIExpression()), !dbg !126
  br label %for.cond4, !dbg !127

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_88_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_88_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !124, metadata !DIExpression()), !dbg !126
  %cmp5 = icmp slt i32 %i3.0, %node, !dbg !128
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !130

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end14

for.body7:                                        ; preds = %for.cond4
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !131
  %arrayidx9 = getelementptr inbounds i32, i32* %xnodes_e, i64 %idxprom8, !dbg !131
  %9 = load i32, i32* %arrayidx9, align 4, !dbg !131
  %idxprom10 = sext i32 %i3.0 to i64, !dbg !133
  %arrayidx11 = getelementptr inbounds [256 x i32], [256 x i32]* %nodes_edge_end, i64 0, i64 %idxprom10, !dbg !133
  store i32 %9, i32* %arrayidx11, align 4, !dbg !134
  br label %for.inc12, !dbg !135

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i3.0, 1, !dbg !136
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !124, metadata !DIExpression()), !dbg !126
  br label %for.cond4, !dbg !137, !llvm.loop !138

for.end14:                                        ; preds = %for.cond.cleanup6
  br label %VITIS_LOOP_92_3, !dbg !139

VITIS_LOOP_92_3:                                  ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !141, metadata !DIExpression()), !dbg !143
  br label %for.cond16, !dbg !144

for.cond16:                                       ; preds = %for.inc24, %VITIS_LOOP_92_3
  %i15.0 = phi i32 [ 0, %VITIS_LOOP_92_3 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %i15.0, metadata !141, metadata !DIExpression()), !dbg !143
  %cmp17 = icmp slt i32 %i15.0, 4096, !dbg !145
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18, !dbg !147

for.cond.cleanup18:                               ; preds = %for.cond16
  br label %for.end26

for.body19:                                       ; preds = %for.cond16
  %idxprom20 = sext i32 %i15.0 to i64, !dbg !148
  %arrayidx21 = getelementptr inbounds i32, i32* %xedges, i64 %idxprom20, !dbg !148
  %10 = load i32, i32* %arrayidx21, align 4, !dbg !148
  %idxprom22 = sext i32 %i15.0 to i64, !dbg !150
  %arrayidx23 = getelementptr inbounds [4096 x i32], [4096 x i32]* %edges_dst, i64 0, i64 %idxprom22, !dbg !150
  store i32 %10, i32* %arrayidx23, align 4, !dbg !151
  br label %for.inc24, !dbg !152

for.inc24:                                        ; preds = %for.body19
  %inc25 = add nsw i32 %i15.0, 1, !dbg !153
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !141, metadata !DIExpression()), !dbg !143
  br label %for.cond16, !dbg !154, !llvm.loop !155

for.end26:                                        ; preds = %for.cond.cleanup18
  call void @llvm.dbg.value(metadata i32 1, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i32 0, metadata !160, metadata !DIExpression()), !dbg !161
  %idxprom27 = sext i32 %starting_node to i64, !dbg !162
  %arrayidx28 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom27, !dbg !162
  store i32 0, i32* %arrayidx28, align 4, !dbg !163
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 0, !dbg !164
  store i32 1, i32* %arrayidx29, align 4, !dbg !165
  %cmp30 = icmp eq i32 1, 0, !dbg !166
  br i1 %cmp30, label %cond.true, label %cond.false, !dbg !168

cond.true:                                        ; preds = %for.end26
  br label %cond.end, !dbg !168

cond.false:                                       ; preds = %for.end26
  %sub = sub nsw i32 1, 1, !dbg !169
  br label %cond.end, !dbg !168

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 255, %cond.true ], [ %sub, %cond.false ], !dbg !168
  %idxprom31 = sext i32 %cond to i64, !dbg !170
  %arrayidx32 = getelementptr inbounds [256 x i32], [256 x i32]* %queue, i64 0, i64 %idxprom31, !dbg !170
  store i32 %starting_node, i32* %arrayidx32, align 4, !dbg !171
  %add = add nsw i32 1, 1, !dbg !172
  %rem = srem i32 %add, 256, !dbg !173
  call void @llvm.dbg.value(metadata i32 %rem, metadata !158, metadata !DIExpression()), !dbg !159
  br label %loop_queue, !dbg !174

loop_queue:                                       ; preds = %cond.end
  call void @llvm.dbg.value(metadata i32 0, metadata !175, metadata !DIExpression()), !dbg !176
  br label %for.cond33, !dbg !177

for.cond33:                                       ; preds = %for.inc85, %loop_queue
  %q_in.0 = phi i32 [ %rem, %loop_queue ], [ %q_in.1, %for.inc85 ]
  %q_out.0 = phi i32 [ 0, %loop_queue ], [ %rem46, %for.inc85 ]
  %dummy.0 = phi i32 [ 0, %loop_queue ], [ %inc86, %for.inc85 ]
  call void @llvm.dbg.value(metadata i32 %dummy.0, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i32 %q_out.0, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i32 %q_in.0, metadata !158, metadata !DIExpression()), !dbg !159
  %cmp34 = icmp slt i32 %dummy.0, %node, !dbg !179
  br i1 %cmp34, label %for.body35, label %for.end87, !dbg !181

for.body35:                                       ; preds = %for.cond33
  %cmp36 = icmp sgt i32 %q_in.0, %q_out.0, !dbg !182
  br i1 %cmp36, label %cond.true37, label %cond.false40, !dbg !185

cond.true37:                                      ; preds = %for.body35
  %add38 = add nsw i32 %q_out.0, 1, !dbg !186
  %cmp39 = icmp eq i32 %q_in.0, %add38, !dbg !187
  br i1 %cmp39, label %if.then, label %if.end, !dbg !188

cond.false40:                                     ; preds = %for.body35
  %cmp41 = icmp eq i32 %q_in.0, 0, !dbg !189
  br i1 %cmp41, label %land.lhs.true, label %if.end, !dbg !190

land.lhs.true:                                    ; preds = %cond.false40
  %cmp42 = icmp eq i32 %q_out.0, 255, !dbg !191
  br i1 %cmp42, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %land.lhs.true, %cond.true37
  br label %for.end87, !dbg !192

if.end:                                           ; preds = %land.lhs.true, %cond.false40, %cond.true37
  %idxprom43 = sext i32 %q_out.0 to i64, !dbg !193
  %arrayidx44 = getelementptr inbounds [256 x i32], [256 x i32]* %queue, i64 0, i64 %idxprom43, !dbg !193
  %11 = load i32, i32* %arrayidx44, align 4, !dbg !193
  call void @llvm.dbg.value(metadata i32 %11, metadata !194, metadata !DIExpression()), !dbg !195
  %add45 = add nsw i32 %q_out.0, 1, !dbg !196
  %rem46 = srem i32 %add45, 256, !dbg !198
  call void @llvm.dbg.value(metadata i32 %rem46, metadata !160, metadata !DIExpression()), !dbg !161
  %idxprom47 = sext i32 %11 to i64, !dbg !199
  %arrayidx48 = getelementptr inbounds [256 x i32], [256 x i32]* %nodes_edge_begin, i64 0, i64 %idxprom47, !dbg !199
  %12 = load i32, i32* %arrayidx48, align 4, !dbg !199
  call void @llvm.dbg.value(metadata i32 %12, metadata !200, metadata !DIExpression()), !dbg !201
  %idxprom49 = sext i32 %11 to i64, !dbg !202
  %arrayidx50 = getelementptr inbounds [256 x i32], [256 x i32]* %nodes_edge_end, i64 0, i64 %idxprom49, !dbg !202
  %13 = load i32, i32* %arrayidx50, align 4, !dbg !202
  call void @llvm.dbg.value(metadata i32 %13, metadata !203, metadata !DIExpression()), !dbg !204
  br label %loop_neighbors, !dbg !205

loop_neighbors:                                   ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %12, metadata !206, metadata !DIExpression()), !dbg !207
  br label %for.cond51, !dbg !208

for.cond51:                                       ; preds = %for.inc82, %loop_neighbors
  %q_in.1 = phi i32 [ %q_in.0, %loop_neighbors ], [ %q_in.2, %for.inc82 ]
  %e.0 = phi i32 [ %12, %loop_neighbors ], [ %inc83, %for.inc82 ]
  call void @llvm.dbg.value(metadata i32 %e.0, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i32 %q_in.1, metadata !158, metadata !DIExpression()), !dbg !159
  %cmp52 = icmp slt i32 %e.0, %13, !dbg !210
  br i1 %cmp52, label %for.body53, label %for.end84, !dbg !212

for.body53:                                       ; preds = %for.cond51
  %idxprom54 = sext i32 %e.0 to i64, !dbg !213
  %arrayidx55 = getelementptr inbounds [4096 x i32], [4096 x i32]* %edges_dst, i64 0, i64 %idxprom54, !dbg !213
  %14 = load i32, i32* %arrayidx55, align 4, !dbg !213
  call void @llvm.dbg.value(metadata i32 %14, metadata !215, metadata !DIExpression()), !dbg !216
  %idxprom56 = sext i32 %14 to i64, !dbg !217
  %arrayidx57 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom56, !dbg !217
  %15 = load i32, i32* %arrayidx57, align 4, !dbg !217
  call void @llvm.dbg.value(metadata i32 %15, metadata !218, metadata !DIExpression()), !dbg !219
  %cmp58 = icmp eq i32 %15, 255, !dbg !220
  br i1 %cmp58, label %if.then59, label %if.end81, !dbg !222

if.then59:                                        ; preds = %for.body53
  %idxprom61 = sext i32 %11 to i64, !dbg !223
  %arrayidx62 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom61, !dbg !223
  %16 = load i32, i32* %arrayidx62, align 4, !dbg !223
  %add63 = add nsw i32 %16, 1, !dbg !225
  call void @llvm.dbg.value(metadata i32 %add63, metadata !226, metadata !DIExpression()), !dbg !227
  %idxprom64 = sext i32 %14 to i64, !dbg !228
  %arrayidx65 = getelementptr inbounds [256 x i32], [256 x i32]* %level, i64 0, i64 %idxprom64, !dbg !228
  store i32 %add63, i32* %arrayidx65, align 4, !dbg !229
  %idxprom66 = sext i32 %add63 to i64, !dbg !230
  %arrayidx67 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 %idxprom66, !dbg !230
  %17 = load i32, i32* %arrayidx67, align 4, !dbg !230
  %add68 = add nsw i32 %17, 1, !dbg !231
  %idxprom69 = sext i32 %add63 to i64, !dbg !232
  %arrayidx70 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i64 0, i64 %idxprom69, !dbg !232
  store i32 %add68, i32* %arrayidx70, align 4, !dbg !233
  %cmp71 = icmp eq i32 %q_in.1, 0, !dbg !234
  br i1 %cmp71, label %cond.true72, label %cond.false73, !dbg !236

cond.true72:                                      ; preds = %if.then59
  br label %cond.end75, !dbg !236

cond.false73:                                     ; preds = %if.then59
  %sub74 = sub nsw i32 %q_in.1, 1, !dbg !237
  br label %cond.end75, !dbg !236

cond.end75:                                       ; preds = %cond.false73, %cond.true72
  %cond76 = phi i32 [ 255, %cond.true72 ], [ %sub74, %cond.false73 ], !dbg !236
  %idxprom77 = sext i32 %cond76 to i64, !dbg !238
  %arrayidx78 = getelementptr inbounds [256 x i32], [256 x i32]* %queue, i64 0, i64 %idxprom77, !dbg !238
  store i32 %14, i32* %arrayidx78, align 4, !dbg !239
  %add79 = add nsw i32 %q_in.1, 1, !dbg !240
  %rem80 = srem i32 %add79, 256, !dbg !241
  call void @llvm.dbg.value(metadata i32 %rem80, metadata !158, metadata !DIExpression()), !dbg !159
  br label %if.end81, !dbg !242

if.end81:                                         ; preds = %cond.end75, %for.body53
  %q_in.2 = phi i32 [ %rem80, %cond.end75 ], [ %q_in.1, %for.body53 ]
  call void @llvm.dbg.value(metadata i32 %q_in.2, metadata !158, metadata !DIExpression()), !dbg !159
  br label %for.inc82, !dbg !243

for.inc82:                                        ; preds = %if.end81
  %inc83 = add nsw i32 %e.0, 1, !dbg !244
  call void @llvm.dbg.value(metadata i32 %inc83, metadata !206, metadata !DIExpression()), !dbg !207
  br label %for.cond51, !dbg !245, !llvm.loop !246

for.end84:                                        ; preds = %for.cond51
  br label %for.inc85, !dbg !249

for.inc85:                                        ; preds = %for.end84
  %inc86 = add nsw i32 %dummy.0, 1, !dbg !250
  call void @llvm.dbg.value(metadata i32 %inc86, metadata !175, metadata !DIExpression()), !dbg !176
  br label %for.cond33, !dbg !251, !llvm.loop !252

for.end87:                                        ; preds = %if.then, %for.cond33
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %level, i32 0, i32 0, !dbg !255
  call void @_Z12stream_writejPiS_(i32 %node, i32* %xlevel, i32* %arraydecay), !dbg !256
  %arraydecay88 = getelementptr inbounds [10 x i32], [10 x i32]* %level_counts, i32 0, i32 0, !dbg !257
  call void @_Z12stream_writejPiS_(i32 %levels, i32* %xlevel_counts, i32* %arraydecay88), !dbg !258
  %18 = bitcast [10 x i32]* %level_counts to i8*, !dbg !259
  call void @llvm.lifetime.end.p0i8(i64 40, i8* %18) #10, !dbg !259
  %19 = bitcast [256 x i32]* %level to i8*, !dbg !259
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %19) #10, !dbg !259
  %20 = bitcast [4096 x i32]* %edges_dst to i8*, !dbg !259
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %20) #10, !dbg !259
  %21 = bitcast [256 x i32]* %nodes_edge_end to i8*, !dbg !259
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %21) #10, !dbg !259
  %22 = bitcast [256 x i32]* %nodes_edge_begin to i8*, !dbg !259
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %22) #10, !dbg !259
  %23 = bitcast [256 x i32]* %queue to i8*, !dbg !259
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %23) #10, !dbg !259
  ret void, !dbg !259
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="stream_write" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!1 = !DIFile(filename: "/workspace/examples/bfs_queue/bfs_queue_prj/solution/.autopilot/db/bfs_queue_baseline.pp.0.cpp", directory: "/workspace/examples/bfs_queue")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "stream_write", linkageName: "_Z12stream_writejPiS_", scope: !8, file: !8, line: 55, type: !9, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "bfs_queue_baseline.cpp", directory: "/workspace/examples/bfs_queue")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !17, !17}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 53, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/bfs_queue")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 42, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/bfs_queue")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 55, type: !11)
!20 = !DILocation(line: 55, column: 23, scope: !7)
!21 = !DILocalVariable(name: "array1", arg: 2, scope: !7, file: !8, line: 55, type: !17)
!22 = !DILocation(line: 55, column: 34, scope: !7)
!23 = !DILocalVariable(name: "array2", arg: 3, scope: !7, file: !8, line: 55, type: !17)
!24 = !DILocation(line: 55, column: 47, scope: !7)
!25 = !DILocation(line: 55, column: 55, scope: !7)
!26 = !DILocalVariable(name: "i", scope: !27, file: !8, line: 56, type: !18)
!27 = distinct !DILexicalBlock(scope: !7, file: !8, line: 56, column: 20)
!28 = !DILocation(line: 56, column: 29, scope: !27)
!29 = !DILocation(line: 56, column: 25, scope: !27)
!30 = !DILocation(line: 56, column: 38, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !8, line: 56, column: 20)
!32 = !DILocation(line: 56, column: 20, scope: !27)
!33 = !DILocation(line: 57, column: 17, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !8, line: 56, column: 51)
!35 = !DILocation(line: 57, column: 5, scope: !34)
!36 = !DILocation(line: 57, column: 15, scope: !34)
!37 = !DILocation(line: 58, column: 3, scope: !34)
!38 = !DILocation(line: 56, column: 47, scope: !31)
!39 = !DILocation(line: 56, column: 20, scope: !31)
!40 = distinct !{!40, !32, !41, !42}
!41 = !DILocation(line: 58, column: 3, scope: !27)
!42 = !{!"llvm.loop.name", !"VITIS_LOOP_56_1"}
!43 = !DILocation(line: 59, column: 1, scope: !7)
!44 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiiiPiS_S_S_S_", scope: !8, file: !8, line: 61, type: !45, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !18, !18, !17, !17, !17, !17, !17}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_index_t", file: !8, line: 36, baseType: !18)
!48 = !{!49}
!49 = !{!"fpga.top", !"user", !50}
!50 = !DILocation(line: 61, column: 16, scope: !44)
!51 = !DILocalVariable(name: "starting_node", arg: 1, scope: !44, file: !8, line: 61, type: !47)
!52 = !DILocation(line: 61, column: 69, scope: !44)
!53 = !DILocalVariable(name: "levels", arg: 2, scope: !44, file: !8, line: 61, type: !18)
!54 = !DILocation(line: 61, column: 88, scope: !44)
!55 = !DILocalVariable(name: "node", arg: 3, scope: !44, file: !8, line: 61, type: !18)
!56 = !DILocation(line: 61, column: 100, scope: !44)
!57 = !DILocalVariable(name: "xnodes_b", arg: 4, scope: !44, file: !8, line: 62, type: !17)
!58 = !DILocation(line: 62, column: 18, scope: !44)
!59 = !DILocalVariable(name: "xnodes_e", arg: 5, scope: !44, file: !8, line: 62, type: !17)
!60 = !DILocation(line: 62, column: 42, scope: !44)
!61 = !DILocalVariable(name: "xedges", arg: 6, scope: !44, file: !8, line: 62, type: !17)
!62 = !DILocation(line: 62, column: 66, scope: !44)
!63 = !DILocalVariable(name: "xlevel", arg: 7, scope: !44, file: !8, line: 63, type: !17)
!64 = !DILocation(line: 63, column: 18, scope: !44)
!65 = !DILocalVariable(name: "xlevel_counts", arg: 8, scope: !44, file: !8, line: 63, type: !17)
!66 = !DILocation(line: 63, column: 40, scope: !44)
!67 = !DILocation(line: 64, column: 9, scope: !44)
!68 = !DILocation(line: 65, column: 9, scope: !44)
!69 = !DILocation(line: 66, column: 9, scope: !44)
!70 = !DILocation(line: 67, column: 9, scope: !44)
!71 = !DILocation(line: 68, column: 9, scope: !44)
!72 = !DILocation(line: 69, column: 9, scope: !44)
!73 = !DILocation(line: 70, column: 9, scope: !44)
!74 = !DILocation(line: 71, column: 9, scope: !44)
!75 = !DILocation(line: 72, column: 9, scope: !44)
!76 = !DILocation(line: 73, column: 2, scope: !44)
!77 = !DILocalVariable(name: "queue", scope: !44, file: !8, line: 73, type: !78)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8192, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 256)
!81 = !DILocation(line: 73, column: 15, scope: !44)
!82 = !DILocation(line: 79, column: 3, scope: !44)
!83 = !DILocalVariable(name: "nodes_edge_begin", scope: !44, file: !8, line: 79, type: !84)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, elements: !79)
!85 = !DILocation(line: 79, column: 7, scope: !44)
!86 = !DILocation(line: 80, column: 3, scope: !44)
!87 = !DILocalVariable(name: "nodes_edge_end", scope: !44, file: !8, line: 80, type: !84)
!88 = !DILocation(line: 80, column: 7, scope: !44)
!89 = !DILocation(line: 81, column: 3, scope: !44)
!90 = !DILocalVariable(name: "edges_dst", scope: !44, file: !8, line: 81, type: !91)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 131072, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 4096)
!94 = !DILocation(line: 81, column: 7, scope: !44)
!95 = !DILocation(line: 82, column: 3, scope: !44)
!96 = !DILocalVariable(name: "level", scope: !44, file: !8, line: 82, type: !97)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 8192, elements: !79)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "level_t", file: !8, line: 50, baseType: !18)
!99 = !DILocation(line: 82, column: 11, scope: !44)
!100 = !DILocation(line: 83, column: 3, scope: !44)
!101 = !DILocalVariable(name: "level_counts", scope: !44, file: !8, line: 83, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 320, elements: !104)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_index_t", file: !8, line: 35, baseType: !18)
!104 = !{!105}
!105 = !DISubrange(count: 10)
!106 = !DILocation(line: 83, column: 16, scope: !44)
!107 = !DILocalVariable(name: "i", scope: !108, file: !8, line: 85, type: !18)
!108 = distinct !DILexicalBlock(scope: !44, file: !8, line: 85, column: 20)
!109 = !DILocation(line: 85, column: 29, scope: !108)
!110 = !DILocation(line: 85, column: 25, scope: !108)
!111 = !DILocation(line: 85, column: 38, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !8, line: 85, column: 20)
!113 = !DILocation(line: 85, column: 20, scope: !108)
!114 = !DILocation(line: 86, column: 27, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !8, line: 85, column: 51)
!116 = !DILocation(line: 86, column: 5, scope: !115)
!117 = !DILocation(line: 86, column: 25, scope: !115)
!118 = !DILocation(line: 87, column: 3, scope: !115)
!119 = !DILocation(line: 85, column: 47, scope: !112)
!120 = !DILocation(line: 85, column: 20, scope: !112)
!121 = distinct !{!121, !113, !122, !123}
!122 = !DILocation(line: 87, column: 3, scope: !108)
!123 = !{!"llvm.loop.name", !"VITIS_LOOP_85_1"}
!124 = !DILocalVariable(name: "i", scope: !125, file: !8, line: 88, type: !18)
!125 = distinct !DILexicalBlock(scope: !44, file: !8, line: 88, column: 20)
!126 = !DILocation(line: 88, column: 29, scope: !125)
!127 = !DILocation(line: 88, column: 25, scope: !125)
!128 = !DILocation(line: 88, column: 38, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !8, line: 88, column: 20)
!130 = !DILocation(line: 88, column: 20, scope: !125)
!131 = !DILocation(line: 89, column: 25, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !8, line: 88, column: 51)
!133 = !DILocation(line: 89, column: 5, scope: !132)
!134 = !DILocation(line: 89, column: 23, scope: !132)
!135 = !DILocation(line: 90, column: 3, scope: !132)
!136 = !DILocation(line: 88, column: 47, scope: !129)
!137 = !DILocation(line: 88, column: 20, scope: !129)
!138 = distinct !{!138, !130, !139, !140}
!139 = !DILocation(line: 90, column: 3, scope: !125)
!140 = !{!"llvm.loop.name", !"VITIS_LOOP_88_2"}
!141 = !DILocalVariable(name: "i", scope: !142, file: !8, line: 92, type: !18)
!142 = distinct !DILexicalBlock(scope: !44, file: !8, line: 92, column: 20)
!143 = !DILocation(line: 92, column: 29, scope: !142)
!144 = !DILocation(line: 92, column: 25, scope: !142)
!145 = !DILocation(line: 92, column: 38, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !8, line: 92, column: 20)
!147 = !DILocation(line: 92, column: 20, scope: !142)
!148 = !DILocation(line: 93, column: 20, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !8, line: 92, column: 62)
!150 = !DILocation(line: 93, column: 5, scope: !149)
!151 = !DILocation(line: 93, column: 18, scope: !149)
!152 = !DILocation(line: 94, column: 3, scope: !149)
!153 = !DILocation(line: 92, column: 58, scope: !146)
!154 = !DILocation(line: 92, column: 20, scope: !146)
!155 = distinct !{!155, !147, !156, !157}
!156 = !DILocation(line: 94, column: 3, scope: !142)
!157 = !{!"llvm.loop.name", !"VITIS_LOOP_92_3"}
!158 = !DILocalVariable(name: "q_in", scope: !44, file: !8, line: 74, type: !47)
!159 = !DILocation(line: 74, column: 16, scope: !44)
!160 = !DILocalVariable(name: "q_out", scope: !44, file: !8, line: 74, type: !47)
!161 = !DILocation(line: 74, column: 22, scope: !44)
!162 = !DILocation(line: 98, column: 3, scope: !44)
!163 = !DILocation(line: 98, column: 24, scope: !44)
!164 = !DILocation(line: 99, column: 3, scope: !44)
!165 = !DILocation(line: 99, column: 19, scope: !44)
!166 = !DILocation(line: 100, column: 16, scope: !167)
!167 = distinct !DILexicalBlock(scope: !44, file: !8, line: 100, column: 3)
!168 = !DILocation(line: 100, column: 11, scope: !167)
!169 = !DILocation(line: 100, column: 43, scope: !167)
!170 = !DILocation(line: 100, column: 5, scope: !167)
!171 = !DILocation(line: 100, column: 48, scope: !167)
!172 = !DILocation(line: 100, column: 78, scope: !167)
!173 = !DILocation(line: 100, column: 83, scope: !167)
!174 = !DILocation(line: 100, column: 95, scope: !167)
!175 = !DILocalVariable(name: "dummy", scope: !44, file: !8, line: 75, type: !47)
!176 = !DILocation(line: 75, column: 16, scope: !44)
!177 = !DILocation(line: 103, column: 8, scope: !178)
!178 = distinct !DILexicalBlock(scope: !44, file: !8, line: 103, column: 3)
!179 = !DILocation(line: 103, column: 25, scope: !180)
!180 = distinct !DILexicalBlock(scope: !178, file: !8, line: 103, column: 3)
!181 = !DILocation(line: 103, column: 3, scope: !178)
!182 = !DILocation(line: 104, column: 15, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !8, line: 104, column: 9)
!184 = distinct !DILexicalBlock(scope: !180, file: !8, line: 103, column: 42)
!185 = !DILocation(line: 104, column: 9, scope: !184)
!186 = !DILocation(line: 104, column: 39, scope: !183)
!187 = !DILocation(line: 104, column: 30, scope: !183)
!188 = !DILocation(line: 104, column: 10, scope: !183)
!189 = !DILocation(line: 104, column: 51, scope: !183)
!190 = !DILocation(line: 104, column: 57, scope: !183)
!191 = !DILocation(line: 104, column: 67, scope: !183)
!192 = !DILocation(line: 105, column: 7, scope: !183)
!193 = !DILocation(line: 106, column: 10, scope: !184)
!194 = !DILocalVariable(name: "n", scope: !44, file: !8, line: 76, type: !47)
!195 = !DILocation(line: 76, column: 16, scope: !44)
!196 = !DILocation(line: 107, column: 22, scope: !197)
!197 = distinct !DILexicalBlock(scope: !184, file: !8, line: 107, column: 5)
!198 = !DILocation(line: 107, column: 27, scope: !197)
!199 = !DILocation(line: 108, column: 30, scope: !184)
!200 = !DILocalVariable(name: "tmp_begin", scope: !184, file: !8, line: 108, type: !103)
!201 = !DILocation(line: 108, column: 18, scope: !184)
!202 = !DILocation(line: 109, column: 28, scope: !184)
!203 = !DILocalVariable(name: "tmp_end", scope: !184, file: !8, line: 109, type: !103)
!204 = !DILocation(line: 109, column: 18, scope: !184)
!205 = !DILocation(line: 109, column: 5, scope: !184)
!206 = !DILocalVariable(name: "e", scope: !44, file: !8, line: 77, type: !103)
!207 = !DILocation(line: 77, column: 16, scope: !44)
!208 = !DILocation(line: 111, column: 10, scope: !209)
!209 = distinct !DILexicalBlock(scope: !184, file: !8, line: 111, column: 5)
!210 = !DILocation(line: 111, column: 27, scope: !211)
!211 = distinct !DILexicalBlock(scope: !209, file: !8, line: 111, column: 5)
!212 = !DILocation(line: 111, column: 5, scope: !209)
!213 = !DILocation(line: 112, column: 30, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !8, line: 111, column: 43)
!215 = !DILocalVariable(name: "tmp_dst", scope: !214, file: !8, line: 112, type: !47)
!216 = !DILocation(line: 112, column: 20, scope: !214)
!217 = !DILocation(line: 113, column: 27, scope: !214)
!218 = !DILocalVariable(name: "tmp_level", scope: !214, file: !8, line: 113, type: !98)
!219 = !DILocation(line: 113, column: 15, scope: !214)
!220 = !DILocation(line: 115, column: 21, scope: !221)
!221 = distinct !DILexicalBlock(scope: !214, file: !8, line: 115, column: 11)
!222 = !DILocation(line: 115, column: 11, scope: !214)
!223 = !DILocation(line: 116, column: 29, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !8, line: 115, column: 29)
!225 = !DILocation(line: 116, column: 38, scope: !224)
!226 = !DILocalVariable(name: "tmp_level", scope: !224, file: !8, line: 116, type: !98)
!227 = !DILocation(line: 116, column: 17, scope: !224)
!228 = !DILocation(line: 117, column: 9, scope: !224)
!229 = !DILocation(line: 117, column: 24, scope: !224)
!230 = !DILocation(line: 118, column: 35, scope: !224)
!231 = !DILocation(line: 118, column: 59, scope: !224)
!232 = !DILocation(line: 118, column: 9, scope: !224)
!233 = !DILocation(line: 118, column: 33, scope: !224)
!234 = !DILocation(line: 119, column: 22, scope: !235)
!235 = distinct !DILexicalBlock(scope: !224, file: !8, line: 119, column: 9)
!236 = !DILocation(line: 119, column: 17, scope: !235)
!237 = !DILocation(line: 119, column: 49, scope: !235)
!238 = !DILocation(line: 119, column: 11, scope: !235)
!239 = !DILocation(line: 119, column: 54, scope: !235)
!240 = !DILocation(line: 119, column: 78, scope: !235)
!241 = !DILocation(line: 119, column: 83, scope: !235)
!242 = !DILocation(line: 120, column: 7, scope: !224)
!243 = !DILocation(line: 121, column: 5, scope: !214)
!244 = !DILocation(line: 111, column: 39, scope: !211)
!245 = !DILocation(line: 111, column: 5, scope: !211)
!246 = distinct !{!246, !212, !247, !248}
!247 = !DILocation(line: 121, column: 5, scope: !209)
!248 = !{!"llvm.loop.name", !"loop_neighbors"}
!249 = !DILocation(line: 122, column: 3, scope: !184)
!250 = !DILocation(line: 103, column: 38, scope: !180)
!251 = !DILocation(line: 103, column: 3, scope: !180)
!252 = distinct !{!252, !181, !253, !254}
!253 = !DILocation(line: 122, column: 3, scope: !178)
!254 = !{!"llvm.loop.name", !"loop_queue"}
!255 = !DILocation(line: 123, column: 30, scope: !44)
!256 = !DILocation(line: 123, column: 3, scope: !44)
!257 = !DILocation(line: 124, column: 39, scope: !44)
!258 = !DILocation(line: 124, column: 3, scope: !44)
!259 = !DILocation(line: 156, column: 1, scope: !44)
