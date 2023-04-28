; ModuleID = 'crypto/bn/bn_shift.c'
source_filename = "crypto/bn/bn_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"crypto/bn/bn_shift.c\00", align 1
@__func__.BN_lshift = private unnamed_addr constant [10 x i8] c"BN_lshift\00", align 1
@__func__.BN_rshift = private unnamed_addr constant [10 x i8] c"BN_rshift\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_lshift1(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef readonly %a) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %r, %a
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !4
  %neg1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 %0, i32* %neg1, align 8, !tbaa !4
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %1 = load i32, i32* %top, align 8, !tbaa !10
  %add = add nsw i32 %1, 1
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %add) #4
  %cmp2 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %2 = load i32, i32* %top, align 8, !tbaa !10
  %top5 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 %2, i32* %top5, align 8, !tbaa !10
  br label %if.end12

if.else:                                          ; preds = %entry
  %top6 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  %3 = load i32, i32* %top6, align 8, !tbaa !10
  %add7 = add nsw i32 %3, 1
  %call8 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %add7) #4
  %cmp9 = icmp eq %struct.bignum_st* %call8, null
  br i1 %cmp9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.else, %if.end
  %d13 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %4 = load i64*, i64** %d13, align 8, !tbaa !11
  %top14 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %5 = load i32, i32* %top14, align 8, !tbaa !10
  %cmp1547 = icmp sgt i32 %5, 0
  br i1 %cmp1547, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end12
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %6 = load i64*, i64** %d, align 8, !tbaa !11
  %7 = add i32 %5, -1
  %xtraiter = and i32 %5, 3
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i32 %5, -4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %c.050 = phi i64 [ 0, %for.body.preheader.new ], [ %shr.3, %for.body ]
  %rp.049 = phi i64* [ %4, %for.body.preheader.new ], [ %incdec.ptr16.3, %for.body ]
  %ap.048 = phi i64* [ %6, %for.body.preheader.new ], [ %incdec.ptr.3, %for.body ]
  %niter = phi i32 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.048, i64 1
  %9 = load i64, i64* %ap.048, align 8, !tbaa !12
  %shl = shl i64 %9, 1
  %or = or i64 %shl, %c.050
  %incdec.ptr16 = getelementptr inbounds i64, i64* %rp.049, i64 1
  store i64 %or, i64* %rp.049, align 8, !tbaa !12
  %incdec.ptr.1 = getelementptr inbounds i64, i64* %ap.048, i64 2
  %10 = load i64, i64* %incdec.ptr, align 8, !tbaa !12
  %or.1 = call i64 @llvm.fshl.i64(i64 %10, i64 %9, i64 1)
  %incdec.ptr16.1 = getelementptr inbounds i64, i64* %rp.049, i64 2
  store i64 %or.1, i64* %incdec.ptr16, align 8, !tbaa !12
  %incdec.ptr.2 = getelementptr inbounds i64, i64* %ap.048, i64 3
  %11 = load i64, i64* %incdec.ptr.1, align 8, !tbaa !12
  %or.2 = call i64 @llvm.fshl.i64(i64 %11, i64 %10, i64 1)
  %incdec.ptr16.2 = getelementptr inbounds i64, i64* %rp.049, i64 3
  store i64 %or.2, i64* %incdec.ptr16.1, align 8, !tbaa !12
  %incdec.ptr.3 = getelementptr inbounds i64, i64* %ap.048, i64 4
  %12 = load i64, i64* %incdec.ptr.2, align 8, !tbaa !12
  %or.3 = call i64 @llvm.fshl.i64(i64 %12, i64 %11, i64 1)
  %incdec.ptr16.3 = getelementptr inbounds i64, i64* %rp.049, i64 4
  store i64 %or.3, i64* %incdec.ptr16.2, align 8, !tbaa !12
  %shr.3 = lshr i64 %12, 63
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !14

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %incdec.ptr16.lcssa.ph = phi i64* [ undef, %for.body.preheader ], [ %incdec.ptr16.3, %for.body ]
  %shr.lcssa.ph = phi i64 [ undef, %for.body.preheader ], [ %shr.3, %for.body ]
  %c.050.unr = phi i64 [ 0, %for.body.preheader ], [ %shr.3, %for.body ]
  %rp.049.unr = phi i64* [ %4, %for.body.preheader ], [ %incdec.ptr16.3, %for.body ]
  %ap.048.unr = phi i64* [ %6, %for.body.preheader ], [ %incdec.ptr.3, %for.body ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil
  %c.050.epil = phi i64 [ %shr.epil, %for.body.epil ], [ %c.050.unr, %for.end.loopexit.unr-lcssa ]
  %rp.049.epil = phi i64* [ %incdec.ptr16.epil, %for.body.epil ], [ %rp.049.unr, %for.end.loopexit.unr-lcssa ]
  %ap.048.epil = phi i64* [ %incdec.ptr.epil, %for.body.epil ], [ %ap.048.unr, %for.end.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %for.body.epil ], [ 0, %for.end.loopexit.unr-lcssa ]
  %incdec.ptr.epil = getelementptr inbounds i64, i64* %ap.048.epil, i64 1
  %13 = load i64, i64* %ap.048.epil, align 8, !tbaa !12
  %shl.epil = shl i64 %13, 1
  %or.epil = or i64 %shl.epil, %c.050.epil
  %incdec.ptr16.epil = getelementptr inbounds i64, i64* %rp.049.epil, i64 1
  store i64 %or.epil, i64* %rp.049.epil, align 8, !tbaa !12
  %shr.epil = lshr i64 %13, 63
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !16

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %if.end12
  %rp.0.lcssa = phi i64* [ %4, %if.end12 ], [ %incdec.ptr16.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %incdec.ptr16.epil, %for.body.epil ]
  %c.0.lcssa = phi i64 [ 0, %if.end12 ], [ %shr.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %shr.epil, %for.body.epil ]
  store i64 %c.0.lcssa, i64* %rp.0.lcssa, align 8, !tbaa !12
  %top17 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  %14 = load i32, i32* %top17, align 8, !tbaa !10
  %15 = trunc i64 %c.0.lcssa to i32
  %conv19 = add i32 %14, %15
  store i32 %conv19, i32* %top17, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_rshift1(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %a) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !10
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !11
  %cmp.not = icmp eq %struct.bignum_st* %a, %r
  br i1 %cmp.not, label %if.end7, label %if.then1

if.then1:                                         ; preds = %if.end
  %call2 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %0) #4
  %cmp3 = icmp eq %struct.bignum_st* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then1
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %2 = load i32, i32* %neg, align 8, !tbaa !4
  %neg6 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 %2, i32* %neg6, align 8, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.end
  %d8 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %3 = load i64*, i64** %d8, align 8, !tbaa !11
  %top9 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  %dec = add nsw i32 %0, -1
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !12
  %shr = lshr i64 %4, 1
  %arrayidx11 = getelementptr inbounds i64, i64* %3, i64 %idxprom
  store i64 %shr, i64* %arrayidx11, align 8, !tbaa !12
  %cmp12 = icmp eq i64 %4, 1
  %conv.neg = sext i1 %cmp12 to i32
  %sub = add i32 %0, %conv.neg
  store i32 %sub, i32* %top9, align 8, !tbaa !10
  %cmp1461 = icmp sgt i32 %0, 1
  br i1 %cmp1461, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %if.end7
  %5 = zext i32 %dec to i64
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %indvars.iv = phi i64 [ %5, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  %c.0.in62 = phi i64 [ %4, %while.body.preheader ], [ %7, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %6 = and i64 %indvars.iv.next, 4294967295
  %arrayidx18 = getelementptr inbounds i64, i64* %1, i64 %6
  %7 = load i64, i64* %arrayidx18, align 8, !tbaa !12
  %or = tail call i64 @llvm.fshl.i64(i64 %c.0.in62, i64 %7, i64 63)
  %arrayidx21 = getelementptr inbounds i64, i64* %3, i64 %6
  store i64 %or, i64* %arrayidx21, align 8, !tbaa !12
  %cmp14 = icmp ugt i64 %indvars.iv, 1
  br i1 %cmp14, label %while.body, label %while.end, !llvm.loop !18

while.end:                                        ; preds = %while.body, %if.end7
  %tobool24.not = icmp eq i32 %sub, 0
  br i1 %tobool24.not, label %if.then25, label %cleanup

if.then25:                                        ; preds = %while.end
  %neg26 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 0, i32* %neg26, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then25, %if.then1, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then1 ], [ 1, %if.then25 ], [ 1, %while.end ]
  ret i32 %retval.0
}

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_lshift(%struct.bignum_st* noundef %r, %struct.bignum_st* nocapture noundef readonly %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %n, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.BN_lshift, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 119, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @bn_lshift_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32 noundef %n) #5
  tail call void @bn_correct_top(%struct.bignum_st* noundef %r) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @bn_lshift_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* nocapture noundef readonly %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %div = sdiv i32 %n, 64
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !10
  %add = add nsw i32 %div, 1
  %add1 = add i32 %add, %0
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %add1) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %top, align 8, !tbaa !10
  %cmp3.not = icmp eq i32 %1, 0
  br i1 %cmp3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %rem = and i32 %n, 63
  %sub = sub i32 0, %n
  %rem5 = and i32 %sub, 63
  %conv = zext i32 %rem5 to i64
  %sub6 = sub nsw i64 0, %conv
  %shr = lshr i64 %sub6, 8
  %or = or i64 %shr, %sub6
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !11
  %d7 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %3 = load i64*, i64** %d7, align 8, !tbaa !11
  %idxprom = sext i32 %div to i64
  %arrayidx8 = getelementptr inbounds i64, i64* %3, i64 %idxprom
  %sub10 = add nsw i32 %1, -1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds i64, i64* %2, i64 %idxprom11
  %4 = load i64, i64* %arrayidx12, align 8, !tbaa !12
  %shr13 = lshr i64 %4, %conv
  %and = and i64 %shr13, %or
  %idxprom15 = sext i32 %1 to i64
  %arrayidx16 = getelementptr inbounds i64, i64* %arrayidx8, i64 %idxprom15
  store i64 %and, i64* %arrayidx16, align 8, !tbaa !12
  %cmp19108 = icmp sgt i32 %1, 1
  %sh_prom21 = zext i32 %rem to i64
  br i1 %cmp19108, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then4
  %5 = zext i32 %1 to i64
  %6 = add nuw nsw i64 %5, 1
  %umin126 = call i64 @llvm.umin.i64(i64 %5, i64 2)
  %7 = sub nsw i64 %6, %umin126
  %min.iters.check = icmp ult i64 %7, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %for.body.lr.ph
  %umin = call i64 @llvm.umin.i64(i64 %5, i64 2)
  %8 = sub nsw i64 %5, %umin
  %9 = add i32 %1, -1
  %10 = trunc i64 %8 to i32
  %11 = icmp ult i32 %9, %10
  %12 = icmp ugt i64 %8, 4294967295
  %13 = or i1 %11, %12
  %14 = add i32 %1, -2
  %15 = trunc i64 %8 to i32
  %16 = icmp ult i32 %14, %15
  %17 = icmp ugt i64 %8, 4294967295
  %18 = or i1 %16, %17
  %19 = or i1 %13, %18
  br i1 %19, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %umin118 = call i64 @llvm.umin.i64(i64 %5, i64 2)
  %20 = add nsw i64 %umin118, %idxprom
  %21 = add i32 %1, -1
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = sub nsw i64 %23, %5
  %scevgep = getelementptr i64, i64* %3, i64 %24
  %25 = add nsw i64 %idxprom, %22
  %26 = add nsw i64 %25, 1
  %scevgep120 = getelementptr i64, i64* %3, i64 %26
  %27 = add i32 %1, -2
  %28 = zext i32 %27 to i64
  %29 = add nuw nsw i64 %umin118, %28
  %30 = sub nsw i64 %29, %5
  %scevgep122 = getelementptr i64, i64* %2, i64 %30
  %31 = add nuw nsw i64 %28, 1
  %scevgep124 = getelementptr i64, i64* %2, i64 %31
  %bound0 = icmp ult i64* %scevgep, %scevgep124
  %bound1 = icmp ult i64* %scevgep122, %scevgep120
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %7, -4
  %ind.end = sub nsw i64 %5, %n.vec
  %vector.recur.init = insertelement <2 x i64> poison, i64 %4, i64 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %sh_prom21, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert129 = insertelement <2 x i64> poison, i64 %sh_prom21, i64 0
  %broadcast.splat130 = shufflevector <2 x i64> %broadcast.splatinsert129, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <2 x i64> poison, i64 %conv, i64 0
  %broadcast.splat132 = shufflevector <2 x i64> %broadcast.splatinsert131, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <2 x i64> poison, i64 %conv, i64 0
  %broadcast.splat134 = shufflevector <2 x i64> %broadcast.splatinsert133, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <2 x i64> poison, i64 %or, i64 0
  %broadcast.splat136 = shufflevector <2 x i64> %broadcast.splatinsert135, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <2 x i64> poison, i64 %or, i64 0
  %broadcast.splat138 = shufflevector <2 x i64> %broadcast.splatinsert137, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %reverse128, %vector.body ]
  %offset.idx = sub i64 %5, %index
  %32 = add i64 %offset.idx, 4294967295
  %33 = add nuw i64 %offset.idx, 4294967294
  %34 = and i64 %33, 4294967295
  %35 = getelementptr inbounds i64, i64* %2, i64 %34
  %36 = getelementptr inbounds i64, i64* %35, i64 -1
  %37 = bitcast i64* %36 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %37, align 8, !tbaa !12, !alias.scope !19
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %38 = getelementptr inbounds i64, i64* %35, i64 -2
  %39 = getelementptr inbounds i64, i64* %38, i64 -1
  %40 = bitcast i64* %39 to <2 x i64>*
  %wide.load127 = load <2 x i64>, <2 x i64>* %40, align 8, !tbaa !12, !alias.scope !19
  %reverse128 = shufflevector <2 x i64> %wide.load127, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %41 = shufflevector <2 x i64> %vector.recur, <2 x i64> %reverse, <2 x i32> <i32 1, i32 2>
  %42 = shufflevector <2 x i64> %reverse, <2 x i64> %reverse128, <2 x i32> <i32 1, i32 2>
  %43 = shl <2 x i64> %41, %broadcast.splat
  %44 = shl <2 x i64> %42, %broadcast.splat130
  %45 = lshr <2 x i64> %reverse, %broadcast.splat132
  %46 = lshr <2 x i64> %reverse128, %broadcast.splat134
  %47 = and <2 x i64> %45, %broadcast.splat136
  %48 = and <2 x i64> %46, %broadcast.splat138
  %49 = or <2 x i64> %47, %43
  %50 = or <2 x i64> %48, %44
  %51 = and i64 %32, 4294967295
  %52 = getelementptr inbounds i64, i64* %arrayidx8, i64 %51
  %reverse139 = shufflevector <2 x i64> %49, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %53 = getelementptr inbounds i64, i64* %52, i64 -1
  %54 = bitcast i64* %53 to <2 x i64>*
  store <2 x i64> %reverse139, <2 x i64>* %54, align 8, !tbaa !12, !alias.scope !22, !noalias !19
  %reverse140 = shufflevector <2 x i64> %50, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %55 = getelementptr inbounds i64, i64* %52, i64 -2
  %56 = getelementptr inbounds i64, i64* %55, i64 -1
  %57 = bitcast i64* %56 to <2 x i64>*
  store <2 x i64> %reverse140, <2 x i64>* %57, align 8, !tbaa !12, !alias.scope !22, !noalias !19
  %index.next = add nuw i64 %index, 4
  %58 = icmp eq i64 %index.next, %n.vec
  br i1 %58, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %7, %n.vec
  %vector.recur.extract = extractelement <2 x i64> %wide.load127, i64 0
  %59 = extractelement <2 x i64> %wide.load127, i64 0
  br i1 %cmp.n, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %vector.scevcheck, %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %ind.end, %middle.block ], [ %5, %for.body.lr.ph ], [ %5, %vector.scevcheck ], [ %5, %vector.memcheck ]
  %scalar.recur.ph = phi i64 [ %vector.recur.extract, %middle.block ], [ %4, %for.body.lr.ph ], [ %4, %vector.scevcheck ], [ %4, %vector.memcheck ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %scalar.recur = phi i64 [ %61, %for.body ], [ %scalar.recur.ph, %for.body.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %shl = shl i64 %scalar.recur, %sh_prom21
  %sub22 = add nuw i64 %indvars.iv, 4294967294
  %60 = and i64 %sub22, 4294967295
  %arrayidx24 = getelementptr inbounds i64, i64* %2, i64 %60
  %61 = load i64, i64* %arrayidx24, align 8, !tbaa !12
  %shr26 = lshr i64 %61, %conv
  %and27 = and i64 %shr26, %or
  %or28 = or i64 %and27, %shl
  %idxprom30106 = and i64 %indvars.iv.next, 4294967295
  %arrayidx31 = getelementptr inbounds i64, i64* %arrayidx8, i64 %idxprom30106
  store i64 %or28, i64* %arrayidx31, align 8, !tbaa !12
  %cmp19 = icmp ugt i64 %indvars.iv, 2
  br i1 %cmp19, label %for.body, label %for.end, !llvm.loop !26

for.end:                                          ; preds = %for.body, %middle.block, %if.then4
  %l.0.lcssa = phi i64 [ %4, %if.then4 ], [ %59, %middle.block ], [ %61, %for.body ]
  %shl33 = shl i64 %l.0.lcssa, %sh_prom21
  store i64 %shl33, i64* %arrayidx8, align 8, !tbaa !12
  br label %if.end39

if.else:                                          ; preds = %if.end
  %d36 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %62 = load i64*, i64** %d36, align 8, !tbaa !11
  %idxprom37 = sext i32 %div to i64
  %arrayidx38 = getelementptr inbounds i64, i64* %62, i64 %idxprom37
  store i64 0, i64* %arrayidx38, align 8, !tbaa !12
  br label %if.end39

if.end39:                                         ; preds = %if.else, %for.end
  %.in = phi i64* [ %62, %if.else ], [ %3, %for.end ]
  %n.off = add i32 %n, 63
  %63 = icmp ult i32 %n.off, 127
  br i1 %63, label %if.end46, label %if.then42

if.then42:                                        ; preds = %if.end39
  %64 = bitcast i64* %.in to i8*
  %conv44 = sext i32 %div to i64
  %mul = shl nsw i64 %conv44, 3
  %call45 = tail call i8* @memset(i8* noundef %64, i32 noundef 0, i64 noundef %mul) #4
  %.pre = load i32, i32* %top, align 8, !tbaa !10
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end39
  %65 = phi i32 [ %.pre, %if.then42 ], [ %1, %if.end39 ]
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %66 = load i32, i32* %neg, align 8, !tbaa !4
  %neg47 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 %66, i32* %neg47, align 8, !tbaa !4
  %add50 = add i32 %add, %65
  %top51 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 %add50, i32* %top51, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end46
  %retval.0 = phi i32 [ 1, %if.end46 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_rshift(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %n, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.BN_rshift, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 119, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @bn_rshift_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32 noundef %n) #5
  tail call void @bn_correct_top(%struct.bignum_st* noundef %r) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @bn_rshift_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef readonly %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %div = sdiv i32 %n, 64
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top1, align 8, !tbaa !10
  %cmp.not = icmp sgt i32 %0, %div
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i32 %n, 63
  %sub = sub i32 0, %n
  %rem2 = and i32 %sub, 63
  %conv = zext i32 %rem2 to i64
  %sub3 = sub nsw i64 0, %conv
  %shr = lshr i64 %sub3, 8
  %or = or i64 %shr, %sub3
  %sub5 = sub nsw i32 %0, %div
  %cmp6.not = icmp eq %struct.bignum_st* %r, %a
  br i1 %cmp6.not, label %if.end11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %sub5) #4
  %cmp8 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !11
  %d12 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d12, align 8, !tbaa !11
  %idxprom = sext i32 %div to i64
  %arrayidx13 = getelementptr inbounds i64, i64* %2, i64 %idxprom
  %3 = load i64, i64* %arrayidx13, align 8, !tbaa !12
  %cmp1680 = icmp sgt i32 %sub5, 1
  br i1 %cmp1680, label %for.body.lr.ph, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  %.pre = zext i32 %rem to i64
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %sub15 = add nsw i32 %sub5, -1
  %sh_prom = zext i32 %rem to i64
  %wide.trip.count = zext i32 %sub15 to i64
  %min.iters.check = icmp ult i32 %sub15, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.lr.ph
  %scevgep = getelementptr i64, i64* %1, i64 %wide.trip.count
  %4 = add nsw i64 %idxprom, 1
  %scevgep86 = getelementptr i64, i64* %2, i64 %4
  %5 = add nsw i64 %idxprom, %wide.trip.count
  %6 = add nsw i64 %5, 1
  %scevgep88 = getelementptr i64, i64* %2, i64 %6
  %bound0 = icmp ult i64* %1, %scevgep88
  %bound1 = icmp ult i64* %scevgep86, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292
  %vector.recur.init = insertelement <2 x i64> poison, i64 %3, i64 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %sh_prom, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <2 x i64> poison, i64 %sh_prom, i64 0
  %broadcast.splat92 = shufflevector <2 x i64> %broadcast.splatinsert91, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <2 x i64> poison, i64 %conv, i64 0
  %broadcast.splat94 = shufflevector <2 x i64> %broadcast.splatinsert93, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <2 x i64> poison, i64 %conv, i64 0
  %broadcast.splat96 = shufflevector <2 x i64> %broadcast.splatinsert95, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <2 x i64> poison, i64 %or, i64 0
  %broadcast.splat98 = shufflevector <2 x i64> %broadcast.splatinsert97, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert99 = insertelement <2 x i64> poison, i64 %or, i64 0
  %broadcast.splat100 = shufflevector <2 x i64> %broadcast.splatinsert99, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load90, %vector.body ]
  %7 = or i64 %index, 1
  %8 = getelementptr inbounds i64, i64* %arrayidx13, i64 %7
  %9 = bitcast i64* %8 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %9, align 8, !tbaa !12, !alias.scope !27
  %10 = getelementptr inbounds i64, i64* %8, i64 2
  %11 = bitcast i64* %10 to <2 x i64>*
  %wide.load90 = load <2 x i64>, <2 x i64>* %11, align 8, !tbaa !12, !alias.scope !27
  %12 = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %13 = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load90, <2 x i32> <i32 1, i32 2>
  %14 = lshr <2 x i64> %12, %broadcast.splat
  %15 = lshr <2 x i64> %13, %broadcast.splat92
  %16 = shl <2 x i64> %wide.load, %broadcast.splat94
  %17 = shl <2 x i64> %wide.load90, %broadcast.splat96
  %18 = and <2 x i64> %16, %broadcast.splat98
  %19 = and <2 x i64> %17, %broadcast.splat100
  %20 = or <2 x i64> %18, %14
  %21 = or <2 x i64> %19, %15
  %22 = getelementptr inbounds i64, i64* %1, i64 %index
  %23 = bitcast i64* %22 to <2 x i64>*
  store <2 x i64> %20, <2 x i64>* %23, align 8, !tbaa !12, !alias.scope !30, !noalias !27
  %24 = getelementptr inbounds i64, i64* %22, i64 2
  %25 = bitcast i64* %24 to <2 x i64>*
  store <2 x i64> %21, <2 x i64>* %25, align 8, !tbaa !12, !alias.scope !30, !noalias !27
  %index.next = add nuw i64 %index, 4
  %26 = icmp eq i64 %index.next, %n.vec
  br i1 %26, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %vector.recur.extract = extractelement <2 x i64> %wide.load90, i64 1
  %27 = extractelement <2 x i64> %wide.load90, i64 1
  br i1 %cmp.n, label %for.end.loopexit, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %for.body.lr.ph ], [ 0, %vector.memcheck ]
  %scalar.recur.ph = phi i64 [ %vector.recur.extract, %middle.block ], [ %3, %for.body.lr.ph ], [ %3, %vector.memcheck ]
  %28 = xor i64 %indvars.iv.ph, -1
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader
  %indvars.iv.next.prol = or i64 %indvars.iv.ph, 1
  %arrayidx19.prol = getelementptr inbounds i64, i64* %arrayidx13, i64 %indvars.iv.next.prol
  %29 = load i64, i64* %arrayidx19.prol, align 8, !tbaa !12
  %shr20.prol = lshr i64 %scalar.recur.ph, %sh_prom
  %shl.prol = shl i64 %29, %conv
  %and.prol = and i64 %shl.prol, %or
  %or22.prol = or i64 %and.prol, %shr20.prol
  %arrayidx24.prol = getelementptr inbounds i64, i64* %1, i64 %indvars.iv.ph
  store i64 %or22.prol, i64* %arrayidx24.prol, align 8, !tbaa !12
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %.lcssa101.unr = phi i64 [ undef, %for.body.preheader ], [ %29, %for.body.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %scalar.recur.unr = phi i64 [ %scalar.recur.ph, %for.body.preheader ], [ %29, %for.body.prol ]
  %30 = sub nsw i64 0, %wide.trip.count
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %for.end.loopexit, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %scalar.recur = phi i64 [ %33, %for.body ], [ %scalar.recur.unr, %for.body.prol.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx19 = getelementptr inbounds i64, i64* %arrayidx13, i64 %indvars.iv.next
  %32 = load i64, i64* %arrayidx19, align 8, !tbaa !12
  %shr20 = lshr i64 %scalar.recur, %sh_prom
  %shl = shl i64 %32, %conv
  %and = and i64 %shl, %or
  %or22 = or i64 %and, %shr20
  %arrayidx24 = getelementptr inbounds i64, i64* %1, i64 %indvars.iv
  store i64 %or22, i64* %arrayidx24, align 8, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx19.1 = getelementptr inbounds i64, i64* %arrayidx13, i64 %indvars.iv.next.1
  %33 = load i64, i64* %arrayidx19.1, align 8, !tbaa !12
  %shr20.1 = lshr i64 %32, %sh_prom
  %shl.1 = shl i64 %33, %conv
  %and.1 = and i64 %shl.1, %or
  %or22.1 = or i64 %and.1, %shr20.1
  %arrayidx24.1 = getelementptr inbounds i64, i64* %1, i64 %indvars.iv.next
  store i64 %or22.1, i64* %arrayidx24.1, align 8, !tbaa !12
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %for.end.loopexit, label %for.body, !llvm.loop !33

for.end.loopexit:                                 ; preds = %for.body.prol.loopexit, %for.body, %middle.block
  %.lcssa = phi i64 [ %27, %middle.block ], [ %.lcssa101.unr, %for.body.prol.loopexit ], [ %33, %for.body ]
  %phi.cast = zext i32 %sub15 to i64
  br label %for.end

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %for.end.loopexit
  %sh_prom25.pre-phi = phi i64 [ %.pre, %if.end11.for.end_crit_edge ], [ %sh_prom, %for.end.loopexit ]
  %i.0.lcssa = phi i64 [ 0, %if.end11.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %l.0.lcssa = phi i64 [ %3, %if.end11.for.end_crit_edge ], [ %.lcssa, %for.end.loopexit ]
  %shr26 = lshr i64 %l.0.lcssa, %sh_prom25.pre-phi
  %arrayidx28 = getelementptr inbounds i64, i64* %1, i64 %i.0.lcssa
  store i64 %shr26, i64* %arrayidx28, align 8, !tbaa !12
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %34 = load i32, i32* %neg, align 8, !tbaa !4
  %neg29 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 %34, i32* %neg29, align 8, !tbaa !4
  %top30 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 %sub5, i32* %top30, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %for.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %for.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 16}
!5 = !{!"bignum_st", !6, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!5, !9, i64 8}
!11 = !{!5, !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !15}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !15, !25}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = distinct !{!26, !15, !25}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !15, !25}
!33 = distinct !{!33, !15, !25}
