; ModuleID = 'crypto/des/xcbc_enc.c'
source_filename = "crypto/des/xcbc_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @DES_xcbc_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.DES_ks* noundef %schedule, [8 x i8]* nocapture noundef %ivec, [8 x i8]* nocapture noundef readonly %inw, [8 x i8]* nocapture noundef readonly %outw, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %tin = alloca [2 x i32], align 4
  %0 = bitcast [2 x i32]* %tin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %inw, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %inw, i64 0, i64 1
  %1 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %1 to i32
  %incdec.ptr1 = getelementptr inbounds [8 x i8], [8 x i8]* %inw, i64 0, i64 2
  %2 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv2 = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %incdec.ptr3 = getelementptr inbounds [8 x i8], [8 x i8]* %inw, i64 0, i64 3
  %3 = load i8, i8* %incdec.ptr1, align 1, !tbaa !4
  %conv4 = zext i8 %3 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %incdec.ptr7 = getelementptr inbounds [8 x i8], [8 x i8]* %inw, i64 0, i64 4
  %4 = load i8, i8* %incdec.ptr3, align 1, !tbaa !4
  %conv8 = zext i8 %4 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %incdec.ptr11 = getelementptr inbounds [8 x i8], [8 x i8]* %inw, i64 0, i64 5
  %5 = load i8, i8* %incdec.ptr7, align 1, !tbaa !4
  %conv12 = zext i8 %5 to i32
  %incdec.ptr13 = getelementptr inbounds [8 x i8], [8 x i8]* %inw, i64 0, i64 6
  %6 = load i8, i8* %incdec.ptr11, align 1, !tbaa !4
  %conv14 = zext i8 %6 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %or16 = or i32 %shl15, %conv12
  %incdec.ptr17 = getelementptr inbounds [8 x i8], [8 x i8]* %inw, i64 0, i64 7
  %7 = load i8, i8* %incdec.ptr13, align 1, !tbaa !4
  %conv18 = zext i8 %7 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or20 = or i32 %or16, %shl19
  %8 = load i8, i8* %incdec.ptr17, align 1, !tbaa !4
  %conv22 = zext i8 %8 to i32
  %shl23 = shl nuw i32 %conv22, 24
  %or24 = or i32 %or20, %shl23
  %arrayidx25 = getelementptr inbounds [8 x i8], [8 x i8]* %outw, i64 0, i64 0
  %incdec.ptr26 = getelementptr inbounds [8 x i8], [8 x i8]* %outw, i64 0, i64 1
  %9 = load i8, i8* %arrayidx25, align 1, !tbaa !4
  %conv27 = zext i8 %9 to i32
  %incdec.ptr28 = getelementptr inbounds [8 x i8], [8 x i8]* %outw, i64 0, i64 2
  %10 = load i8, i8* %incdec.ptr26, align 1, !tbaa !4
  %conv29 = zext i8 %10 to i32
  %shl30 = shl nuw nsw i32 %conv29, 8
  %or31 = or i32 %shl30, %conv27
  %incdec.ptr32 = getelementptr inbounds [8 x i8], [8 x i8]* %outw, i64 0, i64 3
  %11 = load i8, i8* %incdec.ptr28, align 1, !tbaa !4
  %conv33 = zext i8 %11 to i32
  %shl34 = shl nuw nsw i32 %conv33, 16
  %or35 = or i32 %or31, %shl34
  %incdec.ptr36 = getelementptr inbounds [8 x i8], [8 x i8]* %outw, i64 0, i64 4
  %12 = load i8, i8* %incdec.ptr32, align 1, !tbaa !4
  %conv37 = zext i8 %12 to i32
  %shl38 = shl nuw i32 %conv37, 24
  %or39 = or i32 %or35, %shl38
  %incdec.ptr40 = getelementptr inbounds [8 x i8], [8 x i8]* %outw, i64 0, i64 5
  %13 = load i8, i8* %incdec.ptr36, align 1, !tbaa !4
  %conv41 = zext i8 %13 to i32
  %incdec.ptr42 = getelementptr inbounds [8 x i8], [8 x i8]* %outw, i64 0, i64 6
  %14 = load i8, i8* %incdec.ptr40, align 1, !tbaa !4
  %conv43 = zext i8 %14 to i32
  %shl44 = shl nuw nsw i32 %conv43, 8
  %or45 = or i32 %shl44, %conv41
  %incdec.ptr46 = getelementptr inbounds [8 x i8], [8 x i8]* %outw, i64 0, i64 7
  %15 = load i8, i8* %incdec.ptr42, align 1, !tbaa !4
  %conv47 = zext i8 %15 to i32
  %shl48 = shl nuw nsw i32 %conv47, 16
  %or49 = or i32 %or45, %shl48
  %16 = load i8, i8* %incdec.ptr46, align 1, !tbaa !4
  %conv51 = zext i8 %16 to i32
  %shl52 = shl nuw i32 %conv51, 24
  %or53 = or i32 %or49, %shl52
  %arrayidx54 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  %tobool.not = icmp eq i32 %enc, 0
  %incdec.ptr261 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %17 = load i8, i8* %arrayidx54, align 1, !tbaa !4
  %conv262 = zext i8 %17 to i32
  %incdec.ptr263 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %18 = load i8, i8* %incdec.ptr261, align 1, !tbaa !4
  %conv264 = zext i8 %18 to i32
  %shl265 = shl nuw nsw i32 %conv264, 8
  %or266 = or i32 %shl265, %conv262
  %incdec.ptr267 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %19 = load i8, i8* %incdec.ptr263, align 1, !tbaa !4
  %conv268 = zext i8 %19 to i32
  %shl269 = shl nuw nsw i32 %conv268, 16
  %or270 = or i32 %or266, %shl269
  %incdec.ptr271 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %20 = load i8, i8* %incdec.ptr267, align 1, !tbaa !4
  %conv272 = zext i8 %20 to i32
  %shl273 = shl nuw i32 %conv272, 24
  %or274 = or i32 %or270, %shl273
  %incdec.ptr275 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %21 = load i8, i8* %incdec.ptr271, align 1, !tbaa !4
  %conv276 = zext i8 %21 to i32
  %incdec.ptr277 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %22 = load i8, i8* %incdec.ptr275, align 1, !tbaa !4
  %conv278 = zext i8 %22 to i32
  %shl279 = shl nuw nsw i32 %conv278, 8
  %or280 = or i32 %shl279, %conv276
  %incdec.ptr281 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %23 = load i8, i8* %incdec.ptr277, align 1, !tbaa !4
  %conv282 = zext i8 %23 to i32
  %shl283 = shl nuw nsw i32 %conv282, 16
  %or284 = or i32 %or280, %shl283
  %24 = load i8, i8* %incdec.ptr281, align 1, !tbaa !4
  %conv286 = zext i8 %24 to i32
  %shl287 = shl nuw i32 %conv286, 24
  %or288 = or i32 %or284, %shl287
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cmp750 = icmp sgt i64 %length, 7
  br i1 %cmp750, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %arrayidx113 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  %arrayidx116 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %l.0.in755 = phi i64 [ %length, %for.body.lr.ph ], [ %l.0, %for.body ]
  %in.addr.0754 = phi i8* [ %in, %for.body.lr.ph ], [ %incdec.ptr108, %for.body ]
  %tout1.0753 = phi i32 [ %or288, %for.body.lr.ph ], [ %xor133, %for.body ]
  %tout0.0752 = phi i32 [ %or274, %for.body.lr.ph ], [ %xor118, %for.body ]
  %out.addr.0751 = phi i8* [ %out, %for.body.lr.ph ], [ %incdec.ptr148, %for.body ]
  %l.0 = add nsw i64 %l.0.in755, -8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %in.addr.0754, i64 1
  %25 = load i8, i8* %in.addr.0754, align 1, !tbaa !4
  %conv85 = zext i8 %25 to i32
  %incdec.ptr86 = getelementptr inbounds i8, i8* %in.addr.0754, i64 2
  %26 = load i8, i8* %incdec.ptr84, align 1, !tbaa !4
  %conv87 = zext i8 %26 to i32
  %shl88 = shl nuw nsw i32 %conv87, 8
  %or89 = or i32 %shl88, %conv85
  %incdec.ptr90 = getelementptr inbounds i8, i8* %in.addr.0754, i64 3
  %27 = load i8, i8* %incdec.ptr86, align 1, !tbaa !4
  %conv91 = zext i8 %27 to i32
  %shl92 = shl nuw nsw i32 %conv91, 16
  %or93 = or i32 %or89, %shl92
  %incdec.ptr94 = getelementptr inbounds i8, i8* %in.addr.0754, i64 4
  %28 = load i8, i8* %incdec.ptr90, align 1, !tbaa !4
  %conv95 = zext i8 %28 to i32
  %shl96 = shl nuw i32 %conv95, 24
  %or97 = or i32 %or93, %shl96
  %incdec.ptr98 = getelementptr inbounds i8, i8* %in.addr.0754, i64 5
  %29 = load i8, i8* %incdec.ptr94, align 1, !tbaa !4
  %conv99 = zext i8 %29 to i32
  %incdec.ptr100 = getelementptr inbounds i8, i8* %in.addr.0754, i64 6
  %30 = load i8, i8* %incdec.ptr98, align 1, !tbaa !4
  %conv101 = zext i8 %30 to i32
  %shl102 = shl nuw nsw i32 %conv101, 8
  %or103 = or i32 %shl102, %conv99
  %incdec.ptr104 = getelementptr inbounds i8, i8* %in.addr.0754, i64 7
  %31 = load i8, i8* %incdec.ptr100, align 1, !tbaa !4
  %conv105 = zext i8 %31 to i32
  %shl106 = shl nuw nsw i32 %conv105, 16
  %or107 = or i32 %or103, %shl106
  %incdec.ptr108 = getelementptr inbounds i8, i8* %in.addr.0754, i64 8
  %32 = load i8, i8* %incdec.ptr104, align 1, !tbaa !4
  %conv109 = zext i8 %32 to i32
  %shl110 = shl nuw i32 %conv109, 24
  %or111 = or i32 %or107, %shl110
  %xor = xor i32 %tout0.0752, %or10
  %xor112 = xor i32 %xor, %or97
  store i32 %xor112, i32* %arrayidx113, align 4, !tbaa !7
  %xor114 = xor i32 %tout1.0753, %or24
  %xor115 = xor i32 %xor114, %or111
  store i32 %xor115, i32* %arrayidx116, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx113, %struct.DES_ks* noundef %schedule, i32 noundef 1) #4
  %33 = load i32, i32* %arrayidx113, align 4, !tbaa !7
  %xor118 = xor i32 %33, %or39
  %conv119 = trunc i32 %xor118 to i8
  %incdec.ptr120 = getelementptr inbounds i8, i8* %out.addr.0751, i64 1
  store i8 %conv119, i8* %out.addr.0751, align 1, !tbaa !4
  %shr = lshr i32 %xor118, 8
  %conv122 = trunc i32 %shr to i8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %out.addr.0751, i64 2
  store i8 %conv122, i8* %incdec.ptr120, align 1, !tbaa !4
  %shr124 = lshr i32 %xor118, 16
  %conv126 = trunc i32 %shr124 to i8
  %incdec.ptr127 = getelementptr inbounds i8, i8* %out.addr.0751, i64 3
  store i8 %conv126, i8* %incdec.ptr123, align 1, !tbaa !4
  %shr128 = lshr i32 %xor118, 24
  %conv130 = trunc i32 %shr128 to i8
  %incdec.ptr131 = getelementptr inbounds i8, i8* %out.addr.0751, i64 4
  store i8 %conv130, i8* %incdec.ptr127, align 1, !tbaa !4
  %34 = load i32, i32* %arrayidx116, align 4, !tbaa !7
  %xor133 = xor i32 %34, %or53
  %conv135 = trunc i32 %xor133 to i8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %out.addr.0751, i64 5
  store i8 %conv135, i8* %incdec.ptr131, align 1, !tbaa !4
  %shr137 = lshr i32 %xor133, 8
  %conv139 = trunc i32 %shr137 to i8
  %incdec.ptr140 = getelementptr inbounds i8, i8* %out.addr.0751, i64 6
  store i8 %conv139, i8* %incdec.ptr136, align 1, !tbaa !4
  %shr141 = lshr i32 %xor133, 16
  %conv143 = trunc i32 %shr141 to i8
  %incdec.ptr144 = getelementptr inbounds i8, i8* %out.addr.0751, i64 7
  store i8 %conv143, i8* %incdec.ptr140, align 1, !tbaa !4
  %shr145 = lshr i32 %xor133, 24
  %conv147 = trunc i32 %shr145 to i8
  %incdec.ptr148 = getelementptr inbounds i8, i8* %out.addr.0751, i64 8
  store i8 %conv147, i8* %incdec.ptr144, align 1, !tbaa !4
  %cmp = icmp ugt i64 %l.0.in755, 15
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body, %if.then
  %out.addr.0.lcssa = phi i8* [ %out, %if.then ], [ %incdec.ptr148, %for.body ]
  %tout0.0.lcssa = phi i32 [ %or274, %if.then ], [ %xor118, %for.body ]
  %tout1.0.lcssa = phi i32 [ %or288, %if.then ], [ %xor133, %for.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %if.then ], [ %incdec.ptr108, %for.body ]
  %l.0.in.lcssa = phi i64 [ %length, %if.then ], [ %l.0, %for.body ]
  %cmp150.not = icmp eq i64 %l.0.in.lcssa, 0
  br i1 %cmp150.not, label %for.end.if.end_crit_edge, label %if.then152

for.end.if.end_crit_edge:                         ; preds = %for.end
  %.pre = trunc i32 %tout0.0.lcssa to i8
  %.pre771 = lshr i32 %tout0.0.lcssa, 8
  %.pre772 = trunc i32 %.pre771 to i8
  %.pre773 = lshr i32 %tout0.0.lcssa, 16
  %.pre774 = trunc i32 %.pre773 to i8
  %.pre775 = lshr i32 %tout0.0.lcssa, 24
  %.pre776 = trunc i32 %.pre775 to i8
  %.pre777 = trunc i32 %tout1.0.lcssa to i8
  %.pre778 = lshr i32 %tout1.0.lcssa, 8
  %.pre779 = trunc i32 %.pre778 to i8
  %.pre780 = lshr i32 %tout1.0.lcssa, 16
  %.pre781 = trunc i32 %.pre780 to i8
  %.pre782 = lshr i32 %tout1.0.lcssa, 24
  %.pre783 = trunc i32 %.pre782 to i8
  br label %if.end

if.then152:                                       ; preds = %for.end
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0.lcssa, i64 %l.0.in.lcssa
  switch i64 %l.0.in.lcssa, label %sw.epilog [
    i64 1, label %sw.bb185
    i64 7, label %sw.bb157
    i64 6, label %sw.bb162
    i64 5, label %sw.bb167
    i64 4, label %sw.bb171
    i64 3, label %sw.bb175
    i64 2, label %sw.bb180
  ]

sw.bb157:                                         ; preds = %if.then152
  %incdec.ptr158 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %35 = load i8, i8* %incdec.ptr158, align 1, !tbaa !4
  %conv159 = zext i8 %35 to i32
  %shl160 = shl nuw nsw i32 %conv159, 16
  br label %sw.bb162

sw.bb162:                                         ; preds = %if.then152, %sw.bb157
  %tin1.1 = phi i32 [ 0, %if.then152 ], [ %shl160, %sw.bb157 ]
  %in.addr.2 = phi i8* [ %add.ptr, %if.then152 ], [ %incdec.ptr158, %sw.bb157 ]
  %incdec.ptr163 = getelementptr inbounds i8, i8* %in.addr.2, i64 -1
  %36 = load i8, i8* %incdec.ptr163, align 1, !tbaa !4
  %conv164 = zext i8 %36 to i32
  %shl165 = shl nuw nsw i32 %conv164, 8
  %or166 = or i32 %shl165, %tin1.1
  br label %sw.bb167

sw.bb167:                                         ; preds = %if.then152, %sw.bb162
  %tin1.2 = phi i32 [ 0, %if.then152 ], [ %or166, %sw.bb162 ]
  %in.addr.3 = phi i8* [ %add.ptr, %if.then152 ], [ %incdec.ptr163, %sw.bb162 ]
  %incdec.ptr168 = getelementptr inbounds i8, i8* %in.addr.3, i64 -1
  %37 = load i8, i8* %incdec.ptr168, align 1, !tbaa !4
  %conv169 = zext i8 %37 to i32
  %or170 = or i32 %tin1.2, %conv169
  br label %sw.bb171

sw.bb171:                                         ; preds = %if.then152, %sw.bb167
  %tin1.3 = phi i32 [ 0, %if.then152 ], [ %or170, %sw.bb167 ]
  %in.addr.4 = phi i8* [ %add.ptr, %if.then152 ], [ %incdec.ptr168, %sw.bb167 ]
  %incdec.ptr172 = getelementptr inbounds i8, i8* %in.addr.4, i64 -1
  %38 = load i8, i8* %incdec.ptr172, align 1, !tbaa !4
  %conv173 = zext i8 %38 to i32
  %shl174 = shl nuw i32 %conv173, 24
  br label %sw.bb175

sw.bb175:                                         ; preds = %if.then152, %sw.bb171
  %tin0.0 = phi i32 [ 0, %if.then152 ], [ %shl174, %sw.bb171 ]
  %tin1.4 = phi i32 [ 0, %if.then152 ], [ %tin1.3, %sw.bb171 ]
  %in.addr.5 = phi i8* [ %add.ptr, %if.then152 ], [ %incdec.ptr172, %sw.bb171 ]
  %incdec.ptr176 = getelementptr inbounds i8, i8* %in.addr.5, i64 -1
  %39 = load i8, i8* %incdec.ptr176, align 1, !tbaa !4
  %conv177 = zext i8 %39 to i32
  %shl178 = shl nuw nsw i32 %conv177, 16
  %or179 = or i32 %shl178, %tin0.0
  br label %sw.bb180

sw.bb180:                                         ; preds = %if.then152, %sw.bb175
  %tin0.1 = phi i32 [ 0, %if.then152 ], [ %or179, %sw.bb175 ]
  %tin1.5 = phi i32 [ 0, %if.then152 ], [ %tin1.4, %sw.bb175 ]
  %in.addr.6 = phi i8* [ %add.ptr, %if.then152 ], [ %incdec.ptr176, %sw.bb175 ]
  %incdec.ptr181 = getelementptr inbounds i8, i8* %in.addr.6, i64 -1
  %40 = load i8, i8* %incdec.ptr181, align 1, !tbaa !4
  %conv182 = zext i8 %40 to i32
  %shl183 = shl nuw nsw i32 %conv182, 8
  %or184 = or i32 %shl183, %tin0.1
  br label %sw.bb185

sw.bb185:                                         ; preds = %if.then152, %sw.bb180
  %tin0.2 = phi i32 [ 0, %if.then152 ], [ %or184, %sw.bb180 ]
  %tin1.6 = phi i32 [ 0, %if.then152 ], [ %tin1.5, %sw.bb180 ]
  %in.addr.7 = phi i8* [ %add.ptr, %if.then152 ], [ %incdec.ptr181, %sw.bb180 ]
  %incdec.ptr186 = getelementptr inbounds i8, i8* %in.addr.7, i64 -1
  %41 = load i8, i8* %incdec.ptr186, align 1, !tbaa !4
  %conv187 = zext i8 %41 to i32
  %or188 = or i32 %tin0.2, %conv187
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb185, %if.then152
  %tin0.3 = phi i32 [ 0, %if.then152 ], [ %or188, %sw.bb185 ]
  %tin1.7 = phi i32 [ 0, %if.then152 ], [ %tin1.6, %sw.bb185 ]
  %xor189 = xor i32 %tout0.0.lcssa, %or10
  %xor190 = xor i32 %xor189, %tin0.3
  %arrayidx191 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  store i32 %xor190, i32* %arrayidx191, align 4, !tbaa !7
  %xor192 = xor i32 %tout1.0.lcssa, %or24
  %xor193 = xor i32 %xor192, %tin1.7
  %arrayidx194 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  store i32 %xor193, i32* %arrayidx194, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx191, %struct.DES_ks* noundef %schedule, i32 noundef 1) #4
  %42 = load i32, i32* %arrayidx191, align 4, !tbaa !7
  %xor197 = xor i32 %42, %or39
  %conv199 = trunc i32 %xor197 to i8
  %incdec.ptr200 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 1
  store i8 %conv199, i8* %out.addr.0.lcssa, align 1, !tbaa !4
  %shr201 = lshr i32 %xor197, 8
  %conv203 = trunc i32 %shr201 to i8
  %incdec.ptr204 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 2
  store i8 %conv203, i8* %incdec.ptr200, align 1, !tbaa !4
  %shr205 = lshr i32 %xor197, 16
  %conv207 = trunc i32 %shr205 to i8
  %incdec.ptr208 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 3
  store i8 %conv207, i8* %incdec.ptr204, align 1, !tbaa !4
  %shr209 = lshr i32 %xor197, 24
  %conv211 = trunc i32 %shr209 to i8
  %incdec.ptr212 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 4
  store i8 %conv211, i8* %incdec.ptr208, align 1, !tbaa !4
  %43 = load i32, i32* %arrayidx194, align 4, !tbaa !7
  %xor214 = xor i32 %43, %or53
  %conv216 = trunc i32 %xor214 to i8
  %incdec.ptr217 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 5
  store i8 %conv216, i8* %incdec.ptr212, align 1, !tbaa !4
  %shr218 = lshr i32 %xor214, 8
  %conv220 = trunc i32 %shr218 to i8
  %incdec.ptr221 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 6
  store i8 %conv220, i8* %incdec.ptr217, align 1, !tbaa !4
  %shr222 = lshr i32 %xor214, 16
  %conv224 = trunc i32 %shr222 to i8
  %incdec.ptr225 = getelementptr inbounds i8, i8* %out.addr.0.lcssa, i64 7
  store i8 %conv224, i8* %incdec.ptr221, align 1, !tbaa !4
  %shr226 = lshr i32 %xor214, 24
  %conv228 = trunc i32 %shr226 to i8
  store i8 %conv228, i8* %incdec.ptr225, align 1, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %for.end.if.end_crit_edge, %sw.epilog
  %conv259.pre-phi = phi i8 [ %.pre783, %for.end.if.end_crit_edge ], [ %conv228, %sw.epilog ]
  %conv255.pre-phi = phi i8 [ %.pre781, %for.end.if.end_crit_edge ], [ %conv224, %sw.epilog ]
  %conv251.pre-phi = phi i8 [ %.pre779, %for.end.if.end_crit_edge ], [ %conv220, %sw.epilog ]
  %conv247.pre-phi = phi i8 [ %.pre777, %for.end.if.end_crit_edge ], [ %conv216, %sw.epilog ]
  %conv244.pre-phi = phi i8 [ %.pre776, %for.end.if.end_crit_edge ], [ %conv211, %sw.epilog ]
  %conv240.pre-phi = phi i8 [ %.pre774, %for.end.if.end_crit_edge ], [ %conv207, %sw.epilog ]
  %conv236.pre-phi = phi i8 [ %.pre772, %for.end.if.end_crit_edge ], [ %conv203, %sw.epilog ]
  %conv232.pre-phi = phi i8 [ %.pre, %for.end.if.end_crit_edge ], [ %conv199, %sw.epilog ]
  store i8 %conv232.pre-phi, i8* %arrayidx54, align 1, !tbaa !4
  store i8 %conv236.pre-phi, i8* %incdec.ptr261, align 1, !tbaa !4
  store i8 %conv240.pre-phi, i8* %incdec.ptr263, align 1, !tbaa !4
  store i8 %conv244.pre-phi, i8* %incdec.ptr267, align 1, !tbaa !4
  store i8 %conv247.pre-phi, i8* %incdec.ptr271, align 1, !tbaa !4
  store i8 %conv251.pre-phi, i8* %incdec.ptr275, align 1, !tbaa !4
  store i8 %conv255.pre-phi, i8* %incdec.ptr277, align 1, !tbaa !4
  br label %if.end482

if.else:                                          ; preds = %entry
  %cmp291760 = icmp sgt i64 %length, 8
  br i1 %cmp291760, label %for.body293.lr.ph, label %for.end365

for.body293.lr.ph:                                ; preds = %if.else
  %arrayidx309 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  %arrayidx325 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  br label %for.body293

for.body293:                                      ; preds = %for.body293.lr.ph, %for.body293
  %l.1.in765 = phi i64 [ %length, %for.body293.lr.ph ], [ %l.1, %for.body293 ]
  %in.addr.8764 = phi i8* [ %in, %for.body293.lr.ph ], [ %incdec.ptr320, %for.body293 ]
  %xor1.0763 = phi i32 [ %or288, %for.body293.lr.ph ], [ %or323, %for.body293 ]
  %xor0.0762 = phi i32 [ %or274, %for.body293.lr.ph ], [ %or307, %for.body293 ]
  %out.addr.1761 = phi i8* [ %out, %for.body293.lr.ph ], [ %incdec.ptr362, %for.body293 ]
  %l.1 = add nsw i64 %l.1.in765, -8
  %incdec.ptr294 = getelementptr inbounds i8, i8* %in.addr.8764, i64 1
  %44 = load i8, i8* %in.addr.8764, align 1, !tbaa !4
  %conv295 = zext i8 %44 to i32
  %incdec.ptr296 = getelementptr inbounds i8, i8* %in.addr.8764, i64 2
  %45 = load i8, i8* %incdec.ptr294, align 1, !tbaa !4
  %conv297 = zext i8 %45 to i32
  %shl298 = shl nuw nsw i32 %conv297, 8
  %or299 = or i32 %shl298, %conv295
  %incdec.ptr300 = getelementptr inbounds i8, i8* %in.addr.8764, i64 3
  %46 = load i8, i8* %incdec.ptr296, align 1, !tbaa !4
  %conv301 = zext i8 %46 to i32
  %shl302 = shl nuw nsw i32 %conv301, 16
  %or303 = or i32 %or299, %shl302
  %incdec.ptr304 = getelementptr inbounds i8, i8* %in.addr.8764, i64 4
  %47 = load i8, i8* %incdec.ptr300, align 1, !tbaa !4
  %conv305 = zext i8 %47 to i32
  %shl306 = shl nuw i32 %conv305, 24
  %or307 = or i32 %or303, %shl306
  %xor308 = xor i32 %or307, %or39
  store i32 %xor308, i32* %arrayidx309, align 4, !tbaa !7
  %incdec.ptr310 = getelementptr inbounds i8, i8* %in.addr.8764, i64 5
  %48 = load i8, i8* %incdec.ptr304, align 1, !tbaa !4
  %conv311 = zext i8 %48 to i32
  %incdec.ptr312 = getelementptr inbounds i8, i8* %in.addr.8764, i64 6
  %49 = load i8, i8* %incdec.ptr310, align 1, !tbaa !4
  %conv313 = zext i8 %49 to i32
  %shl314 = shl nuw nsw i32 %conv313, 8
  %or315 = or i32 %shl314, %conv311
  %incdec.ptr316 = getelementptr inbounds i8, i8* %in.addr.8764, i64 7
  %50 = load i8, i8* %incdec.ptr312, align 1, !tbaa !4
  %conv317 = zext i8 %50 to i32
  %shl318 = shl nuw nsw i32 %conv317, 16
  %or319 = or i32 %or315, %shl318
  %incdec.ptr320 = getelementptr inbounds i8, i8* %in.addr.8764, i64 8
  %51 = load i8, i8* %incdec.ptr316, align 1, !tbaa !4
  %conv321 = zext i8 %51 to i32
  %shl322 = shl nuw i32 %conv321, 24
  %or323 = or i32 %or319, %shl322
  %xor324 = xor i32 %or323, %or53
  store i32 %xor324, i32* %arrayidx325, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx309, %struct.DES_ks* noundef %schedule, i32 noundef 0) #4
  %52 = load i32, i32* %arrayidx309, align 4, !tbaa !7
  %xor328 = xor i32 %xor0.0762, %or10
  %xor329 = xor i32 %xor328, %52
  %53 = load i32, i32* %arrayidx325, align 4, !tbaa !7
  %xor331 = xor i32 %xor1.0763, %or24
  %xor332 = xor i32 %xor331, %53
  %conv334 = trunc i32 %xor329 to i8
  %incdec.ptr335 = getelementptr inbounds i8, i8* %out.addr.1761, i64 1
  store i8 %conv334, i8* %out.addr.1761, align 1, !tbaa !4
  %shr336 = lshr i32 %xor329, 8
  %conv338 = trunc i32 %shr336 to i8
  %incdec.ptr339 = getelementptr inbounds i8, i8* %out.addr.1761, i64 2
  store i8 %conv338, i8* %incdec.ptr335, align 1, !tbaa !4
  %shr340 = lshr i32 %xor329, 16
  %conv342 = trunc i32 %shr340 to i8
  %incdec.ptr343 = getelementptr inbounds i8, i8* %out.addr.1761, i64 3
  store i8 %conv342, i8* %incdec.ptr339, align 1, !tbaa !4
  %shr344 = lshr i32 %xor329, 24
  %conv346 = trunc i32 %shr344 to i8
  %incdec.ptr347 = getelementptr inbounds i8, i8* %out.addr.1761, i64 4
  store i8 %conv346, i8* %incdec.ptr343, align 1, !tbaa !4
  %conv349 = trunc i32 %xor332 to i8
  %incdec.ptr350 = getelementptr inbounds i8, i8* %out.addr.1761, i64 5
  store i8 %conv349, i8* %incdec.ptr347, align 1, !tbaa !4
  %shr351 = lshr i32 %xor332, 8
  %conv353 = trunc i32 %shr351 to i8
  %incdec.ptr354 = getelementptr inbounds i8, i8* %out.addr.1761, i64 6
  store i8 %conv353, i8* %incdec.ptr350, align 1, !tbaa !4
  %shr355 = lshr i32 %xor332, 16
  %conv357 = trunc i32 %shr355 to i8
  %incdec.ptr358 = getelementptr inbounds i8, i8* %out.addr.1761, i64 7
  store i8 %conv357, i8* %incdec.ptr354, align 1, !tbaa !4
  %shr359 = lshr i32 %xor332, 24
  %conv361 = trunc i32 %shr359 to i8
  %incdec.ptr362 = getelementptr inbounds i8, i8* %out.addr.1761, i64 8
  store i8 %conv361, i8* %incdec.ptr358, align 1, !tbaa !4
  %cmp291 = icmp ugt i64 %l.1.in765, 16
  br i1 %cmp291, label %for.body293, label %if.then368, !llvm.loop !11

for.end365:                                       ; preds = %if.else
  %cmp366.not = icmp eq i64 %length, 0
  br i1 %cmp366.not, label %if.end450, label %if.then368

if.then368:                                       ; preds = %for.body293, %for.end365
  %l.1.in.lcssa794 = phi i64 [ %length, %for.end365 ], [ %l.1, %for.body293 ]
  %in.addr.8.lcssa793 = phi i8* [ %in, %for.end365 ], [ %incdec.ptr320, %for.body293 ]
  %xor1.0.lcssa792 = phi i32 [ %or288, %for.end365 ], [ %or323, %for.body293 ]
  %xor0.0.lcssa791 = phi i32 [ %or274, %for.end365 ], [ %or307, %for.body293 ]
  %out.addr.1.lcssa790 = phi i8* [ %out, %for.end365 ], [ %incdec.ptr362, %for.body293 ]
  %incdec.ptr369 = getelementptr inbounds i8, i8* %in.addr.8.lcssa793, i64 1
  %54 = load i8, i8* %in.addr.8.lcssa793, align 1, !tbaa !4
  %conv370 = zext i8 %54 to i32
  %incdec.ptr371 = getelementptr inbounds i8, i8* %in.addr.8.lcssa793, i64 2
  %55 = load i8, i8* %incdec.ptr369, align 1, !tbaa !4
  %conv372 = zext i8 %55 to i32
  %shl373 = shl nuw nsw i32 %conv372, 8
  %or374 = or i32 %shl373, %conv370
  %incdec.ptr375 = getelementptr inbounds i8, i8* %in.addr.8.lcssa793, i64 3
  %56 = load i8, i8* %incdec.ptr371, align 1, !tbaa !4
  %conv376 = zext i8 %56 to i32
  %shl377 = shl nuw nsw i32 %conv376, 16
  %or378 = or i32 %or374, %shl377
  %incdec.ptr379 = getelementptr inbounds i8, i8* %in.addr.8.lcssa793, i64 4
  %57 = load i8, i8* %incdec.ptr375, align 1, !tbaa !4
  %conv380 = zext i8 %57 to i32
  %shl381 = shl nuw i32 %conv380, 24
  %or382 = or i32 %or378, %shl381
  %xor383 = xor i32 %or382, %or39
  %arrayidx384 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  store i32 %xor383, i32* %arrayidx384, align 4, !tbaa !7
  %incdec.ptr385 = getelementptr inbounds i8, i8* %in.addr.8.lcssa793, i64 5
  %58 = load i8, i8* %incdec.ptr379, align 1, !tbaa !4
  %conv386 = zext i8 %58 to i32
  %incdec.ptr387 = getelementptr inbounds i8, i8* %in.addr.8.lcssa793, i64 6
  %59 = load i8, i8* %incdec.ptr385, align 1, !tbaa !4
  %conv388 = zext i8 %59 to i32
  %shl389 = shl nuw nsw i32 %conv388, 8
  %or390 = or i32 %shl389, %conv386
  %incdec.ptr391 = getelementptr inbounds i8, i8* %in.addr.8.lcssa793, i64 7
  %60 = load i8, i8* %incdec.ptr387, align 1, !tbaa !4
  %conv392 = zext i8 %60 to i32
  %shl393 = shl nuw nsw i32 %conv392, 16
  %or394 = or i32 %or390, %shl393
  %61 = load i8, i8* %incdec.ptr391, align 1, !tbaa !4
  %conv396 = zext i8 %61 to i32
  %shl397 = shl nuw i32 %conv396, 24
  %or398 = or i32 %or394, %shl397
  %xor399 = xor i32 %or398, %or53
  %arrayidx400 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  store i32 %xor399, i32* %arrayidx400, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx384, %struct.DES_ks* noundef %schedule, i32 noundef 0) #4
  %62 = load i32, i32* %arrayidx384, align 4, !tbaa !7
  %xor403 = xor i32 %xor0.0.lcssa791, %or10
  %xor404 = xor i32 %xor403, %62
  %63 = load i32, i32* %arrayidx400, align 4, !tbaa !7
  %xor406 = xor i32 %xor1.0.lcssa792, %or24
  %xor407 = xor i32 %xor406, %63
  %add.ptr409 = getelementptr inbounds i8, i8* %out.addr.1.lcssa790, i64 %l.1.in.lcssa794
  switch i64 %l.1.in.lcssa794, label %if.end450 [
    i64 8, label %sw.bb411
    i64 7, label %sw.bb416
    i64 6, label %sw.bb421
    i64 5, label %sw.bb426
    i64 4, label %sw.bb430
    i64 3, label %sw.bb435
    i64 2, label %sw.bb440
    i64 1, label %sw.bb445
  ]

sw.bb411:                                         ; preds = %if.then368
  %shr412 = lshr i32 %xor407, 24
  %conv414 = trunc i32 %shr412 to i8
  %incdec.ptr415 = getelementptr inbounds i8, i8* %add.ptr409, i64 -1
  store i8 %conv414, i8* %incdec.ptr415, align 1, !tbaa !4
  br label %sw.bb416

sw.bb416:                                         ; preds = %if.then368, %sw.bb411
  %out.addr.2 = phi i8* [ %add.ptr409, %if.then368 ], [ %incdec.ptr415, %sw.bb411 ]
  %shr417 = lshr i32 %xor407, 16
  %conv419 = trunc i32 %shr417 to i8
  %incdec.ptr420 = getelementptr inbounds i8, i8* %out.addr.2, i64 -1
  store i8 %conv419, i8* %incdec.ptr420, align 1, !tbaa !4
  br label %sw.bb421

sw.bb421:                                         ; preds = %if.then368, %sw.bb416
  %out.addr.3 = phi i8* [ %add.ptr409, %if.then368 ], [ %incdec.ptr420, %sw.bb416 ]
  %shr422 = lshr i32 %xor407, 8
  %conv424 = trunc i32 %shr422 to i8
  %incdec.ptr425 = getelementptr inbounds i8, i8* %out.addr.3, i64 -1
  store i8 %conv424, i8* %incdec.ptr425, align 1, !tbaa !4
  br label %sw.bb426

sw.bb426:                                         ; preds = %if.then368, %sw.bb421
  %out.addr.4 = phi i8* [ %add.ptr409, %if.then368 ], [ %incdec.ptr425, %sw.bb421 ]
  %conv428 = trunc i32 %xor407 to i8
  %incdec.ptr429 = getelementptr inbounds i8, i8* %out.addr.4, i64 -1
  store i8 %conv428, i8* %incdec.ptr429, align 1, !tbaa !4
  br label %sw.bb430

sw.bb430:                                         ; preds = %if.then368, %sw.bb426
  %out.addr.5 = phi i8* [ %add.ptr409, %if.then368 ], [ %incdec.ptr429, %sw.bb426 ]
  %shr431 = lshr i32 %xor404, 24
  %conv433 = trunc i32 %shr431 to i8
  %incdec.ptr434 = getelementptr inbounds i8, i8* %out.addr.5, i64 -1
  store i8 %conv433, i8* %incdec.ptr434, align 1, !tbaa !4
  br label %sw.bb435

sw.bb435:                                         ; preds = %if.then368, %sw.bb430
  %out.addr.6 = phi i8* [ %add.ptr409, %if.then368 ], [ %incdec.ptr434, %sw.bb430 ]
  %shr436 = lshr i32 %xor404, 16
  %conv438 = trunc i32 %shr436 to i8
  %incdec.ptr439 = getelementptr inbounds i8, i8* %out.addr.6, i64 -1
  store i8 %conv438, i8* %incdec.ptr439, align 1, !tbaa !4
  br label %sw.bb440

sw.bb440:                                         ; preds = %if.then368, %sw.bb435
  %out.addr.7 = phi i8* [ %add.ptr409, %if.then368 ], [ %incdec.ptr439, %sw.bb435 ]
  %shr441 = lshr i32 %xor404, 8
  %conv443 = trunc i32 %shr441 to i8
  %incdec.ptr444 = getelementptr inbounds i8, i8* %out.addr.7, i64 -1
  store i8 %conv443, i8* %incdec.ptr444, align 1, !tbaa !4
  br label %sw.bb445

sw.bb445:                                         ; preds = %if.then368, %sw.bb440
  %out.addr.8 = phi i8* [ %add.ptr409, %if.then368 ], [ %incdec.ptr444, %sw.bb440 ]
  %conv447 = trunc i32 %xor404 to i8
  %incdec.ptr448 = getelementptr inbounds i8, i8* %out.addr.8, i64 -1
  store i8 %conv447, i8* %incdec.ptr448, align 1, !tbaa !4
  br label %if.end450

if.end450:                                        ; preds = %if.then368, %sw.bb445, %for.end365
  %xor0.1 = phi i32 [ %or274, %for.end365 ], [ %or382, %sw.bb445 ], [ %or382, %if.then368 ]
  %xor1.1 = phi i32 [ %or288, %for.end365 ], [ %or398, %sw.bb445 ], [ %or398, %if.then368 ]
  %conv453 = trunc i32 %xor0.1 to i8
  store i8 %conv453, i8* %arrayidx54, align 1, !tbaa !4
  %shr455 = lshr i32 %xor0.1, 8
  %conv457 = trunc i32 %shr455 to i8
  store i8 %conv457, i8* %incdec.ptr261, align 1, !tbaa !4
  %shr459 = lshr i32 %xor0.1, 16
  %conv461 = trunc i32 %shr459 to i8
  store i8 %conv461, i8* %incdec.ptr263, align 1, !tbaa !4
  %shr463 = lshr i32 %xor0.1, 24
  %conv465 = trunc i32 %shr463 to i8
  store i8 %conv465, i8* %incdec.ptr267, align 1, !tbaa !4
  %conv468 = trunc i32 %xor1.1 to i8
  store i8 %conv468, i8* %incdec.ptr271, align 1, !tbaa !4
  %shr470 = lshr i32 %xor1.1, 8
  %conv472 = trunc i32 %shr470 to i8
  store i8 %conv472, i8* %incdec.ptr275, align 1, !tbaa !4
  %shr474 = lshr i32 %xor1.1, 16
  %conv476 = trunc i32 %shr474 to i8
  store i8 %conv476, i8* %incdec.ptr277, align 1, !tbaa !4
  %shr478 = lshr i32 %xor1.1, 24
  %conv480 = trunc i32 %shr478 to i8
  br label %if.end482

if.end482:                                        ; preds = %if.end450, %if.end
  %conv480.sink = phi i8 [ %conv480, %if.end450 ], [ %conv259.pre-phi, %if.end ]
  store i8 %conv480.sink, i8* %incdec.ptr281, align 1, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @DES_encrypt1(i32* noundef, %struct.DES_ks* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
