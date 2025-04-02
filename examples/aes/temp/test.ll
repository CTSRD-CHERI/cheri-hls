; ModuleID = '/workspace/examples/aes/temp/test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

@sbox = constant [256 x i32] [i32 99, i32 124, i32 119, i32 123, i32 242, i32 107, i32 111, i32 197, i32 48, i32 1, i32 103, i32 43, i32 254, i32 215, i32 171, i32 118, i32 202, i32 130, i32 201, i32 125, i32 250, i32 89, i32 71, i32 240, i32 173, i32 212, i32 162, i32 175, i32 156, i32 164, i32 114, i32 192, i32 183, i32 253, i32 147, i32 38, i32 54, i32 63, i32 247, i32 204, i32 52, i32 165, i32 229, i32 241, i32 113, i32 216, i32 49, i32 21, i32 4, i32 199, i32 35, i32 195, i32 24, i32 150, i32 5, i32 154, i32 7, i32 18, i32 128, i32 226, i32 235, i32 39, i32 178, i32 117, i32 9, i32 131, i32 44, i32 26, i32 27, i32 110, i32 90, i32 160, i32 82, i32 59, i32 214, i32 179, i32 41, i32 227, i32 47, i32 132, i32 83, i32 209, i32 0, i32 237, i32 32, i32 252, i32 177, i32 91, i32 106, i32 203, i32 190, i32 57, i32 74, i32 76, i32 88, i32 207, i32 208, i32 239, i32 170, i32 251, i32 67, i32 77, i32 51, i32 133, i32 69, i32 249, i32 2, i32 127, i32 80, i32 60, i32 159, i32 168, i32 81, i32 163, i32 64, i32 143, i32 146, i32 157, i32 56, i32 245, i32 188, i32 182, i32 218, i32 33, i32 16, i32 255, i32 243, i32 210, i32 205, i32 12, i32 19, i32 236, i32 95, i32 151, i32 68, i32 23, i32 196, i32 167, i32 126, i32 61, i32 100, i32 93, i32 25, i32 115, i32 96, i32 129, i32 79, i32 220, i32 34, i32 42, i32 144, i32 136, i32 70, i32 238, i32 184, i32 20, i32 222, i32 94, i32 11, i32 219, i32 224, i32 50, i32 58, i32 10, i32 73, i32 6, i32 36, i32 92, i32 194, i32 211, i32 172, i32 98, i32 145, i32 149, i32 228, i32 121, i32 231, i32 200, i32 55, i32 109, i32 141, i32 213, i32 78, i32 169, i32 108, i32 86, i32 244, i32 234, i32 101, i32 122, i32 174, i32 8, i32 186, i32 120, i32 37, i32 46, i32 28, i32 166, i32 180, i32 198, i32 232, i32 221, i32 116, i32 31, i32 75, i32 189, i32 139, i32 138, i32 112, i32 62, i32 181, i32 102, i32 72, i32 3, i32 246, i32 14, i32 97, i32 53, i32 87, i32 185, i32 134, i32 193, i32 29, i32 158, i32 225, i32 248, i32 152, i32 17, i32 105, i32 217, i32 142, i32 148, i32 155, i32 30, i32 135, i32 233, i32 206, i32 85, i32 40, i32 223, i32 140, i32 161, i32 137, i32 13, i32 191, i32 230, i32 66, i32 104, i32 65, i32 153, i32 45, i32 15, i32 176, i32 84, i32 187, i32 22], align 4, !dbg !0
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

; Function Attrs: nounwind
define i32 @rj_xtime(i32 %x) #0 !dbg !16 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !19, metadata !DIExpression()), !dbg !20
  %and = and i32 %x, 128, !dbg !21
  %tobool = icmp ne i32 %and, 0, !dbg !21
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !22

cond.true:                                        ; preds = %entry
  %shl = shl i32 %x, 1, !dbg !23
  %xor = xor i32 %shl, 27, !dbg !24
  br label %cond.end, !dbg !22

cond.false:                                       ; preds = %entry
  %shl1 = shl i32 %x, 1, !dbg !25
  br label %cond.end, !dbg !22

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %shl1, %cond.false ], !dbg !22
  %and2 = and i32 %cond, 255, !dbg !26
  ret i32 %and2, !dbg !27
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
define void @aes_subBytes(i32* "fpga.decayed.dim.hint"="16" %buf) #0 !dbg !28 {
entry:
  call void @llvm.dbg.value(metadata i32* %buf, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32 16, metadata !34, metadata !DIExpression()), !dbg !35
  br label %sub, !dbg !36

sub:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata i32 15, metadata !34, metadata !DIExpression()), !dbg !35
  br label %for.cond, !dbg !37

for.cond:                                         ; preds = %for.inc, %sub
  %i.0 = phi i32 [ 15, %sub ], [ %dec, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !34, metadata !DIExpression()), !dbg !35
  %cmp = icmp slt i32 %i.0, 0, !dbg !39
  br i1 %cmp, label %for.body, label %for.end, !dbg !41

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !42
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !42
  %0 = load i32, i32* %arrayidx, align 4, !dbg !42
  %and = and i32 %0, 255, !dbg !43
  %idxprom1 = sext i32 %and to i64, !dbg !44
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom1, !dbg !44
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !44
  %idxprom3 = sext i32 %i.0 to i64, !dbg !45
  %arrayidx4 = getelementptr inbounds i32, i32* %buf, i64 %idxprom3, !dbg !45
  store i32 %1, i32* %arrayidx4, align 4, !dbg !46
  br label %for.inc, !dbg !45

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0, -1, !dbg !47
  call void @llvm.dbg.value(metadata i32 %dec, metadata !34, metadata !DIExpression()), !dbg !35
  br label %for.cond, !dbg !48, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  ret void, !dbg !52
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
define void @aes_addRoundKey(i32* "fpga.decayed.dim.hint"="16" %buf, i32* "fpga.decayed.dim.hint"="16" %aes_key) #0 !dbg !53 {
entry:
  call void @llvm.dbg.value(metadata i32* %buf, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32* %aes_key, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 16, metadata !60, metadata !DIExpression()), !dbg !61
  br label %addkey, !dbg !62

addkey:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 15, metadata !60, metadata !DIExpression()), !dbg !61
  br label %for.cond, !dbg !63

for.cond:                                         ; preds = %for.inc, %addkey
  %i.0 = phi i32 [ 15, %addkey ], [ %dec, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !60, metadata !DIExpression()), !dbg !61
  %cmp = icmp slt i32 %i.0, 0, !dbg !65
  br i1 %cmp, label %for.body, label %for.end, !dbg !67

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !68
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !68
  %0 = load i32, i32* %arrayidx, align 4, !dbg !68
  %idxprom1 = sext i32 %i.0 to i64, !dbg !69
  %arrayidx2 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom1, !dbg !69
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !69
  %xor = xor i32 %0, %1, !dbg !70
  %idxprom3 = sext i32 %i.0 to i64, !dbg !71
  %arrayidx4 = getelementptr inbounds i32, i32* %buf, i64 %idxprom3, !dbg !71
  store i32 %xor, i32* %arrayidx4, align 4, !dbg !72
  br label %for.inc, !dbg !71

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0, -1, !dbg !73
  call void @llvm.dbg.value(metadata i32 %dec, metadata !60, metadata !DIExpression()), !dbg !61
  br label %for.cond, !dbg !74, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  ret void, !dbg !78
}

; Function Attrs: nounwind
define void @aes_addRoundKey_cpy(i32* "fpga.decayed.dim.hint"="16" %buf, i32* "fpga.decayed.dim.hint"="32" %enc_key, i32* "fpga.decayed.dim.hint"="32" %aes_key) #0 !dbg !79 {
entry:
  call void @llvm.dbg.value(metadata i32* %buf, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.value(metadata i32* %enc_key, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32* %aes_key, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i32 16, metadata !88, metadata !DIExpression()), !dbg !89
  br label %cpkey, !dbg !90

cpkey:                                            ; preds = %entry
  call void @llvm.dbg.value(metadata i32 15, metadata !88, metadata !DIExpression()), !dbg !89
  br label %for.cond, !dbg !91

for.cond:                                         ; preds = %for.inc, %cpkey
  %i.0 = phi i32 [ 15, %cpkey ], [ %dec, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !88, metadata !DIExpression()), !dbg !89
  %cmp = icmp slt i32 %i.0, 0, !dbg !93
  br i1 %cmp, label %for.body, label %for.end, !dbg !95

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !96
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !96
  %0 = load i32, i32* %arrayidx, align 4, !dbg !96
  %idxprom1 = sext i32 %i.0 to i64, !dbg !97
  %arrayidx2 = getelementptr inbounds i32, i32* %enc_key, i64 %idxprom1, !dbg !97
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !97
  %idxprom3 = sext i32 %i.0 to i64, !dbg !98
  %arrayidx4 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom3, !dbg !98
  store i32 %1, i32* %arrayidx4, align 4, !dbg !99
  %xor = xor i32 %0, %1, !dbg !100
  %idxprom5 = sext i32 %i.0 to i64, !dbg !101
  %arrayidx6 = getelementptr inbounds i32, i32* %buf, i64 %idxprom5, !dbg !101
  store i32 %xor, i32* %arrayidx6, align 4, !dbg !102
  %add = add nsw i32 16, %i.0, !dbg !103
  %idxprom7 = sext i32 %add to i64, !dbg !104
  %arrayidx8 = getelementptr inbounds i32, i32* %enc_key, i64 %idxprom7, !dbg !104
  %2 = load i32, i32* %arrayidx8, align 4, !dbg !104
  %add9 = add nsw i32 16, %i.0, !dbg !105
  %idxprom10 = sext i32 %add9 to i64, !dbg !106
  %arrayidx11 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom10, !dbg !106
  store i32 %2, i32* %arrayidx11, align 4, !dbg !107
  br label %for.inc, !dbg !101

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0, -1, !dbg !108
  call void @llvm.dbg.value(metadata i32 %dec, metadata !88, metadata !DIExpression()), !dbg !89
  br label %for.cond, !dbg !109, !llvm.loop !110

for.end:                                          ; preds = %for.cond
  ret void, !dbg !113
}

; Function Attrs: nounwind
define void @aes_shiftRows(i32* "fpga.decayed.dim.hint"="16" %buf) #0 !dbg !114 {
entry:
  call void @llvm.dbg.value(metadata i32* %buf, metadata !115, metadata !DIExpression()), !dbg !116
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 1, !dbg !117
  %0 = load i32, i32* %arrayidx, align 4, !dbg !117
  call void @llvm.dbg.value(metadata i32 %0, metadata !118, metadata !DIExpression()), !dbg !119
  %arrayidx1 = getelementptr inbounds i32, i32* %buf, i64 5, !dbg !120
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !120
  %arrayidx2 = getelementptr inbounds i32, i32* %buf, i64 1, !dbg !121
  store i32 %1, i32* %arrayidx2, align 4, !dbg !122
  %arrayidx3 = getelementptr inbounds i32, i32* %buf, i64 9, !dbg !123
  %2 = load i32, i32* %arrayidx3, align 4, !dbg !123
  %arrayidx4 = getelementptr inbounds i32, i32* %buf, i64 5, !dbg !124
  store i32 %2, i32* %arrayidx4, align 4, !dbg !125
  %arrayidx5 = getelementptr inbounds i32, i32* %buf, i64 13, !dbg !126
  %3 = load i32, i32* %arrayidx5, align 4, !dbg !126
  %arrayidx6 = getelementptr inbounds i32, i32* %buf, i64 9, !dbg !127
  store i32 %3, i32* %arrayidx6, align 4, !dbg !128
  %arrayidx7 = getelementptr inbounds i32, i32* %buf, i64 13, !dbg !129
  store i32 %0, i32* %arrayidx7, align 4, !dbg !130
  %arrayidx8 = getelementptr inbounds i32, i32* %buf, i64 10, !dbg !131
  %4 = load i32, i32* %arrayidx8, align 4, !dbg !131
  call void @llvm.dbg.value(metadata i32 %4, metadata !118, metadata !DIExpression()), !dbg !119
  %arrayidx9 = getelementptr inbounds i32, i32* %buf, i64 2, !dbg !132
  %5 = load i32, i32* %arrayidx9, align 4, !dbg !132
  %arrayidx10 = getelementptr inbounds i32, i32* %buf, i64 10, !dbg !133
  store i32 %5, i32* %arrayidx10, align 4, !dbg !134
  %arrayidx11 = getelementptr inbounds i32, i32* %buf, i64 2, !dbg !135
  store i32 %4, i32* %arrayidx11, align 4, !dbg !136
  %arrayidx12 = getelementptr inbounds i32, i32* %buf, i64 3, !dbg !137
  %6 = load i32, i32* %arrayidx12, align 4, !dbg !137
  call void @llvm.dbg.value(metadata i32 %6, metadata !138, metadata !DIExpression()), !dbg !139
  %arrayidx13 = getelementptr inbounds i32, i32* %buf, i64 15, !dbg !140
  %7 = load i32, i32* %arrayidx13, align 4, !dbg !140
  %arrayidx14 = getelementptr inbounds i32, i32* %buf, i64 3, !dbg !141
  store i32 %7, i32* %arrayidx14, align 4, !dbg !142
  %arrayidx15 = getelementptr inbounds i32, i32* %buf, i64 11, !dbg !143
  %8 = load i32, i32* %arrayidx15, align 4, !dbg !143
  %arrayidx16 = getelementptr inbounds i32, i32* %buf, i64 15, !dbg !144
  store i32 %8, i32* %arrayidx16, align 4, !dbg !145
  %arrayidx17 = getelementptr inbounds i32, i32* %buf, i64 7, !dbg !146
  %9 = load i32, i32* %arrayidx17, align 4, !dbg !146
  %arrayidx18 = getelementptr inbounds i32, i32* %buf, i64 11, !dbg !147
  store i32 %9, i32* %arrayidx18, align 4, !dbg !148
  %arrayidx19 = getelementptr inbounds i32, i32* %buf, i64 7, !dbg !149
  store i32 %6, i32* %arrayidx19, align 4, !dbg !150
  %arrayidx20 = getelementptr inbounds i32, i32* %buf, i64 14, !dbg !151
  %10 = load i32, i32* %arrayidx20, align 4, !dbg !151
  call void @llvm.dbg.value(metadata i32 %10, metadata !138, metadata !DIExpression()), !dbg !139
  %arrayidx21 = getelementptr inbounds i32, i32* %buf, i64 6, !dbg !152
  %11 = load i32, i32* %arrayidx21, align 4, !dbg !152
  %arrayidx22 = getelementptr inbounds i32, i32* %buf, i64 14, !dbg !153
  store i32 %11, i32* %arrayidx22, align 4, !dbg !154
  %arrayidx23 = getelementptr inbounds i32, i32* %buf, i64 6, !dbg !155
  store i32 %10, i32* %arrayidx23, align 4, !dbg !156
  ret void, !dbg !157
}

; Function Attrs: nounwind
define void @aes_mixColumns(i32* "fpga.decayed.dim.hint"="16" %buf) #0 !dbg !158 {
entry:
  call void @llvm.dbg.value(metadata i32* %buf, metadata !159, metadata !DIExpression()), !dbg !160
  br label %mix, !dbg !161

mix:                                              ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !162, metadata !DIExpression()), !dbg !163
  br label %for.cond, !dbg !164

for.cond:                                         ; preds = %for.inc, %mix
  %i.0 = phi i32 [ 0, %mix ], [ %add48, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !162, metadata !DIExpression()), !dbg !163
  %cmp = icmp slt i32 %i.0, 16, !dbg !166
  br i1 %cmp, label %for.body, label %for.end, !dbg !168

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !169
  %arrayidx = getelementptr inbounds i32, i32* %buf, i64 %idxprom, !dbg !169
  %0 = load i32, i32* %arrayidx, align 4, !dbg !169
  call void @llvm.dbg.value(metadata i32 %0, metadata !171, metadata !DIExpression()), !dbg !172
  %add = add nsw i32 %i.0, 1, !dbg !173
  %idxprom1 = sext i32 %add to i64, !dbg !174
  %arrayidx2 = getelementptr inbounds i32, i32* %buf, i64 %idxprom1, !dbg !174
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !174
  call void @llvm.dbg.value(metadata i32 %1, metadata !175, metadata !DIExpression()), !dbg !176
  %add3 = add nsw i32 %i.0, 2, !dbg !177
  %idxprom4 = sext i32 %add3 to i64, !dbg !178
  %arrayidx5 = getelementptr inbounds i32, i32* %buf, i64 %idxprom4, !dbg !178
  %2 = load i32, i32* %arrayidx5, align 4, !dbg !178
  call void @llvm.dbg.value(metadata i32 %2, metadata !179, metadata !DIExpression()), !dbg !180
  %add6 = add nsw i32 %i.0, 3, !dbg !181
  %idxprom7 = sext i32 %add6 to i64, !dbg !182
  %arrayidx8 = getelementptr inbounds i32, i32* %buf, i64 %idxprom7, !dbg !182
  %3 = load i32, i32* %arrayidx8, align 4, !dbg !182
  call void @llvm.dbg.value(metadata i32 %3, metadata !183, metadata !DIExpression()), !dbg !184
  %xor = xor i32 %0, %1, !dbg !185
  %xor9 = xor i32 %xor, %2, !dbg !186
  %xor10 = xor i32 %xor9, %3, !dbg !187
  call void @llvm.dbg.value(metadata i32 %xor10, metadata !188, metadata !DIExpression()), !dbg !189
  %idxprom11 = sext i32 %i.0 to i64, !dbg !190
  %arrayidx12 = getelementptr inbounds i32, i32* %buf, i64 %idxprom11, !dbg !190
  %4 = load i32, i32* %arrayidx12, align 4, !dbg !190
  %xor13 = xor i32 %0, %1, !dbg !191
  %call = call i32 @rj_xtime(i32 %xor13), !dbg !192
  %xor14 = xor i32 %xor10, %call, !dbg !193
  %xor15 = xor i32 %4, %xor14, !dbg !194
  %idxprom16 = sext i32 %i.0 to i64, !dbg !195
  %arrayidx17 = getelementptr inbounds i32, i32* %buf, i64 %idxprom16, !dbg !195
  store i32 %xor15, i32* %arrayidx17, align 4, !dbg !196
  %add18 = add nsw i32 %i.0, 1, !dbg !197
  %idxprom19 = sext i32 %add18 to i64, !dbg !198
  %arrayidx20 = getelementptr inbounds i32, i32* %buf, i64 %idxprom19, !dbg !198
  %5 = load i32, i32* %arrayidx20, align 4, !dbg !198
  %xor21 = xor i32 %1, %2, !dbg !199
  %call22 = call i32 @rj_xtime(i32 %xor21), !dbg !200
  %xor23 = xor i32 %xor10, %call22, !dbg !201
  %xor24 = xor i32 %5, %xor23, !dbg !202
  %add25 = add nsw i32 %i.0, 1, !dbg !203
  %idxprom26 = sext i32 %add25 to i64, !dbg !204
  %arrayidx27 = getelementptr inbounds i32, i32* %buf, i64 %idxprom26, !dbg !204
  store i32 %xor24, i32* %arrayidx27, align 4, !dbg !205
  %add28 = add nsw i32 %i.0, 2, !dbg !206
  %idxprom29 = sext i32 %add28 to i64, !dbg !207
  %arrayidx30 = getelementptr inbounds i32, i32* %buf, i64 %idxprom29, !dbg !207
  %6 = load i32, i32* %arrayidx30, align 4, !dbg !207
  %xor31 = xor i32 %2, %3, !dbg !208
  %call32 = call i32 @rj_xtime(i32 %xor31), !dbg !209
  %xor33 = xor i32 %xor10, %call32, !dbg !210
  %xor34 = xor i32 %6, %xor33, !dbg !211
  %add35 = add nsw i32 %i.0, 2, !dbg !212
  %idxprom36 = sext i32 %add35 to i64, !dbg !213
  %arrayidx37 = getelementptr inbounds i32, i32* %buf, i64 %idxprom36, !dbg !213
  store i32 %xor34, i32* %arrayidx37, align 4, !dbg !214
  %add38 = add nsw i32 %i.0, 3, !dbg !215
  %idxprom39 = sext i32 %add38 to i64, !dbg !216
  %arrayidx40 = getelementptr inbounds i32, i32* %buf, i64 %idxprom39, !dbg !216
  %7 = load i32, i32* %arrayidx40, align 4, !dbg !216
  %xor41 = xor i32 %3, %0, !dbg !217
  %call42 = call i32 @rj_xtime(i32 %xor41), !dbg !218
  %xor43 = xor i32 %xor10, %call42, !dbg !219
  %xor44 = xor i32 %7, %xor43, !dbg !220
  %add45 = add nsw i32 %i.0, 3, !dbg !221
  %idxprom46 = sext i32 %add45 to i64, !dbg !222
  %arrayidx47 = getelementptr inbounds i32, i32* %buf, i64 %idxprom46, !dbg !222
  store i32 %xor44, i32* %arrayidx47, align 4, !dbg !223
  br label %for.inc, !dbg !224

for.inc:                                          ; preds = %for.body
  %add48 = add nsw i32 %i.0, 4, !dbg !225
  call void @llvm.dbg.value(metadata i32 %add48, metadata !162, metadata !DIExpression()), !dbg !163
  br label %for.cond, !dbg !226, !llvm.loop !227

for.end:                                          ; preds = %for.cond
  ret void, !dbg !230
}

; Function Attrs: nounwind
define void @aes_expandEncKey(i32* "fpga.decayed.dim.hint"="32" %aes_key, i32* %rc) #0 !dbg !231 {
entry:
  call void @llvm.dbg.value(metadata i32* %aes_key, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i32* %rc, metadata !234, metadata !DIExpression()), !dbg !235
  %arrayidx = getelementptr inbounds i32, i32* %aes_key, i64 0, !dbg !236
  %0 = load i32, i32* %arrayidx, align 4, !dbg !236
  %arrayidx1 = getelementptr inbounds i32, i32* %aes_key, i64 29, !dbg !237
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !237
  %and = and i32 %1, 255, !dbg !238
  %idxprom = sext i32 %and to i64, !dbg !239
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom, !dbg !239
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !239
  %3 = load i32, i32* %rc, align 4, !dbg !240
  %xor = xor i32 %2, %3, !dbg !241
  %xor3 = xor i32 %0, %xor, !dbg !242
  %arrayidx4 = getelementptr inbounds i32, i32* %aes_key, i64 0, !dbg !243
  store i32 %xor3, i32* %arrayidx4, align 4, !dbg !244
  %arrayidx5 = getelementptr inbounds i32, i32* %aes_key, i64 1, !dbg !245
  %4 = load i32, i32* %arrayidx5, align 4, !dbg !245
  %arrayidx6 = getelementptr inbounds i32, i32* %aes_key, i64 30, !dbg !246
  %5 = load i32, i32* %arrayidx6, align 4, !dbg !246
  %and7 = and i32 %5, 255, !dbg !247
  %idxprom8 = sext i32 %and7 to i64, !dbg !248
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom8, !dbg !248
  %6 = load i32, i32* %arrayidx9, align 4, !dbg !248
  %xor10 = xor i32 %4, %6, !dbg !249
  %arrayidx11 = getelementptr inbounds i32, i32* %aes_key, i64 1, !dbg !250
  store i32 %xor10, i32* %arrayidx11, align 4, !dbg !251
  %arrayidx12 = getelementptr inbounds i32, i32* %aes_key, i64 2, !dbg !252
  %7 = load i32, i32* %arrayidx12, align 4, !dbg !252
  %arrayidx13 = getelementptr inbounds i32, i32* %aes_key, i64 31, !dbg !253
  %8 = load i32, i32* %arrayidx13, align 4, !dbg !253
  %and14 = and i32 %8, 255, !dbg !254
  %idxprom15 = sext i32 %and14 to i64, !dbg !255
  %arrayidx16 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom15, !dbg !255
  %9 = load i32, i32* %arrayidx16, align 4, !dbg !255
  %xor17 = xor i32 %7, %9, !dbg !256
  %arrayidx18 = getelementptr inbounds i32, i32* %aes_key, i64 2, !dbg !257
  store i32 %xor17, i32* %arrayidx18, align 4, !dbg !258
  %arrayidx19 = getelementptr inbounds i32, i32* %aes_key, i64 3, !dbg !259
  %10 = load i32, i32* %arrayidx19, align 4, !dbg !259
  %arrayidx20 = getelementptr inbounds i32, i32* %aes_key, i64 28, !dbg !260
  %11 = load i32, i32* %arrayidx20, align 4, !dbg !260
  %and21 = and i32 %11, 255, !dbg !261
  %idxprom22 = sext i32 %and21 to i64, !dbg !262
  %arrayidx23 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom22, !dbg !262
  %12 = load i32, i32* %arrayidx23, align 4, !dbg !262
  %xor24 = xor i32 %10, %12, !dbg !263
  %arrayidx25 = getelementptr inbounds i32, i32* %aes_key, i64 3, !dbg !264
  store i32 %xor24, i32* %arrayidx25, align 4, !dbg !265
  %13 = load i32, i32* %rc, align 4, !dbg !266
  %shl = shl i32 %13, 1, !dbg !267
  %14 = load i32, i32* %rc, align 4, !dbg !268
  %shr = ashr i32 %14, 7, !dbg !269
  %and26 = and i32 %shr, 1, !dbg !270
  %mul = mul nsw i32 %and26, 27, !dbg !271
  %xor27 = xor i32 %shl, %mul, !dbg !272
  %and28 = and i32 %xor27, 255, !dbg !273
  store i32 %and28, i32* %rc, align 4, !dbg !274
  br label %exp1, !dbg !275

exp1:                                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 4, metadata !276, metadata !DIExpression()), !dbg !277
  br label %for.cond, !dbg !278

for.cond:                                         ; preds = %for.inc, %exp1
  %i.0 = phi i32 [ 4, %exp1 ], [ %add65, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !276, metadata !DIExpression()), !dbg !277
  %cmp = icmp slt i32 %i.0, 16, !dbg !280
  br i1 %cmp, label %for.body, label %for.end, !dbg !282

for.body:                                         ; preds = %for.cond
  %idxprom29 = sext i32 %i.0 to i64, !dbg !283
  %arrayidx30 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom29, !dbg !283
  %15 = load i32, i32* %arrayidx30, align 4, !dbg !283
  %sub = sub nsw i32 %i.0, 4, !dbg !284
  %idxprom31 = sext i32 %sub to i64, !dbg !285
  %arrayidx32 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom31, !dbg !285
  %16 = load i32, i32* %arrayidx32, align 4, !dbg !285
  %xor33 = xor i32 %15, %16, !dbg !286
  %idxprom34 = sext i32 %i.0 to i64, !dbg !287
  %arrayidx35 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom34, !dbg !287
  store i32 %xor33, i32* %arrayidx35, align 4, !dbg !288
  %add = add nsw i32 %i.0, 1, !dbg !289
  %idxprom36 = sext i32 %add to i64, !dbg !290
  %arrayidx37 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom36, !dbg !290
  %17 = load i32, i32* %arrayidx37, align 4, !dbg !290
  %sub38 = sub nsw i32 %i.0, 3, !dbg !291
  %idxprom39 = sext i32 %sub38 to i64, !dbg !292
  %arrayidx40 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom39, !dbg !292
  %18 = load i32, i32* %arrayidx40, align 4, !dbg !292
  %xor41 = xor i32 %17, %18, !dbg !293
  %add42 = add nsw i32 %i.0, 1, !dbg !294
  %idxprom43 = sext i32 %add42 to i64, !dbg !295
  %arrayidx44 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom43, !dbg !295
  store i32 %xor41, i32* %arrayidx44, align 4, !dbg !296
  %add45 = add nsw i32 %i.0, 2, !dbg !297
  %idxprom46 = sext i32 %add45 to i64, !dbg !298
  %arrayidx47 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom46, !dbg !298
  %19 = load i32, i32* %arrayidx47, align 4, !dbg !298
  %sub48 = sub nsw i32 %i.0, 2, !dbg !299
  %idxprom49 = sext i32 %sub48 to i64, !dbg !300
  %arrayidx50 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom49, !dbg !300
  %20 = load i32, i32* %arrayidx50, align 4, !dbg !300
  %xor51 = xor i32 %19, %20, !dbg !301
  %add52 = add nsw i32 %i.0, 2, !dbg !302
  %idxprom53 = sext i32 %add52 to i64, !dbg !303
  %arrayidx54 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom53, !dbg !303
  store i32 %xor51, i32* %arrayidx54, align 4, !dbg !304
  %add55 = add nsw i32 %i.0, 3, !dbg !305
  %idxprom56 = sext i32 %add55 to i64, !dbg !306
  %arrayidx57 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom56, !dbg !306
  %21 = load i32, i32* %arrayidx57, align 4, !dbg !306
  %sub58 = sub nsw i32 %i.0, 1, !dbg !307
  %idxprom59 = sext i32 %sub58 to i64, !dbg !308
  %arrayidx60 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom59, !dbg !308
  %22 = load i32, i32* %arrayidx60, align 4, !dbg !308
  %xor61 = xor i32 %21, %22, !dbg !309
  %add62 = add nsw i32 %i.0, 3, !dbg !310
  %idxprom63 = sext i32 %add62 to i64, !dbg !311
  %arrayidx64 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom63, !dbg !311
  store i32 %xor61, i32* %arrayidx64, align 4, !dbg !312
  br label %for.inc, !dbg !287

for.inc:                                          ; preds = %for.body
  %add65 = add nsw i32 %i.0, 4, !dbg !313
  call void @llvm.dbg.value(metadata i32 %add65, metadata !276, metadata !DIExpression()), !dbg !277
  br label %for.cond, !dbg !314, !llvm.loop !315

for.end:                                          ; preds = %for.cond
  %arrayidx66 = getelementptr inbounds i32, i32* %aes_key, i64 16, !dbg !318
  %23 = load i32, i32* %arrayidx66, align 4, !dbg !318
  %arrayidx67 = getelementptr inbounds i32, i32* %aes_key, i64 12, !dbg !319
  %24 = load i32, i32* %arrayidx67, align 4, !dbg !319
  %and68 = and i32 %24, 255, !dbg !320
  %idxprom69 = sext i32 %and68 to i64, !dbg !321
  %arrayidx70 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom69, !dbg !321
  %25 = load i32, i32* %arrayidx70, align 4, !dbg !321
  %xor71 = xor i32 %23, %25, !dbg !322
  %arrayidx72 = getelementptr inbounds i32, i32* %aes_key, i64 16, !dbg !323
  store i32 %xor71, i32* %arrayidx72, align 4, !dbg !324
  %arrayidx73 = getelementptr inbounds i32, i32* %aes_key, i64 17, !dbg !325
  %26 = load i32, i32* %arrayidx73, align 4, !dbg !325
  %arrayidx74 = getelementptr inbounds i32, i32* %aes_key, i64 13, !dbg !326
  %27 = load i32, i32* %arrayidx74, align 4, !dbg !326
  %and75 = and i32 %27, 255, !dbg !327
  %idxprom76 = sext i32 %and75 to i64, !dbg !328
  %arrayidx77 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom76, !dbg !328
  %28 = load i32, i32* %arrayidx77, align 4, !dbg !328
  %xor78 = xor i32 %26, %28, !dbg !329
  %arrayidx79 = getelementptr inbounds i32, i32* %aes_key, i64 17, !dbg !330
  store i32 %xor78, i32* %arrayidx79, align 4, !dbg !331
  %arrayidx80 = getelementptr inbounds i32, i32* %aes_key, i64 18, !dbg !332
  %29 = load i32, i32* %arrayidx80, align 4, !dbg !332
  %arrayidx81 = getelementptr inbounds i32, i32* %aes_key, i64 14, !dbg !333
  %30 = load i32, i32* %arrayidx81, align 4, !dbg !333
  %and82 = and i32 %30, 255, !dbg !334
  %idxprom83 = sext i32 %and82 to i64, !dbg !335
  %arrayidx84 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom83, !dbg !335
  %31 = load i32, i32* %arrayidx84, align 4, !dbg !335
  %xor85 = xor i32 %29, %31, !dbg !336
  %arrayidx86 = getelementptr inbounds i32, i32* %aes_key, i64 18, !dbg !337
  store i32 %xor85, i32* %arrayidx86, align 4, !dbg !338
  %arrayidx87 = getelementptr inbounds i32, i32* %aes_key, i64 19, !dbg !339
  %32 = load i32, i32* %arrayidx87, align 4, !dbg !339
  %arrayidx88 = getelementptr inbounds i32, i32* %aes_key, i64 15, !dbg !340
  %33 = load i32, i32* %arrayidx88, align 4, !dbg !340
  %and89 = and i32 %33, 255, !dbg !341
  %idxprom90 = sext i32 %and89 to i64, !dbg !342
  %arrayidx91 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom90, !dbg !342
  %34 = load i32, i32* %arrayidx91, align 4, !dbg !342
  %xor92 = xor i32 %32, %34, !dbg !343
  %arrayidx93 = getelementptr inbounds i32, i32* %aes_key, i64 19, !dbg !344
  store i32 %xor92, i32* %arrayidx93, align 4, !dbg !345
  br label %exp2, !dbg !344

exp2:                                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 20, metadata !276, metadata !DIExpression()), !dbg !277
  br label %for.cond94, !dbg !346

for.cond94:                                       ; preds = %for.inc135, %exp2
  %i.1 = phi i32 [ 20, %exp2 ], [ %add136, %for.inc135 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !276, metadata !DIExpression()), !dbg !277
  %cmp95 = icmp slt i32 %i.1, 32, !dbg !348
  br i1 %cmp95, label %for.body96, label %for.end137, !dbg !350

for.body96:                                       ; preds = %for.cond94
  %idxprom97 = sext i32 %i.1 to i64, !dbg !351
  %arrayidx98 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom97, !dbg !351
  %35 = load i32, i32* %arrayidx98, align 4, !dbg !351
  %sub99 = sub nsw i32 %i.1, 4, !dbg !352
  %idxprom100 = sext i32 %sub99 to i64, !dbg !353
  %arrayidx101 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom100, !dbg !353
  %36 = load i32, i32* %arrayidx101, align 4, !dbg !353
  %xor102 = xor i32 %35, %36, !dbg !354
  %idxprom103 = sext i32 %i.1 to i64, !dbg !355
  %arrayidx104 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom103, !dbg !355
  store i32 %xor102, i32* %arrayidx104, align 4, !dbg !356
  %add105 = add nsw i32 %i.1, 1, !dbg !357
  %idxprom106 = sext i32 %add105 to i64, !dbg !358
  %arrayidx107 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom106, !dbg !358
  %37 = load i32, i32* %arrayidx107, align 4, !dbg !358
  %sub108 = sub nsw i32 %i.1, 3, !dbg !359
  %idxprom109 = sext i32 %sub108 to i64, !dbg !360
  %arrayidx110 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom109, !dbg !360
  %38 = load i32, i32* %arrayidx110, align 4, !dbg !360
  %xor111 = xor i32 %37, %38, !dbg !361
  %add112 = add nsw i32 %i.1, 1, !dbg !362
  %idxprom113 = sext i32 %add112 to i64, !dbg !363
  %arrayidx114 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom113, !dbg !363
  store i32 %xor111, i32* %arrayidx114, align 4, !dbg !364
  %add115 = add nsw i32 %i.1, 2, !dbg !365
  %idxprom116 = sext i32 %add115 to i64, !dbg !366
  %arrayidx117 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom116, !dbg !366
  %39 = load i32, i32* %arrayidx117, align 4, !dbg !366
  %sub118 = sub nsw i32 %i.1, 2, !dbg !367
  %idxprom119 = sext i32 %sub118 to i64, !dbg !368
  %arrayidx120 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom119, !dbg !368
  %40 = load i32, i32* %arrayidx120, align 4, !dbg !368
  %xor121 = xor i32 %39, %40, !dbg !369
  %add122 = add nsw i32 %i.1, 2, !dbg !370
  %idxprom123 = sext i32 %add122 to i64, !dbg !371
  %arrayidx124 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom123, !dbg !371
  store i32 %xor121, i32* %arrayidx124, align 4, !dbg !372
  %add125 = add nsw i32 %i.1, 3, !dbg !373
  %idxprom126 = sext i32 %add125 to i64, !dbg !374
  %arrayidx127 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom126, !dbg !374
  %41 = load i32, i32* %arrayidx127, align 4, !dbg !374
  %sub128 = sub nsw i32 %i.1, 1, !dbg !375
  %idxprom129 = sext i32 %sub128 to i64, !dbg !376
  %arrayidx130 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom129, !dbg !376
  %42 = load i32, i32* %arrayidx130, align 4, !dbg !376
  %xor131 = xor i32 %41, %42, !dbg !377
  %add132 = add nsw i32 %i.1, 3, !dbg !378
  %idxprom133 = sext i32 %add132 to i64, !dbg !379
  %arrayidx134 = getelementptr inbounds i32, i32* %aes_key, i64 %idxprom133, !dbg !379
  store i32 %xor131, i32* %arrayidx134, align 4, !dbg !380
  br label %for.inc135, !dbg !355

for.inc135:                                       ; preds = %for.body96
  %add136 = add nsw i32 %i.1, 4, !dbg !381
  call void @llvm.dbg.value(metadata i32 %add136, metadata !276, metadata !DIExpression()), !dbg !277
  br label %for.cond94, !dbg !382, !llvm.loop !383

for.end137:                                       ; preds = %for.cond94
  ret void, !dbg !386
}

; Function Attrs: nounwind
define void @aes_expandDecKey(i32* "fpga.decayed.dim.hint"="32" %dec_key, i32* %rc) #0 !dbg !387 {
entry:
  call void @llvm.dbg.value(metadata i32* %dec_key, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.value(metadata i32* %rc, metadata !390, metadata !DIExpression()), !dbg !391
  %arrayidx = getelementptr inbounds i32, i32* %dec_key, i64 0, !dbg !392
  %0 = load i32, i32* %arrayidx, align 4, !dbg !392
  %arrayidx1 = getelementptr inbounds i32, i32* %dec_key, i64 29, !dbg !393
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !393
  %and = and i32 %1, 255, !dbg !394
  %idxprom = sext i32 %and to i64, !dbg !395
  %arrayidx2 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom, !dbg !395
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !395
  %3 = load i32, i32* %rc, align 4, !dbg !396
  %xor = xor i32 %2, %3, !dbg !397
  %xor3 = xor i32 %0, %xor, !dbg !398
  %arrayidx4 = getelementptr inbounds i32, i32* %dec_key, i64 0, !dbg !399
  store i32 %xor3, i32* %arrayidx4, align 4, !dbg !400
  %arrayidx5 = getelementptr inbounds i32, i32* %dec_key, i64 1, !dbg !401
  %4 = load i32, i32* %arrayidx5, align 4, !dbg !401
  %arrayidx6 = getelementptr inbounds i32, i32* %dec_key, i64 30, !dbg !402
  %5 = load i32, i32* %arrayidx6, align 4, !dbg !402
  %and7 = and i32 %5, 255, !dbg !403
  %idxprom8 = sext i32 %and7 to i64, !dbg !404
  %arrayidx9 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom8, !dbg !404
  %6 = load i32, i32* %arrayidx9, align 4, !dbg !404
  %xor10 = xor i32 %4, %6, !dbg !405
  %arrayidx11 = getelementptr inbounds i32, i32* %dec_key, i64 1, !dbg !406
  store i32 %xor10, i32* %arrayidx11, align 4, !dbg !407
  %arrayidx12 = getelementptr inbounds i32, i32* %dec_key, i64 2, !dbg !408
  %7 = load i32, i32* %arrayidx12, align 4, !dbg !408
  %arrayidx13 = getelementptr inbounds i32, i32* %dec_key, i64 31, !dbg !409
  %8 = load i32, i32* %arrayidx13, align 4, !dbg !409
  %and14 = and i32 %8, 255, !dbg !410
  %idxprom15 = sext i32 %and14 to i64, !dbg !411
  %arrayidx16 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom15, !dbg !411
  %9 = load i32, i32* %arrayidx16, align 4, !dbg !411
  %xor17 = xor i32 %7, %9, !dbg !412
  %arrayidx18 = getelementptr inbounds i32, i32* %dec_key, i64 2, !dbg !413
  store i32 %xor17, i32* %arrayidx18, align 4, !dbg !414
  %arrayidx19 = getelementptr inbounds i32, i32* %dec_key, i64 3, !dbg !415
  %10 = load i32, i32* %arrayidx19, align 4, !dbg !415
  %arrayidx20 = getelementptr inbounds i32, i32* %dec_key, i64 28, !dbg !416
  %11 = load i32, i32* %arrayidx20, align 4, !dbg !416
  %and21 = and i32 %11, 255, !dbg !417
  %idxprom22 = sext i32 %and21 to i64, !dbg !418
  %arrayidx23 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom22, !dbg !418
  %12 = load i32, i32* %arrayidx23, align 4, !dbg !418
  %xor24 = xor i32 %10, %12, !dbg !419
  %arrayidx25 = getelementptr inbounds i32, i32* %dec_key, i64 3, !dbg !420
  store i32 %xor24, i32* %arrayidx25, align 4, !dbg !421
  %13 = load i32, i32* %rc, align 4, !dbg !422
  %shl = shl i32 %13, 1, !dbg !423
  %14 = load i32, i32* %rc, align 4, !dbg !424
  %shr = ashr i32 %14, 7, !dbg !425
  %and26 = and i32 %shr, 1, !dbg !426
  %mul = mul nsw i32 %and26, 27, !dbg !427
  %xor27 = xor i32 %shl, %mul, !dbg !428
  %and28 = and i32 %xor27, 255, !dbg !429
  store i32 %and28, i32* %rc, align 4, !dbg !430
  br label %exp1, !dbg !431

exp1:                                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 4, metadata !432, metadata !DIExpression()), !dbg !433
  br label %for.cond, !dbg !434

for.cond:                                         ; preds = %for.inc, %exp1
  %i.0 = phi i32 [ 4, %exp1 ], [ %add65, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !432, metadata !DIExpression()), !dbg !433
  %cmp = icmp slt i32 %i.0, 16, !dbg !436
  br i1 %cmp, label %for.body, label %for.end, !dbg !438

for.body:                                         ; preds = %for.cond
  %idxprom29 = sext i32 %i.0 to i64, !dbg !439
  %arrayidx30 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom29, !dbg !439
  %15 = load i32, i32* %arrayidx30, align 4, !dbg !439
  %sub = sub nsw i32 %i.0, 4, !dbg !440
  %idxprom31 = sext i32 %sub to i64, !dbg !441
  %arrayidx32 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom31, !dbg !441
  %16 = load i32, i32* %arrayidx32, align 4, !dbg !441
  %xor33 = xor i32 %15, %16, !dbg !442
  %idxprom34 = sext i32 %i.0 to i64, !dbg !443
  %arrayidx35 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom34, !dbg !443
  store i32 %xor33, i32* %arrayidx35, align 4, !dbg !444
  %add = add nsw i32 %i.0, 1, !dbg !445
  %idxprom36 = sext i32 %add to i64, !dbg !446
  %arrayidx37 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom36, !dbg !446
  %17 = load i32, i32* %arrayidx37, align 4, !dbg !446
  %sub38 = sub nsw i32 %i.0, 3, !dbg !447
  %idxprom39 = sext i32 %sub38 to i64, !dbg !448
  %arrayidx40 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom39, !dbg !448
  %18 = load i32, i32* %arrayidx40, align 4, !dbg !448
  %xor41 = xor i32 %17, %18, !dbg !449
  %add42 = add nsw i32 %i.0, 1, !dbg !450
  %idxprom43 = sext i32 %add42 to i64, !dbg !451
  %arrayidx44 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom43, !dbg !451
  store i32 %xor41, i32* %arrayidx44, align 4, !dbg !452
  %add45 = add nsw i32 %i.0, 2, !dbg !453
  %idxprom46 = sext i32 %add45 to i64, !dbg !454
  %arrayidx47 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom46, !dbg !454
  %19 = load i32, i32* %arrayidx47, align 4, !dbg !454
  %sub48 = sub nsw i32 %i.0, 2, !dbg !455
  %idxprom49 = sext i32 %sub48 to i64, !dbg !456
  %arrayidx50 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom49, !dbg !456
  %20 = load i32, i32* %arrayidx50, align 4, !dbg !456
  %xor51 = xor i32 %19, %20, !dbg !457
  %add52 = add nsw i32 %i.0, 2, !dbg !458
  %idxprom53 = sext i32 %add52 to i64, !dbg !459
  %arrayidx54 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom53, !dbg !459
  store i32 %xor51, i32* %arrayidx54, align 4, !dbg !460
  %add55 = add nsw i32 %i.0, 3, !dbg !461
  %idxprom56 = sext i32 %add55 to i64, !dbg !462
  %arrayidx57 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom56, !dbg !462
  %21 = load i32, i32* %arrayidx57, align 4, !dbg !462
  %sub58 = sub nsw i32 %i.0, 1, !dbg !463
  %idxprom59 = sext i32 %sub58 to i64, !dbg !464
  %arrayidx60 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom59, !dbg !464
  %22 = load i32, i32* %arrayidx60, align 4, !dbg !464
  %xor61 = xor i32 %21, %22, !dbg !465
  %add62 = add nsw i32 %i.0, 3, !dbg !466
  %idxprom63 = sext i32 %add62 to i64, !dbg !467
  %arrayidx64 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom63, !dbg !467
  store i32 %xor61, i32* %arrayidx64, align 4, !dbg !468
  br label %for.inc, !dbg !443

for.inc:                                          ; preds = %for.body
  %add65 = add nsw i32 %i.0, 4, !dbg !469
  call void @llvm.dbg.value(metadata i32 %add65, metadata !432, metadata !DIExpression()), !dbg !433
  br label %for.cond, !dbg !470, !llvm.loop !471

for.end:                                          ; preds = %for.cond
  %arrayidx66 = getelementptr inbounds i32, i32* %dec_key, i64 16, !dbg !473
  %23 = load i32, i32* %arrayidx66, align 4, !dbg !473
  %arrayidx67 = getelementptr inbounds i32, i32* %dec_key, i64 12, !dbg !474
  %24 = load i32, i32* %arrayidx67, align 4, !dbg !474
  %and68 = and i32 %24, 255, !dbg !475
  %idxprom69 = sext i32 %and68 to i64, !dbg !476
  %arrayidx70 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom69, !dbg !476
  %25 = load i32, i32* %arrayidx70, align 4, !dbg !476
  %xor71 = xor i32 %23, %25, !dbg !477
  %arrayidx72 = getelementptr inbounds i32, i32* %dec_key, i64 16, !dbg !478
  store i32 %xor71, i32* %arrayidx72, align 4, !dbg !479
  %arrayidx73 = getelementptr inbounds i32, i32* %dec_key, i64 17, !dbg !480
  %26 = load i32, i32* %arrayidx73, align 4, !dbg !480
  %arrayidx74 = getelementptr inbounds i32, i32* %dec_key, i64 13, !dbg !481
  %27 = load i32, i32* %arrayidx74, align 4, !dbg !481
  %and75 = and i32 %27, 255, !dbg !482
  %idxprom76 = sext i32 %and75 to i64, !dbg !483
  %arrayidx77 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom76, !dbg !483
  %28 = load i32, i32* %arrayidx77, align 4, !dbg !483
  %xor78 = xor i32 %26, %28, !dbg !484
  %arrayidx79 = getelementptr inbounds i32, i32* %dec_key, i64 17, !dbg !485
  store i32 %xor78, i32* %arrayidx79, align 4, !dbg !486
  %arrayidx80 = getelementptr inbounds i32, i32* %dec_key, i64 18, !dbg !487
  %29 = load i32, i32* %arrayidx80, align 4, !dbg !487
  %arrayidx81 = getelementptr inbounds i32, i32* %dec_key, i64 14, !dbg !488
  %30 = load i32, i32* %arrayidx81, align 4, !dbg !488
  %and82 = and i32 %30, 255, !dbg !489
  %idxprom83 = sext i32 %and82 to i64, !dbg !490
  %arrayidx84 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom83, !dbg !490
  %31 = load i32, i32* %arrayidx84, align 4, !dbg !490
  %xor85 = xor i32 %29, %31, !dbg !491
  %arrayidx86 = getelementptr inbounds i32, i32* %dec_key, i64 18, !dbg !492
  store i32 %xor85, i32* %arrayidx86, align 4, !dbg !493
  %arrayidx87 = getelementptr inbounds i32, i32* %dec_key, i64 19, !dbg !494
  %32 = load i32, i32* %arrayidx87, align 4, !dbg !494
  %arrayidx88 = getelementptr inbounds i32, i32* %dec_key, i64 15, !dbg !495
  %33 = load i32, i32* %arrayidx88, align 4, !dbg !495
  %and89 = and i32 %33, 255, !dbg !496
  %idxprom90 = sext i32 %and89 to i64, !dbg !497
  %arrayidx91 = getelementptr inbounds [256 x i32], [256 x i32]* @sbox, i64 0, i64 %idxprom90, !dbg !497
  %34 = load i32, i32* %arrayidx91, align 4, !dbg !497
  %xor92 = xor i32 %32, %34, !dbg !498
  %arrayidx93 = getelementptr inbounds i32, i32* %dec_key, i64 19, !dbg !499
  store i32 %xor92, i32* %arrayidx93, align 4, !dbg !500
  br label %exp2, !dbg !499

exp2:                                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 20, metadata !432, metadata !DIExpression()), !dbg !433
  br label %for.cond94, !dbg !501

for.cond94:                                       ; preds = %for.inc135, %exp2
  %i.1 = phi i32 [ 20, %exp2 ], [ %add136, %for.inc135 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !432, metadata !DIExpression()), !dbg !433
  %cmp95 = icmp slt i32 %i.1, 32, !dbg !503
  br i1 %cmp95, label %for.body96, label %for.end137, !dbg !505

for.body96:                                       ; preds = %for.cond94
  %idxprom97 = sext i32 %i.1 to i64, !dbg !506
  %arrayidx98 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom97, !dbg !506
  %35 = load i32, i32* %arrayidx98, align 4, !dbg !506
  %sub99 = sub nsw i32 %i.1, 4, !dbg !507
  %idxprom100 = sext i32 %sub99 to i64, !dbg !508
  %arrayidx101 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom100, !dbg !508
  %36 = load i32, i32* %arrayidx101, align 4, !dbg !508
  %xor102 = xor i32 %35, %36, !dbg !509
  %idxprom103 = sext i32 %i.1 to i64, !dbg !510
  %arrayidx104 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom103, !dbg !510
  store i32 %xor102, i32* %arrayidx104, align 4, !dbg !511
  %add105 = add nsw i32 %i.1, 1, !dbg !512
  %idxprom106 = sext i32 %add105 to i64, !dbg !513
  %arrayidx107 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom106, !dbg !513
  %37 = load i32, i32* %arrayidx107, align 4, !dbg !513
  %sub108 = sub nsw i32 %i.1, 3, !dbg !514
  %idxprom109 = sext i32 %sub108 to i64, !dbg !515
  %arrayidx110 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom109, !dbg !515
  %38 = load i32, i32* %arrayidx110, align 4, !dbg !515
  %xor111 = xor i32 %37, %38, !dbg !516
  %add112 = add nsw i32 %i.1, 1, !dbg !517
  %idxprom113 = sext i32 %add112 to i64, !dbg !518
  %arrayidx114 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom113, !dbg !518
  store i32 %xor111, i32* %arrayidx114, align 4, !dbg !519
  %add115 = add nsw i32 %i.1, 2, !dbg !520
  %idxprom116 = sext i32 %add115 to i64, !dbg !521
  %arrayidx117 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom116, !dbg !521
  %39 = load i32, i32* %arrayidx117, align 4, !dbg !521
  %sub118 = sub nsw i32 %i.1, 2, !dbg !522
  %idxprom119 = sext i32 %sub118 to i64, !dbg !523
  %arrayidx120 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom119, !dbg !523
  %40 = load i32, i32* %arrayidx120, align 4, !dbg !523
  %xor121 = xor i32 %39, %40, !dbg !524
  %add122 = add nsw i32 %i.1, 2, !dbg !525
  %idxprom123 = sext i32 %add122 to i64, !dbg !526
  %arrayidx124 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom123, !dbg !526
  store i32 %xor121, i32* %arrayidx124, align 4, !dbg !527
  %add125 = add nsw i32 %i.1, 3, !dbg !528
  %idxprom126 = sext i32 %add125 to i64, !dbg !529
  %arrayidx127 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom126, !dbg !529
  %41 = load i32, i32* %arrayidx127, align 4, !dbg !529
  %sub128 = sub nsw i32 %i.1, 1, !dbg !530
  %idxprom129 = sext i32 %sub128 to i64, !dbg !531
  %arrayidx130 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom129, !dbg !531
  %42 = load i32, i32* %arrayidx130, align 4, !dbg !531
  %xor131 = xor i32 %41, %42, !dbg !532
  %add132 = add nsw i32 %i.1, 3, !dbg !533
  %idxprom133 = sext i32 %add132 to i64, !dbg !534
  %arrayidx134 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom133, !dbg !534
  store i32 %xor131, i32* %arrayidx134, align 4, !dbg !535
  br label %for.inc135, !dbg !510

for.inc135:                                       ; preds = %for.body96
  %add136 = add nsw i32 %i.1, 4, !dbg !536
  call void @llvm.dbg.value(metadata i32 %add136, metadata !432, metadata !DIExpression()), !dbg !433
  br label %for.cond94, !dbg !537, !llvm.loop !538

for.end137:                                       ; preds = %for.cond94
  ret void, !dbg !540
}

; Function Attrs: nounwind
define void @aes256_encrypt_ecb(i32* "fpga.decayed.dim.hint"="32" %aes_key, i32* "fpga.decayed.dim.hint"="32" %enc_key, i32* "fpga.decayed.dim.hint"="32" %dec_key, i32* "fpga.decayed.dim.hint"="32" %key_local, i32* "fpga.decayed.dim.hint"="16" %buf) #0 !dbg !541 {
entry:
  %rcon = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %aes_key, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32* %enc_key, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i32* %dec_key, metadata !548, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata i32* %key_local, metadata !550, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.value(metadata i32* %buf, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = bitcast i32* %rcon to i8*, !dbg !554
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !554
  call void @llvm.dbg.declare(metadata i32* %rcon, metadata !555, metadata !DIExpression()), !dbg !556
  store i32 1, i32* %rcon, align 4, !dbg !556
  br label %ecb1, !dbg !557

ecb1:                                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !558, metadata !DIExpression()), !dbg !559
  br label %for.cond, !dbg !560

for.cond:                                         ; preds = %for.inc, %ecb1
  %i.0 = phi i32 [ 0, %ecb1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !558, metadata !DIExpression()), !dbg !559
  %cmp = icmp slt i32 %i.0, 32, !dbg !562
  br i1 %cmp, label %for.body, label %for.end, !dbg !564

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !565
  %arrayidx = getelementptr inbounds i32, i32* %key_local, i64 %idxprom, !dbg !565
  %1 = load i32, i32* %arrayidx, align 4, !dbg !565
  %idxprom1 = sext i32 %i.0 to i64, !dbg !567
  %arrayidx2 = getelementptr inbounds i32, i32* %dec_key, i64 %idxprom1, !dbg !567
  store i32 %1, i32* %arrayidx2, align 4, !dbg !568
  %idxprom3 = sext i32 %i.0 to i64, !dbg !569
  %arrayidx4 = getelementptr inbounds i32, i32* %enc_key, i64 %idxprom3, !dbg !569
  store i32 %1, i32* %arrayidx4, align 4, !dbg !570
  br label %for.inc, !dbg !571

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !572
  call void @llvm.dbg.value(metadata i32 %inc, metadata !558, metadata !DIExpression()), !dbg !559
  br label %for.cond, !dbg !573, !llvm.loop !574

for.end:                                          ; preds = %for.cond
  br label %ecb2, !dbg !575

ecb2:                                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 8, metadata !558, metadata !DIExpression()), !dbg !559
  br label %for.cond5, !dbg !577

for.cond5:                                        ; preds = %for.body6, %ecb2
  %i.1 = phi i32 [ 8, %ecb2 ], [ %dec, %for.body6 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !558, metadata !DIExpression()), !dbg !559
  %dec = add nsw i32 %i.1, -1, !dbg !579
  call void @llvm.dbg.value(metadata i32 %dec, metadata !558, metadata !DIExpression()), !dbg !559
  %tobool = icmp ne i32 %dec, 0, !dbg !581
  br i1 %tobool, label %for.body6, label %for.end7, !dbg !581

for.body6:                                        ; preds = %for.cond5
  call void @aes_expandDecKey(i32* %dec_key, i32* %rcon), !dbg !582
  br label %for.cond5, !dbg !584, !llvm.loop !585

for.end7:                                         ; preds = %for.cond5
  call void @aes_addRoundKey_cpy(i32* %buf, i32* %enc_key, i32* %aes_key), !dbg !588
  br label %ecb3, !dbg !588

ecb3:                                             ; preds = %for.end7
  call void @llvm.dbg.value(metadata i32 1, metadata !558, metadata !DIExpression()), !dbg !559
  store i32 1, i32* %rcon, align 4, !dbg !589
  br label %for.cond8, !dbg !591

for.cond8:                                        ; preds = %for.inc13, %ecb3
  %i.2 = phi i32 [ 1, %ecb3 ], [ %inc14, %for.inc13 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !558, metadata !DIExpression()), !dbg !559
  %cmp9 = icmp slt i32 %i.2, 14, !dbg !592
  br i1 %cmp9, label %for.body10, label %for.end15, !dbg !594

for.body10:                                       ; preds = %for.cond8
  call void @aes_subBytes(i32* %buf), !dbg !595
  call void @aes_shiftRows(i32* %buf), !dbg !597
  call void @aes_mixColumns(i32* %buf), !dbg !598
  %and = and i32 %i.2, 1, !dbg !599
  %tobool11 = icmp ne i32 %and, 0, !dbg !599
  br i1 %tobool11, label %if.then, label %if.else, !dbg !601

if.then:                                          ; preds = %for.body10
  %arrayidx12 = getelementptr inbounds i32, i32* %aes_key, i64 16, !dbg !602
  call void @aes_addRoundKey(i32* %buf, i32* %arrayidx12), !dbg !603
  br label %if.end, !dbg !603

if.else:                                          ; preds = %for.body10
  call void @aes_expandEncKey(i32* %aes_key, i32* %rcon), !dbg !604
  call void @aes_addRoundKey(i32* %buf, i32* %aes_key), !dbg !605
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc13, !dbg !606

for.inc13:                                        ; preds = %if.end
  %inc14 = add nsw i32 %i.2, 1, !dbg !607
  call void @llvm.dbg.value(metadata i32 %inc14, metadata !558, metadata !DIExpression()), !dbg !559
  br label %for.cond8, !dbg !608, !llvm.loop !609

for.end15:                                        ; preds = %for.cond8
  call void @aes_subBytes(i32* %buf), !dbg !612
  call void @aes_shiftRows(i32* %buf), !dbg !613
  call void @aes_expandEncKey(i32* %aes_key, i32* %rcon), !dbg !614
  call void @aes_addRoundKey(i32* %buf, i32* %aes_key), !dbg !615
  %2 = bitcast i32* %rcon to i8*, !dbg !616
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !616
  ret void, !dbg !616
}

; Function Attrs: nounwind
define void @hls_top(i32 %size, i32* "fpga.decayed.dim.hint"="32" %key_array, i32* "fpga.decayed.dim.hint"="32" %enckey_array, i32* "fpga.decayed.dim.hint"="32" %deckey_array) #3 !dbg !617 !fpga.function.pragma !620 {
entry:
  %key_local = alloca [32 x i32], align 4
  %buf = alloca [16 x i32], align 4
  %aes_key = alloca [32 x i32], align 4
  %enc_key = alloca [32 x i32], align 4
  %dec_key = alloca [32 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %size, metadata !623, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i32* %key_array, metadata !625, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32* %enckey_array, metadata !627, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i32* %deckey_array, metadata !629, metadata !DIExpression()), !dbg !630
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %key_array, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !631
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %enckey_array, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !632
  call void @llvm.sideeffect() #6 [ "xlx_m_axi"(i32* %deckey_array, [0 x i8] zeroinitializer, i64 -1, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, [0 x i8] zeroinitializer) ], !dbg !633
  call void @llvm.sideeffect() #7 [ "xlx_s_axilite"(i32 %size, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !634
  call void @llvm.sideeffect() #8 [ "xlx_s_axilite"(i8* null, [0 x i8] zeroinitializer, i64 -1, i1 false, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer, [0 x i8] zeroinitializer) ], !dbg !635
  %0 = bitcast [32 x i32]* %key_local to i8*, !dbg !636
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %0) #5, !dbg !636
  call void @llvm.dbg.declare(metadata [32 x i32]* %key_local, metadata !637, metadata !DIExpression()), !dbg !641
  %1 = bitcast [16 x i32]* %buf to i8*, !dbg !642
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %1) #5, !dbg !642
  call void @llvm.dbg.declare(metadata [16 x i32]* %buf, metadata !643, metadata !DIExpression()), !dbg !647
  %2 = bitcast [32 x i32]* %aes_key to i8*, !dbg !648
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %2) #5, !dbg !648
  call void @llvm.dbg.declare(metadata [32 x i32]* %aes_key, metadata !649, metadata !DIExpression()), !dbg !650
  %3 = bitcast [32 x i32]* %enc_key to i8*, !dbg !651
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %3) #5, !dbg !651
  call void @llvm.dbg.declare(metadata [32 x i32]* %enc_key, metadata !652, metadata !DIExpression()), !dbg !653
  %4 = bitcast [32 x i32]* %dec_key to i8*, !dbg !654
  call void @llvm.lifetime.start.p0i8(i64 128, i8* %4) #5, !dbg !654
  call void @llvm.dbg.declare(metadata [32 x i32]* %dec_key, metadata !655, metadata !DIExpression()), !dbg !656
  br label %VITIS_LOOP_295_1, !dbg !654

VITIS_LOOP_295_1:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond, !dbg !659

for.cond:                                         ; preds = %for.inc, %VITIS_LOOP_295_1
  %i.0 = phi i32 [ 0, %VITIS_LOOP_295_1 ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !657, metadata !DIExpression()), !dbg !658
  %cmp = icmp slt i32 %i.0, 16, !dbg !661
  br i1 %cmp, label %for.body, label %for.end, !dbg !663

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 16, !dbg !664
  %add = add nsw i32 %mul, %i.0, !dbg !666
  %idxprom = sext i32 %i.0 to i64, !dbg !667
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %buf, i64 0, i64 %idxprom, !dbg !667
  store i32 %add, i32* %arrayidx, align 4, !dbg !668
  br label %for.inc, !dbg !669

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !670
  call void @llvm.dbg.value(metadata i32 %inc, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond, !dbg !671, !llvm.loop !672

for.end:                                          ; preds = %for.cond
  br label %VITIS_LOOP_299_2, !dbg !673

VITIS_LOOP_299_2:                                 ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond1, !dbg !675

for.cond1:                                        ; preds = %for.inc6, %VITIS_LOOP_299_2
  %i.1 = phi i32 [ 0, %VITIS_LOOP_299_2 ], [ %inc7, %for.inc6 ]
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !657, metadata !DIExpression()), !dbg !658
  %cmp2 = icmp slt i32 %i.1, 32, !dbg !677
  br i1 %cmp2, label %for.body3, label %for.end8, !dbg !679

for.body3:                                        ; preds = %for.cond1
  %idxprom4 = sext i32 %i.1 to i64, !dbg !680
  %arrayidx5 = getelementptr inbounds [32 x i32], [32 x i32]* %key_local, i64 0, i64 %idxprom4, !dbg !680
  store i32 %i.1, i32* %arrayidx5, align 4, !dbg !682
  br label %for.inc6, !dbg !683

for.inc6:                                         ; preds = %for.body3
  %inc7 = add nsw i32 %i.1, 1, !dbg !684
  call void @llvm.dbg.value(metadata i32 %inc7, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond1, !dbg !685, !llvm.loop !686

for.end8:                                         ; preds = %for.cond1
  br label %VITIS_LOOP_304_3, !dbg !687

VITIS_LOOP_304_3:                                 ; preds = %for.end8
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond9, !dbg !689

for.cond9:                                        ; preds = %for.inc24, %VITIS_LOOP_304_3
  %i.2 = phi i32 [ 0, %VITIS_LOOP_304_3 ], [ %inc25, %for.inc24 ]
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !657, metadata !DIExpression()), !dbg !658
  %cmp10 = icmp slt i32 %i.2, 32, !dbg !691
  br i1 %cmp10, label %for.body11, label %for.end26, !dbg !693

for.body11:                                       ; preds = %for.cond9
  %idxprom12 = sext i32 %i.2 to i64, !dbg !694
  %arrayidx13 = getelementptr inbounds i32, i32* %key_array, i64 %idxprom12, !dbg !694
  %5 = load i32, i32* %arrayidx13, align 4, !dbg !694
  %idxprom14 = sext i32 %i.2 to i64, !dbg !696
  %arrayidx15 = getelementptr inbounds [32 x i32], [32 x i32]* %aes_key, i64 0, i64 %idxprom14, !dbg !696
  store i32 %5, i32* %arrayidx15, align 4, !dbg !697
  %idxprom16 = sext i32 %i.2 to i64, !dbg !698
  %arrayidx17 = getelementptr inbounds i32, i32* %enckey_array, i64 %idxprom16, !dbg !698
  %6 = load i32, i32* %arrayidx17, align 4, !dbg !698
  %idxprom18 = sext i32 %i.2 to i64, !dbg !699
  %arrayidx19 = getelementptr inbounds [32 x i32], [32 x i32]* %enc_key, i64 0, i64 %idxprom18, !dbg !699
  store i32 %6, i32* %arrayidx19, align 4, !dbg !700
  %idxprom20 = sext i32 %i.2 to i64, !dbg !701
  %arrayidx21 = getelementptr inbounds i32, i32* %deckey_array, i64 %idxprom20, !dbg !701
  %7 = load i32, i32* %arrayidx21, align 4, !dbg !701
  %idxprom22 = sext i32 %i.2 to i64, !dbg !702
  %arrayidx23 = getelementptr inbounds [32 x i32], [32 x i32]* %dec_key, i64 0, i64 %idxprom22, !dbg !702
  store i32 %7, i32* %arrayidx23, align 4, !dbg !703
  br label %for.inc24, !dbg !704

for.inc24:                                        ; preds = %for.body11
  %inc25 = add nsw i32 %i.2, 1, !dbg !705
  call void @llvm.dbg.value(metadata i32 %inc25, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond9, !dbg !706, !llvm.loop !707

for.end26:                                        ; preds = %for.cond9
  br label %VITIS_LOOP_310_4, !dbg !708

VITIS_LOOP_310_4:                                 ; preds = %for.end26
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond27, !dbg !710

for.cond27:                                       ; preds = %for.inc34, %VITIS_LOOP_310_4
  %i.3 = phi i32 [ 0, %VITIS_LOOP_310_4 ], [ %inc35, %for.inc34 ]
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !657, metadata !DIExpression()), !dbg !658
  %cmp28 = icmp slt i32 %i.3, %size, !dbg !712
  br i1 %cmp28, label %for.body29, label %for.end36, !dbg !714

for.body29:                                       ; preds = %for.cond27
  %arraydecay = getelementptr inbounds [32 x i32], [32 x i32]* %aes_key, i32 0, i32 0, !dbg !715
  %arraydecay30 = getelementptr inbounds [32 x i32], [32 x i32]* %enc_key, i32 0, i32 0, !dbg !717
  %arraydecay31 = getelementptr inbounds [32 x i32], [32 x i32]* %dec_key, i32 0, i32 0, !dbg !718
  %arraydecay32 = getelementptr inbounds [32 x i32], [32 x i32]* %key_local, i32 0, i32 0, !dbg !719
  %arraydecay33 = getelementptr inbounds [16 x i32], [16 x i32]* %buf, i32 0, i32 0, !dbg !720
  call void @aes256_encrypt_ecb(i32* %arraydecay, i32* %arraydecay30, i32* %arraydecay31, i32* %arraydecay32, i32* %arraydecay33), !dbg !721
  br label %for.inc34, !dbg !722

for.inc34:                                        ; preds = %for.body29
  %inc35 = add nsw i32 %i.3, 1, !dbg !723
  call void @llvm.dbg.value(metadata i32 %inc35, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond27, !dbg !724, !llvm.loop !725

for.end36:                                        ; preds = %for.cond27
  br label %VITIS_LOOP_315_5, !dbg !726

VITIS_LOOP_315_5:                                 ; preds = %for.end36
  call void @llvm.dbg.value(metadata i32 0, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond37, !dbg !728

for.cond37:                                       ; preds = %for.inc52, %VITIS_LOOP_315_5
  %i.4 = phi i32 [ 0, %VITIS_LOOP_315_5 ], [ %inc53, %for.inc52 ]
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !657, metadata !DIExpression()), !dbg !658
  %cmp38 = icmp slt i32 %i.4, 32, !dbg !730
  br i1 %cmp38, label %for.body39, label %for.end54, !dbg !732

for.body39:                                       ; preds = %for.cond37
  %idxprom40 = sext i32 %i.4 to i64, !dbg !733
  %arrayidx41 = getelementptr inbounds [32 x i32], [32 x i32]* %aes_key, i64 0, i64 %idxprom40, !dbg !733
  %8 = load i32, i32* %arrayidx41, align 4, !dbg !733
  %idxprom42 = sext i32 %i.4 to i64, !dbg !735
  %arrayidx43 = getelementptr inbounds i32, i32* %key_array, i64 %idxprom42, !dbg !735
  store i32 %8, i32* %arrayidx43, align 4, !dbg !736
  %idxprom44 = sext i32 %i.4 to i64, !dbg !737
  %arrayidx45 = getelementptr inbounds [32 x i32], [32 x i32]* %enc_key, i64 0, i64 %idxprom44, !dbg !737
  %9 = load i32, i32* %arrayidx45, align 4, !dbg !737
  %idxprom46 = sext i32 %i.4 to i64, !dbg !738
  %arrayidx47 = getelementptr inbounds i32, i32* %enckey_array, i64 %idxprom46, !dbg !738
  store i32 %9, i32* %arrayidx47, align 4, !dbg !739
  %idxprom48 = sext i32 %i.4 to i64, !dbg !740
  %arrayidx49 = getelementptr inbounds [32 x i32], [32 x i32]* %dec_key, i64 0, i64 %idxprom48, !dbg !740
  %10 = load i32, i32* %arrayidx49, align 4, !dbg !740
  %idxprom50 = sext i32 %i.4 to i64, !dbg !741
  %arrayidx51 = getelementptr inbounds i32, i32* %deckey_array, i64 %idxprom50, !dbg !741
  store i32 %10, i32* %arrayidx51, align 4, !dbg !742
  br label %for.inc52, !dbg !743

for.inc52:                                        ; preds = %for.body39
  %inc53 = add nsw i32 %i.4, 1, !dbg !744
  call void @llvm.dbg.value(metadata i32 %inc53, metadata !657, metadata !DIExpression()), !dbg !658
  br label %for.cond37, !dbg !745, !llvm.loop !746

for.end54:                                        ; preds = %for.cond37
  %11 = bitcast [32 x i32]* %dec_key to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %11) #5, !dbg !749
  %12 = bitcast [32 x i32]* %enc_key to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %12) #5, !dbg !749
  %13 = bitcast [32 x i32]* %aes_key to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %13) #5, !dbg !749
  %14 = bitcast [16 x i32]* %buf to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %14) #5, !dbg !749
  %15 = bitcast [32 x i32]* %key_local to i8*, !dbg !749
  call void @llvm.lifetime.end.p0i8(i64 128, i8* %15) #5, !dbg !749
  ret void, !dbg !749
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
attributes #6 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="1024" "xlx.source"="user" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="0" "xlx.source"="user" }

!llvm.dbg.cu = !{!2}
!llvm.ident = !{!12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12, !12}
!llvm.module.flags = !{!13, !14, !15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sbox", scope: !2, file: !6, line: 22, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/workspace/examples/aes/aes_prj/solution/.autopilot/db/aes.pp.0.c", directory: "/workspace/examples/aes")
!4 = !{}
!5 = !{!0}
!6 = !DIFile(filename: "aes.c", directory: "/workspace/examples/aes")
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !10)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 256)
!12 = !{!"clang version 7.0.0 "}
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = distinct !DISubprogram(name: "rj_xtime", scope: !6, file: !6, line: 111, type: !17, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{!9, !9}
!19 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !6, line: 111, type: !9)
!20 = !DILocation(line: 111, column: 18, scope: !16)
!21 = !DILocation(line: 112, column: 14, scope: !16)
!22 = !DILocation(line: 112, column: 11, scope: !16)
!23 = !DILocation(line: 112, column: 28, scope: !16)
!24 = !DILocation(line: 112, column: 34, scope: !16)
!25 = !DILocation(line: 112, column: 47, scope: !16)
!26 = !DILocation(line: 112, column: 54, scope: !16)
!27 = !DILocation(line: 112, column: 3, scope: !16)
!28 = distinct !DISubprogram(name: "aes_subBytes", scope: !6, file: !6, line: 116, type: !29, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!32 = !DILocalVariable(name: "buf", arg: 1, scope: !28, file: !6, line: 116, type: !31)
!33 = !DILocation(line: 116, column: 23, scope: !28)
!34 = !DILocalVariable(name: "i", scope: !28, file: !6, line: 117, type: !9)
!35 = !DILocation(line: 117, column: 16, scope: !28)
!36 = !DILocation(line: 117, column: 3, scope: !28)
!37 = !DILocation(line: 120, column: 8, scope: !38)
!38 = distinct !DILexicalBlock(scope: !28, file: !6, line: 120, column: 3)
!39 = !DILocation(line: 120, column: 18, scope: !40)
!40 = distinct !DILexicalBlock(scope: !38, file: !6, line: 120, column: 3)
!41 = !DILocation(line: 120, column: 3, scope: !38)
!42 = !DILocation(line: 121, column: 20, scope: !40)
!43 = !DILocation(line: 121, column: 27, scope: !40)
!44 = !DILocation(line: 121, column: 14, scope: !40)
!45 = !DILocation(line: 121, column: 5, scope: !40)
!46 = !DILocation(line: 121, column: 12, scope: !40)
!47 = !DILocation(line: 120, column: 24, scope: !40)
!48 = !DILocation(line: 120, column: 3, scope: !40)
!49 = distinct !{!49, !41, !50, !51}
!50 = !DILocation(line: 121, column: 32, scope: !38)
!51 = !{!"llvm.loop.name", !"sub"}
!52 = !DILocation(line: 122, column: 1, scope: !28)
!53 = distinct !DISubprogram(name: "aes_addRoundKey", scope: !6, file: !6, line: 125, type: !54, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !31, !31}
!56 = !DILocalVariable(name: "buf", arg: 1, scope: !53, file: !6, line: 125, type: !31)
!57 = !DILocation(line: 125, column: 26, scope: !53)
!58 = !DILocalVariable(name: "aes_key", arg: 2, scope: !53, file: !6, line: 125, type: !31)
!59 = !DILocation(line: 125, column: 39, scope: !53)
!60 = !DILocalVariable(name: "i", scope: !53, file: !6, line: 126, type: !9)
!61 = !DILocation(line: 126, column: 16, scope: !53)
!62 = !DILocation(line: 126, column: 3, scope: !53)
!63 = !DILocation(line: 129, column: 8, scope: !64)
!64 = distinct !DILexicalBlock(scope: !53, file: !6, line: 129, column: 3)
!65 = !DILocation(line: 129, column: 18, scope: !66)
!66 = distinct !DILexicalBlock(scope: !64, file: !6, line: 129, column: 3)
!67 = !DILocation(line: 129, column: 3, scope: !64)
!68 = !DILocation(line: 130, column: 14, scope: !66)
!69 = !DILocation(line: 130, column: 23, scope: !66)
!70 = !DILocation(line: 130, column: 21, scope: !66)
!71 = !DILocation(line: 130, column: 5, scope: !66)
!72 = !DILocation(line: 130, column: 12, scope: !66)
!73 = !DILocation(line: 129, column: 24, scope: !66)
!74 = !DILocation(line: 129, column: 3, scope: !66)
!75 = distinct !{!75, !67, !76, !77}
!76 = !DILocation(line: 130, column: 32, scope: !64)
!77 = !{!"llvm.loop.name", !"addkey"}
!78 = !DILocation(line: 131, column: 1, scope: !53)
!79 = distinct !DISubprogram(name: "aes_addRoundKey_cpy", scope: !6, file: !6, line: 134, type: !80, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !31, !31, !31}
!82 = !DILocalVariable(name: "buf", arg: 1, scope: !79, file: !6, line: 134, type: !31)
!83 = !DILocation(line: 134, column: 30, scope: !79)
!84 = !DILocalVariable(name: "enc_key", arg: 2, scope: !79, file: !6, line: 134, type: !31)
!85 = !DILocation(line: 134, column: 43, scope: !79)
!86 = !DILocalVariable(name: "aes_key", arg: 3, scope: !79, file: !6, line: 134, type: !31)
!87 = !DILocation(line: 134, column: 60, scope: !79)
!88 = !DILocalVariable(name: "i", scope: !79, file: !6, line: 135, type: !9)
!89 = !DILocation(line: 135, column: 16, scope: !79)
!90 = !DILocation(line: 135, column: 3, scope: !79)
!91 = !DILocation(line: 138, column: 8, scope: !92)
!92 = distinct !DILexicalBlock(scope: !79, file: !6, line: 138, column: 3)
!93 = !DILocation(line: 138, column: 18, scope: !94)
!94 = distinct !DILexicalBlock(scope: !92, file: !6, line: 138, column: 3)
!95 = !DILocation(line: 138, column: 3, scope: !92)
!96 = !DILocation(line: 139, column: 14, scope: !94)
!97 = !DILocation(line: 139, column: 37, scope: !94)
!98 = !DILocation(line: 139, column: 24, scope: !94)
!99 = !DILocation(line: 139, column: 35, scope: !94)
!100 = !DILocation(line: 139, column: 21, scope: !94)
!101 = !DILocation(line: 139, column: 5, scope: !94)
!102 = !DILocation(line: 139, column: 12, scope: !94)
!103 = !DILocation(line: 140, column: 34, scope: !94)
!104 = !DILocation(line: 140, column: 23, scope: !94)
!105 = !DILocation(line: 140, column: 16, scope: !94)
!106 = !DILocation(line: 140, column: 5, scope: !94)
!107 = !DILocation(line: 140, column: 21, scope: !94)
!108 = !DILocation(line: 138, column: 24, scope: !94)
!109 = !DILocation(line: 138, column: 3, scope: !94)
!110 = distinct !{!110, !95, !111, !112}
!111 = !DILocation(line: 140, column: 37, scope: !92)
!112 = !{!"llvm.loop.name", !"cpkey"}
!113 = !DILocation(line: 141, column: 1, scope: !79)
!114 = distinct !DISubprogram(name: "aes_shiftRows", scope: !6, file: !6, line: 144, type: !29, isLocal: false, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!115 = !DILocalVariable(name: "buf", arg: 1, scope: !114, file: !6, line: 144, type: !31)
!116 = !DILocation(line: 144, column: 24, scope: !114)
!117 = !DILocation(line: 147, column: 7, scope: !114)
!118 = !DILocalVariable(name: "i", scope: !114, file: !6, line: 145, type: !9)
!119 = !DILocation(line: 145, column: 16, scope: !114)
!120 = !DILocation(line: 148, column: 12, scope: !114)
!121 = !DILocation(line: 148, column: 3, scope: !114)
!122 = !DILocation(line: 148, column: 10, scope: !114)
!123 = !DILocation(line: 149, column: 12, scope: !114)
!124 = !DILocation(line: 149, column: 3, scope: !114)
!125 = !DILocation(line: 149, column: 10, scope: !114)
!126 = !DILocation(line: 150, column: 12, scope: !114)
!127 = !DILocation(line: 150, column: 3, scope: !114)
!128 = !DILocation(line: 150, column: 10, scope: !114)
!129 = !DILocation(line: 151, column: 3, scope: !114)
!130 = !DILocation(line: 151, column: 11, scope: !114)
!131 = !DILocation(line: 152, column: 7, scope: !114)
!132 = !DILocation(line: 153, column: 13, scope: !114)
!133 = !DILocation(line: 153, column: 3, scope: !114)
!134 = !DILocation(line: 153, column: 11, scope: !114)
!135 = !DILocation(line: 154, column: 3, scope: !114)
!136 = !DILocation(line: 154, column: 10, scope: !114)
!137 = !DILocation(line: 155, column: 7, scope: !114)
!138 = !DILocalVariable(name: "j", scope: !114, file: !6, line: 145, type: !9)
!139 = !DILocation(line: 145, column: 19, scope: !114)
!140 = !DILocation(line: 156, column: 12, scope: !114)
!141 = !DILocation(line: 156, column: 3, scope: !114)
!142 = !DILocation(line: 156, column: 10, scope: !114)
!143 = !DILocation(line: 157, column: 13, scope: !114)
!144 = !DILocation(line: 157, column: 3, scope: !114)
!145 = !DILocation(line: 157, column: 11, scope: !114)
!146 = !DILocation(line: 158, column: 13, scope: !114)
!147 = !DILocation(line: 158, column: 3, scope: !114)
!148 = !DILocation(line: 158, column: 11, scope: !114)
!149 = !DILocation(line: 159, column: 3, scope: !114)
!150 = !DILocation(line: 159, column: 10, scope: !114)
!151 = !DILocation(line: 160, column: 7, scope: !114)
!152 = !DILocation(line: 161, column: 13, scope: !114)
!153 = !DILocation(line: 161, column: 3, scope: !114)
!154 = !DILocation(line: 161, column: 11, scope: !114)
!155 = !DILocation(line: 162, column: 3, scope: !114)
!156 = !DILocation(line: 162, column: 10, scope: !114)
!157 = !DILocation(line: 163, column: 1, scope: !114)
!158 = distinct !DISubprogram(name: "aes_mixColumns", scope: !6, file: !6, line: 166, type: !29, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!159 = !DILocalVariable(name: "buf", arg: 1, scope: !158, file: !6, line: 166, type: !31)
!160 = !DILocation(line: 166, column: 25, scope: !158)
!161 = !DILocation(line: 167, column: 3, scope: !158)
!162 = !DILocalVariable(name: "i", scope: !158, file: !6, line: 167, type: !9)
!163 = !DILocation(line: 167, column: 16, scope: !158)
!164 = !DILocation(line: 170, column: 8, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !6, line: 170, column: 3)
!166 = !DILocation(line: 170, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !165, file: !6, line: 170, column: 3)
!168 = !DILocation(line: 170, column: 3, scope: !165)
!169 = !DILocation(line: 171, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !6, line: 170, column: 31)
!171 = !DILocalVariable(name: "a", scope: !158, file: !6, line: 167, type: !9)
!172 = !DILocation(line: 167, column: 19, scope: !158)
!173 = !DILocation(line: 172, column: 15, scope: !170)
!174 = !DILocation(line: 172, column: 9, scope: !170)
!175 = !DILocalVariable(name: "b", scope: !158, file: !6, line: 167, type: !9)
!176 = !DILocation(line: 167, column: 22, scope: !158)
!177 = !DILocation(line: 173, column: 15, scope: !170)
!178 = !DILocation(line: 173, column: 9, scope: !170)
!179 = !DILocalVariable(name: "c", scope: !158, file: !6, line: 167, type: !9)
!180 = !DILocation(line: 167, column: 25, scope: !158)
!181 = !DILocation(line: 174, column: 15, scope: !170)
!182 = !DILocation(line: 174, column: 9, scope: !170)
!183 = !DILocalVariable(name: "d", scope: !158, file: !6, line: 167, type: !9)
!184 = !DILocation(line: 167, column: 28, scope: !158)
!185 = !DILocation(line: 175, column: 11, scope: !170)
!186 = !DILocation(line: 175, column: 15, scope: !170)
!187 = !DILocation(line: 175, column: 19, scope: !170)
!188 = !DILocalVariable(name: "e", scope: !158, file: !6, line: 167, type: !9)
!189 = !DILocation(line: 167, column: 31, scope: !158)
!190 = !DILocation(line: 176, column: 14, scope: !170)
!191 = !DILocation(line: 176, column: 39, scope: !170)
!192 = !DILocation(line: 176, column: 28, scope: !170)
!193 = !DILocation(line: 176, column: 26, scope: !170)
!194 = !DILocation(line: 176, column: 21, scope: !170)
!195 = !DILocation(line: 176, column: 5, scope: !170)
!196 = !DILocation(line: 176, column: 12, scope: !170)
!197 = !DILocation(line: 177, column: 24, scope: !170)
!198 = !DILocation(line: 177, column: 18, scope: !170)
!199 = !DILocation(line: 177, column: 47, scope: !170)
!200 = !DILocation(line: 177, column: 36, scope: !170)
!201 = !DILocation(line: 177, column: 34, scope: !170)
!202 = !DILocation(line: 177, column: 29, scope: !170)
!203 = !DILocation(line: 177, column: 11, scope: !170)
!204 = !DILocation(line: 177, column: 5, scope: !170)
!205 = !DILocation(line: 177, column: 16, scope: !170)
!206 = !DILocation(line: 178, column: 24, scope: !170)
!207 = !DILocation(line: 178, column: 18, scope: !170)
!208 = !DILocation(line: 178, column: 47, scope: !170)
!209 = !DILocation(line: 178, column: 36, scope: !170)
!210 = !DILocation(line: 178, column: 34, scope: !170)
!211 = !DILocation(line: 178, column: 29, scope: !170)
!212 = !DILocation(line: 178, column: 11, scope: !170)
!213 = !DILocation(line: 178, column: 5, scope: !170)
!214 = !DILocation(line: 178, column: 16, scope: !170)
!215 = !DILocation(line: 179, column: 24, scope: !170)
!216 = !DILocation(line: 179, column: 18, scope: !170)
!217 = !DILocation(line: 179, column: 47, scope: !170)
!218 = !DILocation(line: 179, column: 36, scope: !170)
!219 = !DILocation(line: 179, column: 34, scope: !170)
!220 = !DILocation(line: 179, column: 29, scope: !170)
!221 = !DILocation(line: 179, column: 11, scope: !170)
!222 = !DILocation(line: 179, column: 5, scope: !170)
!223 = !DILocation(line: 179, column: 16, scope: !170)
!224 = !DILocation(line: 180, column: 3, scope: !170)
!225 = !DILocation(line: 170, column: 25, scope: !167)
!226 = !DILocation(line: 170, column: 3, scope: !167)
!227 = distinct !{!227, !168, !228, !229}
!228 = !DILocation(line: 180, column: 3, scope: !165)
!229 = !{!"llvm.loop.name", !"mix"}
!230 = !DILocation(line: 181, column: 1, scope: !158)
!231 = distinct !DISubprogram(name: "aes_expandEncKey", scope: !6, file: !6, line: 184, type: !54, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!232 = !DILocalVariable(name: "aes_key", arg: 1, scope: !231, file: !6, line: 184, type: !31)
!233 = !DILocation(line: 184, column: 27, scope: !231)
!234 = !DILocalVariable(name: "rc", arg: 2, scope: !231, file: !6, line: 184, type: !31)
!235 = !DILocation(line: 184, column: 45, scope: !231)
!236 = !DILocation(line: 187, column: 16, scope: !231)
!237 = !DILocation(line: 187, column: 36, scope: !231)
!238 = !DILocation(line: 187, column: 48, scope: !231)
!239 = !DILocation(line: 187, column: 30, scope: !231)
!240 = !DILocation(line: 187, column: 58, scope: !231)
!241 = !DILocation(line: 187, column: 55, scope: !231)
!242 = !DILocation(line: 187, column: 27, scope: !231)
!243 = !DILocation(line: 187, column: 3, scope: !231)
!244 = !DILocation(line: 187, column: 14, scope: !231)
!245 = !DILocation(line: 188, column: 16, scope: !231)
!246 = !DILocation(line: 188, column: 35, scope: !231)
!247 = !DILocation(line: 188, column: 47, scope: !231)
!248 = !DILocation(line: 188, column: 29, scope: !231)
!249 = !DILocation(line: 188, column: 27, scope: !231)
!250 = !DILocation(line: 188, column: 3, scope: !231)
!251 = !DILocation(line: 188, column: 14, scope: !231)
!252 = !DILocation(line: 189, column: 16, scope: !231)
!253 = !DILocation(line: 189, column: 35, scope: !231)
!254 = !DILocation(line: 189, column: 47, scope: !231)
!255 = !DILocation(line: 189, column: 29, scope: !231)
!256 = !DILocation(line: 189, column: 27, scope: !231)
!257 = !DILocation(line: 189, column: 3, scope: !231)
!258 = !DILocation(line: 189, column: 14, scope: !231)
!259 = !DILocation(line: 190, column: 16, scope: !231)
!260 = !DILocation(line: 190, column: 35, scope: !231)
!261 = !DILocation(line: 190, column: 47, scope: !231)
!262 = !DILocation(line: 190, column: 29, scope: !231)
!263 = !DILocation(line: 190, column: 27, scope: !231)
!264 = !DILocation(line: 190, column: 3, scope: !231)
!265 = !DILocation(line: 190, column: 14, scope: !231)
!266 = !DILocation(line: 191, column: 12, scope: !231)
!267 = !DILocation(line: 191, column: 17, scope: !231)
!268 = !DILocation(line: 191, column: 29, scope: !231)
!269 = !DILocation(line: 191, column: 34, scope: !231)
!270 = !DILocation(line: 191, column: 40, scope: !231)
!271 = !DILocation(line: 191, column: 45, scope: !231)
!272 = !DILocation(line: 191, column: 23, scope: !231)
!273 = !DILocation(line: 191, column: 54, scope: !231)
!274 = !DILocation(line: 191, column: 7, scope: !231)
!275 = !DILocation(line: 191, column: 3, scope: !231)
!276 = !DILocalVariable(name: "i", scope: !231, file: !6, line: 185, type: !9)
!277 = !DILocation(line: 185, column: 16, scope: !231)
!278 = !DILocation(line: 194, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !231, file: !6, line: 194, column: 3)
!280 = !DILocation(line: 194, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !279, file: !6, line: 194, column: 3)
!282 = !DILocation(line: 194, column: 3, scope: !279)
!283 = !DILocation(line: 195, column: 18, scope: !281)
!284 = !DILocation(line: 195, column: 41, scope: !281)
!285 = !DILocation(line: 195, column: 31, scope: !281)
!286 = !DILocation(line: 195, column: 29, scope: !281)
!287 = !DILocation(line: 195, column: 5, scope: !281)
!288 = !DILocation(line: 195, column: 16, scope: !281)
!289 = !DILocation(line: 196, column: 32, scope: !281)
!290 = !DILocation(line: 196, column: 22, scope: !281)
!291 = !DILocation(line: 196, column: 49, scope: !281)
!292 = !DILocation(line: 196, column: 39, scope: !281)
!293 = !DILocation(line: 196, column: 37, scope: !281)
!294 = !DILocation(line: 196, column: 15, scope: !281)
!295 = !DILocation(line: 196, column: 5, scope: !281)
!296 = !DILocation(line: 196, column: 20, scope: !281)
!297 = !DILocation(line: 197, column: 32, scope: !281)
!298 = !DILocation(line: 197, column: 22, scope: !281)
!299 = !DILocation(line: 197, column: 49, scope: !281)
!300 = !DILocation(line: 197, column: 39, scope: !281)
!301 = !DILocation(line: 197, column: 37, scope: !281)
!302 = !DILocation(line: 197, column: 15, scope: !281)
!303 = !DILocation(line: 197, column: 5, scope: !281)
!304 = !DILocation(line: 197, column: 20, scope: !281)
!305 = !DILocation(line: 198, column: 32, scope: !281)
!306 = !DILocation(line: 198, column: 22, scope: !281)
!307 = !DILocation(line: 198, column: 49, scope: !281)
!308 = !DILocation(line: 198, column: 39, scope: !281)
!309 = !DILocation(line: 198, column: 37, scope: !281)
!310 = !DILocation(line: 198, column: 15, scope: !281)
!311 = !DILocation(line: 198, column: 5, scope: !281)
!312 = !DILocation(line: 198, column: 20, scope: !281)
!313 = !DILocation(line: 194, column: 25, scope: !281)
!314 = !DILocation(line: 194, column: 3, scope: !281)
!315 = distinct !{!315, !282, !316, !317}
!316 = !DILocation(line: 198, column: 52, scope: !279)
!317 = !{!"llvm.loop.name", !"exp1"}
!318 = !DILocation(line: 199, column: 17, scope: !231)
!319 = !DILocation(line: 199, column: 37, scope: !231)
!320 = !DILocation(line: 199, column: 49, scope: !231)
!321 = !DILocation(line: 199, column: 31, scope: !231)
!322 = !DILocation(line: 199, column: 29, scope: !231)
!323 = !DILocation(line: 199, column: 3, scope: !231)
!324 = !DILocation(line: 199, column: 15, scope: !231)
!325 = !DILocation(line: 200, column: 17, scope: !231)
!326 = !DILocation(line: 200, column: 37, scope: !231)
!327 = !DILocation(line: 200, column: 49, scope: !231)
!328 = !DILocation(line: 200, column: 31, scope: !231)
!329 = !DILocation(line: 200, column: 29, scope: !231)
!330 = !DILocation(line: 200, column: 3, scope: !231)
!331 = !DILocation(line: 200, column: 15, scope: !231)
!332 = !DILocation(line: 201, column: 17, scope: !231)
!333 = !DILocation(line: 201, column: 37, scope: !231)
!334 = !DILocation(line: 201, column: 49, scope: !231)
!335 = !DILocation(line: 201, column: 31, scope: !231)
!336 = !DILocation(line: 201, column: 29, scope: !231)
!337 = !DILocation(line: 201, column: 3, scope: !231)
!338 = !DILocation(line: 201, column: 15, scope: !231)
!339 = !DILocation(line: 202, column: 17, scope: !231)
!340 = !DILocation(line: 202, column: 37, scope: !231)
!341 = !DILocation(line: 202, column: 49, scope: !231)
!342 = !DILocation(line: 202, column: 31, scope: !231)
!343 = !DILocation(line: 202, column: 29, scope: !231)
!344 = !DILocation(line: 202, column: 3, scope: !231)
!345 = !DILocation(line: 202, column: 15, scope: !231)
!346 = !DILocation(line: 205, column: 8, scope: !347)
!347 = distinct !DILexicalBlock(scope: !231, file: !6, line: 205, column: 3)
!348 = !DILocation(line: 205, column: 18, scope: !349)
!349 = distinct !DILexicalBlock(scope: !347, file: !6, line: 205, column: 3)
!350 = !DILocation(line: 205, column: 3, scope: !347)
!351 = !DILocation(line: 206, column: 18, scope: !349)
!352 = !DILocation(line: 206, column: 41, scope: !349)
!353 = !DILocation(line: 206, column: 31, scope: !349)
!354 = !DILocation(line: 206, column: 29, scope: !349)
!355 = !DILocation(line: 206, column: 5, scope: !349)
!356 = !DILocation(line: 206, column: 16, scope: !349)
!357 = !DILocation(line: 207, column: 32, scope: !349)
!358 = !DILocation(line: 207, column: 22, scope: !349)
!359 = !DILocation(line: 207, column: 49, scope: !349)
!360 = !DILocation(line: 207, column: 39, scope: !349)
!361 = !DILocation(line: 207, column: 37, scope: !349)
!362 = !DILocation(line: 207, column: 15, scope: !349)
!363 = !DILocation(line: 207, column: 5, scope: !349)
!364 = !DILocation(line: 207, column: 20, scope: !349)
!365 = !DILocation(line: 208, column: 32, scope: !349)
!366 = !DILocation(line: 208, column: 22, scope: !349)
!367 = !DILocation(line: 208, column: 49, scope: !349)
!368 = !DILocation(line: 208, column: 39, scope: !349)
!369 = !DILocation(line: 208, column: 37, scope: !349)
!370 = !DILocation(line: 208, column: 15, scope: !349)
!371 = !DILocation(line: 208, column: 5, scope: !349)
!372 = !DILocation(line: 208, column: 20, scope: !349)
!373 = !DILocation(line: 209, column: 32, scope: !349)
!374 = !DILocation(line: 209, column: 22, scope: !349)
!375 = !DILocation(line: 209, column: 49, scope: !349)
!376 = !DILocation(line: 209, column: 39, scope: !349)
!377 = !DILocation(line: 209, column: 37, scope: !349)
!378 = !DILocation(line: 209, column: 15, scope: !349)
!379 = !DILocation(line: 209, column: 5, scope: !349)
!380 = !DILocation(line: 209, column: 20, scope: !349)
!381 = !DILocation(line: 205, column: 26, scope: !349)
!382 = !DILocation(line: 205, column: 3, scope: !349)
!383 = distinct !{!383, !350, !384, !385}
!384 = !DILocation(line: 209, column: 52, scope: !347)
!385 = !{!"llvm.loop.name", !"exp2"}
!386 = !DILocation(line: 210, column: 1, scope: !231)
!387 = distinct !DISubprogram(name: "aes_expandDecKey", scope: !6, file: !6, line: 212, type: !54, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!388 = !DILocalVariable(name: "dec_key", arg: 1, scope: !387, file: !6, line: 212, type: !31)
!389 = !DILocation(line: 212, column: 27, scope: !387)
!390 = !DILocalVariable(name: "rc", arg: 2, scope: !387, file: !6, line: 212, type: !31)
!391 = !DILocation(line: 212, column: 45, scope: !387)
!392 = !DILocation(line: 215, column: 16, scope: !387)
!393 = !DILocation(line: 215, column: 36, scope: !387)
!394 = !DILocation(line: 215, column: 48, scope: !387)
!395 = !DILocation(line: 215, column: 30, scope: !387)
!396 = !DILocation(line: 215, column: 58, scope: !387)
!397 = !DILocation(line: 215, column: 55, scope: !387)
!398 = !DILocation(line: 215, column: 27, scope: !387)
!399 = !DILocation(line: 215, column: 3, scope: !387)
!400 = !DILocation(line: 215, column: 14, scope: !387)
!401 = !DILocation(line: 216, column: 16, scope: !387)
!402 = !DILocation(line: 216, column: 35, scope: !387)
!403 = !DILocation(line: 216, column: 47, scope: !387)
!404 = !DILocation(line: 216, column: 29, scope: !387)
!405 = !DILocation(line: 216, column: 27, scope: !387)
!406 = !DILocation(line: 216, column: 3, scope: !387)
!407 = !DILocation(line: 216, column: 14, scope: !387)
!408 = !DILocation(line: 217, column: 16, scope: !387)
!409 = !DILocation(line: 217, column: 35, scope: !387)
!410 = !DILocation(line: 217, column: 47, scope: !387)
!411 = !DILocation(line: 217, column: 29, scope: !387)
!412 = !DILocation(line: 217, column: 27, scope: !387)
!413 = !DILocation(line: 217, column: 3, scope: !387)
!414 = !DILocation(line: 217, column: 14, scope: !387)
!415 = !DILocation(line: 218, column: 16, scope: !387)
!416 = !DILocation(line: 218, column: 35, scope: !387)
!417 = !DILocation(line: 218, column: 47, scope: !387)
!418 = !DILocation(line: 218, column: 29, scope: !387)
!419 = !DILocation(line: 218, column: 27, scope: !387)
!420 = !DILocation(line: 218, column: 3, scope: !387)
!421 = !DILocation(line: 218, column: 14, scope: !387)
!422 = !DILocation(line: 219, column: 12, scope: !387)
!423 = !DILocation(line: 219, column: 17, scope: !387)
!424 = !DILocation(line: 219, column: 29, scope: !387)
!425 = !DILocation(line: 219, column: 34, scope: !387)
!426 = !DILocation(line: 219, column: 40, scope: !387)
!427 = !DILocation(line: 219, column: 45, scope: !387)
!428 = !DILocation(line: 219, column: 23, scope: !387)
!429 = !DILocation(line: 219, column: 54, scope: !387)
!430 = !DILocation(line: 219, column: 7, scope: !387)
!431 = !DILocation(line: 219, column: 3, scope: !387)
!432 = !DILocalVariable(name: "i", scope: !387, file: !6, line: 213, type: !9)
!433 = !DILocation(line: 213, column: 16, scope: !387)
!434 = !DILocation(line: 222, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !387, file: !6, line: 222, column: 3)
!436 = !DILocation(line: 222, column: 17, scope: !437)
!437 = distinct !DILexicalBlock(scope: !435, file: !6, line: 222, column: 3)
!438 = !DILocation(line: 222, column: 3, scope: !435)
!439 = !DILocation(line: 223, column: 18, scope: !437)
!440 = !DILocation(line: 223, column: 41, scope: !437)
!441 = !DILocation(line: 223, column: 31, scope: !437)
!442 = !DILocation(line: 223, column: 29, scope: !437)
!443 = !DILocation(line: 223, column: 5, scope: !437)
!444 = !DILocation(line: 223, column: 16, scope: !437)
!445 = !DILocation(line: 224, column: 32, scope: !437)
!446 = !DILocation(line: 224, column: 22, scope: !437)
!447 = !DILocation(line: 224, column: 49, scope: !437)
!448 = !DILocation(line: 224, column: 39, scope: !437)
!449 = !DILocation(line: 224, column: 37, scope: !437)
!450 = !DILocation(line: 224, column: 15, scope: !437)
!451 = !DILocation(line: 224, column: 5, scope: !437)
!452 = !DILocation(line: 224, column: 20, scope: !437)
!453 = !DILocation(line: 225, column: 32, scope: !437)
!454 = !DILocation(line: 225, column: 22, scope: !437)
!455 = !DILocation(line: 225, column: 49, scope: !437)
!456 = !DILocation(line: 225, column: 39, scope: !437)
!457 = !DILocation(line: 225, column: 37, scope: !437)
!458 = !DILocation(line: 225, column: 15, scope: !437)
!459 = !DILocation(line: 225, column: 5, scope: !437)
!460 = !DILocation(line: 225, column: 20, scope: !437)
!461 = !DILocation(line: 226, column: 32, scope: !437)
!462 = !DILocation(line: 226, column: 22, scope: !437)
!463 = !DILocation(line: 226, column: 49, scope: !437)
!464 = !DILocation(line: 226, column: 39, scope: !437)
!465 = !DILocation(line: 226, column: 37, scope: !437)
!466 = !DILocation(line: 226, column: 15, scope: !437)
!467 = !DILocation(line: 226, column: 5, scope: !437)
!468 = !DILocation(line: 226, column: 20, scope: !437)
!469 = !DILocation(line: 222, column: 25, scope: !437)
!470 = !DILocation(line: 222, column: 3, scope: !437)
!471 = distinct !{!471, !438, !472, !317}
!472 = !DILocation(line: 226, column: 52, scope: !435)
!473 = !DILocation(line: 227, column: 17, scope: !387)
!474 = !DILocation(line: 227, column: 37, scope: !387)
!475 = !DILocation(line: 227, column: 49, scope: !387)
!476 = !DILocation(line: 227, column: 31, scope: !387)
!477 = !DILocation(line: 227, column: 29, scope: !387)
!478 = !DILocation(line: 227, column: 3, scope: !387)
!479 = !DILocation(line: 227, column: 15, scope: !387)
!480 = !DILocation(line: 228, column: 17, scope: !387)
!481 = !DILocation(line: 228, column: 37, scope: !387)
!482 = !DILocation(line: 228, column: 49, scope: !387)
!483 = !DILocation(line: 228, column: 31, scope: !387)
!484 = !DILocation(line: 228, column: 29, scope: !387)
!485 = !DILocation(line: 228, column: 3, scope: !387)
!486 = !DILocation(line: 228, column: 15, scope: !387)
!487 = !DILocation(line: 229, column: 17, scope: !387)
!488 = !DILocation(line: 229, column: 37, scope: !387)
!489 = !DILocation(line: 229, column: 49, scope: !387)
!490 = !DILocation(line: 229, column: 31, scope: !387)
!491 = !DILocation(line: 229, column: 29, scope: !387)
!492 = !DILocation(line: 229, column: 3, scope: !387)
!493 = !DILocation(line: 229, column: 15, scope: !387)
!494 = !DILocation(line: 230, column: 17, scope: !387)
!495 = !DILocation(line: 230, column: 37, scope: !387)
!496 = !DILocation(line: 230, column: 49, scope: !387)
!497 = !DILocation(line: 230, column: 31, scope: !387)
!498 = !DILocation(line: 230, column: 29, scope: !387)
!499 = !DILocation(line: 230, column: 3, scope: !387)
!500 = !DILocation(line: 230, column: 15, scope: !387)
!501 = !DILocation(line: 233, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !387, file: !6, line: 233, column: 3)
!503 = !DILocation(line: 233, column: 18, scope: !504)
!504 = distinct !DILexicalBlock(scope: !502, file: !6, line: 233, column: 3)
!505 = !DILocation(line: 233, column: 3, scope: !502)
!506 = !DILocation(line: 234, column: 18, scope: !504)
!507 = !DILocation(line: 234, column: 41, scope: !504)
!508 = !DILocation(line: 234, column: 31, scope: !504)
!509 = !DILocation(line: 234, column: 29, scope: !504)
!510 = !DILocation(line: 234, column: 5, scope: !504)
!511 = !DILocation(line: 234, column: 16, scope: !504)
!512 = !DILocation(line: 235, column: 32, scope: !504)
!513 = !DILocation(line: 235, column: 22, scope: !504)
!514 = !DILocation(line: 235, column: 49, scope: !504)
!515 = !DILocation(line: 235, column: 39, scope: !504)
!516 = !DILocation(line: 235, column: 37, scope: !504)
!517 = !DILocation(line: 235, column: 15, scope: !504)
!518 = !DILocation(line: 235, column: 5, scope: !504)
!519 = !DILocation(line: 235, column: 20, scope: !504)
!520 = !DILocation(line: 236, column: 32, scope: !504)
!521 = !DILocation(line: 236, column: 22, scope: !504)
!522 = !DILocation(line: 236, column: 49, scope: !504)
!523 = !DILocation(line: 236, column: 39, scope: !504)
!524 = !DILocation(line: 236, column: 37, scope: !504)
!525 = !DILocation(line: 236, column: 15, scope: !504)
!526 = !DILocation(line: 236, column: 5, scope: !504)
!527 = !DILocation(line: 236, column: 20, scope: !504)
!528 = !DILocation(line: 237, column: 32, scope: !504)
!529 = !DILocation(line: 237, column: 22, scope: !504)
!530 = !DILocation(line: 237, column: 49, scope: !504)
!531 = !DILocation(line: 237, column: 39, scope: !504)
!532 = !DILocation(line: 237, column: 37, scope: !504)
!533 = !DILocation(line: 237, column: 15, scope: !504)
!534 = !DILocation(line: 237, column: 5, scope: !504)
!535 = !DILocation(line: 237, column: 20, scope: !504)
!536 = !DILocation(line: 233, column: 26, scope: !504)
!537 = !DILocation(line: 233, column: 3, scope: !504)
!538 = distinct !{!538, !505, !539, !385}
!539 = !DILocation(line: 237, column: 52, scope: !502)
!540 = !DILocation(line: 238, column: 1, scope: !387)
!541 = distinct !DISubprogram(name: "aes256_encrypt_ecb", scope: !6, file: !6, line: 242, type: !542, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !31, !31, !31, !31, !31}
!544 = !DILocalVariable(name: "aes_key", arg: 1, scope: !541, file: !6, line: 242, type: !31)
!545 = !DILocation(line: 242, column: 29, scope: !541)
!546 = !DILocalVariable(name: "enc_key", arg: 2, scope: !541, file: !6, line: 242, type: !31)
!547 = !DILocation(line: 242, column: 46, scope: !541)
!548 = !DILocalVariable(name: "dec_key", arg: 3, scope: !541, file: !6, line: 242, type: !31)
!549 = !DILocation(line: 242, column: 63, scope: !541)
!550 = !DILocalVariable(name: "key_local", arg: 4, scope: !541, file: !6, line: 243, type: !31)
!551 = !DILocation(line: 243, column: 29, scope: !541)
!552 = !DILocalVariable(name: "buf", arg: 5, scope: !541, file: !6, line: 243, type: !31)
!553 = !DILocation(line: 243, column: 48, scope: !541)
!554 = !DILocation(line: 245, column: 3, scope: !541)
!555 = !DILocalVariable(name: "rcon", scope: !541, file: !6, line: 245, type: !9)
!556 = !DILocation(line: 245, column: 7, scope: !541)
!557 = !DILocation(line: 246, column: 3, scope: !541)
!558 = !DILocalVariable(name: "i", scope: !541, file: !6, line: 246, type: !9)
!559 = !DILocation(line: 246, column: 7, scope: !541)
!560 = !DILocation(line: 249, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !541, file: !6, line: 249, column: 3)
!562 = !DILocation(line: 249, column: 17, scope: !563)
!563 = distinct !DILexicalBlock(scope: !561, file: !6, line: 249, column: 3)
!564 = !DILocation(line: 249, column: 3, scope: !561)
!565 = !DILocation(line: 250, column: 31, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !6, line: 249, column: 28)
!567 = !DILocation(line: 250, column: 18, scope: !566)
!568 = !DILocation(line: 250, column: 29, scope: !566)
!569 = !DILocation(line: 250, column: 5, scope: !566)
!570 = !DILocation(line: 250, column: 16, scope: !566)
!571 = !DILocation(line: 251, column: 3, scope: !566)
!572 = !DILocation(line: 249, column: 24, scope: !563)
!573 = !DILocation(line: 249, column: 3, scope: !563)
!574 = distinct !{!574, !564, !575, !576}
!575 = !DILocation(line: 251, column: 3, scope: !561)
!576 = !{!"llvm.loop.name", !"ecb1"}
!577 = !DILocation(line: 254, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !541, file: !6, line: 254, column: 3)
!579 = !DILocation(line: 254, column: 15, scope: !580)
!580 = distinct !DILexicalBlock(scope: !578, file: !6, line: 254, column: 3)
!581 = !DILocation(line: 254, column: 3, scope: !578)
!582 = !DILocation(line: 255, column: 5, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !6, line: 254, column: 21)
!584 = !DILocation(line: 254, column: 3, scope: !580)
!585 = distinct !{!585, !581, !586, !587}
!586 = !DILocation(line: 256, column: 3, scope: !578)
!587 = !{!"llvm.loop.name", !"ecb2"}
!588 = !DILocation(line: 259, column: 3, scope: !541)
!589 = !DILocation(line: 262, column: 20, scope: !590)
!590 = distinct !DILexicalBlock(scope: !541, file: !6, line: 262, column: 3)
!591 = !DILocation(line: 262, column: 8, scope: !590)
!592 = !DILocation(line: 262, column: 27, scope: !593)
!593 = distinct !DILexicalBlock(scope: !590, file: !6, line: 262, column: 3)
!594 = !DILocation(line: 262, column: 3, scope: !590)
!595 = !DILocation(line: 263, column: 5, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !6, line: 262, column: 38)
!597 = !DILocation(line: 264, column: 5, scope: !596)
!598 = !DILocation(line: 265, column: 5, scope: !596)
!599 = !DILocation(line: 266, column: 11, scope: !600)
!600 = distinct !DILexicalBlock(scope: !596, file: !6, line: 266, column: 9)
!601 = !DILocation(line: 266, column: 9, scope: !596)
!602 = !DILocation(line: 267, column: 29, scope: !600)
!603 = !DILocation(line: 267, column: 7, scope: !600)
!604 = !DILocation(line: 269, column: 7, scope: !600)
!605 = !DILocation(line: 269, column: 41, scope: !600)
!606 = !DILocation(line: 270, column: 3, scope: !596)
!607 = !DILocation(line: 262, column: 33, scope: !593)
!608 = !DILocation(line: 262, column: 3, scope: !593)
!609 = distinct !{!609, !594, !610, !611}
!610 = !DILocation(line: 270, column: 3, scope: !590)
!611 = !{!"llvm.loop.name", !"ecb3"}
!612 = !DILocation(line: 271, column: 3, scope: !541)
!613 = !DILocation(line: 272, column: 3, scope: !541)
!614 = !DILocation(line: 273, column: 3, scope: !541)
!615 = !DILocation(line: 274, column: 3, scope: !541)
!616 = !DILocation(line: 275, column: 1, scope: !541)
!617 = distinct !DISubprogram(name: "hls_top", scope: !6, file: !6, line: 277, type: !618, isLocal: false, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !2, variables: !4)
!618 = !DISubroutineType(types: !619)
!619 = !{null, !9, !31, !31, !31}
!620 = !{!621}
!621 = !{!"fpga.top", !"user", !622}
!622 = !DILocation(line: 277, column: 16, scope: !617)
!623 = !DILocalVariable(name: "size", arg: 1, scope: !617, file: !6, line: 277, type: !9)
!624 = !DILocation(line: 277, column: 60, scope: !617)
!625 = !DILocalVariable(name: "key_array", arg: 2, scope: !617, file: !6, line: 277, type: !31)
!626 = !DILocation(line: 277, column: 70, scope: !617)
!627 = !DILocalVariable(name: "enckey_array", arg: 3, scope: !617, file: !6, line: 277, type: !31)
!628 = !DILocation(line: 277, column: 89, scope: !617)
!629 = !DILocalVariable(name: "deckey_array", arg: 4, scope: !617, file: !6, line: 278, type: !31)
!630 = !DILocation(line: 278, column: 18, scope: !617)
!631 = !DILocation(line: 279, column: 9, scope: !617)
!632 = !DILocation(line: 280, column: 9, scope: !617)
!633 = !DILocation(line: 281, column: 9, scope: !617)
!634 = !DILocation(line: 282, column: 9, scope: !617)
!635 = !DILocation(line: 283, column: 9, scope: !617)
!636 = !DILocation(line: 285, column: 2, scope: !617)
!637 = !DILocalVariable(name: "key_local", scope: !617, file: !6, line: 285, type: !638)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 32)
!641 = !DILocation(line: 285, column: 6, scope: !617)
!642 = !DILocation(line: 286, column: 3, scope: !617)
!643 = !DILocalVariable(name: "buf", scope: !617, file: !6, line: 286, type: !644)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 512, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 16)
!647 = !DILocation(line: 286, column: 7, scope: !617)
!648 = !DILocation(line: 290, column: 3, scope: !617)
!649 = !DILocalVariable(name: "aes_key", scope: !617, file: !6, line: 290, type: !638)
!650 = !DILocation(line: 290, column: 7, scope: !617)
!651 = !DILocation(line: 291, column: 3, scope: !617)
!652 = !DILocalVariable(name: "enc_key", scope: !617, file: !6, line: 291, type: !638)
!653 = !DILocation(line: 291, column: 7, scope: !617)
!654 = !DILocation(line: 292, column: 3, scope: !617)
!655 = !DILocalVariable(name: "dec_key", scope: !617, file: !6, line: 292, type: !638)
!656 = !DILocation(line: 292, column: 7, scope: !617)
!657 = !DILocalVariable(name: "i", scope: !617, file: !6, line: 287, type: !9)
!658 = !DILocation(line: 287, column: 7, scope: !617)
!659 = !DILocation(line: 295, column: 26, scope: !660)
!660 = distinct !DILexicalBlock(scope: !617, file: !6, line: 295, column: 21)
!661 = !DILocation(line: 295, column: 35, scope: !662)
!662 = distinct !DILexicalBlock(scope: !660, file: !6, line: 295, column: 21)
!663 = !DILocation(line: 295, column: 21, scope: !660)
!664 = !DILocation(line: 296, column: 16, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !6, line: 295, column: 46)
!666 = !DILocation(line: 296, column: 21, scope: !665)
!667 = !DILocation(line: 296, column: 5, scope: !665)
!668 = !DILocation(line: 296, column: 12, scope: !665)
!669 = !DILocation(line: 297, column: 3, scope: !665)
!670 = !DILocation(line: 295, column: 42, scope: !662)
!671 = !DILocation(line: 295, column: 21, scope: !662)
!672 = distinct !{!672, !663, !673, !674}
!673 = !DILocation(line: 297, column: 3, scope: !660)
!674 = !{!"llvm.loop.name", !"VITIS_LOOP_295_1"}
!675 = !DILocation(line: 299, column: 26, scope: !676)
!676 = distinct !DILexicalBlock(scope: !617, file: !6, line: 299, column: 21)
!677 = !DILocation(line: 299, column: 35, scope: !678)
!678 = distinct !DILexicalBlock(scope: !676, file: !6, line: 299, column: 21)
!679 = !DILocation(line: 299, column: 21, scope: !676)
!680 = !DILocation(line: 300, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !6, line: 299, column: 46)
!682 = !DILocation(line: 300, column: 18, scope: !681)
!683 = !DILocation(line: 301, column: 3, scope: !681)
!684 = !DILocation(line: 299, column: 42, scope: !678)
!685 = !DILocation(line: 299, column: 21, scope: !678)
!686 = distinct !{!686, !679, !687, !688}
!687 = !DILocation(line: 301, column: 3, scope: !676)
!688 = !{!"llvm.loop.name", !"VITIS_LOOP_299_2"}
!689 = !DILocation(line: 304, column: 26, scope: !690)
!690 = distinct !DILexicalBlock(scope: !617, file: !6, line: 304, column: 21)
!691 = !DILocation(line: 304, column: 35, scope: !692)
!692 = distinct !DILexicalBlock(scope: !690, file: !6, line: 304, column: 21)
!693 = !DILocation(line: 304, column: 21, scope: !690)
!694 = !DILocation(line: 305, column: 18, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !6, line: 304, column: 46)
!696 = !DILocation(line: 305, column: 5, scope: !695)
!697 = !DILocation(line: 305, column: 16, scope: !695)
!698 = !DILocation(line: 306, column: 18, scope: !695)
!699 = !DILocation(line: 306, column: 5, scope: !695)
!700 = !DILocation(line: 306, column: 16, scope: !695)
!701 = !DILocation(line: 307, column: 18, scope: !695)
!702 = !DILocation(line: 307, column: 5, scope: !695)
!703 = !DILocation(line: 307, column: 16, scope: !695)
!704 = !DILocation(line: 308, column: 3, scope: !695)
!705 = !DILocation(line: 304, column: 42, scope: !692)
!706 = !DILocation(line: 304, column: 21, scope: !692)
!707 = distinct !{!707, !693, !708, !709}
!708 = !DILocation(line: 308, column: 3, scope: !690)
!709 = !{!"llvm.loop.name", !"VITIS_LOOP_304_3"}
!710 = !DILocation(line: 310, column: 26, scope: !711)
!711 = distinct !DILexicalBlock(scope: !617, file: !6, line: 310, column: 21)
!712 = !DILocation(line: 310, column: 35, scope: !713)
!713 = distinct !DILexicalBlock(scope: !711, file: !6, line: 310, column: 21)
!714 = !DILocation(line: 310, column: 21, scope: !711)
!715 = !DILocation(line: 311, column: 24, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !6, line: 310, column: 48)
!717 = !DILocation(line: 311, column: 33, scope: !716)
!718 = !DILocation(line: 311, column: 42, scope: !716)
!719 = !DILocation(line: 311, column: 51, scope: !716)
!720 = !DILocation(line: 311, column: 62, scope: !716)
!721 = !DILocation(line: 311, column: 5, scope: !716)
!722 = !DILocation(line: 312, column: 3, scope: !716)
!723 = !DILocation(line: 310, column: 44, scope: !713)
!724 = !DILocation(line: 310, column: 21, scope: !713)
!725 = distinct !{!725, !714, !726, !727}
!726 = !DILocation(line: 312, column: 3, scope: !711)
!727 = !{!"llvm.loop.name", !"VITIS_LOOP_310_4"}
!728 = !DILocation(line: 315, column: 26, scope: !729)
!729 = distinct !DILexicalBlock(scope: !617, file: !6, line: 315, column: 21)
!730 = !DILocation(line: 315, column: 35, scope: !731)
!731 = distinct !DILexicalBlock(scope: !729, file: !6, line: 315, column: 21)
!732 = !DILocation(line: 315, column: 21, scope: !729)
!733 = !DILocation(line: 316, column: 20, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !6, line: 315, column: 46)
!735 = !DILocation(line: 316, column: 5, scope: !734)
!736 = !DILocation(line: 316, column: 18, scope: !734)
!737 = !DILocation(line: 317, column: 23, scope: !734)
!738 = !DILocation(line: 317, column: 5, scope: !734)
!739 = !DILocation(line: 317, column: 21, scope: !734)
!740 = !DILocation(line: 318, column: 23, scope: !734)
!741 = !DILocation(line: 318, column: 5, scope: !734)
!742 = !DILocation(line: 318, column: 21, scope: !734)
!743 = !DILocation(line: 319, column: 3, scope: !734)
!744 = !DILocation(line: 315, column: 42, scope: !731)
!745 = !DILocation(line: 315, column: 21, scope: !731)
!746 = distinct !{!746, !732, !747, !748}
!747 = !DILocation(line: 319, column: 3, scope: !729)
!748 = !{!"llvm.loop.name", !"VITIS_LOOP_315_5"}
!749 = !DILocation(line: 320, column: 1, scope: !617)
