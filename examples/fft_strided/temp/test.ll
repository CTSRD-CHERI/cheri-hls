; ModuleID = '/workspace/examples/fft_strided/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @_Z7hls_topiPiS_S_S_S_S_(i32 %size, i32* "fpga.decayed.dim.hint"="1024" %xreal, i32* "fpga.decayed.dim.hint"="1024" %ximg, i32* "fpga.decayed.dim.hint"="512" %xreal_twid, i32* "fpga.decayed.dim.hint"="512" %ximg_twid, i32* "fpga.decayed.dim.hint"="1024" %yreal, i32* "fpga.decayed.dim.hint"="1024" %yimg) #0 !dbg !9 !fpga.function.pragma !14 {
entry:
  %real = alloca [1024 x i32], align 4
  %img = alloca [1024 x i32], align 4
  %real_twid = alloca [512 x i32], align 4
  %img_twid = alloca [512 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32* %xreal, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32* %ximg, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32* %xreal_twid, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32* %ximg_twid, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32* %yreal, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32* %yimg, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xreal, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !31
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %ximg, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !32
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %yreal, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !33
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %yimg, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !34
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xreal_twid, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !35
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %ximg_twid, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !36
  call void @llvm.sideeffect() #6 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !37
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !38
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !40
  %0 = bitcast [1024 x i32]* %real to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %0) #8, !dbg !41
  call void @llvm.dbg.declare(metadata [1024 x i32]* %real, metadata !42, metadata !DIExpression()), !dbg !46
  %1 = bitcast [1024 x i32]* %real to i8*, !dbg !46
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 4096, i1 false), !dbg !46
  %2 = bitcast [1024 x i32]* %img to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %2) #8, !dbg !47
  call void @llvm.dbg.declare(metadata [1024 x i32]* %img, metadata !48, metadata !DIExpression()), !dbg !49
  %3 = bitcast [1024 x i32]* %img to i8*, !dbg !49
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 4096, i1 false), !dbg !49
  %4 = bitcast [512 x i32]* %real_twid to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* %4) #8, !dbg !50
  call void @llvm.dbg.declare(metadata [512 x i32]* %real_twid, metadata !51, metadata !DIExpression()), !dbg !55
  %5 = bitcast [512 x i32]* %real_twid to i8*, !dbg !55
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 2048, i1 false), !dbg !55
  %6 = bitcast [512 x i32]* %img_twid to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* %6) #8, !dbg !56
  call void @llvm.dbg.declare(metadata [512 x i32]* %img_twid, metadata !57, metadata !DIExpression()), !dbg !58
  %7 = bitcast [512 x i32]* %img_twid to i8*, !dbg !58
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 2048, i1 false), !dbg !58
  br label %VITIS_LOOP_24_1, !dbg !56

VITIS_LOOP_24_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !59, metadata !DIExpression()), !dbg !61
  br label %for.cond, !dbg !62

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_24_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_24_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !59, metadata !DIExpression()), !dbg !61
  %cmp = icmp slt i32 %i.0, %size, !dbg !63
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !65

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !66
  %arrayidx = getelementptr inbounds i32, i32* %xreal, i64 %idxprom, !dbg !66
  %8 = load i32, i32* %arrayidx, align 4, !dbg !66
  %idxprom1 = sext i32 %i.0 to i64, !dbg !67
  %arrayidx2 = getelementptr inbounds [1024 x i32], [1024 x i32]* %real, i64 0, i64 %idxprom1, !dbg !67
  store i32 %8, i32* %arrayidx2, align 4, !dbg !68
  br label %for.inc, !dbg !67

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !69
  call void @llvm.dbg.value(metadata i32 %inc, metadata !59, metadata !DIExpression()), !dbg !61
  br label %for.cond, !dbg !70, !llvm.loop !71

for.end:                                          ; preds = %for.cond.cleanup
  br label %VITIS_LOOP_26_2, !dbg !72

VITIS_LOOP_26_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !76
  br label %for.cond4, !dbg !77

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_26_2
  %i3.0 = phi i32 [ 0, %VITIS_LOOP_26_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i3.0, metadata !74, metadata !DIExpression()), !dbg !76
  %cmp5 = icmp slt i32 %i3.0, %size, !dbg !78
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !80

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end14

for.body7:                                        ; preds = %for.cond4
  %idxprom8 = sext i32 %i3.0 to i64, !dbg !81
  %arrayidx9 = getelementptr inbounds i32, i32* %ximg, i64 %idxprom8, !dbg !81
  %9 = load i32, i32* %arrayidx9, align 4, !dbg !81
  %idxprom10 = sext i32 %i3.0 to i64, !dbg !82
  %arrayidx11 = getelementptr inbounds [1024 x i32], [1024 x i32]* %img, i64 0, i64 %idxprom10, !dbg !82
  store i32 %9, i32* %arrayidx11, align 4, !dbg !83
  br label %for.inc12, !dbg !82

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i3.0, 1, !dbg !84
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !74, metadata !DIExpression()), !dbg !76
  br label %for.cond4, !dbg !85, !llvm.loop !86

for.end14:                                        ; preds = %for.cond.cleanup6
  br label %VITIS_LOOP_28_3, !dbg !87

VITIS_LOOP_28_3:                                  ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !89, metadata !DIExpression()), !dbg !91
  br label %for.cond16, !dbg !92

for.cond16:                                       ; preds = %for.inc24, %VITIS_LOOP_28_3
  %i15.0 = phi i32 [ 0, %VITIS_LOOP_28_3 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %i15.0, metadata !89, metadata !DIExpression()), !dbg !91
  %div = sdiv i32 %size, 2, !dbg !93
  %cmp17 = icmp slt i32 %i15.0, %div, !dbg !95
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18, !dbg !96

for.cond.cleanup18:                               ; preds = %for.cond16
  br label %for.end26

for.body19:                                       ; preds = %for.cond16
  %idxprom20 = sext i32 %i15.0 to i64, !dbg !97
  %arrayidx21 = getelementptr inbounds i32, i32* %xreal_twid, i64 %idxprom20, !dbg !97
  %10 = load i32, i32* %arrayidx21, align 4, !dbg !97
  %idxprom22 = sext i32 %i15.0 to i64, !dbg !98
  %arrayidx23 = getelementptr inbounds [512 x i32], [512 x i32]* %real_twid, i64 0, i64 %idxprom22, !dbg !98
  store i32 %10, i32* %arrayidx23, align 4, !dbg !99
  br label %for.inc24, !dbg !98

for.inc24:                                        ; preds = %for.body19
  %inc25 = add nsw i32 %i15.0, 1, !dbg !100
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !89, metadata !DIExpression()), !dbg !91
  br label %for.cond16, !dbg !101, !llvm.loop !102

for.end26:                                        ; preds = %for.cond.cleanup18
  br label %VITIS_LOOP_30_4, !dbg !103

VITIS_LOOP_30_4:                                  ; preds = %for.end26
  call void @llvm.dbg.value(metadata i32 0, metadata !105, metadata !DIExpression()), !dbg !107
  br label %for.cond28, !dbg !108

for.cond28:                                       ; preds = %for.inc37, %VITIS_LOOP_30_4
  %i27.0 = phi i32 [ 0, %VITIS_LOOP_30_4 ], [ %inc38, %for.inc37 ]
  call void @llvm.dbg.value(metadata i32 %i27.0, metadata !105, metadata !DIExpression()), !dbg !107
  %div29 = sdiv i32 %size, 2, !dbg !109
  %cmp30 = icmp slt i32 %i27.0, %div29, !dbg !111
  br i1 %cmp30, label %for.body32, label %for.cond.cleanup31, !dbg !112

for.cond.cleanup31:                               ; preds = %for.cond28
  br label %for.end39

for.body32:                                       ; preds = %for.cond28
  %idxprom33 = sext i32 %i27.0 to i64, !dbg !113
  %arrayidx34 = getelementptr inbounds i32, i32* %ximg_twid, i64 %idxprom33, !dbg !113
  %11 = load i32, i32* %arrayidx34, align 4, !dbg !113
  %idxprom35 = sext i32 %i27.0 to i64, !dbg !114
  %arrayidx36 = getelementptr inbounds [512 x i32], [512 x i32]* %img_twid, i64 0, i64 %idxprom35, !dbg !114
  store i32 %11, i32* %arrayidx36, align 4, !dbg !115
  br label %for.inc37, !dbg !114

for.inc37:                                        ; preds = %for.body32
  %inc38 = add nsw i32 %i27.0, 1, !dbg !116
  call void @llvm.dbg.value(metadata i32 %inc38, metadata !105, metadata !DIExpression()), !dbg !107
  br label %for.cond28, !dbg !117, !llvm.loop !118

for.end39:                                        ; preds = %for.cond.cleanup31
  br label %outer, !dbg !119

outer:                                            ; preds = %for.end39
  %shr = ashr i32 %size, 1, !dbg !121
  call void @llvm.dbg.value(metadata i32 %shr, metadata !123, metadata !DIExpression()), !dbg !124
  br label %for.cond40, !dbg !125

for.cond40:                                       ; preds = %for.inc101, %outer
  %span.0 = phi i32 [ %shr, %outer ], [ %shr102, %for.inc101 ]
  %log.0 = phi i32 [ 0, %outer ], [ %inc103, %for.inc101 ]
  call void @llvm.dbg.value(metadata i32 %log.0, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i32 %span.0, metadata !123, metadata !DIExpression()), !dbg !124
  %tobool = icmp ne i32 %span.0, 0, !dbg !126
  br i1 %tobool, label %for.body41, label %for.end104, !dbg !128

for.body41:                                       ; preds = %for.cond40
  br label %inner, !dbg !129

inner:                                            ; preds = %for.body41
  call void @llvm.dbg.value(metadata i32 %span.0, metadata !130, metadata !DIExpression()), !dbg !131
  br label %for.cond42, !dbg !132

for.cond42:                                       ; preds = %for.inc98, %inner
  %odd.0 = phi i32 [ %span.0, %inner ], [ %inc99, %for.inc98 ]
  call void @llvm.dbg.value(metadata i32 %odd.0, metadata !130, metadata !DIExpression()), !dbg !131
  %cmp43 = icmp slt i32 %odd.0, %size, !dbg !135
  br i1 %cmp43, label %for.body44, label %for.end100, !dbg !137

for.body44:                                       ; preds = %for.cond42
  %or = or i32 %odd.0, %span.0, !dbg !138
  call void @llvm.dbg.value(metadata i32 %or, metadata !130, metadata !DIExpression()), !dbg !131
  %xor = xor i32 %or, %span.0, !dbg !140
  call void @llvm.dbg.value(metadata i32 %xor, metadata !141, metadata !DIExpression()), !dbg !142
  %idxprom45 = sext i32 %xor to i64, !dbg !143
  %arrayidx46 = getelementptr inbounds [1024 x i32], [1024 x i32]* %real, i64 0, i64 %idxprom45, !dbg !143
  %12 = load i32, i32* %arrayidx46, align 4, !dbg !143
  %idxprom47 = sext i32 %or to i64, !dbg !144
  %arrayidx48 = getelementptr inbounds [1024 x i32], [1024 x i32]* %real, i64 0, i64 %idxprom47, !dbg !144
  %13 = load i32, i32* %arrayidx48, align 4, !dbg !144
  %add = add nsw i32 %12, %13, !dbg !145
  call void @llvm.dbg.value(metadata i32 %add, metadata !146, metadata !DIExpression()), !dbg !147
  %idxprom49 = sext i32 %xor to i64, !dbg !148
  %arrayidx50 = getelementptr inbounds [1024 x i32], [1024 x i32]* %real, i64 0, i64 %idxprom49, !dbg !148
  %14 = load i32, i32* %arrayidx50, align 4, !dbg !148
  %idxprom51 = sext i32 %or to i64, !dbg !149
  %arrayidx52 = getelementptr inbounds [1024 x i32], [1024 x i32]* %real, i64 0, i64 %idxprom51, !dbg !149
  %15 = load i32, i32* %arrayidx52, align 4, !dbg !149
  %sub = sub nsw i32 %14, %15, !dbg !150
  %idxprom53 = sext i32 %or to i64, !dbg !151
  %arrayidx54 = getelementptr inbounds [1024 x i32], [1024 x i32]* %real, i64 0, i64 %idxprom53, !dbg !151
  store i32 %sub, i32* %arrayidx54, align 4, !dbg !152
  %idxprom55 = sext i32 %xor to i64, !dbg !153
  %arrayidx56 = getelementptr inbounds [1024 x i32], [1024 x i32]* %real, i64 0, i64 %idxprom55, !dbg !153
  store i32 %add, i32* %arrayidx56, align 4, !dbg !154
  %idxprom57 = sext i32 %xor to i64, !dbg !155
  %arrayidx58 = getelementptr inbounds [1024 x i32], [1024 x i32]* %img, i64 0, i64 %idxprom57, !dbg !155
  %16 = load i32, i32* %arrayidx58, align 4, !dbg !155
  %idxprom59 = sext i32 %or to i64, !dbg !156
  %arrayidx60 = getelementptr inbounds [1024 x i32], [1024 x i32]* %img, i64 0, i64 %idxprom59, !dbg !156
  %17 = load i32, i32* %arrayidx60, align 4, !dbg !156
  %add61 = add nsw i32 %16, %17, !dbg !157
  call void @llvm.dbg.value(metadata i32 %add61, metadata !146, metadata !DIExpression()), !dbg !147
  %idxprom62 = sext i32 %xor to i64, !dbg !158
  %arrayidx63 = getelementptr inbounds [1024 x i32], [1024 x i32]* %img, i64 0, i64 %idxprom62, !dbg !158
  %18 = load i32, i32* %arrayidx63, align 4, !dbg !158
  %idxprom64 = sext i32 %or to i64, !dbg !159
  %arrayidx65 = getelementptr inbounds [1024 x i32], [1024 x i32]* %img, i64 0, i64 %idxprom64, !dbg !159
  %19 = load i32, i32* %arrayidx65, align 4, !dbg !159
  %sub66 = sub nsw i32 %18, %19, !dbg !160
  %idxprom67 = sext i32 %or to i64, !dbg !161
  %arrayidx68 = getelementptr inbounds [1024 x i32], [1024 x i32]* %img, i64 0, i64 %idxprom67, !dbg !161
  store i32 %sub66, i32* %arrayidx68, align 4, !dbg !162
  %idxprom69 = sext i32 %xor to i64, !dbg !163
  %arrayidx70 = getelementptr inbounds [1024 x i32], [1024 x i32]* %img, i64 0, i64 %idxprom69, !dbg !163
  store i32 %add61, i32* %arrayidx70, align 4, !dbg !164
  %shl = shl i32 %xor, %log.0, !dbg !165
  %sub71 = sub nsw i32 %size, 1, !dbg !166
  %and = and i32 %shl, %sub71, !dbg !167
  call void @llvm.dbg.value(metadata i32 %and, metadata !168, metadata !DIExpression()), !dbg !169
  %tobool72 = icmp ne i32 %and, 0, !dbg !170
  br i1 %tobool72, label %if.then, label %if.end, !dbg !172

if.then:                                          ; preds = %for.body44
  %idxprom73 = sext i32 %and to i64, !dbg !173
  %arrayidx74 = getelementptr inbounds [512 x i32], [512 x i32]* %real_twid, i64 0, i64 %idxprom73, !dbg !173
  %20 = load i32, i32* %arrayidx74, align 4, !dbg !173
  %idxprom75 = sext i32 %or to i64, !dbg !175
  %arrayidx76 = getelementptr inbounds [1024 x i32], [1024 x i32]* %real, i64 0, i64 %idxprom75, !dbg !175
  %21 = load i32, i32* %arrayidx76, align 4, !dbg !175
  %mul = mul nsw i32 %20, %21, !dbg !176
  %idxprom77 = sext i32 %and to i64, !dbg !177
  %arrayidx78 = getelementptr inbounds [512 x i32], [512 x i32]* %img_twid, i64 0, i64 %idxprom77, !dbg !177
  %22 = load i32, i32* %arrayidx78, align 4, !dbg !177
  %idxprom79 = sext i32 %or to i64, !dbg !178
  %arrayidx80 = getelementptr inbounds [1024 x i32], [1024 x i32]* %img, i64 0, i64 %idxprom79, !dbg !178
  %23 = load i32, i32* %arrayidx80, align 4, !dbg !178
  %mul81 = mul nsw i32 %22, %23, !dbg !179
  %sub82 = sub nsw i32 %mul, %mul81, !dbg !180
  call void @llvm.dbg.value(metadata i32 %sub82, metadata !146, metadata !DIExpression()), !dbg !147
  %idxprom83 = sext i32 %and to i64, !dbg !181
  %arrayidx84 = getelementptr inbounds [512 x i32], [512 x i32]* %real_twid, i64 0, i64 %idxprom83, !dbg !181
  %24 = load i32, i32* %arrayidx84, align 4, !dbg !181
  %idxprom85 = sext i32 %or to i64, !dbg !182
  %arrayidx86 = getelementptr inbounds [1024 x i32], [1024 x i32]* %img, i64 0, i64 %idxprom85, !dbg !182
  %25 = load i32, i32* %arrayidx86, align 4, !dbg !182
  %mul87 = mul nsw i32 %24, %25, !dbg !183
  %idxprom88 = sext i32 %and to i64, !dbg !184
  %arrayidx89 = getelementptr inbounds [512 x i32], [512 x i32]* %img_twid, i64 0, i64 %idxprom88, !dbg !184
  %26 = load i32, i32* %arrayidx89, align 4, !dbg !184
  %idxprom90 = sext i32 %or to i64, !dbg !185
  %arrayidx91 = getelementptr inbounds [1024 x i32], [1024 x i32]* %real, i64 0, i64 %idxprom90, !dbg !185
  %27 = load i32, i32* %arrayidx91, align 4, !dbg !185
  %mul92 = mul nsw i32 %26, %27, !dbg !186
  %add93 = add nsw i32 %mul87, %mul92, !dbg !187
  %idxprom94 = sext i32 %or to i64, !dbg !188
  %arrayidx95 = getelementptr inbounds [1024 x i32], [1024 x i32]* %img, i64 0, i64 %idxprom94, !dbg !188
  store i32 %add93, i32* %arrayidx95, align 4, !dbg !189
  %idxprom96 = sext i32 %or to i64, !dbg !190
  %arrayidx97 = getelementptr inbounds [1024 x i32], [1024 x i32]* %real, i64 0, i64 %idxprom96, !dbg !190
  store i32 %sub82, i32* %arrayidx97, align 4, !dbg !191
  br label %if.end, !dbg !192

if.end:                                           ; preds = %if.then, %for.body44
  br label %for.inc98, !dbg !193

for.inc98:                                        ; preds = %if.end
  %inc99 = add nsw i32 %or, 1, !dbg !194
  call void @llvm.dbg.value(metadata i32 %inc99, metadata !130, metadata !DIExpression()), !dbg !131
  br label %for.cond42, !dbg !195, !llvm.loop !196

for.end100:                                       ; preds = %for.cond42
  br label %for.inc101, !dbg !199

for.inc101:                                       ; preds = %for.end100
  %shr102 = ashr i32 %span.0, 1, !dbg !200
  call void @llvm.dbg.value(metadata i32 %shr102, metadata !123, metadata !DIExpression()), !dbg !124
  %inc103 = add nsw i32 %log.0, 1, !dbg !201
  call void @llvm.dbg.value(metadata i32 %inc103, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond40, !dbg !202, !llvm.loop !203

for.end104:                                       ; preds = %for.cond40
  br label %VITIS_LOOP_58_5, !dbg !204

VITIS_LOOP_58_5:                                  ; preds = %for.end104
  call void @llvm.dbg.value(metadata i32 0, metadata !206, metadata !DIExpression()), !dbg !208
  br label %for.cond106, !dbg !209

for.cond106:                                      ; preds = %for.inc114, %VITIS_LOOP_58_5
  %i105.0 = phi i32 [ 0, %VITIS_LOOP_58_5 ], [ %inc115, %for.inc114 ]
  call void @llvm.dbg.value(metadata i32 %i105.0, metadata !206, metadata !DIExpression()), !dbg !208
  %cmp107 = icmp slt i32 %i105.0, %size, !dbg !210
  br i1 %cmp107, label %for.body109, label %for.cond.cleanup108, !dbg !212

for.cond.cleanup108:                              ; preds = %for.cond106
  br label %for.end116

for.body109:                                      ; preds = %for.cond106
  %idxprom110 = sext i32 %i105.0 to i64, !dbg !213
  %arrayidx111 = getelementptr inbounds [1024 x i32], [1024 x i32]* %real, i64 0, i64 %idxprom110, !dbg !213
  %28 = load i32, i32* %arrayidx111, align 4, !dbg !213
  %idxprom112 = sext i32 %i105.0 to i64, !dbg !214
  %arrayidx113 = getelementptr inbounds i32, i32* %yreal, i64 %idxprom112, !dbg !214
  store i32 %28, i32* %arrayidx113, align 4, !dbg !215
  br label %for.inc114, !dbg !214

for.inc114:                                       ; preds = %for.body109
  %inc115 = add nsw i32 %i105.0, 1, !dbg !216
  call void @llvm.dbg.value(metadata i32 %inc115, metadata !206, metadata !DIExpression()), !dbg !208
  br label %for.cond106, !dbg !217, !llvm.loop !218

for.end116:                                       ; preds = %for.cond.cleanup108
  br label %VITIS_LOOP_60_6, !dbg !219

VITIS_LOOP_60_6:                                  ; preds = %for.end116
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !223
  br label %for.cond118, !dbg !224

for.cond118:                                      ; preds = %for.inc126, %VITIS_LOOP_60_6
  %i117.0 = phi i32 [ 0, %VITIS_LOOP_60_6 ], [ %inc127, %for.inc126 ]
  call void @llvm.dbg.value(metadata i32 %i117.0, metadata !221, metadata !DIExpression()), !dbg !223
  %cmp119 = icmp slt i32 %i117.0, %size, !dbg !225
  br i1 %cmp119, label %for.body121, label %for.cond.cleanup120, !dbg !227

for.cond.cleanup120:                              ; preds = %for.cond118
  br label %for.end128

for.body121:                                      ; preds = %for.cond118
  %idxprom122 = sext i32 %i117.0 to i64, !dbg !228
  %arrayidx123 = getelementptr inbounds [1024 x i32], [1024 x i32]* %img, i64 0, i64 %idxprom122, !dbg !228
  %29 = load i32, i32* %arrayidx123, align 4, !dbg !228
  %idxprom124 = sext i32 %i117.0 to i64, !dbg !229
  %arrayidx125 = getelementptr inbounds i32, i32* %yimg, i64 %idxprom124, !dbg !229
  store i32 %29, i32* %arrayidx125, align 4, !dbg !230
  br label %for.inc126, !dbg !229

for.inc126:                                       ; preds = %for.body121
  %inc127 = add nsw i32 %i117.0, 1, !dbg !231
  call void @llvm.dbg.value(metadata i32 %inc127, metadata !221, metadata !DIExpression()), !dbg !223
  br label %for.cond118, !dbg !232, !llvm.loop !233

for.end128:                                       ; preds = %for.cond.cleanup120
  %30 = bitcast [512 x i32]* %img_twid to i8*, !dbg !236
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* %30) #8, !dbg !236
  %31 = bitcast [512 x i32]* %real_twid to i8*, !dbg !236
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* %31) #8, !dbg !236
  %32 = bitcast [1024 x i32]* %img to i8*, !dbg !236
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %32) #8, !dbg !236
  %33 = bitcast [1024 x i32]* %real to i8*, !dbg !236
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %33) #8, !dbg !236
  ret void, !dbg !236
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

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inaccessiblememonly nounwind }
attributes #3 = { argmemonly nounwind }
attributes #4 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32768" "xlx.source"="user" }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="16384" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/workspace/examples/fft_strided/fft_prj/solution/.autopilot/db/fft_BAK.pp.0.cpp", directory: "/workspace/examples/fft_strided")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!"clang version 7.0.0 "}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_S_S_S_S_", scope: !10, file: !10, line: 3, type: !11, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DIFile(filename: "fft_BAK.cpp", directory: "/workspace/examples/fft_strided")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !4, !13, !13, !13, !13, !13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!14 = !{!15}
!15 = !{!"fpga.top", !"user", !16}
!16 = !DILocation(line: 3, column: 16, scope: !9)
!17 = !DILocalVariable(name: "size", arg: 1, scope: !9, file: !10, line: 3, type: !4)
!18 = !DILocation(line: 3, column: 60, scope: !9)
!19 = !DILocalVariable(name: "xreal", arg: 2, scope: !9, file: !10, line: 3, type: !13)
!20 = !DILocation(line: 3, column: 70, scope: !9)
!21 = !DILocalVariable(name: "ximg", arg: 3, scope: !9, file: !10, line: 3, type: !13)
!22 = !DILocation(line: 3, column: 87, scope: !9)
!23 = !DILocalVariable(name: "xreal_twid", arg: 4, scope: !9, file: !10, line: 4, type: !13)
!24 = !DILocation(line: 4, column: 18, scope: !9)
!25 = !DILocalVariable(name: "ximg_twid", arg: 5, scope: !9, file: !10, line: 4, type: !13)
!26 = !DILocation(line: 4, column: 44, scope: !9)
!27 = !DILocalVariable(name: "yreal", arg: 6, scope: !9, file: !10, line: 5, type: !13)
!28 = !DILocation(line: 5, column: 18, scope: !9)
!29 = !DILocalVariable(name: "yimg", arg: 7, scope: !9, file: !10, line: 6, type: !13)
!30 = !DILocation(line: 6, column: 18, scope: !9)
!31 = !DILocation(line: 7, column: 9, scope: !9)
!32 = !DILocation(line: 8, column: 9, scope: !9)
!33 = !DILocation(line: 9, column: 9, scope: !9)
!34 = !DILocation(line: 10, column: 9, scope: !9)
!35 = !DILocation(line: 11, column: 9, scope: !9)
!36 = !DILocation(line: 12, column: 9, scope: !9)
!37 = !DILocation(line: 13, column: 9, scope: !9)
!38 = !DILocation(line: 14, column: 9, scope: !9)
!39 = !DILocalVariable(name: "log", scope: !9, file: !10, line: 15, type: !4)
!40 = !DILocation(line: 15, column: 23, scope: !9)
!41 = !DILocation(line: 19, column: 3, scope: !9)
!42 = !DILocalVariable(name: "real", scope: !9, file: !10, line: 19, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 1024)
!46 = !DILocation(line: 19, column: 7, scope: !9)
!47 = !DILocation(line: 20, column: 3, scope: !9)
!48 = !DILocalVariable(name: "img", scope: !9, file: !10, line: 20, type: !43)
!49 = !DILocation(line: 20, column: 7, scope: !9)
!50 = !DILocation(line: 21, column: 3, scope: !9)
!51 = !DILocalVariable(name: "real_twid", scope: !9, file: !10, line: 21, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 512)
!55 = !DILocation(line: 21, column: 7, scope: !9)
!56 = !DILocation(line: 22, column: 3, scope: !9)
!57 = !DILocalVariable(name: "img_twid", scope: !9, file: !10, line: 22, type: !52)
!58 = !DILocation(line: 22, column: 7, scope: !9)
!59 = !DILocalVariable(name: "i", scope: !60, file: !10, line: 24, type: !4)
!60 = distinct !DILexicalBlock(scope: !9, file: !10, line: 24, column: 20)
!61 = !DILocation(line: 24, column: 29, scope: !60)
!62 = !DILocation(line: 24, column: 25, scope: !60)
!63 = !DILocation(line: 24, column: 38, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !10, line: 24, column: 20)
!65 = !DILocation(line: 24, column: 20, scope: !60)
!66 = !DILocation(line: 25, column: 15, scope: !64)
!67 = !DILocation(line: 25, column: 5, scope: !64)
!68 = !DILocation(line: 25, column: 13, scope: !64)
!69 = !DILocation(line: 24, column: 47, scope: !64)
!70 = !DILocation(line: 24, column: 20, scope: !64)
!71 = distinct !{!71, !65, !72, !73}
!72 = !DILocation(line: 25, column: 22, scope: !60)
!73 = !{!"llvm.loop.name", !"VITIS_LOOP_24_1"}
!74 = !DILocalVariable(name: "i", scope: !75, file: !10, line: 26, type: !4)
!75 = distinct !DILexicalBlock(scope: !9, file: !10, line: 26, column: 20)
!76 = !DILocation(line: 26, column: 29, scope: !75)
!77 = !DILocation(line: 26, column: 25, scope: !75)
!78 = !DILocation(line: 26, column: 38, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !10, line: 26, column: 20)
!80 = !DILocation(line: 26, column: 20, scope: !75)
!81 = !DILocation(line: 27, column: 14, scope: !79)
!82 = !DILocation(line: 27, column: 5, scope: !79)
!83 = !DILocation(line: 27, column: 12, scope: !79)
!84 = !DILocation(line: 26, column: 47, scope: !79)
!85 = !DILocation(line: 26, column: 20, scope: !79)
!86 = distinct !{!86, !80, !87, !88}
!87 = !DILocation(line: 27, column: 20, scope: !75)
!88 = !{!"llvm.loop.name", !"VITIS_LOOP_26_2"}
!89 = !DILocalVariable(name: "i", scope: !90, file: !10, line: 28, type: !4)
!90 = distinct !DILexicalBlock(scope: !9, file: !10, line: 28, column: 20)
!91 = !DILocation(line: 28, column: 29, scope: !90)
!92 = !DILocation(line: 28, column: 25, scope: !90)
!93 = !DILocation(line: 28, column: 45, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !10, line: 28, column: 20)
!95 = !DILocation(line: 28, column: 38, scope: !94)
!96 = !DILocation(line: 28, column: 20, scope: !90)
!97 = !DILocation(line: 29, column: 20, scope: !94)
!98 = !DILocation(line: 29, column: 5, scope: !94)
!99 = !DILocation(line: 29, column: 18, scope: !94)
!100 = !DILocation(line: 28, column: 51, scope: !94)
!101 = !DILocation(line: 28, column: 20, scope: !94)
!102 = distinct !{!102, !96, !103, !104}
!103 = !DILocation(line: 29, column: 32, scope: !90)
!104 = !{!"llvm.loop.name", !"VITIS_LOOP_28_3"}
!105 = !DILocalVariable(name: "i", scope: !106, file: !10, line: 30, type: !4)
!106 = distinct !DILexicalBlock(scope: !9, file: !10, line: 30, column: 20)
!107 = !DILocation(line: 30, column: 29, scope: !106)
!108 = !DILocation(line: 30, column: 25, scope: !106)
!109 = !DILocation(line: 30, column: 45, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !10, line: 30, column: 20)
!111 = !DILocation(line: 30, column: 38, scope: !110)
!112 = !DILocation(line: 30, column: 20, scope: !106)
!113 = !DILocation(line: 31, column: 19, scope: !110)
!114 = !DILocation(line: 31, column: 5, scope: !110)
!115 = !DILocation(line: 31, column: 17, scope: !110)
!116 = !DILocation(line: 30, column: 51, scope: !110)
!117 = !DILocation(line: 30, column: 20, scope: !110)
!118 = distinct !{!118, !112, !119, !120}
!119 = !DILocation(line: 31, column: 30, scope: !106)
!120 = !{!"llvm.loop.name", !"VITIS_LOOP_30_4"}
!121 = !DILocation(line: 34, column: 20, scope: !122)
!122 = distinct !DILexicalBlock(scope: !9, file: !10, line: 34, column: 3)
!123 = !DILocalVariable(name: "span", scope: !9, file: !10, line: 15, type: !4)
!124 = !DILocation(line: 15, column: 17, scope: !9)
!125 = !DILocation(line: 34, column: 8, scope: !122)
!126 = !DILocation(line: 34, column: 26, scope: !127)
!127 = distinct !DILexicalBlock(scope: !122, file: !10, line: 34, column: 3)
!128 = !DILocation(line: 34, column: 3, scope: !122)
!129 = !DILocation(line: 34, column: 51, scope: !127)
!130 = !DILocalVariable(name: "odd", scope: !9, file: !10, line: 15, type: !4)
!131 = !DILocation(line: 15, column: 12, scope: !9)
!132 = !DILocation(line: 36, column: 10, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !10, line: 36, column: 5)
!134 = distinct !DILexicalBlock(scope: !127, file: !10, line: 34, column: 51)
!135 = !DILocation(line: 36, column: 26, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !10, line: 36, column: 5)
!137 = !DILocation(line: 36, column: 5, scope: !133)
!138 = !DILocation(line: 37, column: 11, scope: !139)
!139 = distinct !DILexicalBlock(scope: !136, file: !10, line: 36, column: 41)
!140 = !DILocation(line: 38, column: 18, scope: !139)
!141 = !DILocalVariable(name: "even", scope: !9, file: !10, line: 15, type: !4)
!142 = !DILocation(line: 15, column: 6, scope: !9)
!143 = !DILocation(line: 40, column: 14, scope: !139)
!144 = !DILocation(line: 40, column: 27, scope: !139)
!145 = !DILocation(line: 40, column: 25, scope: !139)
!146 = !DILocalVariable(name: "temp", scope: !9, file: !10, line: 16, type: !4)
!147 = !DILocation(line: 16, column: 7, scope: !9)
!148 = !DILocation(line: 41, column: 19, scope: !139)
!149 = !DILocation(line: 41, column: 32, scope: !139)
!150 = !DILocation(line: 41, column: 30, scope: !139)
!151 = !DILocation(line: 41, column: 7, scope: !139)
!152 = !DILocation(line: 41, column: 17, scope: !139)
!153 = !DILocation(line: 42, column: 7, scope: !139)
!154 = !DILocation(line: 42, column: 18, scope: !139)
!155 = !DILocation(line: 44, column: 14, scope: !139)
!156 = !DILocation(line: 44, column: 26, scope: !139)
!157 = !DILocation(line: 44, column: 24, scope: !139)
!158 = !DILocation(line: 45, column: 18, scope: !139)
!159 = !DILocation(line: 45, column: 30, scope: !139)
!160 = !DILocation(line: 45, column: 28, scope: !139)
!161 = !DILocation(line: 45, column: 7, scope: !139)
!162 = !DILocation(line: 45, column: 16, scope: !139)
!163 = !DILocation(line: 46, column: 7, scope: !139)
!164 = !DILocation(line: 46, column: 17, scope: !139)
!165 = !DILocation(line: 48, column: 25, scope: !139)
!166 = !DILocation(line: 48, column: 41, scope: !139)
!167 = !DILocation(line: 48, column: 33, scope: !139)
!168 = !DILocalVariable(name: "rootindex", scope: !9, file: !10, line: 15, type: !4)
!169 = !DILocation(line: 15, column: 28, scope: !9)
!170 = !DILocation(line: 49, column: 11, scope: !171)
!171 = distinct !DILexicalBlock(scope: !139, file: !10, line: 49, column: 11)
!172 = !DILocation(line: 49, column: 11, scope: !139)
!173 = !DILocation(line: 51, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !10, line: 49, column: 22)
!175 = !DILocation(line: 51, column: 36, scope: !174)
!176 = !DILocation(line: 51, column: 34, scope: !174)
!177 = !DILocation(line: 51, column: 48, scope: !174)
!178 = !DILocation(line: 51, column: 70, scope: !174)
!179 = !DILocation(line: 51, column: 68, scope: !174)
!180 = !DILocation(line: 51, column: 46, scope: !174)
!181 = !DILocation(line: 53, column: 13, scope: !174)
!182 = !DILocation(line: 53, column: 36, scope: !174)
!183 = !DILocation(line: 53, column: 34, scope: !174)
!184 = !DILocation(line: 53, column: 47, scope: !174)
!185 = !DILocation(line: 53, column: 69, scope: !174)
!186 = !DILocation(line: 53, column: 67, scope: !174)
!187 = !DILocation(line: 53, column: 45, scope: !174)
!188 = !DILocation(line: 52, column: 9, scope: !174)
!189 = !DILocation(line: 52, column: 18, scope: !174)
!190 = !DILocation(line: 54, column: 9, scope: !174)
!191 = !DILocation(line: 54, column: 19, scope: !174)
!192 = !DILocation(line: 55, column: 7, scope: !174)
!193 = !DILocation(line: 56, column: 5, scope: !139)
!194 = !DILocation(line: 36, column: 37, scope: !136)
!195 = !DILocation(line: 36, column: 5, scope: !136)
!196 = distinct !{!196, !137, !197, !198}
!197 = !DILocation(line: 56, column: 5, scope: !133)
!198 = !{!"llvm.loop.name", !"inner"}
!199 = !DILocation(line: 57, column: 3, scope: !134)
!200 = !DILocation(line: 34, column: 37, scope: !127)
!201 = !DILocation(line: 34, column: 47, scope: !127)
!202 = !DILocation(line: 34, column: 3, scope: !127)
!203 = distinct !{!203, !128, !204, !205}
!204 = !DILocation(line: 57, column: 3, scope: !122)
!205 = !{!"llvm.loop.name", !"outer"}
!206 = !DILocalVariable(name: "i", scope: !207, file: !10, line: 58, type: !4)
!207 = distinct !DILexicalBlock(scope: !9, file: !10, line: 58, column: 20)
!208 = !DILocation(line: 58, column: 29, scope: !207)
!209 = !DILocation(line: 58, column: 25, scope: !207)
!210 = !DILocation(line: 58, column: 38, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !10, line: 58, column: 20)
!212 = !DILocation(line: 58, column: 20, scope: !207)
!213 = !DILocation(line: 59, column: 16, scope: !211)
!214 = !DILocation(line: 59, column: 5, scope: !211)
!215 = !DILocation(line: 59, column: 14, scope: !211)
!216 = !DILocation(line: 58, column: 47, scope: !211)
!217 = !DILocation(line: 58, column: 20, scope: !211)
!218 = distinct !{!218, !212, !219, !220}
!219 = !DILocation(line: 59, column: 22, scope: !207)
!220 = !{!"llvm.loop.name", !"VITIS_LOOP_58_5"}
!221 = !DILocalVariable(name: "i", scope: !222, file: !10, line: 60, type: !4)
!222 = distinct !DILexicalBlock(scope: !9, file: !10, line: 60, column: 20)
!223 = !DILocation(line: 60, column: 29, scope: !222)
!224 = !DILocation(line: 60, column: 25, scope: !222)
!225 = !DILocation(line: 60, column: 38, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !10, line: 60, column: 20)
!227 = !DILocation(line: 60, column: 20, scope: !222)
!228 = !DILocation(line: 61, column: 15, scope: !226)
!229 = !DILocation(line: 61, column: 5, scope: !226)
!230 = !DILocation(line: 61, column: 13, scope: !226)
!231 = !DILocation(line: 60, column: 47, scope: !226)
!232 = !DILocation(line: 60, column: 20, scope: !226)
!233 = distinct !{!233, !227, !234, !235}
!234 = !DILocation(line: 61, column: 20, scope: !222)
!235 = !{!"llvm.loop.name", !"VITIS_LOOP_60_6"}
!236 = !DILocation(line: 62, column: 1, scope: !9)
