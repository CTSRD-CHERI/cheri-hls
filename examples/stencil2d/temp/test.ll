; ModuleID = '/workspace/examples/stencil2d/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @hls_top(i32 %size, i32* "fpga.decayed.dim.hint"="8192" %xorig, i32* "fpga.decayed.dim.hint"="8192" %xsol, i32* "fpga.decayed.dim.hint"="9" %xfilter) #0 !dbg !7 !fpga.function.pragma !13 {
entry:
  %sol = alloca [8192 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32* %xorig, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32* %xsol, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32* %xfilter, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xorig, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !24
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xsol, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !25
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xfilter, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !26
  call void @llvm.sideeffect() #6 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !27
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !28
  %0 = bitcast [8192 x i32]* %sol to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 32768, i8* %0) #8, !dbg !29
  call void @llvm.dbg.declare(metadata [8192 x i32]* %sol, metadata !30, metadata !DIExpression()), !dbg !34
  br label %stencil_label1, !dbg !29

stencil_label1:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()), !dbg !36
  br label %for.cond, !dbg !37

for.cond:                                         ; preds = %for.inc28, %stencil_label1
  %r.0 = phi i32 [ 0, %stencil_label1 ], [ %inc29, %for.inc28 ]
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !35, metadata !DIExpression()), !dbg !36
  %sub = sub nsw i32 %size, 2, !dbg !39
  %cmp = icmp slt i32 %r.0, %sub, !dbg !41
  br i1 %cmp, label %for.body, label %for.end30, !dbg !42

for.body:                                         ; preds = %for.cond
  br label %stencil_label2, !dbg !43

stencil_label2:                                   ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !44, metadata !DIExpression()), !dbg !45
  br label %for.cond1, !dbg !46

for.cond1:                                        ; preds = %for.inc25, %stencil_label2
  %c.0 = phi i32 [ 0, %stencil_label2 ], [ %inc26, %for.inc25 ]
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !44, metadata !DIExpression()), !dbg !45
  %cmp2 = icmp slt i32 %c.0, 62, !dbg !49
  br i1 %cmp2, label %for.body3, label %for.end27, !dbg !51

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !53
  br label %stencil_label3, !dbg !54

stencil_label3:                                   ; preds = %for.body3
  call void @llvm.dbg.value(metadata i32 0, metadata !56, metadata !DIExpression()), !dbg !57
  br label %for.cond4, !dbg !58

for.cond4:                                        ; preds = %for.inc18, %stencil_label3
  %k1.0 = phi i32 [ 0, %stencil_label3 ], [ %inc19, %for.inc18 ]
  %temp.0 = phi i32 [ 0, %stencil_label3 ], [ %temp.1, %for.inc18 ]
  call void @llvm.dbg.value(metadata i32 %temp.0, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %k1.0, metadata !56, metadata !DIExpression()), !dbg !57
  %cmp5 = icmp slt i32 %k1.0, 3, !dbg !60
  br i1 %cmp5, label %for.body6, label %for.end20, !dbg !62

for.body6:                                        ; preds = %for.cond4
  br label %stencil_label4, !dbg !63

stencil_label4:                                   ; preds = %for.body6
  call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !65
  br label %for.cond7, !dbg !66

for.cond7:                                        ; preds = %for.inc, %stencil_label4
  %k2.0 = phi i32 [ 0, %stencil_label4 ], [ %inc, %for.inc ]
  %temp.1 = phi i32 [ %temp.0, %stencil_label4 ], [ %add17, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %temp.1, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %k2.0, metadata !64, metadata !DIExpression()), !dbg !65
  %cmp8 = icmp slt i32 %k2.0, 3, !dbg !69
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !71

for.body9:                                        ; preds = %for.cond7
  %mul = mul nsw i32 %k1.0, 3, !dbg !72
  %add = add nsw i32 %mul, %k2.0, !dbg !74
  %idxprom = sext i32 %add to i64, !dbg !75
  %arrayidx = getelementptr inbounds i32, i32* %xfilter, i64 %idxprom, !dbg !75
  %1 = load i32, i32* %arrayidx, align 4, !dbg !75
  %add10 = add nsw i32 %r.0, %k1.0, !dbg !76
  %mul11 = mul nsw i32 %add10, 64, !dbg !77
  %add12 = add nsw i32 %mul11, %c.0, !dbg !78
  %add13 = add nsw i32 %add12, %k2.0, !dbg !79
  %idxprom14 = sext i32 %add13 to i64, !dbg !80
  %arrayidx15 = getelementptr inbounds i32, i32* %xorig, i64 %idxprom14, !dbg !80
  %2 = load i32, i32* %arrayidx15, align 4, !dbg !80
  %mul16 = mul nsw i32 %1, %2, !dbg !81
  %add17 = add nsw i32 %temp.1, %mul16, !dbg !82
  call void @llvm.dbg.value(metadata i32 %add17, metadata !52, metadata !DIExpression()), !dbg !53
  br label %for.inc, !dbg !83

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k2.0, 1, !dbg !84
  call void @llvm.dbg.value(metadata i32 %inc, metadata !64, metadata !DIExpression()), !dbg !65
  br label %for.cond7, !dbg !85, !llvm.loop !86

for.end:                                          ; preds = %for.cond7
  br label %for.inc18, !dbg !89

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %k1.0, 1, !dbg !90
  call void @llvm.dbg.value(metadata i32 %inc19, metadata !56, metadata !DIExpression()), !dbg !57
  br label %for.cond4, !dbg !91, !llvm.loop !92

for.end20:                                        ; preds = %for.cond4
  %mul21 = mul nsw i32 %r.0, 64, !dbg !95
  %add22 = add nsw i32 %mul21, %c.0, !dbg !96
  %idxprom23 = sext i32 %add22 to i64, !dbg !97
  %arrayidx24 = getelementptr inbounds [8192 x i32], [8192 x i32]* %sol, i64 0, i64 %idxprom23, !dbg !97
  store i32 %temp.0, i32* %arrayidx24, align 4, !dbg !98
  br label %for.inc25, !dbg !99

for.inc25:                                        ; preds = %for.end20
  %inc26 = add nsw i32 %c.0, 1, !dbg !100
  call void @llvm.dbg.value(metadata i32 %inc26, metadata !44, metadata !DIExpression()), !dbg !45
  br label %for.cond1, !dbg !101, !llvm.loop !102

for.end27:                                        ; preds = %for.cond1
  br label %for.inc28, !dbg !105

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %r.0, 1, !dbg !106
  call void @llvm.dbg.value(metadata i32 %inc29, metadata !35, metadata !DIExpression()), !dbg !36
  br label %for.cond, !dbg !107, !llvm.loop !108

for.end30:                                        ; preds = %for.cond
  br label %VITIS_LOOP_37_1, !dbg !109

VITIS_LOOP_37_1:                                  ; preds = %for.end30
  call void @llvm.dbg.value(metadata i32 0, metadata !111, metadata !DIExpression()), !dbg !112
  br label %for.cond31, !dbg !113

for.cond31:                                       ; preds = %for.inc39, %VITIS_LOOP_37_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_37_1 ], [ %inc40, %for.inc39 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !111, metadata !DIExpression()), !dbg !112
  %mul32 = mul nsw i32 %size, 64, !dbg !115
  %cmp33 = icmp slt i32 %i.0, %mul32, !dbg !117
  br i1 %cmp33, label %for.body34, label %for.end41, !dbg !118

for.body34:                                       ; preds = %for.cond31
  %idxprom35 = sext i32 %i.0 to i64, !dbg !119
  %arrayidx36 = getelementptr inbounds [8192 x i32], [8192 x i32]* %sol, i64 0, i64 %idxprom35, !dbg !119
  %3 = load i32, i32* %arrayidx36, align 4, !dbg !119
  %idxprom37 = sext i32 %i.0 to i64, !dbg !120
  %arrayidx38 = getelementptr inbounds i32, i32* %xsol, i64 %idxprom37, !dbg !120
  store i32 %3, i32* %arrayidx38, align 4, !dbg !121
  br label %for.inc39, !dbg !120

for.inc39:                                        ; preds = %for.body34
  %inc40 = add nsw i32 %i.0, 1, !dbg !122
  call void @llvm.dbg.value(metadata i32 %inc40, metadata !111, metadata !DIExpression()), !dbg !112
  br label %for.cond31, !dbg !123, !llvm.loop !124

for.end41:                                        ; preds = %for.cond31
  %4 = bitcast [8192 x i32]* %sol to i8*, !dbg !127
  call void @llvm.lifetime.end.p0i8(i64 32768, i8* %4) #8, !dbg !127
  ret void, !dbg !127
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
attributes #4 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="262144" "xlx.source"="user" }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="288" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #8 = { nounwind }

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
!7 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 9, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "stencil2d.c", directory: "/workspace/examples/stencil2d")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !12, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !{!14}
!14 = !{!"fpga.top", !"user", !15}
!15 = !DILocation(line: 9, column: 16, scope: !7)
!16 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 9, type: !11)
!17 = !DILocation(line: 9, column: 60, scope: !7)
!18 = !DILocalVariable(name: "xorig", arg: 2, scope: !7, file: !8, line: 9, type: !12)
!19 = !DILocation(line: 9, column: 70, scope: !7)
!20 = !DILocalVariable(name: "xsol", arg: 3, scope: !7, file: !8, line: 10, type: !12)
!21 = !DILocation(line: 10, column: 18, scope: !7)
!22 = !DILocalVariable(name: "xfilter", arg: 4, scope: !7, file: !8, line: 10, type: !12)
!23 = !DILocation(line: 10, column: 38, scope: !7)
!24 = !DILocation(line: 11, column: 9, scope: !7)
!25 = !DILocation(line: 12, column: 9, scope: !7)
!26 = !DILocation(line: 13, column: 9, scope: !7)
!27 = !DILocation(line: 14, column: 9, scope: !7)
!28 = !DILocation(line: 15, column: 9, scope: !7)
!29 = !DILocation(line: 19, column: 3, scope: !7)
!30 = !DILocalVariable(name: "sol", scope: !7, file: !8, line: 19, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 262144, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 8192)
!34 = !DILocation(line: 19, column: 7, scope: !7)
!35 = !DILocalVariable(name: "r", scope: !7, file: !8, line: 16, type: !11)
!36 = !DILocation(line: 16, column: 9, scope: !7)
!37 = !DILocation(line: 22, column: 8, scope: !38)
!38 = distinct !DILexicalBlock(scope: !7, file: !8, line: 22, column: 3)
!39 = !DILocation(line: 22, column: 24, scope: !40)
!40 = distinct !DILexicalBlock(scope: !38, file: !8, line: 22, column: 3)
!41 = !DILocation(line: 22, column: 17, scope: !40)
!42 = !DILocation(line: 22, column: 3, scope: !38)
!43 = !DILocation(line: 22, column: 34, scope: !40)
!44 = !DILocalVariable(name: "c", scope: !7, file: !8, line: 16, type: !11)
!45 = !DILocation(line: 16, column: 12, scope: !7)
!46 = !DILocation(line: 24, column: 10, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !8, line: 24, column: 5)
!48 = distinct !DILexicalBlock(scope: !40, file: !8, line: 22, column: 34)
!49 = !DILocation(line: 24, column: 19, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !8, line: 24, column: 5)
!51 = !DILocation(line: 24, column: 5, scope: !47)
!52 = !DILocalVariable(name: "temp", scope: !7, file: !8, line: 17, type: !11)
!53 = !DILocation(line: 17, column: 7, scope: !7)
!54 = !DILocation(line: 25, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !8, line: 24, column: 34)
!56 = !DILocalVariable(name: "k1", scope: !7, file: !8, line: 16, type: !11)
!57 = !DILocation(line: 16, column: 15, scope: !7)
!58 = !DILocation(line: 27, column: 12, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !8, line: 27, column: 7)
!60 = !DILocation(line: 27, column: 23, scope: !61)
!61 = distinct !DILexicalBlock(scope: !59, file: !8, line: 27, column: 7)
!62 = !DILocation(line: 27, column: 7, scope: !59)
!63 = !DILocation(line: 27, column: 34, scope: !61)
!64 = !DILocalVariable(name: "k2", scope: !7, file: !8, line: 16, type: !11)
!65 = !DILocation(line: 16, column: 19, scope: !7)
!66 = !DILocation(line: 29, column: 14, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !8, line: 29, column: 9)
!68 = distinct !DILexicalBlock(scope: !61, file: !8, line: 27, column: 34)
!69 = !DILocation(line: 29, column: 25, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !8, line: 29, column: 9)
!71 = !DILocation(line: 29, column: 9, scope: !67)
!72 = !DILocation(line: 30, column: 30, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !8, line: 29, column: 36)
!74 = !DILocation(line: 30, column: 34, scope: !73)
!75 = !DILocation(line: 30, column: 19, scope: !73)
!76 = !DILocation(line: 30, column: 51, scope: !73)
!77 = !DILocation(line: 30, column: 57, scope: !73)
!78 = !DILocation(line: 30, column: 62, scope: !73)
!79 = !DILocation(line: 30, column: 66, scope: !73)
!80 = !DILocation(line: 30, column: 42, scope: !73)
!81 = !DILocation(line: 30, column: 40, scope: !73)
!82 = !DILocation(line: 30, column: 16, scope: !73)
!83 = !DILocation(line: 31, column: 9, scope: !73)
!84 = !DILocation(line: 29, column: 32, scope: !70)
!85 = !DILocation(line: 29, column: 9, scope: !70)
!86 = distinct !{!86, !71, !87, !88}
!87 = !DILocation(line: 31, column: 9, scope: !67)
!88 = !{!"llvm.loop.name", !"stencil_label4"}
!89 = !DILocation(line: 32, column: 7, scope: !68)
!90 = !DILocation(line: 27, column: 30, scope: !61)
!91 = !DILocation(line: 27, column: 7, scope: !61)
!92 = distinct !{!92, !62, !93, !94}
!93 = !DILocation(line: 32, column: 7, scope: !59)
!94 = !{!"llvm.loop.name", !"stencil_label3"}
!95 = !DILocation(line: 33, column: 14, scope: !55)
!96 = !DILocation(line: 33, column: 20, scope: !55)
!97 = !DILocation(line: 33, column: 7, scope: !55)
!98 = !DILocation(line: 33, column: 25, scope: !55)
!99 = !DILocation(line: 34, column: 5, scope: !55)
!100 = !DILocation(line: 24, column: 30, scope: !50)
!101 = !DILocation(line: 24, column: 5, scope: !50)
!102 = distinct !{!102, !51, !103, !104}
!103 = !DILocation(line: 34, column: 5, scope: !47)
!104 = !{!"llvm.loop.name", !"stencil_label2"}
!105 = !DILocation(line: 35, column: 3, scope: !48)
!106 = !DILocation(line: 22, column: 30, scope: !40)
!107 = !DILocation(line: 22, column: 3, scope: !40)
!108 = distinct !{!108, !42, !109, !110}
!109 = !DILocation(line: 35, column: 3, scope: !38)
!110 = !{!"llvm.loop.name", !"stencil_label1"}
!111 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 16, type: !11)
!112 = !DILocation(line: 16, column: 6, scope: !7)
!113 = !DILocation(line: 37, column: 25, scope: !114)
!114 = distinct !DILexicalBlock(scope: !7, file: !8, line: 37, column: 20)
!115 = !DILocation(line: 37, column: 41, scope: !116)
!116 = distinct !DILexicalBlock(scope: !114, file: !8, line: 37, column: 20)
!117 = !DILocation(line: 37, column: 34, scope: !116)
!118 = !DILocation(line: 37, column: 20, scope: !114)
!119 = !DILocation(line: 38, column: 15, scope: !116)
!120 = !DILocation(line: 38, column: 5, scope: !116)
!121 = !DILocation(line: 38, column: 13, scope: !116)
!122 = !DILocation(line: 37, column: 48, scope: !116)
!123 = !DILocation(line: 37, column: 20, scope: !116)
!124 = distinct !{!124, !118, !125, !126}
!125 = !DILocation(line: 38, column: 20, scope: !114)
!126 = !{!"llvm.loop.name", !"VITIS_LOOP_37_1"}
!127 = !DILocation(line: 39, column: 1, scope: !7)
