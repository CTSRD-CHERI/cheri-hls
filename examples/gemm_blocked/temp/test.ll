; ModuleID = '/workspace/examples/gemm_blocked/temp/test.bc'
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
  br label %VITIS_LOOP_21_1, !dbg !25

VITIS_LOOP_21_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !28
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_21_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_21_1 ], [ %inc, %for.inc ]
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
define void @_Z7hls_topiPiS_S_(i32 %size, i32* "fpga.decayed.dim.hint"="4096" %xm1, i32* "fpga.decayed.dim.hint"="4096" %xm2, i32* "fpga.decayed.dim.hint"="4096" %xprod) #3 !dbg !44 !fpga.function.pragma !47 {
entry:
  %m1 = alloca [4096 x i32], align 4
  %m2 = alloca [4096 x i32], align 4
  %prod = alloca [4096 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i32* %xm1, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32* %xm2, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32* %xprod, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xm1, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !58
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xm2, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !59
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xprod, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !60
  call void @llvm.sideeffect() #6 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !61
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !62
  %0 = bitcast [4096 x i32]* %m1 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %0) #8, !dbg !63
  call void @llvm.dbg.declare(metadata [4096 x i32]* %m1, metadata !64, metadata !DIExpression()), !dbg !68
  %1 = bitcast [4096 x i32]* %m2 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %1) #8, !dbg !63
  call void @llvm.dbg.declare(metadata [4096 x i32]* %m2, metadata !69, metadata !DIExpression()), !dbg !70
  %2 = bitcast [4096 x i32]* %prod to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* %2) #8, !dbg !63
  call void @llvm.dbg.declare(metadata [4096 x i32]* %prod, metadata !71, metadata !DIExpression()), !dbg !72
  br label %VITIS_LOOP_37_1, !dbg !63

VITIS_LOOP_37_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_37_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_37_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !73, metadata !DIExpression()), !dbg !74
  %mul1 = mul nsw i32 %size, %size, !dbg !77
  %cmp = icmp slt i32 %i.0, %mul1, !dbg !79
  br i1 %cmp, label %for.body, label %for.end, !dbg !80

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !81
  %arrayidx = getelementptr inbounds i32, i32* %xm1, i64 %idxprom, !dbg !81
  %3 = load i32, i32* %arrayidx, align 4, !dbg !81
  %idxprom2 = sext i32 %i.0 to i64, !dbg !82
  %arrayidx3 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m1, i64 0, i64 %idxprom2, !dbg !82
  store i32 %3, i32* %arrayidx3, align 4, !dbg !83
  br label %for.inc, !dbg !82

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !84
  call void @llvm.dbg.value(metadata i32 %inc, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond, !dbg !85, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_39_2, !dbg !87

VITIS_LOOP_39_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond4, !dbg !89

for.cond4:                                        ; preds = %for.inc12, %VITIS_LOOP_39_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_39_2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !73, metadata !DIExpression()), !dbg !74
  %mul5 = mul nsw i32 %size, %size, !dbg !91
  %cmp6 = icmp slt i32 %i.1, %mul5, !dbg !93
  br i1 %cmp6, label %for.body7, label %for.end14, !dbg !94

for.body7:                                        ; preds = %for.cond4
  %idxprom8 = sext i32 %i.1 to i64, !dbg !95
  %arrayidx9 = getelementptr inbounds i32, i32* %xm2, i64 %idxprom8, !dbg !95
  %4 = load i32, i32* %arrayidx9, align 4, !dbg !95
  %idxprom10 = sext i32 %i.1 to i64, !dbg !96
  %arrayidx11 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m2, i64 0, i64 %idxprom10, !dbg !96
  store i32 %4, i32* %arrayidx11, align 4, !dbg !97
  br label %for.inc12, !dbg !96

for.inc12:                                        ; preds = %for.body7
  %inc13 = add nsw i32 %i.1, 1, !dbg !98
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond4, !dbg !99, !llvm.loop !100

for.end14:                                        ; preds = %for.cond4
  br label %loopjj, !dbg !101

loopjj:                                           ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 0, metadata !103, metadata !DIExpression()), !dbg !104
  br label %for.cond15, !dbg !105

for.cond15:                                       ; preds = %for.inc62, %loopjj
  %jj.0 = phi i32 [ 0, %loopjj ], [ %add63, %for.inc62 ]
  call void @llvm.dbg.value(metadata i32 %jj.0, metadata !103, metadata !DIExpression()), !dbg !104
  %cmp16 = icmp slt i32 %jj.0, %size, !dbg !107
  br i1 %cmp16, label %for.body17, label %for.end64, !dbg !109

for.body17:                                       ; preds = %for.cond15
  br label %loopkk, !dbg !110

loopkk:                                           ; preds = %for.body17
  call void @llvm.dbg.value(metadata i32 0, metadata !111, metadata !DIExpression()), !dbg !112
  br label %for.cond18, !dbg !113

for.cond18:                                       ; preds = %for.inc59, %loopkk
  %kk.0 = phi i32 [ 0, %loopkk ], [ %add60, %for.inc59 ]
  call void @llvm.dbg.value(metadata i32 %kk.0, metadata !111, metadata !DIExpression()), !dbg !112
  %cmp19 = icmp slt i32 %kk.0, %size, !dbg !116
  br i1 %cmp19, label %for.body20, label %for.end61, !dbg !118

for.body20:                                       ; preds = %for.cond18
  br label %loopi, !dbg !119

loopi:                                            ; preds = %for.body20
  call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond21, !dbg !120

for.cond21:                                       ; preds = %for.inc56, %loopi
  %i.2 = phi i32 [ 0, %loopi ], [ %inc57, %for.inc56 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !73, metadata !DIExpression()), !dbg !74
  %cmp22 = icmp slt i32 %i.2, %size, !dbg !123
  br i1 %cmp22, label %for.body23, label %for.end58, !dbg !125

for.body23:                                       ; preds = %for.cond21
  br label %loopk, !dbg !126

loopk:                                            ; preds = %for.body23
  call void @llvm.dbg.value(metadata i32 0, metadata !127, metadata !DIExpression()), !dbg !128
  br label %for.cond24, !dbg !129

for.cond24:                                       ; preds = %for.inc53, %loopk
  %k.0 = phi i32 [ 0, %loopk ], [ %inc54, %for.inc53 ]
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !127, metadata !DIExpression()), !dbg !128
  %cmp25 = icmp slt i32 %k.0, 8, !dbg !132
  br i1 %cmp25, label %for.body26, label %for.end55, !dbg !134

for.body26:                                       ; preds = %for.cond24
  %mul27 = mul nsw i32 %i.2, %size, !dbg !135
  call void @llvm.dbg.value(metadata i32 %mul27, metadata !137, metadata !DIExpression()), !dbg !138
  %add = add nsw i32 %k.0, %kk.0, !dbg !139
  %mul28 = mul nsw i32 %add, %size, !dbg !140
  call void @llvm.dbg.value(metadata i32 %mul28, metadata !141, metadata !DIExpression()), !dbg !142
  %add29 = add nsw i32 %mul27, %k.0, !dbg !143
  %add30 = add nsw i32 %add29, %kk.0, !dbg !144
  %idxprom31 = sext i32 %add30 to i64, !dbg !145
  %arrayidx32 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m1, i64 0, i64 %idxprom31, !dbg !145
  %5 = load i32, i32* %arrayidx32, align 4, !dbg !145
  call void @llvm.dbg.value(metadata i32 %5, metadata !146, metadata !DIExpression()), !dbg !147
  br label %loopj, !dbg !148

loopj:                                            ; preds = %for.body26
  call void @llvm.dbg.value(metadata i32 0, metadata !149, metadata !DIExpression()), !dbg !150
  br label %for.cond33, !dbg !151

for.cond33:                                       ; preds = %for.inc50, %loopj
  %j.0 = phi i32 [ 0, %loopj ], [ %inc51, %for.inc50 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !149, metadata !DIExpression()), !dbg !150
  %cmp34 = icmp slt i32 %j.0, 8, !dbg !153
  br i1 %cmp34, label %for.body35, label %for.end52, !dbg !155

for.body35:                                       ; preds = %for.cond33
  %add36 = add nsw i32 %mul28, %j.0, !dbg !156
  %add37 = add nsw i32 %add36, %jj.0, !dbg !158
  %idxprom38 = sext i32 %add37 to i64, !dbg !159
  %arrayidx39 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m2, i64 0, i64 %idxprom38, !dbg !159
  %6 = load i32, i32* %arrayidx39, align 4, !dbg !159
  %mul40 = mul nsw i32 %5, %6, !dbg !160
  call void @llvm.dbg.value(metadata i32 %mul40, metadata !161, metadata !DIExpression()), !dbg !162
  %add41 = add nsw i32 %mul27, %j.0, !dbg !163
  %add42 = add nsw i32 %add41, %jj.0, !dbg !164
  %idxprom43 = sext i32 %add42 to i64, !dbg !165
  %arrayidx44 = getelementptr inbounds [4096 x i32], [4096 x i32]* %prod, i64 0, i64 %idxprom43, !dbg !165
  %7 = load i32, i32* %arrayidx44, align 4, !dbg !165
  %add45 = add nsw i32 %7, %mul40, !dbg !166
  %add46 = add nsw i32 %mul27, %j.0, !dbg !167
  %add47 = add nsw i32 %add46, %jj.0, !dbg !168
  %idxprom48 = sext i32 %add47 to i64, !dbg !169
  %arrayidx49 = getelementptr inbounds [4096 x i32], [4096 x i32]* %prod, i64 0, i64 %idxprom48, !dbg !169
  store i32 %add45, i32* %arrayidx49, align 4, !dbg !170
  br label %for.inc50, !dbg !171

for.inc50:                                        ; preds = %for.body35
  %inc51 = add nsw i32 %j.0, 1, !dbg !172
  call void @llvm.dbg.value(metadata i32 %inc51, metadata !149, metadata !DIExpression()), !dbg !150
  br label %for.cond33, !dbg !173, !llvm.loop !174

for.end52:                                        ; preds = %for.cond33
  br label %for.inc53, !dbg !177

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %k.0, 1, !dbg !178
  call void @llvm.dbg.value(metadata i32 %inc54, metadata !127, metadata !DIExpression()), !dbg !128
  br label %for.cond24, !dbg !179, !llvm.loop !180

for.end55:                                        ; preds = %for.cond24
  br label %for.inc56, !dbg !183

for.inc56:                                        ; preds = %for.end55
  %inc57 = add nsw i32 %i.2, 1, !dbg !184
  call void @llvm.dbg.value(metadata i32 %inc57, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond21, !dbg !185, !llvm.loop !186

for.end58:                                        ; preds = %for.cond21
  br label %for.inc59, !dbg !189

for.inc59:                                        ; preds = %for.end58
  %add60 = add nsw i32 %kk.0, 8, !dbg !190
  call void @llvm.dbg.value(metadata i32 %add60, metadata !111, metadata !DIExpression()), !dbg !112
  br label %for.cond18, !dbg !191, !llvm.loop !192

for.end61:                                        ; preds = %for.cond18
  br label %for.inc62, !dbg !195

for.inc62:                                        ; preds = %for.end61
  %add63 = add nsw i32 %jj.0, 8, !dbg !196
  call void @llvm.dbg.value(metadata i32 %add63, metadata !103, metadata !DIExpression()), !dbg !104
  br label %for.cond15, !dbg !197, !llvm.loop !198

for.end64:                                        ; preds = %for.cond15
  %mul65 = mul nsw i32 %size, %size, !dbg !201
  %arraydecay = getelementptr inbounds [4096 x i32], [4096 x i32]* %prod, i32 0, i32 0, !dbg !202
  call void @_Z12stream_writejPiS_(i32 %mul65, i32* %xprod, i32* %arraydecay), !dbg !203
  %8 = bitcast [4096 x i32]* %prod to i8*, !dbg !204
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %8) #8, !dbg !204
  %9 = bitcast [4096 x i32]* %m2 to i8*, !dbg !204
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %9) #8, !dbg !204
  %10 = bitcast [4096 x i32]* %m1 to i8*, !dbg !204
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %10) #8, !dbg !204
  ret void, !dbg !204
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="stream_write" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="131072" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/gemm_blocked/gemm_blocked_prj/solution/.autopilot/db/gemm_blocked.pp.0.cpp", directory: "/workspace/examples/gemm_blocked")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "stream_write", linkageName: "_Z12stream_writejPiS_", scope: !8, file: !8, line: 20, type: !9, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "gemm_blocked.cpp", directory: "/workspace/examples/gemm_blocked")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !17, !17}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 19, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/gemm_blocked")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 42, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/gemm_blocked")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 20, type: !11)
!20 = !DILocation(line: 20, column: 23, scope: !7)
!21 = !DILocalVariable(name: "array1", arg: 2, scope: !7, file: !8, line: 20, type: !17)
!22 = !DILocation(line: 20, column: 34, scope: !7)
!23 = !DILocalVariable(name: "array2", arg: 3, scope: !7, file: !8, line: 20, type: !17)
!24 = !DILocation(line: 20, column: 47, scope: !7)
!25 = !DILocation(line: 20, column: 55, scope: !7)
!26 = !DILocalVariable(name: "i", scope: !27, file: !8, line: 21, type: !18)
!27 = distinct !DILexicalBlock(scope: !7, file: !8, line: 21, column: 20)
!28 = !DILocation(line: 21, column: 29, scope: !27)
!29 = !DILocation(line: 21, column: 25, scope: !27)
!30 = !DILocation(line: 21, column: 38, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !8, line: 21, column: 20)
!32 = !DILocation(line: 21, column: 20, scope: !27)
!33 = !DILocation(line: 22, column: 17, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !8, line: 21, column: 51)
!35 = !DILocation(line: 22, column: 5, scope: !34)
!36 = !DILocation(line: 22, column: 15, scope: !34)
!37 = !DILocation(line: 23, column: 3, scope: !34)
!38 = !DILocation(line: 21, column: 47, scope: !31)
!39 = !DILocation(line: 21, column: 20, scope: !31)
!40 = distinct !{!40, !32, !41, !42}
!41 = !DILocation(line: 23, column: 3, scope: !27)
!42 = !{!"llvm.loop.name", !"VITIS_LOOP_21_1"}
!43 = !DILocation(line: 24, column: 1, scope: !7)
!44 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_S_", scope: !8, file: !8, line: 25, type: !45, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !18, !17, !17, !17}
!47 = !{!48}
!48 = !{!"fpga.top", !"user", !49}
!49 = !DILocation(line: 25, column: 16, scope: !44)
!50 = !DILocalVariable(name: "size", arg: 1, scope: !44, file: !8, line: 25, type: !18)
!51 = !DILocation(line: 25, column: 60, scope: !44)
!52 = !DILocalVariable(name: "xm1", arg: 2, scope: !44, file: !8, line: 25, type: !17)
!53 = !DILocation(line: 25, column: 70, scope: !44)
!54 = !DILocalVariable(name: "xm2", arg: 3, scope: !44, file: !8, line: 25, type: !17)
!55 = !DILocation(line: 25, column: 87, scope: !44)
!56 = !DILocalVariable(name: "xprod", arg: 4, scope: !44, file: !8, line: 25, type: !17)
!57 = !DILocation(line: 25, column: 104, scope: !44)
!58 = !DILocation(line: 26, column: 9, scope: !44)
!59 = !DILocation(line: 27, column: 9, scope: !44)
!60 = !DILocation(line: 28, column: 9, scope: !44)
!61 = !DILocation(line: 29, column: 9, scope: !44)
!62 = !DILocation(line: 30, column: 9, scope: !44)
!63 = !DILocation(line: 35, column: 3, scope: !44)
!64 = !DILocalVariable(name: "m1", scope: !44, file: !8, line: 35, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 131072, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 4096)
!68 = !DILocation(line: 35, column: 7, scope: !44)
!69 = !DILocalVariable(name: "m2", scope: !44, file: !8, line: 35, type: !65)
!70 = !DILocation(line: 35, column: 19, scope: !44)
!71 = !DILocalVariable(name: "prod", scope: !44, file: !8, line: 35, type: !65)
!72 = !DILocation(line: 35, column: 31, scope: !44)
!73 = !DILocalVariable(name: "i", scope: !44, file: !8, line: 31, type: !18)
!74 = !DILocation(line: 31, column: 6, scope: !44)
!75 = !DILocation(line: 37, column: 25, scope: !76)
!76 = distinct !DILexicalBlock(scope: !44, file: !8, line: 37, column: 20)
!77 = !DILocation(line: 37, column: 41, scope: !78)
!78 = distinct !DILexicalBlock(scope: !76, file: !8, line: 37, column: 20)
!79 = !DILocation(line: 37, column: 34, scope: !78)
!80 = !DILocation(line: 37, column: 20, scope: !76)
!81 = !DILocation(line: 38, column: 13, scope: !78)
!82 = !DILocation(line: 38, column: 5, scope: !78)
!83 = !DILocation(line: 38, column: 11, scope: !78)
!84 = !DILocation(line: 37, column: 50, scope: !78)
!85 = !DILocation(line: 37, column: 20, scope: !78)
!86 = distinct !{!86, !80, !87, !88}
!87 = !DILocation(line: 38, column: 18, scope: !76)
!88 = !{!"llvm.loop.name", !"VITIS_LOOP_37_1"}
!89 = !DILocation(line: 39, column: 25, scope: !90)
!90 = distinct !DILexicalBlock(scope: !44, file: !8, line: 39, column: 20)
!91 = !DILocation(line: 39, column: 41, scope: !92)
!92 = distinct !DILexicalBlock(scope: !90, file: !8, line: 39, column: 20)
!93 = !DILocation(line: 39, column: 34, scope: !92)
!94 = !DILocation(line: 39, column: 20, scope: !90)
!95 = !DILocation(line: 40, column: 13, scope: !92)
!96 = !DILocation(line: 40, column: 5, scope: !92)
!97 = !DILocation(line: 40, column: 11, scope: !92)
!98 = !DILocation(line: 39, column: 50, scope: !92)
!99 = !DILocation(line: 39, column: 20, scope: !92)
!100 = distinct !{!100, !94, !101, !102}
!101 = !DILocation(line: 40, column: 18, scope: !90)
!102 = !{!"llvm.loop.name", !"VITIS_LOOP_39_2"}
!103 = !DILocalVariable(name: "jj", scope: !44, file: !8, line: 31, type: !18)
!104 = !DILocation(line: 31, column: 15, scope: !44)
!105 = !DILocation(line: 43, column: 8, scope: !106)
!106 = distinct !DILexicalBlock(scope: !44, file: !8, line: 43, column: 3)
!107 = !DILocation(line: 43, column: 19, scope: !108)
!108 = distinct !DILexicalBlock(scope: !106, file: !8, line: 43, column: 3)
!109 = !DILocation(line: 43, column: 3, scope: !106)
!110 = !DILocation(line: 43, column: 36, scope: !108)
!111 = !DILocalVariable(name: "kk", scope: !44, file: !8, line: 31, type: !18)
!112 = !DILocation(line: 31, column: 19, scope: !44)
!113 = !DILocation(line: 45, column: 10, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !8, line: 45, column: 5)
!115 = distinct !DILexicalBlock(scope: !108, file: !8, line: 43, column: 36)
!116 = !DILocation(line: 45, column: 21, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !8, line: 45, column: 5)
!118 = !DILocation(line: 45, column: 5, scope: !114)
!119 = !DILocation(line: 45, column: 38, scope: !117)
!120 = !DILocation(line: 47, column: 12, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !8, line: 47, column: 7)
!122 = distinct !DILexicalBlock(scope: !117, file: !8, line: 45, column: 38)
!123 = !DILocation(line: 47, column: 21, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !8, line: 47, column: 7)
!125 = !DILocation(line: 47, column: 7, scope: !121)
!126 = !DILocation(line: 47, column: 34, scope: !124)
!127 = !DILocalVariable(name: "k", scope: !44, file: !8, line: 31, type: !18)
!128 = !DILocation(line: 31, column: 9, scope: !44)
!129 = !DILocation(line: 49, column: 14, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !8, line: 49, column: 9)
!131 = distinct !DILexicalBlock(scope: !124, file: !8, line: 47, column: 34)
!132 = !DILocation(line: 49, column: 23, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !8, line: 49, column: 9)
!134 = !DILocation(line: 49, column: 9, scope: !130)
!135 = !DILocation(line: 50, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !8, line: 49, column: 33)
!137 = !DILocalVariable(name: "i_row", scope: !44, file: !8, line: 32, type: !18)
!138 = !DILocation(line: 32, column: 7, scope: !44)
!139 = !DILocation(line: 51, column: 22, scope: !136)
!140 = !DILocation(line: 51, column: 28, scope: !136)
!141 = !DILocalVariable(name: "k_row", scope: !44, file: !8, line: 32, type: !18)
!142 = !DILocation(line: 32, column: 14, scope: !44)
!143 = !DILocation(line: 52, column: 29, scope: !136)
!144 = !DILocation(line: 52, column: 33, scope: !136)
!145 = !DILocation(line: 52, column: 20, scope: !136)
!146 = !DILocalVariable(name: "temp_x", scope: !44, file: !8, line: 33, type: !18)
!147 = !DILocation(line: 33, column: 7, scope: !44)
!148 = !DILocation(line: 52, column: 11, scope: !136)
!149 = !DILocalVariable(name: "j", scope: !44, file: !8, line: 31, type: !18)
!150 = !DILocation(line: 31, column: 12, scope: !44)
!151 = !DILocation(line: 54, column: 16, scope: !152)
!152 = distinct !DILexicalBlock(scope: !136, file: !8, line: 54, column: 11)
!153 = !DILocation(line: 54, column: 25, scope: !154)
!154 = distinct !DILexicalBlock(scope: !152, file: !8, line: 54, column: 11)
!155 = !DILocation(line: 54, column: 11, scope: !152)
!156 = !DILocation(line: 55, column: 37, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !8, line: 54, column: 35)
!158 = !DILocation(line: 55, column: 41, scope: !157)
!159 = !DILocation(line: 55, column: 28, scope: !157)
!160 = !DILocation(line: 55, column: 26, scope: !157)
!161 = !DILocalVariable(name: "mul", scope: !44, file: !8, line: 33, type: !18)
!162 = !DILocation(line: 33, column: 15, scope: !44)
!163 = !DILocation(line: 56, column: 47, scope: !157)
!164 = !DILocation(line: 56, column: 51, scope: !157)
!165 = !DILocation(line: 56, column: 36, scope: !157)
!166 = !DILocation(line: 56, column: 57, scope: !157)
!167 = !DILocation(line: 56, column: 24, scope: !157)
!168 = !DILocation(line: 56, column: 28, scope: !157)
!169 = !DILocation(line: 56, column: 13, scope: !157)
!170 = !DILocation(line: 56, column: 34, scope: !157)
!171 = !DILocation(line: 57, column: 11, scope: !157)
!172 = !DILocation(line: 54, column: 30, scope: !154)
!173 = !DILocation(line: 54, column: 11, scope: !154)
!174 = distinct !{!174, !155, !175, !176}
!175 = !DILocation(line: 57, column: 11, scope: !152)
!176 = !{!"llvm.loop.name", !"loopj"}
!177 = !DILocation(line: 58, column: 9, scope: !136)
!178 = !DILocation(line: 49, column: 28, scope: !133)
!179 = !DILocation(line: 49, column: 9, scope: !133)
!180 = distinct !{!180, !134, !181, !182}
!181 = !DILocation(line: 58, column: 9, scope: !130)
!182 = !{!"llvm.loop.name", !"loopk"}
!183 = !DILocation(line: 59, column: 7, scope: !131)
!184 = !DILocation(line: 47, column: 29, scope: !124)
!185 = !DILocation(line: 47, column: 7, scope: !124)
!186 = distinct !{!186, !125, !187, !188}
!187 = !DILocation(line: 59, column: 7, scope: !121)
!188 = !{!"llvm.loop.name", !"loopi"}
!189 = !DILocation(line: 60, column: 5, scope: !122)
!190 = !DILocation(line: 45, column: 32, scope: !117)
!191 = !DILocation(line: 45, column: 5, scope: !117)
!192 = distinct !{!192, !118, !193, !194}
!193 = !DILocation(line: 60, column: 5, scope: !114)
!194 = !{!"llvm.loop.name", !"loopkk"}
!195 = !DILocation(line: 61, column: 3, scope: !115)
!196 = !DILocation(line: 43, column: 30, scope: !108)
!197 = !DILocation(line: 43, column: 3, scope: !108)
!198 = distinct !{!198, !109, !199, !200}
!199 = !DILocation(line: 61, column: 3, scope: !106)
!200 = !{!"llvm.loop.name", !"loopjj"}
!201 = !DILocation(line: 62, column: 21, scope: !44)
!202 = !DILocation(line: 62, column: 36, scope: !44)
!203 = !DILocation(line: 62, column: 3, scope: !44)
!204 = !DILocation(line: 63, column: 1, scope: !44)
