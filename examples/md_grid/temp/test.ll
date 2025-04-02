; ModuleID = '/workspace/examples/md_grid/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define i32 @block_index(i32 %x, i32 %y, i32 %z) #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.value(metadata i32 %y, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.value(metadata i32 %z, metadata !16, metadata !DIExpression()), !dbg !17
  %mul = mul nsw i32 %x, 4, !dbg !18
  %mul1 = mul nsw i32 %mul, 4, !dbg !19
  %mul2 = mul nsw i32 %y, 4, !dbg !20
  %add = add nsw i32 %mul1, %mul2, !dbg !21
  %add3 = add nsw i32 %add, %z, !dbg !22
  ret i32 %add3, !dbg !23
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
define i32 @point_index(i32 %block_idx, i32 %point_idx) #0 !dbg !24 {
entry:
  call void @llvm.dbg.value(metadata i32 %block_idx, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %point_idx, metadata !29, metadata !DIExpression()), !dbg !30
  %mul = mul nsw i32 %block_idx, 10, !dbg !31
  %add = add nsw i32 %mul, %point_idx, !dbg !32
  ret i32 %add, !dbg !33
}

; Function Attrs: nounwind
define void @hls_top(i32 %size, i32* "fpga.decayed.dim.hint"="64" %xn_points, i32* "fpga.decayed.dim.hint"="640" %force_x, i32* "fpga.decayed.dim.hint"="640" %force_y, i32* "fpga.decayed.dim.hint"="640" %force_z, i32* "fpga.decayed.dim.hint"="640" %position_x, i32* "fpga.decayed.dim.hint"="640" %position_y, i32* "fpga.decayed.dim.hint"="640" %position_z) #2 !dbg !34 !fpga.function.pragma !38 {
entry:
  %n_points = alloca [64 x i32], align 4
  %force_x_local = alloca [640 x i32], align 4
  %force_y_local = alloca [640 x i32], align 4
  %force_z_local = alloca [640 x i32], align 4
  %pos_x_local = alloca [640 x i32], align 4
  %pos_y_local = alloca [640 x i32], align 4
  %pos_z_local = alloca [640 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata i32* %xn_points, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i32* %force_x, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32* %force_y, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32* %force_z, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i32* %position_x, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32* %position_y, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i32* %position_z, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xn_points, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !57
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %force_x, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !58
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %force_y, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !59
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %force_z, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !60
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %position_x, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !61
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %position_y, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !62
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %position_z, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !63
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !64
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !65
  %0 = bitcast [64 x i32]* %n_points to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %0) #9, !dbg !66
  call void @llvm.dbg.declare(metadata [64 x i32]* %n_points, metadata !67, metadata !DIExpression()), !dbg !71
  %1 = bitcast [640 x i32]* %force_x_local to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 2560, i8* %1) #9, !dbg !72
  call void @llvm.dbg.declare(metadata [640 x i32]* %force_x_local, metadata !73, metadata !DIExpression()), !dbg !77
  %2 = bitcast [640 x i32]* %force_y_local to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 2560, i8* %2) #9, !dbg !78
  call void @llvm.dbg.declare(metadata [640 x i32]* %force_y_local, metadata !79, metadata !DIExpression()), !dbg !80
  %3 = bitcast [640 x i32]* %force_z_local to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 2560, i8* %3) #9, !dbg !81
  call void @llvm.dbg.declare(metadata [640 x i32]* %force_z_local, metadata !82, metadata !DIExpression()), !dbg !83
  %4 = bitcast [640 x i32]* %pos_x_local to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 2560, i8* %4) #9, !dbg !84
  call void @llvm.dbg.declare(metadata [640 x i32]* %pos_x_local, metadata !85, metadata !DIExpression()), !dbg !86
  %5 = bitcast [640 x i32]* %pos_y_local to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 2560, i8* %5) #9, !dbg !87
  call void @llvm.dbg.declare(metadata [640 x i32]* %pos_y_local, metadata !88, metadata !DIExpression()), !dbg !89
  %6 = bitcast [640 x i32]* %pos_z_local to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 2560, i8* %6) #9, !dbg !90
  call void @llvm.dbg.declare(metadata [640 x i32]* %pos_z_local, metadata !91, metadata !DIExpression()), !dbg !92
  br label %VITIS_LOOP_66_1, !dbg !90

VITIS_LOOP_66_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !95
  br label %for.cond, !dbg !96

for.cond:                                         ; preds = %for.inc14, %VITIS_LOOP_66_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_66_1 ], [ %inc15, %for.inc14 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !93, metadata !DIExpression()), !dbg !95
  %cmp = icmp slt i32 %i.0, %size, !dbg !97
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !99

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end16

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_67_2, !dbg !100

VITIS_LOOP_67_2:                                  ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !101, metadata !DIExpression()), !dbg !104
  br label %for.cond1, !dbg !105

for.cond1:                                        ; preds = %for.inc11, %VITIS_LOOP_67_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_67_2 ], [ %inc12, %for.inc11 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !101, metadata !DIExpression()), !dbg !104
  %cmp2 = icmp slt i32 %j.0, %size, !dbg !106
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3, !dbg !108

for.cond.cleanup3:                                ; preds = %for.cond1
  br label %for.end13

for.body4:                                        ; preds = %for.cond1
  br label %VITIS_LOOP_68_3, !dbg !109

VITIS_LOOP_68_3:                                  ; preds = %for.body4
  call void @llvm.dbg.value(metadata i32 0, metadata !110, metadata !DIExpression()), !dbg !113
  br label %for.cond5, !dbg !114

for.cond5:                                        ; preds = %for.inc, %VITIS_LOOP_68_3
  %k.0 = phi i32 [ 0, %VITIS_LOOP_68_3 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !110, metadata !DIExpression()), !dbg !113
  %cmp6 = icmp slt i32 %k.0, %size, !dbg !115
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7, !dbg !117

for.cond.cleanup7:                                ; preds = %for.cond5
  br label %for.end

for.body8:                                        ; preds = %for.cond5
  %call = call i32 @block_index(i32 %i.0, i32 %j.0, i32 %k.0), !dbg !118
  call void @llvm.dbg.value(metadata i32 %call, metadata !120, metadata !DIExpression()), !dbg !121
  %idxprom = sext i32 %call to i64, !dbg !122
  %arrayidx = getelementptr inbounds i32, i32* %xn_points, i64 %idxprom, !dbg !122
  %7 = load i32, i32* %arrayidx, align 4, !dbg !122
  %idxprom9 = sext i32 %call to i64, !dbg !123
  %arrayidx10 = getelementptr inbounds [64 x i32], [64 x i32]* %n_points, i64 0, i64 %idxprom9, !dbg !123
  store i32 %7, i32* %arrayidx10, align 4, !dbg !124
  br label %for.inc, !dbg !125

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %k.0, 1, !dbg !126
  call void @llvm.dbg.value(metadata i32 %inc, metadata !110, metadata !DIExpression()), !dbg !113
  br label %for.cond5, !dbg !127, !llvm.loop !128

for.end:                                          ; preds = %for.cond.cleanup7
  br label %for.inc11, !dbg !131

for.inc11:                                        ; preds = %for.end
  %inc12 = add nsw i32 %j.0, 1, !dbg !132
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !101, metadata !DIExpression()), !dbg !104
  br label %for.cond1, !dbg !133, !llvm.loop !134

for.end13:                                        ; preds = %for.cond.cleanup3
  br label %for.inc14, !dbg !137

for.inc14:                                        ; preds = %for.end13
  %inc15 = add nsw i32 %i.0, 1, !dbg !138
  call void @llvm.dbg.value(metadata i32 %inc15, metadata !93, metadata !DIExpression()), !dbg !95
  br label %for.cond, !dbg !139, !llvm.loop !140

for.end16:                                        ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_76_4, !dbg !141

VITIS_LOOP_76_4:                                  ; preds = %for.end16
  call void @llvm.dbg.value(metadata i32 0, metadata !143, metadata !DIExpression()), !dbg !145
  br label %for.cond18, !dbg !146

for.cond18:                                       ; preds = %for.inc48, %VITIS_LOOP_76_4
  %i17.0 = phi i32 [ 0, %VITIS_LOOP_76_4 ], [ %inc49, %for.inc48 ]
  call void @llvm.dbg.value(metadata i32 %i17.0, metadata !143, metadata !DIExpression()), !dbg !145
  %mul = mul nsw i32 %size, %size, !dbg !147
  %mul19 = mul nsw i32 %mul, %size, !dbg !149
  %mul20 = mul nsw i32 %mul19, 10, !dbg !150
  %cmp21 = icmp slt i32 %i17.0, %mul20, !dbg !151
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22, !dbg !152

for.cond.cleanup22:                               ; preds = %for.cond18
  br label %for.end50

for.body23:                                       ; preds = %for.cond18
  %idxprom24 = sext i32 %i17.0 to i64, !dbg !153
  %arrayidx25 = getelementptr inbounds i32, i32* %force_x, i64 %idxprom24, !dbg !153
  %8 = load i32, i32* %arrayidx25, align 4, !dbg !153
  %idxprom26 = sext i32 %i17.0 to i64, !dbg !155
  %arrayidx27 = getelementptr inbounds [640 x i32], [640 x i32]* %force_x_local, i64 0, i64 %idxprom26, !dbg !155
  store i32 %8, i32* %arrayidx27, align 4, !dbg !156
  %idxprom28 = sext i32 %i17.0 to i64, !dbg !157
  %arrayidx29 = getelementptr inbounds i32, i32* %force_y, i64 %idxprom28, !dbg !157
  %9 = load i32, i32* %arrayidx29, align 4, !dbg !157
  %idxprom30 = sext i32 %i17.0 to i64, !dbg !158
  %arrayidx31 = getelementptr inbounds [640 x i32], [640 x i32]* %force_y_local, i64 0, i64 %idxprom30, !dbg !158
  store i32 %9, i32* %arrayidx31, align 4, !dbg !159
  %idxprom32 = sext i32 %i17.0 to i64, !dbg !160
  %arrayidx33 = getelementptr inbounds i32, i32* %force_z, i64 %idxprom32, !dbg !160
  %10 = load i32, i32* %arrayidx33, align 4, !dbg !160
  %idxprom34 = sext i32 %i17.0 to i64, !dbg !161
  %arrayidx35 = getelementptr inbounds [640 x i32], [640 x i32]* %force_z_local, i64 0, i64 %idxprom34, !dbg !161
  store i32 %10, i32* %arrayidx35, align 4, !dbg !162
  %idxprom36 = sext i32 %i17.0 to i64, !dbg !163
  %arrayidx37 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom36, !dbg !163
  %11 = load i32, i32* %arrayidx37, align 4, !dbg !163
  %idxprom38 = sext i32 %i17.0 to i64, !dbg !164
  %arrayidx39 = getelementptr inbounds [640 x i32], [640 x i32]* %pos_x_local, i64 0, i64 %idxprom38, !dbg !164
  store i32 %11, i32* %arrayidx39, align 4, !dbg !165
  %idxprom40 = sext i32 %i17.0 to i64, !dbg !166
  %arrayidx41 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom40, !dbg !166
  %12 = load i32, i32* %arrayidx41, align 4, !dbg !166
  %idxprom42 = sext i32 %i17.0 to i64, !dbg !167
  %arrayidx43 = getelementptr inbounds [640 x i32], [640 x i32]* %pos_y_local, i64 0, i64 %idxprom42, !dbg !167
  store i32 %12, i32* %arrayidx43, align 4, !dbg !168
  %idxprom44 = sext i32 %i17.0 to i64, !dbg !169
  %arrayidx45 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom44, !dbg !169
  %13 = load i32, i32* %arrayidx45, align 4, !dbg !169
  %idxprom46 = sext i32 %i17.0 to i64, !dbg !170
  %arrayidx47 = getelementptr inbounds [640 x i32], [640 x i32]* %pos_z_local, i64 0, i64 %idxprom46, !dbg !170
  store i32 %13, i32* %arrayidx47, align 4, !dbg !171
  br label %for.inc48, !dbg !172

for.inc48:                                        ; preds = %for.body23
  %inc49 = add nsw i32 %i17.0, 1, !dbg !173
  call void @llvm.dbg.value(metadata i32 %inc49, metadata !143, metadata !DIExpression()), !dbg !145
  br label %for.cond18, !dbg !174, !llvm.loop !175

for.end50:                                        ; preds = %for.cond.cleanup22
  br label %loop_grid0_x, !dbg !176

loop_grid0_x:                                     ; preds = %for.end50
  call void @llvm.dbg.value(metadata i32 0, metadata !178, metadata !DIExpression()), !dbg !179
  br label %for.cond51, !dbg !180

for.cond51:                                       ; preds = %for.inc188, %loop_grid0_x
  %b0_x.0 = phi i32 [ 0, %loop_grid0_x ], [ %inc189, %for.inc188 ]
  call void @llvm.dbg.value(metadata i32 %b0_x.0, metadata !178, metadata !DIExpression()), !dbg !179
  %cmp52 = icmp slt i32 %b0_x.0, %size, !dbg !182
  br i1 %cmp52, label %for.body53, label %for.end190, !dbg !184

for.body53:                                       ; preds = %for.cond51
  br label %loop_grid0_y, !dbg !185

loop_grid0_y:                                     ; preds = %for.body53
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !187
  br label %for.cond54, !dbg !188

for.cond54:                                       ; preds = %for.inc185, %loop_grid0_y
  %b0_y.0 = phi i32 [ 0, %loop_grid0_y ], [ %inc186, %for.inc185 ]
  call void @llvm.dbg.value(metadata i32 %b0_y.0, metadata !186, metadata !DIExpression()), !dbg !187
  %cmp55 = icmp slt i32 %b0_y.0, %size, !dbg !191
  br i1 %cmp55, label %for.body56, label %for.end187, !dbg !193

for.body56:                                       ; preds = %for.cond54
  br label %loop_grid0_z, !dbg !194

loop_grid0_z:                                     ; preds = %for.body56
  call void @llvm.dbg.value(metadata i32 0, metadata !195, metadata !DIExpression()), !dbg !196
  br label %for.cond57, !dbg !197

for.cond57:                                       ; preds = %for.inc182, %loop_grid0_z
  %b0_z.0 = phi i32 [ 0, %loop_grid0_z ], [ %inc183, %for.inc182 ]
  call void @llvm.dbg.value(metadata i32 %b0_z.0, metadata !195, metadata !DIExpression()), !dbg !196
  %cmp58 = icmp slt i32 %b0_z.0, %size, !dbg !200
  br i1 %cmp58, label %for.body59, label %for.end184, !dbg !202

for.body59:                                       ; preds = %for.cond57
  %call60 = call i32 @block_index(i32 %b0_x.0, i32 %b0_y.0, i32 %b0_z.0), !dbg !203
  call void @llvm.dbg.value(metadata i32 %call60, metadata !205, metadata !DIExpression()), !dbg !206
  br label %loop_grid1_x, !dbg !207

loop_grid1_x:                                     ; preds = %for.body59
  %sub = sub nsw i32 %b0_x.0, 1, !dbg !208
  %cmp61 = icmp sgt i32 0, %sub, !dbg !210
  br i1 %cmp61, label %cond.true, label %cond.false, !dbg !211

cond.true:                                        ; preds = %loop_grid1_x
  br label %cond.end, !dbg !211

cond.false:                                       ; preds = %loop_grid1_x
  %sub62 = sub nsw i32 %b0_x.0, 1, !dbg !212
  br label %cond.end, !dbg !211

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub62, %cond.false ], !dbg !211
  call void @llvm.dbg.value(metadata i32 %cond, metadata !213, metadata !DIExpression()), !dbg !214
  br label %for.cond63, !dbg !215

for.cond63:                                       ; preds = %for.inc179, %cond.end
  %b1_x.0 = phi i32 [ %cond, %cond.end ], [ %inc180, %for.inc179 ]
  call void @llvm.dbg.value(metadata i32 %b1_x.0, metadata !213, metadata !DIExpression()), !dbg !214
  %add = add nsw i32 %b0_x.0, 2, !dbg !216
  %cmp64 = icmp slt i32 %size, %add, !dbg !218
  br i1 %cmp64, label %cond.true65, label %cond.false66, !dbg !219

cond.true65:                                      ; preds = %for.cond63
  br label %cond.end68, !dbg !219

cond.false66:                                     ; preds = %for.cond63
  %add67 = add nsw i32 %b0_x.0, 2, !dbg !220
  br label %cond.end68, !dbg !219

cond.end68:                                       ; preds = %cond.false66, %cond.true65
  %cond69 = phi i32 [ %size, %cond.true65 ], [ %add67, %cond.false66 ], !dbg !219
  %cmp70 = icmp slt i32 %b1_x.0, %cond69, !dbg !221
  br i1 %cmp70, label %for.body71, label %for.end181, !dbg !222

for.body71:                                       ; preds = %cond.end68
  br label %loop_grid1_y, !dbg !223

loop_grid1_y:                                     ; preds = %for.body71
  %sub72 = sub nsw i32 %b0_y.0, 1, !dbg !224
  %cmp73 = icmp sgt i32 0, %sub72, !dbg !227
  br i1 %cmp73, label %cond.true74, label %cond.false75, !dbg !228

cond.true74:                                      ; preds = %loop_grid1_y
  br label %cond.end77, !dbg !228

cond.false75:                                     ; preds = %loop_grid1_y
  %sub76 = sub nsw i32 %b0_y.0, 1, !dbg !229
  br label %cond.end77, !dbg !228

cond.end77:                                       ; preds = %cond.false75, %cond.true74
  %cond78 = phi i32 [ 0, %cond.true74 ], [ %sub76, %cond.false75 ], !dbg !228
  call void @llvm.dbg.value(metadata i32 %cond78, metadata !230, metadata !DIExpression()), !dbg !231
  br label %for.cond79, !dbg !232

for.cond79:                                       ; preds = %for.inc176, %cond.end77
  %b1_y.0 = phi i32 [ %cond78, %cond.end77 ], [ %inc177, %for.inc176 ]
  call void @llvm.dbg.value(metadata i32 %b1_y.0, metadata !230, metadata !DIExpression()), !dbg !231
  %add80 = add nsw i32 %b0_y.0, 2, !dbg !233
  %cmp81 = icmp slt i32 %size, %add80, !dbg !235
  br i1 %cmp81, label %cond.true82, label %cond.false83, !dbg !236

cond.true82:                                      ; preds = %for.cond79
  br label %cond.end85, !dbg !236

cond.false83:                                     ; preds = %for.cond79
  %add84 = add nsw i32 %b0_y.0, 2, !dbg !237
  br label %cond.end85, !dbg !236

cond.end85:                                       ; preds = %cond.false83, %cond.true82
  %cond86 = phi i32 [ %size, %cond.true82 ], [ %add84, %cond.false83 ], !dbg !236
  %cmp87 = icmp slt i32 %b1_y.0, %cond86, !dbg !238
  br i1 %cmp87, label %for.body88, label %for.end178, !dbg !239

for.body88:                                       ; preds = %cond.end85
  br label %loop_grid1_z, !dbg !240

loop_grid1_z:                                     ; preds = %for.body88
  %sub89 = sub nsw i32 %b0_z.0, 1, !dbg !241
  %cmp90 = icmp sgt i32 0, %sub89, !dbg !244
  br i1 %cmp90, label %cond.true91, label %cond.false92, !dbg !245

cond.true91:                                      ; preds = %loop_grid1_z
  br label %cond.end94, !dbg !245

cond.false92:                                     ; preds = %loop_grid1_z
  %sub93 = sub nsw i32 %b0_z.0, 1, !dbg !246
  br label %cond.end94, !dbg !245

cond.end94:                                       ; preds = %cond.false92, %cond.true91
  %cond95 = phi i32 [ 0, %cond.true91 ], [ %sub93, %cond.false92 ], !dbg !245
  call void @llvm.dbg.value(metadata i32 %cond95, metadata !247, metadata !DIExpression()), !dbg !248
  br label %for.cond96, !dbg !249

for.cond96:                                       ; preds = %for.inc173, %cond.end94
  %b1_z.0 = phi i32 [ %cond95, %cond.end94 ], [ %inc174, %for.inc173 ]
  call void @llvm.dbg.value(metadata i32 %b1_z.0, metadata !247, metadata !DIExpression()), !dbg !248
  %add97 = add nsw i32 %b0_z.0, 2, !dbg !250
  %cmp98 = icmp slt i32 %size, %add97, !dbg !252
  br i1 %cmp98, label %cond.true99, label %cond.false100, !dbg !253

cond.true99:                                      ; preds = %for.cond96
  br label %cond.end102, !dbg !253

cond.false100:                                    ; preds = %for.cond96
  %add101 = add nsw i32 %b0_z.0, 2, !dbg !254
  br label %cond.end102, !dbg !253

cond.end102:                                      ; preds = %cond.false100, %cond.true99
  %cond103 = phi i32 [ %size, %cond.true99 ], [ %add101, %cond.false100 ], !dbg !253
  %cmp104 = icmp slt i32 %b1_z.0, %cond103, !dbg !255
  br i1 %cmp104, label %for.body105, label %for.end175, !dbg !256

for.body105:                                      ; preds = %cond.end102
  %call106 = call i32 @block_index(i32 %b1_x.0, i32 %b1_y.0, i32 %b1_z.0), !dbg !257
  call void @llvm.dbg.value(metadata i32 %call106, metadata !259, metadata !DIExpression()), !dbg !260
  %idxprom107 = sext i32 %call106 to i64, !dbg !261
  %arrayidx108 = getelementptr inbounds [64 x i32], [64 x i32]* %n_points, i64 0, i64 %idxprom107, !dbg !261
  %14 = load i32, i32* %arrayidx108, align 4, !dbg !261
  call void @llvm.dbg.value(metadata i32 %14, metadata !262, metadata !DIExpression()), !dbg !263
  br label %loop_p, !dbg !264

loop_p:                                           ; preds = %for.body105
  call void @llvm.dbg.value(metadata i32 0, metadata !265, metadata !DIExpression()), !dbg !266
  br label %for.cond109, !dbg !267

for.cond109:                                      ; preds = %for.inc170, %loop_p
  %p_idx.0 = phi i32 [ 0, %loop_p ], [ %inc171, %for.inc170 ]
  call void @llvm.dbg.value(metadata i32 %p_idx.0, metadata !265, metadata !DIExpression()), !dbg !266
  %idxprom110 = sext i32 %call60 to i64, !dbg !269
  %arrayidx111 = getelementptr inbounds [64 x i32], [64 x i32]* %n_points, i64 0, i64 %idxprom110, !dbg !269
  %15 = load i32, i32* %arrayidx111, align 4, !dbg !269
  %cmp112 = icmp slt i32 %p_idx.0, %15, !dbg !271
  br i1 %cmp112, label %for.body113, label %for.end172, !dbg !272

for.body113:                                      ; preds = %for.cond109
  %call114 = call i32 @point_index(i32 %call60, i32 %p_idx.0), !dbg !273
  call void @llvm.dbg.value(metadata i32 %call114, metadata !275, metadata !DIExpression()), !dbg !276
  %idxprom115 = sext i32 %call114 to i64, !dbg !277
  %arrayidx116 = getelementptr inbounds [640 x i32], [640 x i32]* %pos_x_local, i64 0, i64 %idxprom115, !dbg !277
  %16 = load i32, i32* %arrayidx116, align 4, !dbg !277
  call void @llvm.dbg.value(metadata i32 %16, metadata !278, metadata !DIExpression()), !dbg !279
  %idxprom117 = sext i32 %call114 to i64, !dbg !280
  %arrayidx118 = getelementptr inbounds [640 x i32], [640 x i32]* %pos_y_local, i64 0, i64 %idxprom117, !dbg !280
  %17 = load i32, i32* %arrayidx118, align 4, !dbg !280
  call void @llvm.dbg.value(metadata i32 %17, metadata !281, metadata !DIExpression()), !dbg !282
  %idxprom119 = sext i32 %call114 to i64, !dbg !283
  %arrayidx120 = getelementptr inbounds [640 x i32], [640 x i32]* %pos_z_local, i64 0, i64 %idxprom119, !dbg !283
  %18 = load i32, i32* %arrayidx120, align 4, !dbg !283
  call void @llvm.dbg.value(metadata i32 %18, metadata !284, metadata !DIExpression()), !dbg !285
  %idxprom121 = sext i32 %call114 to i64, !dbg !286
  %arrayidx122 = getelementptr inbounds [640 x i32], [640 x i32]* %force_x_local, i64 0, i64 %idxprom121, !dbg !286
  %19 = load i32, i32* %arrayidx122, align 4, !dbg !286
  call void @llvm.dbg.value(metadata i32 %19, metadata !287, metadata !DIExpression()), !dbg !288
  %idxprom123 = sext i32 %call114 to i64, !dbg !289
  %arrayidx124 = getelementptr inbounds [640 x i32], [640 x i32]* %force_y_local, i64 0, i64 %idxprom123, !dbg !289
  %20 = load i32, i32* %arrayidx124, align 4, !dbg !289
  call void @llvm.dbg.value(metadata i32 %20, metadata !290, metadata !DIExpression()), !dbg !291
  %idxprom125 = sext i32 %call114 to i64, !dbg !292
  %arrayidx126 = getelementptr inbounds [640 x i32], [640 x i32]* %force_z_local, i64 0, i64 %idxprom125, !dbg !292
  %21 = load i32, i32* %arrayidx126, align 4, !dbg !292
  call void @llvm.dbg.value(metadata i32 %21, metadata !293, metadata !DIExpression()), !dbg !294
  br label %loop_q, !dbg !295

loop_q:                                           ; preds = %for.body113
  call void @llvm.dbg.value(metadata i32 0, metadata !296, metadata !DIExpression()), !dbg !297
  br label %for.cond127, !dbg !298

for.cond127:                                      ; preds = %for.inc161, %loop_q
  %q_idx.0 = phi i32 [ 0, %loop_q ], [ %inc162, %for.inc161 ]
  %sum_x.0 = phi i32 [ %19, %loop_q ], [ %sum_x.1, %for.inc161 ]
  %sum_y.0 = phi i32 [ %20, %loop_q ], [ %sum_y.1, %for.inc161 ]
  %sum_z.0 = phi i32 [ %21, %loop_q ], [ %sum_z.1, %for.inc161 ]
  call void @llvm.dbg.value(metadata i32 %sum_z.0, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %sum_y.0, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 %sum_x.0, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata i32 %q_idx.0, metadata !296, metadata !DIExpression()), !dbg !297
  %cmp128 = icmp slt i32 %q_idx.0, %14, !dbg !300
  br i1 %cmp128, label %for.body129, label %for.end163, !dbg !302

for.body129:                                      ; preds = %for.cond127
  %call130 = call i32 @point_index(i32 %call106, i32 %q_idx.0), !dbg !303
  call void @llvm.dbg.value(metadata i32 %call130, metadata !305, metadata !DIExpression()), !dbg !306
  %idxprom131 = sext i32 %call130 to i64, !dbg !307
  %arrayidx132 = getelementptr inbounds [640 x i32], [640 x i32]* %pos_x_local, i64 0, i64 %idxprom131, !dbg !307
  %22 = load i32, i32* %arrayidx132, align 4, !dbg !307
  call void @llvm.dbg.value(metadata i32 %22, metadata !308, metadata !DIExpression()), !dbg !309
  %idxprom133 = sext i32 %call130 to i64, !dbg !310
  %arrayidx134 = getelementptr inbounds [640 x i32], [640 x i32]* %pos_y_local, i64 0, i64 %idxprom133, !dbg !310
  %23 = load i32, i32* %arrayidx134, align 4, !dbg !310
  call void @llvm.dbg.value(metadata i32 %23, metadata !311, metadata !DIExpression()), !dbg !312
  %idxprom135 = sext i32 %call130 to i64, !dbg !313
  %arrayidx136 = getelementptr inbounds [640 x i32], [640 x i32]* %pos_z_local, i64 0, i64 %idxprom135, !dbg !313
  %24 = load i32, i32* %arrayidx136, align 4, !dbg !313
  call void @llvm.dbg.value(metadata i32 %24, metadata !314, metadata !DIExpression()), !dbg !315
  %cmp137 = icmp ne i32 %22, %16, !dbg !316
  br i1 %cmp137, label %if.then, label %lor.lhs.false, !dbg !318

lor.lhs.false:                                    ; preds = %for.body129
  %cmp138 = icmp ne i32 %23, %17, !dbg !319
  br i1 %cmp138, label %if.then, label %lor.lhs.false139, !dbg !320

lor.lhs.false139:                                 ; preds = %lor.lhs.false
  %cmp140 = icmp ne i32 %24, %18, !dbg !321
  br i1 %cmp140, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %lor.lhs.false139, %lor.lhs.false, %for.body129
  %sub141 = sub nsw i32 %16, %22, !dbg !323
  call void @llvm.dbg.value(metadata i32 %sub141, metadata !325, metadata !DIExpression()), !dbg !326
  %sub142 = sub nsw i32 %17, %23, !dbg !327
  call void @llvm.dbg.value(metadata i32 %sub142, metadata !328, metadata !DIExpression()), !dbg !329
  %sub143 = sub nsw i32 %18, %24, !dbg !330
  call void @llvm.dbg.value(metadata i32 %sub143, metadata !331, metadata !DIExpression()), !dbg !332
  %mul144 = mul nsw i32 %sub141, %sub141, !dbg !333
  %mul145 = mul nsw i32 %sub142, %sub142, !dbg !334
  %add146 = add nsw i32 %mul144, %mul145, !dbg !335
  %mul147 = mul nsw i32 %sub143, %sub143, !dbg !336
  %add148 = add nsw i32 %add146, %mul147, !dbg !337
  call void @llvm.dbg.value(metadata i32 %add148, metadata !338, metadata !DIExpression()), !dbg !339
  %mul149 = mul nsw i32 %add148, %add148, !dbg !340
  %mul150 = mul nsw i32 %mul149, %add148, !dbg !341
  call void @llvm.dbg.value(metadata i32 %mul150, metadata !342, metadata !DIExpression()), !dbg !343
  %mul151 = mul nsw i32 2, %mul150, !dbg !344
  %sub152 = sub nsw i32 %mul151, 3, !dbg !345
  %mul153 = mul nsw i32 %mul150, %sub152, !dbg !346
  call void @llvm.dbg.value(metadata i32 %mul153, metadata !347, metadata !DIExpression()), !dbg !348
  %mul154 = mul nsw i32 %add148, %mul153, !dbg !349
  call void @llvm.dbg.value(metadata i32 %mul154, metadata !350, metadata !DIExpression()), !dbg !351
  %mul155 = mul nsw i32 %mul154, %sub141, !dbg !352
  %add156 = add nsw i32 %sum_x.0, %mul155, !dbg !353
  call void @llvm.dbg.value(metadata i32 %add156, metadata !287, metadata !DIExpression()), !dbg !288
  %mul157 = mul nsw i32 %mul154, %sub142, !dbg !354
  %add158 = add nsw i32 %sum_y.0, %mul157, !dbg !355
  call void @llvm.dbg.value(metadata i32 %add158, metadata !290, metadata !DIExpression()), !dbg !291
  %mul159 = mul nsw i32 %mul154, %sub143, !dbg !356
  %add160 = add nsw i32 %sum_z.0, %mul159, !dbg !357
  call void @llvm.dbg.value(metadata i32 %add160, metadata !293, metadata !DIExpression()), !dbg !294
  br label %if.end, !dbg !358

if.end:                                           ; preds = %if.then, %lor.lhs.false139
  %sum_x.1 = phi i32 [ %add156, %if.then ], [ %sum_x.0, %lor.lhs.false139 ]
  %sum_y.1 = phi i32 [ %add158, %if.then ], [ %sum_y.0, %lor.lhs.false139 ]
  %sum_z.1 = phi i32 [ %add160, %if.then ], [ %sum_z.0, %lor.lhs.false139 ]
  call void @llvm.dbg.value(metadata i32 %sum_z.1, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %sum_y.1, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 %sum_x.1, metadata !287, metadata !DIExpression()), !dbg !288
  br label %for.inc161, !dbg !359

for.inc161:                                       ; preds = %if.end
  %inc162 = add nsw i32 %q_idx.0, 1, !dbg !360
  call void @llvm.dbg.value(metadata i32 %inc162, metadata !296, metadata !DIExpression()), !dbg !297
  br label %for.cond127, !dbg !361, !llvm.loop !362

for.end163:                                       ; preds = %for.cond127
  %idxprom164 = sext i32 %call114 to i64, !dbg !365
  %arrayidx165 = getelementptr inbounds [640 x i32], [640 x i32]* %force_x_local, i64 0, i64 %idxprom164, !dbg !365
  store i32 %sum_x.0, i32* %arrayidx165, align 4, !dbg !366
  %idxprom166 = sext i32 %call114 to i64, !dbg !367
  %arrayidx167 = getelementptr inbounds [640 x i32], [640 x i32]* %force_y_local, i64 0, i64 %idxprom166, !dbg !367
  store i32 %sum_y.0, i32* %arrayidx167, align 4, !dbg !368
  %idxprom168 = sext i32 %call114 to i64, !dbg !369
  %arrayidx169 = getelementptr inbounds [640 x i32], [640 x i32]* %force_z_local, i64 0, i64 %idxprom168, !dbg !369
  store i32 %sum_z.0, i32* %arrayidx169, align 4, !dbg !370
  br label %for.inc170, !dbg !371

for.inc170:                                       ; preds = %for.end163
  %inc171 = add nsw i32 %p_idx.0, 1, !dbg !372
  call void @llvm.dbg.value(metadata i32 %inc171, metadata !265, metadata !DIExpression()), !dbg !266
  br label %for.cond109, !dbg !373, !llvm.loop !374

for.end172:                                       ; preds = %for.cond109
  br label %for.inc173, !dbg !377

for.inc173:                                       ; preds = %for.end172
  %inc174 = add nsw i32 %b1_z.0, 1, !dbg !378
  call void @llvm.dbg.value(metadata i32 %inc174, metadata !247, metadata !DIExpression()), !dbg !248
  br label %for.cond96, !dbg !379, !llvm.loop !380

for.end175:                                       ; preds = %cond.end102
  br label %for.inc176, !dbg !383

for.inc176:                                       ; preds = %for.end175
  %inc177 = add nsw i32 %b1_y.0, 1, !dbg !384
  call void @llvm.dbg.value(metadata i32 %inc177, metadata !230, metadata !DIExpression()), !dbg !231
  br label %for.cond79, !dbg !385, !llvm.loop !386

for.end178:                                       ; preds = %cond.end85
  br label %for.inc179, !dbg !389

for.inc179:                                       ; preds = %for.end178
  %inc180 = add nsw i32 %b1_x.0, 1, !dbg !390
  call void @llvm.dbg.value(metadata i32 %inc180, metadata !213, metadata !DIExpression()), !dbg !214
  br label %for.cond63, !dbg !391, !llvm.loop !392

for.end181:                                       ; preds = %cond.end68
  br label %for.inc182, !dbg !395

for.inc182:                                       ; preds = %for.end181
  %inc183 = add nsw i32 %b0_z.0, 1, !dbg !396
  call void @llvm.dbg.value(metadata i32 %inc183, metadata !195, metadata !DIExpression()), !dbg !196
  br label %for.cond57, !dbg !397, !llvm.loop !398

for.end184:                                       ; preds = %for.cond57
  br label %for.inc185, !dbg !401

for.inc185:                                       ; preds = %for.end184
  %inc186 = add nsw i32 %b0_y.0, 1, !dbg !402
  call void @llvm.dbg.value(metadata i32 %inc186, metadata !186, metadata !DIExpression()), !dbg !187
  br label %for.cond54, !dbg !403, !llvm.loop !404

for.end187:                                       ; preds = %for.cond54
  br label %for.inc188, !dbg !407

for.inc188:                                       ; preds = %for.end187
  %inc189 = add nsw i32 %b0_x.0, 1, !dbg !408
  call void @llvm.dbg.value(metadata i32 %inc189, metadata !178, metadata !DIExpression()), !dbg !179
  br label %for.cond51, !dbg !409, !llvm.loop !410

for.end190:                                       ; preds = %for.cond51
  br label %VITIS_LOOP_153_5, !dbg !411

VITIS_LOOP_153_5:                                 ; preds = %for.end190
  call void @llvm.dbg.value(metadata i32 0, metadata !413, metadata !DIExpression()), !dbg !415
  br label %for.cond192, !dbg !416

for.cond192:                                      ; preds = %for.inc211, %VITIS_LOOP_153_5
  %i191.0 = phi i32 [ 0, %VITIS_LOOP_153_5 ], [ %inc212, %for.inc211 ]
  call void @llvm.dbg.value(metadata i32 %i191.0, metadata !413, metadata !DIExpression()), !dbg !415
  %mul193 = mul nsw i32 %size, %size, !dbg !417
  %mul194 = mul nsw i32 %mul193, %size, !dbg !419
  %mul195 = mul nsw i32 %mul194, 10, !dbg !420
  %cmp196 = icmp slt i32 %i191.0, %mul195, !dbg !421
  br i1 %cmp196, label %for.body198, label %for.cond.cleanup197, !dbg !422

for.cond.cleanup197:                              ; preds = %for.cond192
  br label %for.end213

for.body198:                                      ; preds = %for.cond192
  %idxprom199 = sext i32 %i191.0 to i64, !dbg !423
  %arrayidx200 = getelementptr inbounds [640 x i32], [640 x i32]* %force_x_local, i64 0, i64 %idxprom199, !dbg !423
  %25 = load i32, i32* %arrayidx200, align 4, !dbg !423
  %idxprom201 = sext i32 %i191.0 to i64, !dbg !425
  %arrayidx202 = getelementptr inbounds i32, i32* %force_x, i64 %idxprom201, !dbg !425
  store i32 %25, i32* %arrayidx202, align 4, !dbg !426
  %idxprom203 = sext i32 %i191.0 to i64, !dbg !427
  %arrayidx204 = getelementptr inbounds [640 x i32], [640 x i32]* %force_y_local, i64 0, i64 %idxprom203, !dbg !427
  %26 = load i32, i32* %arrayidx204, align 4, !dbg !427
  %idxprom205 = sext i32 %i191.0 to i64, !dbg !428
  %arrayidx206 = getelementptr inbounds i32, i32* %force_y, i64 %idxprom205, !dbg !428
  store i32 %26, i32* %arrayidx206, align 4, !dbg !429
  %idxprom207 = sext i32 %i191.0 to i64, !dbg !430
  %arrayidx208 = getelementptr inbounds [640 x i32], [640 x i32]* %force_z_local, i64 0, i64 %idxprom207, !dbg !430
  %27 = load i32, i32* %arrayidx208, align 4, !dbg !430
  %idxprom209 = sext i32 %i191.0 to i64, !dbg !431
  %arrayidx210 = getelementptr inbounds i32, i32* %force_z, i64 %idxprom209, !dbg !431
  store i32 %27, i32* %arrayidx210, align 4, !dbg !432
  br label %for.inc211, !dbg !433

for.inc211:                                       ; preds = %for.body198
  %inc212 = add nsw i32 %i191.0, 1, !dbg !434
  call void @llvm.dbg.value(metadata i32 %inc212, metadata !413, metadata !DIExpression()), !dbg !415
  br label %for.cond192, !dbg !435, !llvm.loop !436

for.end213:                                       ; preds = %for.cond.cleanup197
  %28 = bitcast [640 x i32]* %pos_z_local to i8*, !dbg !439
  call void @llvm.lifetime.end.p0i8(i64 2560, i8* %28) #9, !dbg !439
  %29 = bitcast [640 x i32]* %pos_y_local to i8*, !dbg !439
  call void @llvm.lifetime.end.p0i8(i64 2560, i8* %29) #9, !dbg !439
  %30 = bitcast [640 x i32]* %pos_x_local to i8*, !dbg !439
  call void @llvm.lifetime.end.p0i8(i64 2560, i8* %30) #9, !dbg !439
  %31 = bitcast [640 x i32]* %force_z_local to i8*, !dbg !439
  call void @llvm.lifetime.end.p0i8(i64 2560, i8* %31) #9, !dbg !439
  %32 = bitcast [640 x i32]* %force_y_local to i8*, !dbg !439
  call void @llvm.lifetime.end.p0i8(i64 2560, i8* %32) #9, !dbg !439
  %33 = bitcast [640 x i32]* %force_x_local to i8*, !dbg !439
  call void @llvm.lifetime.end.p0i8(i64 2560, i8* %33) #9, !dbg !439
  %34 = bitcast [64 x i32]* %n_points to i8*, !dbg !439
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %34) #9, !dbg !439
  ret void, !dbg !439
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inaccessiblememonly nounwind }
attributes #4 = { argmemonly nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="2048" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="20480" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/md_grid/md_grid_prj/solution/.autopilot/db/md_grid.pp.0.c", directory: "/workspace/examples/md_grid")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "block_index", scope: !8, file: !8, line: 21, type: !9, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "md_grid.c", directory: "/workspace/examples/md_grid")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !8, line: 21, type: !11)
!13 = !DILocation(line: 21, column: 21, scope: !7)
!14 = !DILocalVariable(name: "y", arg: 2, scope: !7, file: !8, line: 21, type: !11)
!15 = !DILocation(line: 21, column: 28, scope: !7)
!16 = !DILocalVariable(name: "z", arg: 3, scope: !7, file: !8, line: 21, type: !11)
!17 = !DILocation(line: 21, column: 35, scope: !7)
!18 = !DILocation(line: 22, column: 13, scope: !7)
!19 = !DILocation(line: 22, column: 17, scope: !7)
!20 = !DILocation(line: 22, column: 27, scope: !7)
!21 = !DILocation(line: 22, column: 22, scope: !7)
!22 = !DILocation(line: 22, column: 32, scope: !7)
!23 = !DILocation(line: 22, column: 3, scope: !7)
!24 = distinct !DISubprogram(name: "point_index", scope: !8, file: !8, line: 25, type: !25, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{!11, !11, !11}
!27 = !DILocalVariable(name: "block_idx", arg: 1, scope: !24, file: !8, line: 25, type: !11)
!28 = !DILocation(line: 25, column: 21, scope: !24)
!29 = !DILocalVariable(name: "point_idx", arg: 2, scope: !24, file: !8, line: 25, type: !11)
!30 = !DILocation(line: 25, column: 36, scope: !24)
!31 = !DILocation(line: 26, column: 21, scope: !24)
!32 = !DILocation(line: 26, column: 27, scope: !24)
!33 = !DILocation(line: 26, column: 3, scope: !24)
!34 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 29, type: !35, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !11, !37, !37, !37, !37, !37, !37, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!38 = !{!39}
!39 = !{!"fpga.top", !"user", !40}
!40 = !DILocation(line: 29, column: 16, scope: !34)
!41 = !DILocalVariable(name: "size", arg: 1, scope: !34, file: !8, line: 29, type: !11)
!42 = !DILocation(line: 29, column: 60, scope: !34)
!43 = !DILocalVariable(name: "xn_points", arg: 2, scope: !34, file: !8, line: 30, type: !37)
!44 = !DILocation(line: 30, column: 18, scope: !34)
!45 = !DILocalVariable(name: "force_x", arg: 3, scope: !34, file: !8, line: 31, type: !37)
!46 = !DILocation(line: 31, column: 18, scope: !34)
!47 = !DILocalVariable(name: "force_y", arg: 4, scope: !34, file: !8, line: 32, type: !37)
!48 = !DILocation(line: 32, column: 18, scope: !34)
!49 = !DILocalVariable(name: "force_z", arg: 5, scope: !34, file: !8, line: 33, type: !37)
!50 = !DILocation(line: 33, column: 18, scope: !34)
!51 = !DILocalVariable(name: "position_x", arg: 6, scope: !34, file: !8, line: 34, type: !37)
!52 = !DILocation(line: 34, column: 18, scope: !34)
!53 = !DILocalVariable(name: "position_y", arg: 7, scope: !34, file: !8, line: 35, type: !37)
!54 = !DILocation(line: 35, column: 18, scope: !34)
!55 = !DILocalVariable(name: "position_z", arg: 8, scope: !34, file: !8, line: 36, type: !37)
!56 = !DILocation(line: 36, column: 18, scope: !34)
!57 = !DILocation(line: 37, column: 9, scope: !34)
!58 = !DILocation(line: 38, column: 9, scope: !34)
!59 = !DILocation(line: 39, column: 9, scope: !34)
!60 = !DILocation(line: 40, column: 9, scope: !34)
!61 = !DILocation(line: 41, column: 9, scope: !34)
!62 = !DILocation(line: 42, column: 9, scope: !34)
!63 = !DILocation(line: 43, column: 9, scope: !34)
!64 = !DILocation(line: 44, column: 9, scope: !34)
!65 = !DILocation(line: 45, column: 9, scope: !34)
!66 = !DILocation(line: 57, column: 3, scope: !34)
!67 = !DILocalVariable(name: "n_points", scope: !34, file: !8, line: 57, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 64)
!71 = !DILocation(line: 57, column: 7, scope: !34)
!72 = !DILocation(line: 58, column: 3, scope: !34)
!73 = !DILocalVariable(name: "force_x_local", scope: !34, file: !8, line: 58, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 20480, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 640)
!77 = !DILocation(line: 58, column: 7, scope: !34)
!78 = !DILocation(line: 59, column: 3, scope: !34)
!79 = !DILocalVariable(name: "force_y_local", scope: !34, file: !8, line: 59, type: !74)
!80 = !DILocation(line: 59, column: 7, scope: !34)
!81 = !DILocation(line: 60, column: 3, scope: !34)
!82 = !DILocalVariable(name: "force_z_local", scope: !34, file: !8, line: 60, type: !74)
!83 = !DILocation(line: 60, column: 7, scope: !34)
!84 = !DILocation(line: 61, column: 3, scope: !34)
!85 = !DILocalVariable(name: "pos_x_local", scope: !34, file: !8, line: 61, type: !74)
!86 = !DILocation(line: 61, column: 7, scope: !34)
!87 = !DILocation(line: 62, column: 3, scope: !34)
!88 = !DILocalVariable(name: "pos_y_local", scope: !34, file: !8, line: 62, type: !74)
!89 = !DILocation(line: 62, column: 7, scope: !34)
!90 = !DILocation(line: 63, column: 3, scope: !34)
!91 = !DILocalVariable(name: "pos_z_local", scope: !34, file: !8, line: 63, type: !74)
!92 = !DILocation(line: 63, column: 7, scope: !34)
!93 = !DILocalVariable(name: "i", scope: !94, file: !8, line: 66, type: !11)
!94 = distinct !DILexicalBlock(scope: !34, file: !8, line: 66, column: 20)
!95 = !DILocation(line: 66, column: 29, scope: !94)
!96 = !DILocation(line: 66, column: 25, scope: !94)
!97 = !DILocation(line: 66, column: 38, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !8, line: 66, column: 20)
!99 = !DILocation(line: 66, column: 20, scope: !94)
!100 = !DILocation(line: 66, column: 51, scope: !98)
!101 = !DILocalVariable(name: "j", scope: !102, file: !8, line: 67, type: !11)
!102 = distinct !DILexicalBlock(scope: !103, file: !8, line: 67, column: 22)
!103 = distinct !DILexicalBlock(scope: !98, file: !8, line: 66, column: 51)
!104 = !DILocation(line: 67, column: 31, scope: !102)
!105 = !DILocation(line: 67, column: 27, scope: !102)
!106 = !DILocation(line: 67, column: 40, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !8, line: 67, column: 22)
!108 = !DILocation(line: 67, column: 22, scope: !102)
!109 = !DILocation(line: 67, column: 53, scope: !107)
!110 = !DILocalVariable(name: "k", scope: !111, file: !8, line: 68, type: !11)
!111 = distinct !DILexicalBlock(scope: !112, file: !8, line: 68, column: 24)
!112 = distinct !DILexicalBlock(scope: !107, file: !8, line: 67, column: 53)
!113 = !DILocation(line: 68, column: 33, scope: !111)
!114 = !DILocation(line: 68, column: 29, scope: !111)
!115 = !DILocation(line: 68, column: 42, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !8, line: 68, column: 24)
!117 = !DILocation(line: 68, column: 24, scope: !111)
!118 = !DILocation(line: 69, column: 19, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !8, line: 68, column: 55)
!120 = !DILocalVariable(name: "idx", scope: !119, file: !8, line: 69, type: !11)
!121 = !DILocation(line: 69, column: 13, scope: !119)
!122 = !DILocation(line: 70, column: 25, scope: !119)
!123 = !DILocation(line: 70, column: 9, scope: !119)
!124 = !DILocation(line: 70, column: 23, scope: !119)
!125 = !DILocation(line: 71, column: 7, scope: !119)
!126 = !DILocation(line: 68, column: 51, scope: !116)
!127 = !DILocation(line: 68, column: 24, scope: !116)
!128 = distinct !{!128, !117, !129, !130}
!129 = !DILocation(line: 71, column: 7, scope: !111)
!130 = !{!"llvm.loop.name", !"VITIS_LOOP_68_3"}
!131 = !DILocation(line: 72, column: 5, scope: !112)
!132 = !DILocation(line: 67, column: 49, scope: !107)
!133 = !DILocation(line: 67, column: 22, scope: !107)
!134 = distinct !{!134, !108, !135, !136}
!135 = !DILocation(line: 72, column: 5, scope: !102)
!136 = !{!"llvm.loop.name", !"VITIS_LOOP_67_2"}
!137 = !DILocation(line: 73, column: 3, scope: !103)
!138 = !DILocation(line: 66, column: 47, scope: !98)
!139 = !DILocation(line: 66, column: 20, scope: !98)
!140 = distinct !{!140, !99, !141, !142}
!141 = !DILocation(line: 73, column: 3, scope: !94)
!142 = !{!"llvm.loop.name", !"VITIS_LOOP_66_1"}
!143 = !DILocalVariable(name: "i", scope: !144, file: !8, line: 76, type: !11)
!144 = distinct !DILexicalBlock(scope: !34, file: !8, line: 76, column: 20)
!145 = !DILocation(line: 76, column: 29, scope: !144)
!146 = !DILocation(line: 76, column: 25, scope: !144)
!147 = !DILocation(line: 76, column: 45, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !8, line: 76, column: 20)
!149 = !DILocation(line: 76, column: 52, scope: !148)
!150 = !DILocation(line: 76, column: 59, scope: !148)
!151 = !DILocation(line: 76, column: 38, scope: !148)
!152 = !DILocation(line: 76, column: 20, scope: !144)
!153 = !DILocation(line: 77, column: 24, scope: !154)
!154 = distinct !DILexicalBlock(scope: !148, file: !8, line: 76, column: 70)
!155 = !DILocation(line: 77, column: 5, scope: !154)
!156 = !DILocation(line: 77, column: 22, scope: !154)
!157 = !DILocation(line: 78, column: 24, scope: !154)
!158 = !DILocation(line: 78, column: 5, scope: !154)
!159 = !DILocation(line: 78, column: 22, scope: !154)
!160 = !DILocation(line: 79, column: 24, scope: !154)
!161 = !DILocation(line: 79, column: 5, scope: !154)
!162 = !DILocation(line: 79, column: 22, scope: !154)
!163 = !DILocation(line: 80, column: 22, scope: !154)
!164 = !DILocation(line: 80, column: 5, scope: !154)
!165 = !DILocation(line: 80, column: 20, scope: !154)
!166 = !DILocation(line: 81, column: 22, scope: !154)
!167 = !DILocation(line: 81, column: 5, scope: !154)
!168 = !DILocation(line: 81, column: 20, scope: !154)
!169 = !DILocation(line: 82, column: 22, scope: !154)
!170 = !DILocation(line: 82, column: 5, scope: !154)
!171 = !DILocation(line: 82, column: 20, scope: !154)
!172 = !DILocation(line: 83, column: 3, scope: !154)
!173 = !DILocation(line: 76, column: 66, scope: !148)
!174 = !DILocation(line: 76, column: 20, scope: !148)
!175 = distinct !{!175, !152, !176, !177}
!176 = !DILocation(line: 83, column: 3, scope: !144)
!177 = !{!"llvm.loop.name", !"VITIS_LOOP_76_4"}
!178 = !DILocalVariable(name: "b0_x", scope: !34, file: !8, line: 47, type: !11)
!179 = !DILocation(line: 47, column: 6, scope: !34)
!180 = !DILocation(line: 87, column: 8, scope: !181)
!181 = distinct !DILexicalBlock(scope: !34, file: !8, line: 87, column: 3)
!182 = !DILocation(line: 87, column: 23, scope: !183)
!183 = distinct !DILexicalBlock(scope: !181, file: !8, line: 87, column: 3)
!184 = !DILocation(line: 87, column: 3, scope: !181)
!185 = !DILocation(line: 87, column: 39, scope: !183)
!186 = !DILocalVariable(name: "b0_y", scope: !34, file: !8, line: 47, type: !11)
!187 = !DILocation(line: 47, column: 12, scope: !34)
!188 = !DILocation(line: 89, column: 10, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !8, line: 89, column: 5)
!190 = distinct !DILexicalBlock(scope: !183, file: !8, line: 87, column: 39)
!191 = !DILocation(line: 89, column: 25, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !8, line: 89, column: 5)
!193 = !DILocation(line: 89, column: 5, scope: !189)
!194 = !DILocation(line: 89, column: 41, scope: !192)
!195 = !DILocalVariable(name: "b0_z", scope: !34, file: !8, line: 47, type: !11)
!196 = !DILocation(line: 47, column: 18, scope: !34)
!197 = !DILocation(line: 91, column: 12, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !8, line: 91, column: 7)
!199 = distinct !DILexicalBlock(scope: !192, file: !8, line: 89, column: 41)
!200 = !DILocation(line: 91, column: 27, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !8, line: 91, column: 7)
!202 = !DILocation(line: 91, column: 7, scope: !198)
!203 = !DILocation(line: 92, column: 18, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !8, line: 91, column: 43)
!205 = !DILocalVariable(name: "b0_idx", scope: !34, file: !8, line: 52, type: !11)
!206 = !DILocation(line: 52, column: 7, scope: !34)
!207 = !DILocation(line: 92, column: 9, scope: !204)
!208 = !DILocation(line: 96, column: 34, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !8, line: 96, column: 9)
!210 = !DILocation(line: 96, column: 26, scope: !209)
!211 = !DILocation(line: 96, column: 22, scope: !209)
!212 = !DILocation(line: 96, column: 53, scope: !209)
!213 = !DILocalVariable(name: "b1_x", scope: !34, file: !8, line: 48, type: !11)
!214 = !DILocation(line: 48, column: 7, scope: !34)
!215 = !DILocation(line: 96, column: 14, scope: !209)
!216 = !DILocation(line: 96, column: 83, scope: !217)
!217 = distinct !DILexicalBlock(scope: !209, file: !8, line: 96, column: 9)
!218 = !DILocation(line: 96, column: 75, scope: !217)
!219 = !DILocation(line: 96, column: 68, scope: !217)
!220 = !DILocation(line: 96, column: 105, scope: !217)
!221 = !DILocation(line: 96, column: 65, scope: !217)
!222 = !DILocation(line: 96, column: 9, scope: !209)
!223 = !DILocation(line: 96, column: 120, scope: !217)
!224 = !DILocation(line: 98, column: 36, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !8, line: 98, column: 11)
!226 = distinct !DILexicalBlock(scope: !217, file: !8, line: 96, column: 120)
!227 = !DILocation(line: 98, column: 28, scope: !225)
!228 = !DILocation(line: 98, column: 24, scope: !225)
!229 = !DILocation(line: 98, column: 55, scope: !225)
!230 = !DILocalVariable(name: "b1_y", scope: !34, file: !8, line: 48, type: !11)
!231 = !DILocation(line: 48, column: 13, scope: !34)
!232 = !DILocation(line: 98, column: 16, scope: !225)
!233 = !DILocation(line: 98, column: 85, scope: !234)
!234 = distinct !DILexicalBlock(scope: !225, file: !8, line: 98, column: 11)
!235 = !DILocation(line: 98, column: 77, scope: !234)
!236 = !DILocation(line: 98, column: 70, scope: !234)
!237 = !DILocation(line: 98, column: 107, scope: !234)
!238 = !DILocation(line: 98, column: 67, scope: !234)
!239 = !DILocation(line: 98, column: 11, scope: !225)
!240 = !DILocation(line: 98, column: 122, scope: !234)
!241 = !DILocation(line: 100, column: 38, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !8, line: 100, column: 13)
!243 = distinct !DILexicalBlock(scope: !234, file: !8, line: 98, column: 122)
!244 = !DILocation(line: 100, column: 30, scope: !242)
!245 = !DILocation(line: 100, column: 26, scope: !242)
!246 = !DILocation(line: 100, column: 57, scope: !242)
!247 = !DILocalVariable(name: "b1_z", scope: !34, file: !8, line: 48, type: !11)
!248 = !DILocation(line: 48, column: 19, scope: !34)
!249 = !DILocation(line: 100, column: 18, scope: !242)
!250 = !DILocation(line: 100, column: 87, scope: !251)
!251 = distinct !DILexicalBlock(scope: !242, file: !8, line: 100, column: 13)
!252 = !DILocation(line: 100, column: 79, scope: !251)
!253 = !DILocation(line: 100, column: 72, scope: !251)
!254 = !DILocation(line: 100, column: 109, scope: !251)
!255 = !DILocation(line: 100, column: 69, scope: !251)
!256 = !DILocation(line: 100, column: 13, scope: !242)
!257 = !DILocation(line: 101, column: 24, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !8, line: 100, column: 124)
!259 = !DILocalVariable(name: "b1_idx", scope: !34, file: !8, line: 52, type: !11)
!260 = !DILocation(line: 52, column: 15, scope: !34)
!261 = !DILocation(line: 102, column: 33, scope: !258)
!262 = !DILocalVariable(name: "q_idx_range", scope: !258, file: !8, line: 102, type: !11)
!263 = !DILocation(line: 102, column: 19, scope: !258)
!264 = !DILocation(line: 102, column: 15, scope: !258)
!265 = !DILocalVariable(name: "p_idx", scope: !34, file: !8, line: 51, type: !11)
!266 = !DILocation(line: 51, column: 7, scope: !34)
!267 = !DILocation(line: 106, column: 20, scope: !268)
!268 = distinct !DILexicalBlock(scope: !258, file: !8, line: 106, column: 15)
!269 = !DILocation(line: 106, column: 39, scope: !270)
!270 = distinct !DILexicalBlock(scope: !268, file: !8, line: 106, column: 15)
!271 = !DILocation(line: 106, column: 37, scope: !270)
!272 = !DILocation(line: 106, column: 15, scope: !268)
!273 = !DILocation(line: 107, column: 30, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !8, line: 106, column: 66)
!275 = !DILocalVariable(name: "p_flat_idx", scope: !34, file: !8, line: 53, type: !11)
!276 = !DILocation(line: 53, column: 7, scope: !34)
!277 = !DILocation(line: 108, column: 23, scope: !274)
!278 = !DILocalVariable(name: "p_x", scope: !34, file: !8, line: 49, type: !11)
!279 = !DILocation(line: 49, column: 7, scope: !34)
!280 = !DILocation(line: 109, column: 23, scope: !274)
!281 = !DILocalVariable(name: "p_y", scope: !34, file: !8, line: 49, type: !11)
!282 = !DILocation(line: 49, column: 12, scope: !34)
!283 = !DILocation(line: 110, column: 23, scope: !274)
!284 = !DILocalVariable(name: "p_z", scope: !34, file: !8, line: 49, type: !11)
!285 = !DILocation(line: 49, column: 17, scope: !34)
!286 = !DILocation(line: 112, column: 29, scope: !274)
!287 = !DILocalVariable(name: "sum_x", scope: !274, file: !8, line: 112, type: !11)
!288 = !DILocation(line: 112, column: 21, scope: !274)
!289 = !DILocation(line: 113, column: 29, scope: !274)
!290 = !DILocalVariable(name: "sum_y", scope: !274, file: !8, line: 113, type: !11)
!291 = !DILocation(line: 113, column: 21, scope: !274)
!292 = !DILocation(line: 114, column: 29, scope: !274)
!293 = !DILocalVariable(name: "sum_z", scope: !274, file: !8, line: 114, type: !11)
!294 = !DILocation(line: 114, column: 21, scope: !274)
!295 = !DILocation(line: 114, column: 17, scope: !274)
!296 = !DILocalVariable(name: "q_idx", scope: !34, file: !8, line: 51, type: !11)
!297 = !DILocation(line: 51, column: 14, scope: !34)
!298 = !DILocation(line: 118, column: 22, scope: !299)
!299 = distinct !DILexicalBlock(scope: !274, file: !8, line: 118, column: 17)
!300 = !DILocation(line: 118, column: 39, scope: !301)
!301 = distinct !DILexicalBlock(scope: !299, file: !8, line: 118, column: 17)
!302 = !DILocation(line: 118, column: 17, scope: !299)
!303 = !DILocation(line: 119, column: 32, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !8, line: 118, column: 63)
!305 = !DILocalVariable(name: "q_flat_idx", scope: !34, file: !8, line: 53, type: !11)
!306 = !DILocation(line: 53, column: 19, scope: !34)
!307 = !DILocation(line: 120, column: 25, scope: !304)
!308 = !DILocalVariable(name: "q_x", scope: !34, file: !8, line: 50, type: !11)
!309 = !DILocation(line: 50, column: 7, scope: !34)
!310 = !DILocation(line: 121, column: 25, scope: !304)
!311 = !DILocalVariable(name: "q_y", scope: !34, file: !8, line: 50, type: !11)
!312 = !DILocation(line: 50, column: 12, scope: !34)
!313 = !DILocation(line: 122, column: 25, scope: !304)
!314 = !DILocalVariable(name: "q_z", scope: !34, file: !8, line: 50, type: !11)
!315 = !DILocation(line: 50, column: 17, scope: !34)
!316 = !DILocation(line: 125, column: 27, scope: !317)
!317 = distinct !DILexicalBlock(scope: !304, file: !8, line: 125, column: 23)
!318 = !DILocation(line: 125, column: 34, scope: !317)
!319 = !DILocation(line: 125, column: 41, scope: !317)
!320 = !DILocation(line: 125, column: 48, scope: !317)
!321 = !DILocation(line: 125, column: 55, scope: !317)
!322 = !DILocation(line: 125, column: 23, scope: !304)
!323 = !DILocation(line: 127, column: 30, scope: !324)
!324 = distinct !DILexicalBlock(scope: !317, file: !8, line: 125, column: 63)
!325 = !DILocalVariable(name: "dx", scope: !34, file: !8, line: 54, type: !11)
!326 = !DILocation(line: 54, column: 7, scope: !34)
!327 = !DILocation(line: 128, column: 30, scope: !324)
!328 = !DILocalVariable(name: "dy", scope: !34, file: !8, line: 54, type: !11)
!329 = !DILocation(line: 54, column: 11, scope: !34)
!330 = !DILocation(line: 129, column: 30, scope: !324)
!331 = !DILocalVariable(name: "dz", scope: !34, file: !8, line: 54, type: !11)
!332 = !DILocation(line: 54, column: 15, scope: !34)
!333 = !DILocation(line: 130, column: 33, scope: !324)
!334 = !DILocation(line: 130, column: 43, scope: !324)
!335 = !DILocation(line: 130, column: 38, scope: !324)
!336 = !DILocation(line: 130, column: 53, scope: !324)
!337 = !DILocation(line: 130, column: 48, scope: !324)
!338 = !DILocalVariable(name: "r2inv", scope: !34, file: !8, line: 54, type: !11)
!339 = !DILocation(line: 54, column: 19, scope: !34)
!340 = !DILocation(line: 131, column: 35, scope: !324)
!341 = !DILocation(line: 131, column: 43, scope: !324)
!342 = !DILocalVariable(name: "r6inv", scope: !34, file: !8, line: 54, type: !11)
!343 = !DILocation(line: 54, column: 26, scope: !34)
!344 = !DILocation(line: 132, column: 44, scope: !324)
!345 = !DILocation(line: 132, column: 52, scope: !324)
!346 = !DILocation(line: 132, column: 39, scope: !324)
!347 = !DILocalVariable(name: "potential", scope: !34, file: !8, line: 54, type: !11)
!348 = !DILocation(line: 54, column: 33, scope: !34)
!349 = !DILocation(line: 134, column: 31, scope: !324)
!350 = !DILocalVariable(name: "f", scope: !34, file: !8, line: 54, type: !11)
!351 = !DILocation(line: 54, column: 44, scope: !34)
!352 = !DILocation(line: 135, column: 32, scope: !324)
!353 = !DILocation(line: 135, column: 27, scope: !324)
!354 = !DILocation(line: 136, column: 32, scope: !324)
!355 = !DILocation(line: 136, column: 27, scope: !324)
!356 = !DILocation(line: 137, column: 32, scope: !324)
!357 = !DILocation(line: 137, column: 27, scope: !324)
!358 = !DILocation(line: 138, column: 19, scope: !324)
!359 = !DILocation(line: 139, column: 17, scope: !304)
!360 = !DILocation(line: 118, column: 59, scope: !301)
!361 = !DILocation(line: 118, column: 17, scope: !301)
!362 = distinct !{!362, !302, !363, !364}
!363 = !DILocation(line: 139, column: 17, scope: !299)
!364 = !{!"llvm.loop.name", !"loop_q"}
!365 = !DILocation(line: 141, column: 17, scope: !274)
!366 = !DILocation(line: 141, column: 43, scope: !274)
!367 = !DILocation(line: 142, column: 17, scope: !274)
!368 = !DILocation(line: 142, column: 43, scope: !274)
!369 = !DILocation(line: 143, column: 17, scope: !274)
!370 = !DILocation(line: 143, column: 43, scope: !274)
!371 = !DILocation(line: 144, column: 15, scope: !274)
!372 = !DILocation(line: 106, column: 62, scope: !270)
!373 = !DILocation(line: 106, column: 15, scope: !270)
!374 = distinct !{!374, !272, !375, !376}
!375 = !DILocation(line: 144, column: 15, scope: !268)
!376 = !{!"llvm.loop.name", !"loop_p"}
!377 = !DILocation(line: 145, column: 13, scope: !258)
!378 = !DILocation(line: 100, column: 120, scope: !251)
!379 = !DILocation(line: 100, column: 13, scope: !251)
!380 = distinct !{!380, !256, !381, !382}
!381 = !DILocation(line: 145, column: 13, scope: !242)
!382 = !{!"llvm.loop.name", !"loop_grid1_z"}
!383 = !DILocation(line: 146, column: 11, scope: !243)
!384 = !DILocation(line: 98, column: 118, scope: !234)
!385 = !DILocation(line: 98, column: 11, scope: !234)
!386 = distinct !{!386, !239, !387, !388}
!387 = !DILocation(line: 146, column: 11, scope: !225)
!388 = !{!"llvm.loop.name", !"loop_grid1_y"}
!389 = !DILocation(line: 147, column: 9, scope: !226)
!390 = !DILocation(line: 96, column: 116, scope: !217)
!391 = !DILocation(line: 96, column: 9, scope: !217)
!392 = distinct !{!392, !222, !393, !394}
!393 = !DILocation(line: 147, column: 9, scope: !209)
!394 = !{!"llvm.loop.name", !"loop_grid1_x"}
!395 = !DILocation(line: 148, column: 7, scope: !204)
!396 = !DILocation(line: 91, column: 39, scope: !201)
!397 = !DILocation(line: 91, column: 7, scope: !201)
!398 = distinct !{!398, !202, !399, !400}
!399 = !DILocation(line: 148, column: 7, scope: !198)
!400 = !{!"llvm.loop.name", !"loop_grid0_z"}
!401 = !DILocation(line: 149, column: 5, scope: !199)
!402 = !DILocation(line: 89, column: 37, scope: !192)
!403 = !DILocation(line: 89, column: 5, scope: !192)
!404 = distinct !{!404, !193, !405, !406}
!405 = !DILocation(line: 149, column: 5, scope: !189)
!406 = !{!"llvm.loop.name", !"loop_grid0_y"}
!407 = !DILocation(line: 150, column: 3, scope: !190)
!408 = !DILocation(line: 87, column: 35, scope: !183)
!409 = !DILocation(line: 87, column: 3, scope: !183)
!410 = distinct !{!410, !184, !411, !412}
!411 = !DILocation(line: 150, column: 3, scope: !181)
!412 = !{!"llvm.loop.name", !"loop_grid0_x"}
!413 = !DILocalVariable(name: "i", scope: !414, file: !8, line: 153, type: !11)
!414 = distinct !DILexicalBlock(scope: !34, file: !8, line: 153, column: 21)
!415 = !DILocation(line: 153, column: 30, scope: !414)
!416 = !DILocation(line: 153, column: 26, scope: !414)
!417 = !DILocation(line: 153, column: 46, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !8, line: 153, column: 21)
!419 = !DILocation(line: 153, column: 53, scope: !418)
!420 = !DILocation(line: 153, column: 60, scope: !418)
!421 = !DILocation(line: 153, column: 39, scope: !418)
!422 = !DILocation(line: 153, column: 21, scope: !414)
!423 = !DILocation(line: 154, column: 18, scope: !424)
!424 = distinct !DILexicalBlock(scope: !418, file: !8, line: 153, column: 71)
!425 = !DILocation(line: 154, column: 5, scope: !424)
!426 = !DILocation(line: 154, column: 16, scope: !424)
!427 = !DILocation(line: 155, column: 18, scope: !424)
!428 = !DILocation(line: 155, column: 5, scope: !424)
!429 = !DILocation(line: 155, column: 16, scope: !424)
!430 = !DILocation(line: 156, column: 18, scope: !424)
!431 = !DILocation(line: 156, column: 5, scope: !424)
!432 = !DILocation(line: 156, column: 16, scope: !424)
!433 = !DILocation(line: 157, column: 3, scope: !424)
!434 = !DILocation(line: 153, column: 67, scope: !418)
!435 = !DILocation(line: 153, column: 21, scope: !418)
!436 = distinct !{!436, !422, !437, !438}
!437 = !DILocation(line: 157, column: 3, scope: !414)
!438 = !{!"llvm.loop.name", !"VITIS_LOOP_153_5"}
!439 = !DILocation(line: 158, column: 1, scope: !34)
