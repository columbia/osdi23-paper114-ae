; ModuleID = 'crypto/bn/bn_lib.c'
source_filename = "crypto/bn/bn_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bn_mont_ctx_st = type { i32, %struct.bignum_st, %struct.bignum_st, %struct.bignum_st, [2 x i64], i32 }
%struct.bignum_ctx = type opaque
%struct.bn_gencb_st = type { i32, i8*, %union.anon }
%union.anon = type { void (i32, i32, i8*)* }

@bn_limit_bits = internal unnamed_addr global i32 0, align 4
@bn_limit_bits_high = internal unnamed_addr global i32 0, align 4
@bn_limit_bits_low = internal unnamed_addr global i32 0, align 4
@bn_limit_bits_mont = internal unnamed_addr global i32 0, align 4
@BN_value_one.data_one = internal constant i64 1, align 8
@BN_value_one.const_one = internal constant %struct.bignum_st { i64* @BN_value_one.data_one, i32 1, i32 1, i32 0, i32 2 }, align 8
@.str = private unnamed_addr constant [19 x i8] c"crypto/bn/bn_lib.c\00", align 1
@__func__.BN_new = private unnamed_addr constant [7 x i8] c"BN_new\00", align 1
@__func__.BN_GENCB_new = private unnamed_addr constant [13 x i8] c"BN_GENCB_new\00", align 1
@__func__.bn_expand_internal = private unnamed_addr constant [19 x i8] c"bn_expand_internal\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BN_set_params(i32 noundef %mult, i32 noundef %high, i32 noundef %low, i32 noundef %mont) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %mult, -1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %0 = icmp ult i32 %mult, 31
  %spec.store.select = select i1 %0, i32 %mult, i32 31
  store i32 %spec.store.select, i32* @bn_limit_bits, align 4, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %cmp4 = icmp sgt i32 %high, -1
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end3
  %1 = icmp ult i32 %high, 31
  %spec.store.select25 = select i1 %1, i32 %high, i32 31
  store i32 %spec.store.select25, i32* @bn_limit_bits_high, align 4, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end3
  %cmp11 = icmp sgt i32 %low, -1
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end10
  %2 = icmp ult i32 %low, 31
  %spec.store.select26 = select i1 %2, i32 %low, i32 31
  store i32 %spec.store.select26, i32* @bn_limit_bits_low, align 4, !tbaa !4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end10
  %cmp18 = icmp sgt i32 %mont, -1
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end17
  %3 = icmp ult i32 %mont, 31
  %spec.store.select27 = select i1 %3, i32 %mont, i32 31
  store i32 %spec.store.select27, i32* @bn_limit_bits_mont, align 4, !tbaa !4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BN_get_params(i32 noundef %which) local_unnamed_addr #1 {
entry:
  switch i32 %which, label %return [
    i32 0, label %if.then
    i32 1, label %if.then2
    i32 2, label %if.then5
    i32 3, label %if.then8
  ]

if.then:                                          ; preds = %entry
  %0 = load i32, i32* @bn_limit_bits, align 4, !tbaa !4
  br label %return

if.then2:                                         ; preds = %entry
  %1 = load i32, i32* @bn_limit_bits_high, align 4, !tbaa !4
  br label %return

if.then5:                                         ; preds = %entry
  %2 = load i32, i32* @bn_limit_bits_low, align 4, !tbaa !4
  br label %return

if.then8:                                         ; preds = %entry
  %3 = load i32, i32* @bn_limit_bits_mont, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then2 ], [ %2, %if.then5 ], [ %3, %if.then8 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bignum_st* @BN_value_one() local_unnamed_addr #2 {
entry:
  ret %struct.bignum_st* @BN_value_one.const_one
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @BN_num_bits_word(i64 noundef %l) local_unnamed_addr #2 {
entry:
  %cmp = icmp ne i64 %l, 0
  %shr = lshr i64 %l, 32
  %0 = icmp ugt i64 %l, 4294967295
  %and3 = select i1 %0, i32 32, i32 0
  %1 = zext i1 %cmp to i32
  %add = or i32 %and3, %1
  %xor7 = select i1 %0, i64 %shr, i64 %l
  %shr8 = lshr i64 %xor7, 16
  %2 = icmp ugt i64 %xor7, 65535
  %and13 = select i1 %2, i32 16, i32 0
  %add15 = or i32 %add, %and13
  %xor19 = select i1 %2, i64 %shr8, i64 %xor7
  %shr20 = lshr i64 %xor19, 8
  %3 = icmp ugt i64 %xor19, 255
  %and25 = select i1 %3, i32 8, i32 0
  %add27 = or i32 %add15, %and25
  %xor31 = select i1 %3, i64 %shr20, i64 %xor19
  %shr32 = lshr i64 %xor31, 4
  %4 = icmp ugt i64 %xor31, 15
  %and37 = select i1 %4, i32 4, i32 0
  %add39 = or i32 %add27, %and37
  %xor43 = select i1 %4, i64 %shr32, i64 %xor31
  %shr44 = lshr i64 %xor43, 2
  %5 = icmp ugt i64 %xor43, 3
  %and49 = select i1 %5, i32 2, i32 0
  %add51 = or i32 %add39, %and49
  %xor55 = select i1 %5, i64 %shr44, i64 %xor43
  %6 = icmp ugt i64 %xor55, 1
  %shr59.neg116 = zext i1 %6 to i32
  %add63 = add nuw nsw i32 %add51, %shr59.neg116
  ret i32 %add63
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @BN_num_bits(%struct.bignum_st* nocapture noundef readonly %a) local_unnamed_addr #4 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %sub = add nsw i32 %0, -1
  %flags = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 4
  %1 = load i32, i32* %flags, align 4, !tbaa !11
  %and = and i32 %1, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @bn_num_bits_consttime(%struct.bignum_st* noundef nonnull %a) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %a) #14
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %mul = shl nsw i32 %sub, 6
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !12
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %call5 = tail call i32 @BN_num_bits_word(i64 noundef %3) #14
  %add = add nsw i32 %call5, %mul
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %add, %if.end4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @bn_num_bits_consttime(%struct.bignum_st* nocapture noundef readonly %a) unnamed_addr #4 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %sub = add nsw i32 %0, -1
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %1 = load i32, i32* %dmax, align 4, !tbaa !15
  %cmp26 = icmp sgt i32 %1, 0
  br i1 %cmp26, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !12
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %past_i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %and.demorgan, %for.body ]
  %ret.027 = phi i32 [ 0, %for.body.lr.ph ], [ %add5, %for.body ]
  %3 = trunc i64 %indvars.iv to i32
  %call = tail call fastcc i32 @constant_time_eq_int(i32 noundef %sub, i32 noundef %3) #14
  %and.demorgan = or i32 %call, %past_i.028
  %and = and i32 %and.demorgan, 64
  %and2 = xor i32 %and, 64
  %add = add i32 %and2, %ret.027
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %indvars.iv
  %4 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %call3 = tail call i32 @BN_num_bits_word(i64 noundef %4) #14
  %and4 = and i32 %call3, %call
  %add5 = add i32 %add, %and4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %for.body, %entry
  %ret.0.lcssa = phi i32 [ 0, %entry ], [ %add5, %for.body ]
  %call6 = tail call fastcc i32 @constant_time_eq_int(i32 noundef %sub, i32 noundef -1) #14
  %neg7 = xor i32 %call6, -1
  %and8 = and i32 %ret.0.lcssa, %neg7
  ret i32 %and8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BN_is_zero(%struct.bignum_st* nocapture noundef readonly %a) local_unnamed_addr #1 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define void @BN_clear_free(%struct.bignum_st* noundef %a) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.bignum_st* %a, null
  br i1 %cmp, label %if.end7, label %if.end

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %0 = load i64*, i64** %d, align 8, !tbaa !12
  %cmp1.not = icmp eq i64* %0, null
  br i1 %cmp1.not, label %if.end3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef nonnull %a, i32 noundef 2) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  tail call fastcc void @bn_free_d(%struct.bignum_st* noundef nonnull %a, i32 noundef 1) #14
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %call4 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef nonnull %a, i32 noundef 1) #14
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  %1 = bitcast %struct.bignum_st* %a to i8*
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 24) #15
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 221) #15
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then6, %if.end3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BN_get_flags(%struct.bignum_st* nocapture noundef readonly %b, i32 noundef %n) local_unnamed_addr #1 {
entry:
  %flags = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4, !tbaa !11
  %and = and i32 %0, %n
  ret i32 %and
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @bn_free_d(%struct.bignum_st* nocapture noundef readonly %a, i32 noundef %clear) unnamed_addr #5 {
entry:
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %a, i32 noundef 8) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.bignum_st* %a to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !12
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %2 = load i32, i32* %dmax, align 4, !tbaa !15
  %conv = sext i32 %2 to i64
  %mul = shl nsw i64 %conv, 3
  tail call void @CRYPTO_secure_clear_free(i8* noundef %1, i64 noundef %mul, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 205) #15
  br label %if.end9

if.else:                                          ; preds = %entry
  %cmp.not = icmp eq i32 %clear, 0
  %3 = bitcast %struct.bignum_st* %a to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !12
  br i1 %cmp.not, label %if.else7, label %if.then2

if.then2:                                         ; preds = %if.else
  %dmax4 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %5 = load i32, i32* %dmax4, align 4, !tbaa !15
  %conv5 = sext i32 %5 to i64
  %mul6 = shl nsw i64 %conv5, 3
  tail call void @CRYPTO_clear_free(i8* noundef %4, i64 noundef %mul6, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 207) #15
  br label %if.end9

if.else7:                                         ; preds = %if.else
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 209) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.else7, %if.then
  ret void
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #6

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define void @BN_free(%struct.bignum_st* noundef %a) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.bignum_st* %a, null
  br i1 %cmp, label %if.end5, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef nonnull %a, i32 noundef 2) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call fastcc void @bn_free_d(%struct.bignum_st* noundef nonnull %a, i32 noundef 0) #14
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %flags = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4, !tbaa !11
  %and = and i32 %0, 1
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end2
  %1 = bitcast %struct.bignum_st* %a to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 232) #15
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then4, %if.end2
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define void @bn_init(%struct.bignum_st* nocapture noundef writeonly %a) local_unnamed_addr #7 {
entry:
  %0 = bitcast %struct.bignum_st* %a to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_new() local_unnamed_addr #5 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 247) #15
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.BN_new, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.bignum_st*
  %flags = getelementptr inbounds i8, i8* %call, i64 20
  %1 = bitcast i8* %flags to i32*
  store i32 1, i32* %1, align 4, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bignum_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.bignum_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

declare void @ERR_new() local_unnamed_addr #6

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #6

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_secure_new() local_unnamed_addr #5 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #14
  %cmp.not = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4, !tbaa !11
  %or = or i32 %0, 8
  store i32 %or, i32* %flags, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.bignum_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @bn_expand2(%struct.bignum_st* noundef %b, i32 noundef %words) local_unnamed_addr #5 {
entry:
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 2
  %0 = load i32, i32* %dmax, align 4, !tbaa !15
  %cmp = icmp slt i32 %0, %words
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %call = tail call fastcc i64* @bn_expand_internal(%struct.bignum_st* noundef nonnull %b, i32 noundef %words) #14
  %tobool.not = icmp eq i64* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !12
  %cmp2.not = icmp eq i64* %1, null
  br i1 %cmp2.not, label %cleanup.thread, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call fastcc void @bn_free_d(%struct.bignum_st* noundef nonnull %b, i32 noundef 1) #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end, %if.then3
  store i64* %call, i64** %d, align 8, !tbaa !12
  store i32 %words, i32* %dmax, align 4, !tbaa !15
  br label %return

return:                                           ; preds = %entry, %cleanup.thread, %if.then
  %retval.1 = phi %struct.bignum_st* [ null, %if.then ], [ %b, %cleanup.thread ], [ %b, %entry ]
  ret %struct.bignum_st* %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64* @bn_expand_internal(%struct.bignum_st* nocapture noundef readonly %b, i32 noundef %words) unnamed_addr #5 {
entry:
  %cmp = icmp sgt i32 %words, 8388607
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.bn_expand_internal, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 114, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %b, i32 noundef 2) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.bn_expand_internal, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 105, i8* noundef null) #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %b, i32 noundef 8) #14
  %tobool4.not = icmp eq i32 %call3, 0
  %conv7 = sext i32 %words to i64
  %mul8 = shl nsw i64 %conv7, 3
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end2
  %call6 = tail call i8* @CRYPTO_secure_zalloc(i64 noundef %mul8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 279) #15
  br label %if.end10

if.else:                                          ; preds = %if.end2
  %call9 = tail call i8* @CRYPTO_zalloc(i64 noundef %mul8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 281) #15
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %a.0.in = phi i8* [ %call6, %if.then5 ], [ %call9, %if.else ]
  %a.0 = bitcast i8* %a.0.in to i64*
  %cmp11 = icmp eq i8* %a.0.in, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.bn_expand_internal, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %cmp15 = icmp sgt i32 %0, 0
  br i1 %cmp15, label %if.then17, label %cleanup

if.then17:                                        ; preds = %if.end14
  %1 = bitcast %struct.bignum_st* %b to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !12
  %conv1932 = zext i32 %0 to i64
  %mul20 = shl nuw nsw i64 %conv1932, 3
  %call21 = tail call i8* @memcpy(i8* noundef nonnull %a.0.in, i8* noundef %2, i64 noundef %mul20) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then17, %if.then13, %if.then1, %if.then
  %retval.0 = phi i64* [ null, %if.then ], [ null, %if.then1 ], [ null, %if.then13 ], [ %a.0, %if.then17 ], [ %a.0, %if.end14 ]
  ret i64* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %a) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.bignum_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef nonnull %a, i32 noundef 8) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %call1 = tail call %struct.bignum_st* @BN_secure_new() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call2 = tail call %struct.bignum_st* @BN_new() #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.bignum_st* [ %call1, %cond.true ], [ %call2, %cond.false ]
  %cmp3 = icmp eq %struct.bignum_st* %cond, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %cond.end
  %call6 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %cond, %struct.bignum_st* noundef nonnull %a) #14
  %tobool7.not = icmp eq %struct.bignum_st* %call6, null
  br i1 %tobool7.not, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end5
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %cond) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %cond.end, %entry, %if.then8
  %retval.0 = phi %struct.bignum_st* [ null, %if.then8 ], [ null, %entry ], [ null, %cond.end ], [ %cond, %if.end5 ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %a, %struct.bignum_st* noundef readonly %b) local_unnamed_addr #5 {
entry:
  %call = tail call i32 @BN_get_flags(%struct.bignum_st* noundef %b, i32 noundef 4) #14
  %tobool.not = icmp eq i32 %call, 0
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 2
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %cond.in = select i1 %tobool.not, i32* %top, i32* %dmax
  %cond = load i32, i32* %cond.in, align 4, !tbaa !4
  %cmp = icmp eq %struct.bignum_st* %a, %b
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %a, i32 noundef %cond) #14
  %cmp2 = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %cmp6 = icmp sgt i32 %0, 0
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end4
  %1 = bitcast %struct.bignum_st* %a to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !12
  %3 = bitcast %struct.bignum_st* %b to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !12
  %conv = sext i32 %cond to i64
  %mul = shl nsw i64 %conv, 3
  %call9 = tail call i8* @memcpy(i8* noundef %2, i8* noundef %4, i64 noundef %mul) #15
  %.pre = load i32, i32* %top, align 8, !tbaa !8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4
  %5 = phi i32 [ %.pre, %if.then7 ], [ %0, %if.end4 ]
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 3
  %6 = load i32, i32* %neg, align 8, !tbaa !18
  %neg11 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  store i32 %6, i32* %neg11, align 8, !tbaa !18
  %top13 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  store i32 %5, i32* %top13, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi %struct.bignum_st* [ %a, %if.end10 ], [ %b, %entry ], [ null, %if.end ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %a, i32 noundef %words) local_unnamed_addr #5 {
entry:
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %0 = load i32, i32* %dmax, align 4, !tbaa !15
  %cmp.not = icmp slt i32 %0, %words
  br i1 %cmp.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  %call = tail call %struct.bignum_st* @bn_expand2(%struct.bignum_st* noundef nonnull %a, i32 noundef %words) #14
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.bignum_st* [ %call, %cond.false ], [ %a, %entry ]
  ret %struct.bignum_st* %cond
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @BN_swap(%struct.bignum_st* nocapture noundef %a, %struct.bignum_st* nocapture noundef %b) local_unnamed_addr #10 {
entry:
  %flags = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4, !tbaa !11
  %flags1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 4
  %1 = load i32, i32* %flags1, align 4, !tbaa !11
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !12
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %3 = load i32, i32* %top, align 8, !tbaa !8
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %4 = load i32, i32* %dmax, align 4, !tbaa !15
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %5 = load i32, i32* %neg, align 8, !tbaa !18
  %d2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %6 = load i64*, i64** %d2, align 8, !tbaa !12
  store i64* %6, i64** %d, align 8, !tbaa !12
  %top4 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %7 = load i32, i32* %top4, align 8, !tbaa !8
  store i32 %7, i32* %top, align 8, !tbaa !8
  %dmax6 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 2
  %8 = load i32, i32* %dmax6, align 4, !tbaa !15
  store i32 %8, i32* %dmax, align 4, !tbaa !15
  %neg8 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 3
  %9 = load i32, i32* %neg8, align 8, !tbaa !18
  store i32 %9, i32* %neg, align 8, !tbaa !18
  store i64* %2, i64** %d2, align 8, !tbaa !12
  store i32 %3, i32* %top4, align 8, !tbaa !8
  store i32 %4, i32* %dmax6, align 4, !tbaa !15
  store i32 %5, i32* %neg8, align 8, !tbaa !18
  %and = and i32 %0, 1
  %and14 = and i32 %1, 14
  %or = or i32 %and14, %and
  store i32 %or, i32* %flags, align 4, !tbaa !11
  %and16 = and i32 %1, 1
  %and17 = and i32 %0, 14
  %or18 = or i32 %and16, %and17
  store i32 %or18, i32* %flags1, align 4, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @BN_clear(%struct.bignum_st* noundef %a) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.bignum_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %0 = load i64*, i64** %d, align 8, !tbaa !12
  %cmp1.not = icmp eq i64* %0, null
  br i1 %cmp1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = bitcast i64* %0 to i8*
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %2 = load i32, i32* %dmax, align 4, !tbaa !15
  %conv = sext i32 %2 to i64
  %mul = shl nsw i64 %conv, 3
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef %mul) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !18
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  store i32 0, i32* %top, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.end4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @BN_get_word(%struct.bignum_st* nocapture noundef readonly %a) local_unnamed_addr #1 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %0, 1
  br i1 %cmp2, label %if.then3, label %return

if.then3:                                         ; preds = %if.else
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !12
  %2 = load i64, i64* %1, align 8, !tbaa !13
  br label %return

return:                                           ; preds = %if.else, %entry, %if.then3
  %retval.0 = phi i64 [ %2, %if.then3 ], [ -1, %entry ], [ 0, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_set_word(%struct.bignum_st* noundef %a, i64 noundef %w) local_unnamed_addr #5 {
entry:
  %call = tail call fastcc %struct.bignum_st* @bn_expand(%struct.bignum_st* noundef %a) #14
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !18
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %0 = load i64*, i64** %d, align 8, !tbaa !12
  store i64 %w, i64* %0, align 8, !tbaa !13
  %tobool.not = icmp ne i64 %w, 0
  %cond = zext i1 %tobool.not to i32
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  store i32 %cond, i32* %top, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @bn_expand(%struct.bignum_st* noundef %a) unnamed_addr #5 {
entry:
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %0 = load i32, i32* %dmax, align 4, !tbaa !15
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %return, label %if.end3

if.end3:                                          ; preds = %entry
  %call = tail call %struct.bignum_st* @bn_expand2(%struct.bignum_st* noundef nonnull %a, i32 noundef 1) #14
  br label %return

return:                                           ; preds = %entry, %if.end3
  %retval.0 = phi %struct.bignum_st* [ %call, %if.end3 ], [ %a, %entry ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_bin2bn(i8* nocapture noundef readonly %s, i32 noundef %len, %struct.bignum_st* noundef %ret) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.bignum_st* %ret, null
  br i1 %cmp, label %if.end, label %for.cond.preheader

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_new() #14
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.end
  %bn.079 = phi %struct.bignum_st* [ %call, %if.end ], [ null, %entry ]
  %ret.addr.076 = phi %struct.bignum_st* [ %call, %if.end ], [ %ret, %entry ]
  %cmp460 = icmp sgt i32 %len, 0
  br i1 %cmp460, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond.preheader, %for.inc
  %len.addr.062 = phi i32 [ %dec, %for.inc ], [ %len, %for.cond.preheader ]
  %s.addr.061 = phi i8* [ %incdec.ptr, %for.inc ], [ %s, %for.cond.preheader ]
  %0 = load i8, i8* %s.addr.061, align 1, !tbaa !19
  %cmp5 = icmp eq i8 %0, 0
  br i1 %cmp5, label %for.inc, label %if.end10

for.inc:                                          ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %s.addr.061, i64 1
  %dec = add nsw i32 %len.addr.062, -1
  %cmp4 = icmp sgt i32 %len.addr.062, 1
  br i1 %cmp4, label %land.rhs, label %if.then9, !llvm.loop !20

for.end:                                          ; preds = %for.cond.preheader
  %cmp7 = icmp eq i32 %len, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.inc, %for.end
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.addr.076, i64 0, i32 1
  store i32 0, i32* %top, align 8, !tbaa !8
  br label %cleanup

if.end10:                                         ; preds = %land.rhs, %for.end
  %s.addr.059 = phi i8* [ %s, %for.end ], [ %s.addr.061, %land.rhs ]
  %len.addr.057 = phi i32 [ %len, %for.end ], [ %len.addr.062, %land.rhs ]
  %sub = add i32 %len.addr.057, -1
  %div = lshr i32 %sub, 3
  %add = add nuw nsw i32 %div, 1
  %call12 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %ret.addr.076, i32 noundef %add) #14
  %cmp13 = icmp eq %struct.bignum_st* %call12, null
  br i1 %cmp13, label %if.then15, label %while.body.lr.ph

if.then15:                                        ; preds = %if.end10
  tail call void @BN_free(%struct.bignum_st* noundef %bn.079) #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end10
  %top17 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.addr.076, i64 0, i32 1
  store i32 %add, i32* %top17, align 8, !tbaa !8
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.addr.076, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !18
  %rem = and i32 %sub, 7
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.addr.076, i64 0, i32 0
  %xtraiter = and i32 %len.addr.057, 1
  %1 = icmp eq i32 %sub, 0
  br i1 %1, label %while.end.unr-lcssa, label %while.body.lr.ph.new

while.body.lr.ph.new:                             ; preds = %while.body.lr.ph
  %unroll_iter = and i32 %len.addr.057, -2
  br label %while.body

while.body:                                       ; preds = %if.end26.1, %while.body.lr.ph.new
  %l.069 = phi i64 [ 0, %while.body.lr.ph.new ], [ %l.1.1, %if.end26.1 ]
  %m.068 = phi i32 [ %rem, %while.body.lr.ph.new ], [ %m.1.1, %if.end26.1 ]
  %i.067 = phi i32 [ %add, %while.body.lr.ph.new ], [ %i.1.1, %if.end26.1 ]
  %s.addr.166 = phi i8* [ %s.addr.059, %while.body.lr.ph.new ], [ %incdec.ptr19.1, %if.end26.1 ]
  %niter = phi i32 [ 0, %while.body.lr.ph.new ], [ %niter.next.1, %if.end26.1 ]
  %shl = shl i64 %l.069, 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %s.addr.166, i64 1
  %2 = load i8, i8* %s.addr.166, align 1, !tbaa !19
  %conv20 = zext i8 %2 to i64
  %or = or i64 %shl, %conv20
  %dec21 = add i32 %m.068, -1
  %cmp22 = icmp eq i32 %m.068, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %while.body
  %3 = load i64*, i64** %d, align 8, !tbaa !12
  %dec25 = add i32 %i.067, -1
  %idxprom = zext i32 %dec25 to i64
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom
  store i64 %or, i64* %arrayidx, align 8, !tbaa !13
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %while.body
  %i.1 = phi i32 [ %dec25, %if.then24 ], [ %i.067, %while.body ]
  %m.1 = phi i32 [ 7, %if.then24 ], [ %dec21, %while.body ]
  %l.1 = phi i64 [ 0, %if.then24 ], [ %or, %while.body ]
  %shl.1 = shl i64 %l.1, 8
  %incdec.ptr19.1 = getelementptr inbounds i8, i8* %s.addr.166, i64 2
  %4 = load i8, i8* %incdec.ptr19, align 1, !tbaa !19
  %conv20.1 = zext i8 %4 to i64
  %or.1 = or i64 %shl.1, %conv20.1
  %dec21.1 = add i32 %m.1, -1
  %cmp22.1 = icmp eq i32 %m.1, 0
  br i1 %cmp22.1, label %if.then24.1, label %if.end26.1

if.then24.1:                                      ; preds = %if.end26
  %5 = load i64*, i64** %d, align 8, !tbaa !12
  %dec25.1 = add i32 %i.1, -1
  %idxprom.1 = zext i32 %dec25.1 to i64
  %arrayidx.1 = getelementptr inbounds i64, i64* %5, i64 %idxprom.1
  store i64 %or.1, i64* %arrayidx.1, align 8, !tbaa !13
  br label %if.end26.1

if.end26.1:                                       ; preds = %if.then24.1, %if.end26
  %i.1.1 = phi i32 [ %dec25.1, %if.then24.1 ], [ %i.1, %if.end26 ]
  %m.1.1 = phi i32 [ 7, %if.then24.1 ], [ %dec21.1, %if.end26 ]
  %l.1.1 = phi i64 [ 0, %if.then24.1 ], [ %or.1, %if.end26 ]
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %while.end.unr-lcssa, label %while.body, !llvm.loop !21

while.end.unr-lcssa:                              ; preds = %if.end26.1, %while.body.lr.ph
  %l.069.unr = phi i64 [ 0, %while.body.lr.ph ], [ %l.1.1, %if.end26.1 ]
  %m.068.unr = phi i32 [ %rem, %while.body.lr.ph ], [ %m.1.1, %if.end26.1 ]
  %i.067.unr = phi i32 [ %add, %while.body.lr.ph ], [ %i.1.1, %if.end26.1 ]
  %s.addr.166.unr = phi i8* [ %s.addr.059, %while.body.lr.ph ], [ %incdec.ptr19.1, %if.end26.1 ]
  %lcmp.mod.not = icmp ne i32 %xtraiter, 0
  %cmp22.epil = icmp eq i32 %m.068.unr, 0
  %or.cond = select i1 %lcmp.mod.not, i1 %cmp22.epil, i1 false
  br i1 %or.cond, label %if.then24.epil, label %while.end

if.then24.epil:                                   ; preds = %while.end.unr-lcssa
  %shl.epil = shl i64 %l.069.unr, 8
  %6 = load i8, i8* %s.addr.166.unr, align 1, !tbaa !19
  %conv20.epil = zext i8 %6 to i64
  %or.epil = or i64 %shl.epil, %conv20.epil
  %7 = load i64*, i64** %d, align 8, !tbaa !12
  %dec25.epil = add i32 %i.067.unr, -1
  %idxprom.epil = zext i32 %dec25.epil to i64
  %arrayidx.epil = getelementptr inbounds i64, i64* %7, i64 %idxprom.epil
  store i64 %or.epil, i64* %arrayidx.epil, align 8, !tbaa !13
  br label %while.end

while.end:                                        ; preds = %if.then24.epil, %while.end.unr-lcssa
  tail call void @bn_correct_top(%struct.bignum_st* noundef nonnull %ret.addr.076) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end, %if.then15, %if.then9
  %retval.0 = phi %struct.bignum_st* [ %ret.addr.076, %if.then9 ], [ null, %if.then15 ], [ %ret.addr.076, %while.end ], [ null, %if.end ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @bn_correct_top(%struct.bignum_st* nocapture noundef %a) local_unnamed_addr #11 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !12
  %idxprom22 = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom22
  br label %for.body

for.body:                                         ; preds = %if.then, %for.inc
  %tmp_top.025 = phi i32 [ %0, %if.then ], [ %dec, %for.inc ]
  %ftl.024 = phi i64* [ %arrayidx, %if.then ], [ %incdec.ptr, %for.inc ]
  %incdec.ptr = getelementptr inbounds i64, i64* %ftl.024, i64 -1
  %2 = load i64, i64* %incdec.ptr, align 8, !tbaa !13
  %cmp2.not = icmp eq i64 %2, 0
  br i1 %cmp2.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %tmp_top.025, -1
  %cmp1 = icmp sgt i32 %tmp_top.025, 1
  br i1 %cmp1, label %for.body, label %for.end, !llvm.loop !22

for.end:                                          ; preds = %for.inc, %for.body
  %tmp_top.0.lcssa = phi i32 [ %tmp_top.025, %for.body ], [ 0, %for.inc ]
  store i32 %tmp_top.0.lcssa, i32* %top, align 8, !tbaa !8
  br label %if.end5

if.end5:                                          ; preds = %for.end, %entry
  %3 = phi i32 [ %tmp_top.0.lcssa, %for.end ], [ %0, %entry ]
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !18
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_bn2binpad(%struct.bignum_st* nocapture noundef readonly %a, i8* noundef %to, i32 noundef %tolen) local_unnamed_addr #5 {
entry:
  %cmp = icmp slt i32 %tolen, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @bn2binpad(%struct.bignum_st* noundef %a, i8* noundef %to, i32 noundef %tolen, i32 noundef 0) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bn2binpad(%struct.bignum_st* nocapture noundef readonly %a, i8* noundef %to, i32 noundef %tolen, i32 noundef %endianess) unnamed_addr #5 {
entry:
  %temp = alloca %struct.bignum_st, align 8
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %a) #14
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %cmp = icmp eq i32 %tolen, -1
  br i1 %cmp, label %if.end9, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %div, %tolen
  br i1 %cmp1, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.else
  %0 = bitcast %struct.bignum_st* %temp to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #16
  %1 = bitcast %struct.bignum_st* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !23
  call void @bn_correct_top(%struct.bignum_st* noundef nonnull %temp) #14
  %call3 = call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %temp) #14
  %add4 = add nsw i32 %call3, 7
  %div5 = sdiv i32 %add4, 8
  %cmp6 = icmp sgt i32 %div5, %tolen
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #16
  br i1 %cmp6, label %cleanup39, label %if.end9

if.end9:                                          ; preds = %entry, %if.else, %if.then2
  %tolen.addr.0 = phi i32 [ %tolen, %if.then2 ], [ %tolen, %if.else ], [ %div, %entry ]
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 2
  %2 = load i32, i32* %dmax, align 4, !tbaa !15
  %cmp10 = icmp eq i32 %2, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %conv13 = sext i32 %tolen.addr.0 to i64
  tail call void @OPENSSL_cleanse(i8* noundef %to, i64 noundef %conv13) #15
  br label %cleanup39

if.end14:                                         ; preds = %if.end9
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %3 = load i32, i32* %top, align 8, !tbaa !8
  %mul15 = shl nsw i32 %3, 3
  %conv16 = sext i32 %mul15 to i64
  %cmp17 = icmp eq i32 %endianess, 0
  %idx.ext = sext i32 %tolen.addr.0 to i64
  %cmp2278.not = icmp eq i32 %tolen.addr.0, 0
  br i1 %cmp2278.not, label %cleanup39, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end14
  %to.addr.0.idx = select i1 %cmp17, i64 %idx.ext, i64 0
  %to.addr.0 = getelementptr i8, i8* %to, i64 %to.addr.0.idx
  %mul = shl nsw i32 %2, 3
  %conv = sext i32 %mul to i64
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %sub.neg = sub nsw i64 1, %conv
  %umax = call i64 @llvm.umax.i64(i64 %idx.ext, i64 1)
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %to.addr.181 = phi i8* [ %to.addr.0, %for.body.lr.ph ], [ %to.addr.2, %for.body ]
  %j.080 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %i.079 = phi i64 [ 0, %for.body.lr.ph ], [ %add38, %for.body ]
  %4 = load i64*, i64** %d, align 8, !tbaa !12
  %div24 = lshr i64 %i.079, 3
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %div24
  %5 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %sub25 = sub i64 %j.080, %conv16
  %rem = shl i64 %i.079, 3
  %mul27 = and i64 %rem, 56
  %shr28 = lshr i64 %5, %mul27
  %isneg = icmp slt i64 %sub25, 0
  %6 = trunc i64 %shr28 to i8
  %conv29 = select i1 %isneg, i8 %6, i8 0
  %incdec.ptr34 = getelementptr inbounds i8, i8* %to.addr.181, i64 1
  %incdec.ptr = getelementptr inbounds i8, i8* %to.addr.181, i64 -1
  %to.addr.181.sink = select i1 %cmp17, i8* %incdec.ptr, i8* %to.addr.181
  %to.addr.2 = select i1 %cmp17, i8* %incdec.ptr, i8* %incdec.ptr34
  store i8 %conv29, i8* %to.addr.181.sink, align 1, !tbaa !19
  %sub36 = add i64 %sub.neg, %i.079
  %shr37 = lshr i64 %sub36, 63
  %add38 = add i64 %shr37, %i.079
  %inc = add nuw i64 %j.080, 1
  %exitcond.not = icmp eq i64 %inc, %umax
  br i1 %exitcond.not, label %cleanup39, label %for.body, !llvm.loop !25

cleanup39:                                        ; preds = %for.body, %if.end14, %if.then2, %if.then12
  %retval.1 = phi i32 [ %tolen.addr.0, %if.then12 ], [ -1, %if.then2 ], [ 0, %if.end14 ], [ %tolen.addr.0, %for.body ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_bn2bin(%struct.bignum_st* nocapture noundef readonly %a, i8* noundef %to) local_unnamed_addr #5 {
entry:
  %call = tail call fastcc i32 @bn2binpad(%struct.bignum_st* noundef %a, i8* noundef %to, i32 noundef -1, i32 noundef 0) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_lebin2bn(i8* nocapture noundef readonly %s, i32 noundef %len, %struct.bignum_st* noundef %ret) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.bignum_st* %ret, null
  br i1 %cmp, label %if.end, label %if.end3

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_new() #14
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %entry, %if.end
  %bn.063 = phi %struct.bignum_st* [ %call, %if.end ], [ null, %entry ]
  %ret.addr.062 = phi %struct.bignum_st* [ %call, %if.end ], [ %ret, %entry ]
  %idx.ext = sext i32 %len to i64
  %add.ptr = getelementptr inbounds i8, i8* %s, i64 %idx.ext
  %cmp469 = icmp sgt i32 %len, 0
  br i1 %cmp469, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %if.end3, %for.inc
  %len.addr.071 = phi i32 [ %dec, %for.inc ], [ %len, %if.end3 ]
  %s.addr.070 = phi i8* [ %arrayidx, %for.inc ], [ %add.ptr, %if.end3 ]
  %arrayidx = getelementptr inbounds i8, i8* %s.addr.070, i64 -1
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !19
  %cmp5 = icmp eq i8 %0, 0
  br i1 %cmp5, label %for.inc, label %if.end10

for.inc:                                          ; preds = %land.rhs
  %dec = add nsw i32 %len.addr.071, -1
  %cmp4 = icmp sgt i32 %len.addr.071, 1
  br i1 %cmp4, label %land.rhs, label %if.then9, !llvm.loop !26

for.end:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %len, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.inc, %for.end
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.addr.062, i64 0, i32 1
  store i32 0, i32* %top, align 8, !tbaa !8
  br label %cleanup

if.end10:                                         ; preds = %land.rhs, %for.end
  %s.addr.068 = phi i8* [ %add.ptr, %for.end ], [ %s.addr.070, %land.rhs ]
  %len.addr.066 = phi i32 [ %len, %for.end ], [ %len.addr.071, %land.rhs ]
  %sub = add i32 %len.addr.066, -1
  %div = lshr i32 %sub, 3
  %add = add nuw nsw i32 %div, 1
  %call12 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %ret.addr.062, i32 noundef %add) #14
  %cmp13 = icmp eq %struct.bignum_st* %call12, null
  br i1 %cmp13, label %if.then15, label %while.body.lr.ph

if.then15:                                        ; preds = %if.end10
  tail call void @BN_free(%struct.bignum_st* noundef %bn.063) #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end10
  %top17 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.addr.062, i64 0, i32 1
  store i32 %add, i32* %top17, align 8, !tbaa !8
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.addr.062, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !18
  %rem = and i32 %sub, 7
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %ret.addr.062, i64 0, i32 0
  %xtraiter = and i32 %len.addr.066, 1
  %1 = icmp eq i32 %sub, 0
  br i1 %1, label %while.end.unr-lcssa, label %while.body.lr.ph.new

while.body.lr.ph.new:                             ; preds = %while.body.lr.ph
  %unroll_iter = and i32 %len.addr.066, -2
  br label %while.body

while.body:                                       ; preds = %if.end27.1, %while.body.lr.ph.new
  %l.078 = phi i64 [ 0, %while.body.lr.ph.new ], [ %l.1.1, %if.end27.1 ]
  %m.077 = phi i32 [ %rem, %while.body.lr.ph.new ], [ %m.1.1, %if.end27.1 ]
  %i.076 = phi i32 [ %add, %while.body.lr.ph.new ], [ %i.1.1, %if.end27.1 ]
  %s.addr.175 = phi i8* [ %s.addr.068, %while.body.lr.ph.new ], [ %incdec.ptr19.1, %if.end27.1 ]
  %niter = phi i32 [ 0, %while.body.lr.ph.new ], [ %niter.next.1, %if.end27.1 ]
  %incdec.ptr19 = getelementptr inbounds i8, i8* %s.addr.175, i64 -1
  %shl = shl i64 %l.078, 8
  %2 = load i8, i8* %incdec.ptr19, align 1, !tbaa !19
  %conv20 = zext i8 %2 to i64
  %or = or i64 %shl, %conv20
  %dec21 = add i32 %m.077, -1
  %cmp22 = icmp eq i32 %m.077, 0
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %while.body
  %3 = load i64*, i64** %d, align 8, !tbaa !12
  %dec25 = add i32 %i.076, -1
  %idxprom = zext i32 %dec25 to i64
  %arrayidx26 = getelementptr inbounds i64, i64* %3, i64 %idxprom
  store i64 %or, i64* %arrayidx26, align 8, !tbaa !13
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %while.body
  %i.1 = phi i32 [ %dec25, %if.then24 ], [ %i.076, %while.body ]
  %m.1 = phi i32 [ 7, %if.then24 ], [ %dec21, %while.body ]
  %l.1 = phi i64 [ 0, %if.then24 ], [ %or, %while.body ]
  %incdec.ptr19.1 = getelementptr inbounds i8, i8* %s.addr.175, i64 -2
  %shl.1 = shl i64 %l.1, 8
  %4 = load i8, i8* %incdec.ptr19.1, align 1, !tbaa !19
  %conv20.1 = zext i8 %4 to i64
  %or.1 = or i64 %shl.1, %conv20.1
  %dec21.1 = add i32 %m.1, -1
  %cmp22.1 = icmp eq i32 %m.1, 0
  br i1 %cmp22.1, label %if.then24.1, label %if.end27.1

if.then24.1:                                      ; preds = %if.end27
  %5 = load i64*, i64** %d, align 8, !tbaa !12
  %dec25.1 = add i32 %i.1, -1
  %idxprom.1 = zext i32 %dec25.1 to i64
  %arrayidx26.1 = getelementptr inbounds i64, i64* %5, i64 %idxprom.1
  store i64 %or.1, i64* %arrayidx26.1, align 8, !tbaa !13
  br label %if.end27.1

if.end27.1:                                       ; preds = %if.then24.1, %if.end27
  %i.1.1 = phi i32 [ %dec25.1, %if.then24.1 ], [ %i.1, %if.end27 ]
  %m.1.1 = phi i32 [ 7, %if.then24.1 ], [ %dec21.1, %if.end27 ]
  %l.1.1 = phi i64 [ 0, %if.then24.1 ], [ %or.1, %if.end27 ]
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %while.end.unr-lcssa, label %while.body, !llvm.loop !27

while.end.unr-lcssa:                              ; preds = %if.end27.1, %while.body.lr.ph
  %l.078.unr = phi i64 [ 0, %while.body.lr.ph ], [ %l.1.1, %if.end27.1 ]
  %m.077.unr = phi i32 [ %rem, %while.body.lr.ph ], [ %m.1.1, %if.end27.1 ]
  %i.076.unr = phi i32 [ %add, %while.body.lr.ph ], [ %i.1.1, %if.end27.1 ]
  %s.addr.175.unr = phi i8* [ %s.addr.068, %while.body.lr.ph ], [ %incdec.ptr19.1, %if.end27.1 ]
  %lcmp.mod.not = icmp ne i32 %xtraiter, 0
  %cmp22.epil = icmp eq i32 %m.077.unr, 0
  %or.cond = select i1 %lcmp.mod.not, i1 %cmp22.epil, i1 false
  br i1 %or.cond, label %if.then24.epil, label %while.end

if.then24.epil:                                   ; preds = %while.end.unr-lcssa
  %shl.epil = shl i64 %l.078.unr, 8
  %incdec.ptr19.epil = getelementptr inbounds i8, i8* %s.addr.175.unr, i64 -1
  %6 = load i8, i8* %incdec.ptr19.epil, align 1, !tbaa !19
  %conv20.epil = zext i8 %6 to i64
  %or.epil = or i64 %shl.epil, %conv20.epil
  %7 = load i64*, i64** %d, align 8, !tbaa !12
  %dec25.epil = add i32 %i.076.unr, -1
  %idxprom.epil = zext i32 %dec25.epil to i64
  %arrayidx26.epil = getelementptr inbounds i64, i64* %7, i64 %idxprom.epil
  store i64 %or.epil, i64* %arrayidx26.epil, align 8, !tbaa !13
  br label %while.end

while.end:                                        ; preds = %if.then24.epil, %while.end.unr-lcssa
  tail call void @bn_correct_top(%struct.bignum_st* noundef nonnull %ret.addr.062) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end, %if.then15, %if.then9
  %retval.0 = phi %struct.bignum_st* [ %ret.addr.062, %if.then9 ], [ null, %if.then15 ], [ %ret.addr.062, %while.end ], [ null, %if.end ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_bn2lebinpad(%struct.bignum_st* nocapture noundef readonly %a, i8* noundef %to, i32 noundef %tolen) local_unnamed_addr #5 {
entry:
  %cmp = icmp slt i32 %tolen, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @bn2binpad(%struct.bignum_st* noundef %a, i8* noundef %to, i32 noundef %tolen, i32 noundef 1) #14
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_native2bn(i8* nocapture noundef readonly %s, i32 noundef %len, %struct.bignum_st* noundef %ret) local_unnamed_addr #5 {
entry:
  %call = tail call %struct.bignum_st* @BN_lebin2bn(i8* noundef %s, i32 noundef %len, %struct.bignum_st* noundef %ret) #14
  ret %struct.bignum_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_bn2nativepad(%struct.bignum_st* nocapture noundef readonly %a, i8* noundef %to, i32 noundef %tolen) local_unnamed_addr #5 {
entry:
  %call = tail call i32 @BN_bn2lebinpad(%struct.bignum_st* noundef %a, i8* noundef %to, i32 noundef %tolen) #14
  ret i32 %call
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @BN_ucmp(%struct.bignum_st* nocapture noundef readonly %a, %struct.bignum_st* nocapture noundef readonly %b) local_unnamed_addr #4 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %1 = load i32, i32* %top1, align 8, !tbaa !8
  %sub = sub nsw i32 %0, %1
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !12
  %d2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %3 = load i64*, i64** %d2, align 8, !tbaa !12
  %4 = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %5, %for.body ], [ %4, %if.end ]
  %5 = add nsw i64 %indvars.iv, -1
  %6 = trunc i64 %indvars.iv to i32
  %cmp5 = icmp sgt i32 %6, 0
  br i1 %cmp5, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %5
  %7 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %arrayidx7 = getelementptr inbounds i64, i64* %3, i64 %5
  %8 = load i64, i64* %arrayidx7, align 8, !tbaa !13
  %cmp8.not = icmp eq i64 %7, %8
  br i1 %cmp8.not, label %for.cond, label %if.then9, !llvm.loop !28

if.then9:                                         ; preds = %for.body
  %cmp10 = icmp ugt i64 %7, %8
  %cond = select i1 %cmp10, i32 1, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %entry, %if.then9
  %retval.0 = phi i32 [ %cond, %if.then9 ], [ %sub, %entry ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @BN_cmp(%struct.bignum_st* noundef readonly %a, %struct.bignum_st* noundef readonly %b) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq %struct.bignum_st* %a, null
  %cmp1 = icmp eq %struct.bignum_st* %b, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %not.cmp1 = xor i1 %cmp1, true
  %. = zext i1 %not.cmp1 to i32
  %spec.select = select i1 %cmp, i32 %., i32 -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !18
  %neg7 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 3
  %1 = load i32, i32* %neg7, align 8, !tbaa !18
  %cmp8.not = icmp eq i32 %0, %1
  %cmp15 = icmp eq i32 %0, 0
  %.73 = select i1 %cmp15, i32 1, i32 -1
  br i1 %cmp8.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end
  %.74 = select i1 %cmp15, i32 -1, i32 1
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %2 = load i32, i32* %top, align 8, !tbaa !8
  %top19 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %3 = load i32, i32* %top19, align 8, !tbaa !8
  %cmp20 = icmp sgt i32 %2, %3
  br i1 %cmp20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end13
  %cmp25 = icmp slt i32 %2, %3
  br i1 %cmp25, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end22
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %d30 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %if.end35
  %i.0.in = phi i32 [ %i.0, %if.end35 ], [ %2, %for.cond.preheader ]
  %i.0 = add nsw i32 %i.0.in, -1
  %cmp29 = icmp sgt i32 %i.0.in, 0
  br i1 %cmp29, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = load i64*, i64** %d, align 8, !tbaa !12
  %idxprom75 = zext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %idxprom75
  %5 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %6 = load i64*, i64** %d30, align 8, !tbaa !12
  %arrayidx32 = getelementptr inbounds i64, i64* %6, i64 %idxprom75
  %7 = load i64, i64* %arrayidx32, align 8, !tbaa !13
  %cmp33 = icmp ugt i64 %5, %7
  br i1 %cmp33, label %cleanup, label %if.end35

if.end35:                                         ; preds = %for.body
  %cmp36 = icmp ult i64 %5, %7
  br i1 %cmp36, label %cleanup, label %for.cond, !llvm.loop !29

cleanup:                                          ; preds = %for.cond, %if.end35, %for.body, %if.end, %if.then, %if.end22, %if.end13
  %retval.0 = phi i32 [ %.73, %if.end13 ], [ %.74, %if.end22 ], [ %spec.select, %if.then ], [ %.73, %if.end ], [ 0, %for.cond ], [ %.74, %if.end35 ], [ %.73, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_set_bit(%struct.bignum_st* noundef %a, i32 noundef %n) local_unnamed_addr #5 {
entry:
  %cmp = icmp slt i32 %n, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %div34 = lshr i32 %n, 6
  %rem35 = and i32 %n, 63
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %cmp1.not = icmp sgt i32 %0, %div34
  br i1 %cmp1.not, label %if.end11, label %if.then2

if.then2:                                         ; preds = %if.end
  %add = add nuw nsw i32 %div34, 1
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %a, i32 noundef %add) #14
  %cmp3 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then2
  %1 = load i32, i32* %top, align 8, !tbaa !8
  %cmp8.not36 = icmp slt i32 %div34, %1
  br i1 %cmp8.not36, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end5
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !12
  %3 = sext i32 %1 to i64
  %4 = sub i32 %div34, %1
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 1
  %min.iters.check = icmp ult i32 %4, 3
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %6, 8589934588
  %ind.end = add nsw i64 %n.vec, %3
  %7 = add nsw i64 %n.vec, -4
  %8 = lshr exact i64 %7, 2
  %9 = add nuw nsw i64 %8, 1
  %xtraiter = and i64 %9, 3
  %10 = icmp ult i64 %7, 12
  br i1 %10, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %9, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %index, %3
  %11 = getelementptr inbounds i64, i64* %2, i64 %offset.idx
  %12 = bitcast i64* %11 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %12, align 8, !tbaa !13
  %13 = getelementptr inbounds i64, i64* %11, i64 2
  %14 = bitcast i64* %13 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %14, align 8, !tbaa !13
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %index.next, %3
  %15 = getelementptr inbounds i64, i64* %2, i64 %offset.idx.1
  %16 = bitcast i64* %15 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %16, align 8, !tbaa !13
  %17 = getelementptr inbounds i64, i64* %15, i64 2
  %18 = bitcast i64* %17 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %18, align 8, !tbaa !13
  %index.next.1 = or i64 %index, 8
  %offset.idx.2 = add i64 %index.next.1, %3
  %19 = getelementptr inbounds i64, i64* %2, i64 %offset.idx.2
  %20 = bitcast i64* %19 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %20, align 8, !tbaa !13
  %21 = getelementptr inbounds i64, i64* %19, i64 2
  %22 = bitcast i64* %21 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %22, align 8, !tbaa !13
  %index.next.2 = or i64 %index, 12
  %offset.idx.3 = add i64 %index.next.2, %3
  %23 = getelementptr inbounds i64, i64* %2, i64 %offset.idx.3
  %24 = bitcast i64* %23 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %24, align 8, !tbaa !13
  %25 = getelementptr inbounds i64, i64* %23, i64 2
  %26 = bitcast i64* %25 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %26, align 8, !tbaa !13
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !30

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %index.epil, %3
  %27 = getelementptr inbounds i64, i64* %2, i64 %offset.idx.epil
  %28 = bitcast i64* %27 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %28, align 8, !tbaa !13
  %29 = getelementptr inbounds i64, i64* %27, i64 2
  %30 = bitcast i64* %29 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %30, align 8, !tbaa !13
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !32

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %3, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %indvars.iv
  store i64 0, i64* %arrayidx, align 8, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %add, %lftr.wideiv
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !34

for.end:                                          ; preds = %for.body, %middle.block, %if.end5
  store i32 %add, i32* %top, align 8, !tbaa !8
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.end
  %sh_prom = zext i32 %rem35 to i64
  %shl = shl nuw i64 1, %sh_prom
  %d12 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %31 = load i64*, i64** %d12, align 8, !tbaa !12
  %32 = zext i32 %div34 to i64
  %arrayidx14 = getelementptr inbounds i64, i64* %31, i64 %32
  %33 = load i64, i64* %arrayidx14, align 8, !tbaa !13
  %or = or i64 %33, %shl
  store i64 %or, i64* %arrayidx14, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @BN_clear_bit(%struct.bignum_st* nocapture noundef %a, i32 noundef %n) local_unnamed_addr #11 {
entry:
  %cmp = icmp slt i32 %n, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %div12 = lshr i32 %n, 6
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %cmp1.not = icmp sgt i32 %0, %div12
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %rem13 = and i32 %n, 63
  %sh_prom = zext i32 %rem13 to i64
  %shl = shl nuw i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !12
  %idxprom14 = zext i32 %div12 to i64
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom14
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %and = and i64 %2, %neg
  store i64 %and, i64* %arrayidx, align 8, !tbaa !13
  tail call void @bn_correct_top(%struct.bignum_st* noundef nonnull %a) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BN_is_bit_set(%struct.bignum_st* nocapture noundef readonly %a, i32 noundef %n) local_unnamed_addr #1 {
entry:
  %cmp = icmp slt i32 %n, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %div11 = lshr i32 %n, 6
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %cmp1.not = icmp sgt i32 %0, %div11
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %rem12 = and i32 %n, 63
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !12
  %idxprom13 = zext i32 %div11 to i64
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom13
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %sh_prom = zext i32 %rem12 to i64
  %shr = lshr i64 %2, %sh_prom
  %3 = trunc i64 %shr to i32
  %conv = and i32 %3, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %conv, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @BN_mask_bits(%struct.bignum_st* nocapture noundef %a, i32 noundef %n) local_unnamed_addr #11 {
entry:
  %cmp = icmp slt i32 %n, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %div22 = lshr i32 %n, 6
  %rem23 = and i32 %n, 63
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %cmp1.not = icmp slt i32 %div22, %0
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %rem23, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  store i32 %div22, i32* %top, align 8, !tbaa !8
  br label %if.end8

if.else:                                          ; preds = %if.end3
  %add = add nuw nsw i32 %div22, 1
  store i32 %add, i32* %top, align 8, !tbaa !8
  %sh_prom = zext i32 %rem23 to i64
  %shl = shl nsw i64 -1, %sh_prom
  %neg = xor i64 %shl, -1
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !12
  %idxprom24 = zext i32 %div22 to i64
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom24
  %2 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %and = and i64 %2, %neg
  store i64 %and, i64* %arrayidx, align 8, !tbaa !13
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  tail call void @bn_correct_top(%struct.bignum_st* noundef nonnull %a) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end8
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @BN_set_negative(%struct.bignum_st* nocapture noundef %a, i32 noundef %b) local_unnamed_addr #10 {
entry:
  %tobool.not = icmp eq i32 %b, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %a) #14
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.else

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.else
  %.sink = phi i32 [ 0, %if.else ], [ 1, %land.lhs.true ]
  %neg2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  store i32 %.sink, i32* %neg2, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @bn_cmp_words(i64* nocapture noundef readonly %a, i64* nocapture noundef readonly %b, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %n, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %n, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i64, i64* %a, i64 %idxprom
  %0 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %arrayidx3 = getelementptr inbounds i64, i64* %b, i64 %idxprom
  %1 = load i64, i64* %arrayidx3, align 8, !tbaa !13
  %cmp4.not = icmp eq i64 %0, %1
  br i1 %cmp4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %cmp6 = icmp ugt i64 %0, %1
  %cond = select i1 %cmp6, i32 1, i32 -1
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cmp943 = icmp sgt i32 %n, 1
  br i1 %cmp943, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %if.end7
  %sub8 = add nsw i32 %n, -2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %i.044, -1
  %cmp9 = icmp sgt i32 %i.044, 0
  br i1 %cmp9, label %for.body, label %cleanup, !llvm.loop !36

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %i.044 = phi i32 [ %dec, %for.cond ], [ %sub8, %for.body.preheader ]
  %idxprom1041 = zext i32 %i.044 to i64
  %arrayidx11 = getelementptr inbounds i64, i64* %a, i64 %idxprom1041
  %2 = load i64, i64* %arrayidx11, align 8, !tbaa !13
  %arrayidx13 = getelementptr inbounds i64, i64* %b, i64 %idxprom1041
  %3 = load i64, i64* %arrayidx13, align 8, !tbaa !13
  %cmp14.not = icmp eq i64 %2, %3
  br i1 %cmp14.not, label %for.cond, label %if.then15

if.then15:                                        ; preds = %for.body
  %cmp16 = icmp ugt i64 %2, %3
  %cond17 = select i1 %cmp16, i32 1, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %for.cond, %if.end7, %entry, %if.then15, %if.then5
  %retval.0 = phi i32 [ %cond, %if.then5 ], [ %cond17, %if.then15 ], [ 0, %entry ], [ 0, %if.end7 ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @bn_cmp_part_words(i64* nocapture noundef readonly %a, i64* nocapture noundef readonly %b, i32 noundef %cl, i32 noundef %dl) local_unnamed_addr #4 {
entry:
  %sub = add nsw i32 %cl, -1
  %cmp = icmp slt i32 %dl, 0
  br i1 %cmp, label %for.body.preheader, label %if.end5

for.body.preheader:                               ; preds = %entry
  %0 = sext i32 %dl to i64
  %1 = sext i32 %sub to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %exitcond.not, label %if.end5, label %for.body, !llvm.loop !37

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %2 = sub nsw i64 %1, %indvars.iv
  %arrayidx = getelementptr inbounds i64, i64* %b, i64 %2
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %cmp3.not = icmp eq i64 %3, 0
  br i1 %cmp3.not, label %for.cond, label %cleanup

if.end5:                                          ; preds = %for.cond, %entry
  %cmp6 = icmp sgt i32 %dl, 0
  br i1 %cmp6, label %for.body10.preheader, label %if.end18

for.body10.preheader:                             ; preds = %if.end5
  %4 = zext i32 %dl to i64
  %5 = sext i32 %sub to i64
  br label %for.body10

for.cond8:                                        ; preds = %for.body10
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1
  %cmp9 = icmp sgt i64 %indvars.iv42, 1
  br i1 %cmp9, label %for.body10, label %if.end18, !llvm.loop !38

for.body10:                                       ; preds = %for.body10.preheader, %for.cond8
  %indvars.iv42 = phi i64 [ %4, %for.body10.preheader ], [ %indvars.iv.next43, %for.cond8 ]
  %6 = add nsw i64 %indvars.iv42, %5
  %arrayidx12 = getelementptr inbounds i64, i64* %a, i64 %6
  %7 = load i64, i64* %arrayidx12, align 8, !tbaa !13
  %cmp13.not = icmp eq i64 %7, 0
  br i1 %cmp13.not, label %for.cond8, label %cleanup

if.end18:                                         ; preds = %for.cond8, %if.end5
  %call = tail call i32 @bn_cmp_words(i64* noundef %a, i64* noundef %b, i32 noundef %cl) #14
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.body10, %if.end18
  %retval.0 = phi i32 [ %call, %if.end18 ], [ 1, %for.body10 ], [ -1, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @BN_consttime_swap(i64 noundef %condition, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, i32 noundef %nwords) local_unnamed_addr #11 {
entry:
  %cmp = icmp eq %struct.bignum_st* %a, %b
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %neg = xor i64 %condition, -1
  %sub = add i64 %condition, -1
  %and = and i64 %sub, %neg
  %shr = lshr i64 %and, 63
  %sub1 = add nsw i64 %shr, -1
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %top2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %1 = load i32, i32* %top2, align 8, !tbaa !8
  %xor = xor i32 %1, %0
  %2 = trunc i64 %sub1 to i32
  %3 = and i32 %xor, %2
  %conv7 = xor i32 %3, %0
  store i32 %conv7, i32* %top, align 8, !tbaa !8
  %4 = load i32, i32* %top2, align 8, !tbaa !8
  %conv11 = xor i32 %4, %3
  store i32 %conv11, i32* %top2, align 8, !tbaa !8
  %neg12 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %5 = load i32, i32* %neg12, align 8, !tbaa !18
  %neg13 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 3
  %6 = load i32, i32* %neg13, align 8, !tbaa !18
  %xor14 = xor i32 %6, %5
  %7 = and i32 %xor14, %2
  %conv20 = xor i32 %7, %5
  store i32 %conv20, i32* %neg12, align 8, !tbaa !18
  %8 = load i32, i32* %neg13, align 8, !tbaa !18
  %conv24 = xor i32 %8, %7
  store i32 %conv24, i32* %neg13, align 8, !tbaa !18
  %flags = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 4
  %9 = load i32, i32* %flags, align 4, !tbaa !11
  %flags25 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 4
  %10 = load i32, i32* %flags25, align 4, !tbaa !11
  %xor26 = xor i32 %10, %9
  %and27 = and i32 %2, 4
  %11 = and i32 %and27, %xor26
  %conv33 = xor i32 %11, %9
  store i32 %conv33, i32* %flags, align 4, !tbaa !11
  %12 = load i32, i32* %flags25, align 4, !tbaa !11
  %conv37 = xor i32 %11, %12
  store i32 %conv37, i32* %flags25, align 4, !tbaa !11
  %cmp3897 = icmp sgt i32 %nwords, 0
  br i1 %cmp3897, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %13 = load i64*, i64** %d, align 8, !tbaa !12
  %d40 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %14 = load i64*, i64** %d40, align 8, !tbaa !12
  %wide.trip.count = zext i32 %nwords to i64
  %min.iters.check = icmp eq i32 %nwords, 1
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.lr.ph
  %scevgep = getelementptr i64, i64* %13, i64 %wide.trip.count
  %scevgep101 = getelementptr i64, i64* %14, i64 %wide.trip.count
  %bound0 = icmp ult i64* %13, %scevgep101
  %bound1 = icmp ult i64* %14, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967294
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %sub1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %15 = add nsw i64 %n.vec, -2
  %16 = lshr exact i64 %15, 1
  %17 = add nuw i64 %16, 1
  %xtraiter = and i64 %17, 1
  %18 = icmp eq i64 %15, 0
  br i1 %18, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %17, -2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %19 = getelementptr inbounds i64, i64* %13, i64 %index
  %20 = bitcast i64* %19 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %20, align 8, !tbaa !13, !alias.scope !39, !noalias !42
  %21 = getelementptr inbounds i64, i64* %14, i64 %index
  %22 = bitcast i64* %21 to <2 x i64>*
  %wide.load103 = load <2 x i64>, <2 x i64>* %22, align 8, !tbaa !13, !alias.scope !42
  %23 = xor <2 x i64> %wide.load103, %wide.load
  %24 = and <2 x i64> %23, %broadcast.splat
  %25 = xor <2 x i64> %24, %wide.load
  %26 = bitcast i64* %19 to <2 x i64>*
  store <2 x i64> %25, <2 x i64>* %26, align 8, !tbaa !13, !alias.scope !39, !noalias !42
  %27 = bitcast i64* %21 to <2 x i64>*
  %wide.load104 = load <2 x i64>, <2 x i64>* %27, align 8, !tbaa !13, !alias.scope !42
  %28 = xor <2 x i64> %wide.load104, %24
  %29 = bitcast i64* %21 to <2 x i64>*
  store <2 x i64> %28, <2 x i64>* %29, align 8, !tbaa !13, !alias.scope !42
  %index.next = or i64 %index, 2
  %30 = getelementptr inbounds i64, i64* %13, i64 %index.next
  %31 = bitcast i64* %30 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %31, align 8, !tbaa !13, !alias.scope !39, !noalias !42
  %32 = getelementptr inbounds i64, i64* %14, i64 %index.next
  %33 = bitcast i64* %32 to <2 x i64>*
  %wide.load103.1 = load <2 x i64>, <2 x i64>* %33, align 8, !tbaa !13, !alias.scope !42
  %34 = xor <2 x i64> %wide.load103.1, %wide.load.1
  %35 = and <2 x i64> %34, %broadcast.splat
  %36 = xor <2 x i64> %35, %wide.load.1
  %37 = bitcast i64* %30 to <2 x i64>*
  store <2 x i64> %36, <2 x i64>* %37, align 8, !tbaa !13, !alias.scope !39, !noalias !42
  %38 = bitcast i64* %32 to <2 x i64>*
  %wide.load104.1 = load <2 x i64>, <2 x i64>* %38, align 8, !tbaa !13, !alias.scope !42
  %39 = xor <2 x i64> %wide.load104.1, %35
  %40 = bitcast i64* %32 to <2 x i64>*
  store <2 x i64> %39, <2 x i64>* %40, align 8, !tbaa !13, !alias.scope !42
  %index.next.1 = add nuw i64 %index, 4
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !44

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %41 = getelementptr inbounds i64, i64* %13, i64 %index.unr
  %42 = bitcast i64* %41 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %42, align 8, !tbaa !13, !alias.scope !39, !noalias !42
  %43 = getelementptr inbounds i64, i64* %14, i64 %index.unr
  %44 = bitcast i64* %43 to <2 x i64>*
  %wide.load103.epil = load <2 x i64>, <2 x i64>* %44, align 8, !tbaa !13, !alias.scope !42
  %45 = xor <2 x i64> %wide.load103.epil, %wide.load.epil
  %46 = and <2 x i64> %45, %broadcast.splat
  %47 = xor <2 x i64> %46, %wide.load.epil
  %48 = bitcast i64* %41 to <2 x i64>*
  store <2 x i64> %47, <2 x i64>* %48, align 8, !tbaa !13, !alias.scope !39, !noalias !42
  %49 = bitcast i64* %43 to <2 x i64>*
  %wide.load104.epil = load <2 x i64>, <2 x i64>* %49, align 8, !tbaa !13, !alias.scope !42
  %50 = xor <2 x i64> %wide.load104.epil, %46
  %51 = bitcast i64* %43 to <2 x i64>*
  store <2 x i64> %50, <2 x i64>* %51, align 8, !tbaa !13, !alias.scope !42
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %52 = xor i64 %indvars.iv.ph, -1
  %xtraiter105 = and i64 %wide.trip.count, 1
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader
  %arrayidx.prol = getelementptr inbounds i64, i64* %13, i64 %indvars.iv.ph
  %53 = load i64, i64* %arrayidx.prol, align 8, !tbaa !13
  %arrayidx42.prol = getelementptr inbounds i64, i64* %14, i64 %indvars.iv.ph
  %54 = load i64, i64* %arrayidx42.prol, align 8, !tbaa !13
  %xor43.prol = xor i64 %54, %53
  %and44.prol = and i64 %xor43.prol, %sub1
  %xor48.prol = xor i64 %and44.prol, %53
  store i64 %xor48.prol, i64* %arrayidx.prol, align 8, !tbaa !13
  %55 = load i64, i64* %arrayidx42.prol, align 8, !tbaa !13
  %xor52.prol = xor i64 %55, %and44.prol
  store i64 %xor52.prol, i64* %arrayidx42.prol, align 8, !tbaa !13
  %indvars.iv.next.prol = or i64 %indvars.iv.ph, 1
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %56 = sub nsw i64 0, %wide.trip.count
  %57 = icmp eq i64 %52, %56
  br i1 %57, label %cleanup, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i64, i64* %13, i64 %indvars.iv
  %58 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %arrayidx42 = getelementptr inbounds i64, i64* %14, i64 %indvars.iv
  %59 = load i64, i64* %arrayidx42, align 8, !tbaa !13
  %xor43 = xor i64 %59, %58
  %and44 = and i64 %xor43, %sub1
  %xor48 = xor i64 %and44, %58
  store i64 %xor48, i64* %arrayidx, align 8, !tbaa !13
  %60 = load i64, i64* %arrayidx42, align 8, !tbaa !13
  %xor52 = xor i64 %60, %and44
  store i64 %xor52, i64* %arrayidx42, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i64, i64* %13, i64 %indvars.iv.next
  %61 = load i64, i64* %arrayidx.1, align 8, !tbaa !13
  %arrayidx42.1 = getelementptr inbounds i64, i64* %14, i64 %indvars.iv.next
  %62 = load i64, i64* %arrayidx42.1, align 8, !tbaa !13
  %xor43.1 = xor i64 %62, %61
  %and44.1 = and i64 %xor43.1, %sub1
  %xor48.1 = xor i64 %and44.1, %61
  store i64 %xor48.1, i64* %arrayidx.1, align 8, !tbaa !13
  %63 = load i64, i64* %arrayidx42.1, align 8, !tbaa !13
  %xor52.1 = xor i64 %63, %and44.1
  store i64 %xor52.1, i64* %arrayidx42.1, align 8, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %cleanup, label %for.body, !llvm.loop !45

cleanup:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %if.end, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @BN_security_bits(i32 noundef %L, i32 noundef %N) local_unnamed_addr #2 {
entry:
  %cmp = icmp sgt i32 %L, 15359
  br i1 %cmp, label %if.end16, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %L, 7679
  br i1 %cmp1, label %if.end16, label %if.else3

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp sgt i32 %L, 3071
  br i1 %cmp4, label %if.end16, label %if.else6

if.else6:                                         ; preds = %if.else3
  %cmp7 = icmp sgt i32 %L, 2047
  br i1 %cmp7, label %if.end16, label %if.else9

if.else9:                                         ; preds = %if.else6
  %cmp10 = icmp sgt i32 %L, 1023
  br i1 %cmp10, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.else9, %if.else6, %if.else3, %if.else, %entry
  %secbits.0 = phi i32 [ 256, %entry ], [ 192, %if.else ], [ 128, %if.else3 ], [ 112, %if.else6 ], [ 80, %if.else9 ]
  %cmp17 = icmp eq i32 %N, -1
  br i1 %cmp17, label %cleanup, label %if.end19

if.end19:                                         ; preds = %if.end16
  %div = sdiv i32 %N, 2
  %cmp20 = icmp slt i32 %N, 160
  br i1 %cmp20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end19
  %cmp23.not = icmp slt i32 %div, %secbits.0
  %cond = select i1 %cmp23.not, i32 %div, i32 %secbits.0
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end16, %if.else9, %if.end22
  %retval.0 = phi i32 [ %cond, %if.end22 ], [ 0, %if.else9 ], [ %secbits.0, %if.end16 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BN_zero_ex(%struct.bignum_st* nocapture noundef writeonly %a) local_unnamed_addr #0 {
entry:
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  store i32 0, i32* %neg, align 8, !tbaa !18
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  store i32 0, i32* %top, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BN_abs_is_word(%struct.bignum_st* nocapture noundef readonly %a, i64 noundef %w) local_unnamed_addr #1 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !12
  %2 = load i64, i64* %1, align 8, !tbaa !13
  %cmp1 = icmp eq i64 %2, %w
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %cmp2 = icmp eq i64 %w, 0
  br i1 %cmp2, label %land.rhs, label %lor.end

land.rhs:                                         ; preds = %lor.rhs
  %cmp4 = icmp eq i32 %0, 0
  %phi.cast = zext i1 %cmp4 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %land.lhs.true
  %3 = phi i32 [ 1, %land.lhs.true ], [ 0, %lor.rhs ], [ %phi.cast, %land.rhs ]
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BN_is_one(%struct.bignum_st* nocapture noundef readonly %a) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef %a, i64 noundef 1) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !18
  %tobool1.not = icmp eq i32 %0, 0
  %phi.cast = zext i1 %tobool1.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BN_is_word(%struct.bignum_st* nocapture noundef readonly %a, i64 noundef %w) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @BN_abs_is_word(%struct.bignum_st* noundef %a, i64 noundef %w) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %tobool1.not = icmp eq i64 %w, 0
  br i1 %tobool1.not, label %land.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !18
  %tobool2.not = icmp eq i32 %0, 0
  %phi.cast = zext i1 %tobool2.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ 1, %land.rhs ], [ %phi.cast, %lor.rhs ]
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BN_is_odd(%struct.bignum_st* nocapture noundef readonly %a) local_unnamed_addr #1 {
entry:
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top, align 8, !tbaa !8
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !12
  %2 = load i64, i64* %1, align 8, !tbaa !13
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i32 [ 0, %entry ], [ %4, %land.rhs ]
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BN_is_negative(%struct.bignum_st* nocapture noundef readonly %a) local_unnamed_addr #1 {
entry:
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 3
  %0 = load i32, i32* %neg, align 8, !tbaa !18
  %cmp = icmp ne i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_to_montgomery(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bn_mont_ctx_st* noundef %mont, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #5 {
entry:
  %RR = getelementptr inbounds %struct.bn_mont_ctx_st, %struct.bn_mont_ctx_st* %mont, i64 0, i32 1
  %call = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef nonnull %RR, %struct.bn_mont_ctx_st* noundef %mont, %struct.bignum_ctx* noundef %ctx) #15
  ret i32 %call
}

declare i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @BN_with_flags(%struct.bignum_st* nocapture noundef %dest, %struct.bignum_st* nocapture noundef readonly %b, i32 noundef %flags) local_unnamed_addr #10 {
entry:
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 0
  %0 = load i64*, i64** %d, align 8, !tbaa !12
  %d1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %dest, i64 0, i32 0
  store i64* %0, i64** %d1, align 8, !tbaa !12
  %top = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 1
  %1 = load i32, i32* %top, align 8, !tbaa !8
  %top2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %dest, i64 0, i32 1
  store i32 %1, i32* %top2, align 8, !tbaa !8
  %dmax = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 2
  %2 = load i32, i32* %dmax, align 4, !tbaa !15
  %dmax3 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %dest, i64 0, i32 2
  store i32 %2, i32* %dmax3, align 4, !tbaa !15
  %neg = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 3
  %3 = load i32, i32* %neg, align 8, !tbaa !18
  %neg4 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %dest, i64 0, i32 3
  store i32 %3, i32* %neg4, align 8, !tbaa !18
  %flags5 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %dest, i64 0, i32 4
  %4 = load i32, i32* %flags5, align 4, !tbaa !11
  %and = and i32 %4, 1
  %flags6 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 4
  %5 = load i32, i32* %flags6, align 4, !tbaa !11
  %and7 = and i32 %5, -4
  %or = or i32 %and, %flags
  %or8 = or i32 %or, %and7
  %or9 = or i32 %or8, 2
  store i32 %or9, i32* %flags5, align 4, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.bn_gencb_st* @BN_GENCB_new() local_unnamed_addr #5 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 968) #15
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 969, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BN_GENCB_new, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.bn_gencb_st*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bn_gencb_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.bn_gencb_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define void @BN_GENCB_free(%struct.bn_gencb_st* noundef %cb) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.bn_gencb_st* %cb, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = bitcast %struct.bn_gencb_st* %cb to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 980) #15
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @BN_set_flags(%struct.bignum_st* nocapture noundef %b, i32 noundef %n) local_unnamed_addr #10 {
entry:
  %flags = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %b, i64 0, i32 4
  %0 = load i32, i32* %flags, align 4, !tbaa !11
  %or = or i32 %0, %n
  store i32 %or, i32* %flags, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BN_GENCB_set_old(%struct.bn_gencb_st* nocapture noundef writeonly %gencb, void (i32, i32, i8*)* noundef %callback, i8* noundef %cb_arg) local_unnamed_addr #0 {
entry:
  %ver = getelementptr inbounds %struct.bn_gencb_st, %struct.bn_gencb_st* %gencb, i64 0, i32 0
  store i32 1, i32* %ver, align 8, !tbaa !46
  %arg = getelementptr inbounds %struct.bn_gencb_st, %struct.bn_gencb_st* %gencb, i64 0, i32 1
  store i8* %cb_arg, i8** %arg, align 8, !tbaa !48
  %cb_1 = getelementptr inbounds %struct.bn_gencb_st, %struct.bn_gencb_st* %gencb, i64 0, i32 2, i32 0
  store void (i32, i32, i8*)* %callback, void (i32, i32, i8*)** %cb_1, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BN_GENCB_set(%struct.bn_gencb_st* nocapture noundef writeonly %gencb, i32 (i32, i32, %struct.bn_gencb_st*)* noundef %callback, i8* noundef %cb_arg) local_unnamed_addr #0 {
entry:
  %ver = getelementptr inbounds %struct.bn_gencb_st, %struct.bn_gencb_st* %gencb, i64 0, i32 0
  store i32 2, i32* %ver, align 8, !tbaa !46
  %arg = getelementptr inbounds %struct.bn_gencb_st, %struct.bn_gencb_st* %gencb, i64 0, i32 1
  store i8* %cb_arg, i8** %arg, align 8, !tbaa !48
  %cb = getelementptr inbounds %struct.bn_gencb_st, %struct.bn_gencb_st* %gencb, i64 0, i32 2
  %cb_2 = bitcast %union.anon* %cb to i32 (i32, i32, %struct.bn_gencb_st*)**
  store i32 (i32, i32, %struct.bn_gencb_st*)* %callback, i32 (i32, i32, %struct.bn_gencb_st*)** %cb_2, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @BN_GENCB_get_arg(%struct.bn_gencb_st* nocapture noundef readonly %cb) local_unnamed_addr #1 {
entry:
  %arg = getelementptr inbounds %struct.bn_gencb_st, %struct.bn_gencb_st* %cb, i64 0, i32 1
  %0 = load i8*, i8** %arg, align 8, !tbaa !48
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_eq_int(i32 noundef %a, i32 noundef %b) unnamed_addr #2 {
entry:
  %call = tail call fastcc i32 @constant_time_eq(i32 noundef %a, i32 noundef %b) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_eq(i32 noundef %a, i32 noundef %b) unnamed_addr #2 {
entry:
  %xor = xor i32 %b, %a
  %call = tail call fastcc i32 @constant_time_is_zero(i32 noundef %xor) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_is_zero(i32 noundef %a) unnamed_addr #2 {
entry:
  %neg = xor i32 %a, -1
  %sub = add i32 %a, -1
  %and = and i32 %sub, %neg
  %call = tail call fastcc i32 @constant_time_msb(i32 noundef %and) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @constant_time_msb(i32 noundef %a) unnamed_addr #2 {
entry:
  %shr.neg = ashr i32 %a, 31
  ret i32 %shr.neg
}

declare void @CRYPTO_secure_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

declare i8* @CRYPTO_secure_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nounwind }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"bignum_st", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !5, i64 20}
!12 = !{!9, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!9, !5, i64 12}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!9, !5, i64 16}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = !{i64 0, i64 8, !24, i64 8, i64 4, !4, i64 12, i64 4, !4, i64 16, i64 4, !4, i64 20, i64 4, !4}
!24 = !{!10, !10, i64 0}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17, !31}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !17, !35, !31}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !17, !31}
!45 = distinct !{!45, !17, !31}
!46 = !{!47, !5, i64 0}
!47 = !{!"bn_gencb_st", !5, i64 0, !10, i64 8, !6, i64 16}
!48 = !{!47, !10, i64 8}
