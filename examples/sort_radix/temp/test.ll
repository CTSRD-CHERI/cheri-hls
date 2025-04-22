; ModuleID = '/workspace/examples/sort_radix/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define void @local_scan(i32* "fpga.decayed.dim.hint"="2048" %bucket) #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32* %bucket, metadata !13, metadata !DIExpression()), !dbg !14
  br label %local_1, !dbg !15

local_1:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()), !dbg !17
  br label %for.cond, !dbg !18

for.cond:                                         ; preds = %for.inc9, %local_1
  %radixID.0 = phi i32 [ 0, %local_1 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %radixID.0, metadata !16, metadata !DIExpression()), !dbg !17
  %cmp = icmp slt i32 %radixID.0, 128, !dbg !20
  br i1 %cmp, label %for.body, label %for.end11, !dbg !22

for.body:                                         ; preds = %for.cond
  br label %local_2, !dbg !23

local_2:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 1, metadata !24, metadata !DIExpression()), !dbg !25
  br label %for.cond1, !dbg !26

for.cond1:                                        ; preds = %for.inc, %local_2
  %i.0 = phi i32 [ 1, %local_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !24, metadata !DIExpression()), !dbg !25
  %cmp2 = icmp slt i32 %i.0, 16, !dbg !29
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !31

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %radixID.0, 16, !dbg !32
  %add = add nsw i32 %mul, %i.0, !dbg !34
  call void @llvm.dbg.value(metadata i32 %add, metadata !35, metadata !DIExpression()), !dbg !36
  %idxprom = sext i32 %add to i64, !dbg !37
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %idxprom, !dbg !37
  %0 = load i32, i32* %arrayidx, align 4, !dbg !37
  %sub = sub nsw i32 %add, 1, !dbg !38
  %idxprom4 = sext i32 %sub to i64, !dbg !39
  %arrayidx5 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom4, !dbg !39
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !39
  %add6 = add nsw i32 %0, %1, !dbg !40
  %idxprom7 = sext i32 %add to i64, !dbg !41
  %arrayidx8 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7, !dbg !41
  store i32 %add6, i32* %arrayidx8, align 4, !dbg !42
  br label %for.inc, !dbg !43

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !dbg !44
  call void @llvm.dbg.value(metadata i32 %inc, metadata !24, metadata !DIExpression()), !dbg !25
  br label %for.cond1, !dbg !45, !llvm.loop !46

for.end:                                          ; preds = %for.cond1
  br label %for.inc9, !dbg !49

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %radixID.0, 1, !dbg !50
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !16, metadata !DIExpression()), !dbg !17
  br label %for.cond, !dbg !51, !llvm.loop !52

for.end11:                                        ; preds = %for.cond
  ret void, !dbg !55
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
define void @sum_scan(i32* "fpga.decayed.dim.hint"="128" %sum, i32* "fpga.decayed.dim.hint"="2048" %bucket) #0 !dbg !56 {
entry:
  call void @llvm.dbg.value(metadata i32* %sum, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32* %bucket, metadata !61, metadata !DIExpression()), !dbg !62
  %arrayidx = getelementptr inbounds i32, i32* %sum, i64 0, !dbg !63
  store i32 0, i32* %arrayidx, align 4, !dbg !64
  call void @llvm.dbg.value(metadata i32 0, metadata !65, metadata !DIExpression()), !dbg !66
  br label %sum_1, !dbg !67

sum_1:                                            ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !68, metadata !DIExpression()), !dbg !69
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %sum_1
  %radixID.0 = phi i32 [ 1, %sum_1 ], [ %inc, %for.inc ]
  %temp.0 = phi i32 [ 0, %sum_1 ], [ %add, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %temp.0, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32 %radixID.0, metadata !68, metadata !DIExpression()), !dbg !69
  %cmp = icmp slt i32 %radixID.0, 128, !dbg !72
  br i1 %cmp, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %for.cond
  %shl = shl i32 %radixID.0, 3, !dbg !75
  call void @llvm.dbg.value(metadata i32 %shl, metadata !77, metadata !DIExpression()), !dbg !78
  %idxprom = sext i32 %shl to i64, !dbg !79
  %arrayidx1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom, !dbg !79
  %0 = load i32, i32* %arrayidx1, align 4, !dbg !79
  %add = add nsw i32 %temp.0, %0, !dbg !80
  call void @llvm.dbg.value(metadata i32 %add, metadata !65, metadata !DIExpression()), !dbg !66
  %idxprom2 = sext i32 %radixID.0 to i64, !dbg !81
  %arrayidx3 = getelementptr inbounds i32, i32* %sum, i64 %idxprom2, !dbg !81
  store i32 %add, i32* %arrayidx3, align 4, !dbg !82
  br label %for.inc, !dbg !83

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %radixID.0, 1, !dbg !84
  call void @llvm.dbg.value(metadata i32 %inc, metadata !68, metadata !DIExpression()), !dbg !69
  br label %for.cond, !dbg !85, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  ret void, !dbg !89
}

; Function Attrs: nounwind
define void @last_step_scan(i32* "fpga.decayed.dim.hint"="2048" %bucket, i32* "fpga.decayed.dim.hint"="128" %sum) #0 !dbg !90 {
entry:
  call void @llvm.dbg.value(metadata i32* %bucket, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32* %sum, metadata !93, metadata !DIExpression()), !dbg !94
  br label %last_1, !dbg !95

last_1:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !97
  br label %for.cond, !dbg !98

for.cond:                                         ; preds = %for.inc9, %last_1
  %radixID.0 = phi i32 [ 0, %last_1 ], [ %inc10, %for.inc9 ]
  call void @llvm.dbg.value(metadata i32 %radixID.0, metadata !96, metadata !DIExpression()), !dbg !97
  %cmp = icmp slt i32 %radixID.0, 128, !dbg !100
  br i1 %cmp, label %for.body, label %for.end11, !dbg !102

for.body:                                         ; preds = %for.cond
  br label %last_2, !dbg !103

last_2:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !104, metadata !DIExpression()), !dbg !105
  br label %for.cond1, !dbg !106

for.cond1:                                        ; preds = %for.inc, %last_2
  %i.0 = phi i32 [ 0, %last_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !104, metadata !DIExpression()), !dbg !105
  %cmp2 = icmp slt i32 %i.0, 16, !dbg !109
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !111

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %radixID.0, 16, !dbg !112
  %add = add nsw i32 %mul, %i.0, !dbg !114
  call void @llvm.dbg.value(metadata i32 %add, metadata !115, metadata !DIExpression()), !dbg !116
  %idxprom = sext i32 %add to i64, !dbg !117
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %idxprom, !dbg !117
  %0 = load i32, i32* %arrayidx, align 4, !dbg !117
  %idxprom4 = sext i32 %radixID.0 to i64, !dbg !118
  %arrayidx5 = getelementptr inbounds i32, i32* %sum, i64 %idxprom4, !dbg !118
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !118
  %add6 = add nsw i32 %0, %1, !dbg !119
  %idxprom7 = sext i32 %add to i64, !dbg !120
  %arrayidx8 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7, !dbg !120
  store i32 %add6, i32* %arrayidx8, align 4, !dbg !121
  br label %for.inc, !dbg !122

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %i.0, 1, !dbg !123
  call void @llvm.dbg.value(metadata i32 %inc, metadata !104, metadata !DIExpression()), !dbg !105
  br label %for.cond1, !dbg !124, !llvm.loop !125

for.end:                                          ; preds = %for.cond1
  br label %for.inc9, !dbg !128

for.inc9:                                         ; preds = %for.end
  %inc10 = add nsw i32 %radixID.0, 1, !dbg !129
  call void @llvm.dbg.value(metadata i32 %inc10, metadata !96, metadata !DIExpression()), !dbg !97
  br label %for.cond, !dbg !130, !llvm.loop !131

for.end11:                                        ; preds = %for.cond
  ret void, !dbg !134
}

; Function Attrs: nounwind
define void @init(i32* "fpga.decayed.dim.hint"="2048" %bucket) #0 !dbg !135 {
entry:
  call void @llvm.dbg.value(metadata i32* %bucket, metadata !136, metadata !DIExpression()), !dbg !137
  br label %init_1, !dbg !138

init_1:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !139, metadata !DIExpression()), !dbg !140
  br label %for.cond, !dbg !141

for.cond:                                         ; preds = %for.inc, %init_1
  %i.0 = phi i32 [ 0, %init_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !139, metadata !DIExpression()), !dbg !140
  %cmp = icmp slt i32 %i.0, 2048, !dbg !143
  br i1 %cmp, label %for.body, label %for.end, !dbg !145

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !146
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %idxprom, !dbg !146
  store i32 0, i32* %arrayidx, align 4, !dbg !148
  br label %for.inc, !dbg !149

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !150
  call void @llvm.dbg.value(metadata i32 %inc, metadata !139, metadata !DIExpression()), !dbg !140
  br label %for.cond, !dbg !151, !llvm.loop !152

for.end:                                          ; preds = %for.cond
  ret void, !dbg !155
}

; Function Attrs: nounwind
define void @hist(i32* "fpga.decayed.dim.hint"="2048" %bucket, i32* "fpga.decayed.dim.hint"="2048" %a, i32 %exp) #0 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata i32* %bucket, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata i32* %a, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 %exp, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 0, metadata !165, metadata !DIExpression()), !dbg !166
  br label %hist_1, !dbg !167

hist_1:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !165, metadata !DIExpression()), !dbg !166
  br label %for.cond, !dbg !168

for.cond:                                         ; preds = %for.inc13, %hist_1
  %blockID.0 = phi i32 [ 0, %hist_1 ], [ %inc14, %for.inc13 ]
  call void @llvm.dbg.value(metadata i32 %blockID.0, metadata !165, metadata !DIExpression()), !dbg !166
  %cmp = icmp slt i32 %blockID.0, 512, !dbg !170
  br i1 %cmp, label %for.body, label %for.end15, !dbg !172

for.body:                                         ; preds = %for.cond
  br label %hist_2, !dbg !173

hist_2:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !174, metadata !DIExpression()), !dbg !175
  br label %for.cond1, !dbg !176

for.cond1:                                        ; preds = %for.inc, %hist_2
  %i.0 = phi i32 [ 0, %hist_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !174, metadata !DIExpression()), !dbg !175
  %cmp2 = icmp slt i32 %i.0, 4, !dbg !179
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !181

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %blockID.0, 4, !dbg !182
  %add = add nsw i32 %mul, %i.0, !dbg !184
  call void @llvm.dbg.value(metadata i32 %add, metadata !185, metadata !DIExpression()), !dbg !186
  %idxprom = sext i32 %add to i64, !dbg !187
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %idxprom, !dbg !187
  %0 = load i32, i32* %arrayidx, align 4, !dbg !187
  %shr = ashr i32 %0, %exp, !dbg !188
  %and = and i32 %shr, 3, !dbg !189
  %mul4 = mul nsw i32 %and, 512, !dbg !190
  %add5 = add nsw i32 %mul4, %blockID.0, !dbg !191
  %add6 = add nsw i32 %add5, 1, !dbg !192
  call void @llvm.dbg.value(metadata i32 %add6, metadata !193, metadata !DIExpression()), !dbg !194
  %cmp7 = icmp sge i32 %add6, 2048, !dbg !195
  br i1 %cmp7, label %if.then, label %if.end, !dbg !197

if.then:                                          ; preds = %for.body3
  call void @llvm.dbg.value(metadata i32 2047, metadata !193, metadata !DIExpression()), !dbg !194
  br label %if.end, !dbg !198

if.end:                                           ; preds = %if.then, %for.body3
  %bucket_indx.0 = phi i32 [ 2047, %if.then ], [ %add6, %for.body3 ]
  call void @llvm.dbg.value(metadata i32 %bucket_indx.0, metadata !193, metadata !DIExpression()), !dbg !194
  %idxprom8 = sext i32 %bucket_indx.0 to i64, !dbg !199
  %arrayidx9 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom8, !dbg !199
  %1 = load i32, i32* %arrayidx9, align 4, !dbg !199
  %add10 = add nsw i32 %1, 1, !dbg !200
  %idxprom11 = sext i32 %bucket_indx.0 to i64, !dbg !201
  %arrayidx12 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom11, !dbg !201
  store i32 %add10, i32* %arrayidx12, align 4, !dbg !202
  br label %for.inc, !dbg !203

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !dbg !204
  call void @llvm.dbg.value(metadata i32 %inc, metadata !174, metadata !DIExpression()), !dbg !175
  br label %for.cond1, !dbg !205, !llvm.loop !206

for.end:                                          ; preds = %for.cond1
  br label %for.inc13, !dbg !209

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %blockID.0, 1, !dbg !210
  call void @llvm.dbg.value(metadata i32 %inc14, metadata !165, metadata !DIExpression()), !dbg !166
  br label %for.cond, !dbg !211, !llvm.loop !212

for.end15:                                        ; preds = %for.cond
  ret void, !dbg !215
}

; Function Attrs: nounwind
define void @update(i32* "fpga.decayed.dim.hint"="2048" %b, i32* "fpga.decayed.dim.hint"="2048" %bucket, i32* "fpga.decayed.dim.hint"="2048" %a, i32 %exp) #0 !dbg !216 {
entry:
  call void @llvm.dbg.value(metadata i32* %b, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32* %bucket, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i32* %a, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 %exp, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i32 0, metadata !227, metadata !DIExpression()), !dbg !228
  br label %update_1, !dbg !229

update_1:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !227, metadata !DIExpression()), !dbg !228
  br label %for.cond, !dbg !230

for.cond:                                         ; preds = %for.inc20, %update_1
  %blockID.0 = phi i32 [ 0, %update_1 ], [ %inc21, %for.inc20 ]
  call void @llvm.dbg.value(metadata i32 %blockID.0, metadata !227, metadata !DIExpression()), !dbg !228
  %cmp = icmp slt i32 %blockID.0, 512, !dbg !232
  br i1 %cmp, label %for.body, label %for.end22, !dbg !234

for.body:                                         ; preds = %for.cond
  br label %update_2, !dbg !235

update_2:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !236, metadata !DIExpression()), !dbg !237
  br label %for.cond1, !dbg !238

for.cond1:                                        ; preds = %for.inc, %update_2
  %i.0 = phi i32 [ 0, %update_2 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !236, metadata !DIExpression()), !dbg !237
  %cmp2 = icmp slt i32 %i.0, 4, !dbg !241
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !243

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %blockID.0, 4, !dbg !244
  %add = add nsw i32 %mul, %i.0, !dbg !246
  %idxprom = sext i32 %add to i64, !dbg !247
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %idxprom, !dbg !247
  %0 = load i32, i32* %arrayidx, align 4, !dbg !247
  %shr = ashr i32 %0, %exp, !dbg !248
  %and = and i32 %shr, 3, !dbg !249
  %mul4 = mul nsw i32 %and, 512, !dbg !250
  %add5 = add nsw i32 %mul4, %blockID.0, !dbg !251
  call void @llvm.dbg.value(metadata i32 %add5, metadata !252, metadata !DIExpression()), !dbg !253
  %mul6 = mul nsw i32 %blockID.0, 4, !dbg !254
  %add7 = add nsw i32 %mul6, %i.0, !dbg !255
  call void @llvm.dbg.value(metadata i32 %add7, metadata !256, metadata !DIExpression()), !dbg !257
  %idxprom8 = sext i32 %add7 to i64, !dbg !258
  %arrayidx9 = getelementptr inbounds i32, i32* %a, i64 %idxprom8, !dbg !258
  %1 = load i32, i32* %arrayidx9, align 4, !dbg !258
  %idxprom10 = sext i32 %add5 to i64, !dbg !259
  %arrayidx11 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom10, !dbg !259
  %2 = load i32, i32* %arrayidx11, align 4, !dbg !259
  %idxprom12 = sext i32 %2 to i64, !dbg !260
  %arrayidx13 = getelementptr inbounds i32, i32* %b, i64 %idxprom12, !dbg !260
  store i32 %1, i32* %arrayidx13, align 4, !dbg !261
  %cmp14 = icmp sge i32 %add5, 2048, !dbg !262
  br i1 %cmp14, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %for.body3
  call void @llvm.dbg.value(metadata i32 2047, metadata !252, metadata !DIExpression()), !dbg !253
  br label %if.end, !dbg !265

if.end:                                           ; preds = %if.then, %for.body3
  %bucket_indx.0 = phi i32 [ 2047, %if.then ], [ %add5, %for.body3 ]
  call void @llvm.dbg.value(metadata i32 %bucket_indx.0, metadata !252, metadata !DIExpression()), !dbg !253
  %idxprom15 = sext i32 %bucket_indx.0 to i64, !dbg !266
  %arrayidx16 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15, !dbg !266
  %3 = load i32, i32* %arrayidx16, align 4, !dbg !266
  %add17 = add nsw i32 %3, 1, !dbg !267
  %idxprom18 = sext i32 %bucket_indx.0 to i64, !dbg !268
  %arrayidx19 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom18, !dbg !268
  store i32 %add17, i32* %arrayidx19, align 4, !dbg !269
  br label %for.inc, !dbg !270

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !dbg !271
  call void @llvm.dbg.value(metadata i32 %inc, metadata !236, metadata !DIExpression()), !dbg !237
  br label %for.cond1, !dbg !272, !llvm.loop !273

for.end:                                          ; preds = %for.cond1
  br label %for.inc20, !dbg !276

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %blockID.0, 1, !dbg !277
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !227, metadata !DIExpression()), !dbg !228
  br label %for.cond, !dbg !278, !llvm.loop !279

for.end22:                                        ; preds = %for.cond
  ret void, !dbg !282
}

; Function Attrs: nounwind
define void @stream_write(i32 %size, i32* %array1, i32* %array2) #0 !dbg !283 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata i32* %array1, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata i32* %array2, metadata !296, metadata !DIExpression()), !dbg !297
  br label %VITIS_LOOP_107_1, !dbg !298

VITIS_LOOP_107_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !299, metadata !DIExpression()), !dbg !301
  br label %for.cond, !dbg !302

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_107_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_107_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !299, metadata !DIExpression()), !dbg !301
  %cmp = icmp ult i32 %i.0, %size, !dbg !303
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !305

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !306
  %arrayidx = getelementptr inbounds i32, i32* %array2, i64 %idxprom, !dbg !306
  %0 = load i32, i32* %arrayidx, align 4, !dbg !306
  %idxprom1 = sext i32 %i.0 to i64, !dbg !308
  %arrayidx2 = getelementptr inbounds i32, i32* %array1, i64 %idxprom1, !dbg !308
  store i32 %0, i32* %arrayidx2, align 4, !dbg !309
  br label %for.inc, !dbg !310

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !311
  call void @llvm.dbg.value(metadata i32 %inc, metadata !299, metadata !DIExpression()), !dbg !301
  br label %for.cond, !dbg !312, !llvm.loop !313

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !316
}

; Function Attrs: nounwind
define void @hls_top(i32* "fpga.decayed.dim.hint"="2048" %xa, i32* "fpga.decayed.dim.hint"="2048" %xb, i32* "fpga.decayed.dim.hint"="2048" %xbucket, i32* "fpga.decayed.dim.hint"="128" %xsum) #3 !dbg !317 !fpga.function.pragma !320 {
entry:
  %a = alloca [2048 x i32], align 4
  %b = alloca [2048 x i32], align 4
  %bucket = alloca [2048 x i32], align 4
  %sum = alloca [128 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %xa, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i32* %xb, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i32* %xbucket, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata i32* %xsum, metadata !329, metadata !DIExpression()), !dbg !330
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xa, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !331
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xb, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !332
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xbucket, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !333
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xsum, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !334
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !335
  call void @llvm.dbg.value(metadata i32 0, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 0, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = bitcast [2048 x i32]* %a to i8*, !dbg !340
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* %0) #8, !dbg !340
  call void @llvm.dbg.declare(metadata [2048 x i32]* %a, metadata !341, metadata !DIExpression()), !dbg !345
  %1 = bitcast [2048 x i32]* %b to i8*, !dbg !346
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* %1) #8, !dbg !346
  call void @llvm.dbg.declare(metadata [2048 x i32]* %b, metadata !347, metadata !DIExpression()), !dbg !348
  %2 = bitcast [2048 x i32]* %bucket to i8*, !dbg !349
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* %2) #8, !dbg !349
  call void @llvm.dbg.declare(metadata [2048 x i32]* %bucket, metadata !350, metadata !DIExpression()), !dbg !351
  %3 = bitcast [128 x i32]* %sum to i8*, !dbg !352
  call void @llvm.lifetime.start.p0i8(i64 512, i8* %3) #8, !dbg !352
  call void @llvm.dbg.declare(metadata [128 x i32]* %sum, metadata !353, metadata !DIExpression()), !dbg !357
  br label %VITIS_LOOP_130_1, !dbg !352

VITIS_LOOP_130_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !358, metadata !DIExpression()), !dbg !360
  br label %for.cond, !dbg !361

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_130_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_130_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !358, metadata !DIExpression()), !dbg !360
  %cmp = icmp slt i32 %i.0, 2048, !dbg !362
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !364

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !365
  %arrayidx = getelementptr inbounds i32, i32* %xa, i64 %idxprom, !dbg !365
  %4 = load i32, i32* %arrayidx, align 4, !dbg !365
  %idxprom1 = sext i32 %i.0 to i64, !dbg !366
  %arrayidx2 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i64 0, i64 %idxprom1, !dbg !366
  store i32 %4, i32* %arrayidx2, align 4, !dbg !367
  br label %for.inc, !dbg !366

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !368
  call void @llvm.dbg.value(metadata i32 %inc, metadata !358, metadata !DIExpression()), !dbg !360
  br label %for.cond, !dbg !369, !llvm.loop !370

for.end:                                          ; preds = %for.cond.cleanup
  br label %sort_1, !dbg !371

sort_1:                                           ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !336, metadata !DIExpression()), !dbg !337
  br label %for.cond3, !dbg !373

for.cond3:                                        ; preds = %for.inc26, %sort_1
  %exp.0 = phi i32 [ 0, %sort_1 ], [ %add, %for.inc26 ]
  %valid_buffer.0 = phi i32 [ 0, %sort_1 ], [ %valid_buffer.1, %for.inc26 ]
  call void @llvm.dbg.value(metadata i32 %valid_buffer.0, metadata !338, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata i32 %exp.0, metadata !336, metadata !DIExpression()), !dbg !337
  %cmp4 = icmp slt i32 %exp.0, 32, !dbg !375
  br i1 %cmp4, label %for.body5, label %for.end27, !dbg !377

for.body5:                                        ; preds = %for.cond3
  %arraydecay = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !378
  call void @init(i32* %arraydecay), !dbg !380
  %cmp6 = icmp eq i32 %valid_buffer.0, 0, !dbg !381
  br i1 %cmp6, label %if.then, label %if.else, !dbg !383

if.then:                                          ; preds = %for.body5
  %arraydecay7 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !384
  %arraydecay8 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i32 0, i32 0, !dbg !386
  call void @hist(i32* %arraydecay7, i32* %arraydecay8, i32 %exp.0), !dbg !387
  br label %if.end, !dbg !388

if.else:                                          ; preds = %for.body5
  %arraydecay9 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !389
  %arraydecay10 = getelementptr inbounds [2048 x i32], [2048 x i32]* %b, i32 0, i32 0, !dbg !391
  call void @hist(i32* %arraydecay9, i32* %arraydecay10, i32 %exp.0), !dbg !392
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay11 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !393
  call void @local_scan(i32* %arraydecay11), !dbg !394
  %arraydecay12 = getelementptr inbounds [128 x i32], [128 x i32]* %sum, i32 0, i32 0, !dbg !395
  %arraydecay13 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !396
  call void @sum_scan(i32* %arraydecay12, i32* %arraydecay13), !dbg !397
  %arraydecay14 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !398
  %arraydecay15 = getelementptr inbounds [128 x i32], [128 x i32]* %sum, i32 0, i32 0, !dbg !399
  call void @last_step_scan(i32* %arraydecay14, i32* %arraydecay15), !dbg !400
  %cmp16 = icmp eq i32 %valid_buffer.0, 0, !dbg !401
  br i1 %cmp16, label %if.then17, label %if.else21, !dbg !403

if.then17:                                        ; preds = %if.end
  %arraydecay18 = getelementptr inbounds [2048 x i32], [2048 x i32]* %b, i32 0, i32 0, !dbg !404
  %arraydecay19 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !406
  %arraydecay20 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i32 0, i32 0, !dbg !407
  call void @update(i32* %arraydecay18, i32* %arraydecay19, i32* %arraydecay20, i32 %exp.0), !dbg !408
  call void @llvm.dbg.value(metadata i32 1, metadata !338, metadata !DIExpression()), !dbg !339
  br label %if.end25, !dbg !409

if.else21:                                        ; preds = %if.end
  %arraydecay22 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i32 0, i32 0, !dbg !410
  %arraydecay23 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !412
  %arraydecay24 = getelementptr inbounds [2048 x i32], [2048 x i32]* %b, i32 0, i32 0, !dbg !413
  call void @update(i32* %arraydecay22, i32* %arraydecay23, i32* %arraydecay24, i32 %exp.0), !dbg !414
  call void @llvm.dbg.value(metadata i32 0, metadata !338, metadata !DIExpression()), !dbg !339
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then17
  %valid_buffer.1 = phi i32 [ 1, %if.then17 ], [ 0, %if.else21 ]
  call void @llvm.dbg.value(metadata i32 %valid_buffer.1, metadata !338, metadata !DIExpression()), !dbg !339
  br label %for.inc26, !dbg !415

for.inc26:                                        ; preds = %if.end25
  %add = add nsw i32 %exp.0, 2, !dbg !416
  call void @llvm.dbg.value(metadata i32 %add, metadata !336, metadata !DIExpression()), !dbg !337
  br label %for.cond3, !dbg !417, !llvm.loop !418

for.end27:                                        ; preds = %for.cond3
  %arraydecay28 = getelementptr inbounds [2048 x i32], [2048 x i32]* %b, i32 0, i32 0, !dbg !421
  call void @stream_write(i32 2048, i32* %xb, i32* %arraydecay28), !dbg !422
  %5 = bitcast [128 x i32]* %sum to i8*, !dbg !423
  call void @llvm.lifetime.end.p0i8(i64 512, i8* %5) #8, !dbg !423
  %6 = bitcast [2048 x i32]* %bucket to i8*, !dbg !423
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* %6) #8, !dbg !423
  %7 = bitcast [2048 x i32]* %b to i8*, !dbg !423
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* %7) #8, !dbg !423
  %8 = bitcast [2048 x i32]* %a to i8*, !dbg !423
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* %8) #8, !dbg !423
  ret void, !dbg !423
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
attributes #5 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="65536" "xlx.source"="user" }
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="4096" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}
!llvm.module.flags = !{!4, !5, !6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/workspace/examples/sort_radix/sort_radix_prj/solution/.autopilot/db/sort_radix.pp.0.c", directory: "/workspace/examples/sort_radix")
!2 = !{}
!3 = !{!"clang version 7.0.0 "}
!4 = !{i32 2, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = distinct !DISubprogram(name: "local_scan", scope: !8, file: !8, line: 25, type: !9, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "sort_radix.c", directory: "/workspace/examples/sort_radix")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "bucket", arg: 1, scope: !7, file: !8, line: 25, type: !11)
!14 = !DILocation(line: 25, column: 21, scope: !7)
!15 = !DILocation(line: 26, column: 3, scope: !7)
!16 = !DILocalVariable(name: "radixID", scope: !7, file: !8, line: 26, type: !12)
!17 = !DILocation(line: 26, column: 7, scope: !7)
!18 = !DILocation(line: 28, column: 8, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !8, line: 28, column: 3)
!20 = !DILocation(line: 28, column: 29, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !8, line: 28, column: 3)
!22 = !DILocation(line: 28, column: 3, scope: !19)
!23 = !DILocation(line: 28, column: 55, scope: !21)
!24 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 26, type: !12)
!25 = !DILocation(line: 26, column: 16, scope: !7)
!26 = !DILocation(line: 30, column: 10, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !8, line: 30, column: 5)
!28 = distinct !DILexicalBlock(scope: !21, file: !8, line: 28, column: 55)
!29 = !DILocation(line: 30, column: 19, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !8, line: 30, column: 5)
!31 = !DILocation(line: 30, column: 5, scope: !27)
!32 = !DILocation(line: 31, column: 29, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !8, line: 30, column: 30)
!34 = !DILocation(line: 31, column: 34, scope: !33)
!35 = !DILocalVariable(name: "bucket_indx", scope: !7, file: !8, line: 26, type: !12)
!36 = !DILocation(line: 26, column: 19, scope: !7)
!37 = !DILocation(line: 32, column: 29, scope: !33)
!38 = !DILocation(line: 32, column: 70, scope: !33)
!39 = !DILocation(line: 32, column: 51, scope: !33)
!40 = !DILocation(line: 32, column: 49, scope: !33)
!41 = !DILocation(line: 32, column: 7, scope: !33)
!42 = !DILocation(line: 32, column: 27, scope: !33)
!43 = !DILocation(line: 33, column: 5, scope: !33)
!44 = !DILocation(line: 30, column: 26, scope: !30)
!45 = !DILocation(line: 30, column: 5, scope: !30)
!46 = distinct !{!46, !31, !47, !48}
!47 = !DILocation(line: 33, column: 5, scope: !27)
!48 = !{!"llvm.loop.name", !"local_2"}
!49 = !DILocation(line: 34, column: 3, scope: !28)
!50 = !DILocation(line: 28, column: 51, scope: !21)
!51 = !DILocation(line: 28, column: 3, scope: !21)
!52 = distinct !{!52, !22, !53, !54}
!53 = !DILocation(line: 34, column: 3, scope: !19)
!54 = !{!"llvm.loop.name", !"local_1"}
!55 = !DILocation(line: 35, column: 1, scope: !7)
!56 = distinct !DISubprogram(name: "sum_scan", scope: !8, file: !8, line: 37, type: !57, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !11, !11}
!59 = !DILocalVariable(name: "sum", arg: 1, scope: !56, file: !8, line: 37, type: !11)
!60 = !DILocation(line: 37, column: 19, scope: !56)
!61 = !DILocalVariable(name: "bucket", arg: 2, scope: !56, file: !8, line: 37, type: !11)
!62 = !DILocation(line: 37, column: 41, scope: !56)
!63 = !DILocation(line: 39, column: 3, scope: !56)
!64 = !DILocation(line: 39, column: 10, scope: !56)
!65 = !DILocalVariable(name: "temp", scope: !56, file: !8, line: 40, type: !12)
!66 = !DILocation(line: 40, column: 7, scope: !56)
!67 = !DILocation(line: 40, column: 3, scope: !56)
!68 = !DILocalVariable(name: "radixID", scope: !56, file: !8, line: 38, type: !12)
!69 = !DILocation(line: 38, column: 7, scope: !56)
!70 = !DILocation(line: 43, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !56, file: !8, line: 43, column: 3)
!72 = !DILocation(line: 43, column: 29, scope: !73)
!73 = distinct !DILexicalBlock(scope: !71, file: !8, line: 43, column: 3)
!74 = !DILocation(line: 43, column: 3, scope: !71)
!75 = !DILocation(line: 44, column: 27, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !8, line: 43, column: 55)
!77 = !DILocalVariable(name: "bucket_indx", scope: !56, file: !8, line: 38, type: !12)
!78 = !DILocation(line: 38, column: 16, scope: !56)
!79 = !DILocation(line: 45, column: 13, scope: !76)
!80 = !DILocation(line: 45, column: 10, scope: !76)
!81 = !DILocation(line: 46, column: 5, scope: !76)
!82 = !DILocation(line: 46, column: 18, scope: !76)
!83 = !DILocation(line: 47, column: 3, scope: !76)
!84 = !DILocation(line: 43, column: 51, scope: !73)
!85 = !DILocation(line: 43, column: 3, scope: !73)
!86 = distinct !{!86, !74, !87, !88}
!87 = !DILocation(line: 47, column: 3, scope: !71)
!88 = !{!"llvm.loop.name", !"sum_1"}
!89 = !DILocation(line: 48, column: 1, scope: !56)
!90 = distinct !DISubprogram(name: "last_step_scan", scope: !8, file: !8, line: 50, type: !57, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!91 = !DILocalVariable(name: "bucket", arg: 1, scope: !90, file: !8, line: 50, type: !11)
!92 = !DILocation(line: 50, column: 25, scope: !90)
!93 = !DILocalVariable(name: "sum", arg: 2, scope: !90, file: !8, line: 50, type: !11)
!94 = !DILocation(line: 50, column: 45, scope: !90)
!95 = !DILocation(line: 51, column: 3, scope: !90)
!96 = !DILocalVariable(name: "radixID", scope: !90, file: !8, line: 51, type: !12)
!97 = !DILocation(line: 51, column: 7, scope: !90)
!98 = !DILocation(line: 53, column: 8, scope: !99)
!99 = distinct !DILexicalBlock(scope: !90, file: !8, line: 53, column: 3)
!100 = !DILocation(line: 53, column: 29, scope: !101)
!101 = distinct !DILexicalBlock(scope: !99, file: !8, line: 53, column: 3)
!102 = !DILocation(line: 53, column: 3, scope: !99)
!103 = !DILocation(line: 53, column: 55, scope: !101)
!104 = !DILocalVariable(name: "i", scope: !90, file: !8, line: 51, type: !12)
!105 = !DILocation(line: 51, column: 16, scope: !90)
!106 = !DILocation(line: 55, column: 10, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !8, line: 55, column: 5)
!108 = distinct !DILexicalBlock(scope: !101, file: !8, line: 53, column: 55)
!109 = !DILocation(line: 55, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !8, line: 55, column: 5)
!111 = !DILocation(line: 55, column: 5, scope: !107)
!112 = !DILocation(line: 56, column: 29, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !8, line: 55, column: 30)
!114 = !DILocation(line: 56, column: 34, scope: !113)
!115 = !DILocalVariable(name: "bucket_indx", scope: !90, file: !8, line: 51, type: !12)
!116 = !DILocation(line: 51, column: 19, scope: !90)
!117 = !DILocation(line: 57, column: 29, scope: !113)
!118 = !DILocation(line: 57, column: 51, scope: !113)
!119 = !DILocation(line: 57, column: 49, scope: !113)
!120 = !DILocation(line: 57, column: 7, scope: !113)
!121 = !DILocation(line: 57, column: 27, scope: !113)
!122 = !DILocation(line: 58, column: 5, scope: !113)
!123 = !DILocation(line: 55, column: 26, scope: !110)
!124 = !DILocation(line: 55, column: 5, scope: !110)
!125 = distinct !{!125, !111, !126, !127}
!126 = !DILocation(line: 58, column: 5, scope: !107)
!127 = !{!"llvm.loop.name", !"last_2"}
!128 = !DILocation(line: 59, column: 3, scope: !108)
!129 = !DILocation(line: 53, column: 51, scope: !101)
!130 = !DILocation(line: 53, column: 3, scope: !101)
!131 = distinct !{!131, !102, !132, !133}
!132 = !DILocation(line: 59, column: 3, scope: !99)
!133 = !{!"llvm.loop.name", !"last_1"}
!134 = !DILocation(line: 60, column: 1, scope: !90)
!135 = distinct !DISubprogram(name: "init", scope: !8, file: !8, line: 62, type: !9, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!136 = !DILocalVariable(name: "bucket", arg: 1, scope: !135, file: !8, line: 62, type: !11)
!137 = !DILocation(line: 62, column: 15, scope: !135)
!138 = !DILocation(line: 63, column: 3, scope: !135)
!139 = !DILocalVariable(name: "i", scope: !135, file: !8, line: 63, type: !12)
!140 = !DILocation(line: 63, column: 7, scope: !135)
!141 = !DILocation(line: 65, column: 8, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !8, line: 65, column: 3)
!143 = !DILocation(line: 65, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !142, file: !8, line: 65, column: 3)
!145 = !DILocation(line: 65, column: 3, scope: !142)
!146 = !DILocation(line: 66, column: 5, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !8, line: 65, column: 32)
!148 = !DILocation(line: 66, column: 15, scope: !147)
!149 = !DILocation(line: 67, column: 3, scope: !147)
!150 = !DILocation(line: 65, column: 28, scope: !144)
!151 = !DILocation(line: 65, column: 3, scope: !144)
!152 = distinct !{!152, !145, !153, !154}
!153 = !DILocation(line: 67, column: 3, scope: !142)
!154 = !{!"llvm.loop.name", !"init_1"}
!155 = !DILocation(line: 68, column: 1, scope: !135)
!156 = distinct !DISubprogram(name: "hist", scope: !8, file: !8, line: 70, type: !157, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !11, !11, !12}
!159 = !DILocalVariable(name: "bucket", arg: 1, scope: !156, file: !8, line: 70, type: !11)
!160 = !DILocation(line: 70, column: 15, scope: !156)
!161 = !DILocalVariable(name: "a", arg: 2, scope: !156, file: !8, line: 70, type: !11)
!162 = !DILocation(line: 70, column: 35, scope: !156)
!163 = !DILocalVariable(name: "exp", arg: 3, scope: !156, file: !8, line: 70, type: !12)
!164 = !DILocation(line: 70, column: 48, scope: !156)
!165 = !DILocalVariable(name: "blockID", scope: !156, file: !8, line: 71, type: !12)
!166 = !DILocation(line: 71, column: 7, scope: !156)
!167 = !DILocation(line: 72, column: 3, scope: !156)
!168 = !DILocation(line: 74, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !156, file: !8, line: 74, column: 3)
!170 = !DILocation(line: 74, column: 29, scope: !171)
!171 = distinct !DILexicalBlock(scope: !169, file: !8, line: 74, column: 3)
!172 = !DILocation(line: 74, column: 3, scope: !169)
!173 = !DILocation(line: 74, column: 47, scope: !171)
!174 = !DILocalVariable(name: "i", scope: !156, file: !8, line: 71, type: !12)
!175 = !DILocation(line: 71, column: 16, scope: !156)
!176 = !DILocation(line: 76, column: 10, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !8, line: 76, column: 5)
!178 = distinct !DILexicalBlock(scope: !171, file: !8, line: 74, column: 47)
!179 = !DILocation(line: 76, column: 19, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !8, line: 76, column: 5)
!181 = !DILocation(line: 76, column: 5, scope: !177)
!182 = !DILocation(line: 77, column: 24, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !8, line: 76, column: 29)
!184 = !DILocation(line: 77, column: 28, scope: !183)
!185 = !DILocalVariable(name: "a_indx", scope: !156, file: !8, line: 71, type: !12)
!186 = !DILocation(line: 71, column: 32, scope: !156)
!187 = !DILocation(line: 78, column: 23, scope: !183)
!188 = !DILocation(line: 78, column: 33, scope: !183)
!189 = !DILocation(line: 78, column: 41, scope: !183)
!190 = !DILocation(line: 78, column: 48, scope: !183)
!191 = !DILocation(line: 78, column: 54, scope: !183)
!192 = !DILocation(line: 78, column: 64, scope: !183)
!193 = !DILocalVariable(name: "bucket_indx", scope: !156, file: !8, line: 71, type: !12)
!194 = !DILocation(line: 71, column: 19, scope: !156)
!195 = !DILocation(line: 79, column: 23, scope: !196)
!196 = distinct !DILexicalBlock(scope: !183, file: !8, line: 79, column: 11)
!197 = !DILocation(line: 79, column: 11, scope: !183)
!198 = !DILocation(line: 80, column: 9, scope: !196)
!199 = !DILocation(line: 81, column: 29, scope: !183)
!200 = !DILocation(line: 81, column: 49, scope: !183)
!201 = !DILocation(line: 81, column: 7, scope: !183)
!202 = !DILocation(line: 81, column: 27, scope: !183)
!203 = !DILocation(line: 82, column: 5, scope: !183)
!204 = !DILocation(line: 76, column: 25, scope: !180)
!205 = !DILocation(line: 76, column: 5, scope: !180)
!206 = distinct !{!206, !181, !207, !208}
!207 = !DILocation(line: 82, column: 5, scope: !177)
!208 = !{!"llvm.loop.name", !"hist_2"}
!209 = !DILocation(line: 83, column: 3, scope: !178)
!210 = !DILocation(line: 74, column: 43, scope: !171)
!211 = !DILocation(line: 74, column: 3, scope: !171)
!212 = distinct !{!212, !172, !213, !214}
!213 = !DILocation(line: 83, column: 3, scope: !169)
!214 = !{!"llvm.loop.name", !"hist_1"}
!215 = !DILocation(line: 84, column: 1, scope: !156)
!216 = distinct !DISubprogram(name: "update", scope: !8, file: !8, line: 86, type: !217, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !11, !11, !11, !12}
!219 = !DILocalVariable(name: "b", arg: 1, scope: !216, file: !8, line: 86, type: !11)
!220 = !DILocation(line: 86, column: 17, scope: !216)
!221 = !DILocalVariable(name: "bucket", arg: 2, scope: !216, file: !8, line: 86, type: !11)
!222 = !DILocation(line: 86, column: 30, scope: !216)
!223 = !DILocalVariable(name: "a", arg: 3, scope: !216, file: !8, line: 86, type: !11)
!224 = !DILocation(line: 86, column: 50, scope: !216)
!225 = !DILocalVariable(name: "exp", arg: 4, scope: !216, file: !8, line: 86, type: !12)
!226 = !DILocation(line: 86, column: 63, scope: !216)
!227 = !DILocalVariable(name: "blockID", scope: !216, file: !8, line: 87, type: !12)
!228 = !DILocation(line: 87, column: 10, scope: !216)
!229 = !DILocation(line: 88, column: 3, scope: !216)
!230 = !DILocation(line: 91, column: 8, scope: !231)
!231 = distinct !DILexicalBlock(scope: !216, file: !8, line: 91, column: 3)
!232 = !DILocation(line: 91, column: 29, scope: !233)
!233 = distinct !DILexicalBlock(scope: !231, file: !8, line: 91, column: 3)
!234 = !DILocation(line: 91, column: 3, scope: !231)
!235 = !DILocation(line: 91, column: 47, scope: !233)
!236 = !DILocalVariable(name: "i", scope: !216, file: !8, line: 87, type: !12)
!237 = !DILocation(line: 87, column: 7, scope: !216)
!238 = !DILocation(line: 93, column: 10, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !8, line: 93, column: 5)
!240 = distinct !DILexicalBlock(scope: !233, file: !8, line: 91, column: 47)
!241 = !DILocation(line: 93, column: 19, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !8, line: 93, column: 5)
!243 = !DILocation(line: 93, column: 5, scope: !239)
!244 = !DILocation(line: 95, column: 23, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !8, line: 93, column: 29)
!246 = !DILocation(line: 95, column: 27, scope: !245)
!247 = !DILocation(line: 95, column: 13, scope: !245)
!248 = !DILocation(line: 95, column: 32, scope: !245)
!249 = !DILocation(line: 95, column: 40, scope: !245)
!250 = !DILocation(line: 95, column: 47, scope: !245)
!251 = !DILocation(line: 95, column: 53, scope: !245)
!252 = !DILocalVariable(name: "bucket_indx", scope: !216, file: !8, line: 87, type: !12)
!253 = !DILocation(line: 87, column: 19, scope: !216)
!254 = !DILocation(line: 97, column: 24, scope: !245)
!255 = !DILocation(line: 97, column: 28, scope: !245)
!256 = !DILocalVariable(name: "a_indx", scope: !216, file: !8, line: 87, type: !12)
!257 = !DILocation(line: 87, column: 32, scope: !216)
!258 = !DILocation(line: 98, column: 32, scope: !245)
!259 = !DILocation(line: 98, column: 9, scope: !245)
!260 = !DILocation(line: 98, column: 7, scope: !245)
!261 = !DILocation(line: 98, column: 30, scope: !245)
!262 = !DILocation(line: 99, column: 23, scope: !263)
!263 = distinct !DILexicalBlock(scope: !245, file: !8, line: 99, column: 11)
!264 = !DILocation(line: 99, column: 11, scope: !245)
!265 = !DILocation(line: 100, column: 9, scope: !263)
!266 = !DILocation(line: 101, column: 29, scope: !245)
!267 = !DILocation(line: 101, column: 49, scope: !245)
!268 = !DILocation(line: 101, column: 7, scope: !245)
!269 = !DILocation(line: 101, column: 27, scope: !245)
!270 = !DILocation(line: 102, column: 5, scope: !245)
!271 = !DILocation(line: 93, column: 25, scope: !242)
!272 = !DILocation(line: 93, column: 5, scope: !242)
!273 = distinct !{!273, !243, !274, !275}
!274 = !DILocation(line: 102, column: 5, scope: !239)
!275 = !{!"llvm.loop.name", !"update_2"}
!276 = !DILocation(line: 103, column: 3, scope: !240)
!277 = !DILocation(line: 91, column: 43, scope: !233)
!278 = !DILocation(line: 91, column: 3, scope: !233)
!279 = distinct !{!279, !234, !280, !281}
!280 = !DILocation(line: 103, column: 3, scope: !231)
!281 = !{!"llvm.loop.name", !"update_1"}
!282 = !DILocation(line: 104, column: 1, scope: !216)
!283 = distinct !DISubprogram(name: "stream_write", scope: !8, file: !8, line: 106, type: !284, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286, !11, !11}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 23, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !288, line: 26, baseType: !289)
!288 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/workspace/examples/sort_radix")
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !290, line: 42, baseType: !291)
!290 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/workspace/examples/sort_radix")
!291 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!292 = !DILocalVariable(name: "size", arg: 1, scope: !283, file: !8, line: 106, type: !286)
!293 = !DILocation(line: 106, column: 23, scope: !283)
!294 = !DILocalVariable(name: "array1", arg: 2, scope: !283, file: !8, line: 106, type: !11)
!295 = !DILocation(line: 106, column: 34, scope: !283)
!296 = !DILocalVariable(name: "array2", arg: 3, scope: !283, file: !8, line: 106, type: !11)
!297 = !DILocation(line: 106, column: 47, scope: !283)
!298 = !DILocation(line: 106, column: 55, scope: !283)
!299 = !DILocalVariable(name: "i", scope: !300, file: !8, line: 107, type: !12)
!300 = distinct !DILexicalBlock(scope: !283, file: !8, line: 107, column: 21)
!301 = !DILocation(line: 107, column: 30, scope: !300)
!302 = !DILocation(line: 107, column: 26, scope: !300)
!303 = !DILocation(line: 107, column: 39, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !8, line: 107, column: 21)
!305 = !DILocation(line: 107, column: 21, scope: !300)
!306 = !DILocation(line: 108, column: 17, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !8, line: 107, column: 52)
!308 = !DILocation(line: 108, column: 5, scope: !307)
!309 = !DILocation(line: 108, column: 15, scope: !307)
!310 = !DILocation(line: 109, column: 3, scope: !307)
!311 = !DILocation(line: 107, column: 48, scope: !304)
!312 = !DILocation(line: 107, column: 21, scope: !304)
!313 = distinct !{!313, !305, !314, !315}
!314 = !DILocation(line: 109, column: 3, scope: !300)
!315 = !{!"llvm.loop.name", !"VITIS_LOOP_107_1"}
!316 = !DILocation(line: 110, column: 1, scope: !283)
!317 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 112, type: !318, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !11, !11, !11, !11}
!320 = !{!321}
!321 = !{!"fpga.top", !"user", !322}
!322 = !DILocation(line: 112, column: 16, scope: !317)
!323 = !DILocalVariable(name: "xa", arg: 1, scope: !317, file: !8, line: 112, type: !11)
!324 = !DILocation(line: 112, column: 60, scope: !317)
!325 = !DILocalVariable(name: "xb", arg: 2, scope: !317, file: !8, line: 112, type: !11)
!326 = !DILocation(line: 112, column: 74, scope: !317)
!327 = !DILocalVariable(name: "xbucket", arg: 3, scope: !317, file: !8, line: 112, type: !11)
!328 = !DILocation(line: 112, column: 88, scope: !317)
!329 = !DILocalVariable(name: "xsum", arg: 4, scope: !317, file: !8, line: 113, type: !11)
!330 = !DILocation(line: 113, column: 18, scope: !317)
!331 = !DILocation(line: 114, column: 9, scope: !317)
!332 = !DILocation(line: 115, column: 9, scope: !317)
!333 = !DILocation(line: 116, column: 9, scope: !317)
!334 = !DILocation(line: 117, column: 9, scope: !317)
!335 = !DILocation(line: 118, column: 9, scope: !317)
!336 = !DILocalVariable(name: "exp", scope: !317, file: !8, line: 120, type: !12)
!337 = !DILocation(line: 120, column: 6, scope: !317)
!338 = !DILocalVariable(name: "valid_buffer", scope: !317, file: !8, line: 121, type: !12)
!339 = !DILocation(line: 121, column: 7, scope: !317)
!340 = !DILocation(line: 125, column: 3, scope: !317)
!341 = !DILocalVariable(name: "a", scope: !317, file: !8, line: 125, type: !342)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 65536, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 2048)
!345 = !DILocation(line: 125, column: 7, scope: !317)
!346 = !DILocation(line: 126, column: 3, scope: !317)
!347 = !DILocalVariable(name: "b", scope: !317, file: !8, line: 126, type: !342)
!348 = !DILocation(line: 126, column: 7, scope: !317)
!349 = !DILocation(line: 127, column: 3, scope: !317)
!350 = !DILocalVariable(name: "bucket", scope: !317, file: !8, line: 127, type: !342)
!351 = !DILocation(line: 127, column: 7, scope: !317)
!352 = !DILocation(line: 128, column: 3, scope: !317)
!353 = !DILocalVariable(name: "sum", scope: !317, file: !8, line: 128, type: !354)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 4096, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 128)
!357 = !DILocation(line: 128, column: 7, scope: !317)
!358 = !DILocalVariable(name: "i", scope: !359, file: !8, line: 130, type: !12)
!359 = distinct !DILexicalBlock(scope: !317, file: !8, line: 130, column: 21)
!360 = !DILocation(line: 130, column: 30, scope: !359)
!361 = !DILocation(line: 130, column: 26, scope: !359)
!362 = !DILocation(line: 130, column: 39, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !8, line: 130, column: 21)
!364 = !DILocation(line: 130, column: 21, scope: !359)
!365 = !DILocation(line: 131, column: 12, scope: !363)
!366 = !DILocation(line: 131, column: 5, scope: !363)
!367 = !DILocation(line: 131, column: 10, scope: !363)
!368 = !DILocation(line: 130, column: 48, scope: !363)
!369 = !DILocation(line: 130, column: 21, scope: !363)
!370 = distinct !{!370, !364, !371, !372}
!371 = !DILocation(line: 131, column: 16, scope: !359)
!372 = !{!"llvm.loop.name", !"VITIS_LOOP_130_1"}
!373 = !DILocation(line: 134, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !317, file: !8, line: 134, column: 3)
!375 = !DILocation(line: 134, column: 21, scope: !376)
!376 = distinct !DILexicalBlock(scope: !374, file: !8, line: 134, column: 3)
!377 = !DILocation(line: 134, column: 3, scope: !374)
!378 = !DILocation(line: 135, column: 10, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !8, line: 134, column: 37)
!380 = !DILocation(line: 135, column: 5, scope: !379)
!381 = !DILocation(line: 136, column: 22, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !8, line: 136, column: 9)
!383 = !DILocation(line: 136, column: 9, scope: !379)
!384 = !DILocation(line: 137, column: 12, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !8, line: 136, column: 28)
!386 = !DILocation(line: 137, column: 20, scope: !385)
!387 = !DILocation(line: 137, column: 7, scope: !385)
!388 = !DILocation(line: 138, column: 5, scope: !385)
!389 = !DILocation(line: 139, column: 12, scope: !390)
!390 = distinct !DILexicalBlock(scope: !382, file: !8, line: 138, column: 12)
!391 = !DILocation(line: 139, column: 20, scope: !390)
!392 = !DILocation(line: 139, column: 7, scope: !390)
!393 = !DILocation(line: 142, column: 16, scope: !379)
!394 = !DILocation(line: 142, column: 5, scope: !379)
!395 = !DILocation(line: 143, column: 14, scope: !379)
!396 = !DILocation(line: 143, column: 19, scope: !379)
!397 = !DILocation(line: 143, column: 5, scope: !379)
!398 = !DILocation(line: 144, column: 20, scope: !379)
!399 = !DILocation(line: 144, column: 28, scope: !379)
!400 = !DILocation(line: 144, column: 5, scope: !379)
!401 = !DILocation(line: 146, column: 22, scope: !402)
!402 = distinct !DILexicalBlock(scope: !379, file: !8, line: 146, column: 9)
!403 = !DILocation(line: 146, column: 9, scope: !379)
!404 = !DILocation(line: 147, column: 14, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !8, line: 146, column: 28)
!406 = !DILocation(line: 147, column: 17, scope: !405)
!407 = !DILocation(line: 147, column: 25, scope: !405)
!408 = !DILocation(line: 147, column: 7, scope: !405)
!409 = !DILocation(line: 149, column: 5, scope: !405)
!410 = !DILocation(line: 150, column: 14, scope: !411)
!411 = distinct !DILexicalBlock(scope: !402, file: !8, line: 149, column: 12)
!412 = !DILocation(line: 150, column: 17, scope: !411)
!413 = !DILocation(line: 150, column: 25, scope: !411)
!414 = !DILocation(line: 150, column: 7, scope: !411)
!415 = !DILocation(line: 153, column: 3, scope: !379)
!416 = !DILocation(line: 134, column: 31, scope: !376)
!417 = !DILocation(line: 134, column: 3, scope: !376)
!418 = distinct !{!418, !377, !419, !420}
!419 = !DILocation(line: 153, column: 3, scope: !374)
!420 = !{!"llvm.loop.name", !"sort_1"}
!421 = !DILocation(line: 154, column: 26, scope: !317)
!422 = !DILocation(line: 154, column: 3, scope: !317)
!423 = !DILocation(line: 155, column: 1, scope: !317)
