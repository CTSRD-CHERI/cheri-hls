; ModuleID = '/workspace/examples/gemm_ncubed/temp/test.bc'
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
  br label %VITIS_LOOP_21_1, !dbg !29

VITIS_LOOP_21_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_21_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_21_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !39, metadata !DIExpression()), !dbg !40
  %mul = mul nsw i32 %size, %size, !dbg !43
  %cmp = icmp slt i32 %i.0, %mul, !dbg !45
  br i1 %cmp, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !47
  %arrayidx = getelementptr inbounds i32, i32* %xm1, i64 %idxprom, !dbg !47
  %3 = load i32, i32* %arrayidx, align 4, !dbg !47
  %idxprom1 = sext i32 %i.0 to i64, !dbg !48
  %arrayidx2 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m1, i64 0, i64 %idxprom1, !dbg !48
  store i32 %3, i32* %arrayidx2, align 4, !dbg !49
  br label %for.inc, !dbg !48

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !50
  call void @llvm.dbg.value(metadata i32 %inc, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond, !dbg !51, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_23_2, !dbg !53

VITIS_LOOP_23_2:                                  ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond3, !dbg !55

for.cond3:                                        ; preds = %for.inc11, %VITIS_LOOP_23_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_23_2 ], [ %inc12, %for.inc11 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !39, metadata !DIExpression()), !dbg !40
  %mul4 = mul nsw i32 %size, %size, !dbg !57
  %cmp5 = icmp slt i32 %i.1, %mul4, !dbg !59
  br i1 %cmp5, label %for.body6, label %for.end13, !dbg !60

for.body6:                                        ; preds = %for.cond3
  %idxprom7 = sext i32 %i.1 to i64, !dbg !61
  %arrayidx8 = getelementptr inbounds i32, i32* %xm2, i64 %idxprom7, !dbg !61
  %4 = load i32, i32* %arrayidx8, align 4, !dbg !61
  %idxprom9 = sext i32 %i.1 to i64, !dbg !62
  %arrayidx10 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m2, i64 0, i64 %idxprom9, !dbg !62
  store i32 %4, i32* %arrayidx10, align 4, !dbg !63
  br label %for.inc11, !dbg !62

for.inc11:                                        ; preds = %for.body6
  %inc12 = add nsw i32 %i.1, 1, !dbg !64
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond3, !dbg !65, !llvm.loop !66

for.end13:                                        ; preds = %for.cond3
  br label %outer, !dbg !67

outer:                                            ; preds = %for.end13
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond14, !dbg !69

for.cond14:                                       ; preds = %for.inc41, %outer
  %i.2 = phi i32 [ 0, %outer ], [ %inc42, %for.inc41 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !39, metadata !DIExpression()), !dbg !40
  %cmp15 = icmp slt i32 %i.2, %size, !dbg !71
  br i1 %cmp15, label %for.body16, label %for.end43, !dbg !73

for.body16:                                       ; preds = %for.cond14
  br label %middle, !dbg !74

middle:                                           ; preds = %for.body16
  call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !76
  br label %for.cond17, !dbg !77

for.cond17:                                       ; preds = %for.inc38, %middle
  %j.0 = phi i32 [ 0, %middle ], [ %inc39, %for.inc38 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !75, metadata !DIExpression()), !dbg !76
  %cmp18 = icmp slt i32 %j.0, %size, !dbg !80
  br i1 %cmp18, label %for.body19, label %for.end40, !dbg !82

for.body19:                                       ; preds = %for.cond17
  %mul20 = mul nsw i32 %i.2, %size, !dbg !83
  call void @llvm.dbg.value(metadata i32 %mul20, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i32 0, metadata !87, metadata !DIExpression()), !dbg !88
  br label %inner, !dbg !89

inner:                                            ; preds = %for.body19
  call void @llvm.dbg.value(metadata i32 0, metadata !90, metadata !DIExpression()), !dbg !91
  br label %for.cond21, !dbg !92

for.cond21:                                       ; preds = %for.inc32, %inner
  %k.0 = phi i32 [ 0, %inner ], [ %inc33, %for.inc32 ]
  %sum.0 = phi i32 [ 0, %inner ], [ %add31, %for.inc32 ]
  call void @llvm.dbg.value(metadata i32 %sum.0, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !90, metadata !DIExpression()), !dbg !91
  %cmp22 = icmp slt i32 %k.0, %size, !dbg !94
  br i1 %cmp22, label %for.body23, label %for.end34, !dbg !96

for.body23:                                       ; preds = %for.cond21
  %mul24 = mul nsw i32 %k.0, %size, !dbg !97
  call void @llvm.dbg.value(metadata i32 %mul24, metadata !99, metadata !DIExpression()), !dbg !100
  %add = add nsw i32 %mul20, %k.0, !dbg !101
  %idxprom25 = sext i32 %add to i64, !dbg !102
  %arrayidx26 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m1, i64 0, i64 %idxprom25, !dbg !102
  %5 = load i32, i32* %arrayidx26, align 4, !dbg !102
  %add27 = add nsw i32 %mul24, %j.0, !dbg !103
  %idxprom28 = sext i32 %add27 to i64, !dbg !104
  %arrayidx29 = getelementptr inbounds [4096 x i32], [4096 x i32]* %m2, i64 0, i64 %idxprom28, !dbg !104
  %6 = load i32, i32* %arrayidx29, align 4, !dbg !104
  %mul30 = mul nsw i32 %5, %6, !dbg !105
  call void @llvm.dbg.value(metadata i32 %mul30, metadata !106, metadata !DIExpression()), !dbg !107
  %add31 = add nsw i32 %sum.0, %mul30, !dbg !108
  call void @llvm.dbg.value(metadata i32 %add31, metadata !87, metadata !DIExpression()), !dbg !88
  br label %for.inc32, !dbg !109

for.inc32:                                        ; preds = %for.body23
  %inc33 = add nsw i32 %k.0, 1, !dbg !110
  call void @llvm.dbg.value(metadata i32 %inc33, metadata !90, metadata !DIExpression()), !dbg !91
  br label %for.cond21, !dbg !111, !llvm.loop !112

for.end34:                                        ; preds = %for.cond21
  %add35 = add nsw i32 %mul20, %j.0, !dbg !115
  %idxprom36 = sext i32 %add35 to i64, !dbg !116
  %arrayidx37 = getelementptr inbounds [4096 x i32], [4096 x i32]* %prod, i64 0, i64 %idxprom36, !dbg !116
  store i32 %sum.0, i32* %arrayidx37, align 4, !dbg !117
  br label %for.inc38, !dbg !118

for.inc38:                                        ; preds = %for.end34
  %inc39 = add nsw i32 %j.0, 1, !dbg !119
  call void @llvm.dbg.value(metadata i32 %inc39, metadata !75, metadata !DIExpression()), !dbg !76
  br label %for.cond17, !dbg !120, !llvm.loop !121

for.end40:                                        ; preds = %for.cond17
  br label %for.inc41, !dbg !124

for.inc41:                                        ; preds = %for.end40
  %inc42 = add nsw i32 %i.2, 1, !dbg !125
  call void @llvm.dbg.value(metadata i32 %inc42, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond14, !dbg !126, !llvm.loop !127

for.end43:                                        ; preds = %for.cond14
  br label %VITIS_LOOP_42_3, !dbg !128

VITIS_LOOP_42_3:                                  ; preds = %for.end43
  call void @llvm.dbg.value(metadata i32 0, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond44, !dbg !130

for.cond44:                                       ; preds = %for.inc52, %VITIS_LOOP_42_3
  %i.3 = phi i32 [ 0, %VITIS_LOOP_42_3 ], [ %inc53, %for.inc52 ]
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !39, metadata !DIExpression()), !dbg !40
  %mul45 = mul nsw i32 %size, %size, !dbg !132
  %cmp46 = icmp slt i32 %i.3, %mul45, !dbg !134
  br i1 %cmp46, label %for.body47, label %for.end54, !dbg !135

for.body47:                                       ; preds = %for.cond44
  %idxprom48 = sext i32 %i.3 to i64, !dbg !136
  %arrayidx49 = getelementptr inbounds [4096 x i32], [4096 x i32]* %prod, i64 0, i64 %idxprom48, !dbg !136
  %7 = load i32, i32* %arrayidx49, align 4, !dbg !136
  %idxprom50 = sext i32 %i.3 to i64, !dbg !137
  %arrayidx51 = getelementptr inbounds i32, i32* %xprod, i64 %idxprom50, !dbg !137
  store i32 %7, i32* %arrayidx51, align 4, !dbg !138
  br label %for.inc52, !dbg !137

for.inc52:                                        ; preds = %for.body47
  %inc53 = add nsw i32 %i.3, 1, !dbg !139
  call void @llvm.dbg.value(metadata i32 %inc53, metadata !39, metadata !DIExpression()), !dbg !40
  br label %for.cond44, !dbg !140, !llvm.loop !141

for.end54:                                        ; preds = %for.cond44
  %8 = bitcast [4096 x i32]* %prod to i8*, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %8) #7, !dbg !144
  %9 = bitcast [4096 x i32]* %m2 to i8*, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %9) #7, !dbg !144
  %10 = bitcast [4096 x i32]* %m1 to i8*, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* %10) #7, !dbg !144
  ret void, !dbg !144
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
!1 = !DIFile(filename: "/workspace/examples/gemm_ncubed/gemm_prj/solution/.autopilot/db/gemm.pp.0.c", directory: "/workspace/examples/gemm_ncubed")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 9, type: !9, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "gemm.c", directory: "/workspace/examples/gemm_ncubed")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !12, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 9, column: 16, scope: !7)
!16 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 9, type: !11)
!17 = !DILocation(line: 9, column: 60, scope: !7)
!18 = !DILocalVariable(name: "xm1", arg: 2, scope: !7, file: !8, line: 9, type: !12)
!19 = !DILocation(line: 9, column: 70, scope: !7)
!20 = !DILocalVariable(name: "xm2", arg: 3, scope: !7, file: !8, line: 9, type: !12)
!21 = !DILocation(line: 9, column: 87, scope: !7)
!22 = !DILocalVariable(name: "xprod", arg: 4, scope: !7, file: !8, line: 9, type: !12)
!23 = !DILocation(line: 9, column: 104, scope: !7)
!24 = !DILocation(line: 10, column: 9, scope: !7)
!25 = !DILocation(line: 11, column: 9, scope: !7)
!26 = !DILocation(line: 12, column: 9, scope: !7)
!27 = !DILocation(line: 13, column: 9, scope: !7)
!28 = !DILocation(line: 14, column: 9, scope: !7)
!29 = !DILocation(line: 19, column: 3, scope: !7)
!30 = !DILocalVariable(name: "m1", scope: !7, file: !8, line: 19, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 131072, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 4096)
!34 = !DILocation(line: 19, column: 7, scope: !7)
!35 = !DILocalVariable(name: "m2", scope: !7, file: !8, line: 19, type: !31)
!36 = !DILocation(line: 19, column: 19, scope: !7)
!37 = !DILocalVariable(name: "prod", scope: !7, file: !8, line: 19, type: !31)
!38 = !DILocation(line: 19, column: 31, scope: !7)
!39 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 15, type: !11)
!40 = !DILocation(line: 15, column: 6, scope: !7)
!41 = !DILocation(line: 21, column: 25, scope: !42)
!42 = distinct !DILexicalBlock(scope: !7, file: !8, line: 21, column: 20)
!43 = !DILocation(line: 21, column: 41, scope: !44)
!44 = distinct !DILexicalBlock(scope: !42, file: !8, line: 21, column: 20)
!45 = !DILocation(line: 21, column: 34, scope: !44)
!46 = !DILocation(line: 21, column: 20, scope: !42)
!47 = !DILocation(line: 22, column: 13, scope: !44)
!48 = !DILocation(line: 22, column: 5, scope: !44)
!49 = !DILocation(line: 22, column: 11, scope: !44)
!50 = !DILocation(line: 21, column: 50, scope: !44)
!51 = !DILocation(line: 21, column: 20, scope: !44)
!52 = distinct !{!52, !46, !53, !54}
!53 = !DILocation(line: 22, column: 18, scope: !42)
!54 = !{!"llvm.loop.name", !"VITIS_LOOP_21_1"}
!55 = !DILocation(line: 23, column: 25, scope: !56)
!56 = distinct !DILexicalBlock(scope: !7, file: !8, line: 23, column: 20)
!57 = !DILocation(line: 23, column: 41, scope: !58)
!58 = distinct !DILexicalBlock(scope: !56, file: !8, line: 23, column: 20)
!59 = !DILocation(line: 23, column: 34, scope: !58)
!60 = !DILocation(line: 23, column: 20, scope: !56)
!61 = !DILocation(line: 24, column: 13, scope: !58)
!62 = !DILocation(line: 24, column: 5, scope: !58)
!63 = !DILocation(line: 24, column: 11, scope: !58)
!64 = !DILocation(line: 23, column: 50, scope: !58)
!65 = !DILocation(line: 23, column: 20, scope: !58)
!66 = distinct !{!66, !60, !67, !68}
!67 = !DILocation(line: 24, column: 18, scope: !56)
!68 = !{!"llvm.loop.name", !"VITIS_LOOP_23_2"}
!69 = !DILocation(line: 27, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !7, file: !8, line: 27, column: 3)
!71 = !DILocation(line: 27, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !8, line: 27, column: 3)
!73 = !DILocation(line: 27, column: 3, scope: !70)
!74 = !DILocation(line: 27, column: 30, scope: !72)
!75 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 15, type: !11)
!76 = !DILocation(line: 15, column: 9, scope: !7)
!77 = !DILocation(line: 29, column: 10, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !8, line: 29, column: 5)
!79 = distinct !DILexicalBlock(scope: !72, file: !8, line: 27, column: 30)
!80 = !DILocation(line: 29, column: 19, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !8, line: 29, column: 5)
!82 = !DILocation(line: 29, column: 5, scope: !78)
!83 = !DILocation(line: 30, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !8, line: 29, column: 32)
!85 = !DILocalVariable(name: "i_col", scope: !7, file: !8, line: 16, type: !11)
!86 = !DILocation(line: 16, column: 14, scope: !7)
!87 = !DILocalVariable(name: "sum", scope: !84, file: !8, line: 31, type: !11)
!88 = !DILocation(line: 31, column: 11, scope: !84)
!89 = !DILocation(line: 31, column: 7, scope: !84)
!90 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 15, type: !11)
!91 = !DILocation(line: 15, column: 12, scope: !7)
!92 = !DILocation(line: 33, column: 12, scope: !93)
!93 = distinct !DILexicalBlock(scope: !84, file: !8, line: 33, column: 7)
!94 = !DILocation(line: 33, column: 21, scope: !95)
!95 = distinct !DILexicalBlock(scope: !93, file: !8, line: 33, column: 7)
!96 = !DILocation(line: 33, column: 7, scope: !93)
!97 = !DILocation(line: 34, column: 19, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !8, line: 33, column: 34)
!99 = !DILocalVariable(name: "k_col", scope: !7, file: !8, line: 16, type: !11)
!100 = !DILocation(line: 16, column: 7, scope: !7)
!101 = !DILocation(line: 35, column: 25, scope: !98)
!102 = !DILocation(line: 35, column: 16, scope: !98)
!103 = !DILocation(line: 35, column: 41, scope: !98)
!104 = !DILocation(line: 35, column: 32, scope: !98)
!105 = !DILocation(line: 35, column: 30, scope: !98)
!106 = !DILocalVariable(name: "mult", scope: !7, file: !8, line: 17, type: !11)
!107 = !DILocation(line: 17, column: 7, scope: !7)
!108 = !DILocation(line: 36, column: 13, scope: !98)
!109 = !DILocation(line: 37, column: 7, scope: !98)
!110 = !DILocation(line: 33, column: 30, scope: !95)
!111 = !DILocation(line: 33, column: 7, scope: !95)
!112 = distinct !{!112, !96, !113, !114}
!113 = !DILocation(line: 37, column: 7, scope: !93)
!114 = !{!"llvm.loop.name", !"inner"}
!115 = !DILocation(line: 38, column: 18, scope: !84)
!116 = !DILocation(line: 38, column: 7, scope: !84)
!117 = !DILocation(line: 38, column: 23, scope: !84)
!118 = !DILocation(line: 39, column: 5, scope: !84)
!119 = !DILocation(line: 29, column: 28, scope: !81)
!120 = !DILocation(line: 29, column: 5, scope: !81)
!121 = distinct !{!121, !82, !122, !123}
!122 = !DILocation(line: 39, column: 5, scope: !78)
!123 = !{!"llvm.loop.name", !"middle"}
!124 = !DILocation(line: 40, column: 3, scope: !79)
!125 = !DILocation(line: 27, column: 26, scope: !72)
!126 = !DILocation(line: 27, column: 3, scope: !72)
!127 = distinct !{!127, !73, !128, !129}
!128 = !DILocation(line: 40, column: 3, scope: !70)
!129 = !{!"llvm.loop.name", !"outer"}
!130 = !DILocation(line: 42, column: 25, scope: !131)
!131 = distinct !DILexicalBlock(scope: !7, file: !8, line: 42, column: 20)
!132 = !DILocation(line: 42, column: 41, scope: !133)
!133 = distinct !DILexicalBlock(scope: !131, file: !8, line: 42, column: 20)
!134 = !DILocation(line: 42, column: 34, scope: !133)
!135 = !DILocation(line: 42, column: 20, scope: !131)
!136 = !DILocation(line: 43, column: 16, scope: !133)
!137 = !DILocation(line: 43, column: 5, scope: !133)
!138 = !DILocation(line: 43, column: 14, scope: !133)
!139 = !DILocation(line: 42, column: 50, scope: !133)
!140 = !DILocation(line: 42, column: 20, scope: !133)
!141 = distinct !{!141, !135, !142, !143}
!142 = !DILocation(line: 43, column: 22, scope: !131)
!143 = !{!"llvm.loop.name", !"VITIS_LOOP_42_3"}
!144 = !DILocation(line: 44, column: 1, scope: !7)
