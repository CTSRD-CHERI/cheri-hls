; ModuleID = '/workspace/examples/gemm_blocked/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @hls_top(i32 %size, i32* "fpga.decayed.dim.hint"="4096" %xm1, i32* "fpga.decayed.dim.hint"="4096" %xm2, i32* "fpga.decayed.dim.hint"="4096" %xprod) #0 !dbg !7 !fpga.function.pragma !13 {
entry:
  %m1 = alloca [4096 x i32], align 4
  %m2 = alloca [4096 x i32], align 4
  %prod = alloca [4096 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32* %xm1, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32* %xm2, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32* %xprod, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xm1, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !24
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xm2, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !25
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xprod, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !26
  call void @llvm.sideeffect() #5 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !27
  call void @llvm.sideeffect() #6 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !28
  %0 = bitcast [4096 x i32]* %m1 to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %0) #7, !dbg !29
  call void @llvm.dbg.declare(metadata [4096 x i32]* %m1, metadata !30, metadata !DIExpression()), !dbg !34
  %1 = bitcast [4096 x i32]* %m2 to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %1) #7, !dbg !29
  call void @llvm.dbg.declare(metadata [4096 x i32]* %m2, metadata !35, metadata !DIExpression()), !dbg !36
  %2 = bitcast [4096 x i32]* %prod to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %2) #7, !dbg !29
  call void @llvm.dbg.declare(metadata [4096 x i32]* %prod, metadata !37, metadata !DIExpression()), !dbg !38
  br label %VITIS_LOOP_30_1, !dbg !29

VITIS_LOOP_30_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_30_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_30_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !39, metadata !DIExpression()), !dbg !40
  %mul1 = mul nsw i32 %size, %size, !dbg !43
  %cmp = icmp slt i32 %i.0, %mul1, !dbg !45
  br i1 %cmp, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !47
  %arrayidx = getelementptr inbounds i32, i32* %xm1, i64 %idxprom, !dbg !47
  %3 = load i32, i32* %arrayidx, align 4, !dbg !47
  %idxprom2 = sext i32 %i.0 to i64, !dbg !48
  %arrayidx3 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m1, i64 0, i64 %idxprom2, !dbg !48
  store i32 %3, i32* %arrayidx3, align 4, !dbg !49
  br label %for.inc, !dbg !48

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !50
  call void @llvm.dbg.value(metadata i32 %inc, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond, !dbg !51, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_32_2, !dbg !53

VITIS_LOOP_32_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond4, !dbg !55

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_32_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_32_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !39, metadata !DIExpression()), !dbg !40
  %mul5 = mul nsw i32 %size, %size, !dbg !57
  %cmp6 = icmp slt i32 %i.1, %mul5, !dbg !59
  br i1 %cmp6, label %for.body7, label %for.end14, !dbg !60

for.body7:                                        ; preds = %for.cond4
  %idxprom8 = sext i32 %i.1 to i64, !dbg !61
  %arrayidx9 = getelementptr inbounds i32, i32* %xm2, i64 %idxprom8, !dbg !61
  %4 = load i32, i32* %arrayidx9, align 4, !dbg !61
  %idxprom10 = sext i32 %i.1 to i64, !dbg !62
  %arrayidx11 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m2, i64 0, i64 %idxprom10, !dbg !62
  store i32 %4, i32* %arrayidx11, align 4, !dbg !63
  br label %for.inc12, !dbg !62

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i.1, 1, !dbg !64
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond4, !dbg !65, !llvm.loop !66

for.end14:                                        ; preds = %for.cond4
  br label %loopjj, !dbg !67

loopjj:                                           ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !70
  br label %for.cond15, !dbg !71

for.cond15:                                       ; preds = %for.inc62, %loopjj
  %jj.0 = phi i32 [ 0, %loopjj ], [ %add63, %for.inc62 ]
  call void @llvm.dbg.value(metadata i32 %jj.0, metadata !69, metadata !DIExpression()), !dbg !70
  %cmp16 = icmp slt i32 %jj.0, %size, !dbg !73
  br i1 %cmp16, label %for.body17, label %for.end64, !dbg !75

for.body17:                                       ; preds = %for.cond15
  br label %loopkk, !dbg !76

loopkk:                                           ; preds = %for.body17
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !78
  br label %for.cond18, !dbg !79

for.cond18:                                       ; preds = %for.inc59, %loopkk
  %kk.0 = phi i32 [ 0, %loopkk ], [ %add60, %for.inc59 ]
  call void @llvm.dbg.value(metadata i32 %kk.0, metadata !77, metadata !DIExpression()), !dbg !78
  %cmp19 = icmp slt i32 %kk.0, %size, !dbg !82
  br i1 %cmp19, label %for.body20, label %for.end61, !dbg !84

for.body20:                                       ; preds = %for.cond18
  br label %loopi, !dbg !85

loopi:                                            ; preds = %for.body20
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond21, !dbg !86

for.cond21:                                       ; preds = %for.inc56, %loopi
  %i.2 = phi i32 [ 0, %loopi ], [ %inc57, %for.inc56 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !39, metadata !DIExpression()), !dbg !40
  %cmp22 = icmp slt i32 %i.2, %size, !dbg !89
  br i1 %cmp22, label %for.body23, label %for.end58, !dbg !91

for.body23:                                       ; preds = %for.cond21
  br label %loopk, !dbg !92

loopk:                                            ; preds = %for.body23
  call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !94
  br label %for.cond24, !dbg !95

for.cond24:                                       ; preds = %for.inc53, %loopk
  %k.0 = phi i32 [ 0, %loopk ], [ %inc54, %for.inc53 ]
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !93, metadata !DIExpression()), !dbg !94
  %cmp25 = icmp slt i32 %k.0, 8, !dbg !98
  br i1 %cmp25, label %for.body26, label %for.end55, !dbg !100

for.body26:                                       ; preds = %for.cond24
  %mul27 = mul nsw i32 %i.2, %size, !dbg !101
  call void @llvm.dbg.value(metadata i32 %mul27, metadata !103, metadata !DIExpression()), !dbg !104
  %add = add nsw i32 %k.0, %kk.0, !dbg !105
  %mul28 = mul nsw i32 %add, %size, !dbg !106
  call void @llvm.dbg.value(metadata i32 %mul28, metadata !107, metadata !DIExpression()), !dbg !108
  %add29 = add nsw i32 %mul27, %k.0, !dbg !109
  %add30 = add nsw i32 %add29, %kk.0, !dbg !110
  %idxprom31 = sext i32 %add30 to i64, !dbg !111
  %arrayidx32 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m1, i64 0, i64 %idxprom31, !dbg !111
  %5 = load i32, i32* %arrayidx32, align 4, !dbg !111
  call void @llvm.dbg.value(metadata i32 %5, metadata !112, metadata !DIExpression()), !dbg !113
  br label %loopj, !dbg !114

loopj:                                            ; preds = %for.body26
  call void @llvm.dbg.value(metadata i32 0, metadata !115, metadata !DIExpression()), !dbg !116
  br label %for.cond33, !dbg !117

for.cond33:                                       ; preds = %for.inc50, %loopj
  %j.0 = phi i32 [ 0, %loopj ], [ %inc51, %for.inc50 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !115, metadata !DIExpression()), !dbg !116
  %cmp34 = icmp slt i32 %j.0, 8, !dbg !119
  br i1 %cmp34, label %for.body35, label %for.end52, !dbg !121

for.body35:                                       ; preds = %for.cond33
  %add36 = add nsw i32 %mul28, %j.0, !dbg !122
  %add37 = add nsw i32 %add36, %jj.0, !dbg !124
  %idxprom38 = sext i32 %add37 to i64, !dbg !125
  %arrayidx39 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m2, i64 0, i64 %idxprom38, !dbg !125
  %6 = load i32, i32* %arrayidx39, align 4, !dbg !125
  %mul40 = mul nsw i32 %5, %6, !dbg !126
  call void @llvm.dbg.value(metadata i32 %mul40, metadata !127, metadata !DIExpression()), !dbg !128
  %add41 = add nsw i32 %mul27, %j.0, !dbg !129
  %add42 = add nsw i32 %add41, %jj.0, !dbg !130
  %idxprom43 = sext i32 %add42 to i64, !dbg !131
  %arrayidx44 = getelementptr inbounds [4096 x i32], [4096 x i32]* %prod, i64 0, i64 %idxprom43, !dbg !131
  %7 = load i32, i32* %arrayidx44, align 4, !dbg !131
  %add45 = add nsw i32 %7, %mul40, !dbg !132
  %add46 = add nsw i32 %mul27, %j.0, !dbg !133
  %add47 = add nsw i32 %add46, %jj.0, !dbg !134
  %idxprom48 = sext i32 %add47 to i64, !dbg !135
  %arrayidx49 = getelementptr inbounds [4096 x i32], [4096 x i32]* %prod, i64 0, i64 %idxprom48, !dbg !135
  store i32 %add45, i32* %arrayidx49, align 4, !dbg !136
  br label %for.inc50, !dbg !137

for.inc50:                                        ; preds = %for.body35
  %inc51 = add nsw i32 %j.0, 1, !dbg !138
  call void @llvm.dbg.value(metadata i32 %inc51, metadata !115, metadata !DIExpression()), !dbg !116
  br label %for.cond33, !dbg !139, !llvm.loop !140

for.end52:                                        ; preds = %for.cond33
  br label %for.inc53, !dbg !143

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %k.0, 1, !dbg !144
  call void @llvm.dbg.value(metadata i32 %inc54, metadata !93, metadata !DIExpression()), !dbg !94
  br label %for.cond24, !dbg !145, !llvm.loop !146

for.end55:                                        ; preds = %for.cond24
  br label %for.inc56, !dbg !149

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !dbg !150
  call void @llvm.dbg.value(metadata i32 %inc57, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond21, !dbg !151, !llvm.loop !152

for.end58:                                        ; preds = %for.cond21
  br label %for.inc59, !dbg !155

for.inc59:                                        ; preds = %for.end58
  %add60 = add nsw i32 %kk.0, 8, !dbg !156
  call void @llvm.dbg.value(metadata i32 %add60, metadata !77, metadata !DIExpression()), !dbg !78
  br label %for.cond18, !dbg !157, !llvm.loop !158

for.end61:                                        ; preds = %for.cond18
  br label %for.inc62, !dbg !161

for.inc62:                                        ; preds = %for.end61
  %add63 = add nsw i32 %jj.0, 8, !dbg !162
  call void @llvm.dbg.value(metadata i32 %add63, metadata !69, metadata !DIExpression()), !dbg !70
  br label %for.cond15, !dbg !163, !llvm.loop !164

for.end64:                                        ; preds = %for.cond15
  br label %VITIS_LOOP_55_3, !dbg !165

VITIS_LOOP_55_3:                                  ; preds = %for.end64
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond65, !dbg !167

for.cond65:                                       ; preds = %for.inc73, %VITIS_LOOP_55_3
  %i.3 = phi i32 [ 0, %VITIS_LOOP_55_3 ], [ %inc74, %for.inc73 ]
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !39, metadata !DIExpression()), !dbg !40
  %mul66 = mul nsw i32 %size, %size, !dbg !169
  %cmp67 = icmp slt i32 %i.3, %mul66, !dbg !171
  br i1 %cmp67, label %for.body68, label %for.end75, !dbg !172

for.body68:                                       ; preds = %for.cond65
  %idxprom69 = sext i32 %i.3 to i64, !dbg !173
  %arrayidx70 = getelementptr inbounds [4096 x i32], [4096 x i32]* %prod, i64 0, i64 %idxprom69, !dbg !173
  %8 = load i32, i32* %arrayidx70, align 4, !dbg !173
  %idxprom71 = sext i32 %i.3 to i64, !dbg !174
  %arrayidx72 = getelementptr inbounds i32, i32* %xprod, i64 %idxprom71, !dbg !174
  store i32 %8, i32* %arrayidx72, align 4, !dbg !175
  br label %for.inc73, !dbg !174

for.inc73:                                        ; preds = %for.body68
  %inc74 = add nsw i32 %i.3, 1, !dbg !176
  call void @llvm.dbg.value(metadata i32 %inc74, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond65, !dbg !177, !llvm.loop !178

for.end75:                                        ; preds = %for.cond65
  %9 = bitcast [4096 x i32]* %prod to i8*, !dbg !181
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %9) #7, !dbg !181
  %10 = bitcast [4096 x i32]* %m2 to i8*, !dbg !181
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %10) #7, !dbg !181
  %11 = bitcast [4096 x i32]* %m1 to i8*, !dbg !181
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %11) #7, !dbg !181
  ret void, !dbg !181
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
attributes #4 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="131072" "xlx.source"="user" }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/gemm_blocked/gemm_prj/solution/.autopilot/db/gemm.pp.0.c", directory: "/workspace/examples/gemm_blocked")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 18, type: !9, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "gemm.c", directory: "/workspace/examples/gemm_blocked")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !12, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 18, column: 16, scope: !7)
!16 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 18, type: !11)
!17 = !DILocation(line: 18, column: 60, scope: !7)
!18 = !DILocalVariable(name: "xm1", arg: 2, scope: !7, file: !8, line: 18, type: !12)
!19 = !DILocation(line: 18, column: 70, scope: !7)
!20 = !DILocalVariable(name: "xm2", arg: 3, scope: !7, file: !8, line: 18, type: !12)
!21 = !DILocation(line: 18, column: 87, scope: !7)
!22 = !DILocalVariable(name: "xprod", arg: 4, scope: !7, file: !8, line: 18, type: !12)
!23 = !DILocation(line: 18, column: 104, scope: !7)
!24 = !DILocation(line: 19, column: 9, scope: !7)
!25 = !DILocation(line: 20, column: 9, scope: !7)
!26 = !DILocation(line: 21, column: 9, scope: !7)
!27 = !DILocation(line: 22, column: 9, scope: !7)
!28 = !DILocation(line: 23, column: 9, scope: !7)
!29 = !DILocation(line: 28, column: 3, scope: !7)
!30 = !DILocalVariable(name: "m1", scope: !7, file: !8, line: 28, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 131072, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 4096)
!34 = !DILocation(line: 28, column: 7, scope: !7)
!35 = !DILocalVariable(name: "m2", scope: !7, file: !8, line: 28, type: !31)
!36 = !DILocation(line: 28, column: 19, scope: !7)
!37 = !DILocalVariable(name: "prod", scope: !7, file: !8, line: 28, type: !31)
!38 = !DILocation(line: 28, column: 31, scope: !7)
!39 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 24, type: !11)
!40 = !DILocation(line: 24, column: 6, scope: !7)
!41 = !DILocation(line: 30, column: 25, scope: !42)
!42 = distinct !DILexicalBlock(scope: !7, file: !8, line: 30, column: 20)
!43 = !DILocation(line: 30, column: 41, scope: !44)
!44 = distinct !DILexicalBlock(scope: !42, file: !8, line: 30, column: 20)
!45 = !DILocation(line: 30, column: 34, scope: !44)
!46 = !DILocation(line: 30, column: 20, scope: !42)
!47 = !DILocation(line: 31, column: 13, scope: !44)
!48 = !DILocation(line: 31, column: 5, scope: !44)
!49 = !DILocation(line: 31, column: 11, scope: !44)
!50 = !DILocation(line: 30, column: 50, scope: !44)
!51 = !DILocation(line: 30, column: 20, scope: !44)
!52 = distinct !{!52, !46, !53, !54}
!53 = !DILocation(line: 31, column: 18, scope: !42)
!54 = !{!"llvm.loop.name", !"VITIS_LOOP_30_1"}
!55 = !DILocation(line: 32, column: 25, scope: !56)
!56 = distinct !DILexicalBlock(scope: !7, file: !8, line: 32, column: 20)
!57 = !DILocation(line: 32, column: 41, scope: !58)
!58 = distinct !DILexicalBlock(scope: !56, file: !8, line: 32, column: 20)
!59 = !DILocation(line: 32, column: 34, scope: !58)
!60 = !DILocation(line: 32, column: 20, scope: !56)
!61 = !DILocation(line: 33, column: 13, scope: !58)
!62 = !DILocation(line: 33, column: 5, scope: !58)
!63 = !DILocation(line: 33, column: 11, scope: !58)
!64 = !DILocation(line: 32, column: 50, scope: !58)
!65 = !DILocation(line: 32, column: 20, scope: !58)
!66 = distinct !{!66, !60, !67, !68}
!67 = !DILocation(line: 33, column: 18, scope: !56)
!68 = !{!"llvm.loop.name", !"VITIS_LOOP_32_2"}
!69 = !DILocalVariable(name: "jj", scope: !7, file: !8, line: 24, type: !11)
!70 = !DILocation(line: 24, column: 15, scope: !7)
!71 = !DILocation(line: 36, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !7, file: !8, line: 36, column: 3)
!73 = !DILocation(line: 36, column: 19, scope: !74)
!74 = distinct !DILexicalBlock(scope: !72, file: !8, line: 36, column: 3)
!75 = !DILocation(line: 36, column: 3, scope: !72)
!76 = !DILocation(line: 36, column: 36, scope: !74)
!77 = !DILocalVariable(name: "kk", scope: !7, file: !8, line: 24, type: !11)
!78 = !DILocation(line: 24, column: 19, scope: !7)
!79 = !DILocation(line: 38, column: 10, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !8, line: 38, column: 5)
!81 = distinct !DILexicalBlock(scope: !74, file: !8, line: 36, column: 36)
!82 = !DILocation(line: 38, column: 21, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !8, line: 38, column: 5)
!84 = !DILocation(line: 38, column: 5, scope: !80)
!85 = !DILocation(line: 38, column: 38, scope: !83)
!86 = !DILocation(line: 40, column: 12, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !8, line: 40, column: 7)
!88 = distinct !DILexicalBlock(scope: !83, file: !8, line: 38, column: 38)
!89 = !DILocation(line: 40, column: 21, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !8, line: 40, column: 7)
!91 = !DILocation(line: 40, column: 7, scope: !87)
!92 = !DILocation(line: 40, column: 34, scope: !90)
!93 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 24, type: !11)
!94 = !DILocation(line: 24, column: 9, scope: !7)
!95 = !DILocation(line: 42, column: 14, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !8, line: 42, column: 9)
!97 = distinct !DILexicalBlock(scope: !90, file: !8, line: 40, column: 34)
!98 = !DILocation(line: 42, column: 23, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !8, line: 42, column: 9)
!100 = !DILocation(line: 42, column: 9, scope: !96)
!101 = !DILocation(line: 43, column: 21, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !8, line: 42, column: 33)
!103 = !DILocalVariable(name: "i_row", scope: !7, file: !8, line: 25, type: !11)
!104 = !DILocation(line: 25, column: 7, scope: !7)
!105 = !DILocation(line: 44, column: 22, scope: !102)
!106 = !DILocation(line: 44, column: 28, scope: !102)
!107 = !DILocalVariable(name: "k_row", scope: !7, file: !8, line: 25, type: !11)
!108 = !DILocation(line: 25, column: 14, scope: !7)
!109 = !DILocation(line: 45, column: 29, scope: !102)
!110 = !DILocation(line: 45, column: 33, scope: !102)
!111 = !DILocation(line: 45, column: 20, scope: !102)
!112 = !DILocalVariable(name: "temp_x", scope: !7, file: !8, line: 26, type: !11)
!113 = !DILocation(line: 26, column: 7, scope: !7)
!114 = !DILocation(line: 45, column: 11, scope: !102)
!115 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 24, type: !11)
!116 = !DILocation(line: 24, column: 12, scope: !7)
!117 = !DILocation(line: 47, column: 16, scope: !118)
!118 = distinct !DILexicalBlock(scope: !102, file: !8, line: 47, column: 11)
!119 = !DILocation(line: 47, column: 25, scope: !120)
!120 = distinct !DILexicalBlock(scope: !118, file: !8, line: 47, column: 11)
!121 = !DILocation(line: 47, column: 11, scope: !118)
!122 = !DILocation(line: 48, column: 37, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !8, line: 47, column: 35)
!124 = !DILocation(line: 48, column: 41, scope: !123)
!125 = !DILocation(line: 48, column: 28, scope: !123)
!126 = !DILocation(line: 48, column: 26, scope: !123)
!127 = !DILocalVariable(name: "mul", scope: !7, file: !8, line: 26, type: !11)
!128 = !DILocation(line: 26, column: 15, scope: !7)
!129 = !DILocation(line: 49, column: 47, scope: !123)
!130 = !DILocation(line: 49, column: 51, scope: !123)
!131 = !DILocation(line: 49, column: 36, scope: !123)
!132 = !DILocation(line: 49, column: 57, scope: !123)
!133 = !DILocation(line: 49, column: 24, scope: !123)
!134 = !DILocation(line: 49, column: 28, scope: !123)
!135 = !DILocation(line: 49, column: 13, scope: !123)
!136 = !DILocation(line: 49, column: 34, scope: !123)
!137 = !DILocation(line: 50, column: 11, scope: !123)
!138 = !DILocation(line: 47, column: 30, scope: !120)
!139 = !DILocation(line: 47, column: 11, scope: !120)
!140 = distinct !{!140, !121, !141, !142}
!141 = !DILocation(line: 50, column: 11, scope: !118)
!142 = !{!"llvm.loop.name", !"loopj"}
!143 = !DILocation(line: 51, column: 9, scope: !102)
!144 = !DILocation(line: 42, column: 28, scope: !99)
!145 = !DILocation(line: 42, column: 9, scope: !99)
!146 = distinct !{!146, !100, !147, !148}
!147 = !DILocation(line: 51, column: 9, scope: !96)
!148 = !{!"llvm.loop.name", !"loopk"}
!149 = !DILocation(line: 52, column: 7, scope: !97)
!150 = !DILocation(line: 40, column: 29, scope: !90)
!151 = !DILocation(line: 40, column: 7, scope: !90)
!152 = distinct !{!152, !91, !153, !154}
!153 = !DILocation(line: 52, column: 7, scope: !87)
!154 = !{!"llvm.loop.name", !"loopi"}
!155 = !DILocation(line: 53, column: 5, scope: !88)
!156 = !DILocation(line: 38, column: 32, scope: !83)
!157 = !DILocation(line: 38, column: 5, scope: !83)
!158 = distinct !{!158, !84, !159, !160}
!159 = !DILocation(line: 53, column: 5, scope: !80)
!160 = !{!"llvm.loop.name", !"loopkk"}
!161 = !DILocation(line: 54, column: 3, scope: !81)
!162 = !DILocation(line: 36, column: 30, scope: !74)
!163 = !DILocation(line: 36, column: 3, scope: !74)
!164 = distinct !{!164, !75, !165, !166}
!165 = !DILocation(line: 54, column: 3, scope: !72)
!166 = !{!"llvm.loop.name", !"loopjj"}
!167 = !DILocation(line: 55, column: 25, scope: !168)
!168 = distinct !DILexicalBlock(scope: !7, file: !8, line: 55, column: 20)
!169 = !DILocation(line: 55, column: 41, scope: !170)
!170 = distinct !DILexicalBlock(scope: !168, file: !8, line: 55, column: 20)
!171 = !DILocation(line: 55, column: 34, scope: !170)
!172 = !DILocation(line: 55, column: 20, scope: !168)
!173 = !DILocation(line: 56, column: 16, scope: !170)
!174 = !DILocation(line: 56, column: 5, scope: !170)
!175 = !DILocation(line: 56, column: 14, scope: !170)
!176 = !DILocation(line: 55, column: 50, scope: !170)
!177 = !DILocation(line: 55, column: 20, scope: !170)
!178 = distinct !{!178, !172, !179, !180}
!179 = !DILocation(line: 56, column: 22, scope: !168)
!180 = !{!"llvm.loop.name", !"VITIS_LOOP_55_3"}
!181 = !DILocation(line: 57, column: 1, scope: !7)
