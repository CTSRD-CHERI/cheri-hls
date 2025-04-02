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
  call void @llvm.dbg.declare(metadata !2, metadata !29, metadata !DIExpression()), !dbg !30
  %0 = bitcast [8192 x i32]* %sol to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 32768, i8* %0) #8, !dbg !31
  call void @llvm.dbg.declare(metadata [8192 x i32]* %sol, metadata !32, metadata !DIExpression()), !dbg !36
  %1 = bitcast [8192 x i32]* %sol to i8*, !dbg !36
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 32768, i1 false), !dbg !36
  br label %stencil_label1, !dbg !31

stencil_label1:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()), !dbg !38
  br label %for.cond, !dbg !39

for.cond:                                         ; preds = %for.inc29, %stencil_label1
  %r.0 = phi i32 [ 0, %stencil_label1 ], [ %inc30, %for.inc29 ]
  call void @llvm.dbg.value(metadata i32 %r.0, metadata !37, metadata !DIExpression()), !dbg !38
  %sub = sub nsw i32 %size, 2, !dbg !41
  %cmp = icmp slt i32 %r.0, %sub, !dbg !43
  br i1 %cmp, label %for.body, label %for.end31, !dbg !44

for.body:                                         ; preds = %for.cond
  br label %stencil_label2, !dbg !45

stencil_label2:                                   ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !46, metadata !DIExpression()), !dbg !47
  br label %for.cond1, !dbg !48

for.cond1:                                        ; preds = %for.inc26, %stencil_label2
  %c.0 = phi i32 [ 0, %stencil_label2 ], [ %inc27, %for.inc26 ]
  call void @llvm.dbg.value(metadata i32 %c.0, metadata !46, metadata !DIExpression()), !dbg !47
  %cmp2 = icmp slt i32 %c.0, 62, !dbg !51
  br i1 %cmp2, label %for.body3, label %for.end28, !dbg !53

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.value(metadata i32 0, metadata !54, metadata !DIExpression()), !dbg !55
  br label %stencil_label3, !dbg !56

stencil_label3:                                   ; preds = %for.body3
  call void @llvm.dbg.value(metadata i32 0, metadata !58, metadata !DIExpression()), !dbg !59
  br label %for.cond4, !dbg !60

for.cond4:                                        ; preds = %for.inc19, %stencil_label3
  %k1.0 = phi i32 [ 0, %stencil_label3 ], [ %inc20, %for.inc19 ]
  %temp.0 = phi i32 [ 0, %stencil_label3 ], [ %temp.1, %for.inc19 ]
  call void @llvm.dbg.value(metadata i32 %temp.0, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 %k1.0, metadata !58, metadata !DIExpression()), !dbg !59
  %cmp5 = icmp slt i32 %k1.0, 3, !dbg !62
  br i1 %cmp5, label %for.body6, label %for.end21, !dbg !64

for.body6:                                        ; preds = %for.cond4
  br label %stencil_label4, !dbg !65

stencil_label4:                                   ; preds = %for.body6
  call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !67
  br label %for.cond7, !dbg !68

for.cond7:                                        ; preds = %for.inc, %stencil_label4
  %k2.0 = phi i32 [ 0, %stencil_label4 ], [ %inc, %for.inc ]
  %temp.1 = phi i32 [ %temp.0, %stencil_label4 ], [ %add18, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %temp.1, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 %k2.0, metadata !66, metadata !DIExpression()), !dbg !67
  %cmp8 = icmp slt i32 %k2.0, 3, !dbg !71
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !73

for.body9:                                        ; preds = %for.cond7
  %mul10 = mul nsw i32 %k1.0, 3, !dbg !74
  %add = add nsw i32 %mul10, %k2.0, !dbg !76
  %idxprom = sext i32 %add to i64, !dbg !77
  %arrayidx = getelementptr inbounds i32, i32* %xfilter, i64 %idxprom, !dbg !77
  %2 = load i32, i32* %arrayidx, align 4, !dbg !77
  %add11 = add nsw i32 %r.0, %k1.0, !dbg !78
  %mul12 = mul nsw i32 %add11, 64, !dbg !79
  %add13 = add nsw i32 %mul12, %c.0, !dbg !80
  %add14 = add nsw i32 %add13, %k2.0, !dbg !81
  %idxprom15 = sext i32 %add14 to i64, !dbg !82
  %arrayidx16 = getelementptr inbounds i32, i32* %xorig, i64 %idxprom15, !dbg !82
  %3 = load i32, i32* %arrayidx16, align 4, !dbg !82
  %mul17 = mul nsw i32 %2, %3, !dbg !83
  %add18 = add nsw i32 %temp.1, %mul17, !dbg !84
  call void @llvm.dbg.value(metadata i32 %add18, metadata !54, metadata !DIExpression()), !dbg !55
  br label %for.inc, !dbg !85

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k2.0, 1, !dbg !86
  call void @llvm.dbg.value(metadata i32 %inc, metadata !66, metadata !DIExpression()), !dbg !67
  br label %for.cond7, !dbg !87, !llvm.loop !88

for.end:                                          ; preds = %for.cond7
  br label %for.inc19, !dbg !91

for.inc19:                                        ; preds = %for.end
  %inc20 = add nsw i32 %k1.0, 1, !dbg !92
  call void @llvm.dbg.value(metadata i32 %inc20, metadata !58, metadata !DIExpression()), !dbg !59
  br label %for.cond4, !dbg !93, !llvm.loop !94

for.end21:                                        ; preds = %for.cond4
  %mul22 = mul nsw i32 %r.0, 64, !dbg !97
  %add23 = add nsw i32 %mul22, %c.0, !dbg !98
  %idxprom24 = sext i32 %add23 to i64, !dbg !99
  %arrayidx25 = getelementptr inbounds [8192 x i32], [8192 x i32]* %sol, i64 0, i64 %idxprom24, !dbg !99
  store i32 %temp.0, i32* %arrayidx25, align 4, !dbg !100
  br label %for.inc26, !dbg !101

for.inc26:                                        ; preds = %for.end21
  %inc27 = add nsw i32 %c.0, 1, !dbg !102
  call void @llvm.dbg.value(metadata i32 %inc27, metadata !46, metadata !DIExpression()), !dbg !47
  br label %for.cond1, !dbg !103, !llvm.loop !104

for.end28:                                        ; preds = %for.cond1
  br label %for.inc29, !dbg !107

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %r.0, 1, !dbg !108
  call void @llvm.dbg.value(metadata i32 %inc30, metadata !37, metadata !DIExpression()), !dbg !38
  br label %for.cond, !dbg !109, !llvm.loop !110

for.end31:                                        ; preds = %for.cond
  br label %VITIS_LOOP_37_1, !dbg !111

VITIS_LOOP_37_1:                                  ; preds = %for.end31
  call void @llvm.dbg.value(metadata i32 0, metadata !113, metadata !DIExpression()), !dbg !114
  br label %for.cond32, !dbg !115

for.cond32:                                       ; preds = %for.inc40, %VITIS_LOOP_37_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_37_1 ], [ %inc41, %for.inc40 ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !113, metadata !DIExpression()), !dbg !114
  %mul33 = mul nsw i32 %size, 64, !dbg !117
  %cmp34 = icmp slt i32 %i.0, %mul33, !dbg !119
  br i1 %cmp34, label %for.body35, label %for.end42, !dbg !120

for.body35:                                       ; preds = %for.cond32
  %idxprom36 = sext i32 %i.0 to i64, !dbg !121
  %arrayidx37 = getelementptr inbounds [8192 x i32], [8192 x i32]* %sol, i64 0, i64 %idxprom36, !dbg !121
  %4 = load i32, i32* %arrayidx37, align 4, !dbg !121
  %idxprom38 = sext i32 %i.0 to i64, !dbg !122
  %arrayidx39 = getelementptr inbounds i32, i32* %xsol, i64 %idxprom38, !dbg !122
  store i32 %4, i32* %arrayidx39, align 4, !dbg !123
  br label %for.inc40, !dbg !122

for.inc40:                                        ; preds = %for.body35
  %inc41 = add nsw i32 %i.0, 1, !dbg !124
  call void @llvm.dbg.value(metadata i32 %inc41, metadata !113, metadata !DIExpression()), !dbg !114
  br label %for.cond32, !dbg !125, !llvm.loop !126

for.end42:                                        ; preds = %for.cond32
  %5 = bitcast [8192 x i32]* %sol to i8*, !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 32768, i8* %5) #8, !dbg !129
  ret void, !dbg !129
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
!29 = !DILocalVariable(name: "mul", scope: !7, file: !8, line: 17, type: !11)
!30 = !DILocation(line: 17, column: 13, scope: !7)
!31 = !DILocation(line: 19, column: 3, scope: !7)
!32 = !DILocalVariable(name: "sol", scope: !7, file: !8, line: 19, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 262144, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 8192)
!36 = !DILocation(line: 19, column: 7, scope: !7)
!37 = !DILocalVariable(name: "r", scope: !7, file: !8, line: 16, type: !11)
!38 = !DILocation(line: 16, column: 9, scope: !7)
!39 = !DILocation(line: 22, column: 8, scope: !40)
!40 = distinct !DILexicalBlock(scope: !7, file: !8, line: 22, column: 3)
!41 = !DILocation(line: 22, column: 24, scope: !42)
!42 = distinct !DILexicalBlock(scope: !40, file: !8, line: 22, column: 3)
!43 = !DILocation(line: 22, column: 17, scope: !42)
!44 = !DILocation(line: 22, column: 3, scope: !40)
!45 = !DILocation(line: 22, column: 34, scope: !42)
!46 = !DILocalVariable(name: "c", scope: !7, file: !8, line: 16, type: !11)
!47 = !DILocation(line: 16, column: 12, scope: !7)
!48 = !DILocation(line: 24, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !8, line: 24, column: 5)
!50 = distinct !DILexicalBlock(scope: !42, file: !8, line: 22, column: 34)
!51 = !DILocation(line: 24, column: 19, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !8, line: 24, column: 5)
!53 = !DILocation(line: 24, column: 5, scope: !49)
!54 = !DILocalVariable(name: "temp", scope: !7, file: !8, line: 17, type: !11)
!55 = !DILocation(line: 17, column: 7, scope: !7)
!56 = !DILocation(line: 25, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !52, file: !8, line: 24, column: 34)
!58 = !DILocalVariable(name: "k1", scope: !7, file: !8, line: 16, type: !11)
!59 = !DILocation(line: 16, column: 15, scope: !7)
!60 = !DILocation(line: 27, column: 12, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !8, line: 27, column: 7)
!62 = !DILocation(line: 27, column: 23, scope: !63)
!63 = distinct !DILexicalBlock(scope: !61, file: !8, line: 27, column: 7)
!64 = !DILocation(line: 27, column: 7, scope: !61)
!65 = !DILocation(line: 27, column: 34, scope: !63)
!66 = !DILocalVariable(name: "k2", scope: !7, file: !8, line: 16, type: !11)
!67 = !DILocation(line: 16, column: 19, scope: !7)
!68 = !DILocation(line: 29, column: 14, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !8, line: 29, column: 9)
!70 = distinct !DILexicalBlock(scope: !63, file: !8, line: 27, column: 34)
!71 = !DILocation(line: 29, column: 25, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !8, line: 29, column: 9)
!73 = !DILocation(line: 29, column: 9, scope: !69)
!74 = !DILocation(line: 30, column: 30, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !8, line: 29, column: 36)
!76 = !DILocation(line: 30, column: 34, scope: !75)
!77 = !DILocation(line: 30, column: 19, scope: !75)
!78 = !DILocation(line: 30, column: 51, scope: !75)
!79 = !DILocation(line: 30, column: 57, scope: !75)
!80 = !DILocation(line: 30, column: 62, scope: !75)
!81 = !DILocation(line: 30, column: 66, scope: !75)
!82 = !DILocation(line: 30, column: 42, scope: !75)
!83 = !DILocation(line: 30, column: 40, scope: !75)
!84 = !DILocation(line: 30, column: 16, scope: !75)
!85 = !DILocation(line: 31, column: 9, scope: !75)
!86 = !DILocation(line: 29, column: 32, scope: !72)
!87 = !DILocation(line: 29, column: 9, scope: !72)
!88 = distinct !{!88, !73, !89, !90}
!89 = !DILocation(line: 31, column: 9, scope: !69)
!90 = !{!"llvm.loop.name", !"stencil_label4"}
!91 = !DILocation(line: 32, column: 7, scope: !70)
!92 = !DILocation(line: 27, column: 30, scope: !63)
!93 = !DILocation(line: 27, column: 7, scope: !63)
!94 = distinct !{!94, !64, !95, !96}
!95 = !DILocation(line: 32, column: 7, scope: !61)
!96 = !{!"llvm.loop.name", !"stencil_label3"}
!97 = !DILocation(line: 33, column: 14, scope: !57)
!98 = !DILocation(line: 33, column: 20, scope: !57)
!99 = !DILocation(line: 33, column: 7, scope: !57)
!100 = !DILocation(line: 33, column: 25, scope: !57)
!101 = !DILocation(line: 34, column: 5, scope: !57)
!102 = !DILocation(line: 24, column: 30, scope: !52)
!103 = !DILocation(line: 24, column: 5, scope: !52)
!104 = distinct !{!104, !53, !105, !106}
!105 = !DILocation(line: 34, column: 5, scope: !49)
!106 = !{!"llvm.loop.name", !"stencil_label2"}
!107 = !DILocation(line: 35, column: 3, scope: !50)
!108 = !DILocation(line: 22, column: 30, scope: !42)
!109 = !DILocation(line: 22, column: 3, scope: !42)
!110 = distinct !{!110, !44, !111, !112}
!111 = !DILocation(line: 35, column: 3, scope: !40)
!112 = !{!"llvm.loop.name", !"stencil_label1"}
!113 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 16, type: !11)
!114 = !DILocation(line: 16, column: 6, scope: !7)
!115 = !DILocation(line: 37, column: 25, scope: !116)
!116 = distinct !DILexicalBlock(scope: !7, file: !8, line: 37, column: 20)
!117 = !DILocation(line: 37, column: 41, scope: !118)
!118 = distinct !DILexicalBlock(scope: !116, file: !8, line: 37, column: 20)
!119 = !DILocation(line: 37, column: 34, scope: !118)
!120 = !DILocation(line: 37, column: 20, scope: !116)
!121 = !DILocation(line: 38, column: 15, scope: !118)
!122 = !DILocation(line: 38, column: 5, scope: !118)
!123 = !DILocation(line: 38, column: 13, scope: !118)
!124 = !DILocation(line: 37, column: 48, scope: !118)
!125 = !DILocation(line: 37, column: 20, scope: !118)
!126 = distinct !{!126, !120, !127, !128}
!127 = !DILocation(line: 38, column: 20, scope: !116)
!128 = !{!"llvm.loop.name", !"VITIS_LOOP_37_1"}
!129 = !DILocation(line: 39, column: 1, scope: !7)
