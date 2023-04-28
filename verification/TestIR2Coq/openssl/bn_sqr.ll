; ModuleID = 'crypto/bn/bn_sqr.c'
source_filename = "crypto/bn/bn_sqr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque

; Function Attrs: noinline nounwind uwtable
define i32 @BN_sqr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @bn_sqr_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #4
  tail call void @bn_correct_top(%struct.bignum_st* noundef %r) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @bn_sqr_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef readonly %a, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %t = alloca [32 x i64], align 16
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 0, i32* %top1, align 8, !tbaa !4
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !10
  br label %cleanup61

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #5
  %cmp2.not = icmp eq %struct.bignum_st* %a, %r
  br i1 %cmp2.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #5
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi %struct.bignum_st* [ %call, %cond.false ], [ %r, %if.end ]
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #5
  %cmp4 = icmp eq %struct.bignum_st* %cond, null
  %cmp5 = icmp eq %struct.bignum_st* %call3, null
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp5
  br i1 %or.cond, label %err, label %if.end7

if.end7:                                          ; preds = %cond.end
  %mul = shl nuw nsw i32 %0, 1
  %call8 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %cond, i32 noundef %mul) #5
  %cmp9 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  switch i32 %0, label %if.else19 [
    i32 4, label %if.then13
    i32 8, label %if.then16
  ]

if.then13:                                        ; preds = %if.end11
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !11
  %d14 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d14, align 8, !tbaa !11
  tail call void @bn_sqr_comba4(i64* noundef %1, i64* noundef %2) #5
  br label %if.end51

if.then16:                                        ; preds = %if.end11
  %d17 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond, i64 0, i32 0
  %3 = load i64*, i64** %d17, align 8, !tbaa !11
  %d18 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %4 = load i64*, i64** %d18, align 8, !tbaa !11
  tail call void @bn_sqr_comba8(i64* noundef %3, i64* noundef %4) #5
  br label %if.end51

if.else19:                                        ; preds = %if.end11
  %cmp20 = icmp ult i32 %0, 16
  br i1 %cmp20, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.else19
  %5 = bitcast [32 x i64]* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #6
  %d22 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond, i64 0, i32 0
  %6 = load i64*, i64** %d22, align 8, !tbaa !11
  %d23 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %7 = load i64*, i64** %d23, align 8, !tbaa !11
  %arraydecay = getelementptr inbounds [32 x i64], [32 x i64]* %t, i64 0, i64 0
  call void @bn_sqr_normal(i64* noundef %6, i64* noundef %7, i32 noundef %0, i64* noundef nonnull %arraydecay) #4
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #6
  br label %if.end51

if.else24:                                        ; preds = %if.else19
  %conv119 = zext i32 %0 to i64
  %call25 = tail call i32 @BN_num_bits_word(i64 noundef %conv119) #5
  %sub = add nsw i32 %call25, -1
  %shl = shl nuw i32 1, %sub
  %cmp26 = icmp eq i32 %0, %shl
  br i1 %cmp26, label %if.then28, label %if.else38

if.then28:                                        ; preds = %if.else24
  %mul29 = shl nsw i32 %0, 2
  %call30 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call3, i32 noundef %mul29) #5
  %cmp31 = icmp eq %struct.bignum_st* %call30, null
  br i1 %cmp31, label %err, label %if.end34

if.end34:                                         ; preds = %if.then28
  %d35 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond, i64 0, i32 0
  %8 = load i64*, i64** %d35, align 8, !tbaa !11
  %d36 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %9 = load i64*, i64** %d36, align 8, !tbaa !11
  %d37 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call3, i64 0, i32 0
  %10 = load i64*, i64** %d37, align 8, !tbaa !11
  tail call void @bn_sqr_recursive(i64* noundef %8, i64* noundef %9, i32 noundef %0, i64* noundef %10) #4
  br label %if.end51

if.else38:                                        ; preds = %if.else24
  %call39 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call3, i32 noundef %mul) #5
  %cmp40 = icmp eq %struct.bignum_st* %call39, null
  br i1 %cmp40, label %err, label %if.end43

if.end43:                                         ; preds = %if.else38
  %d44 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond, i64 0, i32 0
  %11 = load i64*, i64** %d44, align 8, !tbaa !11
  %d45 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %12 = load i64*, i64** %d45, align 8, !tbaa !11
  %d46 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call3, i64 0, i32 0
  %13 = load i64*, i64** %d46, align 8, !tbaa !11
  tail call void @bn_sqr_normal(i64* noundef %11, i64* noundef %12, i32 noundef %0, i64* noundef %13) #4
  br label %if.end51

if.end51:                                         ; preds = %if.end34, %if.end43, %if.then16, %if.then21, %if.then13
  %neg52 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond, i64 0, i32 3
  store i32 0, i32* %neg52, align 8, !tbaa !10
  %top53 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %cond, i64 0, i32 1
  store i32 %mul, i32* %top53, align 8, !tbaa !4
  %cmp54.not = icmp eq %struct.bignum_st* %cond, %r
  br i1 %cmp54.not, label %if.end60, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end51
  %call56 = call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %cond) #5
  %cmp57 = icmp eq %struct.bignum_st* %call56, null
  br i1 %cmp57, label %err, label %if.end60

if.end60:                                         ; preds = %land.lhs.true, %if.end51
  br label %err

err:                                              ; preds = %if.then28, %if.else38, %land.lhs.true, %if.end7, %cond.end, %if.end60
  %ret.0 = phi i32 [ 0, %cond.end ], [ 0, %if.end7 ], [ 0, %land.lhs.true ], [ 1, %if.end60 ], [ 0, %if.else38 ], [ 0, %if.then28 ]
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #5
  br label %cleanup61

cleanup61:                                        ; preds = %err, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_sqr_comba4(i64* noundef, i64* noundef) local_unnamed_addr #2

declare void @bn_sqr_comba8(i64* noundef, i64* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @bn_sqr_normal(i64* noundef %r, i64* noundef %a, i32 noundef %n, i64* noundef %tmp) local_unnamed_addr #0 {
entry:
  %mul = shl nsw i32 %n, 1
  %sub = add nsw i32 %mul, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i64, i64* %r, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8, !tbaa !12
  store i64 0, i64* %r, align 8, !tbaa !12
  %incdec.ptr = getelementptr inbounds i64, i64* %r, i64 1
  %dec = add nsw i32 %n, -1
  %cmp = icmp sgt i32 %n, 1
  br i1 %cmp, label %if.end, label %for.end

if.end:                                           ; preds = %entry
  %incdec.ptr2 = getelementptr inbounds i64, i64* %a, i64 1
  %0 = load i64, i64* %a, align 8, !tbaa !12
  %call = tail call i64 @bn_mul_words(i64* noundef nonnull %incdec.ptr, i64* noundef nonnull %incdec.ptr2, i32 noundef %dec, i64 noundef %0) #5
  %idxprom454 = zext i32 %dec to i64
  %arrayidx5 = getelementptr inbounds i64, i64* %incdec.ptr, i64 %idxprom454
  store i64 %call, i64* %arrayidx5, align 8, !tbaa !12
  %cmp755.not = icmp eq i32 %n, 2
  br i1 %cmp755.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %add.ptr = getelementptr inbounds i64, i64* %r, i64 3
  %sub6 = add nsw i32 %n, -2
  %1 = zext i32 %n to i64
  %2 = add nsw i64 %1, -1
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %2, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %rp.159 = phi i64* [ %add.ptr, %for.body.preheader ], [ %add.ptr14, %for.body ]
  %ap.158 = phi i64* [ %incdec.ptr2, %for.body.preheader ], [ %incdec.ptr9, %for.body ]
  %i.057 = phi i32 [ %sub6, %for.body.preheader ], [ %dec15, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %incdec.ptr9 = getelementptr inbounds i64, i64* %ap.158, i64 1
  %3 = load i64, i64* %ap.158, align 8, !tbaa !12
  %4 = trunc i64 %indvars.iv.next to i32
  %call11 = tail call i64 @bn_mul_add_words(i64* noundef nonnull %rp.159, i64* noundef nonnull %incdec.ptr9, i32 noundef %4, i64 noundef %3) #5
  %arrayidx13 = getelementptr inbounds i64, i64* %rp.159, i64 %indvars.iv.next
  store i64 %call11, i64* %arrayidx13, align 8, !tbaa !12
  %add.ptr14 = getelementptr inbounds i64, i64* %rp.159, i64 2
  %dec15 = add nsw i32 %i.057, -1
  %cmp7 = icmp ugt i32 %i.057, 1
  br i1 %cmp7, label %for.body, label %for.end, !llvm.loop !14

for.end:                                          ; preds = %for.body, %entry, %if.end
  %call16 = tail call i64 @bn_add_words(i64* noundef nonnull %r, i64* noundef nonnull %r, i64* noundef nonnull %r, i32 noundef %mul) #5
  tail call void @bn_sqr_words(i64* noundef %tmp, i64* noundef %a, i32 noundef %n) #5
  %call17 = tail call i64 @bn_add_words(i64* noundef nonnull %r, i64* noundef nonnull %r, i64* noundef %tmp, i32 noundef %mul) #5
  ret void
}

declare i32 @BN_num_bits_word(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @bn_sqr_recursive(i64* noundef %r, i64* noundef %a, i32 noundef %n2, i64* noundef %t) local_unnamed_addr #0 {
entry:
  %div = sdiv i32 %n2, 2
  switch i32 %n2, label %if.end3 [
    i32 4, label %if.then
    i32 8, label %if.then2
  ]

if.then:                                          ; preds = %entry
  tail call void @bn_sqr_comba4(i64* noundef %r, i64* noundef %a) #5
  br label %cleanup

if.then2:                                         ; preds = %entry
  tail call void @bn_sqr_comba8(i64* noundef %r, i64* noundef %a) #5
  br label %cleanup

if.end3:                                          ; preds = %entry
  %cmp4 = icmp slt i32 %n2, 16
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @bn_sqr_normal(i64* noundef %r, i64* noundef %a, i32 noundef %n2, i64* noundef %t) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i64, i64* %a, i64 %idxprom
  %call = tail call i32 @bn_cmp_words(i64* noundef %a, i64* noundef %arrayidx, i32 noundef %div) #5
  %cmp7 = icmp sgt i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.end6
  %call11 = tail call i64 @bn_sub_words(i64* noundef %t, i64* noundef %a, i64* noundef %arrayidx, i32 noundef %div) #5
  br label %if.then23

if.else12:                                        ; preds = %if.end6
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %if.then14, label %if.else26

if.then14:                                        ; preds = %if.else12
  %call17 = tail call i64 @bn_sub_words(i64* noundef %t, i64* noundef %arrayidx, i64* noundef %a, i32 noundef %div) #5
  br label %if.then23

if.then23:                                        ; preds = %if.then14, %if.then8
  %mul159 = shl nuw nsw i32 %n2, 1
  %idxprom21160 = sext i32 %mul159 to i64
  %arrayidx22161 = getelementptr inbounds i64, i64* %t, i64 %idxprom21160
  %idxprom24164 = zext i32 %n2 to i64
  %arrayidx25 = getelementptr inbounds i64, i64* %t, i64 %idxprom24164
  tail call void @bn_sqr_recursive(i64* noundef nonnull %arrayidx25, i64* noundef %t, i32 noundef %div, i64* noundef nonnull %arrayidx22161) #4
  br label %if.end31

if.else26:                                        ; preds = %if.else12
  %mul = shl nuw nsw i32 %n2, 1
  %idxprom21 = sext i32 %mul to i64
  %arrayidx22 = getelementptr inbounds i64, i64* %t, i64 %idxprom21
  %idxprom27166 = zext i32 %n2 to i64
  %arrayidx28 = getelementptr inbounds i64, i64* %t, i64 %idxprom27166
  %0 = bitcast i64* %arrayidx28 to i8*
  %mul29 = shl nuw nsw i64 %idxprom27166, 3
  %call30 = tail call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef %mul29) #5
  br label %if.end31

if.end31:                                         ; preds = %if.else26, %if.then23
  %idxprom32165.pre-phi = phi i64 [ %idxprom27166, %if.else26 ], [ %idxprom24164, %if.then23 ]
  %arrayidx22162 = phi i64* [ %arrayidx22, %if.else26 ], [ %arrayidx22161, %if.then23 ]
  tail call void @bn_sqr_recursive(i64* noundef %r, i64* noundef %a, i32 noundef %div, i64* noundef %arrayidx22162) #4
  %arrayidx33 = getelementptr inbounds i64, i64* %r, i64 %idxprom32165.pre-phi
  tail call void @bn_sqr_recursive(i64* noundef nonnull %arrayidx33, i64* noundef %arrayidx, i32 noundef %div, i64* noundef %arrayidx22162) #4
  %call38 = tail call i64 @bn_add_words(i64* noundef %t, i64* noundef %r, i64* noundef nonnull %arrayidx33, i32 noundef %n2) #5
  %conv39 = trunc i64 %call38 to i32
  %arrayidx41 = getelementptr inbounds i64, i64* %t, i64 %idxprom32165.pre-phi
  %call44 = tail call i64 @bn_sub_words(i64* noundef nonnull %arrayidx41, i64* noundef %t, i64* noundef nonnull %arrayidx41, i32 noundef %n2) #5
  %conv45 = trunc i64 %call44 to i32
  %sub = sub nsw i32 %conv39, %conv45
  %arrayidx47 = getelementptr inbounds i64, i64* %r, i64 %idxprom
  %call52 = tail call i64 @bn_add_words(i64* noundef %arrayidx47, i64* noundef %arrayidx47, i64* noundef nonnull %arrayidx41, i32 noundef %n2) #5
  %conv53 = trunc i64 %call52 to i32
  %add = add nsw i32 %sub, %conv53
  %tobool54.not = icmp eq i32 %add, 0
  br i1 %tobool54.not, label %cleanup, label %if.then55

if.then55:                                        ; preds = %if.end31
  %add56 = add nsw i32 %div, %n2
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds i64, i64* %r, i64 %idxprom57
  %1 = load i64, i64* %arrayidx58, align 8, !tbaa !12
  %conv59 = sext i32 %add to i64
  %add60 = add i64 %1, %conv59
  store i64 %add60, i64* %arrayidx58, align 8, !tbaa !12
  %cmp62 = icmp ult i64 %add60, %conv59
  br i1 %cmp62, label %do.body, label %cleanup

do.body:                                          ; preds = %if.then55, %do.body
  %p.0 = phi i64* [ %incdec.ptr, %do.body ], [ %arrayidx58, %if.then55 ]
  %incdec.ptr = getelementptr inbounds i64, i64* %p.0, i64 1
  %2 = load i64, i64* %incdec.ptr, align 8, !tbaa !12
  %add65 = add i64 %2, 1
  store i64 %add65, i64* %incdec.ptr, align 8, !tbaa !12
  %cmp67 = icmp eq i64 %add65, 0
  br i1 %cmp67, label %do.body, label %cleanup, !llvm.loop !16

cleanup:                                          ; preds = %do.body, %if.end31, %if.then55, %if.then5, %if.then2, %if.then
  ret void
}

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i64 @bn_mul_words(i64* noundef, i64* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @bn_mul_add_words(i64* noundef, i64* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @bn_add_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_sqr_words(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @bn_cmp_words(i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

declare i64 @bn_sub_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"bignum_st", !6, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !9, i64 16}
!11 = !{!5, !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
