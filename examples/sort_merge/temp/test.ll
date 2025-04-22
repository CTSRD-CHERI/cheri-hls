; ModuleID = '/workspace/examples/sort_merge/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @merge(i32* "fpga.decayed.dim.hint"="2048" %a, i32 %start, i32 %m, i32 %stop) #0 !dbg !7 {
entry:
  %temp = alloca [2048 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %a, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.value(metadata i32 %start, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i32 %m, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32 %stop, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = bitcast [2048 x i32]* %temp to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* %0) #5, !dbg !21
  call void @llvm.dbg.declare(metadata [2048 x i32]* %temp, metadata !22, metadata !DIExpression()), !dbg !26
  br label %merge_label1, !dbg !27

merge_label1:                                     ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %start, metadata !28, metadata !DIExpression()), !dbg !29
  br label %for.cond, !dbg !30

for.cond:                                         ; preds = %for.inc, %merge_label1
  %i.0 = phi i32 [ %start, %merge_label1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !28, metadata !DIExpression()), !dbg !29
  %cmp = icmp sle i32 %i.0, %m, !dbg !32
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !35
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %idxprom, !dbg !35
  %1 = load i32, i32* %arrayidx, align 4, !dbg !35
  %idxprom1 = sext i32 %i.0 to i64, !dbg !37
  %arrayidx2 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %idxprom1, !dbg !37
  store i32 %1, i32* %arrayidx2, align 4, !dbg !38
  br label %for.inc, !dbg !39

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !40
  call void @llvm.dbg.value(metadata i32 %inc, metadata !28, metadata !DIExpression()), !dbg !29
  br label %for.cond, !dbg !41, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  br label %merge_label2, !dbg !43

merge_label2:                                     ; preds = %for.end
  %add = add nsw i32 %m, 1, !dbg !45
  call void @llvm.dbg.value(metadata i32 %add, metadata !47, metadata !DIExpression()), !dbg !48
  br label %for.cond3, !dbg !49

for.cond3:                                        ; preds = %for.inc12, %merge_label2
  %j.0 = phi i32 [ %add, %merge_label2 ], [ %inc13, %for.inc12 ]
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !47, metadata !DIExpression()), !dbg !48
  %cmp4 = icmp sle i32 %j.0, %stop, !dbg !50
  br i1 %cmp4, label %for.body5, label %for.end14, !dbg !52

for.body5:                                        ; preds = %for.cond3
  %idxprom6 = sext i32 %j.0 to i64, !dbg !53
  %arrayidx7 = getelementptr inbounds i32, i32* %a, i64 %idxprom6, !dbg !53
  %2 = load i32, i32* %arrayidx7, align 4, !dbg !53
  %add8 = add nsw i32 %m, 1, !dbg !55
  %add9 = add nsw i32 %add8, %stop, !dbg !56
  %sub = sub nsw i32 %add9, %j.0, !dbg !57
  %idxprom10 = sext i32 %sub to i64, !dbg !58
  %arrayidx11 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %idxprom10, !dbg !58
  store i32 %2, i32* %arrayidx11, align 4, !dbg !59
  br label %for.inc12, !dbg !60

for.inc12:                                        ; preds = %for.body5
  %inc13 = add nsw i32 %j.0, 1, !dbg !61
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !47, metadata !DIExpression()), !dbg !48
  br label %for.cond3, !dbg !62, !llvm.loop !63

for.end14:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata i32 %start, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i32 %stop, metadata !47, metadata !DIExpression()), !dbg !48
  br label %merge_label3, !dbg !66

merge_label3:                                     ; preds = %for.end14
  call void @llvm.dbg.value(metadata i32 %start, metadata !67, metadata !DIExpression()), !dbg !68
  br label %for.cond15, !dbg !69

for.cond15:                                       ; preds = %for.inc28, %merge_label3
  %i.1 = phi i32 [ %start, %merge_label3 ], [ %i.2, %for.inc28 ]
  %j.1 = phi i32 [ %stop, %merge_label3 ], [ %j.2, %for.inc28 ]
  %k.0 = phi i32 [ %start, %merge_label3 ], [ %inc29, %for.inc28 ]
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !28, metadata !DIExpression()), !dbg !29
  %cmp16 = icmp sle i32 %k.0, %stop, !dbg !71
  br i1 %cmp16, label %for.body17, label %for.end30, !dbg !73

for.body17:                                       ; preds = %for.cond15
  %idxprom18 = sext i32 %j.1 to i64, !dbg !74
  %arrayidx19 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %idxprom18, !dbg !74
  %3 = load i32, i32* %arrayidx19, align 4, !dbg !74
  call void @llvm.dbg.value(metadata i32 %3, metadata !76, metadata !DIExpression()), !dbg !77
  %idxprom20 = sext i32 %i.1 to i64, !dbg !78
  %arrayidx21 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %idxprom20, !dbg !78
  %4 = load i32, i32* %arrayidx21, align 4, !dbg !78
  call void @llvm.dbg.value(metadata i32 %4, metadata !79, metadata !DIExpression()), !dbg !80
  %cmp22 = icmp slt i32 %3, %4, !dbg !81
  br i1 %cmp22, label %if.then, label %if.else, !dbg !83

if.then:                                          ; preds = %for.body17
  %idxprom23 = sext i32 %k.0 to i64, !dbg !84
  %arrayidx24 = getelementptr inbounds i32, i32* %a, i64 %idxprom23, !dbg !84
  store i32 %3, i32* %arrayidx24, align 4, !dbg !86
  %dec = add nsw i32 %j.1, -1, !dbg !87
  call void @llvm.dbg.value(metadata i32 %dec, metadata !47, metadata !DIExpression()), !dbg !48
  br label %if.end, !dbg !88

if.else:                                          ; preds = %for.body17
  %idxprom25 = sext i32 %k.0 to i64, !dbg !89
  %arrayidx26 = getelementptr inbounds i32, i32* %a, i64 %idxprom25, !dbg !89
  store i32 %4, i32* %arrayidx26, align 4, !dbg !91
  %inc27 = add nsw i32 %i.1, 1, !dbg !92
  call void @llvm.dbg.value(metadata i32 %inc27, metadata !28, metadata !DIExpression()), !dbg !29
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %i.2 = phi i32 [ %i.1, %if.then ], [ %inc27, %if.else ]
  %j.2 = phi i32 [ %dec, %if.then ], [ %j.1, %if.else ]
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !28, metadata !DIExpression()), !dbg !29
  br label %for.inc28, !dbg !93

for.inc28:                                        ; preds = %if.end
  %inc29 = add nsw i32 %k.0, 1, !dbg !94
  call void @llvm.dbg.value(metadata i32 %inc29, metadata !67, metadata !DIExpression()), !dbg !68
  br label %for.cond15, !dbg !95, !llvm.loop !96

for.end30:                                        ; preds = %for.cond15
  %5 = bitcast [2048 x i32]* %temp to i8*, !dbg !99
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* %5) #5, !dbg !99
  ret void, !dbg !99
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
define void @stream_write(i32 %size, i32* %array1, i32* %array2) #0 !dbg !100 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata i32* %array1, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32* %array2, metadata !113, metadata !DIExpression()), !dbg !114
  br label %VITIS_LOOP_38_1, !dbg !115

VITIS_LOOP_38_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !118
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_38_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_38_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !116, metadata !DIExpression()), !dbg !118
  %cmp = icmp ult i32 %i.0, %size, !dbg !120
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !122

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !123
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !123
  %0 = load i32, i32* %arrayidx, align 4, !dbg !123
  %idxprom1 = sext i32 %i.0 to i64, !dbg !125
  %arrayidx2 = getelementptr inbounds i32, i32* %array1, i64 %idxprom1, !dbg !125
  store i32 %0, i32* %arrayidx2, align 4, !dbg !126
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !128
  call void @llvm.dbg.value(metadata i32 %inc, metadata !116, metadata !DIExpression()), !dbg !118
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !133
}

; Function Attrs: nounwind
define void @hls_top(i32 %size, i32* "fpga.decayed.dim.hint"="2048" %xa, i32* "fpga.decayed.dim.hint"="2048" %xb) #3 !dbg !134 !fpga.function.pragma !137 {
entry:
  %a = alloca [2048 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i32* %xa, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32* %xb, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xa, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !146
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xb, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !147
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !148
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !149
  call void @llvm.dbg.value(metadata i32 0, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i32 %size, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = bitcast [2048 x i32]* %a to i8*, !dbg !154
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* %0) #5, !dbg !154
  call void @llvm.dbg.declare(metadata [2048 x i32]* %a, metadata !155, metadata !DIExpression()), !dbg !156
  br label %VITIS_LOOP_55_1, !dbg !154

VITIS_LOOP_55_1:                                  ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !157, metadata !DIExpression()), !dbg !158
  br label %for.cond, !dbg !159

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_55_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_55_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !157, metadata !DIExpression()), !dbg !158
  %cmp = icmp slt i32 %i.0, %size, !dbg !161
  br i1 %cmp, label %for.body, label %for.end, !dbg !163

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !164
  %arrayidx = getelementptr inbounds i32, i32* %xa, i64 %idxprom, !dbg !164
  %1 = load i32, i32* %arrayidx, align 4, !dbg !164
  %idxprom1 = sext i32 %i.0 to i64, !dbg !165
  %arrayidx2 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i64 0, i64 %idxprom1, !dbg !165
  store i32 %1, i32* %arrayidx2, align 4, !dbg !166
  br label %for.inc, !dbg !165

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !167
  call void @llvm.dbg.value(metadata i32 %inc, metadata !157, metadata !DIExpression()), !dbg !158
  br label %for.cond, !dbg !168, !llvm.loop !169

for.end:                                          ; preds = %for.cond
  br label %mergesort_label1, !dbg !170

mergesort_label1:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 1, metadata !172, metadata !DIExpression()), !dbg !173
  br label %for.cond3, !dbg !174

for.cond3:                                        ; preds = %for.inc19, %mergesort_label1
  %m.0 = phi i32 [ 1, %mergesort_label1 ], [ %add20, %for.inc19 ]
  call void @llvm.dbg.value(metadata i32 %m.0, metadata !172, metadata !DIExpression()), !dbg !173
  %sub = sub nsw i32 %size, 0, !dbg !176
  %cmp4 = icmp slt i32 %m.0, %sub, !dbg !178
  br i1 %cmp4, label %for.body5, label %for.end21, !dbg !179

for.body5:                                        ; preds = %for.cond3
  br label %mergesort_label2, !dbg !180

mergesort_label2:                                 ; preds = %for.body5
  call void @llvm.dbg.value(metadata i32 0, metadata !157, metadata !DIExpression()), !dbg !158
  br label %for.cond6, !dbg !181

for.cond6:                                        ; preds = %for.inc15, %mergesort_label2
  %i.1 = phi i32 [ 0, %mergesort_label2 ], [ %add17, %for.inc15 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !157, metadata !DIExpression()), !dbg !158
  %cmp7 = icmp slt i32 %i.1, %size, !dbg !184
  br i1 %cmp7, label %for.body8, label %for.end18, !dbg !186

for.body8:                                        ; preds = %for.cond6
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !187, metadata !DIExpression()), !dbg !188
  %add = add nsw i32 %i.1, %m.0, !dbg !189
  %sub9 = sub nsw i32 %add, 1, !dbg !191
  call void @llvm.dbg.value(metadata i32 %sub9, metadata !192, metadata !DIExpression()), !dbg !193
  %add10 = add nsw i32 %i.1, %m.0, !dbg !194
  %add11 = add nsw i32 %add10, %m.0, !dbg !195
  %sub12 = sub nsw i32 %add11, 1, !dbg !196
  call void @llvm.dbg.value(metadata i32 %sub12, metadata !197, metadata !DIExpression()), !dbg !198
  %cmp13 = icmp slt i32 %sub12, %size, !dbg !199
  br i1 %cmp13, label %if.then, label %if.else, !dbg !201

if.then:                                          ; preds = %for.body8
  %arraydecay = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i32 0, i32 0, !dbg !202
  call void @merge(i32* %arraydecay, i32 %i.1, i32 %sub9, i32 %sub12), !dbg !204
  br label %if.end, !dbg !205

if.else:                                          ; preds = %for.body8
  %arraydecay14 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i32 0, i32 0, !dbg !206
  call void @merge(i32* %arraydecay14, i32 %i.1, i32 %sub9, i32 %size), !dbg !208
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc15, !dbg !209

for.inc15:                                        ; preds = %if.end
  %add16 = add nsw i32 %m.0, %m.0, !dbg !210
  %add17 = add nsw i32 %i.1, %add16, !dbg !211
  call void @llvm.dbg.value(metadata i32 %add17, metadata !157, metadata !DIExpression()), !dbg !158
  br label %for.cond6, !dbg !212, !llvm.loop !213

for.end18:                                        ; preds = %for.cond6
  br label %for.inc19, !dbg !216

for.inc19:                                        ; preds = %for.end18
  %add20 = add nsw i32 %m.0, %m.0, !dbg !217
  call void @llvm.dbg.value(metadata i32 %add20, metadata !172, metadata !DIExpression()), !dbg !173
  br label %for.cond3, !dbg !218, !llvm.loop !219

for.end21:                                        ; preds = %for.cond3
  %arraydecay22 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i32 0, i32 0, !dbg !222
  call void @stream_write(i32 %size, i32* %xb, i32* %arraydecay22), !dbg !223
  %2 = bitcast [2048 x i32]* %a to i8*, !dbg !224
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* %2) #5, !dbg !224
  ret void, !dbg !224
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
attributes #5 = { nounwind }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="65536" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/sort_merge/sort_merge_prj/solution/.autopilot/db/sort_merge.pp.0.c", directory: "/workspace/examples/sort_merge")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "merge", scope: !8, file: !8, line: 6, type: !9, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "sort_merge.c", directory: "/workspace/examples/sort_merge")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11, !12, !12, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !8, line: 6, type: !11)
!14 = !DILocation(line: 6, column: 16, scope: !7)
!15 = !DILocalVariable(name: "start", arg: 2, scope: !7, file: !8, line: 6, type: !12)
!16 = !DILocation(line: 6, column: 29, scope: !7)
!17 = !DILocalVariable(name: "m", arg: 3, scope: !7, file: !8, line: 6, type: !12)
!18 = !DILocation(line: 6, column: 40, scope: !7)
!19 = !DILocalVariable(name: "stop", arg: 4, scope: !7, file: !8, line: 6, type: !12)
!20 = !DILocation(line: 6, column: 47, scope: !7)
!21 = !DILocation(line: 7, column: 3, scope: !7)
!22 = !DILocalVariable(name: "temp", scope: !7, file: !8, line: 7, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 65536, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 2048)
!26 = !DILocation(line: 7, column: 7, scope: !7)
!27 = !DILocation(line: 8, column: 3, scope: !7)
!28 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 8, type: !12)
!29 = !DILocation(line: 8, column: 7, scope: !7)
!30 = !DILocation(line: 11, column: 8, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !8, line: 11, column: 3)
!32 = !DILocation(line: 11, column: 21, scope: !33)
!33 = distinct !DILexicalBlock(scope: !31, file: !8, line: 11, column: 3)
!34 = !DILocation(line: 11, column: 3, scope: !31)
!35 = !DILocation(line: 12, column: 15, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !8, line: 11, column: 32)
!37 = !DILocation(line: 12, column: 5, scope: !36)
!38 = !DILocation(line: 12, column: 13, scope: !36)
!39 = !DILocation(line: 13, column: 3, scope: !36)
!40 = !DILocation(line: 11, column: 28, scope: !33)
!41 = !DILocation(line: 11, column: 3, scope: !33)
!42 = distinct !{!42, !34, !43, !44}
!43 = !DILocation(line: 13, column: 3, scope: !31)
!44 = !{!"llvm.loop.name", !"merge_label1"}
!45 = !DILocation(line: 16, column: 14, scope: !46)
!46 = distinct !DILexicalBlock(scope: !7, file: !8, line: 16, column: 3)
!47 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 8, type: !12)
!48 = !DILocation(line: 8, column: 10, scope: !7)
!49 = !DILocation(line: 16, column: 8, scope: !46)
!50 = !DILocation(line: 16, column: 21, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !8, line: 16, column: 3)
!52 = !DILocation(line: 16, column: 3, scope: !46)
!53 = !DILocation(line: 17, column: 30, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !8, line: 16, column: 35)
!55 = !DILocation(line: 17, column: 12, scope: !54)
!56 = !DILocation(line: 17, column: 16, scope: !54)
!57 = !DILocation(line: 17, column: 23, scope: !54)
!58 = !DILocation(line: 17, column: 5, scope: !54)
!59 = !DILocation(line: 17, column: 28, scope: !54)
!60 = !DILocation(line: 18, column: 3, scope: !54)
!61 = !DILocation(line: 16, column: 31, scope: !51)
!62 = !DILocation(line: 16, column: 3, scope: !51)
!63 = distinct !{!63, !52, !64, !65}
!64 = !DILocation(line: 18, column: 3, scope: !46)
!65 = !{!"llvm.loop.name", !"merge_label2"}
!66 = !DILocation(line: 21, column: 3, scope: !7)
!67 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 8, type: !12)
!68 = !DILocation(line: 8, column: 13, scope: !7)
!69 = !DILocation(line: 24, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !7, file: !8, line: 24, column: 3)
!71 = !DILocation(line: 24, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !8, line: 24, column: 3)
!73 = !DILocation(line: 24, column: 3, scope: !70)
!74 = !DILocation(line: 25, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !8, line: 24, column: 35)
!76 = !DILocalVariable(name: "tmp_j", scope: !75, file: !8, line: 25, type: !12)
!77 = !DILocation(line: 25, column: 9, scope: !75)
!78 = !DILocation(line: 26, column: 17, scope: !75)
!79 = !DILocalVariable(name: "tmp_i", scope: !75, file: !8, line: 26, type: !12)
!80 = !DILocation(line: 26, column: 9, scope: !75)
!81 = !DILocation(line: 27, column: 15, scope: !82)
!82 = distinct !DILexicalBlock(scope: !75, file: !8, line: 27, column: 9)
!83 = !DILocation(line: 27, column: 9, scope: !75)
!84 = !DILocation(line: 28, column: 7, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !8, line: 27, column: 24)
!86 = !DILocation(line: 28, column: 12, scope: !85)
!87 = !DILocation(line: 29, column: 8, scope: !85)
!88 = !DILocation(line: 30, column: 5, scope: !85)
!89 = !DILocation(line: 31, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !82, file: !8, line: 30, column: 12)
!91 = !DILocation(line: 31, column: 12, scope: !90)
!92 = !DILocation(line: 32, column: 8, scope: !90)
!93 = !DILocation(line: 34, column: 3, scope: !75)
!94 = !DILocation(line: 24, column: 31, scope: !72)
!95 = !DILocation(line: 24, column: 3, scope: !72)
!96 = distinct !{!96, !73, !97, !98}
!97 = !DILocation(line: 34, column: 3, scope: !70)
!98 = !{!"llvm.loop.name", !"merge_label3"}
!99 = !DILocation(line: 35, column: 1, scope: !7)
!100 = distinct !DISubprogram(name: "stream_write", scope: !8, file: !8, line: 37, type: !101, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !11, !11}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 5, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !105, line: 26, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/sort_merge")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !107, line: 42, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/sort_merge")
!108 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!109 = !DILocalVariable(name: "size", arg: 1, scope: !100, file: !8, line: 37, type: !103)
!110 = !DILocation(line: 37, column: 23, scope: !100)
!111 = !DILocalVariable(name: "array1", arg: 2, scope: !100, file: !8, line: 37, type: !11)
!112 = !DILocation(line: 37, column: 34, scope: !100)
!113 = !DILocalVariable(name: "array2", arg: 3, scope: !100, file: !8, line: 37, type: !11)
!114 = !DILocation(line: 37, column: 47, scope: !100)
!115 = !DILocation(line: 37, column: 55, scope: !100)
!116 = !DILocalVariable(name: "i", scope: !117, file: !8, line: 38, type: !12)
!117 = distinct !DILexicalBlock(scope: !100, file: !8, line: 38, column: 20)
!118 = !DILocation(line: 38, column: 29, scope: !117)
!119 = !DILocation(line: 38, column: 25, scope: !117)
!120 = !DILocation(line: 38, column: 38, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !8, line: 38, column: 20)
!122 = !DILocation(line: 38, column: 20, scope: !117)
!123 = !DILocation(line: 39, column: 17, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !8, line: 38, column: 51)
!125 = !DILocation(line: 39, column: 5, scope: !124)
!126 = !DILocation(line: 39, column: 15, scope: !124)
!127 = !DILocation(line: 40, column: 3, scope: !124)
!128 = !DILocation(line: 38, column: 47, scope: !121)
!129 = !DILocation(line: 38, column: 20, scope: !121)
!130 = distinct !{!130, !122, !131, !132}
!131 = !DILocation(line: 40, column: 3, scope: !117)
!132 = !{!"llvm.loop.name", !"VITIS_LOOP_38_1"}
!133 = !DILocation(line: 41, column: 1, scope: !100)
!134 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 42, type: !135, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !12, !11, !11}
!137 = !{!138}
!138 = !{!"fpga.top", !"user", !139}
!139 = !DILocation(line: 42, column: 16, scope: !134)
!140 = !DILocalVariable(name: "size", arg: 1, scope: !134, file: !8, line: 42, type: !12)
!141 = !DILocation(line: 42, column: 60, scope: !134)
!142 = !DILocalVariable(name: "xa", arg: 2, scope: !134, file: !8, line: 42, type: !11)
!143 = !DILocation(line: 42, column: 70, scope: !134)
!144 = !DILocalVariable(name: "xb", arg: 3, scope: !134, file: !8, line: 42, type: !11)
!145 = !DILocation(line: 42, column: 84, scope: !134)
!146 = !DILocation(line: 43, column: 9, scope: !134)
!147 = !DILocation(line: 44, column: 9, scope: !134)
!148 = !DILocation(line: 45, column: 9, scope: !134)
!149 = !DILocation(line: 46, column: 9, scope: !134)
!150 = !DILocalVariable(name: "start", scope: !134, file: !8, line: 47, type: !12)
!151 = !DILocation(line: 47, column: 6, scope: !134)
!152 = !DILocalVariable(name: "stop", scope: !134, file: !8, line: 47, type: !12)
!153 = !DILocation(line: 47, column: 13, scope: !134)
!154 = !DILocation(line: 53, column: 3, scope: !134)
!155 = !DILocalVariable(name: "a", scope: !134, file: !8, line: 53, type: !23)
!156 = !DILocation(line: 53, column: 7, scope: !134)
!157 = !DILocalVariable(name: "i", scope: !134, file: !8, line: 48, type: !12)
!158 = !DILocation(line: 48, column: 7, scope: !134)
!159 = !DILocation(line: 55, column: 25, scope: !160)
!160 = distinct !DILexicalBlock(scope: !134, file: !8, line: 55, column: 20)
!161 = !DILocation(line: 55, column: 34, scope: !162)
!162 = distinct !DILexicalBlock(scope: !160, file: !8, line: 55, column: 20)
!163 = !DILocation(line: 55, column: 20, scope: !160)
!164 = !DILocation(line: 56, column: 12, scope: !162)
!165 = !DILocation(line: 56, column: 5, scope: !162)
!166 = !DILocation(line: 56, column: 10, scope: !162)
!167 = !DILocation(line: 55, column: 43, scope: !162)
!168 = !DILocation(line: 55, column: 20, scope: !162)
!169 = distinct !{!169, !163, !170, !171}
!170 = !DILocation(line: 56, column: 16, scope: !160)
!171 = !{!"llvm.loop.name", !"VITIS_LOOP_55_1"}
!172 = !DILocalVariable(name: "m", scope: !134, file: !8, line: 48, type: !12)
!173 = !DILocation(line: 48, column: 10, scope: !134)
!174 = !DILocation(line: 59, column: 8, scope: !175)
!175 = distinct !DILexicalBlock(scope: !134, file: !8, line: 59, column: 3)
!176 = !DILocation(line: 59, column: 24, scope: !177)
!177 = distinct !DILexicalBlock(scope: !175, file: !8, line: 59, column: 3)
!178 = !DILocation(line: 59, column: 17, scope: !177)
!179 = !DILocation(line: 59, column: 3, scope: !175)
!180 = !DILocation(line: 59, column: 41, scope: !177)
!181 = !DILocation(line: 61, column: 10, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !8, line: 61, column: 5)
!183 = distinct !DILexicalBlock(scope: !177, file: !8, line: 59, column: 41)
!184 = !DILocation(line: 61, column: 23, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !8, line: 61, column: 5)
!186 = !DILocation(line: 61, column: 5, scope: !182)
!187 = !DILocalVariable(name: "from", scope: !134, file: !8, line: 48, type: !12)
!188 = !DILocation(line: 48, column: 13, scope: !134)
!189 = !DILocation(line: 63, column: 15, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !8, line: 61, column: 43)
!191 = !DILocation(line: 63, column: 19, scope: !190)
!192 = !DILocalVariable(name: "mid", scope: !134, file: !8, line: 48, type: !12)
!193 = !DILocation(line: 48, column: 19, scope: !134)
!194 = !DILocation(line: 64, column: 14, scope: !190)
!195 = !DILocation(line: 64, column: 18, scope: !190)
!196 = !DILocation(line: 64, column: 22, scope: !190)
!197 = !DILocalVariable(name: "to", scope: !134, file: !8, line: 48, type: !12)
!198 = !DILocation(line: 48, column: 24, scope: !134)
!199 = !DILocation(line: 65, column: 14, scope: !200)
!200 = distinct !DILexicalBlock(scope: !190, file: !8, line: 65, column: 11)
!201 = !DILocation(line: 65, column: 11, scope: !190)
!202 = !DILocation(line: 66, column: 15, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !8, line: 65, column: 22)
!204 = !DILocation(line: 66, column: 9, scope: !203)
!205 = !DILocation(line: 67, column: 7, scope: !203)
!206 = !DILocation(line: 68, column: 15, scope: !207)
!207 = distinct !DILexicalBlock(scope: !200, file: !8, line: 67, column: 14)
!208 = !DILocation(line: 68, column: 9, scope: !207)
!209 = !DILocation(line: 70, column: 5, scope: !190)
!210 = !DILocation(line: 61, column: 38, scope: !185)
!211 = !DILocation(line: 61, column: 33, scope: !185)
!212 = !DILocation(line: 61, column: 5, scope: !185)
!213 = distinct !{!213, !186, !214, !215}
!214 = !DILocation(line: 70, column: 5, scope: !182)
!215 = !{!"llvm.loop.name", !"mergesort_label2"}
!216 = !DILocation(line: 71, column: 3, scope: !183)
!217 = !DILocation(line: 59, column: 35, scope: !177)
!218 = !DILocation(line: 59, column: 3, scope: !177)
!219 = distinct !{!219, !179, !220, !221}
!220 = !DILocation(line: 71, column: 3, scope: !175)
!221 = !{!"llvm.loop.name", !"mergesort_label1"}
!222 = !DILocation(line: 72, column: 26, scope: !134)
!223 = !DILocation(line: 72, column: 3, scope: !134)
!224 = !DILocation(line: 73, column: 1, scope: !134)
