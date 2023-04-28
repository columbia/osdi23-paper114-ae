; ModuleID = 'crypto/bn/bn_add.c'
source_filename = "crypto/bn/bn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"crypto/bn/bn_add.c\00", align 1
@__func__.BN_usub = private unnamed_addr constant [8 x i8] c"BN_usub\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_add(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b) local_unnamed_addr #0 {
entry:
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !4
  %neg1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 3
  %1 = load i32, i32* %neg1, align 8, !tbaa !4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @BN_uadd(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %b) #2
  br label %if.end15

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %b) #3
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  %2 = load i32, i32* %neg, align 8, !tbaa !4
  %call7 = tail call i32 @BN_usub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %b) #2
  br label %if.end15

if.else8:                                         ; preds = %if.else
  %cmp9 = icmp slt i32 %call3, 0
  br i1 %cmp9, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.else8
  %3 = load i32, i32* %neg1, align 8, !tbaa !4
  %call12 = tail call i32 @BN_usub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %b, %struct.bignum_st* noundef nonnull %a) #2
  br label %if.end15

if.else13:                                        ; preds = %if.else8
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #3
  br label %if.end15

if.end15:                                         ; preds = %if.then5, %if.else13, %if.then10, %if.then
  %r_neg.0 = phi i32 [ %0, %if.then ], [ %2, %if.then5 ], [ %3, %if.then10 ], [ 0, %if.else13 ]
  %ret.0 = phi i32 [ %call, %if.then ], [ %call7, %if.then5 ], [ %call12, %if.then10 ], [ 1, %if.else13 ]
  %neg16 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 %r_neg.0, i32* %neg16, align 8, !tbaa !4
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_uadd(%struct.bignum_st* noundef %r, %struct.bignum_st* nocapture noundef readonly %a, %struct.bignum_st* nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !10
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %1 = load i32, i32* %top1, align 8, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  %spec.select = select i1 %cmp, %struct.bignum_st* %a, %struct.bignum_st* %b
  %spec.select66 = select i1 %cmp, %struct.bignum_st* %b, %struct.bignum_st* %a
  %top2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %spec.select66, i64 0, i32 1
  %2 = load i32, i32* %top2, align 8, !tbaa !10
  %top3 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %spec.select, i64 0, i32 1
  %3 = load i32, i32* %top3, align 8, !tbaa !10
  %add = add nsw i32 %2, 1
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %add) #3
  %cmp4 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %entry
  %sub = sub i32 %2, %3
  %top7 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 %2, i32* %top7, align 8, !tbaa !10
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %spec.select66, i64 0, i32 0
  %4 = load i64*, i64** %d, align 8, !tbaa !11
  %d8 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %spec.select, i64 0, i32 0
  %5 = load i64*, i64** %d8, align 8, !tbaa !11
  %d9 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %6 = load i64*, i64** %d9, align 8, !tbaa !11
  %call10 = tail call i64 @bn_add_words(i64* noundef %6, i64* noundef %4, i64* noundef %5, i32 noundef %3) #3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i64, i64* %6, i64 %idx.ext
  %tobool.not67 = icmp eq i32 %sub, 0
  br i1 %tobool.not67, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end6
  %add.ptr12 = getelementptr inbounds i64, i64* %4, i64 %idx.ext
  %.neg = add i32 %3, 1
  %xtraiter = and i32 %sub, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.prol.loopexit, label %while.body.prol

while.body.prol:                                  ; preds = %while.body.preheader
  %dec.prol = add nsw i32 %sub, -1
  %incdec.ptr.prol = getelementptr inbounds i64, i64* %add.ptr12, i64 1
  %7 = load i64, i64* %add.ptr12, align 8, !tbaa !12
  %add13.prol = add i64 %7, %call10
  %incdec.ptr14.prol = getelementptr inbounds i64, i64* %add.ptr, i64 1
  store i64 %add13.prol, i64* %add.ptr, align 8, !tbaa !12
  %cmp15.prol = icmp eq i64 %add13.prol, 0
  %8 = zext i1 %cmp15.prol to i64
  %and17.prol = and i64 %call10, %8
  br label %while.body.prol.loopexit

while.body.prol.loopexit:                         ; preds = %while.body.prol, %while.body.preheader
  %incdec.ptr14.lcssa.unr = phi i64* [ undef, %while.body.preheader ], [ %incdec.ptr14.prol, %while.body.prol ]
  %and17.lcssa.unr = phi i64 [ undef, %while.body.preheader ], [ %and17.prol, %while.body.prol ]
  %carry.071.unr = phi i64 [ %call10, %while.body.preheader ], [ %and17.prol, %while.body.prol ]
  %rp.070.unr = phi i64* [ %add.ptr, %while.body.preheader ], [ %incdec.ptr14.prol, %while.body.prol ]
  %dif.069.unr = phi i32 [ %sub, %while.body.preheader ], [ %dec.prol, %while.body.prol ]
  %ap.068.unr = phi i64* [ %add.ptr12, %while.body.preheader ], [ %incdec.ptr.prol, %while.body.prol ]
  %9 = icmp eq i32 %2, %.neg
  br i1 %9, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %carry.071 = phi i64 [ %and17.1, %while.body ], [ %carry.071.unr, %while.body.prol.loopexit ]
  %rp.070 = phi i64* [ %incdec.ptr14.1, %while.body ], [ %rp.070.unr, %while.body.prol.loopexit ]
  %dif.069 = phi i32 [ %dec.1, %while.body ], [ %dif.069.unr, %while.body.prol.loopexit ]
  %ap.068 = phi i64* [ %incdec.ptr.1, %while.body ], [ %ap.068.unr, %while.body.prol.loopexit ]
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.068, i64 1
  %10 = load i64, i64* %ap.068, align 8, !tbaa !12
  %add13 = add i64 %10, %carry.071
  %incdec.ptr14 = getelementptr inbounds i64, i64* %rp.070, i64 1
  store i64 %add13, i64* %rp.070, align 8, !tbaa !12
  %cmp15 = icmp eq i64 %add13, 0
  %11 = zext i1 %cmp15 to i64
  %and17 = and i64 %carry.071, %11
  %dec.1 = add nsw i32 %dif.069, -2
  %incdec.ptr.1 = getelementptr inbounds i64, i64* %ap.068, i64 2
  %12 = load i64, i64* %incdec.ptr, align 8, !tbaa !12
  %add13.1 = add i64 %12, %and17
  %incdec.ptr14.1 = getelementptr inbounds i64, i64* %rp.070, i64 2
  store i64 %add13.1, i64* %incdec.ptr14, align 8, !tbaa !12
  %cmp15.1 = icmp eq i64 %add13.1, 0
  %13 = zext i1 %cmp15.1 to i64
  %and17.1 = and i64 %and17, %13
  %tobool.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool.not.1, label %while.end, label %while.body, !llvm.loop !14

while.end:                                        ; preds = %while.body.prol.loopexit, %while.body, %if.end6
  %rp.0.lcssa = phi i64* [ %add.ptr, %if.end6 ], [ %incdec.ptr14.lcssa.unr, %while.body.prol.loopexit ], [ %incdec.ptr14.1, %while.body ]
  %carry.0.lcssa = phi i64 [ %call10, %if.end6 ], [ %and17.lcssa.unr, %while.body.prol.loopexit ], [ %and17.1, %while.body ]
  store i64 %carry.0.lcssa, i64* %rp.0.lcssa, align 8, !tbaa !12
  %14 = load i32, i32* %top7, align 8, !tbaa !10
  %15 = trunc i64 %carry.0.lcssa to i32
  %conv21 = add i32 %14, %15
  store i32 %conv21, i32* %top7, align 8, !tbaa !10
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_usub(%struct.bignum_st* noundef %r, %struct.bignum_st* nocapture noundef readonly %a, %struct.bignum_st* nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !10
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %1 = load i32, i32* %top1, align 8, !tbaa !10
  %sub = sub i32 %0, %1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.BN_usub, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 100, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %0) #3
  %cmp2 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !11
  %d5 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %3 = load i64*, i64** %d5, align 8, !tbaa !11
  %d6 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %4 = load i64*, i64** %d6, align 8, !tbaa !11
  %call7 = tail call i64 @bn_sub_words(i64* noundef %4, i64* noundef %2, i64* noundef %3, i32 noundef %1) #3
  %idx.ext = sext i32 %1 to i64
  %add.ptr9 = getelementptr inbounds i64, i64* %4, i64 %idx.ext
  %tobool.not62 = icmp eq i32 %sub, 0
  br i1 %tobool.not62, label %while.cond15.preheader, label %while.body.preheader

while.body.preheader:                             ; preds = %if.end4
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %idx.ext
  %.neg = add i32 %1, 1
  %xtraiter = and i32 %sub, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.prol.loopexit, label %while.body.prol

while.body.prol:                                  ; preds = %while.body.preheader
  %dec.prol = add nsw i32 %sub, -1
  %incdec.ptr.prol = getelementptr inbounds i64, i64* %add.ptr, i64 1
  %5 = load i64, i64* %add.ptr, align 8, !tbaa !12
  %sub10.prol = sub i64 %5, %call7
  %incdec.ptr11.prol = getelementptr inbounds i64, i64* %add.ptr9, i64 1
  store i64 %sub10.prol, i64* %add.ptr9, align 8, !tbaa !12
  %cmp12.prol = icmp eq i64 %5, 0
  %6 = zext i1 %cmp12.prol to i64
  %and14.prol = and i64 %call7, %6
  br label %while.body.prol.loopexit

while.body.prol.loopexit:                         ; preds = %while.body.prol, %while.body.preheader
  %incdec.ptr11.lcssa.unr = phi i64* [ undef, %while.body.preheader ], [ %incdec.ptr11.prol, %while.body.prol ]
  %ap.066.unr = phi i64* [ %add.ptr, %while.body.preheader ], [ %incdec.ptr.prol, %while.body.prol ]
  %rp.065.unr = phi i64* [ %add.ptr9, %while.body.preheader ], [ %incdec.ptr11.prol, %while.body.prol ]
  %borrow.064.unr = phi i64 [ %call7, %while.body.preheader ], [ %and14.prol, %while.body.prol ]
  %dif.063.unr = phi i32 [ %sub, %while.body.preheader ], [ %dec.prol, %while.body.prol ]
  %7 = icmp eq i32 %0, %.neg
  br i1 %7, label %while.cond15.preheader, label %while.body

while.cond15.preheader:                           ; preds = %while.body.prol.loopexit, %while.body, %if.end4
  %rp.0.lcssa = phi i64* [ %add.ptr9, %if.end4 ], [ %incdec.ptr11.lcssa.unr, %while.body.prol.loopexit ], [ %incdec.ptr11.1, %while.body ]
  %tobool16.not67 = icmp eq i32 %0, 0
  br i1 %tobool16.not67, label %while.end22, label %land.rhs

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %ap.066 = phi i64* [ %incdec.ptr.1, %while.body ], [ %ap.066.unr, %while.body.prol.loopexit ]
  %rp.065 = phi i64* [ %incdec.ptr11.1, %while.body ], [ %rp.065.unr, %while.body.prol.loopexit ]
  %borrow.064 = phi i64 [ %and14.1, %while.body ], [ %borrow.064.unr, %while.body.prol.loopexit ]
  %dif.063 = phi i32 [ %dec.1, %while.body ], [ %dif.063.unr, %while.body.prol.loopexit ]
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.066, i64 1
  %8 = load i64, i64* %ap.066, align 8, !tbaa !12
  %sub10 = sub i64 %8, %borrow.064
  %incdec.ptr11 = getelementptr inbounds i64, i64* %rp.065, i64 1
  store i64 %sub10, i64* %rp.065, align 8, !tbaa !12
  %cmp12 = icmp eq i64 %8, 0
  %9 = zext i1 %cmp12 to i64
  %and14 = and i64 %borrow.064, %9
  %dec.1 = add nsw i32 %dif.063, -2
  %incdec.ptr.1 = getelementptr inbounds i64, i64* %ap.066, i64 2
  %10 = load i64, i64* %incdec.ptr, align 8, !tbaa !12
  %sub10.1 = sub i64 %10, %and14
  %incdec.ptr11.1 = getelementptr inbounds i64, i64* %rp.065, i64 2
  store i64 %sub10.1, i64* %incdec.ptr11, align 8, !tbaa !12
  %cmp12.1 = icmp eq i64 %10, 0
  %11 = zext i1 %cmp12.1 to i64
  %and14.1 = and i64 %and14, %11
  %tobool.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool.not.1, label %while.cond15.preheader, label %while.body, !llvm.loop !16

land.rhs:                                         ; preds = %while.cond15.preheader, %while.body20
  %rp.169 = phi i64* [ %incdec.ptr17, %while.body20 ], [ %rp.0.lcssa, %while.cond15.preheader ]
  %max.068 = phi i32 [ %dec21, %while.body20 ], [ %0, %while.cond15.preheader ]
  %incdec.ptr17 = getelementptr inbounds i64, i64* %rp.169, i64 -1
  %12 = load i64, i64* %incdec.ptr17, align 8, !tbaa !12
  %cmp18 = icmp eq i64 %12, 0
  br i1 %cmp18, label %while.body20, label %while.end22

while.body20:                                     ; preds = %land.rhs
  %dec21 = add nsw i32 %max.068, -1
  %tobool16.not = icmp eq i32 %dec21, 0
  br i1 %tobool16.not, label %while.end22, label %land.rhs, !llvm.loop !17

while.end22:                                      ; preds = %land.rhs, %while.body20, %while.cond15.preheader
  %max.0.lcssa = phi i32 [ 0, %while.cond15.preheader ], [ 0, %while.body20 ], [ %max.068, %land.rhs ]
  %top23 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 %max.0.lcssa, i32* %top23, align 8, !tbaa !10
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end22, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %while.end22 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_sub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b) local_unnamed_addr #0 {
entry:
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !4
  %neg1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 3
  %1 = load i32, i32* %neg1, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @BN_uadd(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %b) #2
  br label %if.end15

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %b) #3
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  %2 = load i32, i32* %neg, align 8, !tbaa !4
  %call7 = tail call i32 @BN_usub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %b) #2
  br label %if.end15

if.else8:                                         ; preds = %if.else
  %cmp9 = icmp slt i32 %call3, 0
  br i1 %cmp9, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.else8
  %3 = load i32, i32* %neg1, align 8, !tbaa !4
  %tobool.not = icmp eq i32 %3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %call12 = tail call i32 @BN_usub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %b, %struct.bignum_st* noundef nonnull %a) #2
  br label %if.end15

if.else13:                                        ; preds = %if.else8
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #3
  br label %if.end15

if.end15:                                         ; preds = %if.then5, %if.else13, %if.then10, %if.then
  %r_neg.0 = phi i32 [ %0, %if.then ], [ %2, %if.then5 ], [ %lnot.ext, %if.then10 ], [ 0, %if.else13 ]
  %ret.0 = phi i32 [ %call, %if.then ], [ %call7, %if.then5 ], [ %call12, %if.then10 ], [ 1, %if.else13 ]
  %neg16 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 %r_neg.0, i32* %neg16, align 8, !tbaa !4
  ret i32 %ret.0
}

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @bn_add_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i64 @bn_sub_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

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
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
