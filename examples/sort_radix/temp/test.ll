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
define void @hls_top(i32* "fpga.decayed.dim.hint"="2048" %xa, i32* "fpga.decayed.dim.hint"="2048" %xb, i32* "fpga.decayed.dim.hint"="2048" %xbucket, i32* "fpga.decayed.dim.hint"="128" %xsum) #3 !dbg !283 !fpga.function.pragma !286 {
entry:
  %a = alloca [2048 x i32], align 4
  %b = alloca [2048 x i32], align 4
  %bucket = alloca [2048 x i32], align 4
  %sum = alloca [128 x i32], align 4
  call void @llvm.dbg.value(metadata i32* %xa, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.value(metadata i32* %xb, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32* %xbucket, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32* %xsum, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xa, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !297
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xb, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !298
  call void @llvm.sideeffect() #5 [ "xlx_m_axi"(i32* %xbucket, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !299
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %xsum, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !300
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !301
  call void @llvm.dbg.value(metadata i32 0, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 0, metadata !304, metadata !DIExpression()), !dbg !305
  %0 = bitcast [2048 x i32]* %a to i8*, !dbg !306
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* %0) #8, !dbg !306
  call void @llvm.dbg.declare(metadata [2048 x i32]* %a, metadata !307, metadata !DIExpression()), !dbg !311
  %1 = bitcast [2048 x i32]* %b to i8*, !dbg !312
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* %1) #8, !dbg !312
  call void @llvm.dbg.declare(metadata [2048 x i32]* %b, metadata !313, metadata !DIExpression()), !dbg !314
  %2 = bitcast [2048 x i32]* %bucket to i8*, !dbg !315
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* %2) #8, !dbg !315
  call void @llvm.dbg.declare(metadata [2048 x i32]* %bucket, metadata !316, metadata !DIExpression()), !dbg !317
  %3 = bitcast [128 x i32]* %sum to i8*, !dbg !318
  call void @llvm.lifetime.start.p0i8(i64 512, i8* %3) #8, !dbg !318
  call void @llvm.dbg.declare(metadata [128 x i32]* %sum, metadata !319, metadata !DIExpression()), !dbg !323
  br label %VITIS_LOOP_121_1, !dbg !318

VITIS_LOOP_121_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !324, metadata !DIExpression()), !dbg !326
  br label %for.cond, !dbg !327

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_121_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_121_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !324, metadata !DIExpression()), !dbg !326
  %cmp = icmp slt i32 %i.0, 2048, !dbg !328
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !330

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !331
  %arrayidx = getelementptr inbounds i32, i32* %xa, i64 %idxprom, !dbg !331
  %4 = load i32, i32* %arrayidx, align 4, !dbg !331
  %idxprom1 = sext i32 %i.0 to i64, !dbg !332
  %arrayidx2 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i64 0, i64 %idxprom1, !dbg !332
  store i32 %4, i32* %arrayidx2, align 4, !dbg !333
  br label %for.inc, !dbg !332

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !334
  call void @llvm.dbg.value(metadata i32 %inc, metadata !324, metadata !DIExpression()), !dbg !326
  br label %for.cond, !dbg !335, !llvm.loop !336

for.end:                                          ; preds = %for.cond.cleanup
  br label %sort_1, !dbg !337

sort_1:                                           ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !302, metadata !DIExpression()), !dbg !303
  br label %for.cond3, !dbg !339

for.cond3:                                        ; preds = %for.inc26, %sort_1
  %exp.0 = phi i32 [ 0, %sort_1 ], [ %add, %for.inc26 ]
  %valid_buffer.0 = phi i32 [ 0, %sort_1 ], [ %valid_buffer.1, %for.inc26 ]
  call void @llvm.dbg.value(metadata i32 %valid_buffer.0, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.value(metadata i32 %exp.0, metadata !302, metadata !DIExpression()), !dbg !303
  %cmp4 = icmp slt i32 %exp.0, 32, !dbg !341
  br i1 %cmp4, label %for.body5, label %for.end27, !dbg !343

for.body5:                                        ; preds = %for.cond3
  %arraydecay = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !344
  call void @init(i32* %arraydecay), !dbg !346
  %cmp6 = icmp eq i32 %valid_buffer.0, 0, !dbg !347
  br i1 %cmp6, label %if.then, label %if.else, !dbg !349

if.then:                                          ; preds = %for.body5
  %arraydecay7 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !350
  %arraydecay8 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i32 0, i32 0, !dbg !352
  call void @hist(i32* %arraydecay7, i32* %arraydecay8, i32 %exp.0), !dbg !353
  br label %if.end, !dbg !354

if.else:                                          ; preds = %for.body5
  %arraydecay9 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !355
  %arraydecay10 = getelementptr inbounds [2048 x i32], [2048 x i32]* %b, i32 0, i32 0, !dbg !357
  call void @hist(i32* %arraydecay9, i32* %arraydecay10, i32 %exp.0), !dbg !358
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay11 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !359
  call void @local_scan(i32* %arraydecay11), !dbg !360
  %arraydecay12 = getelementptr inbounds [128 x i32], [128 x i32]* %sum, i32 0, i32 0, !dbg !361
  %arraydecay13 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !362
  call void @sum_scan(i32* %arraydecay12, i32* %arraydecay13), !dbg !363
  %arraydecay14 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !364
  %arraydecay15 = getelementptr inbounds [128 x i32], [128 x i32]* %sum, i32 0, i32 0, !dbg !365
  call void @last_step_scan(i32* %arraydecay14, i32* %arraydecay15), !dbg !366
  %cmp16 = icmp eq i32 %valid_buffer.0, 0, !dbg !367
  br i1 %cmp16, label %if.then17, label %if.else21, !dbg !369

if.then17:                                        ; preds = %if.end
  %arraydecay18 = getelementptr inbounds [2048 x i32], [2048 x i32]* %b, i32 0, i32 0, !dbg !370
  %arraydecay19 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !372
  %arraydecay20 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i32 0, i32 0, !dbg !373
  call void @update(i32* %arraydecay18, i32* %arraydecay19, i32* %arraydecay20, i32 %exp.0), !dbg !374
  call void @llvm.dbg.value(metadata i32 1, metadata !304, metadata !DIExpression()), !dbg !305
  br label %if.end25, !dbg !375

if.else21:                                        ; preds = %if.end
  %arraydecay22 = getelementptr inbounds [2048 x i32], [2048 x i32]* %a, i32 0, i32 0, !dbg !376
  %arraydecay23 = getelementptr inbounds [2048 x i32], [2048 x i32]* %bucket, i32 0, i32 0, !dbg !378
  %arraydecay24 = getelementptr inbounds [2048 x i32], [2048 x i32]* %b, i32 0, i32 0, !dbg !379
  call void @update(i32* %arraydecay22, i32* %arraydecay23, i32* %arraydecay24, i32 %exp.0), !dbg !380
  call void @llvm.dbg.value(metadata i32 0, metadata !304, metadata !DIExpression()), !dbg !305
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then17
  %valid_buffer.1 = phi i32 [ 1, %if.then17 ], [ 0, %if.else21 ]
  call void @llvm.dbg.value(metadata i32 %valid_buffer.1, metadata !304, metadata !DIExpression()), !dbg !305
  br label %for.inc26, !dbg !381

for.inc26:                                        ; preds = %if.end25
  %add = add nsw i32 %exp.0, 2, !dbg !382
  call void @llvm.dbg.value(metadata i32 %add, metadata !302, metadata !DIExpression()), !dbg !303
  br label %for.cond3, !dbg !383, !llvm.loop !384

for.end27:                                        ; preds = %for.cond3
  br label %VITIS_LOOP_146_2, !dbg !385

VITIS_LOOP_146_2:                                 ; preds = %for.end27
  call void @llvm.dbg.value(metadata i32 0, metadata !387, metadata !DIExpression()), !dbg !389
  br label %for.cond29, !dbg !390

for.cond29:                                       ; preds = %for.inc37, %VITIS_LOOP_146_2
  %i28.0 = phi i32 [ 0, %VITIS_LOOP_146_2 ], [ %inc38, %for.inc37 ]
  call void @llvm.dbg.value(metadata i32 %i28.0, metadata !387, metadata !DIExpression()), !dbg !389
  %cmp30 = icmp slt i32 %i28.0, 2048, !dbg !391
  br i1 %cmp30, label %for.body32, label %for.cond.cleanup31, !dbg !393

for.cond.cleanup31:                               ; preds = %for.cond29
  br label %for.end39

for.body32:                                       ; preds = %for.cond29
  %idxprom33 = sext i32 %i28.0 to i64, !dbg !394
  %arrayidx34 = getelementptr inbounds [2048 x i32], [2048 x i32]* %b, i64 0, i64 %idxprom33, !dbg !394
  %5 = load i32, i32* %arrayidx34, align 4, !dbg !394
  %idxprom35 = sext i32 %i28.0 to i64, !dbg !395
  %arrayidx36 = getelementptr inbounds i32, i32* %xb, i64 %idxprom35, !dbg !395
  store i32 %5, i32* %arrayidx36, align 4, !dbg !396
  br label %for.inc37, !dbg !395

for.inc37:                                        ; preds = %for.body32
  %inc38 = add nsw i32 %i28.0, 1, !dbg !397
  call void @llvm.dbg.value(metadata i32 %inc38, metadata !387, metadata !DIExpression()), !dbg !389
  br label %for.cond29, !dbg !398, !llvm.loop !399

for.end39:                                        ; preds = %for.cond.cleanup31
  %6 = bitcast [128 x i32]* %sum to i8*, !dbg !402
  call void @llvm.lifetime.end.p0i8(i64 512, i8* %6) #8, !dbg !402
  %7 = bitcast [2048 x i32]* %bucket to i8*, !dbg !402
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* %7) #8, !dbg !402
  %8 = bitcast [2048 x i32]* %b to i8*, !dbg !402
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* %8) #8, !dbg !402
  %9 = bitcast [2048 x i32]* %a to i8*, !dbg !402
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* %9) #8, !dbg !402
  ret void, !dbg !402
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
!7 = distinct !DISubprogram(name: "local_scan", scope: !8, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DIFile(filename: "sort_radix.c", directory: "/workspace/examples/sort_radix")
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "bucket", arg: 1, scope: !7, file: !8, line: 22, type: !11)
!14 = !DILocation(line: 22, column: 21, scope: !7)
!15 = !DILocation(line: 23, column: 3, scope: !7)
!16 = !DILocalVariable(name: "radixID", scope: !7, file: !8, line: 23, type: !12)
!17 = !DILocation(line: 23, column: 7, scope: !7)
!18 = !DILocation(line: 25, column: 8, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !8, line: 25, column: 3)
!20 = !DILocation(line: 25, column: 29, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !8, line: 25, column: 3)
!22 = !DILocation(line: 25, column: 3, scope: !19)
!23 = !DILocation(line: 25, column: 55, scope: !21)
!24 = !DILocalVariable(name: "i", scope: !7, file: !8, line: 23, type: !12)
!25 = !DILocation(line: 23, column: 16, scope: !7)
!26 = !DILocation(line: 27, column: 10, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !8, line: 27, column: 5)
!28 = distinct !DILexicalBlock(scope: !21, file: !8, line: 25, column: 55)
!29 = !DILocation(line: 27, column: 19, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !8, line: 27, column: 5)
!31 = !DILocation(line: 27, column: 5, scope: !27)
!32 = !DILocation(line: 28, column: 29, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !8, line: 27, column: 30)
!34 = !DILocation(line: 28, column: 34, scope: !33)
!35 = !DILocalVariable(name: "bucket_indx", scope: !7, file: !8, line: 23, type: !12)
!36 = !DILocation(line: 23, column: 19, scope: !7)
!37 = !DILocation(line: 29, column: 29, scope: !33)
!38 = !DILocation(line: 29, column: 70, scope: !33)
!39 = !DILocation(line: 29, column: 51, scope: !33)
!40 = !DILocation(line: 29, column: 49, scope: !33)
!41 = !DILocation(line: 29, column: 7, scope: !33)
!42 = !DILocation(line: 29, column: 27, scope: !33)
!43 = !DILocation(line: 30, column: 5, scope: !33)
!44 = !DILocation(line: 27, column: 26, scope: !30)
!45 = !DILocation(line: 27, column: 5, scope: !30)
!46 = distinct !{!46, !31, !47, !48}
!47 = !DILocation(line: 30, column: 5, scope: !27)
!48 = !{!"llvm.loop.name", !"local_2"}
!49 = !DILocation(line: 31, column: 3, scope: !28)
!50 = !DILocation(line: 25, column: 51, scope: !21)
!51 = !DILocation(line: 25, column: 3, scope: !21)
!52 = distinct !{!52, !22, !53, !54}
!53 = !DILocation(line: 31, column: 3, scope: !19)
!54 = !{!"llvm.loop.name", !"local_1"}
!55 = !DILocation(line: 32, column: 1, scope: !7)
!56 = distinct !DISubprogram(name: "sum_scan", scope: !8, file: !8, line: 34, type: !57, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !11, !11}
!59 = !DILocalVariable(name: "sum", arg: 1, scope: !56, file: !8, line: 34, type: !11)
!60 = !DILocation(line: 34, column: 19, scope: !56)
!61 = !DILocalVariable(name: "bucket", arg: 2, scope: !56, file: !8, line: 34, type: !11)
!62 = !DILocation(line: 34, column: 41, scope: !56)
!63 = !DILocation(line: 36, column: 3, scope: !56)
!64 = !DILocation(line: 36, column: 10, scope: !56)
!65 = !DILocalVariable(name: "temp", scope: !56, file: !8, line: 37, type: !12)
!66 = !DILocation(line: 37, column: 7, scope: !56)
!67 = !DILocation(line: 37, column: 3, scope: !56)
!68 = !DILocalVariable(name: "radixID", scope: !56, file: !8, line: 35, type: !12)
!69 = !DILocation(line: 35, column: 7, scope: !56)
!70 = !DILocation(line: 40, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !56, file: !8, line: 40, column: 3)
!72 = !DILocation(line: 40, column: 29, scope: !73)
!73 = distinct !DILexicalBlock(scope: !71, file: !8, line: 40, column: 3)
!74 = !DILocation(line: 40, column: 3, scope: !71)
!75 = !DILocation(line: 41, column: 27, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !8, line: 40, column: 55)
!77 = !DILocalVariable(name: "bucket_indx", scope: !56, file: !8, line: 35, type: !12)
!78 = !DILocation(line: 35, column: 16, scope: !56)
!79 = !DILocation(line: 42, column: 13, scope: !76)
!80 = !DILocation(line: 42, column: 10, scope: !76)
!81 = !DILocation(line: 43, column: 5, scope: !76)
!82 = !DILocation(line: 43, column: 18, scope: !76)
!83 = !DILocation(line: 44, column: 3, scope: !76)
!84 = !DILocation(line: 40, column: 51, scope: !73)
!85 = !DILocation(line: 40, column: 3, scope: !73)
!86 = distinct !{!86, !74, !87, !88}
!87 = !DILocation(line: 44, column: 3, scope: !71)
!88 = !{!"llvm.loop.name", !"sum_1"}
!89 = !DILocation(line: 45, column: 1, scope: !56)
!90 = distinct !DISubprogram(name: "last_step_scan", scope: !8, file: !8, line: 47, type: !57, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!91 = !DILocalVariable(name: "bucket", arg: 1, scope: !90, file: !8, line: 47, type: !11)
!92 = !DILocation(line: 47, column: 25, scope: !90)
!93 = !DILocalVariable(name: "sum", arg: 2, scope: !90, file: !8, line: 47, type: !11)
!94 = !DILocation(line: 47, column: 45, scope: !90)
!95 = !DILocation(line: 48, column: 3, scope: !90)
!96 = !DILocalVariable(name: "radixID", scope: !90, file: !8, line: 48, type: !12)
!97 = !DILocation(line: 48, column: 7, scope: !90)
!98 = !DILocation(line: 50, column: 8, scope: !99)
!99 = distinct !DILexicalBlock(scope: !90, file: !8, line: 50, column: 3)
!100 = !DILocation(line: 50, column: 29, scope: !101)
!101 = distinct !DILexicalBlock(scope: !99, file: !8, line: 50, column: 3)
!102 = !DILocation(line: 50, column: 3, scope: !99)
!103 = !DILocation(line: 50, column: 55, scope: !101)
!104 = !DILocalVariable(name: "i", scope: !90, file: !8, line: 48, type: !12)
!105 = !DILocation(line: 48, column: 16, scope: !90)
!106 = !DILocation(line: 52, column: 10, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !8, line: 52, column: 5)
!108 = distinct !DILexicalBlock(scope: !101, file: !8, line: 50, column: 55)
!109 = !DILocation(line: 52, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !8, line: 52, column: 5)
!111 = !DILocation(line: 52, column: 5, scope: !107)
!112 = !DILocation(line: 53, column: 29, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !8, line: 52, column: 30)
!114 = !DILocation(line: 53, column: 34, scope: !113)
!115 = !DILocalVariable(name: "bucket_indx", scope: !90, file: !8, line: 48, type: !12)
!116 = !DILocation(line: 48, column: 19, scope: !90)
!117 = !DILocation(line: 54, column: 29, scope: !113)
!118 = !DILocation(line: 54, column: 51, scope: !113)
!119 = !DILocation(line: 54, column: 49, scope: !113)
!120 = !DILocation(line: 54, column: 7, scope: !113)
!121 = !DILocation(line: 54, column: 27, scope: !113)
!122 = !DILocation(line: 55, column: 5, scope: !113)
!123 = !DILocation(line: 52, column: 26, scope: !110)
!124 = !DILocation(line: 52, column: 5, scope: !110)
!125 = distinct !{!125, !111, !126, !127}
!126 = !DILocation(line: 55, column: 5, scope: !107)
!127 = !{!"llvm.loop.name", !"last_2"}
!128 = !DILocation(line: 56, column: 3, scope: !108)
!129 = !DILocation(line: 50, column: 51, scope: !101)
!130 = !DILocation(line: 50, column: 3, scope: !101)
!131 = distinct !{!131, !102, !132, !133}
!132 = !DILocation(line: 56, column: 3, scope: !99)
!133 = !{!"llvm.loop.name", !"last_1"}
!134 = !DILocation(line: 57, column: 1, scope: !90)
!135 = distinct !DISubprogram(name: "init", scope: !8, file: !8, line: 59, type: !9, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!136 = !DILocalVariable(name: "bucket", arg: 1, scope: !135, file: !8, line: 59, type: !11)
!137 = !DILocation(line: 59, column: 15, scope: !135)
!138 = !DILocation(line: 60, column: 3, scope: !135)
!139 = !DILocalVariable(name: "i", scope: !135, file: !8, line: 60, type: !12)
!140 = !DILocation(line: 60, column: 7, scope: !135)
!141 = !DILocation(line: 62, column: 8, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !8, line: 62, column: 3)
!143 = !DILocation(line: 62, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !142, file: !8, line: 62, column: 3)
!145 = !DILocation(line: 62, column: 3, scope: !142)
!146 = !DILocation(line: 63, column: 5, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !8, line: 62, column: 32)
!148 = !DILocation(line: 63, column: 15, scope: !147)
!149 = !DILocation(line: 64, column: 3, scope: !147)
!150 = !DILocation(line: 62, column: 28, scope: !144)
!151 = !DILocation(line: 62, column: 3, scope: !144)
!152 = distinct !{!152, !145, !153, !154}
!153 = !DILocation(line: 64, column: 3, scope: !142)
!154 = !{!"llvm.loop.name", !"init_1"}
!155 = !DILocation(line: 65, column: 1, scope: !135)
!156 = distinct !DISubprogram(name: "hist", scope: !8, file: !8, line: 67, type: !157, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !11, !11, !12}
!159 = !DILocalVariable(name: "bucket", arg: 1, scope: !156, file: !8, line: 67, type: !11)
!160 = !DILocation(line: 67, column: 15, scope: !156)
!161 = !DILocalVariable(name: "a", arg: 2, scope: !156, file: !8, line: 67, type: !11)
!162 = !DILocation(line: 67, column: 35, scope: !156)
!163 = !DILocalVariable(name: "exp", arg: 3, scope: !156, file: !8, line: 67, type: !12)
!164 = !DILocation(line: 67, column: 48, scope: !156)
!165 = !DILocalVariable(name: "blockID", scope: !156, file: !8, line: 68, type: !12)
!166 = !DILocation(line: 68, column: 7, scope: !156)
!167 = !DILocation(line: 69, column: 3, scope: !156)
!168 = !DILocation(line: 71, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !156, file: !8, line: 71, column: 3)
!170 = !DILocation(line: 71, column: 29, scope: !171)
!171 = distinct !DILexicalBlock(scope: !169, file: !8, line: 71, column: 3)
!172 = !DILocation(line: 71, column: 3, scope: !169)
!173 = !DILocation(line: 71, column: 47, scope: !171)
!174 = !DILocalVariable(name: "i", scope: !156, file: !8, line: 68, type: !12)
!175 = !DILocation(line: 68, column: 16, scope: !156)
!176 = !DILocation(line: 73, column: 10, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !8, line: 73, column: 5)
!178 = distinct !DILexicalBlock(scope: !171, file: !8, line: 71, column: 47)
!179 = !DILocation(line: 73, column: 19, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !8, line: 73, column: 5)
!181 = !DILocation(line: 73, column: 5, scope: !177)
!182 = !DILocation(line: 74, column: 24, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !8, line: 73, column: 29)
!184 = !DILocation(line: 74, column: 28, scope: !183)
!185 = !DILocalVariable(name: "a_indx", scope: !156, file: !8, line: 68, type: !12)
!186 = !DILocation(line: 68, column: 32, scope: !156)
!187 = !DILocation(line: 75, column: 23, scope: !183)
!188 = !DILocation(line: 75, column: 33, scope: !183)
!189 = !DILocation(line: 75, column: 41, scope: !183)
!190 = !DILocation(line: 75, column: 48, scope: !183)
!191 = !DILocation(line: 75, column: 54, scope: !183)
!192 = !DILocation(line: 75, column: 64, scope: !183)
!193 = !DILocalVariable(name: "bucket_indx", scope: !156, file: !8, line: 68, type: !12)
!194 = !DILocation(line: 68, column: 19, scope: !156)
!195 = !DILocation(line: 76, column: 23, scope: !196)
!196 = distinct !DILexicalBlock(scope: !183, file: !8, line: 76, column: 11)
!197 = !DILocation(line: 76, column: 11, scope: !183)
!198 = !DILocation(line: 77, column: 9, scope: !196)
!199 = !DILocation(line: 78, column: 29, scope: !183)
!200 = !DILocation(line: 78, column: 49, scope: !183)
!201 = !DILocation(line: 78, column: 7, scope: !183)
!202 = !DILocation(line: 78, column: 27, scope: !183)
!203 = !DILocation(line: 79, column: 5, scope: !183)
!204 = !DILocation(line: 73, column: 25, scope: !180)
!205 = !DILocation(line: 73, column: 5, scope: !180)
!206 = distinct !{!206, !181, !207, !208}
!207 = !DILocation(line: 79, column: 5, scope: !177)
!208 = !{!"llvm.loop.name", !"hist_2"}
!209 = !DILocation(line: 80, column: 3, scope: !178)
!210 = !DILocation(line: 71, column: 43, scope: !171)
!211 = !DILocation(line: 71, column: 3, scope: !171)
!212 = distinct !{!212, !172, !213, !214}
!213 = !DILocation(line: 80, column: 3, scope: !169)
!214 = !{!"llvm.loop.name", !"hist_1"}
!215 = !DILocation(line: 81, column: 1, scope: !156)
!216 = distinct !DISubprogram(name: "update", scope: !8, file: !8, line: 83, type: !217, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !11, !11, !11, !12}
!219 = !DILocalVariable(name: "b", arg: 1, scope: !216, file: !8, line: 83, type: !11)
!220 = !DILocation(line: 83, column: 17, scope: !216)
!221 = !DILocalVariable(name: "bucket", arg: 2, scope: !216, file: !8, line: 83, type: !11)
!222 = !DILocation(line: 83, column: 30, scope: !216)
!223 = !DILocalVariable(name: "a", arg: 3, scope: !216, file: !8, line: 83, type: !11)
!224 = !DILocation(line: 83, column: 50, scope: !216)
!225 = !DILocalVariable(name: "exp", arg: 4, scope: !216, file: !8, line: 83, type: !12)
!226 = !DILocation(line: 83, column: 63, scope: !216)
!227 = !DILocalVariable(name: "blockID", scope: !216, file: !8, line: 84, type: !12)
!228 = !DILocation(line: 84, column: 10, scope: !216)
!229 = !DILocation(line: 85, column: 3, scope: !216)
!230 = !DILocation(line: 88, column: 8, scope: !231)
!231 = distinct !DILexicalBlock(scope: !216, file: !8, line: 88, column: 3)
!232 = !DILocation(line: 88, column: 29, scope: !233)
!233 = distinct !DILexicalBlock(scope: !231, file: !8, line: 88, column: 3)
!234 = !DILocation(line: 88, column: 3, scope: !231)
!235 = !DILocation(line: 88, column: 47, scope: !233)
!236 = !DILocalVariable(name: "i", scope: !216, file: !8, line: 84, type: !12)
!237 = !DILocation(line: 84, column: 7, scope: !216)
!238 = !DILocation(line: 90, column: 10, scope: !239)
!239 = distinct !DILexicalBlock(scope: !240, file: !8, line: 90, column: 5)
!240 = distinct !DILexicalBlock(scope: !233, file: !8, line: 88, column: 47)
!241 = !DILocation(line: 90, column: 19, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !8, line: 90, column: 5)
!243 = !DILocation(line: 90, column: 5, scope: !239)
!244 = !DILocation(line: 92, column: 23, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !8, line: 90, column: 29)
!246 = !DILocation(line: 92, column: 27, scope: !245)
!247 = !DILocation(line: 92, column: 13, scope: !245)
!248 = !DILocation(line: 92, column: 32, scope: !245)
!249 = !DILocation(line: 92, column: 40, scope: !245)
!250 = !DILocation(line: 92, column: 47, scope: !245)
!251 = !DILocation(line: 92, column: 53, scope: !245)
!252 = !DILocalVariable(name: "bucket_indx", scope: !216, file: !8, line: 84, type: !12)
!253 = !DILocation(line: 84, column: 19, scope: !216)
!254 = !DILocation(line: 94, column: 24, scope: !245)
!255 = !DILocation(line: 94, column: 28, scope: !245)
!256 = !DILocalVariable(name: "a_indx", scope: !216, file: !8, line: 84, type: !12)
!257 = !DILocation(line: 84, column: 32, scope: !216)
!258 = !DILocation(line: 95, column: 32, scope: !245)
!259 = !DILocation(line: 95, column: 9, scope: !245)
!260 = !DILocation(line: 95, column: 7, scope: !245)
!261 = !DILocation(line: 95, column: 30, scope: !245)
!262 = !DILocation(line: 96, column: 23, scope: !263)
!263 = distinct !DILexicalBlock(scope: !245, file: !8, line: 96, column: 11)
!264 = !DILocation(line: 96, column: 11, scope: !245)
!265 = !DILocation(line: 97, column: 9, scope: !263)
!266 = !DILocation(line: 98, column: 29, scope: !245)
!267 = !DILocation(line: 98, column: 49, scope: !245)
!268 = !DILocation(line: 98, column: 7, scope: !245)
!269 = !DILocation(line: 98, column: 27, scope: !245)
!270 = !DILocation(line: 99, column: 5, scope: !245)
!271 = !DILocation(line: 90, column: 25, scope: !242)
!272 = !DILocation(line: 90, column: 5, scope: !242)
!273 = distinct !{!273, !243, !274, !275}
!274 = !DILocation(line: 99, column: 5, scope: !239)
!275 = !{!"llvm.loop.name", !"update_2"}
!276 = !DILocation(line: 100, column: 3, scope: !240)
!277 = !DILocation(line: 88, column: 43, scope: !233)
!278 = !DILocation(line: 88, column: 3, scope: !233)
!279 = distinct !{!279, !234, !280, !281}
!280 = !DILocation(line: 100, column: 3, scope: !231)
!281 = !{!"llvm.loop.name", !"update_1"}
!282 = !DILocation(line: 101, column: 1, scope: !216)
!283 = distinct !DISubprogram(name: "hls_top", scope: !8, file: !8, line: 103, type: !284, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !11, !11, !11, !11}
!286 = !{!287}
!287 = !{!"fpga.top", !"user", !288}
!288 = !DILocation(line: 103, column: 16, scope: !283)
!289 = !DILocalVariable(name: "xa", arg: 1, scope: !283, file: !8, line: 103, type: !11)
!290 = !DILocation(line: 103, column: 60, scope: !283)
!291 = !DILocalVariable(name: "xb", arg: 2, scope: !283, file: !8, line: 103, type: !11)
!292 = !DILocation(line: 103, column: 74, scope: !283)
!293 = !DILocalVariable(name: "xbucket", arg: 3, scope: !283, file: !8, line: 103, type: !11)
!294 = !DILocation(line: 103, column: 88, scope: !283)
!295 = !DILocalVariable(name: "xsum", arg: 4, scope: !283, file: !8, line: 104, type: !11)
!296 = !DILocation(line: 104, column: 18, scope: !283)
!297 = !DILocation(line: 105, column: 9, scope: !283)
!298 = !DILocation(line: 106, column: 9, scope: !283)
!299 = !DILocation(line: 107, column: 9, scope: !283)
!300 = !DILocation(line: 108, column: 9, scope: !283)
!301 = !DILocation(line: 109, column: 9, scope: !283)
!302 = !DILocalVariable(name: "exp", scope: !283, file: !8, line: 111, type: !12)
!303 = !DILocation(line: 111, column: 6, scope: !283)
!304 = !DILocalVariable(name: "valid_buffer", scope: !283, file: !8, line: 112, type: !12)
!305 = !DILocation(line: 112, column: 7, scope: !283)
!306 = !DILocation(line: 116, column: 3, scope: !283)
!307 = !DILocalVariable(name: "a", scope: !283, file: !8, line: 116, type: !308)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 65536, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 2048)
!311 = !DILocation(line: 116, column: 7, scope: !283)
!312 = !DILocation(line: 117, column: 3, scope: !283)
!313 = !DILocalVariable(name: "b", scope: !283, file: !8, line: 117, type: !308)
!314 = !DILocation(line: 117, column: 7, scope: !283)
!315 = !DILocation(line: 118, column: 3, scope: !283)
!316 = !DILocalVariable(name: "bucket", scope: !283, file: !8, line: 118, type: !308)
!317 = !DILocation(line: 118, column: 7, scope: !283)
!318 = !DILocation(line: 119, column: 3, scope: !283)
!319 = !DILocalVariable(name: "sum", scope: !283, file: !8, line: 119, type: !320)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 4096, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 128)
!323 = !DILocation(line: 119, column: 7, scope: !283)
!324 = !DILocalVariable(name: "i", scope: !325, file: !8, line: 121, type: !12)
!325 = distinct !DILexicalBlock(scope: !283, file: !8, line: 121, column: 21)
!326 = !DILocation(line: 121, column: 30, scope: !325)
!327 = !DILocation(line: 121, column: 26, scope: !325)
!328 = !DILocation(line: 121, column: 39, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !8, line: 121, column: 21)
!330 = !DILocation(line: 121, column: 21, scope: !325)
!331 = !DILocation(line: 122, column: 12, scope: !329)
!332 = !DILocation(line: 122, column: 5, scope: !329)
!333 = !DILocation(line: 122, column: 10, scope: !329)
!334 = !DILocation(line: 121, column: 48, scope: !329)
!335 = !DILocation(line: 121, column: 21, scope: !329)
!336 = distinct !{!336, !330, !337, !338}
!337 = !DILocation(line: 122, column: 16, scope: !325)
!338 = !{!"llvm.loop.name", !"VITIS_LOOP_121_1"}
!339 = !DILocation(line: 125, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !283, file: !8, line: 125, column: 3)
!341 = !DILocation(line: 125, column: 21, scope: !342)
!342 = distinct !DILexicalBlock(scope: !340, file: !8, line: 125, column: 3)
!343 = !DILocation(line: 125, column: 3, scope: !340)
!344 = !DILocation(line: 126, column: 10, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !8, line: 125, column: 37)
!346 = !DILocation(line: 126, column: 5, scope: !345)
!347 = !DILocation(line: 127, column: 22, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !8, line: 127, column: 9)
!349 = !DILocation(line: 127, column: 9, scope: !345)
!350 = !DILocation(line: 128, column: 12, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !8, line: 127, column: 28)
!352 = !DILocation(line: 128, column: 20, scope: !351)
!353 = !DILocation(line: 128, column: 7, scope: !351)
!354 = !DILocation(line: 129, column: 5, scope: !351)
!355 = !DILocation(line: 130, column: 12, scope: !356)
!356 = distinct !DILexicalBlock(scope: !348, file: !8, line: 129, column: 12)
!357 = !DILocation(line: 130, column: 20, scope: !356)
!358 = !DILocation(line: 130, column: 7, scope: !356)
!359 = !DILocation(line: 133, column: 16, scope: !345)
!360 = !DILocation(line: 133, column: 5, scope: !345)
!361 = !DILocation(line: 134, column: 14, scope: !345)
!362 = !DILocation(line: 134, column: 19, scope: !345)
!363 = !DILocation(line: 134, column: 5, scope: !345)
!364 = !DILocation(line: 135, column: 20, scope: !345)
!365 = !DILocation(line: 135, column: 28, scope: !345)
!366 = !DILocation(line: 135, column: 5, scope: !345)
!367 = !DILocation(line: 137, column: 22, scope: !368)
!368 = distinct !DILexicalBlock(scope: !345, file: !8, line: 137, column: 9)
!369 = !DILocation(line: 137, column: 9, scope: !345)
!370 = !DILocation(line: 138, column: 14, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !8, line: 137, column: 28)
!372 = !DILocation(line: 138, column: 17, scope: !371)
!373 = !DILocation(line: 138, column: 25, scope: !371)
!374 = !DILocation(line: 138, column: 7, scope: !371)
!375 = !DILocation(line: 140, column: 5, scope: !371)
!376 = !DILocation(line: 141, column: 14, scope: !377)
!377 = distinct !DILexicalBlock(scope: !368, file: !8, line: 140, column: 12)
!378 = !DILocation(line: 141, column: 17, scope: !377)
!379 = !DILocation(line: 141, column: 25, scope: !377)
!380 = !DILocation(line: 141, column: 7, scope: !377)
!381 = !DILocation(line: 144, column: 3, scope: !345)
!382 = !DILocation(line: 125, column: 31, scope: !342)
!383 = !DILocation(line: 125, column: 3, scope: !342)
!384 = distinct !{!384, !343, !385, !386}
!385 = !DILocation(line: 144, column: 3, scope: !340)
!386 = !{!"llvm.loop.name", !"sort_1"}
!387 = !DILocalVariable(name: "i", scope: !388, file: !8, line: 146, type: !12)
!388 = distinct !DILexicalBlock(scope: !283, file: !8, line: 146, column: 21)
!389 = !DILocation(line: 146, column: 30, scope: !388)
!390 = !DILocation(line: 146, column: 26, scope: !388)
!391 = !DILocation(line: 146, column: 39, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !8, line: 146, column: 21)
!393 = !DILocation(line: 146, column: 21, scope: !388)
!394 = !DILocation(line: 147, column: 13, scope: !392)
!395 = !DILocation(line: 147, column: 5, scope: !392)
!396 = !DILocation(line: 147, column: 11, scope: !392)
!397 = !DILocation(line: 146, column: 48, scope: !392)
!398 = !DILocation(line: 146, column: 21, scope: !392)
!399 = distinct !{!399, !393, !400, !401}
!400 = !DILocation(line: 147, column: 16, scope: !388)
!401 = !{!"llvm.loop.name", !"VITIS_LOOP_146_2"}
!402 = !DILocation(line: 148, column: 1, scope: !283)
