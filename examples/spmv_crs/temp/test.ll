; ModuleID = '/workspace/examples/spmv_crs/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @hls_top(i32 %size, i32* "fpga.decayed.dim.hint"="1666" %xval, i32* "fpga.decayed.dim.hint"="1666" %xcols, i32* "fpga.decayed.dim.hint"="495" %xrowDelimiters, i32* "fpga.decayed.dim.hint"="494" %xvec, i32* "fpga.decayed.dim.hint"="494" %xout) #0 !dbg !9 !fpga.function.pragma !15 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32* %xval, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32* %xcols, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32* %xrowDelimiters, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32* %xvec, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32* %xout, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xval, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !30
  call void @llvm.sideeffect() #4 [ "xlx_m_axi"(i32* %xcols, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !31
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xrowDelimiters, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !32
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xvec, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !33
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xout, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !34
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !35
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !36
  %arrayidx = getelementptr inbounds i32, i32* %xrowDelimiters, i64 0, !dbg !37
  %0 = load i32, i32* %arrayidx, align 4, !dbg !37
  call void @llvm.dbg.value(metadata i32 %0, metadata !38, metadata !DIExpression()), !dbg !39
  br label %spmv_1, !dbg !40

spmv_1:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()), !dbg !42
  br label %for.cond, !dbg !43

for.cond:                                         ; preds = %for.inc14, %spmv_1
  %i.0 = phi i32 [ 0, %spmv_1 ], [ %inc15, %for.inc14 ]
  %temp.0 = phi i32 [ %0, %spmv_1 ], [ %1, %for.inc14 ]
  call void @llvm.dbg.value(metadata i32 %temp.0, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !41, metadata !DIExpression()), !dbg !42
  %cmp = icmp slt i32 %i.0, %size, !dbg !45
  br i1 %cmp, label %for.body, label %for.end16, !dbg !47

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata i32 0, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i32 %temp.0, metadata !52, metadata !DIExpression()), !dbg !54
  %add = add nsw i32 %i.0, 1, !dbg !55
  %idxprom = sext i32 %add to i64, !dbg !56
  %arrayidx1 = getelementptr inbounds i32, i32* %xrowDelimiters, i64 %idxprom, !dbg !56
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !56
  call void @llvm.dbg.value(metadata i32 %1, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 %1, metadata !38, metadata !DIExpression()), !dbg !39
  br label %spmv_2, !dbg !59

spmv_2:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %temp.0, metadata !60, metadata !DIExpression()), !dbg !61
  br label %for.cond2, !dbg !62

for.cond2:                                        ; preds = %for.inc, %spmv_2
  %j.0 = phi i32 [ %temp.0, %spmv_2 ], [ %inc, %for.inc ]
  %sum.0 = phi i32 [ 0, %spmv_2 ], [ %add11, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %sum.0, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !60, metadata !DIExpression()), !dbg !61
  %cmp3 = icmp slt i32 %j.0, %1, !dbg !64
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !66

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %j.0 to i64, !dbg !67
  %arrayidx6 = getelementptr inbounds i32, i32* %xval, i64 %idxprom5, !dbg !67
  %2 = load i32, i32* %arrayidx6, align 4, !dbg !67
  %idxprom7 = sext i32 %j.0 to i64, !dbg !69
  %arrayidx8 = getelementptr inbounds i32, i32* %xcols, i64 %idxprom7, !dbg !69
  %3 = load i32, i32* %arrayidx8, align 4, !dbg !69
  %idxprom9 = sext i32 %3 to i64, !dbg !70
  %arrayidx10 = getelementptr inbounds i32, i32* %xvec, i64 %idxprom9, !dbg !70
  %4 = load i32, i32* %arrayidx10, align 4, !dbg !70
  %mul = mul nsw i32 %2, %4, !dbg !71
  call void @llvm.dbg.value(metadata i32 %mul, metadata !50, metadata !DIExpression()), !dbg !51
  %add11 = add nsw i32 %sum.0, %mul, !dbg !72
  call void @llvm.dbg.value(metadata i32 %add11, metadata !48, metadata !DIExpression()), !dbg !49
  br label %for.inc, !dbg !73

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !dbg !74
  call void @llvm.dbg.value(metadata i32 %inc, metadata !60, metadata !DIExpression()), !dbg !61
  br label %for.cond2, !dbg !75, !llvm.loop !76

for.end:                                          ; preds = %for.cond2
  %idxprom12 = sext i32 %i.0 to i64, !dbg !79
  %arrayidx13 = getelementptr inbounds i32, i32* %xout, i64 %idxprom12, !dbg !79
  store i32 %sum.0, i32* %arrayidx13, align 4, !dbg !80
  br label %for.inc14, !dbg !81

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.0, 1, !dbg !82
  call void @llvm.dbg.value(metadata i32 %inc15, metadata !41, metadata !DIExpression()), !dbg !42
  br label %for.cond, !dbg !83, !llvm.loop !84

for.end16:                                        ; preds = %for.cond
  ret void, !dbg !87
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
attributes #4 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="53312" "xlx.source"="user" }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="15840" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="15808" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/workspace/examples/spmv_crs/spmv_crs_prj/solution/.autopilot/db/spmv_crs.pp.0.c", directory: "/workspace/examples/spmv_crs")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!"clang version 7.0.0 "}
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = distinct !DISubprogram(name: "hls_top", scope: !10, file: !10, line: 14, type: !11, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!10 = !DIFile(filename: "spmv_crs.c", directory: "/workspace/examples/spmv_crs")
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !14, !14, !14, !14, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!15 = !{!16}
!16 = !{!"fpga.top", !"user", !17}
!17 = !DILocation(line: 14, column: 16, scope: !9)
!18 = !DILocalVariable(name: "size", arg: 1, scope: !9, file: !10, line: 14, type: !13)
!19 = !DILocation(line: 14, column: 60, scope: !9)
!20 = !DILocalVariable(name: "xval", arg: 2, scope: !9, file: !10, line: 14, type: !14)
!21 = !DILocation(line: 14, column: 70, scope: !9)
!22 = !DILocalVariable(name: "xcols", arg: 3, scope: !9, file: !10, line: 14, type: !14)
!23 = !DILocation(line: 14, column: 86, scope: !9)
!24 = !DILocalVariable(name: "xrowDelimiters", arg: 4, scope: !9, file: !10, line: 15, type: !14)
!25 = !DILocation(line: 15, column: 18, scope: !9)
!26 = !DILocalVariable(name: "xvec", arg: 5, scope: !9, file: !10, line: 15, type: !14)
!27 = !DILocation(line: 15, column: 47, scope: !9)
!28 = !DILocalVariable(name: "xout", arg: 6, scope: !9, file: !10, line: 15, type: !14)
!29 = !DILocation(line: 15, column: 62, scope: !9)
!30 = !DILocation(line: 16, column: 9, scope: !9)
!31 = !DILocation(line: 17, column: 9, scope: !9)
!32 = !DILocation(line: 18, column: 9, scope: !9)
!33 = !DILocation(line: 19, column: 9, scope: !9)
!34 = !DILocation(line: 20, column: 9, scope: !9)
!35 = !DILocation(line: 21, column: 9, scope: !9)
!36 = !DILocation(line: 22, column: 9, scope: !9)
!37 = !DILocation(line: 32, column: 14, scope: !9)
!38 = !DILocalVariable(name: "temp", scope: !9, file: !10, line: 32, type: !13)
!39 = !DILocation(line: 32, column: 7, scope: !9)
!40 = !DILocation(line: 32, column: 3, scope: !9)
!41 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 23, type: !13)
!42 = !DILocation(line: 23, column: 6, scope: !9)
!43 = !DILocation(line: 34, column: 8, scope: !44)
!44 = distinct !DILexicalBlock(scope: !9, file: !10, line: 34, column: 3)
!45 = !DILocation(line: 34, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !44, file: !10, line: 34, column: 3)
!47 = !DILocation(line: 34, column: 3, scope: !44)
!48 = !DILocalVariable(name: "sum", scope: !9, file: !10, line: 24, type: !13)
!49 = !DILocation(line: 24, column: 7, scope: !9)
!50 = !DILocalVariable(name: "Si", scope: !9, file: !10, line: 24, type: !13)
!51 = !DILocation(line: 24, column: 12, scope: !9)
!52 = !DILocalVariable(name: "tmp_begin", scope: !53, file: !10, line: 37, type: !13)
!53 = distinct !DILexicalBlock(scope: !46, file: !10, line: 34, column: 30)
!54 = !DILocation(line: 37, column: 9, scope: !53)
!55 = !DILocation(line: 38, column: 36, scope: !53)
!56 = !DILocation(line: 38, column: 19, scope: !53)
!57 = !DILocalVariable(name: "tmp_end", scope: !53, file: !10, line: 38, type: !13)
!58 = !DILocation(line: 38, column: 9, scope: !53)
!59 = !DILocation(line: 39, column: 5, scope: !53)
!60 = !DILocalVariable(name: "j", scope: !9, file: !10, line: 23, type: !13)
!61 = !DILocation(line: 23, column: 9, scope: !9)
!62 = !DILocation(line: 41, column: 10, scope: !63)
!63 = distinct !DILexicalBlock(scope: !53, file: !10, line: 41, column: 5)
!64 = !DILocation(line: 41, column: 27, scope: !65)
!65 = distinct !DILexicalBlock(scope: !63, file: !10, line: 41, column: 5)
!66 = !DILocation(line: 41, column: 5, scope: !63)
!67 = !DILocation(line: 42, column: 12, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !10, line: 41, column: 43)
!69 = !DILocation(line: 42, column: 27, scope: !68)
!70 = !DILocation(line: 42, column: 22, scope: !68)
!71 = !DILocation(line: 42, column: 20, scope: !68)
!72 = !DILocation(line: 43, column: 17, scope: !68)
!73 = !DILocation(line: 44, column: 5, scope: !68)
!74 = !DILocation(line: 41, column: 39, scope: !65)
!75 = !DILocation(line: 41, column: 5, scope: !65)
!76 = distinct !{!76, !66, !77, !78}
!77 = !DILocation(line: 44, column: 5, scope: !63)
!78 = !{!"llvm.loop.name", !"spmv_2"}
!79 = !DILocation(line: 45, column: 5, scope: !53)
!80 = !DILocation(line: 45, column: 13, scope: !53)
!81 = !DILocation(line: 46, column: 3, scope: !53)
!82 = !DILocation(line: 34, column: 26, scope: !46)
!83 = !DILocation(line: 34, column: 3, scope: !46)
!84 = distinct !{!84, !47, !85, !86}
!85 = !DILocation(line: 46, column: 3, scope: !44)
!86 = !{!"llvm.loop.name", !"spmv_1"}
!87 = !DILocation(line: 47, column: 1, scope: !9)
