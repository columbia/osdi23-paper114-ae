; ModuleID = 'crypto/bn/bn_mod.c'
source_filename = "crypto/bn/bn_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/bn/bn_mod.c\00", align 1
@__func__.bn_mod_add_fixed_top = private unnamed_addr constant [21 x i8] c"bn_mod_add_fixed_top\00", align 1
@__func__.BN_mod_lshift_quick = private unnamed_addr constant [20 x i8] c"BN_mod_lshift_quick\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_nnmod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m, %struct.bignum_st* noundef %d, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m, %struct.bignum_st* noundef %d, %struct.bignum_ctx* noundef %ctx) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %neg4 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %d, i64 0, i32 3
  %1 = load i32, i32* %neg4, align 8, !tbaa !4
  %tobool5.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool5.not, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*)* @BN_add, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*)* @BN_sub
  %call6 = tail call i32 %cond(%struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef %d) #4, !callees !10
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_add(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_add(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @bn_mod_add_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* nocapture noundef readonly %a, %struct.bignum_st* nocapture noundef readonly %b, %struct.bignum_st* nocapture noundef readonly %m) local_unnamed_addr #0 {
entry:
  %storage = alloca [16 x i64], align 16
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !11
  %conv = sext i32 %0 to i64
  %1 = bitcast [16 x i64]* %storage to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %1) #6
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %storage, i64 0, i64 0
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %0) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp3 = icmp ugt i32 %0, 16
  br i1 %cmp3, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %mul = shl nsw i64 %conv, 3
  %call6 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 60) #4
  %2 = bitcast i8* %call6 to i64*
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then5
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.bn_mod_add_fixed_top, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end11:                                         ; preds = %if.then5, %if.end
  %tp.0 = phi i64* [ %2, %if.then5 ], [ %arraydecay, %if.end ]
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %3 = load i64*, i64** %d, align 8, !tbaa !12
  %cmp12.not = icmp eq i64* %3, null
  %tp.0. = select i1 %cmp12.not, i64* %tp.0, i64* %3
  %d15 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %4 = load i64*, i64** %d15, align 8, !tbaa !12
  %cmp16.not = icmp eq i64* %4, null
  %cond22 = select i1 %cmp16.not, i64* %tp.0, i64* %4
  %cmp23158.not = icmp eq i32 %0, 0
  br i1 %cmp23158.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end11
  %top25 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %5 = load i32, i32* %top25, align 8, !tbaa !11
  %conv26 = sext i32 %5 to i64
  %top32 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %6 = load i32, i32* %top32, align 8, !tbaa !11
  %conv33 = sext i32 %6 to i64
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %7 = load i32, i32* %dmax, align 4, !tbaa !13
  %conv47 = sext i32 %7 to i64
  %dmax51 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 2
  %8 = load i32, i32* %dmax51, align 4, !tbaa !13
  %conv52 = sext i32 %8 to i64
  %umax = call i64 @llvm.umax.i64(i64 %conv, i64 1)
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.0162 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %ai.0161 = phi i64 [ 0, %for.body.lr.ph ], [ %add50, %for.body ]
  %bi.0160 = phi i64 [ 0, %for.body.lr.ph ], [ %add55, %for.body ]
  %carry.0159 = phi i64 [ 0, %for.body.lr.ph ], [ %add46, %for.body ]
  %sub = sub i64 %i.0162, %conv26
  %arrayidx = getelementptr inbounds i64, i64* %tp.0., i64 %ai.0161
  %9 = load i64, i64* %arrayidx, align 8, !tbaa !14
  %isneg = icmp slt i64 %sub, 0
  %and = select i1 %isneg, i64 %9, i64 0
  %add = add i64 %and, %carry.0159
  %cmp29 = icmp ult i64 %add, %carry.0159
  %10 = zext i1 %cmp29 to i64
  %sub34 = sub i64 %i.0162, %conv33
  %arrayidx37 = getelementptr inbounds i64, i64* %cond22, i64 %bi.0160
  %11 = load i64, i64* %arrayidx37, align 8, !tbaa !14
  %isneg157 = icmp slt i64 %sub34, 0
  %and38 = select i1 %isneg157, i64 %11, i64 0
  %add39 = add i64 %and38, %add
  %arrayidx41 = getelementptr inbounds i64, i64* %tp.0, i64 %i.0162
  store i64 %add39, i64* %arrayidx41, align 8, !tbaa !14
  %cmp43 = icmp ult i64 %add39, %add
  %12 = zext i1 %cmp43 to i64
  %add46 = add nuw nsw i64 %12, %10
  %inc = add nuw i64 %i.0162, 1
  %sub48 = sub i64 %inc, %conv47
  %shr49 = lshr i64 %sub48, 63
  %add50 = add i64 %shr49, %ai.0161
  %sub53 = sub i64 %inc, %conv52
  %shr54 = lshr i64 %sub53, 63
  %add55 = add i64 %shr54, %bi.0160
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %for.body, %if.end11
  %carry.0.lcssa = phi i64 [ 0, %if.end11 ], [ %add46, %for.body ]
  %d56 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %13 = load i64*, i64** %d56, align 8, !tbaa !12
  %d57 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 0
  %14 = load i64*, i64** %d57, align 8, !tbaa !12
  %call59 = call i64 @bn_sub_words(i64* noundef %13, i64* noundef %tp.0, i64* noundef %14, i32 noundef %0) #4
  %sub60 = sub i64 %carry.0.lcssa, %call59
  br i1 %cmp23158.not, label %for.end72, label %for.body64.lr.ph

for.body64.lr.ph:                                 ; preds = %for.end
  %neg = xor i64 %sub60, -1
  %umax165 = call i64 @llvm.umax.i64(i64 %conv, i64 1)
  %xtraiter = and i64 %umax165, 1
  %15 = icmp eq i32 %0, 1
  br i1 %15, label %for.end72.loopexit.unr-lcssa, label %for.body64.lr.ph.new

for.body64.lr.ph.new:                             ; preds = %for.body64.lr.ph
  %unroll_iter = and i64 %umax165, -2
  br label %for.body64

for.body64:                                       ; preds = %for.body64, %for.body64.lr.ph.new
  %i.1164 = phi i64 [ 0, %for.body64.lr.ph.new ], [ %inc71.1, %for.body64 ]
  %niter = phi i64 [ 0, %for.body64.lr.ph.new ], [ %niter.next.1, %for.body64 ]
  %arrayidx65 = getelementptr inbounds i64, i64* %tp.0, i64 %i.1164
  %16 = load i64, i64* %arrayidx65, align 8, !tbaa !14
  %and66 = and i64 %16, %sub60
  %arrayidx67 = getelementptr inbounds i64, i64* %13, i64 %i.1164
  %17 = load i64, i64* %arrayidx67, align 8, !tbaa !14
  %and68 = and i64 %17, %neg
  %or = or i64 %and68, %and66
  store i64 %or, i64* %arrayidx67, align 8, !tbaa !14
  store volatile i64 0, i64* %arrayidx65, align 8, !tbaa !14
  %inc71 = or i64 %i.1164, 1
  %arrayidx65.1 = getelementptr inbounds i64, i64* %tp.0, i64 %inc71
  %18 = load i64, i64* %arrayidx65.1, align 8, !tbaa !14
  %and66.1 = and i64 %18, %sub60
  %arrayidx67.1 = getelementptr inbounds i64, i64* %13, i64 %inc71
  %19 = load i64, i64* %arrayidx67.1, align 8, !tbaa !14
  %and68.1 = and i64 %19, %neg
  %or.1 = or i64 %and68.1, %and66.1
  store i64 %or.1, i64* %arrayidx67.1, align 8, !tbaa !14
  store volatile i64 0, i64* %arrayidx65.1, align 8, !tbaa !14
  %inc71.1 = add nuw i64 %i.1164, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end72.loopexit.unr-lcssa, label %for.body64, !llvm.loop !18

for.end72.loopexit.unr-lcssa:                     ; preds = %for.body64, %for.body64.lr.ph
  %i.1164.unr = phi i64 [ 0, %for.body64.lr.ph ], [ %inc71.1, %for.body64 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end72, label %for.body64.epil

for.body64.epil:                                  ; preds = %for.end72.loopexit.unr-lcssa
  %arrayidx65.epil = getelementptr inbounds i64, i64* %tp.0, i64 %i.1164.unr
  %20 = load i64, i64* %arrayidx65.epil, align 8, !tbaa !14
  %and66.epil = and i64 %20, %sub60
  %arrayidx67.epil = getelementptr inbounds i64, i64* %13, i64 %i.1164.unr
  %21 = load i64, i64* %arrayidx67.epil, align 8, !tbaa !14
  %and68.epil = and i64 %21, %neg
  %or.epil = or i64 %and68.epil, %and66.epil
  store i64 %or.epil, i64* %arrayidx67.epil, align 8, !tbaa !14
  store volatile i64 0, i64* %arrayidx65.epil, align 8, !tbaa !14
  br label %for.end72

for.end72:                                        ; preds = %for.body64.epil, %for.end72.loopexit.unr-lcssa, %for.end
  %top74 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 %0, i32* %top74, align 8, !tbaa !11
  %neg76 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 0, i32* %neg76, align 8, !tbaa !4
  %cmp78.not = icmp eq i64* %tp.0, %arraydecay
  br i1 %cmp78.not, label %cleanup, label %if.then80

if.then80:                                        ; preds = %for.end72
  %22 = bitcast i64* %tp.0 to i8*
  call void @CRYPTO_free(i8* noundef %22, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 94) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %if.then80, %entry, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %entry ], [ 1, %if.then80 ], [ 1, %for.end72 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %1) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i64 @bn_sub_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_add_quick(%struct.bignum_st* noundef %r, %struct.bignum_st* nocapture noundef readonly %a, %struct.bignum_st* nocapture noundef readonly %b, %struct.bignum_st* nocapture noundef readonly %m) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @bn_mod_add_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_st* noundef %m) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @bn_correct_top(%struct.bignum_st* noundef %r) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_sub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_sub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @bn_mod_sub_fixed_top(%struct.bignum_st* noundef %r, %struct.bignum_st* nocapture noundef readonly %a, %struct.bignum_st* nocapture noundef readonly %b, %struct.bignum_st* nocapture noundef readonly %m) local_unnamed_addr #0 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !11
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef %0) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !12
  %d3 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d3, align 8, !tbaa !12
  %cmp4.not = icmp eq i64* %2, null
  %. = select i1 %cmp4.not, i64* %1, i64* %2
  %d7 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %3 = load i64*, i64** %d7, align 8, !tbaa !12
  %cmp8.not = icmp eq i64* %3, null
  %cond14 = select i1 %cmp8.not, i64* %1, i64* %3
  %cmp15188.not = icmp eq i32 %0, 0
  br i1 %cmp15188.not, label %for.end93, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %top17 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %4 = load i32, i32* %top17, align 8, !tbaa !11
  %conv18 = sext i32 %4 to i64
  %top20 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %5 = load i32, i32* %top20, align 8, !tbaa !11
  %conv21 = sext i32 %5 to i64
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %6 = load i32, i32* %dmax, align 4, !tbaa !13
  %conv37 = sext i32 %6 to i64
  %dmax40 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 2
  %7 = load i32, i32* %dmax40, align 4, !tbaa !13
  %conv41 = sext i32 %7 to i64
  %umax = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %sub46193 = phi i64 [ 0, %for.body.lr.ph ], [ %sub46, %for.body ]
  %i.0192 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %ai.0191 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %borrow.0190 = phi i64 [ 0, %for.body.lr.ph ], [ %borrow.1, %for.body ]
  %bi.0189 = phi i64 [ 0, %for.body.lr.ph ], [ %add44, %for.body ]
  %sub = sub i64 %i.0192, %conv18
  %arrayidx = getelementptr inbounds i64, i64* %., i64 %ai.0191
  %8 = load i64, i64* %arrayidx, align 8, !tbaa !14
  %isneg = icmp slt i64 %sub, 0
  %and = select i1 %isneg, i64 %8, i64 0
  %sub22 = sub i64 %i.0192, %conv21
  %arrayidx25 = getelementptr inbounds i64, i64* %cond14, i64 %bi.0189
  %9 = load i64, i64* %arrayidx25, align 8, !tbaa !14
  %isneg187 = icmp slt i64 %sub22, 0
  %and26 = select i1 %isneg187, i64 %9, i64 0
  %.neg = add i64 %and, %sub46193
  %sub28 = sub i64 %.neg, %and26
  %arrayidx29 = getelementptr inbounds i64, i64* %1, i64 %i.0192
  store i64 %sub28, i64* %arrayidx29, align 8, !tbaa !14
  %cmp30.not = icmp eq i64 %and, %and26
  %cmp33 = icmp ult i64 %and, %and26
  %10 = zext i1 %cmp33 to i64
  %borrow.1 = select i1 %cmp30.not, i64 %borrow.0190, i64 %10
  %inc = add nuw i64 %i.0192, 1
  %sub38 = sub i64 %inc, %conv37
  %shr39 = lshr i64 %sub38, 63
  %add = add i64 %shr39, %ai.0191
  %sub42 = sub i64 %inc, %conv41
  %shr43 = lshr i64 %sub42, 63
  %add44 = add i64 %shr43, %bi.0189
  %sub46 = sub i64 0, %borrow.1
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !19

for.end:                                          ; preds = %for.body
  %d45 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 0
  %11 = load i64*, i64** %d45, align 8, !tbaa !12
  br i1 %cmp15188.not, label %for.end93, label %for.body50.preheader

for.body50.preheader:                             ; preds = %for.end
  %12 = add nsw i64 %umax, -1
  %xtraiter = and i64 %umax, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %for.end68.unr-lcssa, label %for.body50.preheader.new

for.body50.preheader.new:                         ; preds = %for.body50.preheader
  %unroll_iter = and i64 %umax, -2
  br label %for.body50

for.body50:                                       ; preds = %for.body50, %for.body50.preheader.new
  %i.1197 = phi i64 [ 0, %for.body50.preheader.new ], [ %inc67.1, %for.body50 ]
  %carry.0196 = phi i64 [ 0, %for.body50.preheader.new ], [ %add66.1, %for.body50 ]
  %niter = phi i64 [ 0, %for.body50.preheader.new ], [ %niter.next.1, %for.body50 ]
  %arrayidx51 = getelementptr inbounds i64, i64* %11, i64 %i.1197
  %14 = load i64, i64* %arrayidx51, align 8, !tbaa !14
  %and52 = and i64 %14, %sub46
  %add53 = add i64 %and52, %carry.0196
  %cmp55 = icmp ult i64 %add53, %carry.0196
  %15 = zext i1 %cmp55 to i64
  %arrayidx58 = getelementptr inbounds i64, i64* %1, i64 %i.1197
  %16 = load i64, i64* %arrayidx58, align 8, !tbaa !14
  %add59 = add i64 %add53, %16
  store i64 %add59, i64* %arrayidx58, align 8, !tbaa !14
  %cmp63 = icmp ult i64 %add59, %add53
  %17 = zext i1 %cmp63 to i64
  %add66 = add nuw nsw i64 %17, %15
  %inc67 = or i64 %i.1197, 1
  %arrayidx51.1 = getelementptr inbounds i64, i64* %11, i64 %inc67
  %18 = load i64, i64* %arrayidx51.1, align 8, !tbaa !14
  %and52.1 = and i64 %18, %sub46
  %add53.1 = add i64 %and52.1, %add66
  %cmp55.1 = icmp ult i64 %add53.1, %add66
  %19 = zext i1 %cmp55.1 to i64
  %arrayidx58.1 = getelementptr inbounds i64, i64* %1, i64 %inc67
  %20 = load i64, i64* %arrayidx58.1, align 8, !tbaa !14
  %add59.1 = add i64 %add53.1, %20
  store i64 %add59.1, i64* %arrayidx58.1, align 8, !tbaa !14
  %cmp63.1 = icmp ult i64 %add59.1, %add53.1
  %21 = zext i1 %cmp63.1 to i64
  %add66.1 = add nuw nsw i64 %21, %19
  %inc67.1 = add nuw i64 %i.1197, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end68.unr-lcssa, label %for.body50, !llvm.loop !20

for.end68.unr-lcssa:                              ; preds = %for.body50, %for.body50.preheader
  %add66.lcssa.ph = phi i64 [ undef, %for.body50.preheader ], [ %add66.1, %for.body50 ]
  %i.1197.unr = phi i64 [ 0, %for.body50.preheader ], [ %inc67.1, %for.body50 ]
  %carry.0196.unr = phi i64 [ 0, %for.body50.preheader ], [ %add66.1, %for.body50 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end68, label %for.body50.epil

for.body50.epil:                                  ; preds = %for.end68.unr-lcssa
  %arrayidx51.epil = getelementptr inbounds i64, i64* %11, i64 %i.1197.unr
  %22 = load i64, i64* %arrayidx51.epil, align 8, !tbaa !14
  %and52.epil = and i64 %22, %sub46
  %add53.epil = add i64 %and52.epil, %carry.0196.unr
  %cmp55.epil = icmp ult i64 %add53.epil, %carry.0196.unr
  %23 = zext i1 %cmp55.epil to i64
  %arrayidx58.epil = getelementptr inbounds i64, i64* %1, i64 %i.1197.unr
  %24 = load i64, i64* %arrayidx58.epil, align 8, !tbaa !14
  %add59.epil = add i64 %add53.epil, %24
  store i64 %add59.epil, i64* %arrayidx58.epil, align 8, !tbaa !14
  %cmp63.epil = icmp ult i64 %add59.epil, %add53.epil
  %25 = zext i1 %cmp63.epil to i64
  %add66.epil = add nuw nsw i64 %25, %23
  br label %for.end68

for.end68:                                        ; preds = %for.end68.unr-lcssa, %for.body50.epil
  %add66.lcssa = phi i64 [ %add66.lcssa.ph, %for.end68.unr-lcssa ], [ %add66.epil, %for.body50.epil ]
  %sub69.neg = sub i64 %add66.lcssa, %borrow.1
  br i1 %cmp15188.not, label %for.end93, label %for.body74.preheader

for.body74.preheader:                             ; preds = %for.end68
  %xtraiter215 = and i64 %umax, 1
  %26 = icmp eq i64 %12, 0
  br i1 %26, label %for.end93.loopexit.unr-lcssa, label %for.body74.preheader.new

for.body74.preheader.new:                         ; preds = %for.body74.preheader
  %unroll_iter217 = and i64 %umax, -2
  br label %for.body74

for.body74:                                       ; preds = %for.body74, %for.body74.preheader.new
  %i.2201 = phi i64 [ 0, %for.body74.preheader.new ], [ %inc92.1, %for.body74 ]
  %carry.1200 = phi i64 [ 0, %for.body74.preheader.new ], [ %add90.1, %for.body74 ]
  %niter218 = phi i64 [ 0, %for.body74.preheader.new ], [ %niter218.next.1, %for.body74 ]
  %arrayidx75 = getelementptr inbounds i64, i64* %11, i64 %i.2201
  %27 = load i64, i64* %arrayidx75, align 8, !tbaa !14
  %and76 = and i64 %27, %sub69.neg
  %add77 = add i64 %and76, %carry.1200
  %cmp79 = icmp ult i64 %add77, %carry.1200
  %28 = zext i1 %cmp79 to i64
  %arrayidx82 = getelementptr inbounds i64, i64* %1, i64 %i.2201
  %29 = load i64, i64* %arrayidx82, align 8, !tbaa !14
  %add83 = add i64 %add77, %29
  store i64 %add83, i64* %arrayidx82, align 8, !tbaa !14
  %cmp87 = icmp ult i64 %add83, %add77
  %30 = zext i1 %cmp87 to i64
  %add90 = add nuw nsw i64 %30, %28
  %inc92 = or i64 %i.2201, 1
  %arrayidx75.1 = getelementptr inbounds i64, i64* %11, i64 %inc92
  %31 = load i64, i64* %arrayidx75.1, align 8, !tbaa !14
  %and76.1 = and i64 %31, %sub69.neg
  %add77.1 = add i64 %and76.1, %add90
  %cmp79.1 = icmp ult i64 %add77.1, %add90
  %32 = zext i1 %cmp79.1 to i64
  %arrayidx82.1 = getelementptr inbounds i64, i64* %1, i64 %inc92
  %33 = load i64, i64* %arrayidx82.1, align 8, !tbaa !14
  %add83.1 = add i64 %add77.1, %33
  store i64 %add83.1, i64* %arrayidx82.1, align 8, !tbaa !14
  %cmp87.1 = icmp ult i64 %add83.1, %add77.1
  %34 = zext i1 %cmp87.1 to i64
  %add90.1 = add nuw nsw i64 %34, %32
  %inc92.1 = add nuw i64 %i.2201, 2
  %niter218.next.1 = add i64 %niter218, 2
  %niter218.ncmp.1 = icmp eq i64 %niter218.next.1, %unroll_iter217
  br i1 %niter218.ncmp.1, label %for.end93.loopexit.unr-lcssa, label %for.body74, !llvm.loop !21

for.end93.loopexit.unr-lcssa:                     ; preds = %for.body74, %for.body74.preheader
  %i.2201.unr = phi i64 [ 0, %for.body74.preheader ], [ %inc92.1, %for.body74 ]
  %carry.1200.unr = phi i64 [ 0, %for.body74.preheader ], [ %add90.1, %for.body74 ]
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %for.end93, label %for.body74.epil

for.body74.epil:                                  ; preds = %for.end93.loopexit.unr-lcssa
  %arrayidx75.epil = getelementptr inbounds i64, i64* %11, i64 %i.2201.unr
  %35 = load i64, i64* %arrayidx75.epil, align 8, !tbaa !14
  %and76.epil = and i64 %35, %sub69.neg
  %add77.epil = add i64 %and76.epil, %carry.1200.unr
  %arrayidx82.epil = getelementptr inbounds i64, i64* %1, i64 %i.2201.unr
  %36 = load i64, i64* %arrayidx82.epil, align 8, !tbaa !14
  %add83.epil = add i64 %add77.epil, %36
  store i64 %add83.epil, i64* %arrayidx82.epil, align 8, !tbaa !14
  br label %for.end93

for.end93:                                        ; preds = %for.body74.epil, %for.end93.loopexit.unr-lcssa, %if.end, %for.end, %for.end68
  %top95 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 %0, i32* %top95, align 8, !tbaa !11
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end93
  %retval.0 = phi i32 [ 1, %for.end93 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_sub_quick(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_st* noundef %m) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_sub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @BN_add(%struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef %m) #4
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_mul(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.bignum_st* %a, %b
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @BN_sqr(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %if.end10

if.else:                                          ; preds = %if.end
  %call6 = tail call i32 @BN_mul(%struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %call11 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #5
  %tobool12.not = icmp ne i32 %call11, 0
  %spec.select = zext i1 %tobool12.not to i32
  br label %err

err:                                              ; preds = %if.end10, %if.else, %if.then2, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then2 ], [ 0, %if.else ], [ %spec.select, %if.end10 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  ret i32 %ret.0
}

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_sqr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_sqr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_sqr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_div(%struct.bignum_st* noundef null, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_lshift1(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_lshift1(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @BN_lshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_lshift1_quick(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %m) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_lshift1(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a) #4
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m) #4
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %if.then2, label %return

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @BN_sub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m) #4
  br label %return

return:                                           ; preds = %if.end, %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_lshift(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32 noundef %n, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %m, %struct.bignum_ctx* noundef %ctx) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %m, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %m) #4
  %cmp = icmp eq %struct.bignum_st* %call3, null
  br i1 %cmp, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then2
  %neg6 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call3, i64 0, i32 3
  store i32 0, i32* %neg6, align 8, !tbaa !4
  br label %if.end7

if.end7:                                          ; preds = %if.end5, %if.end
  %abs_m.0 = phi %struct.bignum_st* [ %call3, %if.end5 ], [ null, %if.end ]
  %tobool8.not = icmp eq %struct.bignum_st* %abs_m.0, null
  %cond = select i1 %tobool8.not, %struct.bignum_st* %m, %struct.bignum_st* %abs_m.0
  %call9 = tail call i32 @BN_mod_lshift_quick(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, i32 noundef %n, %struct.bignum_st* noundef %cond) #5
  tail call void @BN_free(%struct.bignum_st* noundef %abs_m.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry, %if.end7
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ 0, %entry ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @BN_mod_lshift_quick(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32 noundef %n, %struct.bignum_st* noundef %m) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %r, %a
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a) #4
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %cmp456 = icmp sgt i32 %n, 0
  br i1 %cmp456, label %while.body, label %return

while.body:                                       ; preds = %if.end3, %cleanup
  %n.addr.057 = phi i32 [ %n.addr.1, %cleanup ], [ %n, %if.end3 ]
  %call5 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %m) #4
  %call6 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %r) #4
  %sub = sub nsw i32 %call5, %call6
  %cmp7 = icmp slt i32 %sub, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.BN_mod_lshift_quick, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 110, i8* noundef null) #4
  br label %return

if.end9:                                          ; preds = %while.body
  %cmp10 = icmp ugt i32 %sub, %n.addr.057
  %spec.select = select i1 %cmp10, i32 %n.addr.057, i32 %sub
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end9
  %call14 = tail call i32 @BN_lshift(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, i32 noundef %spec.select) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %return, label %if.end17

if.end17:                                         ; preds = %if.then13
  %sub18 = sub nsw i32 %n.addr.057, %spec.select
  br label %if.end23

if.else:                                          ; preds = %if.end9
  %call19 = tail call i32 @BN_lshift1(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %return, label %if.end22

if.end22:                                         ; preds = %if.else
  %dec = add nsw i32 %n.addr.057, -1
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end17
  %n.addr.1 = phi i32 [ %sub18, %if.end17 ], [ %dec, %if.end22 ]
  %call24 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m) #4
  %cmp25 = icmp sgt i32 %call24, -1
  br i1 %cmp25, label %if.then26, label %cleanup

if.then26:                                        ; preds = %if.end23
  %call27 = tail call i32 @BN_sub(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %m) #4
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %return, label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then26
  %cmp4 = icmp sgt i32 %n.addr.1, 0
  br i1 %cmp4, label %while.body, label %return

return:                                           ; preds = %cleanup, %if.then13, %if.else, %if.then26, %if.end3, %if.then8, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %if.then8 ], [ 1, %if.end3 ], [ 1, %cleanup ], [ 0, %if.then13 ], [ 0, %if.else ], [ 0, %if.then26 ]
  ret i32 %retval.2
}

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

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
!10 = !{i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*)* @BN_add, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*)* @BN_sub}
!11 = !{!5, !9, i64 8}
!12 = !{!5, !6, i64 0}
!13 = !{!5, !9, i64 12}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
