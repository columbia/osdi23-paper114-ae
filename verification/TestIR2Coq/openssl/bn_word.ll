; ModuleID = 'crypto/bn/bn_word.c'
source_filename = "crypto/bn/bn_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define i64 @BN_mod_word(%struct.bignum_st* noundef %a, i64 noundef %w) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %w, 0
  br i1 %cmp, label %cleanup17, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i64 %w, 4294967296
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %a) #3
  %cmp3 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp3, label %cleanup17, label %if.end5

if.end5:                                          ; preds = %if.then2
  %call6 = tail call i64 @BN_div_word(%struct.bignum_st* noundef nonnull %call, i64 noundef %w) #4
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call) #3
  br label %cleanup17

if.end7:                                          ; preds = %if.end
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %cmp840 = icmp sgt i32 %0, 0
  br i1 %cmp840, label %for.body.lr.ph, label %cleanup17

for.body.lr.ph:                                   ; preds = %if.end7
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !10
  %2 = zext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %ret.041 = phi i64 [ 0, %for.body.lr.ph ], [ %rem16, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %idxprom38 = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom38
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %or = tail call i64 @llvm.fshl.i64(i64 %ret.041, i64 %3, i64 32)
  %rem = urem i64 %or, %w
  %shl10 = shl i64 %rem, 32
  %and14 = and i64 %3, 4294967295
  %or15 = or i64 %shl10, %and14
  %rem16 = urem i64 %or15, %w
  %cmp8 = icmp ugt i64 %indvars.iv, 1
  br i1 %cmp8, label %for.body, label %cleanup17, !llvm.loop !13

cleanup17:                                        ; preds = %for.body, %if.end7, %if.end5, %if.then2, %entry
  %retval.1 = phi i64 [ -1, %entry ], [ %call6, %if.end5 ], [ -1, %if.then2 ], [ 0, %if.end7 ], [ %rem16, %for.body ]
  ret i64 %retval.1
}

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @BN_div_word(%struct.bignum_st* noundef %a, i64 noundef %w) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64 %w, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call = tail call i32 @BN_num_bits_word(i64 noundef %w) #3
  %sub = sub nsw i32 64, %call
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %w, %sh_prom
  %call3 = tail call i32 @BN_lshift(%struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %a, i32 noundef %sub) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end2
  %1 = load i32, i32* %top, align 8, !tbaa !4
  %cmp969 = icmp sgt i32 %1, 0
  br i1 %cmp969, label %for.body.lr.ph, label %if.end29

for.body.lr.ph:                                   ; preds = %if.end6
  %d10 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = zext i32 %1 to i64
  %.pre = load i64*, i64** %d10, align 8, !tbaa !10
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %3 = phi i64* [ %.pre, %for.body.lr.ph ], [ %5, %for.body ]
  %indvars.iv = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %ret.070 = phi i64 [ 0, %for.body.lr.ph ], [ %sub13, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %idxprom67 = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom67
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %call11 = tail call i64 @bn_div_words(i64 noundef %ret.070, i64 noundef %4, i64 noundef %shl) #3
  %mul = mul i64 %call11, %shl
  %sub13 = sub i64 %4, %mul
  %5 = load i64*, i64** %d10, align 8, !tbaa !10
  %arrayidx17 = getelementptr inbounds i64, i64* %5, i64 %idxprom67
  store i64 %call11, i64* %arrayidx17, align 8, !tbaa !11
  %cmp9 = icmp ugt i64 %indvars.iv, 1
  br i1 %cmp9, label %for.body, label %for.end, !llvm.loop !15

for.end:                                          ; preds = %for.body
  %.pre73 = load i32, i32* %top, align 8, !tbaa !4
  %cmp19 = icmp sgt i32 %.pre73, 0
  br i1 %cmp19, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %for.end
  %d20 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %6 = load i64*, i64** %d20, align 8, !tbaa !10
  %sub22 = add nsw i32 %.pre73, -1
  %7 = zext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds i64, i64* %6, i64 %7
  %8 = load i64, i64* %arrayidx24, align 8, !tbaa !11
  %cmp25 = icmp eq i64 %8, 0
  br i1 %cmp25, label %if.then26, label %if.end29.thread

if.end29.thread:                                  ; preds = %land.lhs.true
  %shr79 = lshr i64 %sub13, %sh_prom
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true
  store i32 %sub22, i32* %top, align 8, !tbaa !4
  br label %if.end29

if.end29:                                         ; preds = %if.end6, %if.then26, %for.end
  %ret.0.lcssa77 = phi i64 [ %sub13, %if.then26 ], [ %sub13, %for.end ], [ 0, %if.end6 ]
  %9 = phi i32 [ %sub22, %if.then26 ], [ %.pre73, %for.end ], [ %1, %if.end6 ]
  %shr = lshr i64 %ret.0.lcssa77, %sh_prom
  %tobool32.not = icmp eq i32 %9, 0
  br i1 %tobool32.not, label %if.then33, label %cleanup

if.then33:                                        ; preds = %if.end29
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %if.end29.thread, %if.end29, %if.then33, %if.end2, %if.end, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ 0, %if.end ], [ -1, %if.end2 ], [ %shr, %if.then33 ], [ %shr, %if.end29 ], [ %shr79, %if.end29.thread ]
  ret i64 %retval.0
}

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits_word(i64 noundef) local_unnamed_addr #1

declare i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @bn_div_words(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_add_word(%struct.bignum_st* noundef %a, i64 noundef %w) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64 %w, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %a) #3
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %a, i64 noundef %w) #3
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !16
  %tobool5.not = icmp eq i32 %0, 0
  br i1 %tobool5.not, label %land.rhs.lr.ph, label %if.then6

land.rhs.lr.ph:                                   ; preds = %if.end4
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %1 = load i32, i32* %top, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext i32 %smax to i64
  br label %land.rhs

if.then6:                                         ; preds = %if.end4
  store i32 0, i32* %neg, align 8, !tbaa !16
  %call8 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef nonnull %a, i64 noundef %w) #4
  %call9 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %a) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.then6
  %2 = load i32, i32* %neg, align 8, !tbaa !16
  %tobool13.not = icmp eq i32 %2, 0
  %lnot.ext = zext i1 %tobool13.not to i32
  store i32 %lnot.ext, i32* %neg, align 8, !tbaa !16
  br label %cleanup

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %land.rhs.lr.ph ], [ %indvars.iv.next, %for.body ]
  %w.addr.076 = phi i64 [ %w, %land.rhs.lr.ph ], [ 1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %land.lhs.true, label %for.body

for.body:                                         ; preds = %land.rhs
  %3 = load i64*, i64** %d, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %indvars.iv
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !11
  %add = add i64 %4, %w.addr.076
  store i64 %add, i64* %arrayidx, align 8, !tbaa !11
  %cmp22 = icmp ugt i64 %w.addr.076, %add
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp22, label %land.rhs, label %cleanup, !llvm.loop !17

land.lhs.true:                                    ; preds = %land.rhs
  %cmp25 = icmp sgt i32 %1, -1
  br i1 %cmp25, label %if.then27, label %cleanup

if.then27:                                        ; preds = %land.lhs.true
  %add29 = add nuw nsw i32 %1, 1
  %call30 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %a, i32 noundef %add29) #3
  %cmp31 = icmp eq %struct.bignum_st* %call30, null
  br i1 %cmp31, label %cleanup, label %if.end34

if.end34:                                         ; preds = %if.then27
  %5 = load i32, i32* %top, align 8, !tbaa !4
  %inc36 = add nsw i32 %5, 1
  store i32 %inc36, i32* %top, align 8, !tbaa !4
  %6 = load i64*, i64** %d, align 8, !tbaa !10
  %idxprom38 = zext i32 %1 to i64
  %arrayidx39 = getelementptr inbounds i64, i64* %6, i64 %idxprom38
  store i64 %w.addr.076, i64* %arrayidx39, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %for.body, %land.lhs.true, %if.end34, %if.then27, %if.then6, %if.then11, %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 1, %entry ], [ %call8, %if.then11 ], [ %call8, %if.then6 ], [ 0, %if.then27 ], [ 1, %if.end34 ], [ 1, %land.lhs.true ], [ 1, %for.body ]
  ret i32 %retval.0
}

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_sub_word(%struct.bignum_st* noundef %a, i64 noundef %w) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i64 %w, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %a) #3
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %a, i64 noundef %w) #3
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %if.then2
  tail call void @BN_set_negative(%struct.bignum_st* noundef %a, i32 noundef 1) #3
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !16
  %tobool7.not = icmp eq i32 %0, 0
  br i1 %tobool7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end6
  store i32 0, i32* %neg, align 8, !tbaa !16
  %call10 = tail call i32 @BN_add_word(%struct.bignum_st* noundef nonnull %a, i64 noundef %w) #4
  store i32 1, i32* %neg, align 8, !tbaa !16
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %1 = load i32, i32* %top, align 8, !tbaa !4
  %cmp13 = icmp eq i32 %1, 1
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !10
  %3 = load i64, i64* %2, align 8, !tbaa !11
  %cmp14 = icmp ult i64 %3, %w
  %or.cond = select i1 %cmp13, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.then15, label %if.end21

if.then15:                                        ; preds = %if.end12
  %sub = sub i64 %w, %3
  store i64 %sub, i64* %2, align 8, !tbaa !11
  store i32 1, i32* %neg, align 8, !tbaa !16
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %cmp24.not87 = icmp ult i64 %3, %w
  br i1 %cmp24.not87, label %if.else.preheader, label %if.then25

if.else.preheader:                                ; preds = %if.end21
  %sub33.peel = sub i64 %3, %w
  store i64 %sub33.peel, i64* %2, align 8, !tbaa !11
  %arrayidx23.peel = getelementptr inbounds i64, i64* %2, i64 1
  %4 = load i64, i64* %arrayidx23.peel, align 8, !tbaa !11
  %cmp24.not.peel = icmp eq i64 %4, 0
  br i1 %cmp24.not.peel, label %if.else, label %if.then25

if.then25.loopexit.loopexit:                      ; preds = %if.else
  %phi.cast = trunc i64 %indvars.iv.next to i32
  br label %if.then25

if.then25:                                        ; preds = %if.else.preheader, %if.then25.loopexit.loopexit, %if.end21
  %w.addr.0.lcssa = phi i64 [ %w, %if.end21 ], [ 1, %if.then25.loopexit.loopexit ], [ 1, %if.else.preheader ]
  %i.0.lcssa = phi i32 [ 0, %if.end21 ], [ %phi.cast, %if.then25.loopexit.loopexit ], [ 1, %if.else.preheader ]
  %arrayidx23.lcssa = phi i64* [ %2, %if.end21 ], [ %arrayidx23, %if.then25.loopexit.loopexit ], [ %arrayidx23.peel, %if.else.preheader ]
  %.lcssa = phi i64 [ %3, %if.end21 ], [ %5, %if.then25.loopexit.loopexit ], [ %4, %if.else.preheader ]
  %sub29 = sub i64 %.lcssa, %w.addr.0.lcssa
  store i64 %sub29, i64* %arrayidx23.lcssa, align 8, !tbaa !11
  %cmp42 = icmp eq i64 %sub29, 0
  %sub45 = add nsw i32 %1, -1
  %cmp46 = icmp eq i32 %i.0.lcssa, %sub45
  %or.cond101 = select i1 %cmp42, i1 %cmp46, i1 false
  br i1 %or.cond101, label %if.then47, label %cleanup

if.else:                                          ; preds = %if.else.preheader, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else ], [ 1, %if.else.preheader ]
  %arrayidx2390 = phi i64* [ %arrayidx23, %if.else ], [ %arrayidx23.peel, %if.else.preheader ]
  store i64 -1, i64* %arrayidx2390, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx23 = getelementptr inbounds i64, i64* %2, i64 %indvars.iv.next
  %5 = load i64, i64* %arrayidx23, align 8, !tbaa !11
  %cmp24.not = icmp eq i64 %5, 0
  br i1 %cmp24.not, label %if.else, label %if.then25.loopexit.loopexit, !llvm.loop !18

if.then47:                                        ; preds = %if.then25
  store i32 %i.0.lcssa, i32* %top, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.then47, %if.then2, %if.then4, %entry, %if.then15, %if.then8
  %retval.0 = phi i32 [ %call10, %if.then8 ], [ 1, %if.then15 ], [ 1, %entry ], [ %call3, %if.then4 ], [ 0, %if.then2 ], [ 1, %if.then47 ], [ 1, %if.then25 ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @BN_set_negative(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mul_word(%struct.bignum_st* noundef %a, i64 noundef %w) local_unnamed_addr #0 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp eq i64 %w, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  tail call void @BN_zero_ex(%struct.bignum_st* noundef nonnull %a) #3
  br label %cleanup

if.else:                                          ; preds = %if.then
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !10
  %call = tail call i64 @bn_mul_words(i64* noundef %1, i64* noundef %1, i32 noundef %0, i64 noundef %w) #3
  %tobool4.not = icmp eq i64 %call, 0
  br i1 %tobool4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.else
  %2 = load i32, i32* %top, align 8, !tbaa !4
  %add = add nsw i32 %2, 1
  %call7 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %a, i32 noundef %add) #3
  %cmp8 = icmp eq %struct.bignum_st* %call7, null
  br i1 %cmp8, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then5
  %3 = load i64*, i64** %d, align 8, !tbaa !10
  %4 = load i32, i32* %top, align 8, !tbaa !4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %top, align 8, !tbaa !4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom
  store i64 %call, i64* %arrayidx, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else, %if.end, %if.then1, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.then1 ], [ 1, %if.end ], [ 1, %if.else ], [ 1, %entry ]
  ret i32 %retval.0
}

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i64 @bn_mul_words(i64* noundef, i64* noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

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
!10 = !{!5, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!5, !9, i64 16}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.peeled.count", i32 1}
