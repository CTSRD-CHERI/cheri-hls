; ModuleID = '/workspace/examples/vect_mult_base/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @_Z4multiPiS_S_(i32 %size, i32* "fpga.decayed.dim.hint"="10" %a, i32* "fpga.decayed.dim.hint"="10" %b, i32* "fpga.decayed.dim.hint"="10" %c) #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.value(metadata i32* %a, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i32* %b, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32* %c, metadata !19, metadata !DIExpression()), !dbg !20
  br label %VITIS_LOOP_13_1, !dbg !21

VITIS_LOOP_13_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !22, metadata !DIExpression()), !dbg !24
  br label %for.cond, !dbg !25

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_13_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_13_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !22, metadata !DIExpression()), !dbg !24
  %cmp = icmp slt i32 %i.0, %size, !dbg !26
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !28

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !29
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %idxprom, !dbg !29
  %0 = load i32, i32* %arrayidx, align 4, !dbg !29
  %idxprom1 = sext i32 %i.0 to i64, !dbg !31
  %arrayidx2 = getelementptr inbounds i32, i32* %b, i64 %idxprom1, !dbg !31
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !31
  %mul = mul nsw i32 %0, %1, !dbg !32
  %idxprom3 = sext i32 %i.0 to i64, !dbg !33
  %arrayidx4 = getelementptr inbounds i32, i32* %c, i64 %idxprom3, !dbg !33
  store i32 %mul, i32* %arrayidx4, align 4, !dbg !34
  br label %for.inc, !dbg !35

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !36
  call void @llvm.dbg.value(metadata i32 %inc, metadata !22, metadata !DIExpression()), !dbg !24
  br label %for.cond, !dbg !37, !llvm.loop !38

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
define void @_Z7hls_topiPiS_S_(i32 %size, i32* "fpga.decayed.dim.hint"="10" %a, i32* "fpga.decayed.dim.hint"="10" %b, i32* "fpga.decayed.dim.hint"="10" %c) #3 !dbg !44 !fpga.function.pragma !45 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata i32* %a, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i32* %b, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32* %c, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %a, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !56
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %b, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !57
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %c, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !58
  call void @llvm.sideeffect() #6 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !59
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !60
  call void @_Z4multiPiS_S_(i32 %size, i32* %a, i32* %b, i32* %c), !dbg !61
  ret void, !dbg !62
}

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="mult" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "fpga.demangled.name"="hls_top" "fpga.top.func"="hls_top" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inaccessiblememonly nounwind }
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="320" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/vect_mult_base/vect_mult_base_prj/solution/.autopilot/db/vect_mult_base.pp.0.cpp", directory: "/workspace/examples/vect_mult_base")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "mult", linkageName: "_Z4multiPiS_S_", scope: !8, file: !8, line: 12, type: !9, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "vect_mult_base.cpp", directory: "/workspace/examples/vect_mult_base")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !12, !12, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !DILocalVariable(name: "size", arg: 1, scope: !7, file: !8, line: 12, type: !11)
!14 = !DILocation(line: 12, column: 15, scope: !7)
!15 = !DILocalVariable(name: "a", arg: 2, scope: !7, file: !8, line: 12, type: !12)
!16 = !DILocation(line: 12, column: 25, scope: !7)
!17 = !DILocalVariable(name: "b", arg: 3, scope: !7, file: !8, line: 12, type: !12)
!18 = !DILocation(line: 12, column: 36, scope: !7)
!19 = !DILocalVariable(name: "c", arg: 4, scope: !7, file: !8, line: 12, type: !12)
!20 = !DILocation(line: 12, column: 47, scope: !7)
!21 = !DILocation(line: 12, column: 54, scope: !7)
!22 = !DILocalVariable(name: "i", scope: !23, file: !8, line: 13, type: !11)
!23 = distinct !DILexicalBlock(scope: !7, file: !8, line: 13, column: 20)
!24 = !DILocation(line: 13, column: 29, scope: !23)
!25 = !DILocation(line: 13, column: 25, scope: !23)
!26 = !DILocation(line: 13, column: 38, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !8, line: 13, column: 20)
!28 = !DILocation(line: 13, column: 20, scope: !23)
!29 = !DILocation(line: 15, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !8, line: 14, column: 1)
!31 = !DILocation(line: 15, column: 16, scope: !30)
!32 = !DILocation(line: 15, column: 14, scope: !30)
!33 = !DILocation(line: 15, column: 2, scope: !30)
!34 = !DILocation(line: 15, column: 7, scope: !30)
!35 = !DILocation(line: 15, column: 19, scope: !30)
!36 = !DILocation(line: 13, column: 47, scope: !27)
!37 = !DILocation(line: 13, column: 20, scope: !27)
!38 = distinct !{!38, !28, !39, !40, !42}
!39 = !DILocation(line: 15, column: 19, scope: !23)
!40 = !{!"llvm.loop.pipeline.enable", i32 -1, i1 false, i8 -1, !"user", !41}
!41 = !DILocation(line: 14, column: 9, scope: !23)
!42 = !{!"llvm.loop.name", !"VITIS_LOOP_13_1"}
!43 = !DILocation(line: 16, column: 3, scope: !7)
!44 = distinct !DISubprogram(name: "hls_top", linkageName: "_Z7hls_topiPiS_S_", scope: !8, file: !8, line: 19, type: !9, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!45 = !{!46}
!46 = !{!"fpga.top", !"user", !47}
!47 = !DILocation(line: 19, column: 16, scope: !44)
!48 = !DILocalVariable(name: "size", arg: 1, scope: !44, file: !8, line: 19, type: !11)
!49 = !DILocation(line: 19, column: 60, scope: !44)
!50 = !DILocalVariable(name: "a", arg: 2, scope: !44, file: !8, line: 19, type: !12)
!51 = !DILocation(line: 19, column: 70, scope: !44)
!52 = !DILocalVariable(name: "b", arg: 3, scope: !44, file: !8, line: 19, type: !12)
!53 = !DILocation(line: 19, column: 81, scope: !44)
!54 = !DILocalVariable(name: "c", arg: 4, scope: !44, file: !8, line: 19, type: !12)
!55 = !DILocation(line: 19, column: 92, scope: !44)
!56 = !DILocation(line: 20, column: 9, scope: !44)
!57 = !DILocation(line: 21, column: 9, scope: !44)
!58 = !DILocation(line: 22, column: 9, scope: !44)
!59 = !DILocation(line: 23, column: 9, scope: !44)
!60 = !DILocation(line: 24, column: 9, scope: !44)
!61 = !DILocation(line: 25, column: 2, scope: !44)
!62 = !DILocation(line: 26, column: 3, scope: !44)
