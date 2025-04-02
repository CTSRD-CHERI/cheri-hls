; ModuleID = '/workspace/examples/kmp/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @CPF(i32* "fpga.decayed.dim.hint"="4" %pattern, i32* "fpga.decayed.dim.hint"="4" %kmpNext) #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32* %pattern, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.value(metadata i32* %kmpNext, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !19
  %arrayidx = getelementptr inbounds i32, i32* %kmpNext, i64 0, !dbg !20
  store i32 0, i32* %arrayidx, align 4, !dbg !21
  br label %c1, !dbg !20

c1:                                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !22, metadata !DIExpression()), !dbg !23
  br label %for.cond, !dbg !24

for.cond:                                         ; preds = %for.inc, %c1
  %k.0 = phi i32 [ 0, %c1 ], [ %k.2, %for.inc ]
  %q.0 = phi i32 [ 1, %c1 ], [ %inc15, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %q.0, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !18, metadata !DIExpression()), !dbg !19
  %cmp = icmp slt i32 %q.0, 4, !dbg !26
  br i1 %cmp, label %for.body, label %for.end, !dbg !28

for.body:                                         ; preds = %for.cond
  br label %c2, !dbg !29

c2:                                               ; preds = %for.body
  br label %while.cond, !dbg !30

while.cond:                                       ; preds = %while.body, %c2
  %k.1 = phi i32 [ %k.0, %c2 ], [ %3, %while.body ]
  call void @llvm.dbg.value(metadata i32 %k.1, metadata !18, metadata !DIExpression()), !dbg !19
  %cmp1 = icmp sgt i32 %k.1, 0, !dbg !32
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !33

land.rhs:                                         ; preds = %while.cond
  %idxprom = sext i32 %k.1 to i64, !dbg !34
  %arrayidx2 = getelementptr inbounds i32, i32* %pattern, i64 %idxprom, !dbg !34
  %0 = load i32, i32* %arrayidx2, align 4, !dbg !34
  %idxprom3 = sext i32 %q.0 to i64, !dbg !35
  %arrayidx4 = getelementptr inbounds i32, i32* %pattern, i64 %idxprom3, !dbg !35
  %1 = load i32, i32* %arrayidx4, align 4, !dbg !35
  %cmp5 = icmp ne i32 %0, %1, !dbg !36
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %2, label %while.body, label %while.end, !dbg !30

while.body:                                       ; preds = %land.end
  %idxprom6 = sext i32 %q.0 to i64, !dbg !37
  %arrayidx7 = getelementptr inbounds i32, i32* %kmpNext, i64 %idxprom6, !dbg !37
  %3 = load i32, i32* %arrayidx7, align 4, !dbg !37
  call void @llvm.dbg.value(metadata i32 %3, metadata !18, metadata !DIExpression()), !dbg !19
  br label %while.cond, !dbg !30, !llvm.loop !39

while.end:                                        ; preds = %land.end
  %idxprom8 = sext i32 %k.1 to i64, !dbg !42
  %arrayidx9 = getelementptr inbounds i32, i32* %pattern, i64 %idxprom8, !dbg !42
  %4 = load i32, i32* %arrayidx9, align 4, !dbg !42
  %idxprom10 = sext i32 %q.0 to i64, !dbg !44
  %arrayidx11 = getelementptr inbounds i32, i32* %pattern, i64 %idxprom10, !dbg !44
  %5 = load i32, i32* %arrayidx11, align 4, !dbg !44
  %cmp12 = icmp eq i32 %4, %5, !dbg !45
  br i1 %cmp12, label %if.then, label %if.end, !dbg !46

if.then:                                          ; preds = %while.end
  %inc = add nsw i32 %k.1, 1, !dbg !47
  call void @llvm.dbg.value(metadata i32 %inc, metadata !18, metadata !DIExpression()), !dbg !19
  br label %if.end, !dbg !49

if.end:                                           ; preds = %if.then, %while.end
  %k.2 = phi i32 [ %inc, %if.then ], [ %k.1, %while.end ]
  call void @llvm.dbg.value(metadata i32 %k.2, metadata !18, metadata !DIExpression()), !dbg !19
  %idxprom13 = sext i32 %q.0 to i64, !dbg !50
  %arrayidx14 = getelementptr inbounds i32, i32* %kmpNext, i64 %idxprom13, !dbg !50
  store i32 %k.2, i32* %arrayidx14, align 4, !dbg !51
  br label %for.inc, !dbg !52

for.inc:                                          ; preds = %if.end
  %inc15 = add nsw i32 %q.0, 1, !dbg !53
  call void @llvm.dbg.value(metadata i32 %inc15, metadata !22, metadata !DIExpression()), !dbg !23
  br label %for.cond, !dbg !54, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  ret void, !dbg !58
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
define void @hls_top(i32 %size, i32* "fpga.decayed.dim.hint"="4" %xpattern, i32* "fpga.decayed.dim.hint"="16206" %xinput, i32* "fpga.decayed.dim.hint"="4" %xkmpNext, i32* "fpga.decayed.dim.hint"="1" %xn_matches) #3 !dbg !59 !fpga.function.pragma !62 {
entry:
  %pattern = alloca [4 x i32], align 4
  %input = alloca [16206 x i32], align 4
  %kmpNext = alloca [4 x i32], align 4
  %n_matches = alloca [1 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32* %xpattern, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32* %xinput, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i32* %xkmpNext, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32* %xn_matches, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xpattern, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !75
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xinput, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !76
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xkmpNext, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !77
  call void @llvm.sideeffect() #7 [ "xlx_m_axi"(i32* %xn_matches, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !78
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !79
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !80
  %0 = bitcast [4 x i32]* %pattern to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #9, !dbg !81
  call void @llvm.dbg.declare(metadata [4 x i32]* %pattern, metadata !82, metadata !DIExpression()), !dbg !86
  %1 = bitcast [16206 x i32]* %input to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 64824, i8* %1) #9, !dbg !87
  call void @llvm.dbg.declare(metadata [16206 x i32]* %input, metadata !88, metadata !DIExpression()), !dbg !92
  %2 = bitcast [4 x i32]* %kmpNext to i8*, !dbg !93
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #9, !dbg !93
  call void @llvm.dbg.declare(metadata [4 x i32]* %kmpNext, metadata !94, metadata !DIExpression()), !dbg !95
  %3 = bitcast [1 x i32]* %n_matches to i8*, !dbg !96
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #9, !dbg !96
  call void @llvm.dbg.declare(metadata [1 x i32]* %n_matches, metadata !97, metadata !DIExpression()), !dbg !101
  br label %VITIS_LOOP_41_1, !dbg !96

VITIS_LOOP_41_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !102, metadata !DIExpression()), !dbg !103
  br label %for.cond, !dbg !104

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_41_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_41_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !102, metadata !DIExpression()), !dbg !103
  %cmp = icmp slt i32 %i.0, 4, !dbg !106
  br i1 %cmp, label %for.body, label %for.end, !dbg !108

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !109
  %arrayidx = getelementptr inbounds i32, i32* %xpattern, i64 %idxprom, !dbg !109
  %4 = load i32, i32* %arrayidx, align 4, !dbg !109
  %idxprom1 = sext i32 %i.0 to i64, !dbg !110
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %pattern, i64 0, i64 %idxprom1, !dbg !110
  store i32 %4, i32* %arrayidx2, align 4, !dbg !111
  br label %for.inc, !dbg !110

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !112
  call void @llvm.dbg.value(metadata i32 %inc, metadata !102, metadata !DIExpression()), !dbg !103
  br label %for.cond, !dbg !113, !llvm.loop !114

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_43_2, !dbg !115

VITIS_LOOP_43_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !102, metadata !DIExpression()), !dbg !103
  br label %for.cond3, !dbg !117

for.cond3:                                        ; preds = %for.inc10, %VITIS_LOOP_43_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_43_2 ], [ %inc11, %for.inc10 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !102, metadata !DIExpression()), !dbg !103
  %cmp4 = icmp slt i32 %i.1, 4, !dbg !119
  br i1 %cmp4, label %for.body5, label %for.end12, !dbg !121

for.body5:                                        ; preds = %for.cond3
  %idxprom6 = sext i32 %i.1 to i64, !dbg !122
  %arrayidx7 = getelementptr inbounds i32, i32* %xkmpNext, i64 %idxprom6, !dbg !122
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !122
  %idxprom8 = sext i32 %i.1 to i64, !dbg !123
  %arrayidx9 = getelementptr inbounds [4 x i32], [4 x i32]* %kmpNext, i64 0, i64 %idxprom8, !dbg !123
  store i32 %5, i32* %arrayidx9, align 4, !dbg !124
  br label %for.inc10, !dbg !123

for.inc10:                                        ; preds = %for.body5
  %inc11 = add nsw i32 %i.1, 1, !dbg !125
  call void @llvm.dbg.value(metadata i32 %inc11, metadata !102, metadata !DIExpression()), !dbg !103
  br label %for.cond3, !dbg !126, !llvm.loop !127

for.end12:                                        ; preds = %for.cond3
  br label %VITIS_LOOP_45_3, !dbg !128

VITIS_LOOP_45_3:                                  ; preds = %for.end12
  call void @llvm.dbg.value(metadata i32 0, metadata !102, metadata !DIExpression()), !dbg !103
  br label %for.cond13, !dbg !130

for.cond13:                                       ; preds = %for.inc20, %VITIS_LOOP_45_3
  %i.2 = phi i32 [ 0, %VITIS_LOOP_45_3 ], [ %inc21, %for.inc20 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !102, metadata !DIExpression()), !dbg !103
  %cmp14 = icmp slt i32 %i.2, %size, !dbg !132
  br i1 %cmp14, label %for.body15, label %for.end22, !dbg !134

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %i.2 to i64, !dbg !135
  %arrayidx17 = getelementptr inbounds i32, i32* %xinput, i64 %idxprom16, !dbg !135
  %6 = load i32, i32* %arrayidx17, align 4, !dbg !135
  %idxprom18 = sext i32 %i.2 to i64, !dbg !136
  %arrayidx19 = getelementptr inbounds [16206 x i32], [16206 x i32]* %input, i64 0, i64 %idxprom18, !dbg !136
  store i32 %6, i32* %arrayidx19, align 4, !dbg !137
  br label %for.inc20, !dbg !136

for.inc20:                                        ; preds = %for.body15
  %inc21 = add nsw i32 %i.2, 1, !dbg !138
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !102, metadata !DIExpression()), !dbg !103
  br label %for.cond13, !dbg !139, !llvm.loop !140

for.end22:                                        ; preds = %for.cond13
  %arrayidx23 = getelementptr inbounds [1 x i32], [1 x i32]* %n_matches, i64 0, i64 0, !dbg !143
  store i32 0, i32* %arrayidx23, align 4, !dbg !144
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %pattern, i32 0, i32 0, !dbg !145
  %arraydecay24 = getelementptr inbounds [4 x i32], [4 x i32]* %kmpNext, i32 0, i32 0, !dbg !146
  call void @CPF(i32* %arraydecay, i32* %arraydecay24), !dbg !147
  call void @llvm.dbg.value(metadata i32 0, metadata !148, metadata !DIExpression()), !dbg !149
  br label %k1, !dbg !150

k1:                                               ; preds = %for.end22
  call void @llvm.dbg.value(metadata i32 0, metadata !102, metadata !DIExpression()), !dbg !103
  br label %for.cond25, !dbg !151

for.cond25:                                       ; preds = %for.inc49, %k1
  %i.3 = phi i32 [ 0, %k1 ], [ %inc50, %for.inc49 ]
  %q.0 = phi i32 [ 0, %k1 ], [ %q.3, %for.inc49 ]
  call void @llvm.dbg.value(metadata i32 %q.0, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !102, metadata !DIExpression()), !dbg !103
  %cmp26 = icmp slt i32 %i.3, %size, !dbg !153
  br i1 %cmp26, label %for.body27, label %for.end51, !dbg !155

for.body27:                                       ; preds = %for.cond25
  br label %k2, !dbg !156

k2:                                               ; preds = %for.body27
  br label %while.cond, !dbg !157

while.cond:                                       ; preds = %while.body, %k2
  %q.1 = phi i32 [ %q.0, %k2 ], [ %10, %while.body ]
  call void @llvm.dbg.value(metadata i32 %q.1, metadata !148, metadata !DIExpression()), !dbg !149
  %cmp28 = icmp sgt i32 %q.1, 0, !dbg !159
  br i1 %cmp28, label %land.rhs, label %land.end, !dbg !160

land.rhs:                                         ; preds = %while.cond
  %idxprom29 = sext i32 %q.1 to i64, !dbg !161
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %pattern, i64 0, i64 %idxprom29, !dbg !161
  %7 = load i32, i32* %arrayidx30, align 4, !dbg !161
  %idxprom31 = sext i32 %i.3 to i64, !dbg !162
  %arrayidx32 = getelementptr inbounds [16206 x i32], [16206 x i32]* %input, i64 0, i64 %idxprom31, !dbg !162
  %8 = load i32, i32* %arrayidx32, align 4, !dbg !162
  %cmp33 = icmp ne i32 %7, %8, !dbg !163
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp33, %land.rhs ]
  br i1 %9, label %while.body, label %while.end, !dbg !157

while.body:                                       ; preds = %land.end
  %idxprom34 = sext i32 %q.1 to i64, !dbg !164
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %kmpNext, i64 0, i64 %idxprom34, !dbg !164
  %10 = load i32, i32* %arrayidx35, align 4, !dbg !164
  call void @llvm.dbg.value(metadata i32 %10, metadata !148, metadata !DIExpression()), !dbg !149
  br label %while.cond, !dbg !157, !llvm.loop !166

while.end:                                        ; preds = %land.end
  %idxprom36 = sext i32 %q.1 to i64, !dbg !169
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %pattern, i64 0, i64 %idxprom36, !dbg !169
  %11 = load i32, i32* %arrayidx37, align 4, !dbg !169
  %idxprom38 = sext i32 %i.3 to i64, !dbg !171
  %arrayidx39 = getelementptr inbounds [16206 x i32], [16206 x i32]* %input, i64 0, i64 %idxprom38, !dbg !171
  %12 = load i32, i32* %arrayidx39, align 4, !dbg !171
  %cmp40 = icmp eq i32 %11, %12, !dbg !172
  br i1 %cmp40, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %while.end
  %inc41 = add nsw i32 %q.1, 1, !dbg !174
  call void @llvm.dbg.value(metadata i32 %inc41, metadata !148, metadata !DIExpression()), !dbg !149
  br label %if.end, !dbg !176

if.end:                                           ; preds = %if.then, %while.end
  %q.2 = phi i32 [ %inc41, %if.then ], [ %q.1, %while.end ]
  call void @llvm.dbg.value(metadata i32 %q.2, metadata !148, metadata !DIExpression()), !dbg !149
  %cmp42 = icmp sge i32 %q.2, 4, !dbg !177
  br i1 %cmp42, label %if.then43, label %if.end48, !dbg !179

if.then43:                                        ; preds = %if.end
  %arrayidx44 = getelementptr inbounds [1 x i32], [1 x i32]* %n_matches, i64 0, i64 0, !dbg !180
  %13 = load i32, i32* %arrayidx44, align 4, !dbg !180
  %add = add nsw i32 %13, 1, !dbg !182
  %arrayidx45 = getelementptr inbounds [1 x i32], [1 x i32]* %n_matches, i64 0, i64 0, !dbg !183
  store i32 %add, i32* %arrayidx45, align 4, !dbg !184
  %sub = sub nsw i32 %q.2, 1, !dbg !185
  %idxprom46 = sext i32 %sub to i64, !dbg !186
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %kmpNext, i64 0, i64 %idxprom46, !dbg !186
  %14 = load i32, i32* %arrayidx47, align 4, !dbg !186
  call void @llvm.dbg.value(metadata i32 %14, metadata !148, metadata !DIExpression()), !dbg !149
  br label %if.end48, !dbg !187

if.end48:                                         ; preds = %if.then43, %if.end
  %q.3 = phi i32 [ %14, %if.then43 ], [ %q.2, %if.end ]
  call void @llvm.dbg.value(metadata i32 %q.3, metadata !148, metadata !DIExpression()), !dbg !149
  br label %for.inc49, !dbg !188

for.inc49:                                        ; preds = %if.end48
  %inc50 = add nsw i32 %i.3, 1, !dbg !189
  call void @llvm.dbg.value(metadata i32 %inc50, metadata !102, metadata !DIExpression()), !dbg !103
  br label %for.cond25, !dbg !190, !llvm.loop !191

for.end51:                                        ; preds = %for.cond25
  %arrayidx52 = getelementptr inbounds [1 x i32], [1 x i32]* %n_matches, i64 0, i64 0, !dbg !194
  %15 = load i32, i32* %arrayidx52, align 4, !dbg !194
  %arrayidx53 = getelementptr inbounds i32, i32* %xn_matches, i64 0, !dbg !195
  store i32 %15, i32* %arrayidx53, align 4, !dbg !196
  %16 = bitcast [1 x i32]* %n_matches to i8*, !dbg !197
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #9, !dbg !197
  %17 = bitcast [4 x i32]* %kmpNext to i8*, !dbg !197
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %17) #9, !dbg !197
  %18 = bitcast [16206 x i32]* %input to i8*, !dbg !197
  call void @llvm.lifetime.end.p0i8(i64 64824, i8* %18) #9, !dbg !197
  %19 = bitcast [4 x i32]* %pattern to i8*, !dbg !197
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %19) #9, !dbg !197
  ret void, !dbg !197
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
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="128" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="518592" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/workspace/examples/kmp/kmp_prj/solution/.autopilot/db/kmp.pp.0.c", directory: "/workspace/examples/kmp")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!"clang version 7.0.0 "}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "CPF", scope: !10, file: !10, line: 8, type: !11, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DIFile(filename: "kmp.c", directory: "/workspace/examples/kmp")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!14 = !DILocalVariable(name: "pattern", arg: 1, scope: !9, file: !10, line: 8, type: !13)
!15 = !DILocation(line: 8, column: 14, scope: !9)
!16 = !DILocalVariable(name: "kmpNext", arg: 2, scope: !9, file: !10, line: 8, type: !13)
!17 = !DILocation(line: 8, column: 30, scope: !9)
!18 = !DILocalVariable(name: "k", scope: !9, file: !10, line: 9, type: !4)
!19 = !DILocation(line: 9, column: 7, scope: !9)
!20 = !DILocation(line: 11, column: 3, scope: !9)
!21 = !DILocation(line: 11, column: 14, scope: !9)
!22 = !DILocalVariable(name: "q", scope: !9, file: !10, line: 9, type: !4)
!23 = !DILocation(line: 9, column: 10, scope: !9)
!24 = !DILocation(line: 14, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !9, file: !10, line: 14, column: 3)
!26 = !DILocation(line: 14, column: 17, scope: !27)
!27 = distinct !DILexicalBlock(scope: !25, file: !10, line: 14, column: 3)
!28 = !DILocation(line: 14, column: 3, scope: !25)
!29 = !DILocation(line: 14, column: 27, scope: !27)
!30 = !DILocation(line: 16, column: 5, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !10, line: 14, column: 27)
!32 = !DILocation(line: 16, column: 14, scope: !31)
!33 = !DILocation(line: 16, column: 18, scope: !31)
!34 = !DILocation(line: 16, column: 21, scope: !31)
!35 = !DILocation(line: 16, column: 35, scope: !31)
!36 = !DILocation(line: 16, column: 32, scope: !31)
!37 = !DILocation(line: 17, column: 11, scope: !38)
!38 = distinct !DILexicalBlock(scope: !31, file: !10, line: 16, column: 47)
!39 = distinct !{!39, !30, !40, !41}
!40 = !DILocation(line: 18, column: 5, scope: !31)
!41 = !{!"llvm.loop.name", !"c2"}
!42 = !DILocation(line: 19, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !31, file: !10, line: 19, column: 9)
!44 = !DILocation(line: 19, column: 23, scope: !43)
!45 = !DILocation(line: 19, column: 20, scope: !43)
!46 = !DILocation(line: 19, column: 9, scope: !31)
!47 = !DILocation(line: 20, column: 8, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !10, line: 19, column: 35)
!49 = !DILocation(line: 21, column: 5, scope: !48)
!50 = !DILocation(line: 22, column: 5, scope: !31)
!51 = !DILocation(line: 22, column: 16, scope: !31)
!52 = !DILocation(line: 23, column: 3, scope: !31)
!53 = !DILocation(line: 14, column: 23, scope: !27)
!54 = !DILocation(line: 14, column: 3, scope: !27)
!55 = distinct !{!55, !28, !56, !57}
!56 = !DILocation(line: 23, column: 3, scope: !25)
!57 = !{!"llvm.loop.name", !"c1"}
!58 = !DILocation(line: 24, column: 1, scope: !9)
!59 = distinct !DISubprogram(name: "hls_top", scope: !10, file: !10, line: 26, type: !60, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !4, !13, !13, !13, !13}
!62 = !{!63}
!63 = !{!"fpga.top", !"user", !64}
!64 = !DILocation(line: 26, column: 16, scope: !59)
!65 = !DILocalVariable(name: "size", arg: 1, scope: !59, file: !10, line: 26, type: !4)
!66 = !DILocation(line: 26, column: 60, scope: !59)
!67 = !DILocalVariable(name: "xpattern", arg: 2, scope: !59, file: !10, line: 26, type: !13)
!68 = !DILocation(line: 26, column: 70, scope: !59)
!69 = !DILocalVariable(name: "xinput", arg: 3, scope: !59, file: !10, line: 26, type: !13)
!70 = !DILocation(line: 26, column: 87, scope: !59)
!71 = !DILocalVariable(name: "xkmpNext", arg: 4, scope: !59, file: !10, line: 27, type: !13)
!72 = !DILocation(line: 27, column: 18, scope: !59)
!73 = !DILocalVariable(name: "xn_matches", arg: 5, scope: !59, file: !10, line: 27, type: !13)
!74 = !DILocation(line: 27, column: 35, scope: !59)
!75 = !DILocation(line: 28, column: 9, scope: !59)
!76 = !DILocation(line: 29, column: 9, scope: !59)
!77 = !DILocation(line: 30, column: 9, scope: !59)
!78 = !DILocation(line: 31, column: 9, scope: !59)
!79 = !DILocation(line: 32, column: 9, scope: !59)
!80 = !DILocation(line: 33, column: 9, scope: !59)
!81 = !DILocation(line: 36, column: 3, scope: !59)
!82 = !DILocalVariable(name: "pattern", scope: !59, file: !10, line: 36, type: !83)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 4)
!86 = !DILocation(line: 36, column: 7, scope: !59)
!87 = !DILocation(line: 37, column: 3, scope: !59)
!88 = !DILocalVariable(name: "input", scope: !59, file: !10, line: 37, type: !89)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 518592, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 16206)
!92 = !DILocation(line: 37, column: 7, scope: !59)
!93 = !DILocation(line: 38, column: 3, scope: !59)
!94 = !DILocalVariable(name: "kmpNext", scope: !59, file: !10, line: 38, type: !83)
!95 = !DILocation(line: 38, column: 7, scope: !59)
!96 = !DILocation(line: 39, column: 3, scope: !59)
!97 = !DILocalVariable(name: "n_matches", scope: !59, file: !10, line: 39, type: !98)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DILocation(line: 39, column: 7, scope: !59)
!102 = !DILocalVariable(name: "i", scope: !59, file: !10, line: 34, type: !4)
!103 = !DILocation(line: 34, column: 6, scope: !59)
!104 = !DILocation(line: 41, column: 25, scope: !105)
!105 = distinct !DILexicalBlock(scope: !59, file: !10, line: 41, column: 20)
!106 = !DILocation(line: 41, column: 34, scope: !107)
!107 = distinct !DILexicalBlock(scope: !105, file: !10, line: 41, column: 20)
!108 = !DILocation(line: 41, column: 20, scope: !105)
!109 = !DILocation(line: 42, column: 18, scope: !107)
!110 = !DILocation(line: 42, column: 5, scope: !107)
!111 = !DILocation(line: 42, column: 16, scope: !107)
!112 = !DILocation(line: 41, column: 40, scope: !107)
!113 = !DILocation(line: 41, column: 20, scope: !107)
!114 = distinct !{!114, !108, !115, !116}
!115 = !DILocation(line: 42, column: 28, scope: !105)
!116 = !{!"llvm.loop.name", !"VITIS_LOOP_41_1"}
!117 = !DILocation(line: 43, column: 25, scope: !118)
!118 = distinct !DILexicalBlock(scope: !59, file: !10, line: 43, column: 20)
!119 = !DILocation(line: 43, column: 34, scope: !120)
!120 = distinct !DILexicalBlock(scope: !118, file: !10, line: 43, column: 20)
!121 = !DILocation(line: 43, column: 20, scope: !118)
!122 = !DILocation(line: 44, column: 18, scope: !120)
!123 = !DILocation(line: 44, column: 5, scope: !120)
!124 = !DILocation(line: 44, column: 16, scope: !120)
!125 = !DILocation(line: 43, column: 40, scope: !120)
!126 = !DILocation(line: 43, column: 20, scope: !120)
!127 = distinct !{!127, !121, !128, !129}
!128 = !DILocation(line: 44, column: 28, scope: !118)
!129 = !{!"llvm.loop.name", !"VITIS_LOOP_43_2"}
!130 = !DILocation(line: 45, column: 25, scope: !131)
!131 = distinct !DILexicalBlock(scope: !59, file: !10, line: 45, column: 20)
!132 = !DILocation(line: 45, column: 34, scope: !133)
!133 = distinct !DILexicalBlock(scope: !131, file: !10, line: 45, column: 20)
!134 = !DILocation(line: 45, column: 20, scope: !131)
!135 = !DILocation(line: 46, column: 16, scope: !133)
!136 = !DILocation(line: 46, column: 5, scope: !133)
!137 = !DILocation(line: 46, column: 14, scope: !133)
!138 = !DILocation(line: 45, column: 43, scope: !133)
!139 = !DILocation(line: 45, column: 20, scope: !133)
!140 = distinct !{!140, !134, !141, !142}
!141 = !DILocation(line: 46, column: 24, scope: !131)
!142 = !{!"llvm.loop.name", !"VITIS_LOOP_45_3"}
!143 = !DILocation(line: 48, column: 3, scope: !59)
!144 = !DILocation(line: 48, column: 16, scope: !59)
!145 = !DILocation(line: 50, column: 7, scope: !59)
!146 = !DILocation(line: 50, column: 16, scope: !59)
!147 = !DILocation(line: 50, column: 3, scope: !59)
!148 = !DILocalVariable(name: "q", scope: !59, file: !10, line: 34, type: !4)
!149 = !DILocation(line: 34, column: 9, scope: !59)
!150 = !DILocation(line: 52, column: 3, scope: !59)
!151 = !DILocation(line: 54, column: 8, scope: !152)
!152 = distinct !DILexicalBlock(scope: !59, file: !10, line: 54, column: 3)
!153 = !DILocation(line: 54, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !152, file: !10, line: 54, column: 3)
!155 = !DILocation(line: 54, column: 3, scope: !152)
!156 = !DILocation(line: 54, column: 30, scope: !154)
!157 = !DILocation(line: 56, column: 5, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !10, line: 54, column: 30)
!159 = !DILocation(line: 56, column: 14, scope: !158)
!160 = !DILocation(line: 56, column: 18, scope: !158)
!161 = !DILocation(line: 56, column: 21, scope: !158)
!162 = !DILocation(line: 56, column: 35, scope: !158)
!163 = !DILocation(line: 56, column: 32, scope: !158)
!164 = !DILocation(line: 57, column: 11, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !10, line: 56, column: 45)
!166 = distinct !{!166, !157, !167, !168}
!167 = !DILocation(line: 58, column: 5, scope: !158)
!168 = !{!"llvm.loop.name", !"k2"}
!169 = !DILocation(line: 59, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !158, file: !10, line: 59, column: 9)
!171 = !DILocation(line: 59, column: 23, scope: !170)
!172 = !DILocation(line: 59, column: 20, scope: !170)
!173 = !DILocation(line: 59, column: 9, scope: !158)
!174 = !DILocation(line: 60, column: 8, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !10, line: 59, column: 33)
!176 = !DILocation(line: 61, column: 5, scope: !175)
!177 = !DILocation(line: 62, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !158, file: !10, line: 62, column: 9)
!179 = !DILocation(line: 62, column: 9, scope: !158)
!180 = !DILocation(line: 63, column: 22, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !10, line: 62, column: 17)
!182 = !DILocation(line: 63, column: 35, scope: !181)
!183 = !DILocation(line: 63, column: 7, scope: !181)
!184 = !DILocation(line: 63, column: 20, scope: !181)
!185 = !DILocation(line: 64, column: 21, scope: !181)
!186 = !DILocation(line: 64, column: 11, scope: !181)
!187 = !DILocation(line: 65, column: 5, scope: !181)
!188 = !DILocation(line: 66, column: 3, scope: !158)
!189 = !DILocation(line: 54, column: 26, scope: !154)
!190 = !DILocation(line: 54, column: 3, scope: !154)
!191 = distinct !{!191, !155, !192, !193}
!192 = !DILocation(line: 66, column: 3, scope: !152)
!193 = !{!"llvm.loop.name", !"k1"}
!194 = !DILocation(line: 68, column: 19, scope: !59)
!195 = !DILocation(line: 68, column: 3, scope: !59)
!196 = !DILocation(line: 68, column: 17, scope: !59)
!197 = !DILocation(line: 69, column: 1, scope: !59)
