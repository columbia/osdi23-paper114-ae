; ModuleID = 'crypto/des/cfb64ede.c'
source_filename = "crypto/des/cfb64ede.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

; Function Attrs: noinline nounwind uwtable
define void @DES_ede3_cfb64_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i64 noundef %length, %struct.DES_ks* noundef %ks1, %struct.DES_ks* noundef %ks2, %struct.DES_ks* noundef %ks3, [8 x i8]* noundef %ivec, i32* nocapture noundef %num, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %ti = alloca [2 x i32], align 4
  %0 = load i32, i32* %num, align 4, !tbaa !4
  %1 = bitcast [2 x i32]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  %tobool.not = icmp eq i32 %enc, 0
  %tobool72.not261 = icmp eq i64 %length, 0
  br i1 %tobool.not, label %while.cond70.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  br i1 %tobool72.not261, label %if.end156, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %incdec.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %incdec.ptr3 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %incdec.ptr5 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %incdec.ptr9 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %incdec.ptr13 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %incdec.ptr15 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %incdec.ptr19 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  %arrayidx28 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  br label %while.body

while.cond70.preheader:                           ; preds = %entry
  br i1 %tobool72.not261, label %if.end156, label %while.body73.lr.ph

while.body73.lr.ph:                               ; preds = %while.cond70.preheader
  %incdec.ptr77 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %incdec.ptr79 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %incdec.ptr83 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %incdec.ptr87 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %incdec.ptr91 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %incdec.ptr93 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %incdec.ptr97 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %arrayidx105 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  %arrayidx106 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  br label %while.body73

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %dec259.in = phi i64 [ %length, %while.body.lr.ph ], [ %dec259, %if.end ]
  %n.0258 = phi i32 [ %0, %while.body.lr.ph ], [ %and69, %if.end ]
  %in.addr.0257 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr61, %if.end ]
  %out.addr.0256 = phi i8* [ %out, %while.body.lr.ph ], [ %incdec.ptr66, %if.end ]
  %dec259 = add nsw i64 %dec259.in, -1
  %cmp = icmp eq i32 %n.0258, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv = zext i8 %2 to i32
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv4 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, %conv
  %4 = load i8, i8* %incdec.ptr3, align 1, !tbaa !8
  %conv6 = zext i8 %4 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or8 = or i32 %or, %shl7
  %5 = load i8, i8* %incdec.ptr5, align 1, !tbaa !8
  %conv10 = zext i8 %5 to i32
  %shl11 = shl nuw i32 %conv10, 24
  %or12 = or i32 %or8, %shl11
  %6 = load i8, i8* %incdec.ptr9, align 1, !tbaa !8
  %conv14 = zext i8 %6 to i32
  %7 = load i8, i8* %incdec.ptr13, align 1, !tbaa !8
  %conv16 = zext i8 %7 to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %or18 = or i32 %shl17, %conv14
  %8 = load i8, i8* %incdec.ptr15, align 1, !tbaa !8
  %conv20 = zext i8 %8 to i32
  %shl21 = shl nuw nsw i32 %conv20, 16
  %or22 = or i32 %or18, %shl21
  %9 = load i8, i8* %incdec.ptr19, align 1, !tbaa !8
  %conv24 = zext i8 %9 to i32
  %shl25 = shl nuw i32 %conv24, 24
  %or26 = or i32 %or22, %shl25
  store i32 %or12, i32* %arrayidx27, align 4, !tbaa !4
  store i32 %or26, i32* %arrayidx28, align 4, !tbaa !4
  call void @DES_encrypt3(i32* noundef nonnull %arrayidx27, %struct.DES_ks* noundef %ks1, %struct.DES_ks* noundef %ks2, %struct.DES_ks* noundef %ks3) #5
  %10 = load i32, i32* %arrayidx27, align 4, !tbaa !4
  %11 = load i32, i32* %arrayidx28, align 4, !tbaa !4
  %conv32 = trunc i32 %10 to i8
  store i8 %conv32, i8* %arrayidx, align 1, !tbaa !8
  %shr = lshr i32 %10, 8
  %conv35 = trunc i32 %shr to i8
  store i8 %conv35, i8* %incdec.ptr, align 1, !tbaa !8
  %shr37 = lshr i32 %10, 16
  %conv39 = trunc i32 %shr37 to i8
  store i8 %conv39, i8* %incdec.ptr3, align 1, !tbaa !8
  %shr41 = lshr i32 %10, 24
  %conv43 = trunc i32 %shr41 to i8
  store i8 %conv43, i8* %incdec.ptr5, align 1, !tbaa !8
  %conv46 = trunc i32 %11 to i8
  store i8 %conv46, i8* %incdec.ptr9, align 1, !tbaa !8
  %shr48 = lshr i32 %11, 8
  %conv50 = trunc i32 %shr48 to i8
  store i8 %conv50, i8* %incdec.ptr13, align 1, !tbaa !8
  %shr52 = lshr i32 %11, 16
  %conv54 = trunc i32 %shr52 to i8
  store i8 %conv54, i8* %incdec.ptr15, align 1, !tbaa !8
  %shr56 = lshr i32 %11, 24
  %conv58 = trunc i32 %shr56 to i8
  store i8 %conv58, i8* %incdec.ptr19, align 1, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then2, %while.body
  %incdec.ptr61 = getelementptr inbounds i8, i8* %in.addr.0257, i64 1
  %12 = load i8, i8* %in.addr.0257, align 1, !tbaa !8
  %idxprom = sext i32 %n.0258 to i64
  %arrayidx63 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx63, align 1, !tbaa !8
  %xor252 = xor i8 %13, %12
  %incdec.ptr66 = getelementptr inbounds i8, i8* %out.addr.0256, i64 1
  store i8 %xor252, i8* %out.addr.0256, align 1, !tbaa !8
  store i8 %xor252, i8* %arrayidx63, align 1, !tbaa !8
  %add = add nsw i32 %n.0258, 1
  %and69 = and i32 %add, 7
  %tobool1.not = icmp eq i64 %dec259, 0
  br i1 %tobool1.not, label %if.end156, label %while.body, !llvm.loop !9

while.body73:                                     ; preds = %while.body73.lr.ph, %if.end142
  %dec71265.in = phi i64 [ %length, %while.body73.lr.ph ], [ %dec71265, %if.end142 ]
  %n.1264 = phi i32 [ %0, %while.body73.lr.ph ], [ %and154, %if.end142 ]
  %in.addr.1263 = phi i8* [ %in, %while.body73.lr.ph ], [ %incdec.ptr143, %if.end142 ]
  %out.addr.1262 = phi i8* [ %out, %while.body73.lr.ph ], [ %incdec.ptr152, %if.end142 ]
  %dec71265 = add nsw i64 %dec71265.in, -1
  %cmp74 = icmp eq i32 %n.1264, 0
  br i1 %cmp74, label %if.then76, label %if.end142

if.then76:                                        ; preds = %while.body73
  %14 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv78 = zext i8 %14 to i32
  %15 = load i8, i8* %incdec.ptr77, align 1, !tbaa !8
  %conv80 = zext i8 %15 to i32
  %shl81 = shl nuw nsw i32 %conv80, 8
  %or82 = or i32 %shl81, %conv78
  %16 = load i8, i8* %incdec.ptr79, align 1, !tbaa !8
  %conv84 = zext i8 %16 to i32
  %shl85 = shl nuw nsw i32 %conv84, 16
  %or86 = or i32 %or82, %shl85
  %17 = load i8, i8* %incdec.ptr83, align 1, !tbaa !8
  %conv88 = zext i8 %17 to i32
  %shl89 = shl nuw i32 %conv88, 24
  %or90 = or i32 %or86, %shl89
  %18 = load i8, i8* %incdec.ptr87, align 1, !tbaa !8
  %conv92 = zext i8 %18 to i32
  %19 = load i8, i8* %incdec.ptr91, align 1, !tbaa !8
  %conv94 = zext i8 %19 to i32
  %shl95 = shl nuw nsw i32 %conv94, 8
  %or96 = or i32 %shl95, %conv92
  %20 = load i8, i8* %incdec.ptr93, align 1, !tbaa !8
  %conv98 = zext i8 %20 to i32
  %shl99 = shl nuw nsw i32 %conv98, 16
  %or100 = or i32 %or96, %shl99
  %21 = load i8, i8* %incdec.ptr97, align 1, !tbaa !8
  %conv102 = zext i8 %21 to i32
  %shl103 = shl nuw i32 %conv102, 24
  %or104 = or i32 %or100, %shl103
  store i32 %or90, i32* %arrayidx105, align 4, !tbaa !4
  store i32 %or104, i32* %arrayidx106, align 4, !tbaa !4
  call void @DES_encrypt3(i32* noundef nonnull %arrayidx105, %struct.DES_ks* noundef %ks1, %struct.DES_ks* noundef %ks2, %struct.DES_ks* noundef %ks3) #5
  %22 = load i32, i32* %arrayidx105, align 4, !tbaa !4
  %23 = load i32, i32* %arrayidx106, align 4, !tbaa !4
  %conv112 = trunc i32 %22 to i8
  store i8 %conv112, i8* %arrayidx, align 1, !tbaa !8
  %shr114 = lshr i32 %22, 8
  %conv116 = trunc i32 %shr114 to i8
  store i8 %conv116, i8* %incdec.ptr77, align 1, !tbaa !8
  %shr118 = lshr i32 %22, 16
  %conv120 = trunc i32 %shr118 to i8
  store i8 %conv120, i8* %incdec.ptr79, align 1, !tbaa !8
  %shr122 = lshr i32 %22, 24
  %conv124 = trunc i32 %shr122 to i8
  store i8 %conv124, i8* %incdec.ptr83, align 1, !tbaa !8
  %conv127 = trunc i32 %23 to i8
  store i8 %conv127, i8* %incdec.ptr87, align 1, !tbaa !8
  %shr129 = lshr i32 %23, 8
  %conv131 = trunc i32 %shr129 to i8
  store i8 %conv131, i8* %incdec.ptr91, align 1, !tbaa !8
  %shr133 = lshr i32 %23, 16
  %conv135 = trunc i32 %shr133 to i8
  store i8 %conv135, i8* %incdec.ptr93, align 1, !tbaa !8
  %shr137 = lshr i32 %23, 24
  %conv139 = trunc i32 %shr137 to i8
  store i8 %conv139, i8* %incdec.ptr97, align 1, !tbaa !8
  br label %if.end142

if.end142:                                        ; preds = %if.then76, %while.body73
  %incdec.ptr143 = getelementptr inbounds i8, i8* %in.addr.1263, i64 1
  %24 = load i8, i8* %in.addr.1263, align 1, !tbaa !8
  %idxprom144 = sext i32 %n.1264 to i64
  %arrayidx145 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 %idxprom144
  %25 = load i8, i8* %arrayidx145, align 1, !tbaa !8
  store i8 %24, i8* %arrayidx145, align 1, !tbaa !8
  %xor150251 = xor i8 %25, %24
  %incdec.ptr152 = getelementptr inbounds i8, i8* %out.addr.1262, i64 1
  store i8 %xor150251, i8* %out.addr.1262, align 1, !tbaa !8
  %add153 = add nsw i32 %n.1264, 1
  %and154 = and i32 %add153, 7
  %tobool72.not = icmp eq i64 %dec71265, 0
  br i1 %tobool72.not, label %if.end156, label %while.body73, !llvm.loop !11

if.end156:                                        ; preds = %if.end, %if.end142, %while.cond.preheader, %while.cond70.preheader
  %n.2 = phi i32 [ %0, %while.cond70.preheader ], [ %0, %while.cond.preheader ], [ %and154, %if.end142 ], [ %and69, %if.end ]
  store i32 %n.2, i32* %num, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @DES_encrypt3(i32* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @DES_ede3_cfb_encrypt(i8* nocapture noundef readonly %in, i8* nocapture noundef writeonly %out, i32 noundef %numbits, i64 noundef %length, %struct.DES_ks* noundef %ks1, %struct.DES_ks* noundef %ks2, %struct.DES_ks* noundef %ks3, [8 x i8]* nocapture noundef %ivec, i32 noundef %enc) local_unnamed_addr #0 {
entry:
  %ti = alloca [2 x i32], align 4
  %ovec = alloca [16 x i8], align 16
  %add = add i32 %numbits, 7
  %div = lshr i32 %add, 3
  %conv = zext i32 %div to i64
  %0 = bitcast [2 x i32]* %ti to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #4
  %cmp = icmp sgt i32 %numbits, 64
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 0
  %incdec.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %conv2 = zext i8 %2 to i32
  %incdec.ptr3 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 2
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv4 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, %conv2
  %incdec.ptr5 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 3
  %4 = load i8, i8* %incdec.ptr3, align 1, !tbaa !8
  %conv6 = zext i8 %4 to i32
  %shl7 = shl nuw nsw i32 %conv6, 16
  %or8 = or i32 %or, %shl7
  %incdec.ptr9 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 4
  %5 = load i8, i8* %incdec.ptr5, align 1, !tbaa !8
  %conv10 = zext i8 %5 to i32
  %shl11 = shl nuw i32 %conv10, 24
  %or12 = or i32 %or8, %shl11
  %incdec.ptr13 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 5
  %6 = load i8, i8* %incdec.ptr9, align 1, !tbaa !8
  %conv14 = zext i8 %6 to i32
  %incdec.ptr15 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 6
  %7 = load i8, i8* %incdec.ptr13, align 1, !tbaa !8
  %conv16 = zext i8 %7 to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %or18 = or i32 %shl17, %conv14
  %incdec.ptr19 = getelementptr inbounds [8 x i8], [8 x i8]* %ivec, i64 0, i64 7
  %8 = load i8, i8* %incdec.ptr15, align 1, !tbaa !8
  %conv20 = zext i8 %8 to i32
  %shl21 = shl nuw nsw i32 %conv20, 16
  %or22 = or i32 %or18, %shl21
  %9 = load i8, i8* %incdec.ptr19, align 1, !tbaa !8
  %conv24 = zext i8 %9 to i32
  %shl25 = shl nuw i32 %conv24, 24
  %or26 = or i32 %or22, %shl25
  %tobool.not = icmp eq i32 %enc, 0
  %cmp242.not783 = icmp ugt i64 %conv, %length
  br i1 %tobool.not, label %while.cond241.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  br i1 %cmp242.not783, label %if.end475, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx30 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  %arrayidx31 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  %incdec.ptr120 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 1
  %incdec.ptr124 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 2
  %incdec.ptr128 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 3
  %incdec.ptr132 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 4
  %incdec.ptr135 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 5
  %incdec.ptr139 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 6
  %incdec.ptr143 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 7
  %incdec.ptr147 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 8
  %incdec.ptr150 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 9
  %incdec.ptr154 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 10
  %incdec.ptr158 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 11
  %incdec.ptr162 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 12
  %incdec.ptr165 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 13
  %incdec.ptr169 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 14
  %incdec.ptr173 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 15
  %div180 = sdiv i32 %numbits, 8
  %idx.ext = sext i32 %div180 to i64
  %add.ptr181 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 %idx.ext
  %rem = srem i32 %numbits, 8
  %tobool182.not = icmp eq i32 %rem, 0
  %add183 = select i1 %tobool182.not, i64 8, i64 9
  %sub201 = sub nsw i32 8, %rem
  br label %while.body

while.cond241.preheader:                          ; preds = %if.end
  br i1 %cmp242.not783, label %if.end475, label %while.body244.lr.ph

while.body244.lr.ph:                              ; preds = %while.cond241.preheader
  %arrayidx246 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 0
  %arrayidx247 = getelementptr inbounds [2 x i32], [2 x i32]* %ti, i64 0, i64 1
  %incdec.ptr299 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 1
  %incdec.ptr303 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 2
  %incdec.ptr307 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 3
  %incdec.ptr311 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 4
  %incdec.ptr314 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 5
  %incdec.ptr318 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 6
  %incdec.ptr322 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 7
  %incdec.ptr326 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 8
  %incdec.ptr329 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 9
  %incdec.ptr333 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 10
  %incdec.ptr337 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 11
  %incdec.ptr341 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 12
  %incdec.ptr344 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 13
  %incdec.ptr348 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 14
  %incdec.ptr352 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 15
  %div359 = sdiv i32 %numbits, 8
  %idx.ext360 = sext i32 %div359 to i64
  %add.ptr361 = getelementptr inbounds [16 x i8], [16 x i8]* %ovec, i64 0, i64 %idx.ext360
  %rem362 = srem i32 %numbits, 8
  %tobool363.not = icmp eq i32 %rem362, 0
  %add365 = select i1 %tobool363.not, i64 8, i64 9
  %sub387 = sub nsw i32 8, %rem362
  br label %while.body244

while.body:                                       ; preds = %while.body.lr.ph, %if.end239
  %in.addr.0780 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr67, %if.end239 ]
  %out.addr.0779 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr109, %if.end239 ]
  %l.0778 = phi i64 [ %length, %while.body.lr.ph ], [ %sub, %if.end239 ]
  %v1.0777 = phi i32 [ %or26, %while.body.lr.ph ], [ %v1.1, %if.end239 ]
  %v0.0776 = phi i32 [ %or12, %while.body.lr.ph ], [ %v0.1, %if.end239 ]
  %sub = sub i64 %l.0778, %conv
  store i32 %v0.0776, i32* %arrayidx30, align 4, !tbaa !4
  store i32 %v1.0777, i32* %arrayidx31, align 4, !tbaa !4
  call void @DES_encrypt3(i32* noundef nonnull %arrayidx30, %struct.DES_ks* noundef %ks1, %struct.DES_ks* noundef %ks2, %struct.DES_ks* noundef %ks3) #5
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0780, i64 %conv
  switch i64 %conv, label %sw.epilog [
    i64 8, label %sw.bb
    i64 7, label %sw.bb35
    i64 6, label %sw.bb40
    i64 5, label %sw.bb45
    i64 4, label %sw.bb49
    i64 3, label %sw.bb53
    i64 2, label %sw.bb58
    i64 1, label %sw.bb63
  ]

sw.bb:                                            ; preds = %while.body
  %incdec.ptr32 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %10 = load i8, i8* %incdec.ptr32, align 1, !tbaa !8
  %conv33 = zext i8 %10 to i32
  %shl34 = shl nuw i32 %conv33, 24
  br label %sw.bb35

sw.bb35:                                          ; preds = %while.body, %sw.bb
  %d1.0 = phi i32 [ 0, %while.body ], [ %shl34, %sw.bb ]
  %in.addr.1 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr32, %sw.bb ]
  %incdec.ptr36 = getelementptr inbounds i8, i8* %in.addr.1, i64 -1
  %11 = load i8, i8* %incdec.ptr36, align 1, !tbaa !8
  %conv37 = zext i8 %11 to i32
  %shl38 = shl nuw nsw i32 %conv37, 16
  %or39 = or i32 %shl38, %d1.0
  br label %sw.bb40

sw.bb40:                                          ; preds = %while.body, %sw.bb35
  %d1.1 = phi i32 [ 0, %while.body ], [ %or39, %sw.bb35 ]
  %in.addr.2 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr36, %sw.bb35 ]
  %incdec.ptr41 = getelementptr inbounds i8, i8* %in.addr.2, i64 -1
  %12 = load i8, i8* %incdec.ptr41, align 1, !tbaa !8
  %conv42 = zext i8 %12 to i32
  %shl43 = shl nuw nsw i32 %conv42, 8
  %or44 = or i32 %shl43, %d1.1
  br label %sw.bb45

sw.bb45:                                          ; preds = %while.body, %sw.bb40
  %d1.2 = phi i32 [ 0, %while.body ], [ %or44, %sw.bb40 ]
  %in.addr.3 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr41, %sw.bb40 ]
  %incdec.ptr46 = getelementptr inbounds i8, i8* %in.addr.3, i64 -1
  %13 = load i8, i8* %incdec.ptr46, align 1, !tbaa !8
  %conv47 = zext i8 %13 to i32
  %or48 = or i32 %d1.2, %conv47
  br label %sw.bb49

sw.bb49:                                          ; preds = %while.body, %sw.bb45
  %d1.3 = phi i32 [ 0, %while.body ], [ %or48, %sw.bb45 ]
  %in.addr.4 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr46, %sw.bb45 ]
  %incdec.ptr50 = getelementptr inbounds i8, i8* %in.addr.4, i64 -1
  %14 = load i8, i8* %incdec.ptr50, align 1, !tbaa !8
  %conv51 = zext i8 %14 to i32
  %shl52 = shl nuw i32 %conv51, 24
  br label %sw.bb53

sw.bb53:                                          ; preds = %while.body, %sw.bb49
  %d0.0 = phi i32 [ 0, %while.body ], [ %shl52, %sw.bb49 ]
  %d1.4 = phi i32 [ 0, %while.body ], [ %d1.3, %sw.bb49 ]
  %in.addr.5 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr50, %sw.bb49 ]
  %incdec.ptr54 = getelementptr inbounds i8, i8* %in.addr.5, i64 -1
  %15 = load i8, i8* %incdec.ptr54, align 1, !tbaa !8
  %conv55 = zext i8 %15 to i32
  %shl56 = shl nuw nsw i32 %conv55, 16
  %or57 = or i32 %shl56, %d0.0
  br label %sw.bb58

sw.bb58:                                          ; preds = %while.body, %sw.bb53
  %d0.1 = phi i32 [ 0, %while.body ], [ %or57, %sw.bb53 ]
  %d1.5 = phi i32 [ 0, %while.body ], [ %d1.4, %sw.bb53 ]
  %in.addr.6 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr54, %sw.bb53 ]
  %incdec.ptr59 = getelementptr inbounds i8, i8* %in.addr.6, i64 -1
  %16 = load i8, i8* %incdec.ptr59, align 1, !tbaa !8
  %conv60 = zext i8 %16 to i32
  %shl61 = shl nuw nsw i32 %conv60, 8
  %or62 = or i32 %shl61, %d0.1
  br label %sw.bb63

sw.bb63:                                          ; preds = %while.body, %sw.bb58
  %d0.2 = phi i32 [ 0, %while.body ], [ %or62, %sw.bb58 ]
  %d1.6 = phi i32 [ 0, %while.body ], [ %d1.5, %sw.bb58 ]
  %in.addr.7 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr59, %sw.bb58 ]
  %incdec.ptr64 = getelementptr inbounds i8, i8* %in.addr.7, i64 -1
  %17 = load i8, i8* %incdec.ptr64, align 1, !tbaa !8
  %conv65 = zext i8 %17 to i32
  %or66 = or i32 %d0.2, %conv65
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb63, %while.body
  %d0.3 = phi i32 [ 0, %while.body ], [ %or66, %sw.bb63 ]
  %d1.7 = phi i32 [ 0, %while.body ], [ %d1.6, %sw.bb63 ]
  %in.addr.8 = phi i8* [ %add.ptr, %while.body ], [ %incdec.ptr64, %sw.bb63 ]
  %add.ptr67 = getelementptr inbounds i8, i8* %in.addr.8, i64 %conv
  %18 = load i32, i32* %arrayidx30, align 4, !tbaa !4
  %xor = xor i32 %18, %d0.3
  %19 = load i32, i32* %arrayidx31, align 4, !tbaa !4
  %xor70 = xor i32 %19, %d1.7
  %add.ptr71 = getelementptr inbounds i8, i8* %out.addr.0779, i64 %conv
  switch i64 %conv, label %sw.epilog108 [
    i64 8, label %sw.bb72
    i64 7, label %sw.bb75
    i64 6, label %sw.bb80
    i64 5, label %sw.bb85
    i64 4, label %sw.bb89
    i64 3, label %sw.bb94
    i64 2, label %sw.bb99
    i64 1, label %sw.bb104
  ]

sw.bb72:                                          ; preds = %sw.epilog
  %shr = lshr i32 %xor70, 24
  %conv73 = trunc i32 %shr to i8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %add.ptr71, i64 -1
  store i8 %conv73, i8* %incdec.ptr74, align 1, !tbaa !8
  br label %sw.bb75

sw.bb75:                                          ; preds = %sw.epilog, %sw.bb72
  %out.addr.1 = phi i8* [ %add.ptr71, %sw.epilog ], [ %incdec.ptr74, %sw.bb72 ]
  %shr76 = lshr i32 %xor70, 16
  %conv78 = trunc i32 %shr76 to i8
  %incdec.ptr79 = getelementptr inbounds i8, i8* %out.addr.1, i64 -1
  store i8 %conv78, i8* %incdec.ptr79, align 1, !tbaa !8
  br label %sw.bb80

sw.bb80:                                          ; preds = %sw.epilog, %sw.bb75
  %out.addr.2 = phi i8* [ %add.ptr71, %sw.epilog ], [ %incdec.ptr79, %sw.bb75 ]
  %shr81 = lshr i32 %xor70, 8
  %conv83 = trunc i32 %shr81 to i8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %out.addr.2, i64 -1
  store i8 %conv83, i8* %incdec.ptr84, align 1, !tbaa !8
  br label %sw.bb85

sw.bb85:                                          ; preds = %sw.epilog, %sw.bb80
  %out.addr.3 = phi i8* [ %add.ptr71, %sw.epilog ], [ %incdec.ptr84, %sw.bb80 ]
  %conv87 = trunc i32 %xor70 to i8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %out.addr.3, i64 -1
  store i8 %conv87, i8* %incdec.ptr88, align 1, !tbaa !8
  br label %sw.bb89

sw.bb89:                                          ; preds = %sw.epilog, %sw.bb85
  %out.addr.4 = phi i8* [ %add.ptr71, %sw.epilog ], [ %incdec.ptr88, %sw.bb85 ]
  %shr90 = lshr i32 %xor, 24
  %conv92 = trunc i32 %shr90 to i8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %out.addr.4, i64 -1
  store i8 %conv92, i8* %incdec.ptr93, align 1, !tbaa !8
  br label %sw.bb94

sw.bb94:                                          ; preds = %sw.epilog, %sw.bb89
  %out.addr.5 = phi i8* [ %add.ptr71, %sw.epilog ], [ %incdec.ptr93, %sw.bb89 ]
  %shr95 = lshr i32 %xor, 16
  %conv97 = trunc i32 %shr95 to i8
  %incdec.ptr98 = getelementptr inbounds i8, i8* %out.addr.5, i64 -1
  store i8 %conv97, i8* %incdec.ptr98, align 1, !tbaa !8
  br label %sw.bb99

sw.bb99:                                          ; preds = %sw.epilog, %sw.bb94
  %out.addr.6 = phi i8* [ %add.ptr71, %sw.epilog ], [ %incdec.ptr98, %sw.bb94 ]
  %shr100 = lshr i32 %xor, 8
  %conv102 = trunc i32 %shr100 to i8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %out.addr.6, i64 -1
  store i8 %conv102, i8* %incdec.ptr103, align 1, !tbaa !8
  br label %sw.bb104

sw.bb104:                                         ; preds = %sw.epilog, %sw.bb99
  %out.addr.7 = phi i8* [ %add.ptr71, %sw.epilog ], [ %incdec.ptr103, %sw.bb99 ]
  %conv106 = trunc i32 %xor to i8
  %incdec.ptr107 = getelementptr inbounds i8, i8* %out.addr.7, i64 -1
  store i8 %conv106, i8* %incdec.ptr107, align 1, !tbaa !8
  br label %sw.epilog108

sw.epilog108:                                     ; preds = %sw.bb104, %sw.epilog
  %out.addr.8 = phi i8* [ %add.ptr71, %sw.epilog ], [ %incdec.ptr107, %sw.bb104 ]
  %add.ptr109 = getelementptr inbounds i8, i8* %out.addr.8, i64 %conv
  switch i32 %numbits, label %if.else116 [
    i32 32, label %if.end239
    i32 64, label %if.then115
  ]

if.then115:                                       ; preds = %sw.epilog108
  br label %if.end239

if.else116:                                       ; preds = %sw.epilog108
  %conv119 = trunc i32 %v0.0776 to i8
  store i8 %conv119, i8* %1, align 16, !tbaa !8
  %shr121 = lshr i32 %v0.0776, 8
  %conv123 = trunc i32 %shr121 to i8
  store i8 %conv123, i8* %incdec.ptr120, align 1, !tbaa !8
  %shr125 = lshr i32 %v0.0776, 16
  %conv127 = trunc i32 %shr125 to i8
  store i8 %conv127, i8* %incdec.ptr124, align 2, !tbaa !8
  %shr129 = lshr i32 %v0.0776, 24
  %conv131 = trunc i32 %shr129 to i8
  store i8 %conv131, i8* %incdec.ptr128, align 1, !tbaa !8
  %conv134 = trunc i32 %v1.0777 to i8
  store i8 %conv134, i8* %incdec.ptr132, align 4, !tbaa !8
  %shr136 = lshr i32 %v1.0777, 8
  %conv138 = trunc i32 %shr136 to i8
  store i8 %conv138, i8* %incdec.ptr135, align 1, !tbaa !8
  %shr140 = lshr i32 %v1.0777, 16
  %conv142 = trunc i32 %shr140 to i8
  store i8 %conv142, i8* %incdec.ptr139, align 2, !tbaa !8
  %shr144 = lshr i32 %v1.0777, 24
  %conv146 = trunc i32 %shr144 to i8
  store i8 %conv146, i8* %incdec.ptr143, align 1, !tbaa !8
  %conv149 = trunc i32 %xor to i8
  store i8 %conv149, i8* %incdec.ptr147, align 8, !tbaa !8
  %shr151 = lshr i32 %xor, 8
  %conv153 = trunc i32 %shr151 to i8
  store i8 %conv153, i8* %incdec.ptr150, align 1, !tbaa !8
  %shr155 = lshr i32 %xor, 16
  %conv157 = trunc i32 %shr155 to i8
  store i8 %conv157, i8* %incdec.ptr154, align 2, !tbaa !8
  %shr159 = lshr i32 %xor, 24
  %conv161 = trunc i32 %shr159 to i8
  store i8 %conv161, i8* %incdec.ptr158, align 1, !tbaa !8
  %conv164 = trunc i32 %xor70 to i8
  store i8 %conv164, i8* %incdec.ptr162, align 4, !tbaa !8
  %shr166 = lshr i32 %xor70, 8
  %conv168 = trunc i32 %shr166 to i8
  store i8 %conv168, i8* %incdec.ptr165, align 1, !tbaa !8
  %shr170 = lshr i32 %xor70, 16
  %conv172 = trunc i32 %shr170 to i8
  store i8 %conv172, i8* %incdec.ptr169, align 2, !tbaa !8
  %shr174 = lshr i32 %xor70, 24
  %conv176 = trunc i32 %shr174 to i8
  store i8 %conv176, i8* %incdec.ptr173, align 1, !tbaa !8
  %call = call i8* @memmove(i8* noundef nonnull %1, i8* noundef nonnull %add.ptr181, i64 noundef %add183) #5
  %.pre = load i8, i8* %1, align 16, !tbaa !8
  br i1 %tobool182.not, label %if.else116.if.end208_crit_edge, label %for.body.preheader

if.else116.if.end208_crit_edge:                   ; preds = %if.else116
  %.pre794 = load i8, i8* %incdec.ptr120, align 1, !tbaa !8
  %.pre795 = load i8, i8* %incdec.ptr124, align 2, !tbaa !8
  %.pre796 = load i8, i8* %incdec.ptr128, align 1, !tbaa !8
  %.pre797 = load i8, i8* %incdec.ptr132, align 4, !tbaa !8
  %.pre798 = load i8, i8* %incdec.ptr135, align 1, !tbaa !8
  %.pre799 = load i8, i8* %incdec.ptr139, align 2, !tbaa !8
  %.pre800 = load i8, i8* %incdec.ptr143, align 1, !tbaa !8
  br label %if.end208

for.body.preheader:                               ; preds = %if.else116
  %conv193 = zext i8 %.pre to i32
  %shl194 = shl i32 %conv193, %rem
  %20 = load i8, i8* %incdec.ptr120, align 1, !tbaa !8
  %conv199 = zext i8 %20 to i32
  %shr202 = lshr i32 %conv199, %sub201
  %or206 = or i32 %shr202, %shl194
  %conv207 = trunc i32 %or206 to i8
  store i8 %conv207, i8* %1, align 16, !tbaa !8
  %shl194.1 = shl i32 %conv199, %rem
  %21 = load i8, i8* %incdec.ptr124, align 2, !tbaa !8
  %conv199.1 = zext i8 %21 to i32
  %shr202.1 = lshr i32 %conv199.1, %sub201
  %or206.1 = or i32 %shr202.1, %shl194.1
  %conv207.1 = trunc i32 %or206.1 to i8
  store i8 %conv207.1, i8* %incdec.ptr120, align 1, !tbaa !8
  %shl194.2 = shl i32 %conv199.1, %rem
  %22 = load i8, i8* %incdec.ptr128, align 1, !tbaa !8
  %conv199.2 = zext i8 %22 to i32
  %shr202.2 = lshr i32 %conv199.2, %sub201
  %or206.2 = or i32 %shr202.2, %shl194.2
  %conv207.2 = trunc i32 %or206.2 to i8
  store i8 %conv207.2, i8* %incdec.ptr124, align 2, !tbaa !8
  %shl194.3 = shl i32 %conv199.2, %rem
  %23 = load i8, i8* %incdec.ptr132, align 4, !tbaa !8
  %conv199.3 = zext i8 %23 to i32
  %shr202.3 = lshr i32 %conv199.3, %sub201
  %or206.3 = or i32 %shr202.3, %shl194.3
  %conv207.3 = trunc i32 %or206.3 to i8
  store i8 %conv207.3, i8* %incdec.ptr128, align 1, !tbaa !8
  %shl194.4 = shl i32 %conv199.3, %rem
  %24 = load i8, i8* %incdec.ptr135, align 1, !tbaa !8
  %conv199.4 = zext i8 %24 to i32
  %shr202.4 = lshr i32 %conv199.4, %sub201
  %or206.4 = or i32 %shr202.4, %shl194.4
  %conv207.4 = trunc i32 %or206.4 to i8
  store i8 %conv207.4, i8* %incdec.ptr132, align 4, !tbaa !8
  %shl194.5 = shl i32 %conv199.4, %rem
  %25 = load i8, i8* %incdec.ptr139, align 2, !tbaa !8
  %conv199.5 = zext i8 %25 to i32
  %shr202.5 = lshr i32 %conv199.5, %sub201
  %or206.5 = or i32 %shr202.5, %shl194.5
  %conv207.5 = trunc i32 %or206.5 to i8
  store i8 %conv207.5, i8* %incdec.ptr135, align 1, !tbaa !8
  %shl194.6 = shl i32 %conv199.5, %rem
  %26 = load i8, i8* %incdec.ptr143, align 1, !tbaa !8
  %conv199.6 = zext i8 %26 to i32
  %shr202.6 = lshr i32 %conv199.6, %sub201
  %or206.6 = or i32 %shr202.6, %shl194.6
  %conv207.6 = trunc i32 %or206.6 to i8
  store i8 %conv207.6, i8* %incdec.ptr139, align 2, !tbaa !8
  %shl194.7 = shl i32 %conv199.6, %rem
  %27 = load i8, i8* %incdec.ptr147, align 8, !tbaa !8
  %conv199.7 = zext i8 %27 to i32
  %shr202.7 = lshr i32 %conv199.7, %sub201
  %or206.7 = or i32 %shr202.7, %shl194.7
  %conv207.7 = trunc i32 %or206.7 to i8
  store i8 %conv207.7, i8* %incdec.ptr143, align 1, !tbaa !8
  br label %if.end208

if.end208:                                        ; preds = %if.else116.if.end208_crit_edge, %for.body.preheader
  %28 = phi i8 [ %.pre800, %if.else116.if.end208_crit_edge ], [ %conv207.7, %for.body.preheader ]
  %29 = phi i8 [ %.pre799, %if.else116.if.end208_crit_edge ], [ %conv207.6, %for.body.preheader ]
  %30 = phi i8 [ %.pre798, %if.else116.if.end208_crit_edge ], [ %conv207.5, %for.body.preheader ]
  %31 = phi i8 [ %.pre797, %if.else116.if.end208_crit_edge ], [ %conv207.4, %for.body.preheader ]
  %32 = phi i8 [ %.pre796, %if.else116.if.end208_crit_edge ], [ %conv207.3, %for.body.preheader ]
  %33 = phi i8 [ %.pre795, %if.else116.if.end208_crit_edge ], [ %conv207.2, %for.body.preheader ]
  %34 = phi i8 [ %.pre794, %if.else116.if.end208_crit_edge ], [ %conv207.1, %for.body.preheader ]
  %35 = phi i8 [ %.pre, %if.else116.if.end208_crit_edge ], [ %conv207, %for.body.preheader ]
  %conv211 = zext i8 %35 to i32
  %conv213 = zext i8 %34 to i32
  %shl214 = shl nuw nsw i32 %conv213, 8
  %or215 = or i32 %shl214, %conv211
  %conv217 = zext i8 %33 to i32
  %shl218 = shl nuw nsw i32 %conv217, 16
  %or219 = or i32 %or215, %shl218
  %conv221 = zext i8 %32 to i32
  %shl222 = shl nuw i32 %conv221, 24
  %or223 = or i32 %or219, %shl222
  %conv225 = zext i8 %31 to i32
  %conv227 = zext i8 %30 to i32
  %shl228 = shl nuw nsw i32 %conv227, 8
  %or229 = or i32 %shl228, %conv225
  %conv231 = zext i8 %29 to i32
  %shl232 = shl nuw nsw i32 %conv231, 16
  %or233 = or i32 %or229, %shl232
  %conv235 = zext i8 %28 to i32
  %shl236 = shl nuw i32 %conv235, 24
  %or237 = or i32 %or233, %shl236
  br label %if.end239

if.end239:                                        ; preds = %sw.epilog108, %if.then115, %if.end208
  %v0.1 = phi i32 [ %xor, %if.then115 ], [ %or223, %if.end208 ], [ %v1.0777, %sw.epilog108 ]
  %v1.1 = phi i32 [ %xor70, %if.then115 ], [ %or237, %if.end208 ], [ %xor, %sw.epilog108 ]
  %cmp28.not = icmp ult i64 %sub, %conv
  br i1 %cmp28.not, label %if.end475, label %while.body, !llvm.loop !12

while.body244:                                    ; preds = %while.body244.lr.ph, %sw.epilog472
  %in.addr.9788 = phi i8* [ %in, %while.body244.lr.ph ], [ %add.ptr287, %sw.epilog472 ]
  %out.addr.9787 = phi i8* [ %out, %while.body244.lr.ph ], [ %add.ptr473, %sw.epilog472 ]
  %l.1786 = phi i64 [ %length, %while.body244.lr.ph ], [ %sub245, %sw.epilog472 ]
  %v1.2785 = phi i32 [ %or26, %while.body244.lr.ph ], [ %v1.3, %sw.epilog472 ]
  %v0.2784 = phi i32 [ %or12, %while.body244.lr.ph ], [ %v0.3, %sw.epilog472 ]
  %sub245 = sub i64 %l.1786, %conv
  store i32 %v0.2784, i32* %arrayidx246, align 4, !tbaa !4
  store i32 %v1.2785, i32* %arrayidx247, align 4, !tbaa !4
  call void @DES_encrypt3(i32* noundef nonnull %arrayidx246, %struct.DES_ks* noundef %ks1, %struct.DES_ks* noundef %ks2, %struct.DES_ks* noundef %ks3) #5
  %add.ptr249 = getelementptr inbounds i8, i8* %in.addr.9788, i64 %conv
  switch i64 %conv, label %sw.epilog286 [
    i64 8, label %sw.bb250
    i64 7, label %sw.bb254
    i64 6, label %sw.bb259
    i64 5, label %sw.bb264
    i64 4, label %sw.bb268
    i64 3, label %sw.bb272
    i64 2, label %sw.bb277
    i64 1, label %sw.bb282
  ]

sw.bb250:                                         ; preds = %while.body244
  %incdec.ptr251 = getelementptr inbounds i8, i8* %add.ptr249, i64 -1
  %36 = load i8, i8* %incdec.ptr251, align 1, !tbaa !8
  %conv252 = zext i8 %36 to i32
  %shl253 = shl nuw i32 %conv252, 24
  br label %sw.bb254

sw.bb254:                                         ; preds = %while.body244, %sw.bb250
  %d1.8 = phi i32 [ 0, %while.body244 ], [ %shl253, %sw.bb250 ]
  %in.addr.10 = phi i8* [ %add.ptr249, %while.body244 ], [ %incdec.ptr251, %sw.bb250 ]
  %incdec.ptr255 = getelementptr inbounds i8, i8* %in.addr.10, i64 -1
  %37 = load i8, i8* %incdec.ptr255, align 1, !tbaa !8
  %conv256 = zext i8 %37 to i32
  %shl257 = shl nuw nsw i32 %conv256, 16
  %or258 = or i32 %shl257, %d1.8
  br label %sw.bb259

sw.bb259:                                         ; preds = %while.body244, %sw.bb254
  %d1.9 = phi i32 [ 0, %while.body244 ], [ %or258, %sw.bb254 ]
  %in.addr.11 = phi i8* [ %add.ptr249, %while.body244 ], [ %incdec.ptr255, %sw.bb254 ]
  %incdec.ptr260 = getelementptr inbounds i8, i8* %in.addr.11, i64 -1
  %38 = load i8, i8* %incdec.ptr260, align 1, !tbaa !8
  %conv261 = zext i8 %38 to i32
  %shl262 = shl nuw nsw i32 %conv261, 8
  %or263 = or i32 %shl262, %d1.9
  br label %sw.bb264

sw.bb264:                                         ; preds = %while.body244, %sw.bb259
  %d1.10 = phi i32 [ 0, %while.body244 ], [ %or263, %sw.bb259 ]
  %in.addr.12 = phi i8* [ %add.ptr249, %while.body244 ], [ %incdec.ptr260, %sw.bb259 ]
  %incdec.ptr265 = getelementptr inbounds i8, i8* %in.addr.12, i64 -1
  %39 = load i8, i8* %incdec.ptr265, align 1, !tbaa !8
  %conv266 = zext i8 %39 to i32
  %or267 = or i32 %d1.10, %conv266
  br label %sw.bb268

sw.bb268:                                         ; preds = %while.body244, %sw.bb264
  %d1.11 = phi i32 [ 0, %while.body244 ], [ %or267, %sw.bb264 ]
  %in.addr.13 = phi i8* [ %add.ptr249, %while.body244 ], [ %incdec.ptr265, %sw.bb264 ]
  %incdec.ptr269 = getelementptr inbounds i8, i8* %in.addr.13, i64 -1
  %40 = load i8, i8* %incdec.ptr269, align 1, !tbaa !8
  %conv270 = zext i8 %40 to i32
  %shl271 = shl nuw i32 %conv270, 24
  br label %sw.bb272

sw.bb272:                                         ; preds = %while.body244, %sw.bb268
  %d0.4 = phi i32 [ 0, %while.body244 ], [ %shl271, %sw.bb268 ]
  %d1.12 = phi i32 [ 0, %while.body244 ], [ %d1.11, %sw.bb268 ]
  %in.addr.14 = phi i8* [ %add.ptr249, %while.body244 ], [ %incdec.ptr269, %sw.bb268 ]
  %incdec.ptr273 = getelementptr inbounds i8, i8* %in.addr.14, i64 -1
  %41 = load i8, i8* %incdec.ptr273, align 1, !tbaa !8
  %conv274 = zext i8 %41 to i32
  %shl275 = shl nuw nsw i32 %conv274, 16
  %or276 = or i32 %shl275, %d0.4
  br label %sw.bb277

sw.bb277:                                         ; preds = %while.body244, %sw.bb272
  %d0.5 = phi i32 [ 0, %while.body244 ], [ %or276, %sw.bb272 ]
  %d1.13 = phi i32 [ 0, %while.body244 ], [ %d1.12, %sw.bb272 ]
  %in.addr.15 = phi i8* [ %add.ptr249, %while.body244 ], [ %incdec.ptr273, %sw.bb272 ]
  %incdec.ptr278 = getelementptr inbounds i8, i8* %in.addr.15, i64 -1
  %42 = load i8, i8* %incdec.ptr278, align 1, !tbaa !8
  %conv279 = zext i8 %42 to i32
  %shl280 = shl nuw nsw i32 %conv279, 8
  %or281 = or i32 %shl280, %d0.5
  br label %sw.bb282

sw.bb282:                                         ; preds = %while.body244, %sw.bb277
  %d0.6 = phi i32 [ 0, %while.body244 ], [ %or281, %sw.bb277 ]
  %d1.14 = phi i32 [ 0, %while.body244 ], [ %d1.13, %sw.bb277 ]
  %in.addr.16 = phi i8* [ %add.ptr249, %while.body244 ], [ %incdec.ptr278, %sw.bb277 ]
  %incdec.ptr283 = getelementptr inbounds i8, i8* %in.addr.16, i64 -1
  %43 = load i8, i8* %incdec.ptr283, align 1, !tbaa !8
  %conv284 = zext i8 %43 to i32
  %or285 = or i32 %d0.6, %conv284
  br label %sw.epilog286

sw.epilog286:                                     ; preds = %sw.bb282, %while.body244
  %d0.7 = phi i32 [ 0, %while.body244 ], [ %or285, %sw.bb282 ]
  %d1.15 = phi i32 [ 0, %while.body244 ], [ %d1.14, %sw.bb282 ]
  %in.addr.17 = phi i8* [ %add.ptr249, %while.body244 ], [ %incdec.ptr283, %sw.bb282 ]
  %add.ptr287 = getelementptr inbounds i8, i8* %in.addr.17, i64 %conv
  switch i32 %numbits, label %if.else295 [
    i32 32, label %if.end428
    i32 64, label %if.then294
  ]

if.then294:                                       ; preds = %sw.epilog286
  br label %if.end428

if.else295:                                       ; preds = %sw.epilog286
  %conv298 = trunc i32 %v0.2784 to i8
  store i8 %conv298, i8* %1, align 16, !tbaa !8
  %shr300 = lshr i32 %v0.2784, 8
  %conv302 = trunc i32 %shr300 to i8
  store i8 %conv302, i8* %incdec.ptr299, align 1, !tbaa !8
  %shr304 = lshr i32 %v0.2784, 16
  %conv306 = trunc i32 %shr304 to i8
  store i8 %conv306, i8* %incdec.ptr303, align 2, !tbaa !8
  %shr308 = lshr i32 %v0.2784, 24
  %conv310 = trunc i32 %shr308 to i8
  store i8 %conv310, i8* %incdec.ptr307, align 1, !tbaa !8
  %conv313 = trunc i32 %v1.2785 to i8
  store i8 %conv313, i8* %incdec.ptr311, align 4, !tbaa !8
  %shr315 = lshr i32 %v1.2785, 8
  %conv317 = trunc i32 %shr315 to i8
  store i8 %conv317, i8* %incdec.ptr314, align 1, !tbaa !8
  %shr319 = lshr i32 %v1.2785, 16
  %conv321 = trunc i32 %shr319 to i8
  store i8 %conv321, i8* %incdec.ptr318, align 2, !tbaa !8
  %shr323 = lshr i32 %v1.2785, 24
  %conv325 = trunc i32 %shr323 to i8
  store i8 %conv325, i8* %incdec.ptr322, align 1, !tbaa !8
  %conv328 = trunc i32 %d0.7 to i8
  store i8 %conv328, i8* %incdec.ptr326, align 8, !tbaa !8
  %shr330 = lshr i32 %d0.7, 8
  %conv332 = trunc i32 %shr330 to i8
  store i8 %conv332, i8* %incdec.ptr329, align 1, !tbaa !8
  %shr334 = lshr i32 %d0.7, 16
  %conv336 = trunc i32 %shr334 to i8
  store i8 %conv336, i8* %incdec.ptr333, align 2, !tbaa !8
  %shr338 = lshr i32 %d0.7, 24
  %conv340 = trunc i32 %shr338 to i8
  store i8 %conv340, i8* %incdec.ptr337, align 1, !tbaa !8
  %conv343 = trunc i32 %d1.15 to i8
  store i8 %conv343, i8* %incdec.ptr341, align 4, !tbaa !8
  %shr345 = lshr i32 %d1.15, 8
  %conv347 = trunc i32 %shr345 to i8
  store i8 %conv347, i8* %incdec.ptr344, align 1, !tbaa !8
  %shr349 = lshr i32 %d1.15, 16
  %conv351 = trunc i32 %shr349 to i8
  store i8 %conv351, i8* %incdec.ptr348, align 2, !tbaa !8
  %shr353 = lshr i32 %d1.15, 24
  %conv355 = trunc i32 %shr353 to i8
  store i8 %conv355, i8* %incdec.ptr352, align 1, !tbaa !8
  %call367 = call i8* @memmove(i8* noundef nonnull %1, i8* noundef nonnull %add.ptr361, i64 noundef %add365) #5
  %.pre801 = load i8, i8* %1, align 16, !tbaa !8
  br i1 %tobool363.not, label %if.else295.if.end397_crit_edge, label %for.body375.preheader

if.else295.if.end397_crit_edge:                   ; preds = %if.else295
  %.pre802 = load i8, i8* %incdec.ptr299, align 1, !tbaa !8
  %.pre803 = load i8, i8* %incdec.ptr303, align 2, !tbaa !8
  %.pre804 = load i8, i8* %incdec.ptr307, align 1, !tbaa !8
  %.pre805 = load i8, i8* %incdec.ptr311, align 4, !tbaa !8
  %.pre806 = load i8, i8* %incdec.ptr314, align 1, !tbaa !8
  %.pre807 = load i8, i8* %incdec.ptr318, align 2, !tbaa !8
  %.pre808 = load i8, i8* %incdec.ptr322, align 1, !tbaa !8
  br label %if.end397

for.body375.preheader:                            ; preds = %if.else295
  %conv379 = zext i8 %.pre801 to i32
  %shl380 = shl i32 %conv379, %rem362
  %44 = load i8, i8* %incdec.ptr299, align 1, !tbaa !8
  %conv385 = zext i8 %44 to i32
  %shr388 = lshr i32 %conv385, %sub387
  %or392 = or i32 %shr388, %shl380
  %conv393 = trunc i32 %or392 to i8
  store i8 %conv393, i8* %1, align 16, !tbaa !8
  %shl380.1 = shl i32 %conv385, %rem362
  %45 = load i8, i8* %incdec.ptr303, align 2, !tbaa !8
  %conv385.1 = zext i8 %45 to i32
  %shr388.1 = lshr i32 %conv385.1, %sub387
  %or392.1 = or i32 %shr388.1, %shl380.1
  %conv393.1 = trunc i32 %or392.1 to i8
  store i8 %conv393.1, i8* %incdec.ptr299, align 1, !tbaa !8
  %shl380.2 = shl i32 %conv385.1, %rem362
  %46 = load i8, i8* %incdec.ptr307, align 1, !tbaa !8
  %conv385.2 = zext i8 %46 to i32
  %shr388.2 = lshr i32 %conv385.2, %sub387
  %or392.2 = or i32 %shr388.2, %shl380.2
  %conv393.2 = trunc i32 %or392.2 to i8
  store i8 %conv393.2, i8* %incdec.ptr303, align 2, !tbaa !8
  %shl380.3 = shl i32 %conv385.2, %rem362
  %47 = load i8, i8* %incdec.ptr311, align 4, !tbaa !8
  %conv385.3 = zext i8 %47 to i32
  %shr388.3 = lshr i32 %conv385.3, %sub387
  %or392.3 = or i32 %shr388.3, %shl380.3
  %conv393.3 = trunc i32 %or392.3 to i8
  store i8 %conv393.3, i8* %incdec.ptr307, align 1, !tbaa !8
  %shl380.4 = shl i32 %conv385.3, %rem362
  %48 = load i8, i8* %incdec.ptr314, align 1, !tbaa !8
  %conv385.4 = zext i8 %48 to i32
  %shr388.4 = lshr i32 %conv385.4, %sub387
  %or392.4 = or i32 %shr388.4, %shl380.4
  %conv393.4 = trunc i32 %or392.4 to i8
  store i8 %conv393.4, i8* %incdec.ptr311, align 4, !tbaa !8
  %shl380.5 = shl i32 %conv385.4, %rem362
  %49 = load i8, i8* %incdec.ptr318, align 2, !tbaa !8
  %conv385.5 = zext i8 %49 to i32
  %shr388.5 = lshr i32 %conv385.5, %sub387
  %or392.5 = or i32 %shr388.5, %shl380.5
  %conv393.5 = trunc i32 %or392.5 to i8
  store i8 %conv393.5, i8* %incdec.ptr314, align 1, !tbaa !8
  %shl380.6 = shl i32 %conv385.5, %rem362
  %50 = load i8, i8* %incdec.ptr322, align 1, !tbaa !8
  %conv385.6 = zext i8 %50 to i32
  %shr388.6 = lshr i32 %conv385.6, %sub387
  %or392.6 = or i32 %shr388.6, %shl380.6
  %conv393.6 = trunc i32 %or392.6 to i8
  store i8 %conv393.6, i8* %incdec.ptr318, align 2, !tbaa !8
  %shl380.7 = shl i32 %conv385.6, %rem362
  %51 = load i8, i8* %incdec.ptr326, align 8, !tbaa !8
  %conv385.7 = zext i8 %51 to i32
  %shr388.7 = lshr i32 %conv385.7, %sub387
  %or392.7 = or i32 %shr388.7, %shl380.7
  %conv393.7 = trunc i32 %or392.7 to i8
  store i8 %conv393.7, i8* %incdec.ptr322, align 1, !tbaa !8
  br label %if.end397

if.end397:                                        ; preds = %if.else295.if.end397_crit_edge, %for.body375.preheader
  %52 = phi i8 [ %.pre808, %if.else295.if.end397_crit_edge ], [ %conv393.7, %for.body375.preheader ]
  %53 = phi i8 [ %.pre807, %if.else295.if.end397_crit_edge ], [ %conv393.6, %for.body375.preheader ]
  %54 = phi i8 [ %.pre806, %if.else295.if.end397_crit_edge ], [ %conv393.5, %for.body375.preheader ]
  %55 = phi i8 [ %.pre805, %if.else295.if.end397_crit_edge ], [ %conv393.4, %for.body375.preheader ]
  %56 = phi i8 [ %.pre804, %if.else295.if.end397_crit_edge ], [ %conv393.3, %for.body375.preheader ]
  %57 = phi i8 [ %.pre803, %if.else295.if.end397_crit_edge ], [ %conv393.2, %for.body375.preheader ]
  %58 = phi i8 [ %.pre802, %if.else295.if.end397_crit_edge ], [ %conv393.1, %for.body375.preheader ]
  %59 = phi i8 [ %.pre801, %if.else295.if.end397_crit_edge ], [ %conv393, %for.body375.preheader ]
  %conv400 = zext i8 %59 to i32
  %conv402 = zext i8 %58 to i32
  %shl403 = shl nuw nsw i32 %conv402, 8
  %or404 = or i32 %shl403, %conv400
  %conv406 = zext i8 %57 to i32
  %shl407 = shl nuw nsw i32 %conv406, 16
  %or408 = or i32 %or404, %shl407
  %conv410 = zext i8 %56 to i32
  %shl411 = shl nuw i32 %conv410, 24
  %or412 = or i32 %or408, %shl411
  %conv414 = zext i8 %55 to i32
  %conv416 = zext i8 %54 to i32
  %shl417 = shl nuw nsw i32 %conv416, 8
  %or418 = or i32 %shl417, %conv414
  %conv420 = zext i8 %53 to i32
  %shl421 = shl nuw nsw i32 %conv420, 16
  %or422 = or i32 %or418, %shl421
  %conv424 = zext i8 %52 to i32
  %shl425 = shl nuw i32 %conv424, 24
  %or426 = or i32 %or422, %shl425
  br label %if.end428

if.end428:                                        ; preds = %sw.epilog286, %if.then294, %if.end397
  %v0.3 = phi i32 [ %d0.7, %if.then294 ], [ %or412, %if.end397 ], [ %v1.2785, %sw.epilog286 ]
  %v1.3 = phi i32 [ %d1.15, %if.then294 ], [ %or426, %if.end397 ], [ %d0.7, %sw.epilog286 ]
  %60 = load i32, i32* %arrayidx246, align 4, !tbaa !4
  %xor430 = xor i32 %60, %d0.7
  %61 = load i32, i32* %arrayidx247, align 4, !tbaa !4
  %xor432 = xor i32 %61, %d1.15
  %add.ptr433 = getelementptr inbounds i8, i8* %out.addr.9787, i64 %conv
  switch i64 %conv, label %sw.epilog472 [
    i64 8, label %sw.bb434
    i64 7, label %sw.bb439
    i64 6, label %sw.bb444
    i64 5, label %sw.bb449
    i64 4, label %sw.bb453
    i64 3, label %sw.bb458
    i64 2, label %sw.bb463
    i64 1, label %sw.bb468
  ]

sw.bb434:                                         ; preds = %if.end428
  %shr435 = lshr i32 %xor432, 24
  %conv437 = trunc i32 %shr435 to i8
  %incdec.ptr438 = getelementptr inbounds i8, i8* %add.ptr433, i64 -1
  store i8 %conv437, i8* %incdec.ptr438, align 1, !tbaa !8
  br label %sw.bb439

sw.bb439:                                         ; preds = %if.end428, %sw.bb434
  %out.addr.10 = phi i8* [ %add.ptr433, %if.end428 ], [ %incdec.ptr438, %sw.bb434 ]
  %shr440 = lshr i32 %xor432, 16
  %conv442 = trunc i32 %shr440 to i8
  %incdec.ptr443 = getelementptr inbounds i8, i8* %out.addr.10, i64 -1
  store i8 %conv442, i8* %incdec.ptr443, align 1, !tbaa !8
  br label %sw.bb444

sw.bb444:                                         ; preds = %if.end428, %sw.bb439
  %out.addr.11 = phi i8* [ %add.ptr433, %if.end428 ], [ %incdec.ptr443, %sw.bb439 ]
  %shr445 = lshr i32 %xor432, 8
  %conv447 = trunc i32 %shr445 to i8
  %incdec.ptr448 = getelementptr inbounds i8, i8* %out.addr.11, i64 -1
  store i8 %conv447, i8* %incdec.ptr448, align 1, !tbaa !8
  br label %sw.bb449

sw.bb449:                                         ; preds = %if.end428, %sw.bb444
  %out.addr.12 = phi i8* [ %add.ptr433, %if.end428 ], [ %incdec.ptr448, %sw.bb444 ]
  %conv451 = trunc i32 %xor432 to i8
  %incdec.ptr452 = getelementptr inbounds i8, i8* %out.addr.12, i64 -1
  store i8 %conv451, i8* %incdec.ptr452, align 1, !tbaa !8
  br label %sw.bb453

sw.bb453:                                         ; preds = %if.end428, %sw.bb449
  %out.addr.13 = phi i8* [ %add.ptr433, %if.end428 ], [ %incdec.ptr452, %sw.bb449 ]
  %shr454 = lshr i32 %xor430, 24
  %conv456 = trunc i32 %shr454 to i8
  %incdec.ptr457 = getelementptr inbounds i8, i8* %out.addr.13, i64 -1
  store i8 %conv456, i8* %incdec.ptr457, align 1, !tbaa !8
  br label %sw.bb458

sw.bb458:                                         ; preds = %if.end428, %sw.bb453
  %out.addr.14 = phi i8* [ %add.ptr433, %if.end428 ], [ %incdec.ptr457, %sw.bb453 ]
  %shr459 = lshr i32 %xor430, 16
  %conv461 = trunc i32 %shr459 to i8
  %incdec.ptr462 = getelementptr inbounds i8, i8* %out.addr.14, i64 -1
  store i8 %conv461, i8* %incdec.ptr462, align 1, !tbaa !8
  br label %sw.bb463

sw.bb463:                                         ; preds = %if.end428, %sw.bb458
  %out.addr.15 = phi i8* [ %add.ptr433, %if.end428 ], [ %incdec.ptr462, %sw.bb458 ]
  %shr464 = lshr i32 %xor430, 8
  %conv466 = trunc i32 %shr464 to i8
  %incdec.ptr467 = getelementptr inbounds i8, i8* %out.addr.15, i64 -1
  store i8 %conv466, i8* %incdec.ptr467, align 1, !tbaa !8
  br label %sw.bb468

sw.bb468:                                         ; preds = %if.end428, %sw.bb463
  %out.addr.16 = phi i8* [ %add.ptr433, %if.end428 ], [ %incdec.ptr467, %sw.bb463 ]
  %conv470 = trunc i32 %xor430 to i8
  %incdec.ptr471 = getelementptr inbounds i8, i8* %out.addr.16, i64 -1
  store i8 %conv470, i8* %incdec.ptr471, align 1, !tbaa !8
  br label %sw.epilog472

sw.epilog472:                                     ; preds = %sw.bb468, %if.end428
  %out.addr.17 = phi i8* [ %add.ptr433, %if.end428 ], [ %incdec.ptr471, %sw.bb468 ]
  %add.ptr473 = getelementptr inbounds i8, i8* %out.addr.17, i64 %conv
  %cmp242.not = icmp ult i64 %sub245, %conv
  br i1 %cmp242.not, label %if.end475, label %while.body244, !llvm.loop !13

if.end475:                                        ; preds = %if.end239, %sw.epilog472, %while.cond.preheader, %while.cond241.preheader
  %v0.4 = phi i32 [ %or12, %while.cond241.preheader ], [ %or12, %while.cond.preheader ], [ %v0.3, %sw.epilog472 ], [ %v0.1, %if.end239 ]
  %v1.4 = phi i32 [ %or26, %while.cond241.preheader ], [ %or26, %while.cond.preheader ], [ %v1.3, %sw.epilog472 ], [ %v1.1, %if.end239 ]
  %conv478 = trunc i32 %v0.4 to i8
  store i8 %conv478, i8* %arrayidx, align 1, !tbaa !8
  %shr480 = lshr i32 %v0.4, 8
  %conv482 = trunc i32 %shr480 to i8
  store i8 %conv482, i8* %incdec.ptr, align 1, !tbaa !8
  %shr484 = lshr i32 %v0.4, 16
  %conv486 = trunc i32 %shr484 to i8
  store i8 %conv486, i8* %incdec.ptr3, align 1, !tbaa !8
  %shr488 = lshr i32 %v0.4, 24
  %conv490 = trunc i32 %shr488 to i8
  store i8 %conv490, i8* %incdec.ptr5, align 1, !tbaa !8
  %conv493 = trunc i32 %v1.4 to i8
  store i8 %conv493, i8* %incdec.ptr9, align 1, !tbaa !8
  %shr495 = lshr i32 %v1.4, 8
  %conv497 = trunc i32 %shr495 to i8
  store i8 %conv497, i8* %incdec.ptr13, align 1, !tbaa !8
  %shr499 = lshr i32 %v1.4, 16
  %conv501 = trunc i32 %shr499 to i8
  store i8 %conv501, i8* %incdec.ptr15, align 1, !tbaa !8
  %shr503 = lshr i32 %v1.4, 24
  %conv505 = trunc i32 %shr503 to i8
  store i8 %conv505, i8* %incdec.ptr19, align 1, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end475
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret void
}

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
