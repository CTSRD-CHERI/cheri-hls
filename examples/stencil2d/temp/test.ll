; ModuleID = '/workspace/examples/stencil2d/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: alwaysinline nounwind
define void @stream_write(i32 %size, i32* %array1, i32* %array2) #0 !dbg !7 !fpga.function.pragma !19 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32* %array1, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32* %array2, metadata !26, metadata !DIExpression()), !dbg !27
  br label %VITIS_LOOP_12_1, !dbg !28

VITIS_LOOP_12_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !31
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_12_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_12_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !29, metadata !DIExpression()), !dbg !31
  %cmp = icmp ult i32 %i.0, %size, !dbg !33
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !35

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !36
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !36
  %0 = load i32, i32* %arrayidx, align 4, !dbg !36
  %idxprom1 = sext i32 %i.0 to i64, !dbg !38
  %arrayidx2 = getelementptr inbounds i32, i32* %array1, i64 %idxprom1, !dbg !38
  store i32 %0, i32* %arrayidx2, align 4, !dbg !39
  br label %for.inc, !dbg !40

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !41
  call void @llvm.dbg.value(metadata i32 %inc, metadata !29, metadata !DIExpression()), !dbg !31
  br label %for.cond, !dbg !42, !llvm.loop !43

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !46
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
define void @hls_top(i32 %size, i32* "fpga.decayed.dim.hint"="8192" %xorig, i32* "fpga.decayed.dim.hint"="8192" %xsol, i32* "fpga.decayed.dim.hint"="9" %xfilter) #3 !dbg !47 !fpga.function.pragma !50 {
entry:
  %sol = alloca [8192 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i32* %xorig, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i32* %xsol, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32* %xfilter, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xorig, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !61
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xsol, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !62
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xfilter, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !63
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !64
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !65
  call void @llvm.dbg.declare(metadata !2, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = bitcast [8192 x i32]* %sol to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 32768, i8* %0) #9, !dbg !68
  call void @llvm.dbg.declare(metadata [8192 x i32]* %sol, metadata !69, metadata !DIExpression()), !dbg !73
  br label %stencil_label1, !dbg !68

stencil_label1:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !75
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc28, %stencil_label1
  %r.0 = phi i32 [ 0, %stencil_label1 ], [ %inc29, %for.inc28 ]
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !74, metadata !DIExpression()), !dbg !75
  %sub = sub nsw i32 %size, 2, !dbg !78
  %cmp = icmp slt i32 %r.0, %sub, !dbg !80
  br i1 %cmp, label %for.body, label %for.end30, !dbg !81

for.body:                                         ; preds = %for.cond
  br label %stencil_label2, !dbg !82

stencil_label2:                                   ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !83, metadata !DIExpression()), !dbg !84
  br label %for.cond1, !dbg !85

for.cond1:                                        ; preds = %for.inc25, %stencil_label2
  %c.0 = phi i32 [ 0, %stencil_label2 ], [ %inc26, %for.inc25 ]
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !83, metadata !DIExpression()), !dbg !84
  %cmp2 = icmp slt i32 %c.0, 62, !dbg !88
  br i1 %cmp2, label %for.body3, label %for.end27, !dbg !90

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.value(metadata i32 0, metadata !91, metadata !DIExpression()), !dbg !92
  br label %stencil_label3, !dbg !93

stencil_label3:                                   ; preds = %for.body3
  call void @llvm.dbg.value(metadata i32 0, metadata !95, metadata !DIExpression()), !dbg !96
  br label %for.cond4, !dbg !97

for.cond4:                                        ; preds = %for.inc18, %stencil_label3
  %k1.0 = phi i32 [ 0, %stencil_label3 ], [ %inc19, %for.inc18 ]
  %temp.0 = phi i32 [ 0, %stencil_label3 ], [ %temp.1, %for.inc18 ]
  call void @llvm.dbg.value(metadata i32 %temp.0, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %k1.0, metadata !95, metadata !DIExpression()), !dbg !96
  %cmp5 = icmp slt i32 %k1.0, 3, !dbg !99
  br i1 %cmp5, label %for.body6, label %for.end20, !dbg !101

for.body6:                                        ; preds = %for.cond4
  br label %stencil_label4, !dbg !102

stencil_label4:                                   ; preds = %for.body6
  call void @llvm.dbg.value(metadata i32 0, metadata !103, metadata !DIExpression()), !dbg !104
  br label %for.cond7, !dbg !105

for.cond7:                                        ; preds = %for.inc, %stencil_label4
  %k2.0 = phi i32 [ 0, %stencil_label4 ], [ %inc, %for.inc ]
  %temp.1 = phi i32 [ %temp.0, %stencil_label4 ], [ %add17, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %temp.1, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %k2.0, metadata !103, metadata !DIExpression()), !dbg !104
  %cmp8 = icmp slt i32 %k2.0, 3, !dbg !108
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !110

for.body9:                                        ; preds = %for.cond7
  %mul = mul nsw i32 %k1.0, 3, !dbg !111
  %add = add nsw i32 %mul, %k2.0, !dbg !113
  %idxprom = sext i32 %add to i64, !dbg !114
  %arrayidx = getelementptr inbounds i32, i32* %xfilter, i64 %idxprom, !dbg !114
  %1 = load i32, i32* %arrayidx, align 4, !dbg !114
  %add10 = add nsw i32 %r.0, %k1.0, !dbg !115
  %mul11 = mul nsw i32 %add10, 64, !dbg !116
  %add12 = add nsw i32 %mul11, %c.0, !dbg !117
  %add13 = add nsw i32 %add12, %k2.0, !dbg !118
  %idxprom14 = sext i32 %add13 to i64, !dbg !119
  %arrayidx15 = getelementptr inbounds i32, i32* %xorig, i64 %idxprom14, !dbg !119
  %2 = load i32, i32* %arrayidx15, align 4, !dbg !119
  %mul16 = mul nsw i32 %1, %2, !dbg !120
  %add17 = add nsw i32 %temp.1, %mul16, !dbg !121
  call void @llvm.dbg.value(metadata i32 %add17, metadata !91, metadata !DIExpression()), !dbg !92
  br label %for.inc, !dbg !122

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k2.0, 1, !dbg !123
  call void @llvm.dbg.value(metadata i32 %inc, metadata !103, metadata !DIExpression()), !dbg !104
  br label %for.cond7, !dbg !124, !llvm.loop !125

for.end:                                          ; preds = %for.cond7
  br label %for.inc18, !dbg !128

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %k1.0, 1, !dbg !129
  call void @llvm.dbg.value(metadata i32 %inc19, metadata !95, metadata !DIExpression()), !dbg !96
  br label %for.cond4, !dbg !130, !llvm.loop !131

for.end20:                                        ; preds = %for.cond4
  %mul21 = mul nsw i32 %r.0, 64, !dbg !134
  %add22 = add nsw i32 %mul21, %c.0, !dbg !135
  %idxprom23 = sext i32 %add22 to i64, !dbg !136
  %arrayidx24 = getelementptr inbounds [8192 x i32], [8192 x i32]* %sol, i64 0, i64 %idxprom23, !dbg !136
  store i32 %temp.0, i32* %arrayidx24, align 4, !dbg !137
  br label %for.inc25, !dbg !138

for.inc25:                                        ; preds = %for.end20
  %inc26 = add nsw i32 %c.0, 1, !dbg !139
  call void @llvm.dbg.value(metadata i32 %inc26, metadata !83, metadata !DIExpression()), !dbg !84
  br label %for.cond1, !dbg !140, !llvm.loop !141

for.end27:                                        ; preds = %for.cond1
  br label %for.inc28, !dbg !144

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %r.0, 1, !dbg !145
  call void @llvm.dbg.value(metadata i32 %inc29, metadata !74, metadata !DIExpression()), !dbg !75
  br label %for.cond, !dbg !146, !llvm.loop !147

for.end30:                                        ; preds = %for.cond
  %mul31 = mul nsw i32 %size, 64, !dbg !150
  %arraydecay = getelementptr inbounds [8192 x i32], [8192 x i32]* %sol, i32 0, i32 0, !dbg !151
  call void @stream_write(i32 %mul31, i32* %xsol, i32* %arraydecay), !dbg !152
  %3 = bitcast [8192 x i32]* %sol to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 32768, i8* %3) #9, !dbg !153
  ret void, !dbg !153
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="262144" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="288" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/stencil2d/stencil2d_prj/solution/.autopilot/db/stencil2d.pp.0.c", directory: "/workspace/examples/stencil2d")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "stream_write", scope: !8, file: !8, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "stencil2d.c", directory: "/workspace/examples/stencil2d")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !17, !17}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 9, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 26, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/stencil2d")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 42, baseType: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/stencil2d")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20}
!20 = !{!"fpga.inline", !"user", !21}
!21 = !DILocation(line: 11, column: 9, scope: !7)
!22 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 10, type: !11)
!23 = !DILocation(line: 10, column: 23, scope: !7)
!24 = !DILocalVariable(name: "array1", arg: 2, scope: !7, file: !8, line: 10, type: !17)
!25 = !DILocation(line: 10, column: 34, scope: !7)
!26 = !DILocalVariable(name: "array2", arg: 3, scope: !7, file: !8, line: 10, type: !17)
!27 = !DILocation(line: 10, column: 47, scope: !7)
!28 = !DILocation(line: 10, column: 55, scope: !7)
!29 = !DILocalVariable(name: "i", scope: !30, file: !8, line: 12, type: !18)
!30 = distinct !DILexicalBlock(scope: !7, file: !8, line: 12, column: 19)
!31 = !DILocation(line: 12, column: 28, scope: !30)
!32 = !DILocation(line: 12, column: 24, scope: !30)
!33 = !DILocation(line: 12, column: 37, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !8, line: 12, column: 19)
!35 = !DILocation(line: 12, column: 19, scope: !30)
!36 = !DILocation(line: 13, column: 17, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !8, line: 12, column: 50)
!38 = !DILocation(line: 13, column: 5, scope: !37)
!39 = !DILocation(line: 13, column: 15, scope: !37)
!40 = !DILocation(line: 14, column: 3, scope: !37)
!41 = !DILocation(line: 12, column: 46, scope: !34)
!42 = !DILocation(line: 12, column: 19, scope: !34)
!43 = distinct !{!43, !35, !44, !45}
!44 = !DILocation(line: 14, column: 3, scope: !30)
!45 = !{!"llvm.loop.name", !"VITIS_LOOP_12_1"}
!46 = !DILocation(line: 15, column: 1, scope: !7)
!47 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 17, type: !48, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !18, !17, !17, !17}
!50 = !{!51}
!51 = !{!"fpga.top", !"user", !52}
!52 = !DILocation(line: 17, column: 16, scope: !47)
!53 = !DILocalVariable(name: "size", arg: 1, scope: !47, file: !8, line: 17, type: !18)
!54 = !DILocation(line: 17, column: 60, scope: !47)
!55 = !DILocalVariable(name: "xorig", arg: 2, scope: !47, file: !8, line: 17, type: !17)
!56 = !DILocation(line: 17, column: 70, scope: !47)
!57 = !DILocalVariable(name: "xsol", arg: 3, scope: !47, file: !8, line: 18, type: !17)
!58 = !DILocation(line: 18, column: 18, scope: !47)
!59 = !DILocalVariable(name: "xfilter", arg: 4, scope: !47, file: !8, line: 18, type: !17)
!60 = !DILocation(line: 18, column: 38, scope: !47)
!61 = !DILocation(line: 19, column: 9, scope: !47)
!62 = !DILocation(line: 20, column: 9, scope: !47)
!63 = !DILocation(line: 21, column: 9, scope: !47)
!64 = !DILocation(line: 22, column: 9, scope: !47)
!65 = !DILocation(line: 23, column: 9, scope: !47)
!66 = !DILocalVariable(name: "i", scope: !47, file: !8, line: 24, type: !18)
!67 = !DILocation(line: 24, column: 6, scope: !47)
!68 = !DILocation(line: 27, column: 3, scope: !47)
!69 = !DILocalVariable(name: "sol", scope: !47, file: !8, line: 27, type: !70)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 262144, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 8192)
!73 = !DILocation(line: 27, column: 7, scope: !47)
!74 = !DILocalVariable(name: "r", scope: !47, file: !8, line: 24, type: !18)
!75 = !DILocation(line: 24, column: 9, scope: !47)
!76 = !DILocation(line: 30, column: 8, scope: !77)
!77 = distinct !DILexicalBlock(scope: !47, file: !8, line: 30, column: 3)
!78 = !DILocation(line: 30, column: 24, scope: !79)
!79 = distinct !DILexicalBlock(scope: !77, file: !8, line: 30, column: 3)
!80 = !DILocation(line: 30, column: 17, scope: !79)
!81 = !DILocation(line: 30, column: 3, scope: !77)
!82 = !DILocation(line: 30, column: 34, scope: !79)
!83 = !DILocalVariable(name: "c", scope: !47, file: !8, line: 24, type: !18)
!84 = !DILocation(line: 24, column: 12, scope: !47)
!85 = !DILocation(line: 32, column: 10, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !8, line: 32, column: 5)
!87 = distinct !DILexicalBlock(scope: !79, file: !8, line: 30, column: 34)
!88 = !DILocation(line: 32, column: 19, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !8, line: 32, column: 5)
!90 = !DILocation(line: 32, column: 5, scope: !86)
!91 = !DILocalVariable(name: "temp", scope: !47, file: !8, line: 25, type: !18)
!92 = !DILocation(line: 25, column: 7, scope: !47)
!93 = !DILocation(line: 33, column: 7, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !8, line: 32, column: 34)
!95 = !DILocalVariable(name: "k1", scope: !47, file: !8, line: 24, type: !18)
!96 = !DILocation(line: 24, column: 15, scope: !47)
!97 = !DILocation(line: 35, column: 12, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !8, line: 35, column: 7)
!99 = !DILocation(line: 35, column: 23, scope: !100)
!100 = distinct !DILexicalBlock(scope: !98, file: !8, line: 35, column: 7)
!101 = !DILocation(line: 35, column: 7, scope: !98)
!102 = !DILocation(line: 35, column: 34, scope: !100)
!103 = !DILocalVariable(name: "k2", scope: !47, file: !8, line: 24, type: !18)
!104 = !DILocation(line: 24, column: 19, scope: !47)
!105 = !DILocation(line: 37, column: 14, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !8, line: 37, column: 9)
!107 = distinct !DILexicalBlock(scope: !100, file: !8, line: 35, column: 34)
!108 = !DILocation(line: 37, column: 25, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !8, line: 37, column: 9)
!110 = !DILocation(line: 37, column: 9, scope: !106)
!111 = !DILocation(line: 38, column: 30, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !8, line: 37, column: 36)
!113 = !DILocation(line: 38, column: 34, scope: !112)
!114 = !DILocation(line: 38, column: 19, scope: !112)
!115 = !DILocation(line: 38, column: 51, scope: !112)
!116 = !DILocation(line: 38, column: 57, scope: !112)
!117 = !DILocation(line: 38, column: 62, scope: !112)
!118 = !DILocation(line: 38, column: 66, scope: !112)
!119 = !DILocation(line: 38, column: 42, scope: !112)
!120 = !DILocation(line: 38, column: 40, scope: !112)
!121 = !DILocation(line: 38, column: 16, scope: !112)
!122 = !DILocation(line: 39, column: 9, scope: !112)
!123 = !DILocation(line: 37, column: 32, scope: !109)
!124 = !DILocation(line: 37, column: 9, scope: !109)
!125 = distinct !{!125, !110, !126, !127}
!126 = !DILocation(line: 39, column: 9, scope: !106)
!127 = !{!"llvm.loop.name", !"stencil_label4"}
!128 = !DILocation(line: 40, column: 7, scope: !107)
!129 = !DILocation(line: 35, column: 30, scope: !100)
!130 = !DILocation(line: 35, column: 7, scope: !100)
!131 = distinct !{!131, !101, !132, !133}
!132 = !DILocation(line: 40, column: 7, scope: !98)
!133 = !{!"llvm.loop.name", !"stencil_label3"}
!134 = !DILocation(line: 41, column: 14, scope: !94)
!135 = !DILocation(line: 41, column: 20, scope: !94)
!136 = !DILocation(line: 41, column: 7, scope: !94)
!137 = !DILocation(line: 41, column: 25, scope: !94)
!138 = !DILocation(line: 42, column: 5, scope: !94)
!139 = !DILocation(line: 32, column: 30, scope: !89)
!140 = !DILocation(line: 32, column: 5, scope: !89)
!141 = distinct !{!141, !90, !142, !143}
!142 = !DILocation(line: 42, column: 5, scope: !86)
!143 = !{!"llvm.loop.name", !"stencil_label2"}
!144 = !DILocation(line: 43, column: 3, scope: !87)
!145 = !DILocation(line: 30, column: 30, scope: !79)
!146 = !DILocation(line: 30, column: 3, scope: !79)
!147 = distinct !{!147, !81, !148, !149}
!148 = !DILocation(line: 43, column: 3, scope: !77)
!149 = !{!"llvm.loop.name", !"stencil_label1"}
!150 = !DILocation(line: 45, column: 21, scope: !47)
!151 = !DILocation(line: 45, column: 33, scope: !47)
!152 = !DILocation(line: 45, column: 3, scope: !47)
!153 = !DILocation(line: 46, column: 1, scope: !47)
