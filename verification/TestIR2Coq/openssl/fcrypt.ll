; ModuleID = 'crypto/des/fcrypt.c'
source_filename = "crypto/des/fcrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

@DES_crypt.buff = internal global [14 x i8] zeroinitializer, align 1
@con_salt = internal unnamed_addr constant [128 x i8] c"\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$% !\22#$%&'()*+,-./0123456789:;<=>?@ABCD", align 16
@cov_2char = internal unnamed_addr constant [64 x i8] c"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", align 16

; Function Attrs: noinline nounwind uwtable
define i8* @DES_crypt(i8* nocapture noundef readonly %buf, i8* nocapture noundef readonly %salt) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @DES_fcrypt(i8* noundef %buf, i8* noundef %salt, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @DES_crypt.buff, i64 0, i64 0)) #3
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i8* @DES_fcrypt(i8* nocapture noundef readonly %buf, i8* nocapture noundef readonly %salt, i8* noundef writeonly %ret) local_unnamed_addr #0 {
entry:
  %out = alloca [2 x i32], align 4
  %key = alloca [8 x i8], align 1
  %ks = alloca %struct.DES_ks, align 4
  %bb = alloca [9 x i8], align 1
  %0 = bitcast [2 x i32]* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %2 = bitcast %struct.DES_ks* %ks to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %2) #4
  %3 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %3) #4
  %4 = load i8, i8* %salt, align 1, !tbaa !4
  store i8 %4, i8* %ret, align 1, !tbaa !4
  %conv = sext i8 %4 to i64
  %cmp = icmp eq i8 %4, 0
  %conv3 = and i64 %conv, 4294967295
  %cmp4 = icmp ugt i64 %conv3, 127
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arrayidx6 = getelementptr inbounds [128 x i8], [128 x i8]* @con_salt, i64 0, i64 %conv3
  %5 = load i8, i8* %arrayidx6, align 1, !tbaa !4
  %conv7 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv7, 2
  %arrayidx8 = getelementptr inbounds i8, i8* %salt, i64 1
  %6 = load i8, i8* %arrayidx8, align 1, !tbaa !4
  %arrayidx9 = getelementptr inbounds i8, i8* %ret, i64 1
  store i8 %6, i8* %arrayidx9, align 1, !tbaa !4
  %conv10 = sext i8 %6 to i64
  %cmp11 = icmp eq i8 %6, 0
  %conv14 = and i64 %conv10, 4294967295
  %cmp15 = icmp ugt i64 %conv14, 127
  %or.cond125 = select i1 %cmp11, i1 true, i1 %cmp15
  br i1 %or.cond125, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end
  %arrayidx20 = getelementptr inbounds [128 x i8], [128 x i8]* @con_salt, i64 0, i64 %conv14
  %7 = load i8, i8* %arrayidx20, align 1, !tbaa !4
  %conv21 = zext i8 %7 to i32
  %shl22 = shl nuw nsw i32 %conv21, 6
  %8 = load i8, i8* %buf, align 1, !tbaa !4
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.body35, label %if.end26

if.end26:                                         ; preds = %if.end18
  %incdec.ptr = getelementptr inbounds i8, i8* %buf, i64 1
  %shl28 = shl i8 %8, 1
  store i8 %shl28, i8* %1, align 1, !tbaa !4
  %9 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  %tobool.not.1 = icmp eq i8 %9, 0
  br i1 %tobool.not.1, label %for.body35, label %if.end26.1

if.end26.1:                                       ; preds = %if.end26
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %buf, i64 2
  %shl28.1 = shl i8 %9, 1
  %arrayidx31.1 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 1
  store i8 %shl28.1, i8* %arrayidx31.1, align 1, !tbaa !4
  %10 = load i8, i8* %incdec.ptr.1, align 1, !tbaa !4
  %tobool.not.2 = icmp eq i8 %10, 0
  br i1 %tobool.not.2, label %for.body35, label %if.end26.2

if.end26.2:                                       ; preds = %if.end26.1
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %buf, i64 3
  %shl28.2 = shl i8 %10, 1
  %arrayidx31.2 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 2
  store i8 %shl28.2, i8* %arrayidx31.2, align 1, !tbaa !4
  %11 = load i8, i8* %incdec.ptr.2, align 1, !tbaa !4
  %tobool.not.3 = icmp eq i8 %11, 0
  br i1 %tobool.not.3, label %for.body35, label %if.end26.3

if.end26.3:                                       ; preds = %if.end26.2
  %incdec.ptr.3 = getelementptr inbounds i8, i8* %buf, i64 4
  %shl28.3 = shl i8 %11, 1
  %arrayidx31.3 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 3
  store i8 %shl28.3, i8* %arrayidx31.3, align 1, !tbaa !4
  %12 = load i8, i8* %incdec.ptr.3, align 1, !tbaa !4
  %tobool.not.4 = icmp eq i8 %12, 0
  br i1 %tobool.not.4, label %for.body35, label %if.end26.4

if.end26.4:                                       ; preds = %if.end26.3
  %incdec.ptr.4 = getelementptr inbounds i8, i8* %buf, i64 5
  %shl28.4 = shl i8 %12, 1
  %arrayidx31.4 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 4
  store i8 %shl28.4, i8* %arrayidx31.4, align 1, !tbaa !4
  %13 = load i8, i8* %incdec.ptr.4, align 1, !tbaa !4
  %tobool.not.5 = icmp eq i8 %13, 0
  br i1 %tobool.not.5, label %for.body35, label %if.end26.5

if.end26.5:                                       ; preds = %if.end26.4
  %incdec.ptr.5 = getelementptr inbounds i8, i8* %buf, i64 6
  %shl28.5 = shl i8 %13, 1
  %arrayidx31.5 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 5
  store i8 %shl28.5, i8* %arrayidx31.5, align 1, !tbaa !4
  %14 = load i8, i8* %incdec.ptr.5, align 1, !tbaa !4
  %tobool.not.6 = icmp eq i8 %14, 0
  br i1 %tobool.not.6, label %for.body35, label %if.end26.6

if.end26.6:                                       ; preds = %if.end26.5
  %incdec.ptr.6 = getelementptr inbounds i8, i8* %buf, i64 7
  %shl28.6 = shl i8 %14, 1
  %arrayidx31.6 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 6
  store i8 %shl28.6, i8* %arrayidx31.6, align 1, !tbaa !4
  %15 = load i8, i8* %incdec.ptr.6, align 1, !tbaa !4
  %tobool.not.7 = icmp eq i8 %15, 0
  br i1 %tobool.not.7, label %for.body35, label %for.end

for.end:                                          ; preds = %if.end26.6
  %shl28.7 = shl i8 %15, 1
  %arrayidx31.7 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 7
  store i8 %shl28.7, i8* %arrayidx31.7, align 1, !tbaa !4
  br label %for.end40

for.body35:                                       ; preds = %if.end18, %if.end26, %if.end26.1, %if.end26.2, %if.end26.3, %if.end26.4, %if.end26.5, %if.end26.6
  %indvars.iv.ph = phi i64 [ 7, %if.end26.6 ], [ 6, %if.end26.5 ], [ 5, %if.end26.4 ], [ 4, %if.end26.3 ], [ 3, %if.end26.2 ], [ 2, %if.end26.1 ], [ 1, %if.end26 ], [ 0, %if.end18 ]
  %arrayidx37 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 %indvars.iv.ph
  store i8 0, i8* %arrayidx37, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.ph, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end40, label %for.body35.1, !llvm.loop !7

for.body35.1:                                     ; preds = %for.body35
  %arrayidx37.1 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 %indvars.iv.next
  store i8 0, i8* %arrayidx37.1, align 1, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.ph, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 8
  br i1 %exitcond.not.1, label %for.end40, label %for.body35.2, !llvm.loop !7

for.body35.2:                                     ; preds = %for.body35.1
  %arrayidx37.2 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 %indvars.iv.next.1
  store i8 0, i8* %arrayidx37.2, align 1, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.ph, 3
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 8
  br i1 %exitcond.not.2, label %for.end40, label %for.body35.3, !llvm.loop !7

for.body35.3:                                     ; preds = %for.body35.2
  %arrayidx37.3 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 %indvars.iv.next.2
  store i8 0, i8* %arrayidx37.3, align 1, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.ph, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 8
  br i1 %exitcond.not.3, label %for.end40, label %for.body35.4, !llvm.loop !7

for.body35.4:                                     ; preds = %for.body35.3
  %arrayidx37.4 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 %indvars.iv.next.3
  store i8 0, i8* %arrayidx37.4, align 1, !tbaa !4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.ph, 5
  %exitcond.not.4 = icmp eq i64 %indvars.iv.next.4, 8
  br i1 %exitcond.not.4, label %for.end40, label %for.body35.5, !llvm.loop !7

for.body35.5:                                     ; preds = %for.body35.4
  %arrayidx37.5 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 %indvars.iv.next.4
  store i8 0, i8* %arrayidx37.5, align 1, !tbaa !4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.ph, 6
  %exitcond.not.5 = icmp eq i64 %indvars.iv.next.5, 8
  br i1 %exitcond.not.5, label %for.end40, label %for.body35.6, !llvm.loop !7

for.body35.6:                                     ; preds = %for.body35.5
  %arrayidx37.6 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 %indvars.iv.next.5
  store i8 0, i8* %arrayidx37.6, align 1, !tbaa !4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.ph, 7
  %exitcond.not.6 = icmp eq i64 %indvars.iv.next.6, 8
  br i1 %exitcond.not.6, label %for.end40, label %for.body35.7, !llvm.loop !7

for.body35.7:                                     ; preds = %for.body35.6
  %arrayidx37.7 = getelementptr inbounds [8 x i8], [8 x i8]* %key, i64 0, i64 %indvars.iv.next.6
  store i8 0, i8* %arrayidx37.7, align 1, !tbaa !4
  br label %for.end40

for.end40:                                        ; preds = %for.body35, %for.body35.1, %for.body35.2, %for.body35.3, %for.body35.4, %for.body35.5, %for.body35.6, %for.body35.7, %for.end
  call void @DES_set_key_unchecked([8 x i8]* noundef nonnull %key, %struct.DES_ks* noundef nonnull %ks) #5
  %arrayidx41 = getelementptr inbounds [2 x i32], [2 x i32]* %out, i64 0, i64 0
  call void @fcrypt_body(i32* noundef nonnull %arrayidx41, %struct.DES_ks* noundef nonnull %ks, i32 noundef %shl, i32 noundef %shl22) #5
  %16 = load i32, i32* %arrayidx41, align 4, !tbaa !9
  %conv43 = trunc i32 %16 to i8
  %incdec.ptr44 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 1
  store i8 %conv43, i8* %3, align 1, !tbaa !4
  %shr = lshr i32 %16, 8
  %conv46 = trunc i32 %shr to i8
  %incdec.ptr47 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 2
  store i8 %conv46, i8* %incdec.ptr44, align 1, !tbaa !4
  %shr48 = lshr i32 %16, 16
  %conv50 = trunc i32 %shr48 to i8
  %incdec.ptr51 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 3
  store i8 %conv50, i8* %incdec.ptr47, align 1, !tbaa !4
  %shr52 = lshr i32 %16, 24
  %conv54 = trunc i32 %shr52 to i8
  %incdec.ptr55 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 4
  store i8 %conv54, i8* %incdec.ptr51, align 1, !tbaa !4
  %arrayidx56 = getelementptr inbounds [2 x i32], [2 x i32]* %out, i64 0, i64 1
  %17 = load i32, i32* %arrayidx56, align 4, !tbaa !9
  %conv58 = trunc i32 %17 to i8
  %incdec.ptr59 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 5
  store i8 %conv58, i8* %incdec.ptr55, align 1, !tbaa !4
  %shr60 = lshr i32 %17, 8
  %conv62 = trunc i32 %shr60 to i8
  %incdec.ptr63 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 6
  store i8 %conv62, i8* %incdec.ptr59, align 1, !tbaa !4
  %shr64 = lshr i32 %17, 16
  %conv66 = trunc i32 %shr64 to i8
  %incdec.ptr67 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 7
  store i8 %conv66, i8* %incdec.ptr63, align 1, !tbaa !4
  %shr68 = lshr i32 %17, 24
  %conv70 = trunc i32 %shr68 to i8
  store i8 %conv70, i8* %incdec.ptr67, align 1, !tbaa !4
  %arrayidx72 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 8
  store i8 0, i8* %arrayidx72, align 1, !tbaa !4
  br label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %for.cond77.preheader.for.cond77.preheader_crit_edge, %for.end40
  %18 = phi i8 [ %conv43, %for.end40 ], [ %.pre, %for.cond77.preheader.for.cond77.preheader_crit_edge ]
  %indvars.iv189 = phi i64 [ 2, %for.end40 ], [ %indvars.iv.next190, %for.cond77.preheader.for.cond77.preheader_crit_edge ]
  %u.0185 = phi i8 [ -128, %for.end40 ], [ %u.2.5, %for.cond77.preheader.for.cond77.preheader_crit_edge ]
  %y.0183 = phi i32 [ 0, %for.end40 ], [ %y.2.5, %for.cond77.preheader.for.cond77.preheader_crit_edge ]
  %and88174 = and i8 %18, %u.0185
  %tobool89.not.not = icmp eq i8 %and88174, 0
  %19 = lshr i8 %u.0185, 1
  %tobool97.not = icmp ult i8 %u.0185, 2
  %inc99 = zext i1 %tobool97.not to i32
  %y.2 = add i32 %y.0183, %inc99
  %u.2 = select i1 %tobool97.not, i8 -128, i8 %19
  %shl82.1 = select i1 %tobool89.not.not, i64 0, i64 2
  %idxprom84.1 = zext i32 %y.2 to i64
  %arrayidx85.1 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 %idxprom84.1
  %20 = load i8, i8* %arrayidx85.1, align 1, !tbaa !4
  %and88174.1 = and i8 %20, %u.2
  %tobool89.not.1 = icmp ne i8 %and88174.1, 0
  %21 = zext i1 %tobool89.not.1 to i64
  %spec.select.1 = or i64 %shl82.1, %21
  %22 = lshr i8 %u.2, 1
  %tobool97.not.1 = icmp ult i8 %u.2, 2
  %inc99.1 = zext i1 %tobool97.not.1 to i32
  %y.2.1 = add i32 %y.2, %inc99.1
  %u.2.1 = select i1 %tobool97.not.1, i8 -128, i8 %22
  %idxprom84.2 = zext i32 %y.2.1 to i64
  %arrayidx85.2 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 %idxprom84.2
  %23 = load i8, i8* %arrayidx85.2, align 1, !tbaa !4
  %and88174.2 = and i8 %23, %u.2.1
  %tobool89.not.2.not = icmp eq i8 %and88174.2, 0
  %24 = lshr i8 %u.2.1, 1
  %tobool97.not.2 = icmp ult i8 %u.2.1, 2
  %inc99.2 = zext i1 %tobool97.not.2 to i32
  %y.2.2 = add i32 %y.2.1, %inc99.2
  %u.2.2 = select i1 %tobool97.not.2, i8 -128, i8 %24
  %25 = shl nuw nsw i64 %spec.select.1, 2
  %26 = select i1 %tobool89.not.2.not, i64 0, i64 2
  %shl82.3 = or i64 %25, %26
  %idxprom84.3 = zext i32 %y.2.2 to i64
  %arrayidx85.3 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 %idxprom84.3
  %27 = load i8, i8* %arrayidx85.3, align 1, !tbaa !4
  %and88174.3 = and i8 %27, %u.2.2
  %tobool89.not.3 = icmp ne i8 %and88174.3, 0
  %28 = zext i1 %tobool89.not.3 to i64
  %spec.select.3 = or i64 %shl82.3, %28
  %29 = lshr i8 %u.2.2, 1
  %tobool97.not.3 = icmp ult i8 %u.2.2, 2
  %inc99.3 = zext i1 %tobool97.not.3 to i32
  %y.2.3 = add i32 %y.2.2, %inc99.3
  %u.2.3 = select i1 %tobool97.not.3, i8 -128, i8 %29
  %idxprom84.4 = zext i32 %y.2.3 to i64
  %arrayidx85.4 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 %idxprom84.4
  %30 = load i8, i8* %arrayidx85.4, align 1, !tbaa !4
  %and88174.4 = and i8 %30, %u.2.3
  %tobool89.not.4.not = icmp eq i8 %and88174.4, 0
  %31 = lshr i8 %u.2.3, 1
  %tobool97.not.4 = icmp ult i8 %u.2.3, 2
  %inc99.4 = zext i1 %tobool97.not.4 to i32
  %y.2.4 = add i32 %y.2.3, %inc99.4
  %u.2.4 = select i1 %tobool97.not.4, i8 -128, i8 %31
  %32 = shl nuw nsw i64 %spec.select.3, 2
  %33 = select i1 %tobool89.not.4.not, i64 0, i64 2
  %idxprom84.5 = zext i32 %y.2.4 to i64
  %arrayidx85.5 = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 %idxprom84.5
  %34 = load i8, i8* %arrayidx85.5, align 1, !tbaa !4
  %and88174.5 = and i8 %34, %u.2.4
  %tobool89.not.5 = icmp ne i8 %and88174.5, 0
  %35 = zext i1 %tobool89.not.5 to i64
  %tobool97.not.5 = icmp ult i8 %u.2.4, 2
  %inc99.5 = zext i1 %tobool97.not.5 to i32
  %y.2.5 = add i32 %y.2.4, %inc99.5
  %shl82.5.masked = or i64 %32, %33
  %idxprom104 = or i64 %shl82.5.masked, %35
  %arrayidx105 = getelementptr inbounds [64 x i8], [64 x i8]* @cov_2char, i64 0, i64 %idxprom104
  %36 = load i8, i8* %arrayidx105, align 1, !tbaa !4
  %arrayidx107 = getelementptr inbounds i8, i8* %ret, i64 %indvars.iv189
  store i8 %36, i8* %arrayidx107, align 1, !tbaa !4
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1
  %exitcond191.not = icmp eq i64 %indvars.iv.next190, 13
  br i1 %exitcond191.not, label %for.end110, label %for.cond77.preheader.for.cond77.preheader_crit_edge, !llvm.loop !11

for.cond77.preheader.for.cond77.preheader_crit_edge: ; preds = %for.cond77.preheader
  %37 = lshr i8 %u.2.4, 1
  %u.2.5 = select i1 %tobool97.not.5, i8 -128, i8 %37
  %idxprom84.phi.trans.insert = zext i32 %y.2.5 to i64
  %arrayidx85.phi.trans.insert = getelementptr inbounds [9 x i8], [9 x i8]* %bb, i64 0, i64 %idxprom84.phi.trans.insert
  %.pre = load i8, i8* %arrayidx85.phi.trans.insert, align 1, !tbaa !4
  br label %for.cond77.preheader

for.end110:                                       ; preds = %for.cond77.preheader
  %arrayidx111 = getelementptr inbounds i8, i8* %ret, i64 13
  store i8 0, i8* %arrayidx111, align 1, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %for.end110
  %retval.0 = phi i8* [ %ret, %for.end110 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @DES_set_key_unchecked([8 x i8]* noundef, %struct.DES_ks* noundef) local_unnamed_addr #2

declare void @fcrypt_body(i32* noundef, %struct.DES_ks* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = distinct !{!11, !8}
