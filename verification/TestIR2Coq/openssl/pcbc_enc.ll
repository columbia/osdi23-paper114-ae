; ModuleID = 'crypto/des/pcbc_enc.c'
source_filename = "crypto/des/pcbc_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @DES_pcbc_encrypt(i8* nocapture noundef readonly %input, i8* nocapture noundef writeonly %output, i64 noundef %length, %struct.DES_ks* noundef %schedule, [8 x i8]* nocapture noundef readonly %ivec, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %tin = alloca [2 x i32], align 4
  %0 = bitcast [2 x i32]* %tin to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  %tobool.not = icmp eq i32 %enc, 0
  %cmp157431 = icmp sgt i64 %length, 0
  br i1 %tobool.not, label %if.else127, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp157431, label %for.body.lr.ph, label %if.end275

for.body.lr.ph:                                   ; preds = %if.then
  %incdec.ptr11 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %1 = load i8, i8* %incdec.ptr11, align 1, !tbaa !4
  %conv14 = zext i8 %1 to i32
  %shl15 = shl nuw nsw i32 %conv14, 8
  %incdec.ptr7 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %2 = load i8, i8* %incdec.ptr7, align 1, !tbaa !4
  %conv12 = zext i8 %2 to i32
  %or16 = or i32 %shl15, %conv12
  %incdec.ptr13 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %3 = load i8, i8* %incdec.ptr13, align 1, !tbaa !4
  %conv18 = zext i8 %3 to i32
  %shl19 = shl nuw nsw i32 %conv18, 16
  %or20 = or i32 %or16, %shl19
  %incdec.ptr17 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %4 = load i8, i8* %incdec.ptr17, align 1, !tbaa !4
  %conv22 = zext i8 %4 to i32
  %shl23 = shl nuw i32 %conv22, 24
  %or24 = or i32 %or20, %shl23
  %incdec.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %conv2 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %6 to i32
  %or = or i32 %shl, %conv
  %incdec.ptr1 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %7 = load i8, i8* %incdec.ptr1, align 1, !tbaa !4
  %conv4 = zext i8 %7 to i32
  %shl5 = shl nuw nsw i32 %conv4, 16
  %or6 = or i32 %or, %shl5
  %incdec.ptr3 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %8 = load i8, i8* %incdec.ptr3, align 1, !tbaa !4
  %conv8 = zext i8 %8 to i32
  %shl9 = shl nuw i32 %conv8, 24
  %or10 = or i32 %or6, %shl9
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  %arrayidx94 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %out.0430 = phi i8* [ %output, %for.body.lr.ph ], [ %incdec.ptr126, %if.end ]
  %in.0429 = phi i8* [ %input, %for.body.lr.ph ], [ %in.8, %if.end ]
  %xor1.0428 = phi i32 [ %or24, %for.body.lr.ph ], [ %xor98, %if.end ]
  %xor0.0427 = phi i32 [ %or10, %for.body.lr.ph ], [ %xor97, %if.end ]
  %length.addr.0426 = phi i64 [ %length, %for.body.lr.ph ], [ %sub, %if.end ]
  %cmp26 = icmp ugt i64 %length.addr.0426, 7
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %for.body
  %incdec.ptr29 = getelementptr inbounds i8, i8* %in.0429, i64 1
  %9 = load i8, i8* %in.0429, align 1, !tbaa !4
  %conv30 = zext i8 %9 to i32
  %incdec.ptr31 = getelementptr inbounds i8, i8* %in.0429, i64 2
  %10 = load i8, i8* %incdec.ptr29, align 1, !tbaa !4
  %conv32 = zext i8 %10 to i32
  %shl33 = shl nuw nsw i32 %conv32, 8
  %or34 = or i32 %shl33, %conv30
  %incdec.ptr35 = getelementptr inbounds i8, i8* %in.0429, i64 3
  %11 = load i8, i8* %incdec.ptr31, align 1, !tbaa !4
  %conv36 = zext i8 %11 to i32
  %shl37 = shl nuw nsw i32 %conv36, 16
  %or38 = or i32 %or34, %shl37
  %incdec.ptr39 = getelementptr inbounds i8, i8* %in.0429, i64 4
  %12 = load i8, i8* %incdec.ptr35, align 1, !tbaa !4
  %conv40 = zext i8 %12 to i32
  %shl41 = shl nuw i32 %conv40, 24
  %or42 = or i32 %or38, %shl41
  %incdec.ptr43 = getelementptr inbounds i8, i8* %in.0429, i64 5
  %13 = load i8, i8* %incdec.ptr39, align 1, !tbaa !4
  %conv44 = zext i8 %13 to i32
  %incdec.ptr45 = getelementptr inbounds i8, i8* %in.0429, i64 6
  %14 = load i8, i8* %incdec.ptr43, align 1, !tbaa !4
  %conv46 = zext i8 %14 to i32
  %shl47 = shl nuw nsw i32 %conv46, 8
  %or48 = or i32 %shl47, %conv44
  %incdec.ptr49 = getelementptr inbounds i8, i8* %in.0429, i64 7
  %15 = load i8, i8* %incdec.ptr45, align 1, !tbaa !4
  %conv50 = zext i8 %15 to i32
  %shl51 = shl nuw nsw i32 %conv50, 16
  %or52 = or i32 %or48, %shl51
  %incdec.ptr53 = getelementptr inbounds i8, i8* %in.0429, i64 8
  %16 = load i8, i8* %incdec.ptr49, align 1, !tbaa !4
  %conv54 = zext i8 %16 to i32
  %shl55 = shl nuw i32 %conv54, 24
  %or56 = or i32 %or52, %shl55
  br label %if.end

if.else:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, i8* %in.0429, i64 %length.addr.0426
  switch i64 %length.addr.0426, label %if.end [
    i64 1, label %sw.bb88
    i64 7, label %sw.bb60
    i64 6, label %sw.bb65
    i64 5, label %sw.bb70
    i64 4, label %sw.bb74
    i64 3, label %sw.bb78
    i64 2, label %sw.bb83
  ]

sw.bb60:                                          ; preds = %if.else
  %incdec.ptr61 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %17 = load i8, i8* %incdec.ptr61, align 1, !tbaa !4
  %conv62 = zext i8 %17 to i32
  %shl63 = shl nuw nsw i32 %conv62, 16
  br label %sw.bb65

sw.bb65:                                          ; preds = %if.else, %sw.bb60
  %sin1.1 = phi i32 [ 0, %if.else ], [ %shl63, %sw.bb60 ]
  %in.2 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr61, %sw.bb60 ]
  %incdec.ptr66 = getelementptr inbounds i8, i8* %in.2, i64 -1
  %18 = load i8, i8* %incdec.ptr66, align 1, !tbaa !4
  %conv67 = zext i8 %18 to i32
  %shl68 = shl nuw nsw i32 %conv67, 8
  %or69 = or i32 %shl68, %sin1.1
  br label %sw.bb70

sw.bb70:                                          ; preds = %if.else, %sw.bb65
  %sin1.2 = phi i32 [ 0, %if.else ], [ %or69, %sw.bb65 ]
  %in.3 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr66, %sw.bb65 ]
  %incdec.ptr71 = getelementptr inbounds i8, i8* %in.3, i64 -1
  %19 = load i8, i8* %incdec.ptr71, align 1, !tbaa !4
  %conv72 = zext i8 %19 to i32
  %or73 = or i32 %sin1.2, %conv72
  br label %sw.bb74

sw.bb74:                                          ; preds = %if.else, %sw.bb70
  %sin1.3 = phi i32 [ 0, %if.else ], [ %or73, %sw.bb70 ]
  %in.4 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr71, %sw.bb70 ]
  %incdec.ptr75 = getelementptr inbounds i8, i8* %in.4, i64 -1
  %20 = load i8, i8* %incdec.ptr75, align 1, !tbaa !4
  %conv76 = zext i8 %20 to i32
  %shl77 = shl nuw i32 %conv76, 24
  br label %sw.bb78

sw.bb78:                                          ; preds = %if.else, %sw.bb74
  %sin0.0 = phi i32 [ 0, %if.else ], [ %shl77, %sw.bb74 ]
  %sin1.4 = phi i32 [ 0, %if.else ], [ %sin1.3, %sw.bb74 ]
  %in.5 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr75, %sw.bb74 ]
  %incdec.ptr79 = getelementptr inbounds i8, i8* %in.5, i64 -1
  %21 = load i8, i8* %incdec.ptr79, align 1, !tbaa !4
  %conv80 = zext i8 %21 to i32
  %shl81 = shl nuw nsw i32 %conv80, 16
  %or82 = or i32 %shl81, %sin0.0
  br label %sw.bb83

sw.bb83:                                          ; preds = %if.else, %sw.bb78
  %sin0.1 = phi i32 [ 0, %if.else ], [ %or82, %sw.bb78 ]
  %sin1.5 = phi i32 [ 0, %if.else ], [ %sin1.4, %sw.bb78 ]
  %in.6 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr79, %sw.bb78 ]
  %incdec.ptr84 = getelementptr inbounds i8, i8* %in.6, i64 -1
  %22 = load i8, i8* %incdec.ptr84, align 1, !tbaa !4
  %conv85 = zext i8 %22 to i32
  %shl86 = shl nuw nsw i32 %conv85, 8
  %or87 = or i32 %shl86, %sin0.1
  br label %sw.bb88

sw.bb88:                                          ; preds = %if.else, %sw.bb83
  %sin0.2 = phi i32 [ 0, %if.else ], [ %or87, %sw.bb83 ]
  %sin1.6 = phi i32 [ 0, %if.else ], [ %sin1.5, %sw.bb83 ]
  %in.7 = phi i8* [ %add.ptr, %if.else ], [ %incdec.ptr84, %sw.bb83 ]
  %incdec.ptr89 = getelementptr inbounds i8, i8* %in.7, i64 -1
  %23 = load i8, i8* %incdec.ptr89, align 1, !tbaa !4
  %conv90 = zext i8 %23 to i32
  %or91 = or i32 %sin0.2, %conv90
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.bb88, %if.then28
  %sin0.3 = phi i32 [ %or42, %if.then28 ], [ 0, %if.else ], [ %or91, %sw.bb88 ]
  %sin1.7 = phi i32 [ %or56, %if.then28 ], [ 0, %if.else ], [ %sin1.6, %sw.bb88 ]
  %in.8 = phi i8* [ %incdec.ptr53, %if.then28 ], [ %add.ptr, %if.else ], [ %incdec.ptr89, %sw.bb88 ]
  %xor = xor i32 %sin0.3, %xor0.0427
  store i32 %xor, i32* %arrayidx92, align 4, !tbaa !7
  %xor93 = xor i32 %sin1.7, %xor1.0428
  store i32 %xor93, i32* %arrayidx94, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx92, %struct.DES_ks* noundef %schedule, i32 noundef 1) #4
  %24 = load i32, i32* %arrayidx92, align 4, !tbaa !7
  %25 = load i32, i32* %arrayidx94, align 4, !tbaa !7
  %xor97 = xor i32 %24, %sin0.3
  %xor98 = xor i32 %25, %sin1.7
  %conv99 = trunc i32 %24 to i8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %out.0430, i64 1
  store i8 %conv99, i8* %out.0430, align 1, !tbaa !4
  %shr = lshr i32 %24, 8
  %conv102 = trunc i32 %shr to i8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %out.0430, i64 2
  store i8 %conv102, i8* %incdec.ptr100, align 1, !tbaa !4
  %shr104 = lshr i32 %24, 16
  %conv106 = trunc i32 %shr104 to i8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %out.0430, i64 3
  store i8 %conv106, i8* %incdec.ptr103, align 1, !tbaa !4
  %shr108 = lshr i32 %24, 24
  %conv110 = trunc i32 %shr108 to i8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %out.0430, i64 4
  store i8 %conv110, i8* %incdec.ptr107, align 1, !tbaa !4
  %conv113 = trunc i32 %25 to i8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %out.0430, i64 5
  store i8 %conv113, i8* %incdec.ptr111, align 1, !tbaa !4
  %shr115 = lshr i32 %25, 8
  %conv117 = trunc i32 %shr115 to i8
  %incdec.ptr118 = getelementptr inbounds i8, i8* %out.0430, i64 6
  store i8 %conv117, i8* %incdec.ptr114, align 1, !tbaa !4
  %shr119 = lshr i32 %25, 16
  %conv121 = trunc i32 %shr119 to i8
  %incdec.ptr122 = getelementptr inbounds i8, i8* %out.0430, i64 7
  store i8 %conv121, i8* %incdec.ptr118, align 1, !tbaa !4
  %shr123 = lshr i32 %25, 24
  %conv125 = trunc i32 %shr123 to i8
  %incdec.ptr126 = getelementptr inbounds i8, i8* %out.0430, i64 8
  store i8 %conv125, i8* %incdec.ptr122, align 1, !tbaa !4
  %sub = add nsw i64 %length.addr.0426, -8
  %cmp = icmp sgt i64 %length.addr.0426, 8
  br i1 %cmp, label %for.body, label %if.end275, !llvm.loop !9

if.else127:                                       ; preds = %entry
  br i1 %cmp157431, label %for.body159.lr.ph, label %if.end275

for.body159.lr.ph:                                ; preds = %if.else127
  %incdec.ptr142 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %26 = load i8, i8* %incdec.ptr142, align 1, !tbaa !4
  %conv145 = zext i8 %26 to i32
  %shl146 = shl nuw nsw i32 %conv145, 8
  %incdec.ptr138 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %27 = load i8, i8* %incdec.ptr138, align 1, !tbaa !4
  %conv143 = zext i8 %27 to i32
  %or147 = or i32 %shl146, %conv143
  %incdec.ptr144 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %28 = load i8, i8* %incdec.ptr144, align 1, !tbaa !4
  %conv149 = zext i8 %28 to i32
  %shl150 = shl nuw nsw i32 %conv149, 16
  %or151 = or i32 %or147, %shl150
  %incdec.ptr148 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %29 = load i8, i8* %incdec.ptr148, align 1, !tbaa !4
  %conv153 = zext i8 %29 to i32
  %shl154 = shl nuw i32 %conv153, 24
  %or155 = or i32 %or151, %shl154
  %incdec.ptr128 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %30 = load i8, i8* %incdec.ptr128, align 1, !tbaa !4
  %conv131 = zext i8 %30 to i32
  %shl132 = shl nuw nsw i32 %conv131, 8
  %31 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv129 = zext i8 %31 to i32
  %or133 = or i32 %shl132, %conv129
  %incdec.ptr130 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %32 = load i8, i8* %incdec.ptr130, align 1, !tbaa !4
  %conv135 = zext i8 %32 to i32
  %shl136 = shl nuw nsw i32 %conv135, 16
  %or137 = or i32 %or133, %shl136
  %incdec.ptr134 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %33 = load i8, i8* %incdec.ptr134, align 1, !tbaa !4
  %conv139 = zext i8 %33 to i32
  %shl140 = shl nuw i32 %conv139, 24
  %or141 = or i32 %or137, %shl140
  %arrayidx188 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 0
  %arrayidx189 = getelementptr inbounds [2 x i32], [2 x i32]* %tin, i64 0, i64 1
  br label %for.body159

for.body159:                                      ; preds = %for.body159.lr.ph, %if.end269
  %out.1436 = phi i8* [ %output, %for.body159.lr.ph ], [ %incdec.ptr227, %if.end269 ]
  %in.9435 = phi i8* [ %input, %for.body159.lr.ph ], [ %incdec.ptr184, %if.end269 ]
  %xor1.1434 = phi i32 [ %or155, %for.body159.lr.ph ], [ %xor271, %if.end269 ]
  %xor0.1433 = phi i32 [ %or141, %for.body159.lr.ph ], [ %xor270, %if.end269 ]
  %length.addr.1432 = phi i64 [ %length, %for.body159.lr.ph ], [ %sub273, %if.end269 ]
  %incdec.ptr160 = getelementptr inbounds i8, i8* %in.9435, i64 1
  %34 = load i8, i8* %in.9435, align 1, !tbaa !4
  %conv161 = zext i8 %34 to i32
  %incdec.ptr162 = getelementptr inbounds i8, i8* %in.9435, i64 2
  %35 = load i8, i8* %incdec.ptr160, align 1, !tbaa !4
  %conv163 = zext i8 %35 to i32
  %shl164 = shl nuw nsw i32 %conv163, 8
  %or165 = or i32 %shl164, %conv161
  %incdec.ptr166 = getelementptr inbounds i8, i8* %in.9435, i64 3
  %36 = load i8, i8* %incdec.ptr162, align 1, !tbaa !4
  %conv167 = zext i8 %36 to i32
  %shl168 = shl nuw nsw i32 %conv167, 16
  %or169 = or i32 %or165, %shl168
  %incdec.ptr170 = getelementptr inbounds i8, i8* %in.9435, i64 4
  %37 = load i8, i8* %incdec.ptr166, align 1, !tbaa !4
  %conv171 = zext i8 %37 to i32
  %shl172 = shl nuw i32 %conv171, 24
  %or173 = or i32 %or169, %shl172
  %incdec.ptr174 = getelementptr inbounds i8, i8* %in.9435, i64 5
  %38 = load i8, i8* %incdec.ptr170, align 1, !tbaa !4
  %conv175 = zext i8 %38 to i32
  %incdec.ptr176 = getelementptr inbounds i8, i8* %in.9435, i64 6
  %39 = load i8, i8* %incdec.ptr174, align 1, !tbaa !4
  %conv177 = zext i8 %39 to i32
  %shl178 = shl nuw nsw i32 %conv177, 8
  %or179 = or i32 %shl178, %conv175
  %incdec.ptr180 = getelementptr inbounds i8, i8* %in.9435, i64 7
  %40 = load i8, i8* %incdec.ptr176, align 1, !tbaa !4
  %conv181 = zext i8 %40 to i32
  %shl182 = shl nuw nsw i32 %conv181, 16
  %or183 = or i32 %or179, %shl182
  %41 = load i8, i8* %incdec.ptr180, align 1, !tbaa !4
  %conv185 = zext i8 %41 to i32
  %shl186 = shl nuw i32 %conv185, 24
  %or187 = or i32 %or183, %shl186
  store i32 %or173, i32* %arrayidx188, align 4, !tbaa !7
  store i32 %or187, i32* %arrayidx189, align 4, !tbaa !7
  call void @DES_encrypt1(i32* noundef nonnull %arrayidx188, %struct.DES_ks* noundef %schedule, i32 noundef 0) #4
  %42 = load i32, i32* %arrayidx188, align 4, !tbaa !7
  %xor192 = xor i32 %42, %xor0.1433
  %43 = load i32, i32* %arrayidx189, align 4, !tbaa !7
  %xor194 = xor i32 %43, %xor1.1434
  %cmp195 = icmp ugt i64 %length.addr.1432, 7
  br i1 %cmp195, label %if.end269, label %if.else228

if.else228:                                       ; preds = %for.body159
  %add.ptr229 = getelementptr inbounds i8, i8* %out.1436, i64 %length.addr.1432
  switch i64 %length.addr.1432, label %if.end275 [
    i64 1, label %sw.bb264
    i64 7, label %sw.bb235
    i64 6, label %sw.bb240
    i64 5, label %sw.bb245
    i64 4, label %sw.bb249
    i64 3, label %sw.bb254
    i64 2, label %sw.bb259
  ]

sw.bb235:                                         ; preds = %if.else228
  %shr236 = lshr i32 %xor194, 16
  %conv238 = trunc i32 %shr236 to i8
  %incdec.ptr239 = getelementptr inbounds i8, i8* %add.ptr229, i64 -1
  store i8 %conv238, i8* %incdec.ptr239, align 1, !tbaa !4
  br label %sw.bb240

sw.bb240:                                         ; preds = %if.else228, %sw.bb235
  %out.3 = phi i8* [ %add.ptr229, %if.else228 ], [ %incdec.ptr239, %sw.bb235 ]
  %shr241 = lshr i32 %xor194, 8
  %conv243 = trunc i32 %shr241 to i8
  %incdec.ptr244 = getelementptr inbounds i8, i8* %out.3, i64 -1
  store i8 %conv243, i8* %incdec.ptr244, align 1, !tbaa !4
  br label %sw.bb245

sw.bb245:                                         ; preds = %if.else228, %sw.bb240
  %out.4 = phi i8* [ %add.ptr229, %if.else228 ], [ %incdec.ptr244, %sw.bb240 ]
  %conv247 = trunc i32 %xor194 to i8
  %incdec.ptr248 = getelementptr inbounds i8, i8* %out.4, i64 -1
  store i8 %conv247, i8* %incdec.ptr248, align 1, !tbaa !4
  br label %sw.bb249

sw.bb249:                                         ; preds = %if.else228, %sw.bb245
  %out.5 = phi i8* [ %add.ptr229, %if.else228 ], [ %incdec.ptr248, %sw.bb245 ]
  %shr250 = lshr i32 %xor192, 24
  %conv252 = trunc i32 %shr250 to i8
  %incdec.ptr253 = getelementptr inbounds i8, i8* %out.5, i64 -1
  store i8 %conv252, i8* %incdec.ptr253, align 1, !tbaa !4
  br label %sw.bb254

sw.bb254:                                         ; preds = %if.else228, %sw.bb249
  %out.6 = phi i8* [ %add.ptr229, %if.else228 ], [ %incdec.ptr253, %sw.bb249 ]
  %shr255 = lshr i32 %xor192, 16
  %conv257 = trunc i32 %shr255 to i8
  %incdec.ptr258 = getelementptr inbounds i8, i8* %out.6, i64 -1
  store i8 %conv257, i8* %incdec.ptr258, align 1, !tbaa !4
  br label %sw.bb259

sw.bb259:                                         ; preds = %if.else228, %sw.bb254
  %out.7 = phi i8* [ %add.ptr229, %if.else228 ], [ %incdec.ptr258, %sw.bb254 ]
  %shr260 = lshr i32 %xor192, 8
  %conv262 = trunc i32 %shr260 to i8
  %incdec.ptr263 = getelementptr inbounds i8, i8* %out.7, i64 -1
  store i8 %conv262, i8* %incdec.ptr263, align 1, !tbaa !4
  br label %sw.bb264

sw.bb264:                                         ; preds = %if.else228, %sw.bb259
  %out.8 = phi i8* [ %add.ptr229, %if.else228 ], [ %incdec.ptr263, %sw.bb259 ]
  %conv266 = trunc i32 %xor192 to i8
  %incdec.ptr267 = getelementptr inbounds i8, i8* %out.8, i64 -1
  store i8 %conv266, i8* %incdec.ptr267, align 1, !tbaa !4
  br label %if.end275

if.end269:                                        ; preds = %for.body159
  %incdec.ptr184 = getelementptr inbounds i8, i8* %in.9435, i64 8
  %conv199 = trunc i32 %xor192 to i8
  %incdec.ptr200 = getelementptr inbounds i8, i8* %out.1436, i64 1
  store i8 %conv199, i8* %out.1436, align 1, !tbaa !4
  %shr201 = lshr i32 %xor192, 8
  %conv203 = trunc i32 %shr201 to i8
  %incdec.ptr204 = getelementptr inbounds i8, i8* %out.1436, i64 2
  store i8 %conv203, i8* %incdec.ptr200, align 1, !tbaa !4
  %shr205 = lshr i32 %xor192, 16
  %conv207 = trunc i32 %shr205 to i8
  %incdec.ptr208 = getelementptr inbounds i8, i8* %out.1436, i64 3
  store i8 %conv207, i8* %incdec.ptr204, align 1, !tbaa !4
  %shr209 = lshr i32 %xor192, 24
  %conv211 = trunc i32 %shr209 to i8
  %incdec.ptr212 = getelementptr inbounds i8, i8* %out.1436, i64 4
  store i8 %conv211, i8* %incdec.ptr208, align 1, !tbaa !4
  %conv214 = trunc i32 %xor194 to i8
  %incdec.ptr215 = getelementptr inbounds i8, i8* %out.1436, i64 5
  store i8 %conv214, i8* %incdec.ptr212, align 1, !tbaa !4
  %shr216 = lshr i32 %xor194, 8
  %conv218 = trunc i32 %shr216 to i8
  %incdec.ptr219 = getelementptr inbounds i8, i8* %out.1436, i64 6
  store i8 %conv218, i8* %incdec.ptr215, align 1, !tbaa !4
  %shr220 = lshr i32 %xor194, 16
  %conv222 = trunc i32 %shr220 to i8
  %incdec.ptr223 = getelementptr inbounds i8, i8* %out.1436, i64 7
  store i8 %conv222, i8* %incdec.ptr219, align 1, !tbaa !4
  %shr224 = lshr i32 %xor194, 24
  %conv226 = trunc i32 %shr224 to i8
  %incdec.ptr227 = getelementptr inbounds i8, i8* %out.1436, i64 8
  store i8 %conv226, i8* %incdec.ptr223, align 1, !tbaa !4
  %xor270 = xor i32 %xor192, %or173
  %xor271 = xor i32 %xor194, %or187
  %sub273 = add nsw i64 %length.addr.1432, -8
  %cmp157.not = icmp eq i64 %length.addr.1432, 8
  br i1 %cmp157.not, label %if.end275, label %for.body159, !llvm.loop !11

if.end275:                                        ; preds = %if.end, %if.end269, %sw.bb264, %if.else228, %if.then, %if.else127
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
