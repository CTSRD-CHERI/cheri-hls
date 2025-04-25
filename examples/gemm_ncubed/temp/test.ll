; ModuleID = '/workspace/examples/gemm_ncubed/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @stream_write(i32 %size, i32* %array1, i32* %array2) #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32* %array1, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32* %array2, metadata !23, metadata !DIExpression()), !dbg !24
  br label %VITIS_LOOP_11_1, !dbg !25

VITIS_LOOP_11_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !28
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_11_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_11_1 ], [ %inc, %for.inc ]
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
define void @hls_top(i32 %size, i32* "fpga.decayed.dim.hint"="4096" %xm1, i32* "fpga.decayed.dim.hint"="4096" %xm2, i32* "fpga.decayed.dim.hint"="4096" %xprod) #3 !dbg !44 !fpga.function.pragma !47 {
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
  br label %VITIS_LOOP_28_1, !dbg !63

VITIS_LOOP_28_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_28_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_28_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !73, metadata !DIExpression()), !dbg !74
  %mul = mul nsw i32 %size, %size, !dbg !77
  %cmp = icmp slt i32 %i.0, %mul, !dbg !79
  br i1 %cmp, label %for.body, label %for.end, !dbg !80

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !81
  %arrayidx = getelementptr inbounds i32, i32* %xm1, i64 %idxprom, !dbg !81
  %3 = load i32, i32* %arrayidx, align 4, !dbg !81
  %idxprom1 = sext i32 %i.0 to i64, !dbg !82
  %arrayidx2 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m1, i64 0, i64 %idxprom1, !dbg !82
  store i32 %3, i32* %arrayidx2, align 4, !dbg !83
  br label %for.inc, !dbg !82

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !84
  call void @llvm.dbg.value(metadata i32 %inc, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond, !dbg !85, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_30_2, !dbg !87

VITIS_LOOP_30_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond3, !dbg !89

for.cond3:                                        ; preds = %for.inc11, %VITIS_LOOP_30_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_30_2 ], [ %inc12, %for.inc11 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !73, metadata !DIExpression()), !dbg !74
  %mul4 = mul nsw i32 %size, %size, !dbg !91
  %cmp5 = icmp slt i32 %i.1, %mul4, !dbg !93
  br i1 %cmp5, label %for.body6, label %for.end13, !dbg !94

for.body6:                                        ; preds = %for.cond3
  %idxprom7 = sext i32 %i.1 to i64, !dbg !95
  %arrayidx8 = getelementptr inbounds i32, i32* %xm2, i64 %idxprom7, !dbg !95
  %4 = load i32, i32* %arrayidx8, align 4, !dbg !95
  %idxprom9 = sext i32 %i.1 to i64, !dbg !96
  %arrayidx10 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m2, i64 0, i64 %idxprom9, !dbg !96
  store i32 %4, i32* %arrayidx10, align 4, !dbg !97
  br label %for.inc11, !dbg !96

for.inc11:                                        ; preds = %for.body6
  %inc12 = add nsw i32 %i.1, 1, !dbg !98
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond3, !dbg !99, !llvm.loop !100

for.end13:                                        ; preds = %for.cond3
  br label %outer, !dbg !101

outer:                                            ; preds = %for.end13
  call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond14, !dbg !103

for.cond14:                                       ; preds = %for.inc41, %outer
  %i.2 = phi i32 [ 0, %outer ], [ %inc42, %for.inc41 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !73, metadata !DIExpression()), !dbg !74
  %cmp15 = icmp slt i32 %i.2, %size, !dbg !105
  br i1 %cmp15, label %for.body16, label %for.end43, !dbg !107

for.body16:                                       ; preds = %for.cond14
  br label %middle, !dbg !108

middle:                                           ; preds = %for.body16
  call void @llvm.dbg.value(metadata i32 0, metadata !109, metadata !DIExpression()), !dbg !110
  br label %for.cond17, !dbg !111

for.cond17:                                       ; preds = %for.inc38, %middle
  %j.0 = phi i32 [ 0, %middle ], [ %inc39, %for.inc38 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !109, metadata !DIExpression()), !dbg !110
  %cmp18 = icmp slt i32 %j.0, %size, !dbg !114
  br i1 %cmp18, label %for.body19, label %for.end40, !dbg !116

for.body19:                                       ; preds = %for.cond17
  %mul20 = mul nsw i32 %i.2, %size, !dbg !117
  call void @llvm.dbg.value(metadata i32 %mul20, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !122
  br label %inner, !dbg !123

inner:                                            ; preds = %for.body19
  call void @llvm.dbg.value(metadata i32 0, metadata !124, metadata !DIExpression()), !dbg !125
  br label %for.cond21, !dbg !126

for.cond21:                                       ; preds = %for.inc32, %inner
  %k.0 = phi i32 [ 0, %inner ], [ %inc33, %for.inc32 ]
  %sum.0 = phi i32 [ 0, %inner ], [ %add31, %for.inc32 ]
  call void @llvm.dbg.value(metadata i32 %sum.0, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !124, metadata !DIExpression()), !dbg !125
  %cmp22 = icmp slt i32 %k.0, %size, !dbg !128
  br i1 %cmp22, label %for.body23, label %for.end34, !dbg !130

for.body23:                                       ; preds = %for.cond21
  %mul24 = mul nsw i32 %k.0, %size, !dbg !131
  call void @llvm.dbg.value(metadata i32 %mul24, metadata !133, metadata !DIExpression()), !dbg !134
  %add = add nsw i32 %mul20, %k.0, !dbg !135
  %idxprom25 = sext i32 %add to i64, !dbg !136
  %arrayidx26 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m1, i64 0, i64 %idxprom25, !dbg !136
  %5 = load i32, i32* %arrayidx26, align 4, !dbg !136
  %add27 = add nsw i32 %mul24, %j.0, !dbg !137
  %idxprom28 = sext i32 %add27 to i64, !dbg !138
  %arrayidx29 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m2, i64 0, i64 %idxprom28, !dbg !138
  %6 = load i32, i32* %arrayidx29, align 4, !dbg !138
  %mul30 = mul nsw i32 %5, %6, !dbg !139
  call void @llvm.dbg.value(metadata i32 %mul30, metadata !140, metadata !DIExpression()), !dbg !141
  %add31 = add nsw i32 %sum.0, %mul30, !dbg !142
  call void @llvm.dbg.value(metadata i32 %add31, metadata !121, metadata !DIExpression()), !dbg !122
  br label %for.inc32, !dbg !143

for.inc32:                                        ; preds = %for.body23
  %inc33 = add nsw i32 %k.0, 1, !dbg !144
  call void @llvm.dbg.value(metadata i32 %inc33, metadata !124, metadata !DIExpression()), !dbg !125
  br label %for.cond21, !dbg !145, !llvm.loop !146

for.end34:                                        ; preds = %for.cond21
  %add35 = add nsw i32 %mul20, %j.0, !dbg !149
  %idxprom36 = sext i32 %add35 to i64, !dbg !150
  %arrayidx37 = getelementptr inbounds [4096 x i32], [4096 x i32]* %prod, i64 0, i64 %idxprom36, !dbg !150
  store i32 %sum.0, i32* %arrayidx37, align 4, !dbg !151
  br label %for.inc38, !dbg !152

for.inc38:                                        ; preds = %for.end34
  %inc39 = add nsw i32 %j.0, 1, !dbg !153
  call void @llvm.dbg.value(metadata i32 %inc39, metadata !109, metadata !DIExpression()), !dbg !110
  br label %for.cond17, !dbg !154, !llvm.loop !155

for.end40:                                        ; preds = %for.cond17
  br label %for.inc41, !dbg !158

for.inc41:                                        ; preds = %for.end40
  %inc42 = add nsw i32 %i.2, 1, !dbg !159
  call void @llvm.dbg.value(metadata i32 %inc42, metadata !73, metadata !DIExpression()), !dbg !74
  br label %for.cond14, !dbg !160, !llvm.loop !161

for.end43:                                        ; preds = %for.cond14
  %mul44 = mul nsw i32 %size, %size, !dbg !164
  %arraydecay = getelementptr inbounds [4096 x i32], [4096 x i32]* %prod, i32 0, i32 0, !dbg !165
  call void @stream_write(i32 %mul44, i32* %xprod, i32* %arraydecay), !dbg !166
  %7 = bitcast [4096 x i32]* %prod to i8*, !dbg !167
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %7) #8, !dbg !167
  %8 = bitcast [4096 x i32]* %m2 to i8*, !dbg !167
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %8) #8, !dbg !167
  %9 = bitcast [4096 x i32]* %m1 to i8*, !dbg !167
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %9) #8, !dbg !167
  ret void, !dbg !167
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
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="131072" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/gemm_ncubed/gemm_ncubed_prj/solution/.autopilot/db/gemm.pp.0.c", directory: "/workspace/examples/gemm_ncubed")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "stream_write", scope: !8, file: !8, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "gemm.c", directory: "/workspace/examples/gemm_ncubed")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !17, !17}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 9, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/gemm_ncubed")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 42, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/gemm_ncubed")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 10, type: !11)
!20 = !DILocation(line: 10, column: 23, scope: !7)
!21 = !DILocalVariable(name: "array1", arg: 2, scope: !7, file: !8, line: 10, type: !17)
!22 = !DILocation(line: 10, column: 34, scope: !7)
!23 = !DILocalVariable(name: "array2", arg: 3, scope: !7, file: !8, line: 10, type: !17)
!24 = !DILocation(line: 10, column: 47, scope: !7)
!25 = !DILocation(line: 10, column: 55, scope: !7)
!26 = !DILocalVariable(name: "i", scope: !27, file: !8, line: 11, type: !18)
!27 = distinct !DILexicalBlock(scope: !7, file: !8, line: 11, column: 20)
!28 = !DILocation(line: 11, column: 29, scope: !27)
!29 = !DILocation(line: 11, column: 25, scope: !27)
!30 = !DILocation(line: 11, column: 38, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !8, line: 11, column: 20)
!32 = !DILocation(line: 11, column: 20, scope: !27)
!33 = !DILocation(line: 12, column: 17, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !8, line: 11, column: 51)
!35 = !DILocation(line: 12, column: 5, scope: !34)
!36 = !DILocation(line: 12, column: 15, scope: !34)
!37 = !DILocation(line: 13, column: 3, scope: !34)
!38 = !DILocation(line: 11, column: 47, scope: !31)
!39 = !DILocation(line: 11, column: 20, scope: !31)
!40 = distinct !{!40, !32, !41, !42}
!41 = !DILocation(line: 13, column: 3, scope: !27)
!42 = !{!"llvm.loop.name", !"VITIS_LOOP_11_1"}
!43 = !DILocation(line: 14, column: 1, scope: !7)
!44 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 16, type: !45, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !18, !17, !17, !17}
!47 = !{!48}
!48 = !{!"fpga.top", !"user", !49}
!49 = !DILocation(line: 16, column: 16, scope: !44)
!50 = !DILocalVariable(name: "size", arg: 1, scope: !44, file: !8, line: 16, type: !18)
!51 = !DILocation(line: 16, column: 60, scope: !44)
!52 = !DILocalVariable(name: "xm1", arg: 2, scope: !44, file: !8, line: 16, type: !17)
!53 = !DILocation(line: 16, column: 70, scope: !44)
!54 = !DILocalVariable(name: "xm2", arg: 3, scope: !44, file: !8, line: 16, type: !17)
!55 = !DILocation(line: 16, column: 87, scope: !44)
!56 = !DILocalVariable(name: "xprod", arg: 4, scope: !44, file: !8, line: 16, type: !17)
!57 = !DILocation(line: 16, column: 104, scope: !44)
!58 = !DILocation(line: 17, column: 9, scope: !44)
!59 = !DILocation(line: 18, column: 9, scope: !44)
!60 = !DILocation(line: 19, column: 9, scope: !44)
!61 = !DILocation(line: 20, column: 9, scope: !44)
!62 = !DILocation(line: 21, column: 9, scope: !44)
!63 = !DILocation(line: 26, column: 3, scope: !44)
!64 = !DILocalVariable(name: "m1", scope: !44, file: !8, line: 26, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 131072, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 4096)
!68 = !DILocation(line: 26, column: 7, scope: !44)
!69 = !DILocalVariable(name: "m2", scope: !44, file: !8, line: 26, type: !65)
!70 = !DILocation(line: 26, column: 19, scope: !44)
!71 = !DILocalVariable(name: "prod", scope: !44, file: !8, line: 26, type: !65)
!72 = !DILocation(line: 26, column: 31, scope: !44)
!73 = !DILocalVariable(name: "i", scope: !44, file: !8, line: 22, type: !18)
!74 = !DILocation(line: 22, column: 6, scope: !44)
!75 = !DILocation(line: 28, column: 25, scope: !76)
!76 = distinct !DILexicalBlock(scope: !44, file: !8, line: 28, column: 20)
!77 = !DILocation(line: 28, column: 41, scope: !78)
!78 = distinct !DILexicalBlock(scope: !76, file: !8, line: 28, column: 20)
!79 = !DILocation(line: 28, column: 34, scope: !78)
!80 = !DILocation(line: 28, column: 20, scope: !76)
!81 = !DILocation(line: 29, column: 13, scope: !78)
!82 = !DILocation(line: 29, column: 5, scope: !78)
!83 = !DILocation(line: 29, column: 11, scope: !78)
!84 = !DILocation(line: 28, column: 50, scope: !78)
!85 = !DILocation(line: 28, column: 20, scope: !78)
!86 = distinct !{!86, !80, !87, !88}
!87 = !DILocation(line: 29, column: 18, scope: !76)
!88 = !{!"llvm.loop.name", !"VITIS_LOOP_28_1"}
!89 = !DILocation(line: 30, column: 25, scope: !90)
!90 = distinct !DILexicalBlock(scope: !44, file: !8, line: 30, column: 20)
!91 = !DILocation(line: 30, column: 41, scope: !92)
!92 = distinct !DILexicalBlock(scope: !90, file: !8, line: 30, column: 20)
!93 = !DILocation(line: 30, column: 34, scope: !92)
!94 = !DILocation(line: 30, column: 20, scope: !90)
!95 = !DILocation(line: 31, column: 13, scope: !92)
!96 = !DILocation(line: 31, column: 5, scope: !92)
!97 = !DILocation(line: 31, column: 11, scope: !92)
!98 = !DILocation(line: 30, column: 50, scope: !92)
!99 = !DILocation(line: 30, column: 20, scope: !92)
!100 = distinct !{!100, !94, !101, !102}
!101 = !DILocation(line: 31, column: 18, scope: !90)
!102 = !{!"llvm.loop.name", !"VITIS_LOOP_30_2"}
!103 = !DILocation(line: 34, column: 8, scope: !104)
!104 = distinct !DILexicalBlock(scope: !44, file: !8, line: 34, column: 3)
!105 = !DILocation(line: 34, column: 17, scope: !106)
!106 = distinct !DILexicalBlock(scope: !104, file: !8, line: 34, column: 3)
!107 = !DILocation(line: 34, column: 3, scope: !104)
!108 = !DILocation(line: 34, column: 30, scope: !106)
!109 = !DILocalVariable(name: "j", scope: !44, file: !8, line: 22, type: !18)
!110 = !DILocation(line: 22, column: 9, scope: !44)
!111 = !DILocation(line: 36, column: 10, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !8, line: 36, column: 5)
!113 = distinct !DILexicalBlock(scope: !106, file: !8, line: 34, column: 30)
!114 = !DILocation(line: 36, column: 19, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !8, line: 36, column: 5)
!116 = !DILocation(line: 36, column: 5, scope: !112)
!117 = !DILocation(line: 37, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !8, line: 36, column: 32)
!119 = !DILocalVariable(name: "i_col", scope: !44, file: !8, line: 23, type: !18)
!120 = !DILocation(line: 23, column: 14, scope: !44)
!121 = !DILocalVariable(name: "sum", scope: !118, file: !8, line: 38, type: !18)
!122 = !DILocation(line: 38, column: 11, scope: !118)
!123 = !DILocation(line: 38, column: 7, scope: !118)
!124 = !DILocalVariable(name: "k", scope: !44, file: !8, line: 22, type: !18)
!125 = !DILocation(line: 22, column: 12, scope: !44)
!126 = !DILocation(line: 40, column: 12, scope: !127)
!127 = distinct !DILexicalBlock(scope: !118, file: !8, line: 40, column: 7)
!128 = !DILocation(line: 40, column: 21, scope: !129)
!129 = distinct !DILexicalBlock(scope: !127, file: !8, line: 40, column: 7)
!130 = !DILocation(line: 40, column: 7, scope: !127)
!131 = !DILocation(line: 41, column: 19, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !8, line: 40, column: 34)
!133 = !DILocalVariable(name: "k_col", scope: !44, file: !8, line: 23, type: !18)
!134 = !DILocation(line: 23, column: 7, scope: !44)
!135 = !DILocation(line: 42, column: 25, scope: !132)
!136 = !DILocation(line: 42, column: 16, scope: !132)
!137 = !DILocation(line: 42, column: 41, scope: !132)
!138 = !DILocation(line: 42, column: 32, scope: !132)
!139 = !DILocation(line: 42, column: 30, scope: !132)
!140 = !DILocalVariable(name: "mult", scope: !44, file: !8, line: 24, type: !18)
!141 = !DILocation(line: 24, column: 7, scope: !44)
!142 = !DILocation(line: 43, column: 13, scope: !132)
!143 = !DILocation(line: 44, column: 7, scope: !132)
!144 = !DILocation(line: 40, column: 30, scope: !129)
!145 = !DILocation(line: 40, column: 7, scope: !129)
!146 = distinct !{!146, !130, !147, !148}
!147 = !DILocation(line: 44, column: 7, scope: !127)
!148 = !{!"llvm.loop.name", !"inner"}
!149 = !DILocation(line: 45, column: 18, scope: !118)
!150 = !DILocation(line: 45, column: 7, scope: !118)
!151 = !DILocation(line: 45, column: 23, scope: !118)
!152 = !DILocation(line: 46, column: 5, scope: !118)
!153 = !DILocation(line: 36, column: 28, scope: !115)
!154 = !DILocation(line: 36, column: 5, scope: !115)
!155 = distinct !{!155, !116, !156, !157}
!156 = !DILocation(line: 46, column: 5, scope: !112)
!157 = !{!"llvm.loop.name", !"middle"}
!158 = !DILocation(line: 47, column: 3, scope: !113)
!159 = !DILocation(line: 34, column: 26, scope: !106)
!160 = !DILocation(line: 34, column: 3, scope: !106)
!161 = distinct !{!161, !107, !162, !163}
!162 = !DILocation(line: 47, column: 3, scope: !104)
!163 = !{!"llvm.loop.name", !"outer"}
!164 = !DILocation(line: 48, column: 21, scope: !44)
!165 = !DILocation(line: 48, column: 36, scope: !44)
!166 = !DILocation(line: 48, column: 3, scope: !44)
!167 = !DILocation(line: 49, column: 1, scope: !44)
