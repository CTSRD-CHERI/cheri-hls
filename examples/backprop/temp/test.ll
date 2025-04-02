; ModuleID = '/workspace/examples/backprop/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @soft_max(i32* "fpga.decayed.dim.hint"="3" %net_outputs, i32* "fpga.decayed.dim.hint"="3" %activations3) #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32* %net_outputs, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.value(metadata i32* %activations3, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !19
  br label %VITIS_LOOP_28_1, !dbg !20

VITIS_LOOP_28_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !22
  br label %for.cond, !dbg !23

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_28_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_28_1 ], [ %inc, %for.inc ]
  %sum.0 = phi i32 [ 0, %VITIS_LOOP_28_1 ], [ %add, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %sum.0, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !21, metadata !DIExpression()), !dbg !22
  %cmp = icmp slt i32 %i.0, 3, !dbg !25
  br i1 %cmp, label %for.body, label %for.end, !dbg !27

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !28
  %arrayidx = getelementptr inbounds i32, i32* %activations3, i64 %idxprom, !dbg !28
  %0 = load i32, i32* %arrayidx, align 4, !dbg !28
  %sub = sub nsw i32 0, %0, !dbg !30
  %div = sdiv i32 %sub, 2, !dbg !31
  %add = add nsw i32 %sum.0, %div, !dbg !32
  call void @llvm.dbg.value(metadata i32 %add, metadata !18, metadata !DIExpression()), !dbg !19
  br label %for.inc, !dbg !33

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !34
  call void @llvm.dbg.value(metadata i32 %inc, metadata !21, metadata !DIExpression()), !dbg !22
  br label %for.cond, !dbg !35, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_31_2, !dbg !37

VITIS_LOOP_31_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !22
  br label %for.cond1, !dbg !39

for.cond1:                                        ; preds = %for.inc15, %VITIS_LOOP_31_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_31_2 ], [ %inc16, %for.inc15 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !21, metadata !DIExpression()), !dbg !22
  %cmp2 = icmp slt i32 %i.1, 3, !dbg !41
  br i1 %cmp2, label %for.body3, label %for.end17, !dbg !43

for.body3:                                        ; preds = %for.cond1
  %tobool = icmp ne i32 %sum.0, 0, !dbg !44
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !44

cond.true:                                        ; preds = %for.body3
  %idxprom4 = sext i32 %i.1 to i64, !dbg !46
  %arrayidx5 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom4, !dbg !46
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !46
  %sub6 = sub nsw i32 0, %1, !dbg !47
  %div7 = sdiv i32 %sub6, 2, !dbg !48
  %div8 = sdiv i32 %div7, %sum.0, !dbg !49
  br label %cond.end, !dbg !44

cond.false:                                       ; preds = %for.body3
  %idxprom9 = sext i32 %i.1 to i64, !dbg !50
  %arrayidx10 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom9, !dbg !50
  %2 = load i32, i32* %arrayidx10, align 4, !dbg !50
  %sub11 = sub nsw i32 0, %2, !dbg !51
  %div12 = sdiv i32 %sub11, 2, !dbg !52
  br label %cond.end, !dbg !44

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div8, %cond.true ], [ %div12, %cond.false ], !dbg !44
  %idxprom13 = sext i32 %i.1 to i64, !dbg !53
  %arrayidx14 = getelementptr inbounds i32, i32* %net_outputs, i64 %idxprom13, !dbg !53
  store i32 %cond, i32* %arrayidx14, align 4, !dbg !54
  br label %for.inc15, !dbg !55

for.inc15:                                        ; preds = %cond.end
  %inc16 = add nsw i32 %i.1, 1, !dbg !56
  call void @llvm.dbg.value(metadata i32 %inc16, metadata !21, metadata !DIExpression()), !dbg !22
  br label %for.cond1, !dbg !57, !llvm.loop !58

for.end17:                                        ; preds = %for.cond1
  ret void, !dbg !61
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
define void @RELU1(i32* "fpga.decayed.dim.hint"="16" %activations1, i32* "fpga.decayed.dim.hint"="16" %dactivations1, i32 %size) #0 !dbg !62 {
entry:
  call void @llvm.dbg.value(metadata i32* %activations1, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32* %dactivations1, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 %size, metadata !69, metadata !DIExpression()), !dbg !70
  br label %VITIS_LOOP_39_1, !dbg !71

VITIS_LOOP_39_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !73
  br label %for.cond, !dbg !74

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_39_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_39_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !72, metadata !DIExpression()), !dbg !73
  %cmp = icmp slt i32 %i.0, %size, !dbg !76
  br i1 %cmp, label %for.body, label %for.end, !dbg !78

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !79
  %arrayidx = getelementptr inbounds i32, i32* %activations1, i64 %idxprom, !dbg !79
  %0 = load i32, i32* %arrayidx, align 4, !dbg !79
  %idxprom1 = sext i32 %i.0 to i64, !dbg !81
  %arrayidx2 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom1, !dbg !81
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !81
  %sub = sub nsw i32 1, %1, !dbg !82
  %mul = mul nsw i32 %0, %sub, !dbg !83
  %idxprom3 = sext i32 %i.0 to i64, !dbg !84
  %arrayidx4 = getelementptr inbounds i32, i32* %dactivations1, i64 %idxprom3, !dbg !84
  store i32 %mul, i32* %arrayidx4, align 4, !dbg !85
  %idxprom5 = sext i32 %i.0 to i64, !dbg !86
  %arrayidx6 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom5, !dbg !86
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !86
  %sub7 = sub nsw i32 0, %2, !dbg !87
  %div = sdiv i32 %sub7, 2, !dbg !88
  %add = add nsw i32 1, %div, !dbg !89
  %idxprom8 = sext i32 %i.0 to i64, !dbg !90
  %arrayidx9 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom8, !dbg !90
  store i32 %add, i32* %arrayidx9, align 4, !dbg !91
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !93
  call void @llvm.dbg.value(metadata i32 %inc, metadata !72, metadata !DIExpression()), !dbg !73
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  ret void, !dbg !98
}

; Function Attrs: nounwind
define void @RELU2(i32* "fpga.decayed.dim.hint"="16" %activations2, i32* "fpga.decayed.dim.hint"="16" %dactivations2, i32 %size) #0 !dbg !99 {
entry:
  call void @llvm.dbg.value(metadata i32* %activations2, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32* %dactivations2, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.value(metadata i32 %size, metadata !104, metadata !DIExpression()), !dbg !105
  br label %VITIS_LOOP_47_1, !dbg !106

VITIS_LOOP_47_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !107, metadata !DIExpression()), !dbg !108
  br label %for.cond, !dbg !109

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_47_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_47_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !107, metadata !DIExpression()), !dbg !108
  %cmp = icmp slt i32 %i.0, %size, !dbg !111
  br i1 %cmp, label %for.body, label %for.end, !dbg !113

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !114
  %arrayidx = getelementptr inbounds i32, i32* %activations2, i64 %idxprom, !dbg !114
  %0 = load i32, i32* %arrayidx, align 4, !dbg !114
  %idxprom1 = sext i32 %i.0 to i64, !dbg !116
  %arrayidx2 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom1, !dbg !116
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !116
  %sub = sub nsw i32 1, %1, !dbg !117
  %mul = mul nsw i32 %0, %sub, !dbg !118
  %idxprom3 = sext i32 %i.0 to i64, !dbg !119
  %arrayidx4 = getelementptr inbounds i32, i32* %dactivations2, i64 %idxprom3, !dbg !119
  store i32 %mul, i32* %arrayidx4, align 4, !dbg !120
  %idxprom5 = sext i32 %i.0 to i64, !dbg !121
  %arrayidx6 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom5, !dbg !121
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !121
  %sub7 = sub nsw i32 0, %2, !dbg !122
  %div = sdiv i32 %sub7, 2, !dbg !123
  %add = add nsw i32 1, %div, !dbg !124
  %idxprom8 = sext i32 %i.0 to i64, !dbg !125
  %arrayidx9 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom8, !dbg !125
  store i32 %add, i32* %arrayidx9, align 4, !dbg !126
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !128
  call void @llvm.dbg.value(metadata i32 %inc, metadata !107, metadata !DIExpression()), !dbg !108
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  ret void, !dbg !133
}

; Function Attrs: nounwind
define void @RELU3(i32* "fpga.decayed.dim.hint"="3" %activations3, i32* "fpga.decayed.dim.hint"="3" %dactivations3, i32 %size) #0 !dbg !134 {
entry:
  call void @llvm.dbg.value(metadata i32* %activations3, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i32* %dactivations3, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i32 %size, metadata !139, metadata !DIExpression()), !dbg !140
  br label %VITIS_LOOP_56_1, !dbg !141

VITIS_LOOP_56_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !142, metadata !DIExpression()), !dbg !143
  br label %for.cond, !dbg !144

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_56_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_56_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !142, metadata !DIExpression()), !dbg !143
  %cmp = icmp slt i32 %i.0, %size, !dbg !146
  br i1 %cmp, label %for.body, label %for.end, !dbg !148

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !149
  %arrayidx = getelementptr inbounds i32, i32* %activations3, i64 %idxprom, !dbg !149
  %0 = load i32, i32* %arrayidx, align 4, !dbg !149
  %idxprom1 = sext i32 %i.0 to i64, !dbg !151
  %arrayidx2 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom1, !dbg !151
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !151
  %sub = sub nsw i32 1, %1, !dbg !152
  %mul = mul nsw i32 %0, %sub, !dbg !153
  %idxprom3 = sext i32 %i.0 to i64, !dbg !154
  %arrayidx4 = getelementptr inbounds i32, i32* %dactivations3, i64 %idxprom3, !dbg !154
  store i32 %mul, i32* %arrayidx4, align 4, !dbg !155
  %idxprom5 = sext i32 %i.0 to i64, !dbg !156
  %arrayidx6 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom5, !dbg !156
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !156
  %sub7 = sub nsw i32 0, %2, !dbg !157
  %div = sdiv i32 %sub7, 2, !dbg !158
  %add = add nsw i32 1, %div, !dbg !159
  %idxprom8 = sext i32 %i.0 to i64, !dbg !160
  %arrayidx9 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom8, !dbg !160
  store i32 %add, i32* %arrayidx9, align 4, !dbg !161
  br label %for.inc, !dbg !162

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !163
  call void @llvm.dbg.value(metadata i32 %inc, metadata !142, metadata !DIExpression()), !dbg !143
  br label %for.cond, !dbg !164, !llvm.loop !165

for.end:                                          ; preds = %for.cond
  ret void, !dbg !168
}

; Function Attrs: nounwind
define void @matrix_vector_product_with_bias_input_layer(i32* "fpga.decayed.dim.hint"="16" %biases1, i32* "fpga.decayed.dim.hint"="256" %weights1, i32* "fpga.decayed.dim.hint"="16" %activations1, i32* "fpga.decayed.dim.hint"="16" %training_data) #0 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata i32* %biases1, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i32* %weights1, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i32* %activations1, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32* %training_data, metadata !178, metadata !DIExpression()), !dbg !179
  br label %VITIS_LOOP_75_1, !dbg !180

VITIS_LOOP_75_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !182
  br label %for.cond, !dbg !183

for.cond:                                         ; preds = %for.inc14, %VITIS_LOOP_75_1
  %j.0 = phi i32 [ 0, %VITIS_LOOP_75_1 ], [ %inc15, %for.inc14 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !181, metadata !DIExpression()), !dbg !182
  %cmp = icmp slt i32 %j.0, 16, !dbg !185
  br i1 %cmp, label %for.body, label %for.end16, !dbg !187

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %j.0 to i64, !dbg !188
  %arrayidx = getelementptr inbounds i32, i32* %activations1, i64 %idxprom, !dbg !188
  store i32 0, i32* %arrayidx, align 4, !dbg !190
  br label %VITIS_LOOP_77_2, !dbg !188

VITIS_LOOP_77_2:                                  ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !192
  br label %for.cond1, !dbg !193

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_77_2
  %i.0 = phi i32 [ 0, %VITIS_LOOP_77_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !191, metadata !DIExpression()), !dbg !192
  %cmp2 = icmp slt i32 %i.0, 16, !dbg !195
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !197

for.body3:                                        ; preds = %for.cond1
  %idxprom4 = sext i32 %j.0 to i64, !dbg !198
  %arrayidx5 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom4, !dbg !198
  %0 = load i32, i32* %arrayidx5, align 4, !dbg !198
  %mul = mul nsw i32 %j.0, 16, !dbg !200
  %add = add nsw i32 %mul, %i.0, !dbg !201
  %idxprom6 = sext i32 %add to i64, !dbg !202
  %arrayidx7 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom6, !dbg !202
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !202
  %idxprom8 = sext i32 %i.0 to i64, !dbg !203
  %arrayidx9 = getelementptr inbounds i32, i32* %training_data, i64 %idxprom8, !dbg !203
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !203
  %mul10 = mul nsw i32 %1, %2, !dbg !204
  %add11 = add nsw i32 %0, %mul10, !dbg !205
  %idxprom12 = sext i32 %j.0 to i64, !dbg !206
  %arrayidx13 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom12, !dbg !206
  store i32 %add11, i32* %arrayidx13, align 4, !dbg !207
  br label %for.inc, !dbg !208

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !dbg !209
  call void @llvm.dbg.value(metadata i32 %inc, metadata !191, metadata !DIExpression()), !dbg !192
  br label %for.cond1, !dbg !210, !llvm.loop !211

for.end:                                          ; preds = %for.cond1
  br label %for.inc14, !dbg !214

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !dbg !215
  call void @llvm.dbg.value(metadata i32 %inc15, metadata !181, metadata !DIExpression()), !dbg !182
  br label %for.cond, !dbg !216, !llvm.loop !217

for.end16:                                        ; preds = %for.cond
  br label %VITIS_LOOP_82_3, !dbg !218

VITIS_LOOP_82_3:                                  ; preds = %for.end16
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !192
  br label %for.cond17, !dbg !220

for.cond17:                                       ; preds = %for.inc27, %VITIS_LOOP_82_3
  %i.1 = phi i32 [ 0, %VITIS_LOOP_82_3 ], [ %inc28, %for.inc27 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !191, metadata !DIExpression()), !dbg !192
  %cmp18 = icmp slt i32 %i.1, 16, !dbg !222
  br i1 %cmp18, label %for.body19, label %for.end29, !dbg !224

for.body19:                                       ; preds = %for.cond17
  %idxprom20 = sext i32 %i.1 to i64, !dbg !225
  %arrayidx21 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom20, !dbg !225
  %3 = load i32, i32* %arrayidx21, align 4, !dbg !225
  %idxprom22 = sext i32 %i.1 to i64, !dbg !227
  %arrayidx23 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom22, !dbg !227
  %4 = load i32, i32* %arrayidx23, align 4, !dbg !227
  %add24 = add nsw i32 %3, %4, !dbg !228
  %idxprom25 = sext i32 %i.1 to i64, !dbg !229
  %arrayidx26 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom25, !dbg !229
  store i32 %add24, i32* %arrayidx26, align 4, !dbg !230
  br label %for.inc27, !dbg !231

for.inc27:                                        ; preds = %for.body19
  %inc28 = add nsw i32 %i.1, 1, !dbg !232
  call void @llvm.dbg.value(metadata i32 %inc28, metadata !191, metadata !DIExpression()), !dbg !192
  br label %for.cond17, !dbg !233, !llvm.loop !234

for.end29:                                        ; preds = %for.cond17
  ret void, !dbg !237
}

; Function Attrs: nounwind
define void @matrix_vector_product_with_bias_second_layer(i32* "fpga.decayed.dim.hint"="16" %biases2, i32* "fpga.decayed.dim.hint"="256" %weights2, i32* "fpga.decayed.dim.hint"="16" %activations2, i32* "fpga.decayed.dim.hint"="16" %activations1) #0 !dbg !238 {
entry:
  call void @llvm.dbg.value(metadata i32* %biases2, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i32* %weights2, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.value(metadata i32* %activations2, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i32* %activations1, metadata !245, metadata !DIExpression()), !dbg !246
  br label %VITIS_LOOP_92_1, !dbg !247

VITIS_LOOP_92_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !249
  br label %for.cond, !dbg !250

for.cond:                                         ; preds = %for.inc14, %VITIS_LOOP_92_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_92_1 ], [ %inc15, %for.inc14 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !248, metadata !DIExpression()), !dbg !249
  %cmp = icmp slt i32 %i.0, 16, !dbg !252
  br i1 %cmp, label %for.body, label %for.end16, !dbg !254

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !255
  %arrayidx = getelementptr inbounds i32, i32* %activations2, i64 %idxprom, !dbg !255
  store i32 0, i32* %arrayidx, align 4, !dbg !257
  br label %VITIS_LOOP_94_2, !dbg !255

VITIS_LOOP_94_2:                                  ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !258, metadata !DIExpression()), !dbg !259
  br label %for.cond1, !dbg !260

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_94_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_94_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !258, metadata !DIExpression()), !dbg !259
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !262
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !264

for.body3:                                        ; preds = %for.cond1
  %idxprom4 = sext i32 %i.0 to i64, !dbg !265
  %arrayidx5 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom4, !dbg !265
  %0 = load i32, i32* %arrayidx5, align 4, !dbg !265
  %mul = mul nsw i32 %i.0, 16, !dbg !267
  %add = add nsw i32 %mul, %j.0, !dbg !268
  %idxprom6 = sext i32 %add to i64, !dbg !269
  %arrayidx7 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom6, !dbg !269
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !269
  %idxprom8 = sext i32 %j.0 to i64, !dbg !270
  %arrayidx9 = getelementptr inbounds i32, i32* %activations1, i64 %idxprom8, !dbg !270
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !270
  %mul10 = mul nsw i32 %1, %2, !dbg !271
  %add11 = add nsw i32 %0, %mul10, !dbg !272
  %idxprom12 = sext i32 %i.0 to i64, !dbg !273
  %arrayidx13 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom12, !dbg !273
  store i32 %add11, i32* %arrayidx13, align 4, !dbg !274
  br label %for.inc, !dbg !275

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !276
  call void @llvm.dbg.value(metadata i32 %inc, metadata !258, metadata !DIExpression()), !dbg !259
  br label %for.cond1, !dbg !277, !llvm.loop !278

for.end:                                          ; preds = %for.cond1
  br label %for.inc14, !dbg !281

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.0, 1, !dbg !282
  call void @llvm.dbg.value(metadata i32 %inc15, metadata !248, metadata !DIExpression()), !dbg !249
  br label %for.cond, !dbg !283, !llvm.loop !284

for.end16:                                        ; preds = %for.cond
  br label %VITIS_LOOP_99_3, !dbg !285

VITIS_LOOP_99_3:                                  ; preds = %for.end16
  call void @llvm.dbg.value(metadata i32 0, metadata !248, metadata !DIExpression()), !dbg !249
  br label %for.cond17, !dbg !287

for.cond17:                                       ; preds = %for.inc27, %VITIS_LOOP_99_3
  %i.1 = phi i32 [ 0, %VITIS_LOOP_99_3 ], [ %inc28, %for.inc27 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !248, metadata !DIExpression()), !dbg !249
  %cmp18 = icmp slt i32 %i.1, 16, !dbg !289
  br i1 %cmp18, label %for.body19, label %for.end29, !dbg !291

for.body19:                                       ; preds = %for.cond17
  %idxprom20 = sext i32 %i.1 to i64, !dbg !292
  %arrayidx21 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom20, !dbg !292
  %3 = load i32, i32* %arrayidx21, align 4, !dbg !292
  %idxprom22 = sext i32 %i.1 to i64, !dbg !294
  %arrayidx23 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom22, !dbg !294
  %4 = load i32, i32* %arrayidx23, align 4, !dbg !294
  %add24 = add nsw i32 %3, %4, !dbg !295
  %idxprom25 = sext i32 %i.1 to i64, !dbg !296
  %arrayidx26 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom25, !dbg !296
  store i32 %add24, i32* %arrayidx26, align 4, !dbg !297
  br label %for.inc27, !dbg !298

for.inc27:                                        ; preds = %for.body19
  %inc28 = add nsw i32 %i.1, 1, !dbg !299
  call void @llvm.dbg.value(metadata i32 %inc28, metadata !248, metadata !DIExpression()), !dbg !249
  br label %for.cond17, !dbg !300, !llvm.loop !301

for.end29:                                        ; preds = %for.cond17
  ret void, !dbg !304
}

; Function Attrs: nounwind
define void @matrix_vector_product_with_bias_output_layer(i32* "fpga.decayed.dim.hint"="3" %biases3, i32* "fpga.decayed.dim.hint"="48" %weights3, i32* "fpga.decayed.dim.hint"="3" %activations3, i32* "fpga.decayed.dim.hint"="16" %activations2) #0 !dbg !305 {
entry:
  call void @llvm.dbg.value(metadata i32* %biases3, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata i32* %weights3, metadata !308, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i32* %activations3, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32* %activations2, metadata !312, metadata !DIExpression()), !dbg !313
  br label %VITIS_LOOP_109_1, !dbg !314

VITIS_LOOP_109_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !315, metadata !DIExpression()), !dbg !316
  br label %for.cond, !dbg !317

for.cond:                                         ; preds = %for.inc14, %VITIS_LOOP_109_1
  %j.0 = phi i32 [ 0, %VITIS_LOOP_109_1 ], [ %inc15, %for.inc14 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !315, metadata !DIExpression()), !dbg !316
  %cmp = icmp slt i32 %j.0, 3, !dbg !319
  br i1 %cmp, label %for.body, label %for.end16, !dbg !321

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %j.0 to i64, !dbg !322
  %arrayidx = getelementptr inbounds i32, i32* %activations3, i64 %idxprom, !dbg !322
  store i32 0, i32* %arrayidx, align 4, !dbg !324
  br label %VITIS_LOOP_111_2, !dbg !322

VITIS_LOOP_111_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !325, metadata !DIExpression()), !dbg !326
  br label %for.cond1, !dbg !327

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_111_2
  %i.0 = phi i32 [ 0, %VITIS_LOOP_111_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !325, metadata !DIExpression()), !dbg !326
  %cmp2 = icmp slt i32 %i.0, 16, !dbg !329
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !331

for.body3:                                        ; preds = %for.cond1
  %idxprom4 = sext i32 %j.0 to i64, !dbg !332
  %arrayidx5 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom4, !dbg !332
  %0 = load i32, i32* %arrayidx5, align 4, !dbg !332
  %mul = mul nsw i32 %j.0, 16, !dbg !334
  %add = add nsw i32 %mul, %i.0, !dbg !335
  %idxprom6 = sext i32 %add to i64, !dbg !336
  %arrayidx7 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom6, !dbg !336
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !336
  %idxprom8 = sext i32 %i.0 to i64, !dbg !337
  %arrayidx9 = getelementptr inbounds i32, i32* %activations2, i64 %idxprom8, !dbg !337
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !337
  %mul10 = mul nsw i32 %1, %2, !dbg !338
  %add11 = add nsw i32 %0, %mul10, !dbg !339
  %idxprom12 = sext i32 %j.0 to i64, !dbg !340
  %arrayidx13 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom12, !dbg !340
  store i32 %add11, i32* %arrayidx13, align 4, !dbg !341
  br label %for.inc, !dbg !342

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !dbg !343
  call void @llvm.dbg.value(metadata i32 %inc, metadata !325, metadata !DIExpression()), !dbg !326
  br label %for.cond1, !dbg !344, !llvm.loop !345

for.end:                                          ; preds = %for.cond1
  br label %for.inc14, !dbg !348

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %j.0, 1, !dbg !349
  call void @llvm.dbg.value(metadata i32 %inc15, metadata !315, metadata !DIExpression()), !dbg !316
  br label %for.cond, !dbg !350, !llvm.loop !351

for.end16:                                        ; preds = %for.cond
  br label %VITIS_LOOP_116_3, !dbg !352

VITIS_LOOP_116_3:                                 ; preds = %for.end16
  call void @llvm.dbg.value(metadata i32 0, metadata !325, metadata !DIExpression()), !dbg !326
  br label %for.cond17, !dbg !354

for.cond17:                                       ; preds = %for.inc27, %VITIS_LOOP_116_3
  %i.1 = phi i32 [ 0, %VITIS_LOOP_116_3 ], [ %inc28, %for.inc27 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !325, metadata !DIExpression()), !dbg !326
  %cmp18 = icmp slt i32 %i.1, 3, !dbg !356
  br i1 %cmp18, label %for.body19, label %for.end29, !dbg !358

for.body19:                                       ; preds = %for.cond17
  %idxprom20 = sext i32 %i.1 to i64, !dbg !359
  %arrayidx21 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom20, !dbg !359
  %3 = load i32, i32* %arrayidx21, align 4, !dbg !359
  %idxprom22 = sext i32 %i.1 to i64, !dbg !361
  %arrayidx23 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom22, !dbg !361
  %4 = load i32, i32* %arrayidx23, align 4, !dbg !361
  %add24 = add nsw i32 %3, %4, !dbg !362
  %idxprom25 = sext i32 %i.1 to i64, !dbg !363
  %arrayidx26 = getelementptr inbounds i32, i32* %activations3, i64 %idxprom25, !dbg !363
  store i32 %add24, i32* %arrayidx26, align 4, !dbg !364
  br label %for.inc27, !dbg !365

for.inc27:                                        ; preds = %for.body19
  %inc28 = add nsw i32 %i.1, 1, !dbg !366
  call void @llvm.dbg.value(metadata i32 %inc28, metadata !325, metadata !DIExpression()), !dbg !326
  br label %for.cond17, !dbg !367, !llvm.loop !368

for.end29:                                        ; preds = %for.cond17
  ret void, !dbg !371
}

; Function Attrs: nounwind
define void @take_difference(i32* "fpga.decayed.dim.hint"="3" %net_outputs, i32* "fpga.decayed.dim.hint"="3" %training_targets, i32* "fpga.decayed.dim.hint"="3" %output_difference, i32* "fpga.decayed.dim.hint"="3" %dactivations3) #0 !dbg !372 {
entry:
  call void @llvm.dbg.value(metadata i32* %net_outputs, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata i32* %training_targets, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i32* %output_difference, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata i32* %dactivations3, metadata !379, metadata !DIExpression()), !dbg !380
  br label %VITIS_LOOP_126_1, !dbg !381

VITIS_LOOP_126_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !382, metadata !DIExpression()), !dbg !383
  br label %for.cond, !dbg !384

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_126_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_126_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !382, metadata !DIExpression()), !dbg !383
  %cmp = icmp slt i32 %i.0, 3, !dbg !386
  br i1 %cmp, label %for.body, label %for.end, !dbg !388

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !389
  %arrayidx = getelementptr inbounds i32, i32* %net_outputs, i64 %idxprom, !dbg !389
  %0 = load i32, i32* %arrayidx, align 4, !dbg !389
  %idxprom1 = sext i32 %i.0 to i64, !dbg !391
  %arrayidx2 = getelementptr inbounds i32, i32* %training_targets, i64 %idxprom1, !dbg !391
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !391
  %sub = sub nsw i32 %0, %1, !dbg !392
  %mul = mul nsw i32 %sub, -1, !dbg !393
  %idxprom3 = sext i32 %i.0 to i64, !dbg !394
  %arrayidx4 = getelementptr inbounds i32, i32* %dactivations3, i64 %idxprom3, !dbg !394
  %2 = load i32, i32* %arrayidx4, align 4, !dbg !394
  %mul5 = mul nsw i32 %mul, %2, !dbg !395
  %idxprom6 = sext i32 %i.0 to i64, !dbg !396
  %arrayidx7 = getelementptr inbounds i32, i32* %output_difference, i64 %idxprom6, !dbg !396
  store i32 %mul5, i32* %arrayidx7, align 4, !dbg !397
  br label %for.inc, !dbg !398

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !399
  call void @llvm.dbg.value(metadata i32 %inc, metadata !382, metadata !DIExpression()), !dbg !383
  br label %for.cond, !dbg !400, !llvm.loop !401

for.end:                                          ; preds = %for.cond
  ret void, !dbg !404
}

; Function Attrs: nounwind
define void @get_delta_matrix_weights3(i32* "fpga.decayed.dim.hint"="48" %delta_weights3, i32* "fpga.decayed.dim.hint"="3" %output_difference, i32* "fpga.decayed.dim.hint"="16" %activations2) #0 !dbg !405 {
entry:
  call void @llvm.dbg.value(metadata i32* %delta_weights3, metadata !408, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i32* %output_difference, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.value(metadata i32* %activations2, metadata !412, metadata !DIExpression()), !dbg !413
  br label %VITIS_LOOP_137_1, !dbg !414

VITIS_LOOP_137_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !415, metadata !DIExpression()), !dbg !416
  br label %for.cond, !dbg !417

for.cond:                                         ; preds = %for.inc9, %VITIS_LOOP_137_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_137_1 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !415, metadata !DIExpression()), !dbg !416
  %cmp = icmp slt i32 %i.0, 16, !dbg !419
  br i1 %cmp, label %for.body, label %for.end11, !dbg !421

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_138_2, !dbg !422

VITIS_LOOP_138_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !423, metadata !DIExpression()), !dbg !424
  br label %for.cond1, !dbg !425

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_138_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_138_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !423, metadata !DIExpression()), !dbg !424
  %cmp2 = icmp slt i32 %j.0, 3, !dbg !428
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !430

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64, !dbg !431
  %arrayidx = getelementptr inbounds i32, i32* %activations2, i64 %idxprom, !dbg !431
  %0 = load i32, i32* %arrayidx, align 4, !dbg !431
  %idxprom4 = sext i32 %j.0 to i64, !dbg !433
  %arrayidx5 = getelementptr inbounds i32, i32* %output_difference, i64 %idxprom4, !dbg !433
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !433
  %mul = mul nsw i32 %0, %1, !dbg !434
  %mul6 = mul nsw i32 %i.0, 3, !dbg !435
  %add = add nsw i32 %mul6, %j.0, !dbg !436
  %idxprom7 = sext i32 %add to i64, !dbg !437
  %arrayidx8 = getelementptr inbounds i32, i32* %delta_weights3, i64 %idxprom7, !dbg !437
  store i32 %mul, i32* %arrayidx8, align 4, !dbg !438
  br label %for.inc, !dbg !439

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !440
  call void @llvm.dbg.value(metadata i32 %inc, metadata !423, metadata !DIExpression()), !dbg !424
  br label %for.cond1, !dbg !441, !llvm.loop !442

for.end:                                          ; preds = %for.cond1
  br label %for.inc9, !dbg !445

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !dbg !446
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !415, metadata !DIExpression()), !dbg !416
  br label %for.cond, !dbg !447, !llvm.loop !448

for.end11:                                        ; preds = %for.cond
  ret void, !dbg !451
}

; Function Attrs: nounwind
define void @get_oracle_activations2(i32* "fpga.decayed.dim.hint"="48" %weights3, i32* "fpga.decayed.dim.hint"="3" %output_difference, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="16" %dactivations2) #0 !dbg !452 {
entry:
  call void @llvm.dbg.value(metadata i32* %weights3, metadata !453, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata i32* %output_difference, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32* %oracle_activations2, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i32* %dactivations2, metadata !459, metadata !DIExpression()), !dbg !460
  br label %VITIS_LOOP_150_1, !dbg !461

VITIS_LOOP_150_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !462, metadata !DIExpression()), !dbg !463
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.inc21, %VITIS_LOOP_150_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_150_1 ], [ %inc22, %for.inc21 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !462, metadata !DIExpression()), !dbg !463
  %cmp = icmp slt i32 %i.0, 16, !dbg !466
  br i1 %cmp, label %for.body, label %for.end23, !dbg !468

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !469
  %arrayidx = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom, !dbg !469
  store i32 0, i32* %arrayidx, align 4, !dbg !471
  br label %VITIS_LOOP_152_2, !dbg !469

VITIS_LOOP_152_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !472, metadata !DIExpression()), !dbg !473
  br label %for.cond1, !dbg !474

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_152_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_152_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !472, metadata !DIExpression()), !dbg !473
  %cmp2 = icmp slt i32 %j.0, 3, !dbg !476
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !478

for.body3:                                        ; preds = %for.cond1
  %idxprom4 = sext i32 %i.0 to i64, !dbg !479
  %arrayidx5 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom4, !dbg !479
  %0 = load i32, i32* %arrayidx5, align 4, !dbg !479
  %idxprom6 = sext i32 %j.0 to i64, !dbg !481
  %arrayidx7 = getelementptr inbounds i32, i32* %output_difference, i64 %idxprom6, !dbg !481
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !481
  %mul = mul nsw i32 %i.0, 3, !dbg !482
  %add = add nsw i32 %mul, %j.0, !dbg !483
  %idxprom8 = sext i32 %add to i64, !dbg !484
  %arrayidx9 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom8, !dbg !484
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !484
  %mul10 = mul nsw i32 %1, %2, !dbg !485
  %add11 = add nsw i32 %0, %mul10, !dbg !486
  %idxprom12 = sext i32 %i.0 to i64, !dbg !487
  %arrayidx13 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom12, !dbg !487
  store i32 %add11, i32* %arrayidx13, align 4, !dbg !488
  br label %for.inc, !dbg !489

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !490
  call void @llvm.dbg.value(metadata i32 %inc, metadata !472, metadata !DIExpression()), !dbg !473
  br label %for.cond1, !dbg !491, !llvm.loop !492

for.end:                                          ; preds = %for.cond1
  %idxprom14 = sext i32 %i.0 to i64, !dbg !495
  %arrayidx15 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom14, !dbg !495
  %3 = load i32, i32* %arrayidx15, align 4, !dbg !495
  %idxprom16 = sext i32 %i.0 to i64, !dbg !496
  %arrayidx17 = getelementptr inbounds i32, i32* %dactivations2, i64 %idxprom16, !dbg !496
  %4 = load i32, i32* %arrayidx17, align 4, !dbg !496
  %mul18 = mul nsw i32 %3, %4, !dbg !497
  %idxprom19 = sext i32 %i.0 to i64, !dbg !498
  %arrayidx20 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom19, !dbg !498
  store i32 %mul18, i32* %arrayidx20, align 4, !dbg !499
  br label %for.inc21, !dbg !500

for.inc21:                                        ; preds = %for.end
  %inc22 = add nsw i32 %i.0, 1, !dbg !501
  call void @llvm.dbg.value(metadata i32 %inc22, metadata !462, metadata !DIExpression()), !dbg !463
  br label %for.cond, !dbg !502, !llvm.loop !503

for.end23:                                        ; preds = %for.cond
  ret void, !dbg !506
}

; Function Attrs: nounwind
define void @get_delta_matrix_weights2(i32* "fpga.decayed.dim.hint"="256" %delta_weights2, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="16" %activations1) #0 !dbg !507 {
entry:
  call void @llvm.dbg.value(metadata i32* %delta_weights2, metadata !508, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata i32* %oracle_activations2, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata i32* %activations1, metadata !512, metadata !DIExpression()), !dbg !513
  br label %VITIS_LOOP_166_1, !dbg !514

VITIS_LOOP_166_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !515, metadata !DIExpression()), !dbg !516
  br label %for.cond, !dbg !517

for.cond:                                         ; preds = %for.inc9, %VITIS_LOOP_166_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_166_1 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !515, metadata !DIExpression()), !dbg !516
  %cmp = icmp slt i32 %i.0, 16, !dbg !519
  br i1 %cmp, label %for.body, label %for.end11, !dbg !521

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_167_2, !dbg !522

VITIS_LOOP_167_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !523, metadata !DIExpression()), !dbg !524
  br label %for.cond1, !dbg !525

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_167_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_167_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !523, metadata !DIExpression()), !dbg !524
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !528
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !530

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64, !dbg !531
  %arrayidx = getelementptr inbounds i32, i32* %activations1, i64 %idxprom, !dbg !531
  %0 = load i32, i32* %arrayidx, align 4, !dbg !531
  %idxprom4 = sext i32 %j.0 to i64, !dbg !533
  %arrayidx5 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom4, !dbg !533
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !533
  %mul = mul nsw i32 %0, %1, !dbg !534
  %mul6 = mul nsw i32 %i.0, 16, !dbg !535
  %add = add nsw i32 %mul6, %j.0, !dbg !536
  %idxprom7 = sext i32 %add to i64, !dbg !537
  %arrayidx8 = getelementptr inbounds i32, i32* %delta_weights2, i64 %idxprom7, !dbg !537
  store i32 %mul, i32* %arrayidx8, align 4, !dbg !538
  br label %for.inc, !dbg !539

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !540
  call void @llvm.dbg.value(metadata i32 %inc, metadata !523, metadata !DIExpression()), !dbg !524
  br label %for.cond1, !dbg !541, !llvm.loop !542

for.end:                                          ; preds = %for.cond1
  br label %for.inc9, !dbg !545

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !dbg !546
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !515, metadata !DIExpression()), !dbg !516
  br label %for.cond, !dbg !547, !llvm.loop !548

for.end11:                                        ; preds = %for.cond
  ret void, !dbg !551
}

; Function Attrs: nounwind
define void @get_oracle_activations1(i32* "fpga.decayed.dim.hint"="256" %weights2, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="16" %oracle_activations1, i32* "fpga.decayed.dim.hint"="16" %dactivations1) #0 !dbg !552 {
entry:
  call void @llvm.dbg.value(metadata i32* %weights2, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.value(metadata i32* %oracle_activations2, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i32* %oracle_activations1, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32* %dactivations1, metadata !559, metadata !DIExpression()), !dbg !560
  br label %VITIS_LOOP_179_1, !dbg !561

VITIS_LOOP_179_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !562, metadata !DIExpression()), !dbg !563
  br label %for.cond, !dbg !564

for.cond:                                         ; preds = %for.inc21, %VITIS_LOOP_179_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_179_1 ], [ %inc22, %for.inc21 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !562, metadata !DIExpression()), !dbg !563
  %cmp = icmp slt i32 %i.0, 16, !dbg !566
  br i1 %cmp, label %for.body, label %for.end23, !dbg !568

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !569
  %arrayidx = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom, !dbg !569
  store i32 0, i32* %arrayidx, align 4, !dbg !571
  br label %VITIS_LOOP_181_2, !dbg !569

VITIS_LOOP_181_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !572, metadata !DIExpression()), !dbg !573
  br label %for.cond1, !dbg !574

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_181_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_181_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !572, metadata !DIExpression()), !dbg !573
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !576
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !578

for.body3:                                        ; preds = %for.cond1
  %idxprom4 = sext i32 %i.0 to i64, !dbg !579
  %arrayidx5 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom4, !dbg !579
  %0 = load i32, i32* %arrayidx5, align 4, !dbg !579
  %idxprom6 = sext i32 %j.0 to i64, !dbg !581
  %arrayidx7 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom6, !dbg !581
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !581
  %mul = mul nsw i32 %i.0, 16, !dbg !582
  %add = add nsw i32 %mul, %j.0, !dbg !583
  %idxprom8 = sext i32 %add to i64, !dbg !584
  %arrayidx9 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom8, !dbg !584
  %2 = load i32, i32* %arrayidx9, align 4, !dbg !584
  %mul10 = mul nsw i32 %1, %2, !dbg !585
  %add11 = add nsw i32 %0, %mul10, !dbg !586
  %idxprom12 = sext i32 %i.0 to i64, !dbg !587
  %arrayidx13 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom12, !dbg !587
  store i32 %add11, i32* %arrayidx13, align 4, !dbg !588
  br label %for.inc, !dbg !589

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !590
  call void @llvm.dbg.value(metadata i32 %inc, metadata !572, metadata !DIExpression()), !dbg !573
  br label %for.cond1, !dbg !591, !llvm.loop !592

for.end:                                          ; preds = %for.cond1
  %idxprom14 = sext i32 %i.0 to i64, !dbg !595
  %arrayidx15 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom14, !dbg !595
  %3 = load i32, i32* %arrayidx15, align 4, !dbg !595
  %idxprom16 = sext i32 %i.0 to i64, !dbg !596
  %arrayidx17 = getelementptr inbounds i32, i32* %dactivations1, i64 %idxprom16, !dbg !596
  %4 = load i32, i32* %arrayidx17, align 4, !dbg !596
  %mul18 = mul nsw i32 %3, %4, !dbg !597
  %idxprom19 = sext i32 %i.0 to i64, !dbg !598
  %arrayidx20 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom19, !dbg !598
  store i32 %mul18, i32* %arrayidx20, align 4, !dbg !599
  br label %for.inc21, !dbg !600

for.inc21:                                        ; preds = %for.end
  %inc22 = add nsw i32 %i.0, 1, !dbg !601
  call void @llvm.dbg.value(metadata i32 %inc22, metadata !562, metadata !DIExpression()), !dbg !563
  br label %for.cond, !dbg !602, !llvm.loop !603

for.end23:                                        ; preds = %for.cond
  ret void, !dbg !606
}

; Function Attrs: nounwind
define void @get_delta_matrix_weights1(i32* "fpga.decayed.dim.hint"="256" %delta_weights1, i32* "fpga.decayed.dim.hint"="16" %oracle_activations1, i32* "fpga.decayed.dim.hint"="16" %training_data) #0 !dbg !607 {
entry:
  call void @llvm.dbg.value(metadata i32* %delta_weights1, metadata !608, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i32* %oracle_activations1, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i32* %training_data, metadata !612, metadata !DIExpression()), !dbg !613
  br label %VITIS_LOOP_195_1, !dbg !614

VITIS_LOOP_195_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !615, metadata !DIExpression()), !dbg !616
  br label %for.cond, !dbg !617

for.cond:                                         ; preds = %for.inc9, %VITIS_LOOP_195_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_195_1 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !615, metadata !DIExpression()), !dbg !616
  %cmp = icmp slt i32 %i.0, 16, !dbg !619
  br i1 %cmp, label %for.body, label %for.end11, !dbg !621

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_196_2, !dbg !622

VITIS_LOOP_196_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !623, metadata !DIExpression()), !dbg !624
  br label %for.cond1, !dbg !625

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_196_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_196_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !623, metadata !DIExpression()), !dbg !624
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !628
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !630

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64, !dbg !631
  %arrayidx = getelementptr inbounds i32, i32* %training_data, i64 %idxprom, !dbg !631
  %0 = load i32, i32* %arrayidx, align 4, !dbg !631
  %idxprom4 = sext i32 %j.0 to i64, !dbg !633
  %arrayidx5 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom4, !dbg !633
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !633
  %mul = mul nsw i32 %0, %1, !dbg !634
  %mul6 = mul nsw i32 %i.0, 16, !dbg !635
  %add = add nsw i32 %mul6, %j.0, !dbg !636
  %idxprom7 = sext i32 %add to i64, !dbg !637
  %arrayidx8 = getelementptr inbounds i32, i32* %delta_weights1, i64 %idxprom7, !dbg !637
  store i32 %mul, i32* %arrayidx8, align 4, !dbg !638
  br label %for.inc, !dbg !639

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !640
  call void @llvm.dbg.value(metadata i32 %inc, metadata !623, metadata !DIExpression()), !dbg !624
  br label %for.cond1, !dbg !641, !llvm.loop !642

for.end:                                          ; preds = %for.cond1
  br label %for.inc9, !dbg !645

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !dbg !646
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !615, metadata !DIExpression()), !dbg !616
  br label %for.cond, !dbg !647, !llvm.loop !648

for.end11:                                        ; preds = %for.cond
  ret void, !dbg !651
}

; Function Attrs: nounwind
define void @update_weights(i32* "fpga.decayed.dim.hint"="256" %weights1, i32* "fpga.decayed.dim.hint"="256" %weights2, i32* "fpga.decayed.dim.hint"="48" %weights3, i32* "fpga.decayed.dim.hint"="256" %delta_weights1, i32* "fpga.decayed.dim.hint"="256" %delta_weights2, i32* "fpga.decayed.dim.hint"="48" %delta_weights3, i32* "fpga.decayed.dim.hint"="16" %biases1, i32* "fpga.decayed.dim.hint"="16" %biases2, i32* "fpga.decayed.dim.hint"="3" %biases3, i32* "fpga.decayed.dim.hint"="16" %oracle_activations1, i32* "fpga.decayed.dim.hint"="16" %oracle_activations2, i32* "fpga.decayed.dim.hint"="3" %output_difference) #0 !dbg !652 {
entry:
  call void @llvm.dbg.value(metadata i32* %weights1, metadata !655, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.value(metadata i32* %weights2, metadata !657, metadata !DIExpression()), !dbg !658
  call void @llvm.dbg.value(metadata i32* %weights3, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32* %delta_weights1, metadata !661, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i32* %delta_weights2, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i32* %delta_weights3, metadata !665, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i32* %biases1, metadata !667, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i32* %biases2, metadata !669, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i32* %biases3, metadata !671, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i32* %oracle_activations1, metadata !673, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata i32* %oracle_activations2, metadata !675, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32* %output_difference, metadata !677, metadata !DIExpression()), !dbg !678
  call void @llvm.dbg.value(metadata i32 0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_219_1, !dbg !683

VITIS_LOOP_219_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond, !dbg !686

for.cond:                                         ; preds = %for.inc23, %VITIS_LOOP_219_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_219_1 ], [ %inc24, %for.inc23 ]
  %norm.0 = phi i32 [ 0, %VITIS_LOOP_219_1 ], [ %norm.1, %for.inc23 ]
  call void @llvm.dbg.value(metadata i32 %norm.0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp = icmp slt i32 %i.0, 16, !dbg !688
  br i1 %cmp, label %for.body, label %for.end25, !dbg !690

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_220_2, !dbg !691

VITIS_LOOP_220_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond1, !dbg !694

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_220_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_220_2 ], [ %inc, %for.inc ]
  %norm.1 = phi i32 [ %norm.0, %VITIS_LOOP_220_2 ], [ %add22, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %norm.1, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !697
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !699

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, 16, !dbg !700
  %add = add nsw i32 %mul, %j.0, !dbg !702
  %idxprom = sext i32 %add to i64, !dbg !703
  %arrayidx = getelementptr inbounds i32, i32* %weights1, i64 %idxprom, !dbg !703
  %0 = load i32, i32* %arrayidx, align 4, !dbg !703
  %mul4 = mul nsw i32 %i.0, 16, !dbg !704
  %add5 = add nsw i32 %mul4, %j.0, !dbg !705
  %idxprom6 = sext i32 %add5 to i64, !dbg !706
  %arrayidx7 = getelementptr inbounds i32, i32* %delta_weights1, i64 %idxprom6, !dbg !706
  %1 = load i32, i32* %arrayidx7, align 4, !dbg !706
  %mul8 = mul nsw i32 %1, 1, !dbg !707
  %sub = sub nsw i32 %0, %mul8, !dbg !708
  %mul9 = mul nsw i32 %i.0, 16, !dbg !709
  %add10 = add nsw i32 %mul9, %j.0, !dbg !710
  %idxprom11 = sext i32 %add10 to i64, !dbg !711
  %arrayidx12 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom11, !dbg !711
  store i32 %sub, i32* %arrayidx12, align 4, !dbg !712
  %mul13 = mul nsw i32 %i.0, 16, !dbg !713
  %add14 = add nsw i32 %mul13, %j.0, !dbg !714
  %idxprom15 = sext i32 %add14 to i64, !dbg !715
  %arrayidx16 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom15, !dbg !715
  %2 = load i32, i32* %arrayidx16, align 4, !dbg !715
  %mul17 = mul nsw i32 %i.0, 16, !dbg !716
  %add18 = add nsw i32 %mul17, %j.0, !dbg !717
  %idxprom19 = sext i32 %add18 to i64, !dbg !718
  %arrayidx20 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom19, !dbg !718
  %3 = load i32, i32* %arrayidx20, align 4, !dbg !718
  %mul21 = mul nsw i32 %2, %3, !dbg !719
  %add22 = add nsw i32 %norm.1, %mul21, !dbg !720
  call void @llvm.dbg.value(metadata i32 %add22, metadata !679, metadata !DIExpression()), !dbg !680
  br label %for.inc, !dbg !721

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !dbg !722
  call void @llvm.dbg.value(metadata i32 %inc, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond1, !dbg !723, !llvm.loop !724

for.end:                                          ; preds = %for.cond1
  br label %for.inc23, !dbg !727

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1, !dbg !728
  call void @llvm.dbg.value(metadata i32 %inc24, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond, !dbg !729, !llvm.loop !730

for.end25:                                        ; preds = %for.cond
  br label %VITIS_LOOP_228_3, !dbg !731

VITIS_LOOP_228_3:                                 ; preds = %for.end25
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond26, !dbg !733

for.cond26:                                       ; preds = %for.inc43, %VITIS_LOOP_228_3
  %i.1 = phi i32 [ 0, %VITIS_LOOP_228_3 ], [ %inc44, %for.inc43 ]
  %bias_norm.0 = phi i32 [ 0, %VITIS_LOOP_228_3 ], [ %add42, %for.inc43 ]
  call void @llvm.dbg.value(metadata i32 %bias_norm.0, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp27 = icmp slt i32 %i.1, 16, !dbg !735
  br i1 %cmp27, label %for.body28, label %for.end45, !dbg !737

for.body28:                                       ; preds = %for.cond26
  %idxprom29 = sext i32 %i.1 to i64, !dbg !738
  %arrayidx30 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom29, !dbg !738
  %4 = load i32, i32* %arrayidx30, align 4, !dbg !738
  %idxprom31 = sext i32 %i.1 to i64, !dbg !740
  %arrayidx32 = getelementptr inbounds i32, i32* %oracle_activations1, i64 %idxprom31, !dbg !740
  %5 = load i32, i32* %arrayidx32, align 4, !dbg !740
  %mul33 = mul nsw i32 %5, 1, !dbg !741
  %sub34 = sub nsw i32 %4, %mul33, !dbg !742
  %idxprom35 = sext i32 %i.1 to i64, !dbg !743
  %arrayidx36 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom35, !dbg !743
  store i32 %sub34, i32* %arrayidx36, align 4, !dbg !744
  %idxprom37 = sext i32 %i.1 to i64, !dbg !745
  %arrayidx38 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom37, !dbg !745
  %6 = load i32, i32* %arrayidx38, align 4, !dbg !745
  %idxprom39 = sext i32 %i.1 to i64, !dbg !746
  %arrayidx40 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom39, !dbg !746
  %7 = load i32, i32* %arrayidx40, align 4, !dbg !746
  %mul41 = mul nsw i32 %6, %7, !dbg !747
  %add42 = add nsw i32 %bias_norm.0, %mul41, !dbg !748
  call void @llvm.dbg.value(metadata i32 %add42, metadata !681, metadata !DIExpression()), !dbg !682
  br label %for.inc43, !dbg !749

for.inc43:                                        ; preds = %for.body28
  %inc44 = add nsw i32 %i.1, 1, !dbg !750
  call void @llvm.dbg.value(metadata i32 %inc44, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond26, !dbg !751, !llvm.loop !752

for.end45:                                        ; preds = %for.cond26
  call void @llvm.dbg.value(metadata i32 %norm.0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %bias_norm.0, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_236_4, !dbg !755

VITIS_LOOP_236_4:                                 ; preds = %for.end45
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond46, !dbg !756

for.cond46:                                       ; preds = %for.inc67, %VITIS_LOOP_236_4
  %i.2 = phi i32 [ 0, %VITIS_LOOP_236_4 ], [ %inc68, %for.inc67 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp47 = icmp slt i32 %i.2, 16, !dbg !758
  br i1 %cmp47, label %for.body48, label %for.end69, !dbg !760

for.body48:                                       ; preds = %for.cond46
  br label %VITIS_LOOP_237_5, !dbg !761

VITIS_LOOP_237_5:                                 ; preds = %for.body48
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond49, !dbg !762

for.cond49:                                       ; preds = %for.inc64, %VITIS_LOOP_237_5
  %j.1 = phi i32 [ 0, %VITIS_LOOP_237_5 ], [ %inc65, %for.inc64 ]
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp50 = icmp slt i32 %j.1, 16, !dbg !765
  br i1 %cmp50, label %for.body51, label %for.end66, !dbg !767

for.body51:                                       ; preds = %for.cond49
  %tobool = icmp ne i32 %norm.0, 0, !dbg !768
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !768

cond.true:                                        ; preds = %for.body51
  %mul52 = mul nsw i32 %i.2, 16, !dbg !770
  %add53 = add nsw i32 %mul52, %j.1, !dbg !771
  %idxprom54 = sext i32 %add53 to i64, !dbg !772
  %arrayidx55 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom54, !dbg !772
  %8 = load i32, i32* %arrayidx55, align 4, !dbg !772
  %div = sdiv i32 %8, %norm.0, !dbg !773
  br label %cond.end, !dbg !768

cond.false:                                       ; preds = %for.body51
  %mul56 = mul nsw i32 %i.2, 16, !dbg !774
  %add57 = add nsw i32 %mul56, %j.1, !dbg !775
  %idxprom58 = sext i32 %add57 to i64, !dbg !776
  %arrayidx59 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom58, !dbg !776
  %9 = load i32, i32* %arrayidx59, align 4, !dbg !776
  br label %cond.end, !dbg !768

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %9, %cond.false ], !dbg !768
  %mul60 = mul nsw i32 %i.2, 16, !dbg !777
  %add61 = add nsw i32 %mul60, %j.1, !dbg !778
  %idxprom62 = sext i32 %add61 to i64, !dbg !779
  %arrayidx63 = getelementptr inbounds i32, i32* %weights1, i64 %idxprom62, !dbg !779
  store i32 %cond, i32* %arrayidx63, align 4, !dbg !780
  br label %for.inc64, !dbg !781

for.inc64:                                        ; preds = %cond.end
  %inc65 = add nsw i32 %j.1, 1, !dbg !782
  call void @llvm.dbg.value(metadata i32 %inc65, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond49, !dbg !783, !llvm.loop !784

for.end66:                                        ; preds = %for.cond49
  br label %for.inc67, !dbg !787

for.inc67:                                        ; preds = %for.end66
  %inc68 = add nsw i32 %i.2, 1, !dbg !788
  call void @llvm.dbg.value(metadata i32 %inc68, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond46, !dbg !789, !llvm.loop !790

for.end69:                                        ; preds = %for.cond46
  br label %VITIS_LOOP_242_6, !dbg !791

VITIS_LOOP_242_6:                                 ; preds = %for.end69
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond70, !dbg !793

for.cond70:                                       ; preds = %for.inc85, %VITIS_LOOP_242_6
  %i.3 = phi i32 [ 0, %VITIS_LOOP_242_6 ], [ %inc86, %for.inc85 ]
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp71 = icmp slt i32 %i.3, 16, !dbg !795
  br i1 %cmp71, label %for.body72, label %for.end87, !dbg !797

for.body72:                                       ; preds = %for.cond70
  %tobool73 = icmp ne i32 %bias_norm.0, 0, !dbg !798
  br i1 %tobool73, label %cond.true74, label %cond.false78, !dbg !798

cond.true74:                                      ; preds = %for.body72
  %idxprom75 = sext i32 %i.3 to i64, !dbg !800
  %arrayidx76 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom75, !dbg !800
  %10 = load i32, i32* %arrayidx76, align 4, !dbg !800
  %div77 = sdiv i32 %10, %bias_norm.0, !dbg !801
  br label %cond.end81, !dbg !798

cond.false78:                                     ; preds = %for.body72
  %idxprom79 = sext i32 %i.3 to i64, !dbg !802
  %arrayidx80 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom79, !dbg !802
  %11 = load i32, i32* %arrayidx80, align 4, !dbg !802
  br label %cond.end81, !dbg !798

cond.end81:                                       ; preds = %cond.false78, %cond.true74
  %cond82 = phi i32 [ %div77, %cond.true74 ], [ %11, %cond.false78 ], !dbg !798
  %idxprom83 = sext i32 %i.3 to i64, !dbg !803
  %arrayidx84 = getelementptr inbounds i32, i32* %biases1, i64 %idxprom83, !dbg !803
  store i32 %cond82, i32* %arrayidx84, align 4, !dbg !804
  br label %for.inc85, !dbg !805

for.inc85:                                        ; preds = %cond.end81
  %inc86 = add nsw i32 %i.3, 1, !dbg !806
  call void @llvm.dbg.value(metadata i32 %inc86, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond70, !dbg !807, !llvm.loop !808

for.end87:                                        ; preds = %for.cond70
  call void @llvm.dbg.value(metadata i32 0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_249_7, !dbg !811

VITIS_LOOP_249_7:                                 ; preds = %for.end87
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond88, !dbg !812

for.cond88:                                       ; preds = %for.inc121, %VITIS_LOOP_249_7
  %i.4 = phi i32 [ 0, %VITIS_LOOP_249_7 ], [ %inc122, %for.inc121 ]
  %norm.2 = phi i32 [ 0, %VITIS_LOOP_249_7 ], [ %norm.3, %for.inc121 ]
  call void @llvm.dbg.value(metadata i32 %norm.2, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp89 = icmp slt i32 %i.4, 16, !dbg !814
  br i1 %cmp89, label %for.body90, label %for.end123, !dbg !816

for.body90:                                       ; preds = %for.cond88
  br label %VITIS_LOOP_250_8, !dbg !817

VITIS_LOOP_250_8:                                 ; preds = %for.body90
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond91, !dbg !818

for.cond91:                                       ; preds = %for.inc118, %VITIS_LOOP_250_8
  %j.2 = phi i32 [ 0, %VITIS_LOOP_250_8 ], [ %inc119, %for.inc118 ]
  %norm.3 = phi i32 [ %norm.2, %VITIS_LOOP_250_8 ], [ %add117, %for.inc118 ]
  call void @llvm.dbg.value(metadata i32 %norm.3, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp92 = icmp slt i32 %j.2, 16, !dbg !821
  br i1 %cmp92, label %for.body93, label %for.end120, !dbg !823

for.body93:                                       ; preds = %for.cond91
  %mul94 = mul nsw i32 %i.4, 16, !dbg !824
  %add95 = add nsw i32 %mul94, %j.2, !dbg !826
  %idxprom96 = sext i32 %add95 to i64, !dbg !827
  %arrayidx97 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom96, !dbg !827
  %12 = load i32, i32* %arrayidx97, align 4, !dbg !827
  %mul98 = mul nsw i32 %i.4, 16, !dbg !828
  %add99 = add nsw i32 %mul98, %j.2, !dbg !829
  %idxprom100 = sext i32 %add99 to i64, !dbg !830
  %arrayidx101 = getelementptr inbounds i32, i32* %delta_weights2, i64 %idxprom100, !dbg !830
  %13 = load i32, i32* %arrayidx101, align 4, !dbg !830
  %mul102 = mul nsw i32 %13, 1, !dbg !831
  %sub103 = sub nsw i32 %12, %mul102, !dbg !832
  %mul104 = mul nsw i32 %i.4, 16, !dbg !833
  %add105 = add nsw i32 %mul104, %j.2, !dbg !834
  %idxprom106 = sext i32 %add105 to i64, !dbg !835
  %arrayidx107 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom106, !dbg !835
  store i32 %sub103, i32* %arrayidx107, align 4, !dbg !836
  %mul108 = mul nsw i32 %i.4, 16, !dbg !837
  %add109 = add nsw i32 %mul108, %j.2, !dbg !838
  %idxprom110 = sext i32 %add109 to i64, !dbg !839
  %arrayidx111 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom110, !dbg !839
  %14 = load i32, i32* %arrayidx111, align 4, !dbg !839
  %mul112 = mul nsw i32 %i.4, 16, !dbg !840
  %add113 = add nsw i32 %mul112, %j.2, !dbg !841
  %idxprom114 = sext i32 %add113 to i64, !dbg !842
  %arrayidx115 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom114, !dbg !842
  %15 = load i32, i32* %arrayidx115, align 4, !dbg !842
  %mul116 = mul nsw i32 %14, %15, !dbg !843
  %add117 = add nsw i32 %norm.3, %mul116, !dbg !844
  call void @llvm.dbg.value(metadata i32 %add117, metadata !679, metadata !DIExpression()), !dbg !680
  br label %for.inc118, !dbg !845

for.inc118:                                       ; preds = %for.body93
  %inc119 = add nsw i32 %j.2, 1, !dbg !846
  call void @llvm.dbg.value(metadata i32 %inc119, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond91, !dbg !847, !llvm.loop !848

for.end120:                                       ; preds = %for.cond91
  br label %for.inc121, !dbg !851

for.inc121:                                       ; preds = %for.end120
  %inc122 = add nsw i32 %i.4, 1, !dbg !852
  call void @llvm.dbg.value(metadata i32 %inc122, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond88, !dbg !853, !llvm.loop !854

for.end123:                                       ; preds = %for.cond88
  br label %VITIS_LOOP_258_9, !dbg !855

VITIS_LOOP_258_9:                                 ; preds = %for.end123
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond124, !dbg !857

for.cond124:                                      ; preds = %for.inc141, %VITIS_LOOP_258_9
  %i.5 = phi i32 [ 0, %VITIS_LOOP_258_9 ], [ %inc142, %for.inc141 ]
  %bias_norm.1 = phi i32 [ 0, %VITIS_LOOP_258_9 ], [ %add140, %for.inc141 ]
  call void @llvm.dbg.value(metadata i32 %bias_norm.1, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i32 %i.5, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp125 = icmp slt i32 %i.5, 16, !dbg !859
  br i1 %cmp125, label %for.body126, label %for.end143, !dbg !861

for.body126:                                      ; preds = %for.cond124
  %idxprom127 = sext i32 %i.5 to i64, !dbg !862
  %arrayidx128 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom127, !dbg !862
  %16 = load i32, i32* %arrayidx128, align 4, !dbg !862
  %idxprom129 = sext i32 %i.5 to i64, !dbg !864
  %arrayidx130 = getelementptr inbounds i32, i32* %oracle_activations2, i64 %idxprom129, !dbg !864
  %17 = load i32, i32* %arrayidx130, align 4, !dbg !864
  %mul131 = mul nsw i32 %17, 1, !dbg !865
  %sub132 = sub nsw i32 %16, %mul131, !dbg !866
  %idxprom133 = sext i32 %i.5 to i64, !dbg !867
  %arrayidx134 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom133, !dbg !867
  store i32 %sub132, i32* %arrayidx134, align 4, !dbg !868
  %idxprom135 = sext i32 %i.5 to i64, !dbg !869
  %arrayidx136 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom135, !dbg !869
  %18 = load i32, i32* %arrayidx136, align 4, !dbg !869
  %idxprom137 = sext i32 %i.5 to i64, !dbg !870
  %arrayidx138 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom137, !dbg !870
  %19 = load i32, i32* %arrayidx138, align 4, !dbg !870
  %mul139 = mul nsw i32 %18, %19, !dbg !871
  %add140 = add nsw i32 %bias_norm.1, %mul139, !dbg !872
  call void @llvm.dbg.value(metadata i32 %add140, metadata !681, metadata !DIExpression()), !dbg !682
  br label %for.inc141, !dbg !873

for.inc141:                                       ; preds = %for.body126
  %inc142 = add nsw i32 %i.5, 1, !dbg !874
  call void @llvm.dbg.value(metadata i32 %inc142, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond124, !dbg !875, !llvm.loop !876

for.end143:                                       ; preds = %for.cond124
  call void @llvm.dbg.value(metadata i32 %norm.2, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %bias_norm.1, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_266_10, !dbg !879

VITIS_LOOP_266_10:                                ; preds = %for.end143
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond144, !dbg !880

for.cond144:                                      ; preds = %for.inc171, %VITIS_LOOP_266_10
  %i.6 = phi i32 [ 0, %VITIS_LOOP_266_10 ], [ %inc172, %for.inc171 ]
  call void @llvm.dbg.value(metadata i32 %i.6, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp145 = icmp slt i32 %i.6, 16, !dbg !882
  br i1 %cmp145, label %for.body146, label %for.end173, !dbg !884

for.body146:                                      ; preds = %for.cond144
  br label %VITIS_LOOP_267_11, !dbg !885

VITIS_LOOP_267_11:                                ; preds = %for.body146
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond147, !dbg !886

for.cond147:                                      ; preds = %for.inc168, %VITIS_LOOP_267_11
  %j.3 = phi i32 [ 0, %VITIS_LOOP_267_11 ], [ %inc169, %for.inc168 ]
  call void @llvm.dbg.value(metadata i32 %j.3, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp148 = icmp slt i32 %j.3, 16, !dbg !889
  br i1 %cmp148, label %for.body149, label %for.end170, !dbg !891

for.body149:                                      ; preds = %for.cond147
  %tobool150 = icmp ne i32 %norm.2, 0, !dbg !892
  br i1 %tobool150, label %cond.true151, label %cond.false157, !dbg !892

cond.true151:                                     ; preds = %for.body149
  %mul152 = mul nsw i32 %i.6, 16, !dbg !894
  %add153 = add nsw i32 %mul152, %j.3, !dbg !895
  %idxprom154 = sext i32 %add153 to i64, !dbg !896
  %arrayidx155 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom154, !dbg !896
  %20 = load i32, i32* %arrayidx155, align 4, !dbg !896
  %div156 = sdiv i32 %20, %norm.2, !dbg !897
  br label %cond.end162, !dbg !892

cond.false157:                                    ; preds = %for.body149
  %mul158 = mul nsw i32 %i.6, 16, !dbg !898
  %add159 = add nsw i32 %mul158, %j.3, !dbg !899
  %idxprom160 = sext i32 %add159 to i64, !dbg !900
  %arrayidx161 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom160, !dbg !900
  %21 = load i32, i32* %arrayidx161, align 4, !dbg !900
  br label %cond.end162, !dbg !892

cond.end162:                                      ; preds = %cond.false157, %cond.true151
  %cond163 = phi i32 [ %div156, %cond.true151 ], [ %21, %cond.false157 ], !dbg !892
  %mul164 = mul nsw i32 %i.6, 16, !dbg !901
  %add165 = add nsw i32 %mul164, %j.3, !dbg !902
  %idxprom166 = sext i32 %add165 to i64, !dbg !903
  %arrayidx167 = getelementptr inbounds i32, i32* %weights2, i64 %idxprom166, !dbg !903
  store i32 %cond163, i32* %arrayidx167, align 4, !dbg !904
  br label %for.inc168, !dbg !905

for.inc168:                                       ; preds = %cond.end162
  %inc169 = add nsw i32 %j.3, 1, !dbg !906
  call void @llvm.dbg.value(metadata i32 %inc169, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond147, !dbg !907, !llvm.loop !908

for.end170:                                       ; preds = %for.cond147
  br label %for.inc171, !dbg !911

for.inc171:                                       ; preds = %for.end170
  %inc172 = add nsw i32 %i.6, 1, !dbg !912
  call void @llvm.dbg.value(metadata i32 %inc172, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond144, !dbg !913, !llvm.loop !914

for.end173:                                       ; preds = %for.cond144
  br label %VITIS_LOOP_272_12, !dbg !915

VITIS_LOOP_272_12:                                ; preds = %for.end173
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond174, !dbg !917

for.cond174:                                      ; preds = %for.inc189, %VITIS_LOOP_272_12
  %i.7 = phi i32 [ 0, %VITIS_LOOP_272_12 ], [ %inc190, %for.inc189 ]
  call void @llvm.dbg.value(metadata i32 %i.7, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp175 = icmp slt i32 %i.7, 16, !dbg !919
  br i1 %cmp175, label %for.body176, label %for.end191, !dbg !921

for.body176:                                      ; preds = %for.cond174
  %tobool177 = icmp ne i32 %bias_norm.1, 0, !dbg !922
  br i1 %tobool177, label %cond.true178, label %cond.false182, !dbg !922

cond.true178:                                     ; preds = %for.body176
  %idxprom179 = sext i32 %i.7 to i64, !dbg !924
  %arrayidx180 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom179, !dbg !924
  %22 = load i32, i32* %arrayidx180, align 4, !dbg !924
  %div181 = sdiv i32 %22, %bias_norm.1, !dbg !925
  br label %cond.end185, !dbg !922

cond.false182:                                    ; preds = %for.body176
  %idxprom183 = sext i32 %i.7 to i64, !dbg !926
  %arrayidx184 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom183, !dbg !926
  %23 = load i32, i32* %arrayidx184, align 4, !dbg !926
  br label %cond.end185, !dbg !922

cond.end185:                                      ; preds = %cond.false182, %cond.true178
  %cond186 = phi i32 [ %div181, %cond.true178 ], [ %23, %cond.false182 ], !dbg !922
  %idxprom187 = sext i32 %i.7 to i64, !dbg !927
  %arrayidx188 = getelementptr inbounds i32, i32* %biases2, i64 %idxprom187, !dbg !927
  store i32 %cond186, i32* %arrayidx188, align 4, !dbg !928
  br label %for.inc189, !dbg !929

for.inc189:                                       ; preds = %cond.end185
  %inc190 = add nsw i32 %i.7, 1, !dbg !930
  call void @llvm.dbg.value(metadata i32 %inc190, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond174, !dbg !931, !llvm.loop !932

for.end191:                                       ; preds = %for.cond174
  call void @llvm.dbg.value(metadata i32 0, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_279_13, !dbg !935

VITIS_LOOP_279_13:                                ; preds = %for.end191
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond192, !dbg !936

for.cond192:                                      ; preds = %for.inc225, %VITIS_LOOP_279_13
  %i.8 = phi i32 [ 0, %VITIS_LOOP_279_13 ], [ %inc226, %for.inc225 ]
  %norm.4 = phi i32 [ 0, %VITIS_LOOP_279_13 ], [ %norm.5, %for.inc225 ]
  call void @llvm.dbg.value(metadata i32 %norm.4, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %i.8, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp193 = icmp slt i32 %i.8, 16, !dbg !938
  br i1 %cmp193, label %for.body194, label %for.end227, !dbg !940

for.body194:                                      ; preds = %for.cond192
  br label %VITIS_LOOP_280_14, !dbg !941

VITIS_LOOP_280_14:                                ; preds = %for.body194
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond195, !dbg !942

for.cond195:                                      ; preds = %for.inc222, %VITIS_LOOP_280_14
  %j.4 = phi i32 [ 0, %VITIS_LOOP_280_14 ], [ %inc223, %for.inc222 ]
  %norm.5 = phi i32 [ %norm.4, %VITIS_LOOP_280_14 ], [ %add221, %for.inc222 ]
  call void @llvm.dbg.value(metadata i32 %norm.5, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %j.4, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp196 = icmp slt i32 %j.4, 3, !dbg !945
  br i1 %cmp196, label %for.body197, label %for.end224, !dbg !947

for.body197:                                      ; preds = %for.cond195
  %mul198 = mul nsw i32 %i.8, 3, !dbg !948
  %add199 = add nsw i32 %mul198, %j.4, !dbg !950
  %idxprom200 = sext i32 %add199 to i64, !dbg !951
  %arrayidx201 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom200, !dbg !951
  %24 = load i32, i32* %arrayidx201, align 4, !dbg !951
  %mul202 = mul nsw i32 %i.8, 3, !dbg !952
  %add203 = add nsw i32 %mul202, %j.4, !dbg !953
  %idxprom204 = sext i32 %add203 to i64, !dbg !954
  %arrayidx205 = getelementptr inbounds i32, i32* %delta_weights3, i64 %idxprom204, !dbg !954
  %25 = load i32, i32* %arrayidx205, align 4, !dbg !954
  %mul206 = mul nsw i32 %25, 1, !dbg !955
  %sub207 = sub nsw i32 %24, %mul206, !dbg !956
  %mul208 = mul nsw i32 %i.8, 3, !dbg !957
  %add209 = add nsw i32 %mul208, %j.4, !dbg !958
  %idxprom210 = sext i32 %add209 to i64, !dbg !959
  %arrayidx211 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom210, !dbg !959
  store i32 %sub207, i32* %arrayidx211, align 4, !dbg !960
  %mul212 = mul nsw i32 %i.8, 3, !dbg !961
  %add213 = add nsw i32 %mul212, %j.4, !dbg !962
  %idxprom214 = sext i32 %add213 to i64, !dbg !963
  %arrayidx215 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom214, !dbg !963
  %26 = load i32, i32* %arrayidx215, align 4, !dbg !963
  %mul216 = mul nsw i32 %i.8, 3, !dbg !964
  %add217 = add nsw i32 %mul216, %j.4, !dbg !965
  %idxprom218 = sext i32 %add217 to i64, !dbg !966
  %arrayidx219 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom218, !dbg !966
  %27 = load i32, i32* %arrayidx219, align 4, !dbg !966
  %mul220 = mul nsw i32 %26, %27, !dbg !967
  %add221 = add nsw i32 %norm.5, %mul220, !dbg !968
  call void @llvm.dbg.value(metadata i32 %add221, metadata !679, metadata !DIExpression()), !dbg !680
  br label %for.inc222, !dbg !969

for.inc222:                                       ; preds = %for.body197
  %inc223 = add nsw i32 %j.4, 1, !dbg !970
  call void @llvm.dbg.value(metadata i32 %inc223, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond195, !dbg !971, !llvm.loop !972

for.end224:                                       ; preds = %for.cond195
  br label %for.inc225, !dbg !975

for.inc225:                                       ; preds = %for.end224
  %inc226 = add nsw i32 %i.8, 1, !dbg !976
  call void @llvm.dbg.value(metadata i32 %inc226, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond192, !dbg !977, !llvm.loop !978

for.end227:                                       ; preds = %for.cond192
  br label %VITIS_LOOP_288_15, !dbg !979

VITIS_LOOP_288_15:                                ; preds = %for.end227
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond228, !dbg !981

for.cond228:                                      ; preds = %for.inc245, %VITIS_LOOP_288_15
  %i.9 = phi i32 [ 0, %VITIS_LOOP_288_15 ], [ %inc246, %for.inc245 ]
  %bias_norm.2 = phi i32 [ 0, %VITIS_LOOP_288_15 ], [ %add244, %for.inc245 ]
  call void @llvm.dbg.value(metadata i32 %bias_norm.2, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i32 %i.9, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp229 = icmp slt i32 %i.9, 3, !dbg !983
  br i1 %cmp229, label %for.body230, label %for.end247, !dbg !985

for.body230:                                      ; preds = %for.cond228
  %idxprom231 = sext i32 %i.9 to i64, !dbg !986
  %arrayidx232 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom231, !dbg !986
  %28 = load i32, i32* %arrayidx232, align 4, !dbg !986
  %idxprom233 = sext i32 %i.9 to i64, !dbg !988
  %arrayidx234 = getelementptr inbounds i32, i32* %output_difference, i64 %idxprom233, !dbg !988
  %29 = load i32, i32* %arrayidx234, align 4, !dbg !988
  %mul235 = mul nsw i32 %29, 1, !dbg !989
  %sub236 = sub nsw i32 %28, %mul235, !dbg !990
  %idxprom237 = sext i32 %i.9 to i64, !dbg !991
  %arrayidx238 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom237, !dbg !991
  store i32 %sub236, i32* %arrayidx238, align 4, !dbg !992
  %idxprom239 = sext i32 %i.9 to i64, !dbg !993
  %arrayidx240 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom239, !dbg !993
  %30 = load i32, i32* %arrayidx240, align 4, !dbg !993
  %idxprom241 = sext i32 %i.9 to i64, !dbg !994
  %arrayidx242 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom241, !dbg !994
  %31 = load i32, i32* %arrayidx242, align 4, !dbg !994
  %mul243 = mul nsw i32 %30, %31, !dbg !995
  %add244 = add nsw i32 %bias_norm.2, %mul243, !dbg !996
  call void @llvm.dbg.value(metadata i32 %add244, metadata !681, metadata !DIExpression()), !dbg !682
  br label %for.inc245, !dbg !997

for.inc245:                                       ; preds = %for.body230
  %inc246 = add nsw i32 %i.9, 1, !dbg !998
  call void @llvm.dbg.value(metadata i32 %inc246, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond228, !dbg !999, !llvm.loop !1000

for.end247:                                       ; preds = %for.cond228
  call void @llvm.dbg.value(metadata i32 %norm.4, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.value(metadata i32 %bias_norm.2, metadata !681, metadata !DIExpression()), !dbg !682
  br label %VITIS_LOOP_296_16, !dbg !1003

VITIS_LOOP_296_16:                                ; preds = %for.end247
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond248, !dbg !1004

for.cond248:                                      ; preds = %for.inc275, %VITIS_LOOP_296_16
  %i.10 = phi i32 [ 0, %VITIS_LOOP_296_16 ], [ %inc276, %for.inc275 ]
  call void @llvm.dbg.value(metadata i32 %i.10, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp249 = icmp slt i32 %i.10, 16, !dbg !1006
  br i1 %cmp249, label %for.body250, label %for.end277, !dbg !1008

for.body250:                                      ; preds = %for.cond248
  br label %VITIS_LOOP_297_17, !dbg !1009

VITIS_LOOP_297_17:                                ; preds = %for.body250
  call void @llvm.dbg.value(metadata i32 0, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond251, !dbg !1010

for.cond251:                                      ; preds = %for.inc272, %VITIS_LOOP_297_17
  %j.5 = phi i32 [ 0, %VITIS_LOOP_297_17 ], [ %inc273, %for.inc272 ]
  call void @llvm.dbg.value(metadata i32 %j.5, metadata !692, metadata !DIExpression()), !dbg !693
  %cmp252 = icmp slt i32 %j.5, 3, !dbg !1013
  br i1 %cmp252, label %for.body253, label %for.end274, !dbg !1015

for.body253:                                      ; preds = %for.cond251
  %tobool254 = icmp ne i32 %norm.4, 0, !dbg !1016
  br i1 %tobool254, label %cond.true255, label %cond.false261, !dbg !1016

cond.true255:                                     ; preds = %for.body253
  %mul256 = mul nsw i32 %i.10, 3, !dbg !1018
  %add257 = add nsw i32 %mul256, %j.5, !dbg !1019
  %idxprom258 = sext i32 %add257 to i64, !dbg !1020
  %arrayidx259 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom258, !dbg !1020
  %32 = load i32, i32* %arrayidx259, align 4, !dbg !1020
  %div260 = sdiv i32 %32, %norm.4, !dbg !1021
  br label %cond.end266, !dbg !1016

cond.false261:                                    ; preds = %for.body253
  %mul262 = mul nsw i32 %i.10, 3, !dbg !1022
  %add263 = add nsw i32 %mul262, %j.5, !dbg !1023
  %idxprom264 = sext i32 %add263 to i64, !dbg !1024
  %arrayidx265 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom264, !dbg !1024
  %33 = load i32, i32* %arrayidx265, align 4, !dbg !1024
  br label %cond.end266, !dbg !1016

cond.end266:                                      ; preds = %cond.false261, %cond.true255
  %cond267 = phi i32 [ %div260, %cond.true255 ], [ %33, %cond.false261 ], !dbg !1016
  %mul268 = mul nsw i32 %i.10, 3, !dbg !1025
  %add269 = add nsw i32 %mul268, %j.5, !dbg !1026
  %idxprom270 = sext i32 %add269 to i64, !dbg !1027
  %arrayidx271 = getelementptr inbounds i32, i32* %weights3, i64 %idxprom270, !dbg !1027
  store i32 %cond267, i32* %arrayidx271, align 4, !dbg !1028
  br label %for.inc272, !dbg !1029

for.inc272:                                       ; preds = %cond.end266
  %inc273 = add nsw i32 %j.5, 1, !dbg !1030
  call void @llvm.dbg.value(metadata i32 %inc273, metadata !692, metadata !DIExpression()), !dbg !693
  br label %for.cond251, !dbg !1031, !llvm.loop !1032

for.end274:                                       ; preds = %for.cond251
  br label %for.inc275, !dbg !1035

for.inc275:                                       ; preds = %for.end274
  %inc276 = add nsw i32 %i.10, 1, !dbg !1036
  call void @llvm.dbg.value(metadata i32 %inc276, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond248, !dbg !1037, !llvm.loop !1038

for.end277:                                       ; preds = %for.cond248
  br label %VITIS_LOOP_302_18, !dbg !1039

VITIS_LOOP_302_18:                                ; preds = %for.end277
  call void @llvm.dbg.value(metadata i32 0, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond278, !dbg !1041

for.cond278:                                      ; preds = %for.inc293, %VITIS_LOOP_302_18
  %i.11 = phi i32 [ 0, %VITIS_LOOP_302_18 ], [ %inc294, %for.inc293 ]
  call void @llvm.dbg.value(metadata i32 %i.11, metadata !684, metadata !DIExpression()), !dbg !685
  %cmp279 = icmp slt i32 %i.11, 3, !dbg !1043
  br i1 %cmp279, label %for.body280, label %for.end295, !dbg !1045

for.body280:                                      ; preds = %for.cond278
  %tobool281 = icmp ne i32 %bias_norm.2, 0, !dbg !1046
  br i1 %tobool281, label %cond.true282, label %cond.false286, !dbg !1046

cond.true282:                                     ; preds = %for.body280
  %idxprom283 = sext i32 %i.11 to i64, !dbg !1048
  %arrayidx284 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom283, !dbg !1048
  %34 = load i32, i32* %arrayidx284, align 4, !dbg !1048
  %div285 = sdiv i32 %34, %bias_norm.2, !dbg !1049
  br label %cond.end289, !dbg !1046

cond.false286:                                    ; preds = %for.body280
  %idxprom287 = sext i32 %i.11 to i64, !dbg !1050
  %arrayidx288 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom287, !dbg !1050
  %35 = load i32, i32* %arrayidx288, align 4, !dbg !1050
  br label %cond.end289, !dbg !1046

cond.end289:                                      ; preds = %cond.false286, %cond.true282
  %cond290 = phi i32 [ %div285, %cond.true282 ], [ %35, %cond.false286 ], !dbg !1046
  %idxprom291 = sext i32 %i.11 to i64, !dbg !1051
  %arrayidx292 = getelementptr inbounds i32, i32* %biases3, i64 %idxprom291, !dbg !1051
  store i32 %cond290, i32* %arrayidx292, align 4, !dbg !1052
  br label %for.inc293, !dbg !1053

for.inc293:                                       ; preds = %cond.end289
  %inc294 = add nsw i32 %i.11, 1, !dbg !1054
  call void @llvm.dbg.value(metadata i32 %inc294, metadata !684, metadata !DIExpression()), !dbg !685
  br label %for.cond278, !dbg !1055, !llvm.loop !1056

for.end295:                                       ; preds = %for.cond278
  ret void, !dbg !1059
}

; Function Attrs: nounwind
define void @hls_top(i32 %sets, i32* "fpga.decayed.dim.hint"="256" %xweights1, i32* "fpga.decayed.dim.hint"="256" %xweights2, i32* "fpga.decayed.dim.hint"="48" %xweights3, i32* "fpga.decayed.dim.hint"="16" %xbiases1, i32* "fpga.decayed.dim.hint"="16" %xbiases2, i32* "fpga.decayed.dim.hint"="3" %xbiases3, i32* "fpga.decayed.dim.hint"="2608" %xtraining_data, i32* "fpga.decayed.dim.hint"="489" %xtraining_targets) #3 !dbg !1060 !fpga.function.pragma !1063 {
entry:
  %weights1 = alloca [256 x i32], align 4
  %weights2 = alloca [256 x i32], align 4
  %weights3 = alloca [48 x i32], align 4
  %biases1 = alloca [16 x i32], align 4
  %biases2 = alloca [16 x i32], align 4
  %biases3 = alloca [3 x i32], align 4
  %training_data = alloca [2608 x i32], align 4
  %training_targets = alloca [489 x i32], align 4
  %activations1 = alloca [16 x i32], align 4
  %activations2 = alloca [16 x i32], align 4
  %activations3 = alloca [3 x i32], align 4
  %dactivations1 = alloca [16 x i32], align 4
  %dactivations2 = alloca [16 x i32], align 4
  %dactivations3 = alloca [3 x i32], align 4
  %net_outputs = alloca [3 x i32], align 4
  %output_difference = alloca [3 x i32], align 4
  %delta_weights1 = alloca [256 x i32], align 4
  %delta_weights2 = alloca [256 x i32], align 4
  %delta_weights3 = alloca [48 x i32], align 4
  %oracle_activations1 = alloca [16 x i32], align 4
  %oracle_activations2 = alloca [16 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %sets, metadata !1066, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32* %xweights1, metadata !1068, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i32* %xweights2, metadata !1070, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata i32* %xweights3, metadata !1072, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i32* %xbiases1, metadata !1074, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i32* %xbiases2, metadata !1076, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i32* %xbiases3, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i32* %xtraining_data, metadata !1080, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i32* %xtraining_targets, metadata !1082, metadata !DIExpression()), !dbg !1083
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xweights1, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1084
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xweights2, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1085
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xweights3, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1086
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xbiases1, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1087
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xbiases2, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1088
  call void @llvm.sideeffect() #8 [ "xlx_m_axi"(i32* %xbiases3, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1089
  call void @llvm.sideeffect() #9 [ "xlx_m_axi"(i32* %xtraining_data, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1090
  call void @llvm.sideeffect() #10 [ "xlx_m_axi"(i32* %xtraining_targets, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !1091
  call void @llvm.sideeffect() #11 [ "xlx_s_axilite"(i32 %sets, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1092
  call void @llvm.sideeffect() #12 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !1093
  %0 = bitcast [256 x i32]* %weights1 to i8*, !dbg !1094
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %0) #13, !dbg !1094
  call void @llvm.dbg.declare(metadata [256 x i32]* %weights1, metadata !1095, metadata !DIExpression()), !dbg !1099
  %1 = bitcast [256 x i32]* %weights2 to i8*, !dbg !1100
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* %1) #13, !dbg !1100
  call void @llvm.dbg.declare(metadata [256 x i32]* %weights2, metadata !1101, metadata !DIExpression()), !dbg !1102
  %2 = bitcast [48 x i32]* %weights3 to i8*, !dbg !1103
  call void @llvm.lifetime.start.p0i8(i64 192, i8* %2) #13, !dbg !1103
  call void @llvm.dbg.declare(metadata [48 x i32]* %weights3, metadata !1104, metadata !DIExpression()), !dbg !1108
  %3 = bitcast [16 x i32]* %biases1 to i8*, !dbg !1109
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %3) #13, !dbg !1109
  call void @llvm.dbg.declare(metadata [16 x i32]* %biases1, metadata !1110, metadata !DIExpression()), !dbg !1114
  %4 = bitcast [16 x i32]* %biases2 to i8*, !dbg !1115
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %4) #13, !dbg !1115
  call void @llvm.dbg.declare(metadata [16 x i32]* %biases2, metadata !1116, metadata !DIExpression()), !dbg !1117
  %5 = bitcast [3 x i32]* %biases3 to i8*, !dbg !1118
  call void @llvm.lifetime.start.p0i8(i64 12, i8* %5) #13, !dbg !1118
  call void @llvm.dbg.declare(metadata [3 x i32]* %biases3, metadata !1119, metadata !DIExpression()), !dbg !1123
  %6 = bitcast [2608 x i32]* %training_data to i8*, !dbg !1124
  call void @llvm.lifetime.start.p0i8(i64 10432, i8* %6) #13, !dbg !1124
  call void @llvm.dbg.declare(metadata [2608 x i32]* %training_data, metadata !1125, metadata !DIExpression()), !dbg !1129
  %7 = bitcast [489 x i32]* %training_targets to i8*, !dbg !1130
  call void @llvm.lifetime.start.p0i8(i64 1956, i8* %7) #13, !dbg !1130
  call void @llvm.dbg.declare(metadata [489 x i32]* %training_targets, metadata !1131, metadata !DIExpression()), !dbg !1135
  br label %VITIS_LOOP_334_1, !dbg !1130

VITIS_LOOP_334_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1136, metadata !DIExpression()), !dbg !1138
  br label %for.cond, !dbg !1139

for.cond:                                         ; preds = %for.inc9, %VITIS_LOOP_334_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_334_1 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1136, metadata !DIExpression()), !dbg !1138
  %cmp = icmp slt i32 %i.0, 163, !dbg !1140
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1142

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end11

for.body:                                         ; preds = %for.cond
  br label %VITIS_LOOP_335_2, !dbg !1142

VITIS_LOOP_335_2:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !1143, metadata !DIExpression()), !dbg !1145
  br label %for.cond1, !dbg !1146

for.cond1:                                        ; preds = %for.inc, %VITIS_LOOP_335_2
  %j.0 = phi i32 [ 0, %VITIS_LOOP_335_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1143, metadata !DIExpression()), !dbg !1145
  %cmp2 = icmp slt i32 %j.0, 16, !dbg !1147
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3, !dbg !1149

for.cond.cleanup3:                                ; preds = %for.cond1
  br label %for.end

for.body4:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, 16, !dbg !1150
  %add = add nsw i32 %mul, %j.0, !dbg !1151
  %idxprom = sext i32 %add to i64, !dbg !1152
  %arrayidx = getelementptr inbounds i32, i32* %xtraining_data, i64 %idxprom, !dbg !1152
  %8 = load i32, i32* %arrayidx, align 4, !dbg !1152
  %mul5 = mul nsw i32 %i.0, 16, !dbg !1153
  %add6 = add nsw i32 %mul5, %j.0, !dbg !1154
  %idxprom7 = sext i32 %add6 to i64, !dbg !1155
  %arrayidx8 = getelementptr inbounds [2608 x i32], [2608 x i32]* %training_data, i64 0, i64 %idxprom7, !dbg !1155
  store i32 %8, i32* %arrayidx8, align 4, !dbg !1156
  br label %for.inc, !dbg !1155

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !dbg !1157
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1143, metadata !DIExpression()), !dbg !1145
  br label %for.cond1, !dbg !1158, !llvm.loop !1159

for.end:                                          ; preds = %for.cond.cleanup3
  br label %for.inc9, !dbg !1160

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %i.0, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !1136, metadata !DIExpression()), !dbg !1138
  br label %for.cond, !dbg !1163, !llvm.loop !1164

for.end11:                                        ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_339_3, !dbg !1165

VITIS_LOOP_339_3:                                 ; preds = %for.end11
  call void @llvm.dbg.value(metadata i32 0, metadata !1167, metadata !DIExpression()), !dbg !1169
  br label %for.cond13, !dbg !1170

for.cond13:                                       ; preds = %for.inc33, %VITIS_LOOP_339_3
  %i12.0 = phi i32 [ 0, %VITIS_LOOP_339_3 ], [ %inc34, %for.inc33 ]
  call void @llvm.dbg.value(metadata i32 %i12.0, metadata !1167, metadata !DIExpression()), !dbg !1169
  %cmp14 = icmp slt i32 %i12.0, 163, !dbg !1171
  br i1 %cmp14, label %for.body16, label %for.cond.cleanup15, !dbg !1173

for.cond.cleanup15:                               ; preds = %for.cond13
  br label %for.end35

for.body16:                                       ; preds = %for.cond13
  br label %VITIS_LOOP_340_4, !dbg !1173

VITIS_LOOP_340_4:                                 ; preds = %for.body16
  call void @llvm.dbg.value(metadata i32 0, metadata !1174, metadata !DIExpression()), !dbg !1176
  br label %for.cond18, !dbg !1177

for.cond18:                                       ; preds = %for.inc30, %VITIS_LOOP_340_4
  %j17.0 = phi i32 [ 0, %VITIS_LOOP_340_4 ], [ %inc31, %for.inc30 ]
  call void @llvm.dbg.value(metadata i32 %j17.0, metadata !1174, metadata !DIExpression()), !dbg !1176
  %cmp19 = icmp slt i32 %j17.0, 3, !dbg !1178
  br i1 %cmp19, label %for.body21, label %for.cond.cleanup20, !dbg !1180

for.cond.cleanup20:                               ; preds = %for.cond18
  br label %for.end32

for.body21:                                       ; preds = %for.cond18
  %mul22 = mul nsw i32 %i12.0, 3, !dbg !1181
  %add23 = add nsw i32 %mul22, %j17.0, !dbg !1182
  %idxprom24 = sext i32 %add23 to i64, !dbg !1183
  %arrayidx25 = getelementptr inbounds i32, i32* %xtraining_targets, i64 %idxprom24, !dbg !1183
  %9 = load i32, i32* %arrayidx25, align 4, !dbg !1183
  %mul26 = mul nsw i32 %i12.0, 3, !dbg !1184
  %add27 = add nsw i32 %mul26, %j17.0, !dbg !1185
  %idxprom28 = sext i32 %add27 to i64, !dbg !1186
  %arrayidx29 = getelementptr inbounds [489 x i32], [489 x i32]* %training_targets, i64 0, i64 %idxprom28, !dbg !1186
  store i32 %9, i32* %arrayidx29, align 4, !dbg !1187
  br label %for.inc30, !dbg !1186

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j17.0, 1, !dbg !1188
  call void @llvm.dbg.value(metadata i32 %inc31, metadata !1174, metadata !DIExpression()), !dbg !1176
  br label %for.cond18, !dbg !1189, !llvm.loop !1190

for.end32:                                        ; preds = %for.cond.cleanup20
  br label %for.inc33, !dbg !1191

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i12.0, 1, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %inc34, metadata !1167, metadata !DIExpression()), !dbg !1169
  br label %for.cond13, !dbg !1194, !llvm.loop !1195

for.end35:                                        ; preds = %for.cond.cleanup15
  call void @llvm.dbg.declare(metadata [16 x i32]* %activations1, metadata !1198, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.declare(metadata [16 x i32]* %activations2, metadata !1200, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.declare(metadata [3 x i32]* %activations3, metadata !1202, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.declare(metadata [16 x i32]* %dactivations1, metadata !1204, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.declare(metadata [16 x i32]* %dactivations2, metadata !1206, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.declare(metadata [3 x i32]* %dactivations3, metadata !1208, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.declare(metadata [3 x i32]* %net_outputs, metadata !1210, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.declare(metadata [3 x i32]* %output_difference, metadata !1212, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.declare(metadata [256 x i32]* %delta_weights1, metadata !1214, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.declare(metadata [256 x i32]* %delta_weights2, metadata !1216, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.declare(metadata [48 x i32]* %delta_weights3, metadata !1218, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.declare(metadata [16 x i32]* %oracle_activations1, metadata !1220, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.declare(metadata [16 x i32]* %oracle_activations2, metadata !1222, metadata !DIExpression()), !dbg !1223
  br label %VITIS_LOOP_361_5, !dbg !1224

VITIS_LOOP_361_5:                                 ; preds = %for.end35
  call void @llvm.dbg.value(metadata i32 0, metadata !1225, metadata !DIExpression()), !dbg !1226
  br label %for.cond38, !dbg !1227

for.cond38:                                       ; preds = %for.inc112, %VITIS_LOOP_361_5
  %i36.0 = phi i32 [ 0, %VITIS_LOOP_361_5 ], [ %inc113, %for.inc112 ]
  call void @llvm.dbg.value(metadata i32 %i36.0, metadata !1225, metadata !DIExpression()), !dbg !1226
  %cmp39 = icmp slt i32 %i36.0, %sets, !dbg !1229
  br i1 %cmp39, label %for.body40, label %for.end114, !dbg !1231

for.body40:                                       ; preds = %for.cond38
  br label %VITIS_LOOP_362_6, !dbg !1232

VITIS_LOOP_362_6:                                 ; preds = %for.body40
  call void @llvm.dbg.value(metadata i32 0, metadata !1233, metadata !DIExpression()), !dbg !1234
  br label %for.cond41, !dbg !1235

for.cond41:                                       ; preds = %for.inc51, %VITIS_LOOP_362_6
  %j37.0 = phi i32 [ 0, %VITIS_LOOP_362_6 ], [ %inc52, %for.inc51 ]
  call void @llvm.dbg.value(metadata i32 %j37.0, metadata !1233, metadata !DIExpression()), !dbg !1234
  %cmp42 = icmp slt i32 %j37.0, 16, !dbg !1238
  br i1 %cmp42, label %for.body43, label %for.end53, !dbg !1240

for.body43:                                       ; preds = %for.cond41
  %idxprom44 = sext i32 %j37.0 to i64, !dbg !1241
  %arrayidx45 = getelementptr inbounds [16 x i32], [16 x i32]* %activations1, i64 0, i64 %idxprom44, !dbg !1241
  store i32 0, i32* %arrayidx45, align 4, !dbg !1243
  %idxprom46 = sext i32 %j37.0 to i64, !dbg !1244
  %arrayidx47 = getelementptr inbounds [16 x i32], [16 x i32]* %activations2, i64 0, i64 %idxprom46, !dbg !1244
  store i32 0, i32* %arrayidx47, align 4, !dbg !1245
  %cmp48 = icmp slt i32 %j37.0, 3, !dbg !1246
  br i1 %cmp48, label %if.then, label %if.end, !dbg !1248

if.then:                                          ; preds = %for.body43
  %idxprom49 = sext i32 %j37.0 to i64, !dbg !1249
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %activations3, i64 0, i64 %idxprom49, !dbg !1249
  store i32 0, i32* %arrayidx50, align 4, !dbg !1251
  br label %if.end, !dbg !1252

if.end:                                           ; preds = %if.then, %for.body43
  br label %for.inc51, !dbg !1253

for.inc51:                                        ; preds = %if.end
  %inc52 = add nsw i32 %j37.0, 1, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %inc52, metadata !1233, metadata !DIExpression()), !dbg !1234
  br label %for.cond41, !dbg !1255, !llvm.loop !1256

for.end53:                                        ; preds = %for.cond41
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %biases1, i32 0, i32 0, !dbg !1259
  %arraydecay54 = getelementptr inbounds [256 x i32], [256 x i32]* %weights1, i32 0, i32 0, !dbg !1260
  %arraydecay55 = getelementptr inbounds [16 x i32], [16 x i32]* %activations1, i32 0, i32 0, !dbg !1261
  %mul56 = mul nsw i32 %i36.0, 16, !dbg !1262
  %idxprom57 = sext i32 %mul56 to i64, !dbg !1263
  %arrayidx58 = getelementptr inbounds [2608 x i32], [2608 x i32]* %training_data, i64 0, i64 %idxprom57, !dbg !1263
  call void @matrix_vector_product_with_bias_input_layer(i32* %arraydecay, i32* %arraydecay54, i32* %arraydecay55, i32* %arrayidx58), !dbg !1264
  %arraydecay59 = getelementptr inbounds [16 x i32], [16 x i32]* %activations1, i32 0, i32 0, !dbg !1265
  %arraydecay60 = getelementptr inbounds [16 x i32], [16 x i32]* %dactivations1, i32 0, i32 0, !dbg !1266
  call void @RELU1(i32* %arraydecay59, i32* %arraydecay60, i32 16), !dbg !1267
  %arraydecay61 = getelementptr inbounds [16 x i32], [16 x i32]* %biases2, i32 0, i32 0, !dbg !1268
  %arraydecay62 = getelementptr inbounds [256 x i32], [256 x i32]* %weights2, i32 0, i32 0, !dbg !1269
  %arraydecay63 = getelementptr inbounds [16 x i32], [16 x i32]* %activations2, i32 0, i32 0, !dbg !1270
  %arraydecay64 = getelementptr inbounds [16 x i32], [16 x i32]* %activations1, i32 0, i32 0, !dbg !1271
  call void @matrix_vector_product_with_bias_second_layer(i32* %arraydecay61, i32* %arraydecay62, i32* %arraydecay63, i32* %arraydecay64), !dbg !1272
  %arraydecay65 = getelementptr inbounds [16 x i32], [16 x i32]* %activations2, i32 0, i32 0, !dbg !1273
  %arraydecay66 = getelementptr inbounds [16 x i32], [16 x i32]* %dactivations2, i32 0, i32 0, !dbg !1274
  call void @RELU2(i32* %arraydecay65, i32* %arraydecay66, i32 16), !dbg !1275
  %arraydecay67 = getelementptr inbounds [3 x i32], [3 x i32]* %biases3, i32 0, i32 0, !dbg !1276
  %arraydecay68 = getelementptr inbounds [48 x i32], [48 x i32]* %weights3, i32 0, i32 0, !dbg !1277
  %arraydecay69 = getelementptr inbounds [3 x i32], [3 x i32]* %activations3, i32 0, i32 0, !dbg !1278
  %arraydecay70 = getelementptr inbounds [16 x i32], [16 x i32]* %activations2, i32 0, i32 0, !dbg !1279
  call void @matrix_vector_product_with_bias_output_layer(i32* %arraydecay67, i32* %arraydecay68, i32* %arraydecay69, i32* %arraydecay70), !dbg !1280
  %arraydecay71 = getelementptr inbounds [3 x i32], [3 x i32]* %activations3, i32 0, i32 0, !dbg !1281
  %arraydecay72 = getelementptr inbounds [3 x i32], [3 x i32]* %dactivations3, i32 0, i32 0, !dbg !1282
  call void @RELU3(i32* %arraydecay71, i32* %arraydecay72, i32 3), !dbg !1283
  %arraydecay73 = getelementptr inbounds [3 x i32], [3 x i32]* %net_outputs, i32 0, i32 0, !dbg !1284
  %arraydecay74 = getelementptr inbounds [3 x i32], [3 x i32]* %activations3, i32 0, i32 0, !dbg !1285
  call void @soft_max(i32* %arraydecay73, i32* %arraydecay74), !dbg !1286
  %arraydecay75 = getelementptr inbounds [3 x i32], [3 x i32]* %net_outputs, i32 0, i32 0, !dbg !1287
  %mul76 = mul nsw i32 %i36.0, 3, !dbg !1288
  %idxprom77 = sext i32 %mul76 to i64, !dbg !1289
  %arrayidx78 = getelementptr inbounds [489 x i32], [489 x i32]* %training_targets, i64 0, i64 %idxprom77, !dbg !1289
  %arraydecay79 = getelementptr inbounds [3 x i32], [3 x i32]* %output_difference, i32 0, i32 0, !dbg !1290
  %arraydecay80 = getelementptr inbounds [3 x i32], [3 x i32]* %dactivations3, i32 0, i32 0, !dbg !1291
  call void @take_difference(i32* %arraydecay75, i32* %arrayidx78, i32* %arraydecay79, i32* %arraydecay80), !dbg !1292
  %arraydecay81 = getelementptr inbounds [48 x i32], [48 x i32]* %delta_weights3, i32 0, i32 0, !dbg !1293
  %arraydecay82 = getelementptr inbounds [3 x i32], [3 x i32]* %output_difference, i32 0, i32 0, !dbg !1294
  %arraydecay83 = getelementptr inbounds [16 x i32], [16 x i32]* %activations2, i32 0, i32 0, !dbg !1295
  call void @get_delta_matrix_weights3(i32* %arraydecay81, i32* %arraydecay82, i32* %arraydecay83), !dbg !1296
  %arraydecay84 = getelementptr inbounds [48 x i32], [48 x i32]* %weights3, i32 0, i32 0, !dbg !1297
  %arraydecay85 = getelementptr inbounds [3 x i32], [3 x i32]* %output_difference, i32 0, i32 0, !dbg !1298
  %arraydecay86 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations2, i32 0, i32 0, !dbg !1299
  %arraydecay87 = getelementptr inbounds [16 x i32], [16 x i32]* %dactivations2, i32 0, i32 0, !dbg !1300
  call void @get_oracle_activations2(i32* %arraydecay84, i32* %arraydecay85, i32* %arraydecay86, i32* %arraydecay87), !dbg !1301
  %arraydecay88 = getelementptr inbounds [256 x i32], [256 x i32]* %delta_weights2, i32 0, i32 0, !dbg !1302
  %arraydecay89 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations2, i32 0, i32 0, !dbg !1303
  %arraydecay90 = getelementptr inbounds [16 x i32], [16 x i32]* %activations1, i32 0, i32 0, !dbg !1304
  call void @get_delta_matrix_weights2(i32* %arraydecay88, i32* %arraydecay89, i32* %arraydecay90), !dbg !1305
  %arraydecay91 = getelementptr inbounds [256 x i32], [256 x i32]* %weights2, i32 0, i32 0, !dbg !1306
  %arraydecay92 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations2, i32 0, i32 0, !dbg !1307
  %arraydecay93 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations1, i32 0, i32 0, !dbg !1308
  %arraydecay94 = getelementptr inbounds [16 x i32], [16 x i32]* %dactivations1, i32 0, i32 0, !dbg !1309
  call void @get_oracle_activations1(i32* %arraydecay91, i32* %arraydecay92, i32* %arraydecay93, i32* %arraydecay94), !dbg !1310
  %arraydecay95 = getelementptr inbounds [256 x i32], [256 x i32]* %delta_weights1, i32 0, i32 0, !dbg !1311
  %arraydecay96 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations1, i32 0, i32 0, !dbg !1312
  %mul97 = mul nsw i32 %i36.0, 16, !dbg !1313
  %idxprom98 = sext i32 %mul97 to i64, !dbg !1314
  %arrayidx99 = getelementptr inbounds [2608 x i32], [2608 x i32]* %training_data, i64 0, i64 %idxprom98, !dbg !1314
  call void @get_delta_matrix_weights1(i32* %arraydecay95, i32* %arraydecay96, i32* %arrayidx99), !dbg !1315
  %arraydecay100 = getelementptr inbounds [256 x i32], [256 x i32]* %weights1, i32 0, i32 0, !dbg !1316
  %arraydecay101 = getelementptr inbounds [256 x i32], [256 x i32]* %weights2, i32 0, i32 0, !dbg !1317
  %arraydecay102 = getelementptr inbounds [48 x i32], [48 x i32]* %weights3, i32 0, i32 0, !dbg !1318
  %arraydecay103 = getelementptr inbounds [256 x i32], [256 x i32]* %delta_weights1, i32 0, i32 0, !dbg !1319
  %arraydecay104 = getelementptr inbounds [256 x i32], [256 x i32]* %delta_weights2, i32 0, i32 0, !dbg !1320
  %arraydecay105 = getelementptr inbounds [48 x i32], [48 x i32]* %delta_weights3, i32 0, i32 0, !dbg !1321
  %arraydecay106 = getelementptr inbounds [16 x i32], [16 x i32]* %biases1, i32 0, i32 0, !dbg !1322
  %arraydecay107 = getelementptr inbounds [16 x i32], [16 x i32]* %biases2, i32 0, i32 0, !dbg !1323
  %arraydecay108 = getelementptr inbounds [3 x i32], [3 x i32]* %biases3, i32 0, i32 0, !dbg !1324
  %arraydecay109 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations1, i32 0, i32 0, !dbg !1325
  %arraydecay110 = getelementptr inbounds [16 x i32], [16 x i32]* %oracle_activations2, i32 0, i32 0, !dbg !1326
  %arraydecay111 = getelementptr inbounds [3 x i32], [3 x i32]* %output_difference, i32 0, i32 0, !dbg !1327
  call void @update_weights(i32* %arraydecay100, i32* %arraydecay101, i32* %arraydecay102, i32* %arraydecay103, i32* %arraydecay104, i32* %arraydecay105, i32* %arraydecay106, i32* %arraydecay107, i32* %arraydecay108, i32* %arraydecay109, i32* %arraydecay110, i32* %arraydecay111), !dbg !1328
  br label %for.inc112, !dbg !1329

for.inc112:                                       ; preds = %for.end53
  %inc113 = add nsw i32 %i36.0, 1, !dbg !1330
  call void @llvm.dbg.value(metadata i32 %inc113, metadata !1225, metadata !DIExpression()), !dbg !1226
  br label %for.cond38, !dbg !1331, !llvm.loop !1332

for.end114:                                       ; preds = %for.cond38
  call void @llvm.dbg.value(metadata i32 256, metadata !1335, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 256, metadata !1337, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata i32 48, metadata !1339, metadata !DIExpression()), !dbg !1340
  br label %VITIS_LOOP_399_7, !dbg !1341

VITIS_LOOP_399_7:                                 ; preds = %for.end114
  call void @llvm.dbg.value(metadata i32 0, metadata !1342, metadata !DIExpression()), !dbg !1344
  br label %for.cond116, !dbg !1345

for.cond116:                                      ; preds = %for.inc124, %VITIS_LOOP_399_7
  %i115.0 = phi i32 [ 0, %VITIS_LOOP_399_7 ], [ %inc125, %for.inc124 ]
  call void @llvm.dbg.value(metadata i32 %i115.0, metadata !1342, metadata !DIExpression()), !dbg !1344
  %cmp117 = icmp slt i32 %i115.0, 256, !dbg !1346
  br i1 %cmp117, label %for.body119, label %for.cond.cleanup118, !dbg !1348

for.cond.cleanup118:                              ; preds = %for.cond116
  br label %for.end126

for.body119:                                      ; preds = %for.cond116
  %idxprom120 = sext i32 %i115.0 to i64, !dbg !1349
  %arrayidx121 = getelementptr inbounds [256 x i32], [256 x i32]* %weights1, i64 0, i64 %idxprom120, !dbg !1349
  %10 = load i32, i32* %arrayidx121, align 4, !dbg !1349
  %idxprom122 = sext i32 %i115.0 to i64, !dbg !1350
  %arrayidx123 = getelementptr inbounds i32, i32* %xweights1, i64 %idxprom122, !dbg !1350
  store i32 %10, i32* %arrayidx123, align 4, !dbg !1351
  br label %for.inc124, !dbg !1350

for.inc124:                                       ; preds = %for.body119
  %inc125 = add nsw i32 %i115.0, 1, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %inc125, metadata !1342, metadata !DIExpression()), !dbg !1344
  br label %for.cond116, !dbg !1353, !llvm.loop !1354

for.end126:                                       ; preds = %for.cond.cleanup118
  br label %VITIS_LOOP_401_8, !dbg !1355

VITIS_LOOP_401_8:                                 ; preds = %for.end126
  call void @llvm.dbg.value(metadata i32 0, metadata !1357, metadata !DIExpression()), !dbg !1359
  br label %for.cond128, !dbg !1360

for.cond128:                                      ; preds = %for.inc136, %VITIS_LOOP_401_8
  %i127.0 = phi i32 [ 0, %VITIS_LOOP_401_8 ], [ %inc137, %for.inc136 ]
  call void @llvm.dbg.value(metadata i32 %i127.0, metadata !1357, metadata !DIExpression()), !dbg !1359
  %cmp129 = icmp slt i32 %i127.0, 256, !dbg !1361
  br i1 %cmp129, label %for.body131, label %for.cond.cleanup130, !dbg !1363

for.cond.cleanup130:                              ; preds = %for.cond128
  br label %for.end138

for.body131:                                      ; preds = %for.cond128
  %idxprom132 = sext i32 %i127.0 to i64, !dbg !1364
  %arrayidx133 = getelementptr inbounds [256 x i32], [256 x i32]* %weights2, i64 0, i64 %idxprom132, !dbg !1364
  %11 = load i32, i32* %arrayidx133, align 4, !dbg !1364
  %idxprom134 = sext i32 %i127.0 to i64, !dbg !1365
  %arrayidx135 = getelementptr inbounds i32, i32* %xweights2, i64 %idxprom134, !dbg !1365
  store i32 %11, i32* %arrayidx135, align 4, !dbg !1366
  br label %for.inc136, !dbg !1365

for.inc136:                                       ; preds = %for.body131
  %inc137 = add nsw i32 %i127.0, 1, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %inc137, metadata !1357, metadata !DIExpression()), !dbg !1359
  br label %for.cond128, !dbg !1368, !llvm.loop !1369

for.end138:                                       ; preds = %for.cond.cleanup130
  br label %VITIS_LOOP_403_9, !dbg !1370

VITIS_LOOP_403_9:                                 ; preds = %for.end138
  call void @llvm.dbg.value(metadata i32 0, metadata !1372, metadata !DIExpression()), !dbg !1374
  br label %for.cond140, !dbg !1375

for.cond140:                                      ; preds = %for.inc148, %VITIS_LOOP_403_9
  %i139.0 = phi i32 [ 0, %VITIS_LOOP_403_9 ], [ %inc149, %for.inc148 ]
  call void @llvm.dbg.value(metadata i32 %i139.0, metadata !1372, metadata !DIExpression()), !dbg !1374
  %cmp141 = icmp slt i32 %i139.0, 48, !dbg !1376
  br i1 %cmp141, label %for.body143, label %for.cond.cleanup142, !dbg !1378

for.cond.cleanup142:                              ; preds = %for.cond140
  br label %for.end150

for.body143:                                      ; preds = %for.cond140
  %idxprom144 = sext i32 %i139.0 to i64, !dbg !1379
  %arrayidx145 = getelementptr inbounds [48 x i32], [48 x i32]* %weights3, i64 0, i64 %idxprom144, !dbg !1379
  %12 = load i32, i32* %arrayidx145, align 4, !dbg !1379
  %idxprom146 = sext i32 %i139.0 to i64, !dbg !1380
  %arrayidx147 = getelementptr inbounds i32, i32* %xweights3, i64 %idxprom146, !dbg !1380
  store i32 %12, i32* %arrayidx147, align 4, !dbg !1381
  br label %for.inc148, !dbg !1380

for.inc148:                                       ; preds = %for.body143
  %inc149 = add nsw i32 %i139.0, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i32 %inc149, metadata !1372, metadata !DIExpression()), !dbg !1374
  br label %for.cond140, !dbg !1383, !llvm.loop !1384

for.end150:                                       ; preds = %for.cond.cleanup142
  br label %VITIS_LOOP_406_10, !dbg !1385

VITIS_LOOP_406_10:                                ; preds = %for.end150
  call void @llvm.dbg.value(metadata i32 0, metadata !1387, metadata !DIExpression()), !dbg !1389
  br label %for.cond152, !dbg !1390

for.cond152:                                      ; preds = %for.inc160, %VITIS_LOOP_406_10
  %i151.0 = phi i32 [ 0, %VITIS_LOOP_406_10 ], [ %inc161, %for.inc160 ]
  call void @llvm.dbg.value(metadata i32 %i151.0, metadata !1387, metadata !DIExpression()), !dbg !1389
  %cmp153 = icmp slt i32 %i151.0, 16, !dbg !1391
  br i1 %cmp153, label %for.body155, label %for.cond.cleanup154, !dbg !1393

for.cond.cleanup154:                              ; preds = %for.cond152
  br label %for.end162

for.body155:                                      ; preds = %for.cond152
  %idxprom156 = sext i32 %i151.0 to i64, !dbg !1394
  %arrayidx157 = getelementptr inbounds [16 x i32], [16 x i32]* %biases1, i64 0, i64 %idxprom156, !dbg !1394
  %13 = load i32, i32* %arrayidx157, align 4, !dbg !1394
  %idxprom158 = sext i32 %i151.0 to i64, !dbg !1395
  %arrayidx159 = getelementptr inbounds i32, i32* %xbiases1, i64 %idxprom158, !dbg !1395
  store i32 %13, i32* %arrayidx159, align 4, !dbg !1396
  br label %for.inc160, !dbg !1395

for.inc160:                                       ; preds = %for.body155
  %inc161 = add nsw i32 %i151.0, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %inc161, metadata !1387, metadata !DIExpression()), !dbg !1389
  br label %for.cond152, !dbg !1398, !llvm.loop !1399

for.end162:                                       ; preds = %for.cond.cleanup154
  br label %VITIS_LOOP_408_11, !dbg !1400

VITIS_LOOP_408_11:                                ; preds = %for.end162
  call void @llvm.dbg.value(metadata i32 0, metadata !1402, metadata !DIExpression()), !dbg !1404
  br label %for.cond164, !dbg !1405

for.cond164:                                      ; preds = %for.inc172, %VITIS_LOOP_408_11
  %i163.0 = phi i32 [ 0, %VITIS_LOOP_408_11 ], [ %inc173, %for.inc172 ]
  call void @llvm.dbg.value(metadata i32 %i163.0, metadata !1402, metadata !DIExpression()), !dbg !1404
  %cmp165 = icmp slt i32 %i163.0, 16, !dbg !1406
  br i1 %cmp165, label %for.body167, label %for.cond.cleanup166, !dbg !1408

for.cond.cleanup166:                              ; preds = %for.cond164
  br label %for.end174

for.body167:                                      ; preds = %for.cond164
  %idxprom168 = sext i32 %i163.0 to i64, !dbg !1409
  %arrayidx169 = getelementptr inbounds [16 x i32], [16 x i32]* %biases2, i64 0, i64 %idxprom168, !dbg !1409
  %14 = load i32, i32* %arrayidx169, align 4, !dbg !1409
  %idxprom170 = sext i32 %i163.0 to i64, !dbg !1410
  %arrayidx171 = getelementptr inbounds i32, i32* %xbiases2, i64 %idxprom170, !dbg !1410
  store i32 %14, i32* %arrayidx171, align 4, !dbg !1411
  br label %for.inc172, !dbg !1410

for.inc172:                                       ; preds = %for.body167
  %inc173 = add nsw i32 %i163.0, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i32 %inc173, metadata !1402, metadata !DIExpression()), !dbg !1404
  br label %for.cond164, !dbg !1413, !llvm.loop !1414

for.end174:                                       ; preds = %for.cond.cleanup166
  br label %VITIS_LOOP_410_12, !dbg !1415

VITIS_LOOP_410_12:                                ; preds = %for.end174
  call void @llvm.dbg.value(metadata i32 0, metadata !1417, metadata !DIExpression()), !dbg !1419
  br label %for.cond176, !dbg !1420

for.cond176:                                      ; preds = %for.inc184, %VITIS_LOOP_410_12
  %i175.0 = phi i32 [ 0, %VITIS_LOOP_410_12 ], [ %inc185, %for.inc184 ]
  call void @llvm.dbg.value(metadata i32 %i175.0, metadata !1417, metadata !DIExpression()), !dbg !1419
  %cmp177 = icmp slt i32 %i175.0, 3, !dbg !1421
  br i1 %cmp177, label %for.body179, label %for.cond.cleanup178, !dbg !1423

for.cond.cleanup178:                              ; preds = %for.cond176
  br label %for.end186

for.body179:                                      ; preds = %for.cond176
  %idxprom180 = sext i32 %i175.0 to i64, !dbg !1424
  %arrayidx181 = getelementptr inbounds [3 x i32], [3 x i32]* %biases3, i64 0, i64 %idxprom180, !dbg !1424
  %15 = load i32, i32* %arrayidx181, align 4, !dbg !1424
  %idxprom182 = sext i32 %i175.0 to i64, !dbg !1425
  %arrayidx183 = getelementptr inbounds i32, i32* %xbiases3, i64 %idxprom182, !dbg !1425
  store i32 %15, i32* %arrayidx183, align 4, !dbg !1426
  br label %for.inc184, !dbg !1425

for.inc184:                                       ; preds = %for.body179
  %inc185 = add nsw i32 %i175.0, 1, !dbg !1427
  call void @llvm.dbg.value(metadata i32 %inc185, metadata !1417, metadata !DIExpression()), !dbg !1419
  br label %for.cond176, !dbg !1428, !llvm.loop !1429

for.end186:                                       ; preds = %for.cond.cleanup178
  %16 = bitcast [489 x i32]* %training_targets to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 1956, i8* %16) #13, !dbg !1432
  %17 = bitcast [2608 x i32]* %training_data to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 10432, i8* %17) #13, !dbg !1432
  %18 = bitcast [3 x i32]* %biases3 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 12, i8* %18) #13, !dbg !1432
  %19 = bitcast [16 x i32]* %biases2 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %19) #13, !dbg !1432
  %20 = bitcast [16 x i32]* %biases1 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %20) #13, !dbg !1432
  %21 = bitcast [48 x i32]* %weights3 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 192, i8* %21) #13, !dbg !1432
  %22 = bitcast [256 x i32]* %weights2 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %22) #13, !dbg !1432
  %23 = bitcast [256 x i32]* %weights1 to i8*, !dbg !1432
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* %23) #13, !dbg !1432
  ret void, !dbg !1432
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8192" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="1536" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="512" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="96" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="83456" "xlx.source"="user" }
attributes #10 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="15648" "xlx.source"="user" }
attributes #11 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #12 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/workspace/examples/backprop/backprop_prj/solution/.autopilot/db/backprop.pp.0.c", directory: "/workspace/examples/backprop")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!"clang version 7.0.0 "}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "soft_max", scope: !10, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DIFile(filename: "backprop.c", directory: "/workspace/examples/backprop")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!14 = !DILocalVariable(name: "net_outputs", arg: 1, scope: !9, file: !10, line: 22, type: !13)
!15 = !DILocation(line: 22, column: 19, scope: !9)
!16 = !DILocalVariable(name: "activations3", arg: 2, scope: !9, file: !10, line: 23, type: !13)
!17 = !DILocation(line: 23, column: 19, scope: !9)
!18 = !DILocalVariable(name: "sum", scope: !9, file: !10, line: 25, type: !4)
!19 = !DILocation(line: 25, column: 7, scope: !9)
!20 = !DILocation(line: 26, column: 3, scope: !9)
!21 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 24, type: !4)
!22 = !DILocation(line: 24, column: 7, scope: !9)
!23 = !DILocation(line: 28, column: 25, scope: !24)
!24 = distinct !DILexicalBlock(scope: !9, file: !10, line: 28, column: 20)
!25 = !DILocation(line: 28, column: 34, scope: !26)
!26 = distinct !DILexicalBlock(scope: !24, file: !10, line: 28, column: 20)
!27 = !DILocation(line: 28, column: 20, scope: !24)
!28 = !DILocation(line: 29, column: 13, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !10, line: 28, column: 44)
!30 = !DILocation(line: 29, column: 12, scope: !29)
!31 = !DILocation(line: 29, column: 29, scope: !29)
!32 = !DILocation(line: 29, column: 9, scope: !29)
!33 = !DILocation(line: 30, column: 3, scope: !29)
!34 = !DILocation(line: 28, column: 40, scope: !26)
!35 = !DILocation(line: 28, column: 20, scope: !26)
!36 = distinct !{!36, !27, !37, !38}
!37 = !DILocation(line: 30, column: 3, scope: !24)
!38 = !{!"llvm.loop.name", !"VITIS_LOOP_28_1"}
!39 = !DILocation(line: 31, column: 25, scope: !40)
!40 = distinct !DILexicalBlock(scope: !9, file: !10, line: 31, column: 20)
!41 = !DILocation(line: 31, column: 34, scope: !42)
!42 = distinct !DILexicalBlock(scope: !40, file: !10, line: 31, column: 20)
!43 = !DILocation(line: 31, column: 20, scope: !40)
!44 = !DILocation(line: 32, column: 22, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !10, line: 31, column: 44)
!46 = !DILocation(line: 32, column: 31, scope: !45)
!47 = !DILocation(line: 32, column: 30, scope: !45)
!48 = !DILocation(line: 32, column: 47, scope: !45)
!49 = !DILocation(line: 32, column: 51, scope: !45)
!50 = !DILocation(line: 32, column: 60, scope: !45)
!51 = !DILocation(line: 32, column: 59, scope: !45)
!52 = !DILocation(line: 32, column: 76, scope: !45)
!53 = !DILocation(line: 32, column: 5, scope: !45)
!54 = !DILocation(line: 32, column: 20, scope: !45)
!55 = !DILocation(line: 33, column: 3, scope: !45)
!56 = !DILocation(line: 31, column: 40, scope: !42)
!57 = !DILocation(line: 31, column: 20, scope: !42)
!58 = distinct !{!58, !43, !59, !60}
!59 = !DILocation(line: 33, column: 3, scope: !40)
!60 = !{!"llvm.loop.name", !"VITIS_LOOP_31_2"}
!61 = !DILocation(line: 34, column: 1, scope: !9)
!62 = distinct !DISubprogram(name: "RELU1", scope: !10, file: !10, line: 36, type: !63, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !13, !13, !4}
!65 = !DILocalVariable(name: "activations1", arg: 1, scope: !62, file: !10, line: 36, type: !13)
!66 = !DILocation(line: 36, column: 16, scope: !62)
!67 = !DILocalVariable(name: "dactivations1", arg: 2, scope: !62, file: !10, line: 37, type: !13)
!68 = !DILocation(line: 37, column: 16, scope: !62)
!69 = !DILocalVariable(name: "size", arg: 3, scope: !62, file: !10, line: 37, type: !4)
!70 = !DILocation(line: 37, column: 39, scope: !62)
!71 = !DILocation(line: 38, column: 3, scope: !62)
!72 = !DILocalVariable(name: "i", scope: !62, file: !10, line: 38, type: !4)
!73 = !DILocation(line: 38, column: 7, scope: !62)
!74 = !DILocation(line: 39, column: 25, scope: !75)
!75 = distinct !DILexicalBlock(scope: !62, file: !10, line: 39, column: 20)
!76 = !DILocation(line: 39, column: 34, scope: !77)
!77 = distinct !DILexicalBlock(scope: !75, file: !10, line: 39, column: 20)
!78 = !DILocation(line: 39, column: 20, scope: !75)
!79 = !DILocation(line: 40, column: 24, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !10, line: 39, column: 47)
!81 = !DILocation(line: 40, column: 47, scope: !80)
!82 = !DILocation(line: 40, column: 45, scope: !80)
!83 = !DILocation(line: 40, column: 40, scope: !80)
!84 = !DILocation(line: 40, column: 5, scope: !80)
!85 = !DILocation(line: 40, column: 22, scope: !80)
!86 = !DILocation(line: 41, column: 29, scope: !80)
!87 = !DILocation(line: 41, column: 28, scope: !80)
!88 = !DILocation(line: 41, column: 45, scope: !80)
!89 = !DILocation(line: 41, column: 26, scope: !80)
!90 = !DILocation(line: 41, column: 5, scope: !80)
!91 = !DILocation(line: 41, column: 21, scope: !80)
!92 = !DILocation(line: 42, column: 3, scope: !80)
!93 = !DILocation(line: 39, column: 43, scope: !77)
!94 = !DILocation(line: 39, column: 20, scope: !77)
!95 = distinct !{!95, !78, !96, !97}
!96 = !DILocation(line: 42, column: 3, scope: !75)
!97 = !{!"llvm.loop.name", !"VITIS_LOOP_39_1"}
!98 = !DILocation(line: 43, column: 1, scope: !62)
!99 = distinct !DISubprogram(name: "RELU2", scope: !10, file: !10, line: 44, type: !63, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!100 = !DILocalVariable(name: "activations2", arg: 1, scope: !99, file: !10, line: 44, type: !13)
!101 = !DILocation(line: 44, column: 16, scope: !99)
!102 = !DILocalVariable(name: "dactivations2", arg: 2, scope: !99, file: !10, line: 45, type: !13)
!103 = !DILocation(line: 45, column: 16, scope: !99)
!104 = !DILocalVariable(name: "size", arg: 3, scope: !99, file: !10, line: 45, type: !4)
!105 = !DILocation(line: 45, column: 39, scope: !99)
!106 = !DILocation(line: 46, column: 3, scope: !99)
!107 = !DILocalVariable(name: "i", scope: !99, file: !10, line: 46, type: !4)
!108 = !DILocation(line: 46, column: 7, scope: !99)
!109 = !DILocation(line: 47, column: 25, scope: !110)
!110 = distinct !DILexicalBlock(scope: !99, file: !10, line: 47, column: 20)
!111 = !DILocation(line: 47, column: 34, scope: !112)
!112 = distinct !DILexicalBlock(scope: !110, file: !10, line: 47, column: 20)
!113 = !DILocation(line: 47, column: 20, scope: !110)
!114 = !DILocation(line: 48, column: 24, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !10, line: 47, column: 47)
!116 = !DILocation(line: 48, column: 47, scope: !115)
!117 = !DILocation(line: 48, column: 45, scope: !115)
!118 = !DILocation(line: 48, column: 40, scope: !115)
!119 = !DILocation(line: 48, column: 5, scope: !115)
!120 = !DILocation(line: 48, column: 22, scope: !115)
!121 = !DILocation(line: 49, column: 29, scope: !115)
!122 = !DILocation(line: 49, column: 28, scope: !115)
!123 = !DILocation(line: 49, column: 45, scope: !115)
!124 = !DILocation(line: 49, column: 26, scope: !115)
!125 = !DILocation(line: 49, column: 5, scope: !115)
!126 = !DILocation(line: 49, column: 21, scope: !115)
!127 = !DILocation(line: 50, column: 3, scope: !115)
!128 = !DILocation(line: 47, column: 43, scope: !112)
!129 = !DILocation(line: 47, column: 20, scope: !112)
!130 = distinct !{!130, !113, !131, !132}
!131 = !DILocation(line: 50, column: 3, scope: !110)
!132 = !{!"llvm.loop.name", !"VITIS_LOOP_47_1"}
!133 = !DILocation(line: 51, column: 1, scope: !99)
!134 = distinct !DISubprogram(name: "RELU3", scope: !10, file: !10, line: 53, type: !63, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!135 = !DILocalVariable(name: "activations3", arg: 1, scope: !134, file: !10, line: 53, type: !13)
!136 = !DILocation(line: 53, column: 16, scope: !134)
!137 = !DILocalVariable(name: "dactivations3", arg: 2, scope: !134, file: !10, line: 54, type: !13)
!138 = !DILocation(line: 54, column: 16, scope: !134)
!139 = !DILocalVariable(name: "size", arg: 3, scope: !134, file: !10, line: 54, type: !4)
!140 = !DILocation(line: 54, column: 38, scope: !134)
!141 = !DILocation(line: 55, column: 3, scope: !134)
!142 = !DILocalVariable(name: "i", scope: !134, file: !10, line: 55, type: !4)
!143 = !DILocation(line: 55, column: 7, scope: !134)
!144 = !DILocation(line: 56, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !134, file: !10, line: 56, column: 20)
!146 = !DILocation(line: 56, column: 34, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !10, line: 56, column: 20)
!148 = !DILocation(line: 56, column: 20, scope: !145)
!149 = !DILocation(line: 57, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !10, line: 56, column: 47)
!151 = !DILocation(line: 57, column: 47, scope: !150)
!152 = !DILocation(line: 57, column: 45, scope: !150)
!153 = !DILocation(line: 57, column: 40, scope: !150)
!154 = !DILocation(line: 57, column: 5, scope: !150)
!155 = !DILocation(line: 57, column: 22, scope: !150)
!156 = !DILocation(line: 58, column: 29, scope: !150)
!157 = !DILocation(line: 58, column: 28, scope: !150)
!158 = !DILocation(line: 58, column: 45, scope: !150)
!159 = !DILocation(line: 58, column: 26, scope: !150)
!160 = !DILocation(line: 58, column: 5, scope: !150)
!161 = !DILocation(line: 58, column: 21, scope: !150)
!162 = !DILocation(line: 59, column: 3, scope: !150)
!163 = !DILocation(line: 56, column: 43, scope: !147)
!164 = !DILocation(line: 56, column: 20, scope: !147)
!165 = distinct !{!165, !148, !166, !167}
!166 = !DILocation(line: 59, column: 3, scope: !145)
!167 = !{!"llvm.loop.name", !"VITIS_LOOP_56_1"}
!168 = !DILocation(line: 60, column: 1, scope: !134)
!169 = distinct !DISubprogram(name: "matrix_vector_product_with_bias_input_layer", scope: !10, file: !10, line: 70, type: !170, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !13, !13, !13, !13}
!172 = !DILocalVariable(name: "biases1", arg: 1, scope: !169, file: !10, line: 71, type: !13)
!173 = !DILocation(line: 71, column: 9, scope: !169)
!174 = !DILocalVariable(name: "weights1", arg: 2, scope: !169, file: !10, line: 72, type: !13)
!175 = !DILocation(line: 72, column: 9, scope: !169)
!176 = !DILocalVariable(name: "activations1", arg: 3, scope: !169, file: !10, line: 73, type: !13)
!177 = !DILocation(line: 73, column: 9, scope: !169)
!178 = !DILocalVariable(name: "training_data", arg: 4, scope: !169, file: !10, line: 73, type: !13)
!179 = !DILocation(line: 73, column: 31, scope: !169)
!180 = !DILocation(line: 74, column: 3, scope: !169)
!181 = !DILocalVariable(name: "j", scope: !169, file: !10, line: 74, type: !4)
!182 = !DILocation(line: 74, column: 10, scope: !169)
!183 = !DILocation(line: 75, column: 25, scope: !184)
!184 = distinct !DILexicalBlock(scope: !169, file: !10, line: 75, column: 20)
!185 = !DILocation(line: 75, column: 34, scope: !186)
!186 = distinct !DILexicalBlock(scope: !184, file: !10, line: 75, column: 20)
!187 = !DILocation(line: 75, column: 20, scope: !184)
!188 = !DILocation(line: 76, column: 5, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !10, line: 75, column: 45)
!190 = !DILocation(line: 76, column: 21, scope: !189)
!191 = !DILocalVariable(name: "i", scope: !169, file: !10, line: 74, type: !4)
!192 = !DILocation(line: 74, column: 7, scope: !169)
!193 = !DILocation(line: 77, column: 27, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !10, line: 77, column: 22)
!195 = !DILocation(line: 77, column: 36, scope: !196)
!196 = distinct !DILexicalBlock(scope: !194, file: !10, line: 77, column: 22)
!197 = !DILocation(line: 77, column: 22, scope: !194)
!198 = !DILocation(line: 78, column: 25, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !10, line: 77, column: 47)
!200 = !DILocation(line: 79, column: 36, scope: !199)
!201 = !DILocation(line: 79, column: 41, scope: !199)
!202 = !DILocation(line: 79, column: 25, scope: !199)
!203 = !DILocation(line: 79, column: 48, scope: !199)
!204 = !DILocation(line: 79, column: 46, scope: !199)
!205 = !DILocation(line: 78, column: 41, scope: !199)
!206 = !DILocation(line: 78, column: 7, scope: !199)
!207 = !DILocation(line: 78, column: 23, scope: !199)
!208 = !DILocation(line: 80, column: 5, scope: !199)
!209 = !DILocation(line: 77, column: 43, scope: !196)
!210 = !DILocation(line: 77, column: 22, scope: !196)
!211 = distinct !{!211, !197, !212, !213}
!212 = !DILocation(line: 80, column: 5, scope: !194)
!213 = !{!"llvm.loop.name", !"VITIS_LOOP_77_2"}
!214 = !DILocation(line: 81, column: 3, scope: !189)
!215 = !DILocation(line: 75, column: 41, scope: !186)
!216 = !DILocation(line: 75, column: 20, scope: !186)
!217 = distinct !{!217, !187, !218, !219}
!218 = !DILocation(line: 81, column: 3, scope: !184)
!219 = !{!"llvm.loop.name", !"VITIS_LOOP_75_1"}
!220 = !DILocation(line: 82, column: 25, scope: !221)
!221 = distinct !DILexicalBlock(scope: !169, file: !10, line: 82, column: 20)
!222 = !DILocation(line: 82, column: 34, scope: !223)
!223 = distinct !DILexicalBlock(scope: !221, file: !10, line: 82, column: 20)
!224 = !DILocation(line: 82, column: 20, scope: !221)
!225 = !DILocation(line: 83, column: 23, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !10, line: 82, column: 45)
!227 = !DILocation(line: 83, column: 41, scope: !226)
!228 = !DILocation(line: 83, column: 39, scope: !226)
!229 = !DILocation(line: 83, column: 5, scope: !226)
!230 = !DILocation(line: 83, column: 21, scope: !226)
!231 = !DILocation(line: 84, column: 3, scope: !226)
!232 = !DILocation(line: 82, column: 41, scope: !223)
!233 = !DILocation(line: 82, column: 20, scope: !223)
!234 = distinct !{!234, !224, !235, !236}
!235 = !DILocation(line: 84, column: 3, scope: !221)
!236 = !{!"llvm.loop.name", !"VITIS_LOOP_82_3"}
!237 = !DILocation(line: 85, column: 1, scope: !169)
!238 = distinct !DISubprogram(name: "matrix_vector_product_with_bias_second_layer", scope: !10, file: !10, line: 87, type: !170, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!239 = !DILocalVariable(name: "biases2", arg: 1, scope: !238, file: !10, line: 88, type: !13)
!240 = !DILocation(line: 88, column: 9, scope: !238)
!241 = !DILocalVariable(name: "weights2", arg: 2, scope: !238, file: !10, line: 89, type: !13)
!242 = !DILocation(line: 89, column: 9, scope: !238)
!243 = !DILocalVariable(name: "activations2", arg: 3, scope: !238, file: !10, line: 90, type: !13)
!244 = !DILocation(line: 90, column: 9, scope: !238)
!245 = !DILocalVariable(name: "activations1", arg: 4, scope: !238, file: !10, line: 90, type: !13)
!246 = !DILocation(line: 90, column: 31, scope: !238)
!247 = !DILocation(line: 91, column: 3, scope: !238)
!248 = !DILocalVariable(name: "i", scope: !238, file: !10, line: 91, type: !4)
!249 = !DILocation(line: 91, column: 7, scope: !238)
!250 = !DILocation(line: 92, column: 25, scope: !251)
!251 = distinct !DILexicalBlock(scope: !238, file: !10, line: 92, column: 20)
!252 = !DILocation(line: 92, column: 34, scope: !253)
!253 = distinct !DILexicalBlock(scope: !251, file: !10, line: 92, column: 20)
!254 = !DILocation(line: 92, column: 20, scope: !251)
!255 = !DILocation(line: 93, column: 5, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !10, line: 92, column: 45)
!257 = !DILocation(line: 93, column: 21, scope: !256)
!258 = !DILocalVariable(name: "j", scope: !238, file: !10, line: 91, type: !4)
!259 = !DILocation(line: 91, column: 10, scope: !238)
!260 = !DILocation(line: 94, column: 27, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !10, line: 94, column: 22)
!262 = !DILocation(line: 94, column: 36, scope: !263)
!263 = distinct !DILexicalBlock(scope: !261, file: !10, line: 94, column: 22)
!264 = !DILocation(line: 94, column: 22, scope: !261)
!265 = !DILocation(line: 96, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !10, line: 94, column: 47)
!267 = !DILocation(line: 96, column: 40, scope: !266)
!268 = !DILocation(line: 96, column: 45, scope: !266)
!269 = !DILocation(line: 96, column: 29, scope: !266)
!270 = !DILocation(line: 96, column: 52, scope: !266)
!271 = !DILocation(line: 96, column: 50, scope: !266)
!272 = !DILocation(line: 96, column: 27, scope: !266)
!273 = !DILocation(line: 95, column: 7, scope: !266)
!274 = !DILocation(line: 95, column: 23, scope: !266)
!275 = !DILocation(line: 97, column: 5, scope: !266)
!276 = !DILocation(line: 94, column: 43, scope: !263)
!277 = !DILocation(line: 94, column: 22, scope: !263)
!278 = distinct !{!278, !264, !279, !280}
!279 = !DILocation(line: 97, column: 5, scope: !261)
!280 = !{!"llvm.loop.name", !"VITIS_LOOP_94_2"}
!281 = !DILocation(line: 98, column: 3, scope: !256)
!282 = !DILocation(line: 92, column: 41, scope: !253)
!283 = !DILocation(line: 92, column: 20, scope: !253)
!284 = distinct !{!284, !254, !285, !286}
!285 = !DILocation(line: 98, column: 3, scope: !251)
!286 = !{!"llvm.loop.name", !"VITIS_LOOP_92_1"}
!287 = !DILocation(line: 99, column: 25, scope: !288)
!288 = distinct !DILexicalBlock(scope: !238, file: !10, line: 99, column: 20)
!289 = !DILocation(line: 99, column: 34, scope: !290)
!290 = distinct !DILexicalBlock(scope: !288, file: !10, line: 99, column: 20)
!291 = !DILocation(line: 99, column: 20, scope: !288)
!292 = !DILocation(line: 100, column: 23, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !10, line: 99, column: 45)
!294 = !DILocation(line: 100, column: 41, scope: !293)
!295 = !DILocation(line: 100, column: 39, scope: !293)
!296 = !DILocation(line: 100, column: 5, scope: !293)
!297 = !DILocation(line: 100, column: 21, scope: !293)
!298 = !DILocation(line: 101, column: 3, scope: !293)
!299 = !DILocation(line: 99, column: 41, scope: !290)
!300 = !DILocation(line: 99, column: 20, scope: !290)
!301 = distinct !{!301, !291, !302, !303}
!302 = !DILocation(line: 101, column: 3, scope: !288)
!303 = !{!"llvm.loop.name", !"VITIS_LOOP_99_3"}
!304 = !DILocation(line: 102, column: 1, scope: !238)
!305 = distinct !DISubprogram(name: "matrix_vector_product_with_bias_output_layer", scope: !10, file: !10, line: 104, type: !170, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!306 = !DILocalVariable(name: "biases3", arg: 1, scope: !305, file: !10, line: 105, type: !13)
!307 = !DILocation(line: 105, column: 9, scope: !305)
!308 = !DILocalVariable(name: "weights3", arg: 2, scope: !305, file: !10, line: 106, type: !13)
!309 = !DILocation(line: 106, column: 9, scope: !305)
!310 = !DILocalVariable(name: "activations3", arg: 3, scope: !305, file: !10, line: 107, type: !13)
!311 = !DILocation(line: 107, column: 9, scope: !305)
!312 = !DILocalVariable(name: "activations2", arg: 4, scope: !305, file: !10, line: 107, type: !13)
!313 = !DILocation(line: 107, column: 30, scope: !305)
!314 = !DILocation(line: 108, column: 3, scope: !305)
!315 = !DILocalVariable(name: "j", scope: !305, file: !10, line: 108, type: !4)
!316 = !DILocation(line: 108, column: 10, scope: !305)
!317 = !DILocation(line: 109, column: 26, scope: !318)
!318 = distinct !DILexicalBlock(scope: !305, file: !10, line: 109, column: 21)
!319 = !DILocation(line: 109, column: 35, scope: !320)
!320 = distinct !DILexicalBlock(scope: !318, file: !10, line: 109, column: 21)
!321 = !DILocation(line: 109, column: 21, scope: !318)
!322 = !DILocation(line: 110, column: 5, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !10, line: 109, column: 45)
!324 = !DILocation(line: 110, column: 21, scope: !323)
!325 = !DILocalVariable(name: "i", scope: !305, file: !10, line: 108, type: !4)
!326 = !DILocation(line: 108, column: 7, scope: !305)
!327 = !DILocation(line: 111, column: 28, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !10, line: 111, column: 23)
!329 = !DILocation(line: 111, column: 37, scope: !330)
!330 = distinct !DILexicalBlock(scope: !328, file: !10, line: 111, column: 23)
!331 = !DILocation(line: 111, column: 23, scope: !328)
!332 = !DILocation(line: 113, column: 11, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !10, line: 111, column: 48)
!334 = !DILocation(line: 113, column: 40, scope: !333)
!335 = !DILocation(line: 113, column: 45, scope: !333)
!336 = !DILocation(line: 113, column: 29, scope: !333)
!337 = !DILocation(line: 113, column: 52, scope: !333)
!338 = !DILocation(line: 113, column: 50, scope: !333)
!339 = !DILocation(line: 113, column: 27, scope: !333)
!340 = !DILocation(line: 112, column: 7, scope: !333)
!341 = !DILocation(line: 112, column: 23, scope: !333)
!342 = !DILocation(line: 114, column: 5, scope: !333)
!343 = !DILocation(line: 111, column: 44, scope: !330)
!344 = !DILocation(line: 111, column: 23, scope: !330)
!345 = distinct !{!345, !331, !346, !347}
!346 = !DILocation(line: 114, column: 5, scope: !328)
!347 = !{!"llvm.loop.name", !"VITIS_LOOP_111_2"}
!348 = !DILocation(line: 115, column: 3, scope: !323)
!349 = !DILocation(line: 109, column: 41, scope: !320)
!350 = !DILocation(line: 109, column: 21, scope: !320)
!351 = distinct !{!351, !321, !352, !353}
!352 = !DILocation(line: 115, column: 3, scope: !318)
!353 = !{!"llvm.loop.name", !"VITIS_LOOP_109_1"}
!354 = !DILocation(line: 116, column: 26, scope: !355)
!355 = distinct !DILexicalBlock(scope: !305, file: !10, line: 116, column: 21)
!356 = !DILocation(line: 116, column: 35, scope: !357)
!357 = distinct !DILexicalBlock(scope: !355, file: !10, line: 116, column: 21)
!358 = !DILocation(line: 116, column: 21, scope: !355)
!359 = !DILocation(line: 117, column: 23, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !10, line: 116, column: 45)
!361 = !DILocation(line: 117, column: 41, scope: !360)
!362 = !DILocation(line: 117, column: 39, scope: !360)
!363 = !DILocation(line: 117, column: 5, scope: !360)
!364 = !DILocation(line: 117, column: 21, scope: !360)
!365 = !DILocation(line: 118, column: 3, scope: !360)
!366 = !DILocation(line: 116, column: 41, scope: !357)
!367 = !DILocation(line: 116, column: 21, scope: !357)
!368 = distinct !{!368, !358, !369, !370}
!369 = !DILocation(line: 118, column: 3, scope: !355)
!370 = !{!"llvm.loop.name", !"VITIS_LOOP_116_3"}
!371 = !DILocation(line: 119, column: 1, scope: !305)
!372 = distinct !DISubprogram(name: "take_difference", scope: !10, file: !10, line: 121, type: !170, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!373 = !DILocalVariable(name: "net_outputs", arg: 1, scope: !372, file: !10, line: 121, type: !13)
!374 = !DILocation(line: 121, column: 26, scope: !372)
!375 = !DILocalVariable(name: "training_targets", arg: 2, scope: !372, file: !10, line: 122, type: !13)
!376 = !DILocation(line: 122, column: 26, scope: !372)
!377 = !DILocalVariable(name: "output_difference", arg: 3, scope: !372, file: !10, line: 123, type: !13)
!378 = !DILocation(line: 123, column: 26, scope: !372)
!379 = !DILocalVariable(name: "dactivations3", arg: 4, scope: !372, file: !10, line: 124, type: !13)
!380 = !DILocation(line: 124, column: 26, scope: !372)
!381 = !DILocation(line: 125, column: 3, scope: !372)
!382 = !DILocalVariable(name: "i", scope: !372, file: !10, line: 125, type: !4)
!383 = !DILocation(line: 125, column: 7, scope: !372)
!384 = !DILocation(line: 126, column: 26, scope: !385)
!385 = distinct !DILexicalBlock(scope: !372, file: !10, line: 126, column: 21)
!386 = !DILocation(line: 126, column: 35, scope: !387)
!387 = distinct !DILexicalBlock(scope: !385, file: !10, line: 126, column: 21)
!388 = !DILocation(line: 126, column: 21, scope: !385)
!389 = !DILocation(line: 128, column: 12, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !10, line: 126, column: 45)
!391 = !DILocation(line: 128, column: 30, scope: !390)
!392 = !DILocation(line: 128, column: 28, scope: !390)
!393 = !DILocation(line: 128, column: 51, scope: !390)
!394 = !DILocation(line: 128, column: 59, scope: !390)
!395 = !DILocation(line: 128, column: 57, scope: !390)
!396 = !DILocation(line: 127, column: 5, scope: !390)
!397 = !DILocation(line: 127, column: 26, scope: !390)
!398 = !DILocation(line: 129, column: 3, scope: !390)
!399 = !DILocation(line: 126, column: 41, scope: !387)
!400 = !DILocation(line: 126, column: 21, scope: !387)
!401 = distinct !{!401, !388, !402, !403}
!402 = !DILocation(line: 129, column: 3, scope: !385)
!403 = !{!"llvm.loop.name", !"VITIS_LOOP_126_1"}
!404 = !DILocation(line: 130, column: 1, scope: !372)
!405 = distinct !DISubprogram(name: "get_delta_matrix_weights3", scope: !10, file: !10, line: 132, type: !406, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !13, !13, !13}
!408 = !DILocalVariable(name: "delta_weights3", arg: 1, scope: !405, file: !10, line: 133, type: !13)
!409 = !DILocation(line: 133, column: 9, scope: !405)
!410 = !DILocalVariable(name: "output_difference", arg: 2, scope: !405, file: !10, line: 134, type: !13)
!411 = !DILocation(line: 134, column: 9, scope: !405)
!412 = !DILocalVariable(name: "activations2", arg: 3, scope: !405, file: !10, line: 135, type: !13)
!413 = !DILocation(line: 135, column: 9, scope: !405)
!414 = !DILocation(line: 136, column: 3, scope: !405)
!415 = !DILocalVariable(name: "i", scope: !405, file: !10, line: 136, type: !4)
!416 = !DILocation(line: 136, column: 7, scope: !405)
!417 = !DILocation(line: 137, column: 26, scope: !418)
!418 = distinct !DILexicalBlock(scope: !405, file: !10, line: 137, column: 21)
!419 = !DILocation(line: 137, column: 35, scope: !420)
!420 = distinct !DILexicalBlock(scope: !418, file: !10, line: 137, column: 21)
!421 = !DILocation(line: 137, column: 21, scope: !418)
!422 = !DILocation(line: 137, column: 46, scope: !420)
!423 = !DILocalVariable(name: "j", scope: !405, file: !10, line: 136, type: !4)
!424 = !DILocation(line: 136, column: 10, scope: !405)
!425 = !DILocation(line: 138, column: 28, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !10, line: 138, column: 23)
!427 = distinct !DILexicalBlock(scope: !420, file: !10, line: 137, column: 46)
!428 = !DILocation(line: 138, column: 37, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !10, line: 138, column: 23)
!430 = !DILocation(line: 138, column: 23, scope: !426)
!431 = !DILocation(line: 140, column: 11, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !10, line: 138, column: 47)
!433 = !DILocation(line: 140, column: 29, scope: !432)
!434 = !DILocation(line: 140, column: 27, scope: !432)
!435 = !DILocation(line: 139, column: 24, scope: !432)
!436 = !DILocation(line: 139, column: 28, scope: !432)
!437 = !DILocation(line: 139, column: 7, scope: !432)
!438 = !DILocation(line: 139, column: 33, scope: !432)
!439 = !DILocation(line: 141, column: 5, scope: !432)
!440 = !DILocation(line: 138, column: 43, scope: !429)
!441 = !DILocation(line: 138, column: 23, scope: !429)
!442 = distinct !{!442, !430, !443, !444}
!443 = !DILocation(line: 141, column: 5, scope: !426)
!444 = !{!"llvm.loop.name", !"VITIS_LOOP_138_2"}
!445 = !DILocation(line: 142, column: 3, scope: !427)
!446 = !DILocation(line: 137, column: 42, scope: !420)
!447 = !DILocation(line: 137, column: 21, scope: !420)
!448 = distinct !{!448, !421, !449, !450}
!449 = !DILocation(line: 142, column: 3, scope: !418)
!450 = !{!"llvm.loop.name", !"VITIS_LOOP_137_1"}
!451 = !DILocation(line: 143, column: 1, scope: !405)
!452 = distinct !DISubprogram(name: "get_oracle_activations2", scope: !10, file: !10, line: 145, type: !170, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!453 = !DILocalVariable(name: "weights3", arg: 1, scope: !452, file: !10, line: 145, type: !13)
!454 = !DILocation(line: 145, column: 34, scope: !452)
!455 = !DILocalVariable(name: "output_difference", arg: 2, scope: !452, file: !10, line: 146, type: !13)
!456 = !DILocation(line: 146, column: 34, scope: !452)
!457 = !DILocalVariable(name: "oracle_activations2", arg: 3, scope: !452, file: !10, line: 147, type: !13)
!458 = !DILocation(line: 147, column: 34, scope: !452)
!459 = !DILocalVariable(name: "dactivations2", arg: 4, scope: !452, file: !10, line: 148, type: !13)
!460 = !DILocation(line: 148, column: 34, scope: !452)
!461 = !DILocation(line: 149, column: 3, scope: !452)
!462 = !DILocalVariable(name: "i", scope: !452, file: !10, line: 149, type: !4)
!463 = !DILocation(line: 149, column: 7, scope: !452)
!464 = !DILocation(line: 150, column: 26, scope: !465)
!465 = distinct !DILexicalBlock(scope: !452, file: !10, line: 150, column: 21)
!466 = !DILocation(line: 150, column: 35, scope: !467)
!467 = distinct !DILexicalBlock(scope: !465, file: !10, line: 150, column: 21)
!468 = !DILocation(line: 150, column: 21, scope: !465)
!469 = !DILocation(line: 151, column: 5, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !10, line: 150, column: 46)
!471 = !DILocation(line: 151, column: 28, scope: !470)
!472 = !DILocalVariable(name: "j", scope: !452, file: !10, line: 149, type: !4)
!473 = !DILocation(line: 149, column: 10, scope: !452)
!474 = !DILocation(line: 152, column: 28, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !10, line: 152, column: 23)
!476 = !DILocation(line: 152, column: 37, scope: !477)
!477 = distinct !DILexicalBlock(scope: !475, file: !10, line: 152, column: 23)
!478 = !DILocation(line: 152, column: 23, scope: !475)
!479 = !DILocation(line: 154, column: 11, scope: !480)
!480 = distinct !DILexicalBlock(scope: !477, file: !10, line: 152, column: 47)
!481 = !DILocation(line: 155, column: 11, scope: !480)
!482 = !DILocation(line: 155, column: 45, scope: !480)
!483 = !DILocation(line: 155, column: 49, scope: !480)
!484 = !DILocation(line: 155, column: 34, scope: !480)
!485 = !DILocation(line: 155, column: 32, scope: !480)
!486 = !DILocation(line: 154, column: 34, scope: !480)
!487 = !DILocation(line: 153, column: 7, scope: !480)
!488 = !DILocation(line: 153, column: 30, scope: !480)
!489 = !DILocation(line: 156, column: 5, scope: !480)
!490 = !DILocation(line: 152, column: 43, scope: !477)
!491 = !DILocation(line: 152, column: 23, scope: !477)
!492 = distinct !{!492, !478, !493, !494}
!493 = !DILocation(line: 156, column: 5, scope: !475)
!494 = !{!"llvm.loop.name", !"VITIS_LOOP_152_2"}
!495 = !DILocation(line: 157, column: 30, scope: !470)
!496 = !DILocation(line: 157, column: 55, scope: !470)
!497 = !DILocation(line: 157, column: 53, scope: !470)
!498 = !DILocation(line: 157, column: 5, scope: !470)
!499 = !DILocation(line: 157, column: 28, scope: !470)
!500 = !DILocation(line: 158, column: 3, scope: !470)
!501 = !DILocation(line: 150, column: 42, scope: !467)
!502 = !DILocation(line: 150, column: 21, scope: !467)
!503 = distinct !{!503, !468, !504, !505}
!504 = !DILocation(line: 158, column: 3, scope: !465)
!505 = !{!"llvm.loop.name", !"VITIS_LOOP_150_1"}
!506 = !DILocation(line: 159, column: 1, scope: !452)
!507 = distinct !DISubprogram(name: "get_delta_matrix_weights2", scope: !10, file: !10, line: 161, type: !406, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!508 = !DILocalVariable(name: "delta_weights2", arg: 1, scope: !507, file: !10, line: 162, type: !13)
!509 = !DILocation(line: 162, column: 9, scope: !507)
!510 = !DILocalVariable(name: "oracle_activations2", arg: 2, scope: !507, file: !10, line: 163, type: !13)
!511 = !DILocation(line: 163, column: 9, scope: !507)
!512 = !DILocalVariable(name: "activations1", arg: 3, scope: !507, file: !10, line: 164, type: !13)
!513 = !DILocation(line: 164, column: 9, scope: !507)
!514 = !DILocation(line: 165, column: 3, scope: !507)
!515 = !DILocalVariable(name: "i", scope: !507, file: !10, line: 165, type: !4)
!516 = !DILocation(line: 165, column: 7, scope: !507)
!517 = !DILocation(line: 166, column: 26, scope: !518)
!518 = distinct !DILexicalBlock(scope: !507, file: !10, line: 166, column: 21)
!519 = !DILocation(line: 166, column: 35, scope: !520)
!520 = distinct !DILexicalBlock(scope: !518, file: !10, line: 166, column: 21)
!521 = !DILocation(line: 166, column: 21, scope: !518)
!522 = !DILocation(line: 166, column: 46, scope: !520)
!523 = !DILocalVariable(name: "j", scope: !507, file: !10, line: 165, type: !4)
!524 = !DILocation(line: 165, column: 10, scope: !507)
!525 = !DILocation(line: 167, column: 28, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !10, line: 167, column: 23)
!527 = distinct !DILexicalBlock(scope: !520, file: !10, line: 166, column: 46)
!528 = !DILocation(line: 167, column: 37, scope: !529)
!529 = distinct !DILexicalBlock(scope: !526, file: !10, line: 167, column: 23)
!530 = !DILocation(line: 167, column: 23, scope: !526)
!531 = !DILocation(line: 169, column: 11, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !10, line: 167, column: 48)
!533 = !DILocation(line: 169, column: 29, scope: !532)
!534 = !DILocation(line: 169, column: 27, scope: !532)
!535 = !DILocation(line: 168, column: 24, scope: !532)
!536 = !DILocation(line: 168, column: 29, scope: !532)
!537 = !DILocation(line: 168, column: 7, scope: !532)
!538 = !DILocation(line: 168, column: 34, scope: !532)
!539 = !DILocation(line: 170, column: 5, scope: !532)
!540 = !DILocation(line: 167, column: 44, scope: !529)
!541 = !DILocation(line: 167, column: 23, scope: !529)
!542 = distinct !{!542, !530, !543, !544}
!543 = !DILocation(line: 170, column: 5, scope: !526)
!544 = !{!"llvm.loop.name", !"VITIS_LOOP_167_2"}
!545 = !DILocation(line: 171, column: 3, scope: !527)
!546 = !DILocation(line: 166, column: 42, scope: !520)
!547 = !DILocation(line: 166, column: 21, scope: !520)
!548 = distinct !{!548, !521, !549, !550}
!549 = !DILocation(line: 171, column: 3, scope: !518)
!550 = !{!"llvm.loop.name", !"VITIS_LOOP_166_1"}
!551 = !DILocation(line: 172, column: 1, scope: !507)
!552 = distinct !DISubprogram(name: "get_oracle_activations1", scope: !10, file: !10, line: 174, type: !170, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!553 = !DILocalVariable(name: "weights2", arg: 1, scope: !552, file: !10, line: 174, type: !13)
!554 = !DILocation(line: 174, column: 34, scope: !552)
!555 = !DILocalVariable(name: "oracle_activations2", arg: 2, scope: !552, file: !10, line: 175, type: !13)
!556 = !DILocation(line: 175, column: 34, scope: !552)
!557 = !DILocalVariable(name: "oracle_activations1", arg: 3, scope: !552, file: !10, line: 176, type: !13)
!558 = !DILocation(line: 176, column: 34, scope: !552)
!559 = !DILocalVariable(name: "dactivations1", arg: 4, scope: !552, file: !10, line: 177, type: !13)
!560 = !DILocation(line: 177, column: 34, scope: !552)
!561 = !DILocation(line: 178, column: 3, scope: !552)
!562 = !DILocalVariable(name: "i", scope: !552, file: !10, line: 178, type: !4)
!563 = !DILocation(line: 178, column: 7, scope: !552)
!564 = !DILocation(line: 179, column: 26, scope: !565)
!565 = distinct !DILexicalBlock(scope: !552, file: !10, line: 179, column: 21)
!566 = !DILocation(line: 179, column: 35, scope: !567)
!567 = distinct !DILexicalBlock(scope: !565, file: !10, line: 179, column: 21)
!568 = !DILocation(line: 179, column: 21, scope: !565)
!569 = !DILocation(line: 180, column: 5, scope: !570)
!570 = distinct !DILexicalBlock(scope: !567, file: !10, line: 179, column: 46)
!571 = !DILocation(line: 180, column: 28, scope: !570)
!572 = !DILocalVariable(name: "j", scope: !552, file: !10, line: 178, type: !4)
!573 = !DILocation(line: 178, column: 10, scope: !552)
!574 = !DILocation(line: 181, column: 28, scope: !575)
!575 = distinct !DILexicalBlock(scope: !570, file: !10, line: 181, column: 23)
!576 = !DILocation(line: 181, column: 37, scope: !577)
!577 = distinct !DILexicalBlock(scope: !575, file: !10, line: 181, column: 23)
!578 = !DILocation(line: 181, column: 23, scope: !575)
!579 = !DILocation(line: 183, column: 11, scope: !580)
!580 = distinct !DILexicalBlock(scope: !577, file: !10, line: 181, column: 48)
!581 = !DILocation(line: 184, column: 11, scope: !580)
!582 = !DILocation(line: 184, column: 47, scope: !580)
!583 = !DILocation(line: 184, column: 52, scope: !580)
!584 = !DILocation(line: 184, column: 36, scope: !580)
!585 = !DILocation(line: 184, column: 34, scope: !580)
!586 = !DILocation(line: 183, column: 34, scope: !580)
!587 = !DILocation(line: 182, column: 7, scope: !580)
!588 = !DILocation(line: 182, column: 30, scope: !580)
!589 = !DILocation(line: 185, column: 5, scope: !580)
!590 = !DILocation(line: 181, column: 44, scope: !577)
!591 = !DILocation(line: 181, column: 23, scope: !577)
!592 = distinct !{!592, !578, !593, !594}
!593 = !DILocation(line: 185, column: 5, scope: !575)
!594 = !{!"llvm.loop.name", !"VITIS_LOOP_181_2"}
!595 = !DILocation(line: 186, column: 30, scope: !570)
!596 = !DILocation(line: 186, column: 55, scope: !570)
!597 = !DILocation(line: 186, column: 53, scope: !570)
!598 = !DILocation(line: 186, column: 5, scope: !570)
!599 = !DILocation(line: 186, column: 28, scope: !570)
!600 = !DILocation(line: 187, column: 3, scope: !570)
!601 = !DILocation(line: 179, column: 42, scope: !567)
!602 = !DILocation(line: 179, column: 21, scope: !567)
!603 = distinct !{!603, !568, !604, !605}
!604 = !DILocation(line: 187, column: 3, scope: !565)
!605 = !{!"llvm.loop.name", !"VITIS_LOOP_179_1"}
!606 = !DILocation(line: 188, column: 1, scope: !552)
!607 = distinct !DISubprogram(name: "get_delta_matrix_weights1", scope: !10, file: !10, line: 190, type: !406, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!608 = !DILocalVariable(name: "delta_weights1", arg: 1, scope: !607, file: !10, line: 191, type: !13)
!609 = !DILocation(line: 191, column: 9, scope: !607)
!610 = !DILocalVariable(name: "oracle_activations1", arg: 2, scope: !607, file: !10, line: 192, type: !13)
!611 = !DILocation(line: 192, column: 9, scope: !607)
!612 = !DILocalVariable(name: "training_data", arg: 3, scope: !607, file: !10, line: 193, type: !13)
!613 = !DILocation(line: 193, column: 9, scope: !607)
!614 = !DILocation(line: 194, column: 3, scope: !607)
!615 = !DILocalVariable(name: "i", scope: !607, file: !10, line: 194, type: !4)
!616 = !DILocation(line: 194, column: 7, scope: !607)
!617 = !DILocation(line: 195, column: 26, scope: !618)
!618 = distinct !DILexicalBlock(scope: !607, file: !10, line: 195, column: 21)
!619 = !DILocation(line: 195, column: 35, scope: !620)
!620 = distinct !DILexicalBlock(scope: !618, file: !10, line: 195, column: 21)
!621 = !DILocation(line: 195, column: 21, scope: !618)
!622 = !DILocation(line: 195, column: 46, scope: !620)
!623 = !DILocalVariable(name: "j", scope: !607, file: !10, line: 194, type: !4)
!624 = !DILocation(line: 194, column: 10, scope: !607)
!625 = !DILocation(line: 196, column: 28, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !10, line: 196, column: 23)
!627 = distinct !DILexicalBlock(scope: !620, file: !10, line: 195, column: 46)
!628 = !DILocation(line: 196, column: 37, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !10, line: 196, column: 23)
!630 = !DILocation(line: 196, column: 23, scope: !626)
!631 = !DILocation(line: 198, column: 11, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !10, line: 196, column: 48)
!633 = !DILocation(line: 198, column: 30, scope: !632)
!634 = !DILocation(line: 198, column: 28, scope: !632)
!635 = !DILocation(line: 197, column: 24, scope: !632)
!636 = !DILocation(line: 197, column: 29, scope: !632)
!637 = !DILocation(line: 197, column: 7, scope: !632)
!638 = !DILocation(line: 197, column: 34, scope: !632)
!639 = !DILocation(line: 199, column: 5, scope: !632)
!640 = !DILocation(line: 196, column: 44, scope: !629)
!641 = !DILocation(line: 196, column: 23, scope: !629)
!642 = distinct !{!642, !630, !643, !644}
!643 = !DILocation(line: 199, column: 5, scope: !626)
!644 = !{!"llvm.loop.name", !"VITIS_LOOP_196_2"}
!645 = !DILocation(line: 200, column: 3, scope: !627)
!646 = !DILocation(line: 195, column: 42, scope: !620)
!647 = !DILocation(line: 195, column: 21, scope: !620)
!648 = distinct !{!648, !621, !649, !650}
!649 = !DILocation(line: 200, column: 3, scope: !618)
!650 = !{!"llvm.loop.name", !"VITIS_LOOP_195_1"}
!651 = !DILocation(line: 201, column: 1, scope: !607)
!652 = distinct !DISubprogram(name: "update_weights", scope: !10, file: !10, line: 203, type: !653, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!655 = !DILocalVariable(name: "weights1", arg: 1, scope: !652, file: !10, line: 203, type: !13)
!656 = !DILocation(line: 203, column: 25, scope: !652)
!657 = !DILocalVariable(name: "weights2", arg: 2, scope: !652, file: !10, line: 204, type: !13)
!658 = !DILocation(line: 204, column: 25, scope: !652)
!659 = !DILocalVariable(name: "weights3", arg: 3, scope: !652, file: !10, line: 205, type: !13)
!660 = !DILocation(line: 205, column: 25, scope: !652)
!661 = !DILocalVariable(name: "delta_weights1", arg: 4, scope: !652, file: !10, line: 206, type: !13)
!662 = !DILocation(line: 206, column: 25, scope: !652)
!663 = !DILocalVariable(name: "delta_weights2", arg: 5, scope: !652, file: !10, line: 207, type: !13)
!664 = !DILocation(line: 207, column: 25, scope: !652)
!665 = !DILocalVariable(name: "delta_weights3", arg: 6, scope: !652, file: !10, line: 208, type: !13)
!666 = !DILocation(line: 208, column: 25, scope: !652)
!667 = !DILocalVariable(name: "biases1", arg: 7, scope: !652, file: !10, line: 209, type: !13)
!668 = !DILocation(line: 209, column: 25, scope: !652)
!669 = !DILocalVariable(name: "biases2", arg: 8, scope: !652, file: !10, line: 209, type: !13)
!670 = !DILocation(line: 209, column: 42, scope: !652)
!671 = !DILocalVariable(name: "biases3", arg: 9, scope: !652, file: !10, line: 210, type: !13)
!672 = !DILocation(line: 210, column: 25, scope: !652)
!673 = !DILocalVariable(name: "oracle_activations1", arg: 10, scope: !652, file: !10, line: 211, type: !13)
!674 = !DILocation(line: 211, column: 25, scope: !652)
!675 = !DILocalVariable(name: "oracle_activations2", arg: 11, scope: !652, file: !10, line: 212, type: !13)
!676 = !DILocation(line: 212, column: 25, scope: !652)
!677 = !DILocalVariable(name: "output_difference", arg: 12, scope: !652, file: !10, line: 213, type: !13)
!678 = !DILocation(line: 213, column: 25, scope: !652)
!679 = !DILocalVariable(name: "norm", scope: !652, file: !10, line: 215, type: !4)
!680 = !DILocation(line: 215, column: 7, scope: !652)
!681 = !DILocalVariable(name: "bias_norm", scope: !652, file: !10, line: 215, type: !4)
!682 = !DILocation(line: 215, column: 13, scope: !652)
!683 = !DILocation(line: 217, column: 3, scope: !652)
!684 = !DILocalVariable(name: "i", scope: !652, file: !10, line: 214, type: !4)
!685 = !DILocation(line: 214, column: 7, scope: !652)
!686 = !DILocation(line: 219, column: 26, scope: !687)
!687 = distinct !DILexicalBlock(scope: !652, file: !10, line: 219, column: 21)
!688 = !DILocation(line: 219, column: 35, scope: !689)
!689 = distinct !DILexicalBlock(scope: !687, file: !10, line: 219, column: 21)
!690 = !DILocation(line: 219, column: 21, scope: !687)
!691 = !DILocation(line: 219, column: 46, scope: !689)
!692 = !DILocalVariable(name: "j", scope: !652, file: !10, line: 214, type: !4)
!693 = !DILocation(line: 214, column: 10, scope: !652)
!694 = !DILocation(line: 220, column: 28, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !10, line: 220, column: 23)
!696 = distinct !DILexicalBlock(scope: !689, file: !10, line: 219, column: 46)
!697 = !DILocation(line: 220, column: 37, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !10, line: 220, column: 23)
!699 = !DILocation(line: 220, column: 23, scope: !695)
!700 = !DILocation(line: 222, column: 22, scope: !701)
!701 = distinct !DILexicalBlock(scope: !698, file: !10, line: 220, column: 48)
!702 = !DILocation(line: 222, column: 27, scope: !701)
!703 = !DILocation(line: 222, column: 11, scope: !701)
!704 = !DILocation(line: 223, column: 29, scope: !701)
!705 = !DILocation(line: 223, column: 34, scope: !701)
!706 = !DILocation(line: 223, column: 12, scope: !701)
!707 = !DILocation(line: 223, column: 39, scope: !701)
!708 = !DILocation(line: 222, column: 32, scope: !701)
!709 = !DILocation(line: 221, column: 18, scope: !701)
!710 = !DILocation(line: 221, column: 23, scope: !701)
!711 = !DILocation(line: 221, column: 7, scope: !701)
!712 = !DILocation(line: 221, column: 28, scope: !701)
!713 = !DILocation(line: 225, column: 22, scope: !701)
!714 = !DILocation(line: 225, column: 27, scope: !701)
!715 = !DILocation(line: 225, column: 11, scope: !701)
!716 = !DILocation(line: 225, column: 45, scope: !701)
!717 = !DILocation(line: 225, column: 50, scope: !701)
!718 = !DILocation(line: 225, column: 34, scope: !701)
!719 = !DILocation(line: 225, column: 32, scope: !701)
!720 = !DILocation(line: 224, column: 12, scope: !701)
!721 = !DILocation(line: 226, column: 5, scope: !701)
!722 = !DILocation(line: 220, column: 44, scope: !698)
!723 = !DILocation(line: 220, column: 23, scope: !698)
!724 = distinct !{!724, !699, !725, !726}
!725 = !DILocation(line: 226, column: 5, scope: !695)
!726 = !{!"llvm.loop.name", !"VITIS_LOOP_220_2"}
!727 = !DILocation(line: 227, column: 3, scope: !696)
!728 = !DILocation(line: 219, column: 42, scope: !689)
!729 = !DILocation(line: 219, column: 21, scope: !689)
!730 = distinct !{!730, !690, !731, !732}
!731 = !DILocation(line: 227, column: 3, scope: !687)
!732 = !{!"llvm.loop.name", !"VITIS_LOOP_219_1"}
!733 = !DILocation(line: 228, column: 26, scope: !734)
!734 = distinct !DILexicalBlock(scope: !652, file: !10, line: 228, column: 21)
!735 = !DILocation(line: 228, column: 35, scope: !736)
!736 = distinct !DILexicalBlock(scope: !734, file: !10, line: 228, column: 21)
!737 = !DILocation(line: 228, column: 21, scope: !734)
!738 = !DILocation(line: 229, column: 18, scope: !739)
!739 = distinct !DILexicalBlock(scope: !736, file: !10, line: 228, column: 46)
!740 = !DILocation(line: 229, column: 32, scope: !739)
!741 = !DILocation(line: 229, column: 55, scope: !739)
!742 = !DILocation(line: 229, column: 29, scope: !739)
!743 = !DILocation(line: 229, column: 5, scope: !739)
!744 = !DILocation(line: 229, column: 16, scope: !739)
!745 = !DILocation(line: 230, column: 18, scope: !739)
!746 = !DILocation(line: 230, column: 31, scope: !739)
!747 = !DILocation(line: 230, column: 29, scope: !739)
!748 = !DILocation(line: 230, column: 15, scope: !739)
!749 = !DILocation(line: 231, column: 3, scope: !739)
!750 = !DILocation(line: 228, column: 42, scope: !736)
!751 = !DILocation(line: 228, column: 21, scope: !736)
!752 = distinct !{!752, !737, !753, !754}
!753 = !DILocation(line: 231, column: 3, scope: !734)
!754 = !{!"llvm.loop.name", !"VITIS_LOOP_228_3"}
!755 = !DILocation(line: 234, column: 3, scope: !652)
!756 = !DILocation(line: 236, column: 26, scope: !757)
!757 = distinct !DILexicalBlock(scope: !652, file: !10, line: 236, column: 21)
!758 = !DILocation(line: 236, column: 35, scope: !759)
!759 = distinct !DILexicalBlock(scope: !757, file: !10, line: 236, column: 21)
!760 = !DILocation(line: 236, column: 21, scope: !757)
!761 = !DILocation(line: 236, column: 46, scope: !759)
!762 = !DILocation(line: 237, column: 28, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !10, line: 237, column: 23)
!764 = distinct !DILexicalBlock(scope: !759, file: !10, line: 236, column: 46)
!765 = !DILocation(line: 237, column: 37, scope: !766)
!766 = distinct !DILexicalBlock(scope: !763, file: !10, line: 237, column: 23)
!767 = !DILocation(line: 237, column: 23, scope: !763)
!768 = !DILocation(line: 239, column: 11, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !10, line: 237, column: 48)
!770 = !DILocation(line: 239, column: 31, scope: !769)
!771 = !DILocation(line: 239, column: 36, scope: !769)
!772 = !DILocation(line: 239, column: 20, scope: !769)
!773 = !DILocation(line: 239, column: 41, scope: !769)
!774 = !DILocation(line: 239, column: 61, scope: !769)
!775 = !DILocation(line: 239, column: 66, scope: !769)
!776 = !DILocation(line: 239, column: 50, scope: !769)
!777 = !DILocation(line: 238, column: 18, scope: !769)
!778 = !DILocation(line: 238, column: 23, scope: !769)
!779 = !DILocation(line: 238, column: 7, scope: !769)
!780 = !DILocation(line: 238, column: 28, scope: !769)
!781 = !DILocation(line: 240, column: 5, scope: !769)
!782 = !DILocation(line: 237, column: 44, scope: !766)
!783 = !DILocation(line: 237, column: 23, scope: !766)
!784 = distinct !{!784, !767, !785, !786}
!785 = !DILocation(line: 240, column: 5, scope: !763)
!786 = !{!"llvm.loop.name", !"VITIS_LOOP_237_5"}
!787 = !DILocation(line: 241, column: 3, scope: !764)
!788 = !DILocation(line: 236, column: 42, scope: !759)
!789 = !DILocation(line: 236, column: 21, scope: !759)
!790 = distinct !{!790, !760, !791, !792}
!791 = !DILocation(line: 241, column: 3, scope: !757)
!792 = !{!"llvm.loop.name", !"VITIS_LOOP_236_4"}
!793 = !DILocation(line: 242, column: 26, scope: !794)
!794 = distinct !DILexicalBlock(scope: !652, file: !10, line: 242, column: 21)
!795 = !DILocation(line: 242, column: 35, scope: !796)
!796 = distinct !DILexicalBlock(scope: !794, file: !10, line: 242, column: 21)
!797 = !DILocation(line: 242, column: 21, scope: !794)
!798 = !DILocation(line: 243, column: 18, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !10, line: 242, column: 46)
!800 = !DILocation(line: 243, column: 32, scope: !799)
!801 = !DILocation(line: 243, column: 43, scope: !799)
!802 = !DILocation(line: 243, column: 57, scope: !799)
!803 = !DILocation(line: 243, column: 5, scope: !799)
!804 = !DILocation(line: 243, column: 16, scope: !799)
!805 = !DILocation(line: 244, column: 3, scope: !799)
!806 = !DILocation(line: 242, column: 42, scope: !796)
!807 = !DILocation(line: 242, column: 21, scope: !796)
!808 = distinct !{!808, !797, !809, !810}
!809 = !DILocation(line: 244, column: 3, scope: !794)
!810 = !{!"llvm.loop.name", !"VITIS_LOOP_242_6"}
!811 = !DILocation(line: 247, column: 3, scope: !652)
!812 = !DILocation(line: 249, column: 26, scope: !813)
!813 = distinct !DILexicalBlock(scope: !652, file: !10, line: 249, column: 21)
!814 = !DILocation(line: 249, column: 35, scope: !815)
!815 = distinct !DILexicalBlock(scope: !813, file: !10, line: 249, column: 21)
!816 = !DILocation(line: 249, column: 21, scope: !813)
!817 = !DILocation(line: 249, column: 46, scope: !815)
!818 = !DILocation(line: 250, column: 28, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !10, line: 250, column: 23)
!820 = distinct !DILexicalBlock(scope: !815, file: !10, line: 249, column: 46)
!821 = !DILocation(line: 250, column: 37, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !10, line: 250, column: 23)
!823 = !DILocation(line: 250, column: 23, scope: !819)
!824 = !DILocation(line: 252, column: 22, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !10, line: 250, column: 48)
!826 = !DILocation(line: 252, column: 27, scope: !825)
!827 = !DILocation(line: 252, column: 11, scope: !825)
!828 = !DILocation(line: 253, column: 29, scope: !825)
!829 = !DILocation(line: 253, column: 34, scope: !825)
!830 = !DILocation(line: 253, column: 12, scope: !825)
!831 = !DILocation(line: 253, column: 39, scope: !825)
!832 = !DILocation(line: 252, column: 32, scope: !825)
!833 = !DILocation(line: 251, column: 18, scope: !825)
!834 = !DILocation(line: 251, column: 23, scope: !825)
!835 = !DILocation(line: 251, column: 7, scope: !825)
!836 = !DILocation(line: 251, column: 28, scope: !825)
!837 = !DILocation(line: 255, column: 22, scope: !825)
!838 = !DILocation(line: 255, column: 27, scope: !825)
!839 = !DILocation(line: 255, column: 11, scope: !825)
!840 = !DILocation(line: 255, column: 45, scope: !825)
!841 = !DILocation(line: 255, column: 50, scope: !825)
!842 = !DILocation(line: 255, column: 34, scope: !825)
!843 = !DILocation(line: 255, column: 32, scope: !825)
!844 = !DILocation(line: 254, column: 12, scope: !825)
!845 = !DILocation(line: 256, column: 5, scope: !825)
!846 = !DILocation(line: 250, column: 44, scope: !822)
!847 = !DILocation(line: 250, column: 23, scope: !822)
!848 = distinct !{!848, !823, !849, !850}
!849 = !DILocation(line: 256, column: 5, scope: !819)
!850 = !{!"llvm.loop.name", !"VITIS_LOOP_250_8"}
!851 = !DILocation(line: 257, column: 3, scope: !820)
!852 = !DILocation(line: 249, column: 42, scope: !815)
!853 = !DILocation(line: 249, column: 21, scope: !815)
!854 = distinct !{!854, !816, !855, !856}
!855 = !DILocation(line: 257, column: 3, scope: !813)
!856 = !{!"llvm.loop.name", !"VITIS_LOOP_249_7"}
!857 = !DILocation(line: 258, column: 26, scope: !858)
!858 = distinct !DILexicalBlock(scope: !652, file: !10, line: 258, column: 21)
!859 = !DILocation(line: 258, column: 35, scope: !860)
!860 = distinct !DILexicalBlock(scope: !858, file: !10, line: 258, column: 21)
!861 = !DILocation(line: 258, column: 21, scope: !858)
!862 = !DILocation(line: 259, column: 18, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !10, line: 258, column: 46)
!864 = !DILocation(line: 259, column: 32, scope: !863)
!865 = !DILocation(line: 259, column: 55, scope: !863)
!866 = !DILocation(line: 259, column: 29, scope: !863)
!867 = !DILocation(line: 259, column: 5, scope: !863)
!868 = !DILocation(line: 259, column: 16, scope: !863)
!869 = !DILocation(line: 260, column: 18, scope: !863)
!870 = !DILocation(line: 260, column: 31, scope: !863)
!871 = !DILocation(line: 260, column: 29, scope: !863)
!872 = !DILocation(line: 260, column: 15, scope: !863)
!873 = !DILocation(line: 261, column: 3, scope: !863)
!874 = !DILocation(line: 258, column: 42, scope: !860)
!875 = !DILocation(line: 258, column: 21, scope: !860)
!876 = distinct !{!876, !861, !877, !878}
!877 = !DILocation(line: 261, column: 3, scope: !858)
!878 = !{!"llvm.loop.name", !"VITIS_LOOP_258_9"}
!879 = !DILocation(line: 264, column: 3, scope: !652)
!880 = !DILocation(line: 266, column: 27, scope: !881)
!881 = distinct !DILexicalBlock(scope: !652, file: !10, line: 266, column: 22)
!882 = !DILocation(line: 266, column: 36, scope: !883)
!883 = distinct !DILexicalBlock(scope: !881, file: !10, line: 266, column: 22)
!884 = !DILocation(line: 266, column: 22, scope: !881)
!885 = !DILocation(line: 266, column: 47, scope: !883)
!886 = !DILocation(line: 267, column: 29, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !10, line: 267, column: 24)
!888 = distinct !DILexicalBlock(scope: !883, file: !10, line: 266, column: 47)
!889 = !DILocation(line: 267, column: 38, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !10, line: 267, column: 24)
!891 = !DILocation(line: 267, column: 24, scope: !887)
!892 = !DILocation(line: 269, column: 11, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !10, line: 267, column: 49)
!894 = !DILocation(line: 269, column: 31, scope: !893)
!895 = !DILocation(line: 269, column: 36, scope: !893)
!896 = !DILocation(line: 269, column: 20, scope: !893)
!897 = !DILocation(line: 269, column: 41, scope: !893)
!898 = !DILocation(line: 269, column: 61, scope: !893)
!899 = !DILocation(line: 269, column: 66, scope: !893)
!900 = !DILocation(line: 269, column: 50, scope: !893)
!901 = !DILocation(line: 268, column: 18, scope: !893)
!902 = !DILocation(line: 268, column: 23, scope: !893)
!903 = !DILocation(line: 268, column: 7, scope: !893)
!904 = !DILocation(line: 268, column: 28, scope: !893)
!905 = !DILocation(line: 270, column: 5, scope: !893)
!906 = !DILocation(line: 267, column: 45, scope: !890)
!907 = !DILocation(line: 267, column: 24, scope: !890)
!908 = distinct !{!908, !891, !909, !910}
!909 = !DILocation(line: 270, column: 5, scope: !887)
!910 = !{!"llvm.loop.name", !"VITIS_LOOP_267_11"}
!911 = !DILocation(line: 271, column: 3, scope: !888)
!912 = !DILocation(line: 266, column: 43, scope: !883)
!913 = !DILocation(line: 266, column: 22, scope: !883)
!914 = distinct !{!914, !884, !915, !916}
!915 = !DILocation(line: 271, column: 3, scope: !881)
!916 = !{!"llvm.loop.name", !"VITIS_LOOP_266_10"}
!917 = !DILocation(line: 272, column: 27, scope: !918)
!918 = distinct !DILexicalBlock(scope: !652, file: !10, line: 272, column: 22)
!919 = !DILocation(line: 272, column: 36, scope: !920)
!920 = distinct !DILexicalBlock(scope: !918, file: !10, line: 272, column: 22)
!921 = !DILocation(line: 272, column: 22, scope: !918)
!922 = !DILocation(line: 273, column: 18, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !10, line: 272, column: 47)
!924 = !DILocation(line: 273, column: 32, scope: !923)
!925 = !DILocation(line: 273, column: 43, scope: !923)
!926 = !DILocation(line: 273, column: 57, scope: !923)
!927 = !DILocation(line: 273, column: 5, scope: !923)
!928 = !DILocation(line: 273, column: 16, scope: !923)
!929 = !DILocation(line: 274, column: 3, scope: !923)
!930 = !DILocation(line: 272, column: 43, scope: !920)
!931 = !DILocation(line: 272, column: 22, scope: !920)
!932 = distinct !{!932, !921, !933, !934}
!933 = !DILocation(line: 274, column: 3, scope: !918)
!934 = !{!"llvm.loop.name", !"VITIS_LOOP_272_12"}
!935 = !DILocation(line: 277, column: 3, scope: !652)
!936 = !DILocation(line: 279, column: 27, scope: !937)
!937 = distinct !DILexicalBlock(scope: !652, file: !10, line: 279, column: 22)
!938 = !DILocation(line: 279, column: 36, scope: !939)
!939 = distinct !DILexicalBlock(scope: !937, file: !10, line: 279, column: 22)
!940 = !DILocation(line: 279, column: 22, scope: !937)
!941 = !DILocation(line: 279, column: 47, scope: !939)
!942 = !DILocation(line: 280, column: 29, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !10, line: 280, column: 24)
!944 = distinct !DILexicalBlock(scope: !939, file: !10, line: 279, column: 47)
!945 = !DILocation(line: 280, column: 38, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !10, line: 280, column: 24)
!947 = !DILocation(line: 280, column: 24, scope: !943)
!948 = !DILocation(line: 282, column: 22, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !10, line: 280, column: 48)
!950 = !DILocation(line: 282, column: 26, scope: !949)
!951 = !DILocation(line: 282, column: 11, scope: !949)
!952 = !DILocation(line: 283, column: 29, scope: !949)
!953 = !DILocation(line: 283, column: 33, scope: !949)
!954 = !DILocation(line: 283, column: 12, scope: !949)
!955 = !DILocation(line: 283, column: 38, scope: !949)
!956 = !DILocation(line: 282, column: 31, scope: !949)
!957 = !DILocation(line: 281, column: 18, scope: !949)
!958 = !DILocation(line: 281, column: 22, scope: !949)
!959 = !DILocation(line: 281, column: 7, scope: !949)
!960 = !DILocation(line: 281, column: 27, scope: !949)
!961 = !DILocation(line: 284, column: 26, scope: !949)
!962 = !DILocation(line: 284, column: 30, scope: !949)
!963 = !DILocation(line: 284, column: 15, scope: !949)
!964 = !DILocation(line: 285, column: 26, scope: !949)
!965 = !DILocation(line: 285, column: 30, scope: !949)
!966 = !DILocation(line: 285, column: 15, scope: !949)
!967 = !DILocation(line: 284, column: 35, scope: !949)
!968 = !DILocation(line: 284, column: 12, scope: !949)
!969 = !DILocation(line: 286, column: 5, scope: !949)
!970 = !DILocation(line: 280, column: 44, scope: !946)
!971 = !DILocation(line: 280, column: 24, scope: !946)
!972 = distinct !{!972, !947, !973, !974}
!973 = !DILocation(line: 286, column: 5, scope: !943)
!974 = !{!"llvm.loop.name", !"VITIS_LOOP_280_14"}
!975 = !DILocation(line: 287, column: 3, scope: !944)
!976 = !DILocation(line: 279, column: 43, scope: !939)
!977 = !DILocation(line: 279, column: 22, scope: !939)
!978 = distinct !{!978, !940, !979, !980}
!979 = !DILocation(line: 287, column: 3, scope: !937)
!980 = !{!"llvm.loop.name", !"VITIS_LOOP_279_13"}
!981 = !DILocation(line: 288, column: 27, scope: !982)
!982 = distinct !DILexicalBlock(scope: !652, file: !10, line: 288, column: 22)
!983 = !DILocation(line: 288, column: 36, scope: !984)
!984 = distinct !DILexicalBlock(scope: !982, file: !10, line: 288, column: 22)
!985 = !DILocation(line: 288, column: 22, scope: !982)
!986 = !DILocation(line: 289, column: 18, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !10, line: 288, column: 46)
!988 = !DILocation(line: 289, column: 31, scope: !987)
!989 = !DILocation(line: 289, column: 52, scope: !987)
!990 = !DILocation(line: 289, column: 29, scope: !987)
!991 = !DILocation(line: 289, column: 5, scope: !987)
!992 = !DILocation(line: 289, column: 16, scope: !987)
!993 = !DILocation(line: 290, column: 18, scope: !987)
!994 = !DILocation(line: 290, column: 31, scope: !987)
!995 = !DILocation(line: 290, column: 29, scope: !987)
!996 = !DILocation(line: 290, column: 15, scope: !987)
!997 = !DILocation(line: 291, column: 3, scope: !987)
!998 = !DILocation(line: 288, column: 42, scope: !984)
!999 = !DILocation(line: 288, column: 22, scope: !984)
!1000 = distinct !{!1000, !985, !1001, !1002}
!1001 = !DILocation(line: 291, column: 3, scope: !982)
!1002 = !{!"llvm.loop.name", !"VITIS_LOOP_288_15"}
!1003 = !DILocation(line: 294, column: 3, scope: !652)
!1004 = !DILocation(line: 296, column: 27, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !652, file: !10, line: 296, column: 22)
!1006 = !DILocation(line: 296, column: 36, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1005, file: !10, line: 296, column: 22)
!1008 = !DILocation(line: 296, column: 22, scope: !1005)
!1009 = !DILocation(line: 296, column: 47, scope: !1007)
!1010 = !DILocation(line: 297, column: 29, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !10, line: 297, column: 24)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !10, line: 296, column: 47)
!1013 = !DILocation(line: 297, column: 38, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !10, line: 297, column: 24)
!1015 = !DILocation(line: 297, column: 24, scope: !1011)
!1016 = !DILocation(line: 299, column: 11, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !10, line: 297, column: 48)
!1018 = !DILocation(line: 299, column: 31, scope: !1017)
!1019 = !DILocation(line: 299, column: 35, scope: !1017)
!1020 = !DILocation(line: 299, column: 20, scope: !1017)
!1021 = !DILocation(line: 299, column: 40, scope: !1017)
!1022 = !DILocation(line: 299, column: 60, scope: !1017)
!1023 = !DILocation(line: 299, column: 64, scope: !1017)
!1024 = !DILocation(line: 299, column: 49, scope: !1017)
!1025 = !DILocation(line: 298, column: 18, scope: !1017)
!1026 = !DILocation(line: 298, column: 22, scope: !1017)
!1027 = !DILocation(line: 298, column: 7, scope: !1017)
!1028 = !DILocation(line: 298, column: 27, scope: !1017)
!1029 = !DILocation(line: 300, column: 5, scope: !1017)
!1030 = !DILocation(line: 297, column: 44, scope: !1014)
!1031 = !DILocation(line: 297, column: 24, scope: !1014)
!1032 = distinct !{!1032, !1015, !1033, !1034}
!1033 = !DILocation(line: 300, column: 5, scope: !1011)
!1034 = !{!"llvm.loop.name", !"VITIS_LOOP_297_17"}
!1035 = !DILocation(line: 301, column: 3, scope: !1012)
!1036 = !DILocation(line: 296, column: 43, scope: !1007)
!1037 = !DILocation(line: 296, column: 22, scope: !1007)
!1038 = distinct !{!1038, !1008, !1039, !1040}
!1039 = !DILocation(line: 301, column: 3, scope: !1005)
!1040 = !{!"llvm.loop.name", !"VITIS_LOOP_296_16"}
!1041 = !DILocation(line: 302, column: 27, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !652, file: !10, line: 302, column: 22)
!1043 = !DILocation(line: 302, column: 36, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1042, file: !10, line: 302, column: 22)
!1045 = !DILocation(line: 302, column: 22, scope: !1042)
!1046 = !DILocation(line: 303, column: 18, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !10, line: 302, column: 46)
!1048 = !DILocation(line: 303, column: 32, scope: !1047)
!1049 = !DILocation(line: 303, column: 43, scope: !1047)
!1050 = !DILocation(line: 303, column: 57, scope: !1047)
!1051 = !DILocation(line: 303, column: 5, scope: !1047)
!1052 = !DILocation(line: 303, column: 16, scope: !1047)
!1053 = !DILocation(line: 304, column: 3, scope: !1047)
!1054 = !DILocation(line: 302, column: 42, scope: !1044)
!1055 = !DILocation(line: 302, column: 22, scope: !1044)
!1056 = distinct !{!1056, !1045, !1057, !1058}
!1057 = !DILocation(line: 304, column: 3, scope: !1042)
!1058 = !{!"llvm.loop.name", !"VITIS_LOOP_302_18"}
!1059 = !DILocation(line: 305, column: 1, scope: !652)
!1060 = distinct !DISubprogram(name: "hls_top", scope: !10, file: !10, line: 307, type: !1061, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !4, !13, !13, !13, !13, !13, !13, !13, !13}
!1063 = !{!1064}
!1064 = !{!"fpga.top", !"user", !1065}
!1065 = !DILocation(line: 307, column: 16, scope: !1060)
!1066 = !DILocalVariable(name: "sets", arg: 1, scope: !1060, file: !10, line: 307, type: !4)
!1067 = !DILocation(line: 307, column: 60, scope: !1060)
!1068 = !DILocalVariable(name: "xweights1", arg: 2, scope: !1060, file: !10, line: 307, type: !13)
!1069 = !DILocation(line: 307, column: 70, scope: !1060)
!1070 = !DILocalVariable(name: "xweights2", arg: 3, scope: !1060, file: !10, line: 308, type: !13)
!1071 = !DILocation(line: 308, column: 18, scope: !1060)
!1072 = !DILocalVariable(name: "xweights3", arg: 4, scope: !1060, file: !10, line: 309, type: !13)
!1073 = !DILocation(line: 309, column: 18, scope: !1060)
!1074 = !DILocalVariable(name: "xbiases1", arg: 5, scope: !1060, file: !10, line: 310, type: !13)
!1075 = !DILocation(line: 310, column: 18, scope: !1060)
!1076 = !DILocalVariable(name: "xbiases2", arg: 6, scope: !1060, file: !10, line: 310, type: !13)
!1077 = !DILocation(line: 310, column: 36, scope: !1060)
!1078 = !DILocalVariable(name: "xbiases3", arg: 7, scope: !1060, file: !10, line: 311, type: !13)
!1079 = !DILocation(line: 311, column: 18, scope: !1060)
!1080 = !DILocalVariable(name: "xtraining_data", arg: 8, scope: !1060, file: !10, line: 312, type: !13)
!1081 = !DILocation(line: 312, column: 18, scope: !1060)
!1082 = !DILocalVariable(name: "xtraining_targets", arg: 9, scope: !1060, file: !10, line: 313, type: !13)
!1083 = !DILocation(line: 313, column: 18, scope: !1060)
!1084 = !DILocation(line: 314, column: 9, scope: !1060)
!1085 = !DILocation(line: 315, column: 9, scope: !1060)
!1086 = !DILocation(line: 316, column: 9, scope: !1060)
!1087 = !DILocation(line: 317, column: 9, scope: !1060)
!1088 = !DILocation(line: 318, column: 9, scope: !1060)
!1089 = !DILocation(line: 319, column: 9, scope: !1060)
!1090 = !DILocation(line: 320, column: 9, scope: !1060)
!1091 = !DILocation(line: 321, column: 9, scope: !1060)
!1092 = !DILocation(line: 322, column: 9, scope: !1060)
!1093 = !DILocation(line: 323, column: 9, scope: !1060)
!1094 = !DILocation(line: 325, column: 2, scope: !1060)
!1095 = !DILocalVariable(name: "weights1", scope: !1060, file: !10, line: 325, type: !1096)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1097)
!1097 = !{!1098}
!1098 = !DISubrange(count: 256)
!1099 = !DILocation(line: 325, column: 6, scope: !1060)
!1100 = !DILocation(line: 326, column: 3, scope: !1060)
!1101 = !DILocalVariable(name: "weights2", scope: !1060, file: !10, line: 326, type: !1096)
!1102 = !DILocation(line: 326, column: 7, scope: !1060)
!1103 = !DILocation(line: 327, column: 3, scope: !1060)
!1104 = !DILocalVariable(name: "weights3", scope: !1060, file: !10, line: 327, type: !1105)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1536, elements: !1106)
!1106 = !{!1107}
!1107 = !DISubrange(count: 48)
!1108 = !DILocation(line: 327, column: 7, scope: !1060)
!1109 = !DILocation(line: 328, column: 3, scope: !1060)
!1110 = !DILocalVariable(name: "biases1", scope: !1060, file: !10, line: 328, type: !1111)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !1112)
!1112 = !{!1113}
!1113 = !DISubrange(count: 16)
!1114 = !DILocation(line: 328, column: 7, scope: !1060)
!1115 = !DILocation(line: 329, column: 3, scope: !1060)
!1116 = !DILocalVariable(name: "biases2", scope: !1060, file: !10, line: 329, type: !1111)
!1117 = !DILocation(line: 329, column: 7, scope: !1060)
!1118 = !DILocation(line: 330, column: 3, scope: !1060)
!1119 = !DILocalVariable(name: "biases3", scope: !1060, file: !10, line: 330, type: !1120)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 3)
!1123 = !DILocation(line: 330, column: 7, scope: !1060)
!1124 = !DILocation(line: 331, column: 3, scope: !1060)
!1125 = !DILocalVariable(name: "training_data", scope: !1060, file: !10, line: 331, type: !1126)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 83456, elements: !1127)
!1127 = !{!1128}
!1128 = !DISubrange(count: 2608)
!1129 = !DILocation(line: 331, column: 7, scope: !1060)
!1130 = !DILocation(line: 332, column: 3, scope: !1060)
!1131 = !DILocalVariable(name: "training_targets", scope: !1060, file: !10, line: 332, type: !1132)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 15648, elements: !1133)
!1133 = !{!1134}
!1134 = !DISubrange(count: 489)
!1135 = !DILocation(line: 332, column: 7, scope: !1060)
!1136 = !DILocalVariable(name: "i", scope: !1137, file: !10, line: 334, type: !4)
!1137 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 334, column: 21)
!1138 = !DILocation(line: 334, column: 30, scope: !1137)
!1139 = !DILocation(line: 334, column: 26, scope: !1137)
!1140 = !DILocation(line: 334, column: 39, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !10, line: 334, column: 21)
!1142 = !DILocation(line: 334, column: 21, scope: !1137)
!1143 = !DILocalVariable(name: "j", scope: !1144, file: !10, line: 335, type: !4)
!1144 = distinct !DILexicalBlock(scope: !1141, file: !10, line: 335, column: 23)
!1145 = !DILocation(line: 335, column: 32, scope: !1144)
!1146 = !DILocation(line: 335, column: 28, scope: !1144)
!1147 = !DILocation(line: 335, column: 41, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !10, line: 335, column: 23)
!1149 = !DILocation(line: 335, column: 23, scope: !1144)
!1150 = !DILocation(line: 337, column: 28, scope: !1148)
!1151 = !DILocation(line: 337, column: 33, scope: !1148)
!1152 = !DILocation(line: 337, column: 11, scope: !1148)
!1153 = !DILocation(line: 336, column: 23, scope: !1148)
!1154 = !DILocation(line: 336, column: 28, scope: !1148)
!1155 = !DILocation(line: 336, column: 7, scope: !1148)
!1156 = !DILocation(line: 336, column: 33, scope: !1148)
!1157 = !DILocation(line: 335, column: 48, scope: !1148)
!1158 = !DILocation(line: 335, column: 23, scope: !1148)
!1159 = distinct !{!1159, !1149, !1160, !1161}
!1160 = !DILocation(line: 337, column: 36, scope: !1144)
!1161 = !{!"llvm.loop.name", !"VITIS_LOOP_335_2"}
!1162 = !DILocation(line: 334, column: 47, scope: !1141)
!1163 = !DILocation(line: 334, column: 21, scope: !1141)
!1164 = distinct !{!1164, !1142, !1165, !1166}
!1165 = !DILocation(line: 337, column: 36, scope: !1137)
!1166 = !{!"llvm.loop.name", !"VITIS_LOOP_334_1"}
!1167 = !DILocalVariable(name: "i", scope: !1168, file: !10, line: 339, type: !4)
!1168 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 339, column: 21)
!1169 = !DILocation(line: 339, column: 30, scope: !1168)
!1170 = !DILocation(line: 339, column: 26, scope: !1168)
!1171 = !DILocation(line: 339, column: 39, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !10, line: 339, column: 21)
!1173 = !DILocation(line: 339, column: 21, scope: !1168)
!1174 = !DILocalVariable(name: "j", scope: !1175, file: !10, line: 340, type: !4)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !10, line: 340, column: 23)
!1176 = !DILocation(line: 340, column: 32, scope: !1175)
!1177 = !DILocation(line: 340, column: 28, scope: !1175)
!1178 = !DILocation(line: 340, column: 41, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !10, line: 340, column: 23)
!1180 = !DILocation(line: 340, column: 23, scope: !1175)
!1181 = !DILocation(line: 342, column: 31, scope: !1179)
!1182 = !DILocation(line: 342, column: 35, scope: !1179)
!1183 = !DILocation(line: 342, column: 11, scope: !1179)
!1184 = !DILocation(line: 341, column: 27, scope: !1179)
!1185 = !DILocation(line: 341, column: 32, scope: !1179)
!1186 = !DILocation(line: 341, column: 7, scope: !1179)
!1187 = !DILocation(line: 341, column: 37, scope: !1179)
!1188 = !DILocation(line: 340, column: 47, scope: !1179)
!1189 = !DILocation(line: 340, column: 23, scope: !1179)
!1190 = distinct !{!1190, !1180, !1191, !1192}
!1191 = !DILocation(line: 342, column: 38, scope: !1175)
!1192 = !{!"llvm.loop.name", !"VITIS_LOOP_340_4"}
!1193 = !DILocation(line: 339, column: 47, scope: !1172)
!1194 = !DILocation(line: 339, column: 21, scope: !1172)
!1195 = distinct !{!1195, !1173, !1196, !1197}
!1196 = !DILocation(line: 342, column: 38, scope: !1168)
!1197 = !{!"llvm.loop.name", !"VITIS_LOOP_339_3"}
!1198 = !DILocalVariable(name: "activations1", scope: !1060, file: !10, line: 346, type: !1111)
!1199 = !DILocation(line: 346, column: 7, scope: !1060)
!1200 = !DILocalVariable(name: "activations2", scope: !1060, file: !10, line: 347, type: !1111)
!1201 = !DILocation(line: 347, column: 7, scope: !1060)
!1202 = !DILocalVariable(name: "activations3", scope: !1060, file: !10, line: 348, type: !1120)
!1203 = !DILocation(line: 348, column: 7, scope: !1060)
!1204 = !DILocalVariable(name: "dactivations1", scope: !1060, file: !10, line: 349, type: !1111)
!1205 = !DILocation(line: 349, column: 7, scope: !1060)
!1206 = !DILocalVariable(name: "dactivations2", scope: !1060, file: !10, line: 350, type: !1111)
!1207 = !DILocation(line: 350, column: 7, scope: !1060)
!1208 = !DILocalVariable(name: "dactivations3", scope: !1060, file: !10, line: 351, type: !1120)
!1209 = !DILocation(line: 351, column: 7, scope: !1060)
!1210 = !DILocalVariable(name: "net_outputs", scope: !1060, file: !10, line: 352, type: !1120)
!1211 = !DILocation(line: 352, column: 7, scope: !1060)
!1212 = !DILocalVariable(name: "output_difference", scope: !1060, file: !10, line: 354, type: !1120)
!1213 = !DILocation(line: 354, column: 7, scope: !1060)
!1214 = !DILocalVariable(name: "delta_weights1", scope: !1060, file: !10, line: 355, type: !1096)
!1215 = !DILocation(line: 355, column: 7, scope: !1060)
!1216 = !DILocalVariable(name: "delta_weights2", scope: !1060, file: !10, line: 356, type: !1096)
!1217 = !DILocation(line: 356, column: 7, scope: !1060)
!1218 = !DILocalVariable(name: "delta_weights3", scope: !1060, file: !10, line: 357, type: !1105)
!1219 = !DILocation(line: 357, column: 7, scope: !1060)
!1220 = !DILocalVariable(name: "oracle_activations1", scope: !1060, file: !10, line: 358, type: !1111)
!1221 = !DILocation(line: 358, column: 7, scope: !1060)
!1222 = !DILocalVariable(name: "oracle_activations2", scope: !1060, file: !10, line: 359, type: !1111)
!1223 = !DILocation(line: 359, column: 7, scope: !1060)
!1224 = !DILocation(line: 359, column: 3, scope: !1060)
!1225 = !DILocalVariable(name: "i", scope: !1060, file: !10, line: 344, type: !4)
!1226 = !DILocation(line: 344, column: 7, scope: !1060)
!1227 = !DILocation(line: 361, column: 26, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 361, column: 21)
!1229 = !DILocation(line: 361, column: 35, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1228, file: !10, line: 361, column: 21)
!1231 = !DILocation(line: 361, column: 21, scope: !1228)
!1232 = !DILocation(line: 361, column: 48, scope: !1230)
!1233 = !DILocalVariable(name: "j", scope: !1060, file: !10, line: 344, type: !4)
!1234 = !DILocation(line: 344, column: 10, scope: !1060)
!1235 = !DILocation(line: 362, column: 28, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !10, line: 362, column: 23)
!1237 = distinct !DILexicalBlock(scope: !1230, file: !10, line: 361, column: 48)
!1238 = !DILocation(line: 362, column: 37, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !10, line: 362, column: 23)
!1240 = !DILocation(line: 362, column: 23, scope: !1236)
!1241 = !DILocation(line: 363, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !10, line: 362, column: 48)
!1243 = !DILocation(line: 363, column: 23, scope: !1242)
!1244 = !DILocation(line: 364, column: 7, scope: !1242)
!1245 = !DILocation(line: 364, column: 23, scope: !1242)
!1246 = !DILocation(line: 365, column: 13, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !10, line: 365, column: 11)
!1248 = !DILocation(line: 365, column: 11, scope: !1242)
!1249 = !DILocation(line: 366, column: 9, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !10, line: 365, column: 18)
!1251 = !DILocation(line: 366, column: 25, scope: !1250)
!1252 = !DILocation(line: 367, column: 7, scope: !1250)
!1253 = !DILocation(line: 368, column: 5, scope: !1242)
!1254 = !DILocation(line: 362, column: 44, scope: !1239)
!1255 = !DILocation(line: 362, column: 23, scope: !1239)
!1256 = distinct !{!1256, !1240, !1257, !1258}
!1257 = !DILocation(line: 368, column: 5, scope: !1236)
!1258 = !{!"llvm.loop.name", !"VITIS_LOOP_362_6"}
!1259 = !DILocation(line: 370, column: 9, scope: !1237)
!1260 = !DILocation(line: 370, column: 18, scope: !1237)
!1261 = !DILocation(line: 370, column: 28, scope: !1237)
!1262 = !DILocation(line: 370, column: 59, scope: !1237)
!1263 = !DILocation(line: 370, column: 43, scope: !1237)
!1264 = !DILocation(line: 369, column: 5, scope: !1237)
!1265 = !DILocation(line: 371, column: 11, scope: !1237)
!1266 = !DILocation(line: 371, column: 25, scope: !1237)
!1267 = !DILocation(line: 371, column: 5, scope: !1237)
!1268 = !DILocation(line: 372, column: 50, scope: !1237)
!1269 = !DILocation(line: 372, column: 59, scope: !1237)
!1270 = !DILocation(line: 373, column: 50, scope: !1237)
!1271 = !DILocation(line: 373, column: 64, scope: !1237)
!1272 = !DILocation(line: 372, column: 5, scope: !1237)
!1273 = !DILocation(line: 374, column: 11, scope: !1237)
!1274 = !DILocation(line: 374, column: 25, scope: !1237)
!1275 = !DILocation(line: 374, column: 5, scope: !1237)
!1276 = !DILocation(line: 375, column: 50, scope: !1237)
!1277 = !DILocation(line: 375, column: 59, scope: !1237)
!1278 = !DILocation(line: 376, column: 50, scope: !1237)
!1279 = !DILocation(line: 376, column: 64, scope: !1237)
!1280 = !DILocation(line: 375, column: 5, scope: !1237)
!1281 = !DILocation(line: 377, column: 11, scope: !1237)
!1282 = !DILocation(line: 377, column: 25, scope: !1237)
!1283 = !DILocation(line: 377, column: 5, scope: !1237)
!1284 = !DILocation(line: 379, column: 14, scope: !1237)
!1285 = !DILocation(line: 379, column: 27, scope: !1237)
!1286 = !DILocation(line: 379, column: 5, scope: !1237)
!1287 = !DILocation(line: 380, column: 21, scope: !1237)
!1288 = !DILocation(line: 380, column: 54, scope: !1237)
!1289 = !DILocation(line: 380, column: 35, scope: !1237)
!1290 = !DILocation(line: 381, column: 21, scope: !1237)
!1291 = !DILocation(line: 381, column: 40, scope: !1237)
!1292 = !DILocation(line: 380, column: 5, scope: !1237)
!1293 = !DILocation(line: 382, column: 31, scope: !1237)
!1294 = !DILocation(line: 382, column: 47, scope: !1237)
!1295 = !DILocation(line: 382, column: 66, scope: !1237)
!1296 = !DILocation(line: 382, column: 5, scope: !1237)
!1297 = !DILocation(line: 383, column: 29, scope: !1237)
!1298 = !DILocation(line: 383, column: 39, scope: !1237)
!1299 = !DILocation(line: 383, column: 58, scope: !1237)
!1300 = !DILocation(line: 384, column: 29, scope: !1237)
!1301 = !DILocation(line: 383, column: 5, scope: !1237)
!1302 = !DILocation(line: 385, column: 31, scope: !1237)
!1303 = !DILocation(line: 385, column: 47, scope: !1237)
!1304 = !DILocation(line: 386, column: 31, scope: !1237)
!1305 = !DILocation(line: 385, column: 5, scope: !1237)
!1306 = !DILocation(line: 387, column: 29, scope: !1237)
!1307 = !DILocation(line: 387, column: 39, scope: !1237)
!1308 = !DILocation(line: 387, column: 60, scope: !1237)
!1309 = !DILocation(line: 388, column: 29, scope: !1237)
!1310 = !DILocation(line: 387, column: 5, scope: !1237)
!1311 = !DILocation(line: 389, column: 31, scope: !1237)
!1312 = !DILocation(line: 389, column: 47, scope: !1237)
!1313 = !DILocation(line: 390, column: 48, scope: !1237)
!1314 = !DILocation(line: 390, column: 32, scope: !1237)
!1315 = !DILocation(line: 389, column: 5, scope: !1237)
!1316 = !DILocation(line: 391, column: 20, scope: !1237)
!1317 = !DILocation(line: 391, column: 30, scope: !1237)
!1318 = !DILocation(line: 391, column: 40, scope: !1237)
!1319 = !DILocation(line: 391, column: 50, scope: !1237)
!1320 = !DILocation(line: 391, column: 66, scope: !1237)
!1321 = !DILocation(line: 392, column: 20, scope: !1237)
!1322 = !DILocation(line: 392, column: 36, scope: !1237)
!1323 = !DILocation(line: 392, column: 45, scope: !1237)
!1324 = !DILocation(line: 392, column: 54, scope: !1237)
!1325 = !DILocation(line: 393, column: 20, scope: !1237)
!1326 = !DILocation(line: 393, column: 41, scope: !1237)
!1327 = !DILocation(line: 393, column: 62, scope: !1237)
!1328 = !DILocation(line: 391, column: 5, scope: !1237)
!1329 = !DILocation(line: 394, column: 3, scope: !1237)
!1330 = !DILocation(line: 361, column: 44, scope: !1230)
!1331 = !DILocation(line: 361, column: 21, scope: !1230)
!1332 = distinct !{!1332, !1231, !1333, !1334}
!1333 = !DILocation(line: 394, column: 3, scope: !1228)
!1334 = !{!"llvm.loop.name", !"VITIS_LOOP_361_5"}
!1335 = !DILocalVariable(name: "size1", scope: !1060, file: !10, line: 396, type: !4)
!1336 = !DILocation(line: 396, column: 7, scope: !1060)
!1337 = !DILocalVariable(name: "size2", scope: !1060, file: !10, line: 397, type: !4)
!1338 = !DILocation(line: 397, column: 7, scope: !1060)
!1339 = !DILocalVariable(name: "size3", scope: !1060, file: !10, line: 398, type: !4)
!1340 = !DILocation(line: 398, column: 7, scope: !1060)
!1341 = !DILocation(line: 398, column: 3, scope: !1060)
!1342 = !DILocalVariable(name: "i", scope: !1343, file: !10, line: 399, type: !4)
!1343 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 399, column: 21)
!1344 = !DILocation(line: 399, column: 30, scope: !1343)
!1345 = !DILocation(line: 399, column: 26, scope: !1343)
!1346 = !DILocation(line: 399, column: 39, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !10, line: 399, column: 21)
!1348 = !DILocation(line: 399, column: 21, scope: !1343)
!1349 = !DILocation(line: 400, column: 20, scope: !1347)
!1350 = !DILocation(line: 400, column: 5, scope: !1347)
!1351 = !DILocation(line: 400, column: 18, scope: !1347)
!1352 = !DILocation(line: 399, column: 49, scope: !1347)
!1353 = !DILocation(line: 399, column: 21, scope: !1347)
!1354 = distinct !{!1354, !1348, !1355, !1356}
!1355 = !DILocation(line: 400, column: 30, scope: !1343)
!1356 = !{!"llvm.loop.name", !"VITIS_LOOP_399_7"}
!1357 = !DILocalVariable(name: "i", scope: !1358, file: !10, line: 401, type: !4)
!1358 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 401, column: 21)
!1359 = !DILocation(line: 401, column: 30, scope: !1358)
!1360 = !DILocation(line: 401, column: 26, scope: !1358)
!1361 = !DILocation(line: 401, column: 39, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !10, line: 401, column: 21)
!1363 = !DILocation(line: 401, column: 21, scope: !1358)
!1364 = !DILocation(line: 402, column: 20, scope: !1362)
!1365 = !DILocation(line: 402, column: 5, scope: !1362)
!1366 = !DILocation(line: 402, column: 18, scope: !1362)
!1367 = !DILocation(line: 401, column: 49, scope: !1362)
!1368 = !DILocation(line: 401, column: 21, scope: !1362)
!1369 = distinct !{!1369, !1363, !1370, !1371}
!1370 = !DILocation(line: 402, column: 30, scope: !1358)
!1371 = !{!"llvm.loop.name", !"VITIS_LOOP_401_8"}
!1372 = !DILocalVariable(name: "i", scope: !1373, file: !10, line: 403, type: !4)
!1373 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 403, column: 21)
!1374 = !DILocation(line: 403, column: 30, scope: !1373)
!1375 = !DILocation(line: 403, column: 26, scope: !1373)
!1376 = !DILocation(line: 403, column: 39, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1373, file: !10, line: 403, column: 21)
!1378 = !DILocation(line: 403, column: 21, scope: !1373)
!1379 = !DILocation(line: 404, column: 20, scope: !1377)
!1380 = !DILocation(line: 404, column: 5, scope: !1377)
!1381 = !DILocation(line: 404, column: 18, scope: !1377)
!1382 = !DILocation(line: 403, column: 49, scope: !1377)
!1383 = !DILocation(line: 403, column: 21, scope: !1377)
!1384 = distinct !{!1384, !1378, !1385, !1386}
!1385 = !DILocation(line: 404, column: 30, scope: !1373)
!1386 = !{!"llvm.loop.name", !"VITIS_LOOP_403_9"}
!1387 = !DILocalVariable(name: "i", scope: !1388, file: !10, line: 406, type: !4)
!1388 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 406, column: 22)
!1389 = !DILocation(line: 406, column: 31, scope: !1388)
!1390 = !DILocation(line: 406, column: 27, scope: !1388)
!1391 = !DILocation(line: 406, column: 40, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !10, line: 406, column: 22)
!1393 = !DILocation(line: 406, column: 22, scope: !1388)
!1394 = !DILocation(line: 407, column: 19, scope: !1392)
!1395 = !DILocation(line: 407, column: 5, scope: !1392)
!1396 = !DILocation(line: 407, column: 17, scope: !1392)
!1397 = !DILocation(line: 406, column: 47, scope: !1392)
!1398 = !DILocation(line: 406, column: 22, scope: !1392)
!1399 = distinct !{!1399, !1393, !1400, !1401}
!1400 = !DILocation(line: 407, column: 28, scope: !1388)
!1401 = !{!"llvm.loop.name", !"VITIS_LOOP_406_10"}
!1402 = !DILocalVariable(name: "i", scope: !1403, file: !10, line: 408, type: !4)
!1403 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 408, column: 22)
!1404 = !DILocation(line: 408, column: 31, scope: !1403)
!1405 = !DILocation(line: 408, column: 27, scope: !1403)
!1406 = !DILocation(line: 408, column: 40, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !10, line: 408, column: 22)
!1408 = !DILocation(line: 408, column: 22, scope: !1403)
!1409 = !DILocation(line: 409, column: 19, scope: !1407)
!1410 = !DILocation(line: 409, column: 5, scope: !1407)
!1411 = !DILocation(line: 409, column: 17, scope: !1407)
!1412 = !DILocation(line: 408, column: 47, scope: !1407)
!1413 = !DILocation(line: 408, column: 22, scope: !1407)
!1414 = distinct !{!1414, !1408, !1415, !1416}
!1415 = !DILocation(line: 409, column: 28, scope: !1403)
!1416 = !{!"llvm.loop.name", !"VITIS_LOOP_408_11"}
!1417 = !DILocalVariable(name: "i", scope: !1418, file: !10, line: 410, type: !4)
!1418 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 410, column: 22)
!1419 = !DILocation(line: 410, column: 31, scope: !1418)
!1420 = !DILocation(line: 410, column: 27, scope: !1418)
!1421 = !DILocation(line: 410, column: 40, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !10, line: 410, column: 22)
!1423 = !DILocation(line: 410, column: 22, scope: !1418)
!1424 = !DILocation(line: 411, column: 19, scope: !1422)
!1425 = !DILocation(line: 411, column: 5, scope: !1422)
!1426 = !DILocation(line: 411, column: 17, scope: !1422)
!1427 = !DILocation(line: 410, column: 46, scope: !1422)
!1428 = !DILocation(line: 410, column: 22, scope: !1422)
!1429 = distinct !{!1429, !1423, !1430, !1431}
!1430 = !DILocation(line: 411, column: 28, scope: !1418)
!1431 = !{!"llvm.loop.name", !"VITIS_LOOP_410_12"}
!1432 = !DILocation(line: 412, column: 1, scope: !1060)
