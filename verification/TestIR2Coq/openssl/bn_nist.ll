; ModuleID = 'crypto/bn/bn_nist.c'
source_filename = "crypto/bn/bn_nist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx = type opaque
%union.anon = type { [3 x i64] }
%union.anon.2 = type { [4 x i64] }
%union.anon.4 = type { [6 x i64] }

@ossl_bignum_nist_p_192 = internal constant %struct.bignum_st { i64* getelementptr inbounds ([3 x [3 x i64]], [3 x [3 x i64]]* @_nist_p_192, i32 0, i32 0, i32 0), i32 3, i32 3, i32 0, i32 2 }, align 8
@ossl_bignum_nist_p_224 = internal constant %struct.bignum_st { i64* getelementptr inbounds ([2 x [4 x i64]], [2 x [4 x i64]]* @_nist_p_224, i32 0, i32 0, i32 0), i32 4, i32 4, i32 0, i32 2 }, align 8
@ossl_bignum_nist_p_256 = internal constant %struct.bignum_st { i64* getelementptr inbounds ([5 x [4 x i64]], [5 x [4 x i64]]* @_nist_p_256, i32 0, i32 0, i32 0), i32 4, i32 4, i32 0, i32 2 }, align 8
@ossl_bignum_nist_p_384 = internal constant %struct.bignum_st { i64* getelementptr inbounds ([5 x [6 x i64]], [5 x [6 x i64]]* @_nist_p_384, i32 0, i32 0, i32 0), i32 6, i32 6, i32 0, i32 2 }, align 8
@ossl_bignum_nist_p_521 = internal constant %struct.bignum_st { i64* getelementptr inbounds ([9 x i64], [9 x i64]* @_nist_p_521, i32 0, i32 0), i32 9, i32 9, i32 0, i32 2 }, align 8
@BN_nist_mod_192.ossl_bignum_nist_p_192_sqr = internal constant %struct.bignum_st { i64* getelementptr inbounds ([6 x i64], [6 x i64]* @_nist_p_192_sqr, i32 0, i32 0), i32 6, i32 6, i32 0, i32 2 }, align 8
@_nist_p_192_sqr = internal constant [6 x i64] [i64 1, i64 2, i64 1, i64 -2, i64 -3, i64 -1], align 16
@_nist_p_192 = internal constant [3 x [3 x i64]] [[3 x i64] [i64 -1, i64 -2, i64 -1], [3 x i64] [i64 -2, i64 -3, i64 -1], [3 x i64] [i64 -3, i64 -4, i64 -1]], align 16
@BN_nist_mod_224.ossl_bignum_nist_p_224_sqr = internal constant %struct.bignum_st { i64* getelementptr inbounds ([7 x i64], [7 x i64]* @_nist_p_224_sqr, i32 0, i32 0), i32 7, i32 7, i32 0, i32 2 }, align 8
@_nist_p_224_sqr = internal constant [7 x i64] [i64 1, i64 -8589934592, i64 -1, i64 8589934592, i64 0, i64 -2, i64 -1], align 16
@_nist_p_224 = internal constant [2 x [4 x i64]] [[4 x i64] [i64 1, i64 -4294967296, i64 -1, i64 4294967295], [4 x i64] [i64 2, i64 -8589934592, i64 -1, i64 8589934591]], align 16
@BN_nist_mod_256.ossl_bignum_nist_p_256_sqr = internal constant %struct.bignum_st { i64* getelementptr inbounds ([8 x i64], [8 x i64]* @_nist_p_256_sqr, i32 0, i32 0), i32 8, i32 8, i32 0, i32 2 }, align 8
@_nist_p_256_sqr = internal constant [8 x i64] [i64 1, i64 -8589934592, i64 -1, i64 8589934590, i64 8589934590, i64 8589934590, i64 -8589934591, i64 -8589934590], align 16
@_nist_p_256 = internal constant [5 x [4 x i64]] [[4 x i64] [i64 -1, i64 4294967295, i64 0, i64 -4294967295], [4 x i64] [i64 -2, i64 8589934591, i64 0, i64 -8589934590], [4 x i64] [i64 -3, i64 12884901887, i64 0, i64 -12884901885], [4 x i64] [i64 -4, i64 17179869183, i64 0, i64 -17179869180], [4 x i64] [i64 -5, i64 21474836479, i64 0, i64 -21474836475]], align 16
@BN_nist_mod_384.ossl_bignum_nist_p_384_sqr = internal constant %struct.bignum_st { i64* getelementptr inbounds ([12 x i64], [12 x i64]* @_nist_p_384_sqr, i32 0, i32 0), i32 12, i32 12, i32 0, i32 2 }, align 8
@_nist_p_384_sqr = internal constant [12 x i64] [i64 -8589934591, i64 8589934592, i64 -8589934592, i64 8589934592, i64 1, i64 0, i64 8589934590, i64 -8589934592, i64 -3, i64 -1, i64 -1, i64 -1], align 16
@_nist_p_384 = internal constant [5 x [6 x i64]] [[6 x i64] [i64 4294967295, i64 -4294967296, i64 -2, i64 -1, i64 -1, i64 -1], [6 x i64] [i64 8589934590, i64 -8589934592, i64 -3, i64 -1, i64 -1, i64 -1], [6 x i64] [i64 12884901885, i64 -12884901888, i64 -4, i64 -1, i64 -1, i64 -1], [6 x i64] [i64 17179869180, i64 -17179869184, i64 -5, i64 -1, i64 -1, i64 -1], [6 x i64] [i64 21474836475, i64 -21474836480, i64 -6, i64 -1, i64 -1, i64 -1]], align 16
@BN_nist_mod_521.ossl_bignum_nist_p_521_sqr = internal constant %struct.bignum_st { i64* getelementptr inbounds ([17 x i64], [17 x i64]* @_nist_p_521_sqr, i32 0, i32 0), i32 17, i32 17, i32 0, i32 2 }, align 8
@_nist_p_521_sqr = internal constant [17 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -1024, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 262143], align 16
@_nist_p_521 = internal constant [9 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 511], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bignum_st* @BN_get0_nist_prime_192() local_unnamed_addr #0 {
entry:
  ret %struct.bignum_st* @ossl_bignum_nist_p_192
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bignum_st* @BN_get0_nist_prime_224() local_unnamed_addr #0 {
entry:
  ret %struct.bignum_st* @ossl_bignum_nist_p_224
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bignum_st* @BN_get0_nist_prime_256() local_unnamed_addr #0 {
entry:
  ret %struct.bignum_st* @ossl_bignum_nist_p_256
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bignum_st* @BN_get0_nist_prime_384() local_unnamed_addr #0 {
entry:
  ret %struct.bignum_st* @ossl_bignum_nist_p_384
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bignum_st* @BN_get0_nist_prime_521() local_unnamed_addr #0 {
entry:
  ret %struct.bignum_st* @ossl_bignum_nist_p_521
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_nist_mod_192(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* nocapture readnone %field, %struct.bignum_ctx* noundef %ctx) #1 {
entry:
  %buf = alloca %union.anon, align 8
  %c_d = alloca [3 x i64], align 16
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top1, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !10
  %2 = bitcast %union.anon* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #6
  %3 = bitcast [3 x i64]* %c_d to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6
  %call = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %a) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull @BN_nist_mod_192.ossl_bignum_nist_p_192_sqr) #7
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_192, %struct.bignum_ctx* noundef %ctx) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_192, %struct.bignum_st* noundef nonnull %a) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp7 = icmp sgt i32 %call4, 0
  %cmp9 = icmp eq %struct.bignum_st* %r, %a
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.else
  br i1 %cmp9, label %cleanup, label %cond.false

cond.false:                                       ; preds = %if.then8
  %call10 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a) #7
  %cmp11 = icmp ne %struct.bignum_st* %call10, null
  %conv = zext i1 %cmp11 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.else
  br i1 %cmp9, label %if.end23, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef 3) #7
  %tobool18.not = icmp eq %struct.bignum_st* %call17, null
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.then16
  %d21 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %4 = load i64*, i64** %d21, align 8, !tbaa !10
  tail call fastcc void @nist_cp_bn(i64* noundef %4, i64* noundef %1, i32 noundef 3) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end13, %if.end20
  %r_d.0 = phi i64* [ %4, %if.end20 ], [ %1, %if.end13 ]
  %arraydecay = getelementptr inbounds %union.anon, %union.anon* %buf, i64 0, i32 0, i64 0
  %add.ptr = getelementptr inbounds i64, i64* %1, i64 3
  %sub = add nsw i32 %0, -3
  call fastcc void @nist_cp_bn_0(i64* noundef nonnull %arraydecay, i64* noundef nonnull %add.ptr, i32 noundef %sub, i32 noundef 3) #8
  %5 = bitcast i64* %r_d.0 to i32*
  %arraydecay24 = bitcast %union.anon* %buf to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !11
  %conv25 = zext i32 %6 to i64
  %7 = load i32, i32* %arraydecay24, align 8, !tbaa !11
  %conv27 = zext i32 %7 to i64
  %arrayidx28 = getelementptr inbounds %union.anon, %union.anon* %buf, i64 0, i32 0, i64 2
  %8 = bitcast i64* %arrayidx28 to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !11
  %conv29 = zext i32 %9 to i64
  %add = add nuw nsw i64 %conv29, %conv27
  %add30 = add nuw nsw i64 %add, %conv25
  %conv31 = trunc i64 %add30 to i32
  store i32 %conv31, i32* %5, align 4, !tbaa !11
  %10 = lshr i64 %add30, 32
  %arrayidx33 = getelementptr inbounds i32, i32* %5, i64 1
  %11 = load i32, i32* %arrayidx33, align 4, !tbaa !11
  %conv34 = zext i32 %11 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %arraydecay24, i64 1
  %12 = load i32, i32* %arrayidx36, align 4, !tbaa !11
  %conv37 = zext i32 %12 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %arraydecay24, i64 5
  %13 = load i32, i32* %arrayidx39, align 4, !tbaa !11
  %conv40 = zext i32 %13 to i64
  %add35 = add nuw nsw i64 %conv40, %conv37
  %add38 = add nuw nsw i64 %add35, %conv34
  %add41 = add nuw nsw i64 %add38, %10
  %conv42 = trunc i64 %add41 to i32
  store i32 %conv42, i32* %arrayidx33, align 4, !tbaa !11
  %14 = lshr i64 %add41, 32
  %arrayidx45222 = getelementptr inbounds i64, i64* %r_d.0, i64 1
  %arrayidx45 = bitcast i64* %arrayidx45222 to i32*
  %15 = load i32, i32* %arrayidx45, align 4, !tbaa !11
  %conv46 = zext i32 %15 to i64
  %arrayidx51 = getelementptr inbounds %union.anon, %union.anon* %buf, i64 0, i32 0, i64 1
  %16 = bitcast i64* %arrayidx51 to i32*
  %17 = load i32, i32* %16, align 8, !tbaa !11
  %conv52 = zext i32 %17 to i64
  %add50 = add nuw nsw i64 %add, %conv46
  %add53 = add nuw nsw i64 %add50, %14
  %add56 = add nuw nsw i64 %add53, %conv52
  %conv57 = trunc i64 %add56 to i32
  store i32 %conv57, i32* %arrayidx45, align 4, !tbaa !11
  %18 = lshr i64 %add56, 32
  %arrayidx60 = getelementptr inbounds i32, i32* %5, i64 3
  %19 = load i32, i32* %arrayidx60, align 4, !tbaa !11
  %conv61 = zext i32 %19 to i64
  %arrayidx66 = getelementptr inbounds i32, i32* %arraydecay24, i64 3
  %20 = load i32, i32* %arrayidx66, align 4, !tbaa !11
  %conv67 = zext i32 %20 to i64
  %add65 = add nuw nsw i64 %add35, %conv61
  %add68 = add nuw nsw i64 %add65, %conv67
  %add71 = add nuw nsw i64 %add68, %18
  %conv72 = trunc i64 %add71 to i32
  store i32 %conv72, i32* %arrayidx60, align 4, !tbaa !11
  %21 = lshr i64 %add71, 32
  %arrayidx75223 = getelementptr inbounds i64, i64* %r_d.0, i64 2
  %arrayidx75 = bitcast i64* %arrayidx75223 to i32*
  %22 = load i32, i32* %arrayidx75, align 4, !tbaa !11
  %conv76 = zext i32 %22 to i64
  %add77 = add nuw nsw i64 %conv52, %conv29
  %add80 = add nuw nsw i64 %add77, %conv76
  %add83 = add nuw nsw i64 %add80, %21
  %conv84 = trunc i64 %add83 to i32
  store i32 %conv84, i32* %arrayidx75, align 4, !tbaa !11
  %23 = lshr i64 %add83, 32
  %arrayidx87 = getelementptr inbounds i32, i32* %5, i64 5
  %24 = load i32, i32* %arrayidx87, align 4, !tbaa !11
  %conv88 = zext i32 %24 to i64
  %add89 = add nuw nsw i64 %conv67, %conv40
  %add92 = add nuw nsw i64 %add89, %conv88
  %add95 = add nuw nsw i64 %add92, %23
  %conv96 = trunc i64 %add95 to i32
  store i32 %conv96, i32* %arrayidx87, align 4, !tbaa !11
  %cmp100.not = icmp ult i64 %add95, 4294967296
  br i1 %cmp100.not, label %if.end109, label %if.then102

if.then102:                                       ; preds = %if.end23
  %25 = lshr i64 %add95, 32
  %sub103 = add nuw nsw i64 %25, 4294967295
  %26 = and i64 %sub103, 4294967295
  %arraydecay105 = getelementptr inbounds [3 x [3 x i64]], [3 x [3 x i64]]* @_nist_p_192, i64 0, i64 %26, i64 0
  %call106 = tail call i64 @bn_sub_words(i64* noundef nonnull %r_d.0, i64* noundef nonnull %r_d.0, i64* noundef nonnull %arraydecay105, i32 noundef 3) #7
  %sext = shl i64 %call106, 32
  %phi.cast = ashr exact i64 %sext, 32
  br label %if.end109

if.end109:                                        ; preds = %if.end23, %if.then102
  %carry.0 = phi i64 [ %phi.cast, %if.then102 ], [ 1, %if.end23 ]
  %arraydecay110 = getelementptr inbounds [3 x i64], [3 x i64]* %c_d, i64 0, i64 0
  %call111 = call i64 @bn_sub_words(i64* noundef nonnull %arraydecay110, i64* noundef nonnull %r_d.0, i64* noundef getelementptr inbounds ([3 x [3 x i64]], [3 x [3 x i64]]* @_nist_p_192, i64 0, i64 0, i64 0), i32 noundef 3) #7
  %sub112 = sub i64 0, %call111
  %sub114 = sub nsw i64 0, %carry.0
  %27 = ptrtoint [3 x i64]* %c_d to i64
  %notlhs = add i64 %call111, -1
  %notrhs = add nsw i64 %carry.0, -1
  %neg = or i64 %notlhs, %notrhs
  %and116 = and i64 %neg, %27
  %28 = ptrtoint i64* %r_d.0 to i64
  %and = and i64 %sub114, %28
  %and117 = and i64 %and, %sub112
  %or = or i64 %and116, %and117
  %29 = inttoptr i64 %or to i64*
  call fastcc void @nist_cp_bn(i64* noundef nonnull %r_d.0, i64* noundef %29, i32 noundef 3) #8
  %top118 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 3, i32* %top118, align 8, !tbaa !4
  call void @bn_correct_top(%struct.bignum_st* noundef %r) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %cond.false, %if.then8, %if.end109, %if.then6, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 1, %if.then6 ], [ 1, %if.end109 ], [ %conv, %cond.false ], [ 1, %if.then8 ], [ 0, %if.then16 ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare i32 @BN_nnmod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #3

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #3

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @nist_cp_bn(i64* nocapture noundef writeonly %dst, i64* nocapture noundef readonly %src, i32 noundef %top) unnamed_addr #4 {
entry:
  %cmp7 = icmp sgt i32 %top, 0
  br i1 %cmp7, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %top to i64
  %min.iters.check = icmp ult i32 %top, 4
  br i1 %min.iters.check, label %for.body.preheader16, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i64, i64* %dst, i64 %wide.trip.count
  %scevgep13 = getelementptr i64, i64* %src, i64 %wide.trip.count
  %bound0 = icmp ugt i64* %scevgep13, %dst
  %bound1 = icmp ugt i64* %scevgep, %src
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292
  %0 = add nsw i64 %n.vec, -4
  %1 = lshr exact i64 %0, 2
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 3
  %3 = icmp ult i64 %0, 12
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %2, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %4 = getelementptr inbounds i64, i64* %src, i64 %index
  %5 = bitcast i64* %4 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %5, align 8, !tbaa !12, !alias.scope !14
  %6 = getelementptr inbounds i64, i64* %4, i64 2
  %7 = bitcast i64* %6 to <2 x i64>*
  %wide.load15 = load <2 x i64>, <2 x i64>* %7, align 8, !tbaa !12, !alias.scope !14
  %8 = getelementptr inbounds i64, i64* %dst, i64 %index
  %9 = bitcast i64* %8 to <2 x i64>*
  store <2 x i64> %wide.load, <2 x i64>* %9, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %10 = getelementptr inbounds i64, i64* %8, i64 2
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> %wide.load15, <2 x i64>* %11, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %index.next = or i64 %index, 4
  %12 = getelementptr inbounds i64, i64* %src, i64 %index.next
  %13 = bitcast i64* %12 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %13, align 8, !tbaa !12, !alias.scope !14
  %14 = getelementptr inbounds i64, i64* %12, i64 2
  %15 = bitcast i64* %14 to <2 x i64>*
  %wide.load15.1 = load <2 x i64>, <2 x i64>* %15, align 8, !tbaa !12, !alias.scope !14
  %16 = getelementptr inbounds i64, i64* %dst, i64 %index.next
  %17 = bitcast i64* %16 to <2 x i64>*
  store <2 x i64> %wide.load.1, <2 x i64>* %17, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %18 = getelementptr inbounds i64, i64* %16, i64 2
  %19 = bitcast i64* %18 to <2 x i64>*
  store <2 x i64> %wide.load15.1, <2 x i64>* %19, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %index.next.1 = or i64 %index, 8
  %20 = getelementptr inbounds i64, i64* %src, i64 %index.next.1
  %21 = bitcast i64* %20 to <2 x i64>*
  %wide.load.2 = load <2 x i64>, <2 x i64>* %21, align 8, !tbaa !12, !alias.scope !14
  %22 = getelementptr inbounds i64, i64* %20, i64 2
  %23 = bitcast i64* %22 to <2 x i64>*
  %wide.load15.2 = load <2 x i64>, <2 x i64>* %23, align 8, !tbaa !12, !alias.scope !14
  %24 = getelementptr inbounds i64, i64* %dst, i64 %index.next.1
  %25 = bitcast i64* %24 to <2 x i64>*
  store <2 x i64> %wide.load.2, <2 x i64>* %25, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %26 = getelementptr inbounds i64, i64* %24, i64 2
  %27 = bitcast i64* %26 to <2 x i64>*
  store <2 x i64> %wide.load15.2, <2 x i64>* %27, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %index.next.2 = or i64 %index, 12
  %28 = getelementptr inbounds i64, i64* %src, i64 %index.next.2
  %29 = bitcast i64* %28 to <2 x i64>*
  %wide.load.3 = load <2 x i64>, <2 x i64>* %29, align 8, !tbaa !12, !alias.scope !14
  %30 = getelementptr inbounds i64, i64* %28, i64 2
  %31 = bitcast i64* %30 to <2 x i64>*
  %wide.load15.3 = load <2 x i64>, <2 x i64>* %31, align 8, !tbaa !12, !alias.scope !14
  %32 = getelementptr inbounds i64, i64* %dst, i64 %index.next.2
  %33 = bitcast i64* %32 to <2 x i64>*
  store <2 x i64> %wide.load.3, <2 x i64>* %33, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %34 = getelementptr inbounds i64, i64* %32, i64 2
  %35 = bitcast i64* %34 to <2 x i64>*
  store <2 x i64> %wide.load15.3, <2 x i64>* %35, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !19

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %36 = getelementptr inbounds i64, i64* %src, i64 %index.epil
  %37 = bitcast i64* %36 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %37, align 8, !tbaa !12, !alias.scope !14
  %38 = getelementptr inbounds i64, i64* %36, i64 2
  %39 = bitcast i64* %38 to <2 x i64>*
  %wide.load15.epil = load <2 x i64>, <2 x i64>* %39, align 8, !tbaa !12, !alias.scope !14
  %40 = getelementptr inbounds i64, i64* %dst, i64 %index.epil
  %41 = bitcast i64* %40 to <2 x i64>*
  store <2 x i64> %wide.load.epil, <2 x i64>* %41, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %42 = getelementptr inbounds i64, i64* %40, i64 2
  %43 = bitcast i64* %42 to <2 x i64>*
  store <2 x i64> %wide.load15.epil, <2 x i64>* %43, align 8, !tbaa !12, !alias.scope !17, !noalias !14
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !22

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end, label %for.body.preheader16

for.body.preheader16:                             ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %44 = xor i64 %indvars.iv.ph, -1
  %45 = add nsw i64 %44, %wide.trip.count
  %xtraiter17 = and i64 %wide.trip.count, 3
  %lcmp.mod18.not = icmp eq i64 %xtraiter17, 0
  br i1 %lcmp.mod18.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader16, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader16 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader16 ]
  %arrayidx.prol = getelementptr inbounds i64, i64* %src, i64 %indvars.iv.prol
  %46 = load i64, i64* %arrayidx.prol, align 8, !tbaa !12
  %arrayidx2.prol = getelementptr inbounds i64, i64* %dst, i64 %indvars.iv.prol
  store i64 %46, i64* %arrayidx2.prol, align 8, !tbaa !12
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter17
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !24

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader16
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader16 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %47 = icmp ult i64 %45, 3
  br i1 %47, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i64, i64* %src, i64 %indvars.iv
  %48 = load i64, i64* %arrayidx, align 8, !tbaa !12
  %arrayidx2 = getelementptr inbounds i64, i64* %dst, i64 %indvars.iv
  store i64 %48, i64* %arrayidx2, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i64, i64* %src, i64 %indvars.iv.next
  %49 = load i64, i64* %arrayidx.1, align 8, !tbaa !12
  %arrayidx2.1 = getelementptr inbounds i64, i64* %dst, i64 %indvars.iv.next
  store i64 %49, i64* %arrayidx2.1, align 8, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds i64, i64* %src, i64 %indvars.iv.next.1
  %50 = load i64, i64* %arrayidx.2, align 8, !tbaa !12
  %arrayidx2.2 = getelementptr inbounds i64, i64* %dst, i64 %indvars.iv.next.1
  store i64 %50, i64* %arrayidx2.2, align 8, !tbaa !12
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds i64, i64* %src, i64 %indvars.iv.next.2
  %51 = load i64, i64* %arrayidx.3, align 8, !tbaa !12
  %arrayidx2.3 = getelementptr inbounds i64, i64* %dst, i64 %indvars.iv.next.2
  store i64 %51, i64* %arrayidx2.3, align 8, !tbaa !12
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !25

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %entry
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @nist_cp_bn_0(i64* nocapture noundef writeonly %dst, i64* nocapture noundef readonly %src, i32 noundef %top, i32 noundef %max) unnamed_addr #4 {
entry:
  %cmp19 = icmp sgt i32 %top, 0
  br i1 %cmp19, label %for.body.preheader, label %for.cond3.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %top to i64
  %min.iters.check = icmp ult i32 %top, 4
  br i1 %min.iters.check, label %for.body.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %scevgep = getelementptr i64, i64* %dst, i64 %wide.trip.count
  %scevgep32 = getelementptr i64, i64* %src, i64 %wide.trip.count
  %bound0 = icmp ugt i64* %scevgep32, %dst
  %bound1 = icmp ugt i64* %scevgep, %src
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader47, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292
  %0 = add nsw i64 %n.vec, -4
  %1 = lshr exact i64 %0, 2
  %2 = add nuw nsw i64 %1, 1
  %xtraiter = and i64 %2, 3
  %3 = icmp ult i64 %0, 12
  br i1 %3, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %2, 9223372036854775804
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %4 = getelementptr inbounds i64, i64* %src, i64 %index
  %5 = bitcast i64* %4 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %5, align 8, !tbaa !12, !alias.scope !26
  %6 = getelementptr inbounds i64, i64* %4, i64 2
  %7 = bitcast i64* %6 to <2 x i64>*
  %wide.load34 = load <2 x i64>, <2 x i64>* %7, align 8, !tbaa !12, !alias.scope !26
  %8 = getelementptr inbounds i64, i64* %dst, i64 %index
  %9 = bitcast i64* %8 to <2 x i64>*
  store <2 x i64> %wide.load, <2 x i64>* %9, align 8, !tbaa !12, !alias.scope !29, !noalias !26
  %10 = getelementptr inbounds i64, i64* %8, i64 2
  %11 = bitcast i64* %10 to <2 x i64>*
  store <2 x i64> %wide.load34, <2 x i64>* %11, align 8, !tbaa !12, !alias.scope !29, !noalias !26
  %index.next = or i64 %index, 4
  %12 = getelementptr inbounds i64, i64* %src, i64 %index.next
  %13 = bitcast i64* %12 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %13, align 8, !tbaa !12, !alias.scope !26
  %14 = getelementptr inbounds i64, i64* %12, i64 2
  %15 = bitcast i64* %14 to <2 x i64>*
  %wide.load34.1 = load <2 x i64>, <2 x i64>* %15, align 8, !tbaa !12, !alias.scope !26
  %16 = getelementptr inbounds i64, i64* %dst, i64 %index.next
  %17 = bitcast i64* %16 to <2 x i64>*
  store <2 x i64> %wide.load.1, <2 x i64>* %17, align 8, !tbaa !12, !alias.scope !29, !noalias !26
  %18 = getelementptr inbounds i64, i64* %16, i64 2
  %19 = bitcast i64* %18 to <2 x i64>*
  store <2 x i64> %wide.load34.1, <2 x i64>* %19, align 8, !tbaa !12, !alias.scope !29, !noalias !26
  %index.next.1 = or i64 %index, 8
  %20 = getelementptr inbounds i64, i64* %src, i64 %index.next.1
  %21 = bitcast i64* %20 to <2 x i64>*
  %wide.load.2 = load <2 x i64>, <2 x i64>* %21, align 8, !tbaa !12, !alias.scope !26
  %22 = getelementptr inbounds i64, i64* %20, i64 2
  %23 = bitcast i64* %22 to <2 x i64>*
  %wide.load34.2 = load <2 x i64>, <2 x i64>* %23, align 8, !tbaa !12, !alias.scope !26
  %24 = getelementptr inbounds i64, i64* %dst, i64 %index.next.1
  %25 = bitcast i64* %24 to <2 x i64>*
  store <2 x i64> %wide.load.2, <2 x i64>* %25, align 8, !tbaa !12, !alias.scope !29, !noalias !26
  %26 = getelementptr inbounds i64, i64* %24, i64 2
  %27 = bitcast i64* %26 to <2 x i64>*
  store <2 x i64> %wide.load34.2, <2 x i64>* %27, align 8, !tbaa !12, !alias.scope !29, !noalias !26
  %index.next.2 = or i64 %index, 12
  %28 = getelementptr inbounds i64, i64* %src, i64 %index.next.2
  %29 = bitcast i64* %28 to <2 x i64>*
  %wide.load.3 = load <2 x i64>, <2 x i64>* %29, align 8, !tbaa !12, !alias.scope !26
  %30 = getelementptr inbounds i64, i64* %28, i64 2
  %31 = bitcast i64* %30 to <2 x i64>*
  %wide.load34.3 = load <2 x i64>, <2 x i64>* %31, align 8, !tbaa !12, !alias.scope !26
  %32 = getelementptr inbounds i64, i64* %dst, i64 %index.next.2
  %33 = bitcast i64* %32 to <2 x i64>*
  store <2 x i64> %wide.load.3, <2 x i64>* %33, align 8, !tbaa !12, !alias.scope !29, !noalias !26
  %34 = getelementptr inbounds i64, i64* %32, i64 2
  %35 = bitcast i64* %34 to <2 x i64>*
  store <2 x i64> %wide.load34.3, <2 x i64>* %35, align 8, !tbaa !12, !alias.scope !29, !noalias !26
  %index.next.3 = add nuw i64 %index, 16
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !31

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %36 = getelementptr inbounds i64, i64* %src, i64 %index.epil
  %37 = bitcast i64* %36 to <2 x i64>*
  %wide.load.epil = load <2 x i64>, <2 x i64>* %37, align 8, !tbaa !12, !alias.scope !26
  %38 = getelementptr inbounds i64, i64* %36, i64 2
  %39 = bitcast i64* %38 to <2 x i64>*
  %wide.load34.epil = load <2 x i64>, <2 x i64>* %39, align 8, !tbaa !12, !alias.scope !26
  %40 = getelementptr inbounds i64, i64* %dst, i64 %index.epil
  %41 = bitcast i64* %40 to <2 x i64>*
  store <2 x i64> %wide.load.epil, <2 x i64>* %41, align 8, !tbaa !12, !alias.scope !29, !noalias !26
  %42 = getelementptr inbounds i64, i64* %40, i64 2
  %43 = bitcast i64* %42 to <2 x i64>*
  store <2 x i64> %wide.load34.epil, <2 x i64>* %43, align 8, !tbaa !12, !alias.scope !29, !noalias !26
  %index.next.epil = add nuw i64 %index.epil, 4
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !32

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond3.preheader, label %for.body.preheader47

for.body.preheader47:                             ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %44 = xor i64 %indvars.iv.ph, -1
  %45 = add nsw i64 %44, %wide.trip.count
  %xtraiter48 = and i64 %wide.trip.count, 3
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader47, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %indvars.iv.ph, %for.body.preheader47 ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader47 ]
  %arrayidx.prol = getelementptr inbounds i64, i64* %src, i64 %indvars.iv.prol
  %46 = load i64, i64* %arrayidx.prol, align 8, !tbaa !12
  %arrayidx2.prol = getelementptr inbounds i64, i64* %dst, i64 %indvars.iv.prol
  store i64 %46, i64* %arrayidx2.prol, align 8, !tbaa !12
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter48
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !33

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader47
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %for.body.preheader47 ], [ %indvars.iv.next.prol, %for.body.prol ]
  %47 = icmp ult i64 %45, 3
  br i1 %47, label %for.cond3.preheader, label %for.body

for.cond3.preheader:                              ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %top, %middle.block ], [ %top, %for.body ], [ %top, %for.body.prol.loopexit ]
  %cmp421 = icmp slt i32 %i.0.lcssa, %max
  br i1 %cmp421, label %for.body5.preheader, label %for.end10

for.body5.preheader:                              ; preds = %for.cond3.preheader
  %48 = zext i32 %i.0.lcssa to i64
  %wide.trip.count27 = zext i32 %max to i64
  %49 = sub nsw i64 %wide.trip.count27, %48
  %min.iters.check38 = icmp ult i64 %49, 4
  br i1 %min.iters.check38, label %for.body5.preheader46, label %vector.ph39

vector.ph39:                                      ; preds = %for.body5.preheader
  %n.vec41 = and i64 %49, -4
  %ind.end = add nsw i64 %n.vec41, %48
  %50 = add nsw i64 %n.vec41, -4
  %51 = lshr exact i64 %50, 2
  %52 = add nuw nsw i64 %51, 1
  %xtraiter50 = and i64 %52, 3
  %53 = icmp ult i64 %50, 12
  br i1 %53, label %middle.block35.unr-lcssa, label %vector.ph39.new

vector.ph39.new:                                  ; preds = %vector.ph39
  %unroll_iter53 = and i64 %52, 9223372036854775804
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph39.new
  %index44 = phi i64 [ 0, %vector.ph39.new ], [ %index.next45.3, %vector.body37 ]
  %niter54 = phi i64 [ 0, %vector.ph39.new ], [ %niter54.next.3, %vector.body37 ]
  %offset.idx = add i64 %index44, %48
  %54 = getelementptr inbounds i64, i64* %dst, i64 %offset.idx
  %55 = bitcast i64* %54 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %55, align 8, !tbaa !12
  %56 = getelementptr inbounds i64, i64* %54, i64 2
  %57 = bitcast i64* %56 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %57, align 8, !tbaa !12
  %index.next45 = or i64 %index44, 4
  %offset.idx.1 = add i64 %index.next45, %48
  %58 = getelementptr inbounds i64, i64* %dst, i64 %offset.idx.1
  %59 = bitcast i64* %58 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %59, align 8, !tbaa !12
  %60 = getelementptr inbounds i64, i64* %58, i64 2
  %61 = bitcast i64* %60 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %61, align 8, !tbaa !12
  %index.next45.1 = or i64 %index44, 8
  %offset.idx.2 = add i64 %index.next45.1, %48
  %62 = getelementptr inbounds i64, i64* %dst, i64 %offset.idx.2
  %63 = bitcast i64* %62 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %63, align 8, !tbaa !12
  %64 = getelementptr inbounds i64, i64* %62, i64 2
  %65 = bitcast i64* %64 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %65, align 8, !tbaa !12
  %index.next45.2 = or i64 %index44, 12
  %offset.idx.3 = add i64 %index.next45.2, %48
  %66 = getelementptr inbounds i64, i64* %dst, i64 %offset.idx.3
  %67 = bitcast i64* %66 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %67, align 8, !tbaa !12
  %68 = getelementptr inbounds i64, i64* %66, i64 2
  %69 = bitcast i64* %68 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %69, align 8, !tbaa !12
  %index.next45.3 = add nuw i64 %index44, 16
  %niter54.next.3 = add nuw i64 %niter54, 4
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %middle.block35.unr-lcssa, label %vector.body37, !llvm.loop !34

middle.block35.unr-lcssa:                         ; preds = %vector.body37, %vector.ph39
  %index44.unr = phi i64 [ 0, %vector.ph39 ], [ %index.next45.3, %vector.body37 ]
  %lcmp.mod52.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod52.not, label %middle.block35, label %vector.body37.epil

vector.body37.epil:                               ; preds = %middle.block35.unr-lcssa, %vector.body37.epil
  %index44.epil = phi i64 [ %index.next45.epil, %vector.body37.epil ], [ %index44.unr, %middle.block35.unr-lcssa ]
  %epil.iter51 = phi i64 [ %epil.iter51.next, %vector.body37.epil ], [ 0, %middle.block35.unr-lcssa ]
  %offset.idx.epil = add i64 %index44.epil, %48
  %70 = getelementptr inbounds i64, i64* %dst, i64 %offset.idx.epil
  %71 = bitcast i64* %70 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %71, align 8, !tbaa !12
  %72 = getelementptr inbounds i64, i64* %70, i64 2
  %73 = bitcast i64* %72 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %73, align 8, !tbaa !12
  %index.next45.epil = add nuw i64 %index44.epil, 4
  %epil.iter51.next = add i64 %epil.iter51, 1
  %epil.iter51.cmp.not = icmp eq i64 %epil.iter51.next, %xtraiter50
  br i1 %epil.iter51.cmp.not, label %middle.block35, label %vector.body37.epil, !llvm.loop !35

middle.block35:                                   ; preds = %vector.body37.epil, %middle.block35.unr-lcssa
  %cmp.n43 = icmp eq i64 %49, %n.vec41
  br i1 %cmp.n43, label %for.end10, label %for.body5.preheader46

for.body5.preheader46:                            ; preds = %for.body5.preheader, %middle.block35
  %indvars.iv24.ph = phi i64 [ %48, %for.body5.preheader ], [ %ind.end, %middle.block35 ]
  br label %for.body5

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx = getelementptr inbounds i64, i64* %src, i64 %indvars.iv
  %74 = load i64, i64* %arrayidx, align 8, !tbaa !12
  %arrayidx2 = getelementptr inbounds i64, i64* %dst, i64 %indvars.iv
  store i64 %74, i64* %arrayidx2, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i64, i64* %src, i64 %indvars.iv.next
  %75 = load i64, i64* %arrayidx.1, align 8, !tbaa !12
  %arrayidx2.1 = getelementptr inbounds i64, i64* %dst, i64 %indvars.iv.next
  store i64 %75, i64* %arrayidx2.1, align 8, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx.2 = getelementptr inbounds i64, i64* %src, i64 %indvars.iv.next.1
  %76 = load i64, i64* %arrayidx.2, align 8, !tbaa !12
  %arrayidx2.2 = getelementptr inbounds i64, i64* %dst, i64 %indvars.iv.next.1
  store i64 %76, i64* %arrayidx2.2, align 8, !tbaa !12
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx.3 = getelementptr inbounds i64, i64* %src, i64 %indvars.iv.next.2
  %77 = load i64, i64* %arrayidx.3, align 8, !tbaa !12
  %arrayidx2.3 = getelementptr inbounds i64, i64* %dst, i64 %indvars.iv.next.2
  store i64 %77, i64* %arrayidx2.3, align 8, !tbaa !12
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %for.cond3.preheader, label %for.body, !llvm.loop !36

for.body5:                                        ; preds = %for.body5.preheader46, %for.body5
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.body5 ], [ %indvars.iv24.ph, %for.body5.preheader46 ]
  %arrayidx7 = getelementptr inbounds i64, i64* %dst, i64 %indvars.iv24
  store i64 0, i64* %arrayidx7, align 8, !tbaa !12
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end10, label %for.body5, !llvm.loop !37

for.end10:                                        ; preds = %for.body5, %middle.block35, %for.cond3.preheader
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i64 @bn_sub_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) #3

declare void @bn_correct_top(%struct.bignum_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BN_nist_mod_224(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* nocapture readnone %field, %struct.bignum_ctx* noundef %ctx) #1 {
entry:
  %c_d = alloca [4 x i64], align 16
  %t_d = alloca [4 x i64], align 16
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top1, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !10
  %2 = bitcast [4 x i64]* %c_d to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #6
  %call = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %a) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull @BN_nist_mod_224.ossl_bignum_nist_p_224_sqr) #7
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_224, %struct.bignum_ctx* noundef %ctx) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_224, %struct.bignum_st* noundef nonnull %a) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp7 = icmp sgt i32 %call4, 0
  %cmp9 = icmp eq %struct.bignum_st* %r, %a
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.else
  br i1 %cmp9, label %cleanup, label %cond.false

cond.false:                                       ; preds = %if.then8
  %call10 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a) #7
  %cmp11 = icmp ne %struct.bignum_st* %call10, null
  %conv = zext i1 %cmp11 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.else
  br i1 %cmp9, label %if.end23, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef 4) #7
  %tobool18.not = icmp eq %struct.bignum_st* %call17, null
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.then16
  %d21 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %3 = load i64*, i64** %d21, align 8, !tbaa !10
  tail call fastcc void @nist_cp_bn(i64* noundef %3, i64* noundef %1, i32 noundef 4) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end13, %if.end20
  %r_d.0 = phi i64* [ %3, %if.end20 ], [ %1, %if.end13 ]
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %c_d, i64 0, i64 0
  %add.ptr = getelementptr inbounds i64, i64* %1, i64 3
  %sub = add nsw i32 %0, -3
  call fastcc void @nist_cp_bn_0(i64* noundef nonnull %arraydecay, i64* noundef nonnull %add.ptr, i32 noundef %sub, i32 noundef 4) #8
  %4 = load i64, i64* %arraydecay, align 16, !tbaa !12
  %arrayidx25 = getelementptr inbounds [4 x i64], [4 x i64]* %c_d, i64 0, i64 1
  %5 = load i64, i64* %arrayidx25, align 8, !tbaa !12
  %or = tail call i64 @llvm.fshl.i64(i64 %5, i64 %4, i64 32)
  %arrayidx32 = getelementptr inbounds [4 x i64], [4 x i64]* %c_d, i64 0, i64 2
  %6 = load i64, i64* %arrayidx32, align 16, !tbaa !12
  %or36 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %5, i64 32)
  %arrayidx41 = getelementptr inbounds [4 x i64], [4 x i64]* %c_d, i64 0, i64 3
  %7 = load i64, i64* %arrayidx41, align 8, !tbaa !12
  %or45 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %6, i64 32)
  %shr47 = lshr i64 %7, 32
  %arrayidx50 = getelementptr inbounds i64, i64* %r_d.0, i64 3
  %8 = load i64, i64* %arrayidx50, align 8, !tbaa !12
  %and = and i64 %8, 4294967295
  store i64 %and, i64* %arrayidx50, align 8, !tbaa !12
  %9 = bitcast [4 x i64]* %t_d to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #6
  %arrayidx51 = getelementptr inbounds [4 x i64], [4 x i64]* %t_d, i64 0, i64 0
  store i64 0, i64* %arrayidx51, align 16, !tbaa !12
  %arrayidx54 = getelementptr inbounds [4 x i64], [4 x i64]* %t_d, i64 0, i64 1
  %shl57 = shl i64 %or, 32
  store i64 %shl57, i64* %arrayidx54, align 8, !tbaa !12
  %arrayidx63 = getelementptr inbounds [4 x i64], [4 x i64]* %t_d, i64 0, i64 2
  %or68 = tail call i64 @llvm.fshl.i64(i64 %or36, i64 %or, i64 32)
  store i64 %or68, i64* %arrayidx63, align 16, !tbaa !12
  %shr71 = lshr i64 %or36, 32
  %arrayidx72 = getelementptr inbounds [4 x i64], [4 x i64]* %t_d, i64 0, i64 3
  store i64 %shr71, i64* %arrayidx72, align 8, !tbaa !12
  %call74 = call i64 @bn_add_words(i64* noundef %r_d.0, i64* noundef %r_d.0, i64* noundef nonnull %arrayidx51, i32 noundef 4) #7
  store i64 0, i64* %arrayidx51, align 16, !tbaa !12
  %shl82 = shl i64 %or45, 32
  store i64 %shl82, i64* %arrayidx54, align 8, !tbaa !12
  %shr87 = lshr i64 %or45, 32
  %shl91 = and i64 %7, -4294967296
  %or93 = or i64 %shr87, %shl91
  store i64 %or93, i64* %arrayidx63, align 16, !tbaa !12
  store i64 0, i64* %arrayidx72, align 8, !tbaa !12
  %call96 = call i64 @bn_add_words(i64* noundef %r_d.0, i64* noundef %r_d.0, i64* noundef nonnull %arrayidx51, i32 noundef 4) #7
  store i64 %or, i64* %arrayidx51, align 16, !tbaa !12
  store i64 %or36, i64* %arrayidx54, align 8, !tbaa !12
  store i64 %or45, i64* %arrayidx63, align 16, !tbaa !12
  store i64 %shr47, i64* %arrayidx72, align 8, !tbaa !12
  %call130 = call i64 @bn_sub_words(i64* noundef %r_d.0, i64* noundef %r_d.0, i64* noundef nonnull %arrayidx51, i32 noundef 4) #7
  store i64 %or45, i64* %arrayidx51, align 16, !tbaa !12
  store i64 %shr47, i64* %arrayidx54, align 8, !tbaa !12
  %10 = bitcast i64* %arrayidx63 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 16, !tbaa !12
  %call153 = call i64 @bn_sub_words(i64* noundef %r_d.0, i64* noundef %r_d.0, i64* noundef nonnull %arrayidx51, i32 noundef 4) #7
  %11 = load i64, i64* %arrayidx50, align 8, !tbaa !12
  %shr157 = lshr i64 %11, 32
  %conv158 = trunc i64 %shr157 to i32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #6
  %cmp159 = icmp sgt i32 %conv158, 0
  br i1 %cmp159, label %if.then161, label %if.else171

if.then161:                                       ; preds = %if.end23
  %sub162 = add nuw nsw i64 %shr157, 4294967295
  %12 = and i64 %sub162, 4294967295
  %arraydecay164 = getelementptr inbounds [2 x [4 x i64]], [2 x [4 x i64]]* @_nist_p_224, i64 0, i64 %12, i64 0
  %call165 = call i64 @bn_sub_words(i64* noundef nonnull %r_d.0, i64* noundef nonnull %r_d.0, i64* noundef nonnull %arraydecay164, i32 noundef 4) #7
  %13 = load i64, i64* %arrayidx50, align 8, !tbaa !12
  %shr168 = lshr i64 %13, 32
  %neg = and i64 %shr168, 1
  %and170 = xor i64 %neg, 1
  br label %if.end190

if.else171:                                       ; preds = %if.end23
  %cmp172 = icmp slt i64 %11, 0
  br i1 %cmp172, label %if.then174, label %if.end190

if.then174:                                       ; preds = %if.else171
  %sub176 = xor i64 %shr157, 4294967295
  %arraydecay179 = getelementptr inbounds [2 x [4 x i64]], [2 x [4 x i64]]* @_nist_p_224, i64 0, i64 %sub176, i64 0
  %call180 = call i64 @bn_add_words(i64* noundef nonnull %r_d.0, i64* noundef nonnull %r_d.0, i64* noundef nonnull %arraydecay179, i32 noundef 4) #7
  %sext292 = shl i64 %call180, 32
  %conv182 = ashr exact i64 %sext292, 32
  %sub183 = sub nsw i64 0, %conv182
  %and184 = and i64 %sub183, ptrtoint (i64 (i64*, i64*, i64*, i32)* @bn_sub_words to i64)
  %neg185 = add nsw i64 %conv182, -1
  %and186 = and i64 %neg185, ptrtoint (i64 (i64*, i64*, i64*, i32)* @bn_add_words to i64)
  %or187 = or i64 %and186, %and184
  %14 = inttoptr i64 %or187 to i64 (i64*, i64*, i64*, i32)*
  br label %if.end190

if.end190:                                        ; preds = %if.else171, %if.then174, %if.then161
  %carry.0 = phi i64 [ %and170, %if.then161 ], [ %call180, %if.then174 ], [ 1, %if.else171 ]
  %u.sroa.0.0 = phi i64 (i64*, i64*, i64*, i32)* [ @bn_sub_words, %if.then161 ], [ %14, %if.then174 ], [ @bn_sub_words, %if.else171 ]
  %call193 = call i64 %u.sroa.0.0(i64* noundef nonnull %arraydecay, i64* noundef nonnull %r_d.0, i64* noundef getelementptr inbounds ([2 x [4 x i64]], [2 x [4 x i64]]* @_nist_p_224, i64 0, i64 0, i64 0), i32 noundef 4) #7
  %sub194 = sub i64 0, %call193
  %sext = shl i64 %carry.0, 32
  %conv195 = ashr exact i64 %sext, 32
  %sub196 = sub nsw i64 0, %conv195
  %15 = ptrtoint [4 x i64]* %c_d to i64
  %notlhs = add i64 %call193, -1
  %notrhs = add nsw i64 %conv195, -1
  %neg199 = or i64 %notlhs, %notrhs
  %and200 = and i64 %neg199, %15
  %16 = ptrtoint i64* %r_d.0 to i64
  %and197 = and i64 %sub196, %16
  %and201 = and i64 %and197, %sub194
  %or202 = or i64 %and200, %and201
  %17 = inttoptr i64 %or202 to i64*
  call fastcc void @nist_cp_bn(i64* noundef nonnull %r_d.0, i64* noundef %17, i32 noundef 4) #8
  %top203 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 4, i32* %top203, align 8, !tbaa !4
  call void @bn_correct_top(%struct.bignum_st* noundef %r) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %cond.false, %if.then8, %if.end190, %if.then6, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 1, %if.then6 ], [ 1, %if.end190 ], [ %conv, %cond.false ], [ 1, %if.then8 ], [ 0, %if.then16 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #6
  ret i32 %retval.0
}

declare i64 @bn_add_words(i64* noundef, i64* noundef, i64* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define i32 @BN_nist_mod_256(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* nocapture readnone %field, %struct.bignum_ctx* noundef %ctx) #1 {
entry:
  %buf = alloca %union.anon.2, align 8
  %c_d = alloca [4 x i64], align 16
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top1, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !10
  %2 = bitcast %union.anon.2* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #6
  %3 = bitcast [4 x i64]* %c_d to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #6
  %call = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %a) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull @BN_nist_mod_256.ossl_bignum_nist_p_256_sqr) #7
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_256, %struct.bignum_ctx* noundef %ctx) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_256, %struct.bignum_st* noundef nonnull %a) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp7 = icmp sgt i32 %call4, 0
  %cmp9 = icmp eq %struct.bignum_st* %r, %a
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.else
  br i1 %cmp9, label %cleanup, label %cond.false

cond.false:                                       ; preds = %if.then8
  %call10 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a) #7
  %cmp11 = icmp ne %struct.bignum_st* %call10, null
  %conv = zext i1 %cmp11 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.else
  br i1 %cmp9, label %if.end23, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef 4) #7
  %tobool18.not = icmp eq %struct.bignum_st* %call17, null
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.then16
  %d21 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %4 = load i64*, i64** %d21, align 8, !tbaa !10
  tail call fastcc void @nist_cp_bn(i64* noundef %4, i64* noundef %1, i32 noundef 4) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end13, %if.end20
  %r_d.0 = phi i64* [ %4, %if.end20 ], [ %1, %if.end13 ]
  %arraydecay = getelementptr inbounds %union.anon.2, %union.anon.2* %buf, i64 0, i32 0, i64 0
  %add.ptr = getelementptr inbounds i64, i64* %1, i64 4
  %sub = add nsw i32 %0, -4
  call fastcc void @nist_cp_bn_0(i64* noundef nonnull %arraydecay, i64* noundef nonnull %add.ptr, i32 noundef %sub, i32 noundef 4) #8
  %5 = bitcast i64* %r_d.0 to i32*
  %arraydecay24 = bitcast %union.anon.2* %buf to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !11
  %conv25 = zext i32 %6 to i64
  %7 = load i32, i32* %arraydecay24, align 8, !tbaa !11
  %conv27 = zext i32 %7 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %arraydecay24, i64 1
  %8 = load i32, i32* %arrayidx28, align 4, !tbaa !11
  %conv29 = zext i32 %8 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %arraydecay24, i64 3
  %9 = load i32, i32* %arrayidx31, align 4, !tbaa !11
  %conv32 = zext i32 %9 to i64
  %arrayidx34 = getelementptr inbounds %union.anon.2, %union.anon.2* %buf, i64 0, i32 0, i64 2
  %10 = bitcast i64* %arrayidx34 to i32*
  %11 = load i32, i32* %10, align 8, !tbaa !11
  %conv35 = zext i32 %11 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %arraydecay24, i64 5
  %12 = load i32, i32* %arrayidx37, align 4, !tbaa !11
  %conv38 = zext i32 %12 to i64
  %arrayidx40 = getelementptr inbounds %union.anon.2, %union.anon.2* %buf, i64 0, i32 0, i64 3
  %13 = bitcast i64* %arrayidx40 to i32*
  %14 = load i32, i32* %13, align 8, !tbaa !11
  %conv41 = zext i32 %14 to i64
  %.neg = add nuw nsw i64 %conv29, %conv27
  %.neg489 = add nuw nsw i64 %.neg, %conv25
  %15 = add nuw nsw i64 %conv32, %conv35
  %16 = add nuw nsw i64 %15, %conv38
  %17 = add nuw nsw i64 %16, %conv41
  %sub42 = sub nsw i64 %.neg489, %17
  %conv43 = trunc i64 %sub42 to i32
  store i32 %conv43, i32* %5, align 4, !tbaa !11
  %shr = ashr i64 %sub42, 32
  %arrayidx45 = getelementptr inbounds i32, i32* %5, i64 1
  %18 = load i32, i32* %arrayidx45, align 4, !tbaa !11
  %conv46 = zext i32 %18 to i64
  %arrayidx51 = getelementptr inbounds %union.anon.2, %union.anon.2* %buf, i64 0, i32 0, i64 1
  %19 = bitcast i64* %arrayidx51 to i32*
  %20 = load i32, i32* %19, align 8, !tbaa !11
  %conv52 = zext i32 %20 to i64
  %arrayidx63 = getelementptr inbounds i32, i32* %arraydecay24, i64 7
  %21 = load i32, i32* %arrayidx63, align 4, !tbaa !11
  %conv64 = zext i32 %21 to i64
  %.neg491 = add nuw nsw i64 %conv52, %conv29
  %22 = add nuw nsw i64 %conv35, %conv38
  %23 = add nuw nsw i64 %22, %conv41
  %add47 = sub nsw i64 %.neg491, %23
  %add50 = add nsw i64 %add47, %conv46
  %add53 = add nsw i64 %add50, %shr
  %sub65 = sub nsw i64 %add53, %conv64
  %conv66 = trunc i64 %sub65 to i32
  store i32 %conv66, i32* %arrayidx45, align 4, !tbaa !11
  %shr68 = ashr i64 %sub65, 32
  %arrayidx69477 = getelementptr inbounds i64, i64* %r_d.0, i64 1
  %arrayidx69 = bitcast i64* %arrayidx69477 to i32*
  %24 = load i32, i32* %arrayidx69, align 4, !tbaa !11
  %conv70 = zext i32 %24 to i64
  %.neg494 = add nuw nsw i64 %conv52, %conv32
  %25 = add nuw nsw i64 %conv38, %conv41
  %26 = add nuw nsw i64 %25, %conv64
  %add74 = sub nsw i64 %.neg494, %26
  %add77 = add nsw i64 %add74, %conv70
  %sub86 = add nsw i64 %add77, %shr68
  %conv87 = trunc i64 %sub86 to i32
  store i32 %conv87, i32* %arrayidx69, align 4, !tbaa !11
  %shr89 = ashr i64 %sub86, 32
  %arrayidx90 = getelementptr inbounds i32, i32* %5, i64 3
  %27 = load i32, i32* %arrayidx90, align 4, !tbaa !11
  %conv91 = zext i32 %27 to i64
  %reass.add = shl nuw nsw i64 %conv32, 1
  %reass.add478 = shl nuw nsw i64 %conv35, 1
  %.neg497 = sub nsw i64 %reass.add, %.neg
  %add92 = add nsw i64 %.neg497, %reass.add478
  %add98 = add nsw i64 %add92, %conv38
  %add104 = sub nsw i64 %add98, %conv64
  %add107 = add nsw i64 %add104, %conv91
  %sub116 = add nsw i64 %add107, %shr89
  %conv117 = trunc i64 %sub116 to i32
  store i32 %conv117, i32* %arrayidx90, align 4, !tbaa !11
  %shr119 = ashr i64 %sub116, 32
  %arrayidx120479 = getelementptr inbounds i64, i64* %r_d.0, i64 2
  %arrayidx120 = bitcast i64* %arrayidx120479 to i32*
  %28 = load i32, i32* %arrayidx120, align 4, !tbaa !11
  %conv121 = zext i32 %28 to i64
  %reass.add481 = shl nuw nsw i64 %conv38, 1
  %.neg498 = sub nsw i64 %reass.add478, %conv29
  %add122 = add nsw i64 %.neg498, %reass.add481
  %add128 = add nsw i64 %add122, %conv41
  %add134 = sub nsw i64 %add128, %conv52
  %add137 = add nsw i64 %add134, %conv121
  %sub143 = add nsw i64 %add137, %shr119
  %conv144 = trunc i64 %sub143 to i32
  store i32 %conv144, i32* %arrayidx120, align 4, !tbaa !11
  %shr146 = ashr i64 %sub143, 32
  %arrayidx147 = getelementptr inbounds i32, i32* %5, i64 5
  %29 = load i32, i32* %arrayidx147, align 4, !tbaa !11
  %conv148 = zext i32 %29 to i64
  %reass.add483 = shl nuw nsw i64 %conv41, 1
  %add149 = add nuw nsw i64 %reass.add483, %reass.add481
  %add155 = add nuw nsw i64 %add149, %conv64
  %add161 = sub nsw i64 %add155, %.neg494
  %add164 = add nsw i64 %add161, %conv148
  %sub170 = add nsw i64 %add164, %shr146
  %conv171 = trunc i64 %sub170 to i32
  store i32 %conv171, i32* %arrayidx147, align 4, !tbaa !11
  %shr173 = ashr i64 %sub170, 32
  %arrayidx174484 = getelementptr inbounds i64, i64* %r_d.0, i64 3
  %arrayidx174 = bitcast i64* %arrayidx174484 to i32*
  %30 = load i32, i32* %arrayidx174, align 4, !tbaa !11
  %conv175 = zext i32 %30 to i64
  %reass.add486 = shl nuw nsw i64 %conv64, 1
  %add182 = sub nsw i64 %25, %.neg
  %add188 = add nsw i64 %add182, %reass.add483
  %add191 = add nsw i64 %add188, %reass.add486
  %add194 = add nsw i64 %add191, %conv175
  %sub200 = add nsw i64 %add194, %shr173
  %conv201 = trunc i64 %sub200 to i32
  store i32 %conv201, i32* %arrayidx174, align 4, !tbaa !11
  %shr203 = ashr i64 %sub200, 32
  %arrayidx204 = getelementptr inbounds i32, i32* %5, i64 7
  %31 = load i32, i32* %arrayidx204, align 4, !tbaa !11
  %conv205 = zext i32 %31 to i64
  %.neg501 = add nuw nsw i64 %conv64, %conv27
  %32 = add nuw nsw i64 %22, %.neg494
  %add212 = sub nsw i64 %.neg501, %32
  %add215 = add nsw i64 %add212, %reass.add486
  %add218 = add nsw i64 %add215, %conv205
  %sub230 = add nsw i64 %add218, %shr203
  %conv231 = trunc i64 %sub230 to i32
  store i32 %conv231, i32* %arrayidx204, align 4, !tbaa !11
  %33 = lshr i64 %sub230, 32
  %conv234 = trunc i64 %33 to i32
  %cmp235 = icmp sgt i32 %conv234, 0
  br i1 %cmp235, label %if.then237, label %if.else243

if.then237:                                       ; preds = %if.end23
  %sub238 = add nuw nsw i64 %33, 4294967295
  %34 = and i64 %sub238, 4294967295
  %arraydecay240 = getelementptr inbounds [5 x [4 x i64]], [5 x [4 x i64]]* @_nist_p_256, i64 0, i64 %34, i64 0
  %call241 = tail call i64 @bn_sub_words(i64* noundef nonnull %r_d.0, i64* noundef nonnull %r_d.0, i64* noundef nonnull %arraydecay240, i32 noundef 4) #7
  br label %if.end259

if.else243:                                       ; preds = %if.end23
  %cmp244 = icmp slt i64 %sub230, 0
  br i1 %cmp244, label %if.then246, label %if.end259

if.then246:                                       ; preds = %if.else243
  %sub248 = xor i64 %33, 4294967295
  %arraydecay251 = getelementptr inbounds [5 x [4 x i64]], [5 x [4 x i64]]* @_nist_p_256, i64 0, i64 %sub248, i64 0
  %call252 = tail call i64 @bn_add_words(i64* noundef nonnull %r_d.0, i64* noundef nonnull %r_d.0, i64* noundef nonnull %arraydecay251, i32 noundef 4) #7
  %sext488 = shl i64 %call252, 32
  %conv254 = ashr exact i64 %sext488, 32
  %sub255 = sub nsw i64 0, %conv254
  %and = and i64 %sub255, ptrtoint (i64 (i64*, i64*, i64*, i32)* @bn_sub_words to i64)
  %neg = add nsw i64 %conv254, -1
  %and256 = and i64 %neg, ptrtoint (i64 (i64*, i64*, i64*, i32)* @bn_add_words to i64)
  %or = or i64 %and256, %and
  %35 = inttoptr i64 %or to i64 (i64*, i64*, i64*, i32)*
  br label %if.end259

if.end259:                                        ; preds = %if.else243, %if.then246, %if.then237
  %u.sroa.0.0 = phi i64 (i64*, i64*, i64*, i32)* [ @bn_sub_words, %if.then237 ], [ %35, %if.then246 ], [ @bn_sub_words, %if.else243 ]
  %carry.0 = phi i64 [ %call241, %if.then237 ], [ %call252, %if.then246 ], [ 1, %if.else243 ]
  %arraydecay261 = getelementptr inbounds [4 x i64], [4 x i64]* %c_d, i64 0, i64 0
  %call262 = call i64 %u.sroa.0.0(i64* noundef nonnull %arraydecay261, i64* noundef nonnull %r_d.0, i64* noundef getelementptr inbounds ([5 x [4 x i64]], [5 x [4 x i64]]* @_nist_p_256, i64 0, i64 0, i64 0), i32 noundef 4) #7
  %sub263 = sub i64 0, %call262
  %sext = shl i64 %carry.0, 32
  %conv264 = ashr exact i64 %sext, 32
  %sub265 = sub nsw i64 0, %conv264
  %36 = ptrtoint [4 x i64]* %c_d to i64
  %notlhs = add i64 %call262, -1
  %notrhs = add nsw i64 %conv264, -1
  %neg268 = or i64 %notrhs, %notlhs
  %and269 = and i64 %neg268, %36
  %37 = ptrtoint i64* %r_d.0 to i64
  %and266 = and i64 %sub263, %37
  %and270 = and i64 %and266, %sub265
  %or271 = or i64 %and269, %and270
  %38 = inttoptr i64 %or271 to i64*
  call fastcc void @nist_cp_bn(i64* noundef nonnull %r_d.0, i64* noundef %38, i32 noundef 4) #8
  %top272 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 4, i32* %top272, align 8, !tbaa !4
  call void @bn_correct_top(%struct.bignum_st* noundef %r) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %cond.false, %if.then8, %if.end259, %if.then6, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 1, %if.then6 ], [ 1, %if.end259 ], [ %conv, %cond.false ], [ 1, %if.then8 ], [ 0, %if.then16 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_nist_mod_384(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* nocapture readnone %field, %struct.bignum_ctx* noundef %ctx) #1 {
entry:
  %buf = alloca %union.anon.4, align 8
  %c_d = alloca [6 x i64], align 16
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top1, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !10
  %2 = bitcast %union.anon.4* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %2) #6
  %3 = bitcast [6 x i64]* %c_d to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #6
  %call = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %a) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull @BN_nist_mod_384.ossl_bignum_nist_p_384_sqr) #7
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_384, %struct.bignum_ctx* noundef %ctx) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_384, %struct.bignum_st* noundef nonnull %a) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp7 = icmp sgt i32 %call4, 0
  %cmp9 = icmp eq %struct.bignum_st* %r, %a
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.else
  br i1 %cmp9, label %cleanup, label %cond.false

cond.false:                                       ; preds = %if.then8
  %call10 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a) #7
  %cmp11 = icmp ne %struct.bignum_st* %call10, null
  %conv = zext i1 %cmp11 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.else
  br i1 %cmp9, label %if.end23, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef 6) #7
  %tobool18.not = icmp eq %struct.bignum_st* %call17, null
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.then16
  %d21 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %4 = load i64*, i64** %d21, align 8, !tbaa !10
  tail call fastcc void @nist_cp_bn(i64* noundef %4, i64* noundef %1, i32 noundef 6) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end13, %if.end20
  %r_d.0 = phi i64* [ %4, %if.end20 ], [ %1, %if.end13 ]
  %arraydecay = getelementptr inbounds %union.anon.4, %union.anon.4* %buf, i64 0, i32 0, i64 0
  %add.ptr = getelementptr inbounds i64, i64* %1, i64 6
  %sub = add nsw i32 %0, -6
  call fastcc void @nist_cp_bn_0(i64* noundef nonnull %arraydecay, i64* noundef nonnull %add.ptr, i32 noundef %sub, i32 noundef 6) #8
  %5 = bitcast i64* %r_d.0 to i32*
  %arraydecay24 = bitcast %union.anon.4* %buf to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !11
  %conv25 = zext i32 %6 to i64
  %7 = load i32, i32* %arraydecay24, align 8, !tbaa !11
  %conv27 = zext i32 %7 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %arraydecay24, i64 9
  %8 = load i32, i32* %arrayidx28, align 4, !tbaa !11
  %conv29 = zext i32 %8 to i64
  %arrayidx31 = getelementptr inbounds %union.anon.4, %union.anon.4* %buf, i64 0, i32 0, i64 4
  %9 = bitcast i64* %arrayidx31 to i32*
  %10 = load i32, i32* %9, align 8, !tbaa !11
  %conv32 = zext i32 %10 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %arraydecay24, i64 11
  %11 = load i32, i32* %arrayidx34, align 4, !tbaa !11
  %conv35 = zext i32 %11 to i64
  %add = add nuw nsw i64 %conv32, %conv27
  %add30 = add nuw nsw i64 %add, %conv25
  %add33 = add nuw nsw i64 %add30, %conv29
  %sub36 = sub nsw i64 %add33, %conv35
  %conv37 = trunc i64 %sub36 to i32
  store i32 %conv37, i32* %5, align 4, !tbaa !11
  %shr = ashr i64 %sub36, 32
  %arrayidx39 = getelementptr inbounds i32, i32* %5, i64 1
  %12 = load i32, i32* %arrayidx39, align 4, !tbaa !11
  %conv40 = zext i32 %12 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %arraydecay24, i64 1
  %13 = load i32, i32* %arrayidx42, align 4, !tbaa !11
  %conv43 = zext i32 %13 to i64
  %arrayidx45 = getelementptr inbounds %union.anon.4, %union.anon.4* %buf, i64 0, i32 0, i64 5
  %14 = bitcast i64* %arrayidx45 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !11
  %conv46 = zext i32 %15 to i64
  %.neg = add nuw nsw i64 %conv43, %conv35
  %add44 = sub nsw i64 %.neg, %add
  %add47 = add nsw i64 %add44, %conv40
  %add50 = add nsw i64 %add47, %shr
  %sub56 = add nsw i64 %add50, %conv46
  %conv57 = trunc i64 %sub56 to i32
  store i32 %conv57, i32* %arrayidx39, align 4, !tbaa !11
  %shr59 = ashr i64 %sub56, 32
  %arrayidx60576 = getelementptr inbounds i64, i64* %r_d.0, i64 1
  %arrayidx60 = bitcast i64* %arrayidx60576 to i32*
  %16 = load i32, i32* %arrayidx60, align 4, !tbaa !11
  %conv61 = zext i32 %16 to i64
  %arrayidx63 = getelementptr inbounds %union.anon.4, %union.anon.4* %buf, i64 0, i32 0, i64 1
  %17 = bitcast i64* %arrayidx63 to i32*
  %18 = load i32, i32* %17, align 8, !tbaa !11
  %conv64 = zext i32 %18 to i64
  %.neg585 = add nuw nsw i64 %conv64, %conv35
  %19 = add nuw nsw i64 %conv29, %conv43
  %add65 = sub nsw i64 %.neg585, %19
  %add68 = add nsw i64 %add65, %conv61
  %sub74 = add nsw i64 %add68, %shr59
  %conv75 = trunc i64 %sub74 to i32
  store i32 %conv75, i32* %arrayidx60, align 4, !tbaa !11
  %shr77 = ashr i64 %sub74, 32
  %arrayidx78 = getelementptr inbounds i32, i32* %5, i64 3
  %20 = load i32, i32* %arrayidx78, align 4, !tbaa !11
  %conv79 = zext i32 %20 to i64
  %arrayidx81 = getelementptr inbounds i32, i32* %arraydecay24, i64 3
  %21 = load i32, i32* %arrayidx81, align 4, !tbaa !11
  %conv82 = zext i32 %21 to i64
  %.neg587 = add nuw nsw i64 %add, %conv29
  %22 = add nuw nsw i64 %conv35, %conv46
  %23 = add nuw nsw i64 %22, %conv64
  %add86 = sub nsw i64 %.neg587, %23
  %add89 = add nsw i64 %add86, %conv79
  %add92 = add nsw i64 %add89, %conv82
  %sub101 = add nsw i64 %add92, %shr77
  %conv102 = trunc i64 %sub101 to i32
  store i32 %conv102, i32* %arrayidx78, align 4, !tbaa !11
  %shr104 = ashr i64 %sub101, 32
  %arrayidx105577 = getelementptr inbounds i64, i64* %r_d.0, i64 2
  %arrayidx105 = bitcast i64* %arrayidx105577 to i32*
  %24 = load i32, i32* %arrayidx105, align 4, !tbaa !11
  %conv106 = zext i32 %24 to i64
  %reass.add = shl nuw nsw i64 %conv29, 1
  %arrayidx114 = getelementptr inbounds %union.anon.4, %union.anon.4* %buf, i64 0, i32 0, i64 2
  %25 = bitcast i64* %arrayidx114 to i32*
  %26 = load i32, i32* %25, align 8, !tbaa !11
  %conv115 = zext i32 %26 to i64
  %reass.add578 = shl nuw nsw i64 %conv35, 1
  %add107 = add nuw nsw i64 %add, %reass.add
  %add113 = sub nsw i64 %add107, %reass.add578
  %add116 = add nsw i64 %add113, %conv43
  %add119 = add nsw i64 %add116, %conv46
  %add122 = sub nsw i64 %add119, %conv82
  %add125 = add nsw i64 %add122, %conv106
  %add128 = add nsw i64 %add125, %conv115
  %sub137 = add nsw i64 %add128, %shr104
  %conv138 = trunc i64 %sub137 to i32
  store i32 %conv138, i32* %arrayidx105, align 4, !tbaa !11
  %shr140 = ashr i64 %sub137, 32
  %arrayidx141 = getelementptr inbounds i32, i32* %5, i64 5
  %27 = load i32, i32* %arrayidx141, align 4, !tbaa !11
  %conv142 = zext i32 %27 to i64
  %reass.add579 = shl nuw nsw i64 %conv46, 1
  %arrayidx150 = getelementptr inbounds i32, i32* %arraydecay24, i64 5
  %28 = load i32, i32* %arrayidx150, align 4, !tbaa !11
  %conv151 = zext i32 %28 to i64
  %add149 = add nuw nsw i64 %.neg585, %conv29
  %add152 = add nuw nsw i64 %add149, %conv43
  %add155 = add nuw nsw i64 %add152, %reass.add579
  %add158 = sub nsw i64 %add155, %conv115
  %add161 = add nsw i64 %add158, %conv142
  %add164 = add nsw i64 %add161, %conv151
  %sub167 = add nsw i64 %add164, %shr140
  %conv168 = trunc i64 %sub167 to i32
  store i32 %conv168, i32* %arrayidx141, align 4, !tbaa !11
  %shr170 = ashr i64 %sub167, 32
  %arrayidx171580 = getelementptr inbounds i64, i64* %r_d.0, i64 3
  %arrayidx171 = bitcast i64* %arrayidx171580 to i32*
  %29 = load i32, i32* %arrayidx171, align 4, !tbaa !11
  %conv172 = zext i32 %29 to i64
  %arrayidx180 = getelementptr inbounds %union.anon.4, %union.anon.4* %buf, i64 0, i32 0, i64 3
  %30 = bitcast i64* %arrayidx180 to i32*
  %31 = load i32, i32* %30, align 8, !tbaa !11
  %conv181 = zext i32 %31 to i64
  %add173 = add nuw nsw i64 %conv64, %conv46
  %add179 = add nuw nsw i64 %add173, %reass.add578
  %add182 = add nuw nsw i64 %add179, %conv82
  %add185 = sub nsw i64 %add182, %conv151
  %add188 = add nsw i64 %add185, %conv172
  %add191 = add nsw i64 %add188, %conv181
  %sub194 = add nsw i64 %add191, %shr170
  %conv195 = trunc i64 %sub194 to i32
  store i32 %conv195, i32* %arrayidx171, align 4, !tbaa !11
  %shr197 = ashr i64 %sub194, 32
  %arrayidx198 = getelementptr inbounds i32, i32* %5, i64 7
  %32 = load i32, i32* %arrayidx198, align 4, !tbaa !11
  %conv199 = zext i32 %32 to i64
  %arrayidx201 = getelementptr inbounds i32, i32* %arraydecay24, i64 7
  %33 = load i32, i32* %arrayidx201, align 4, !tbaa !11
  %conv202 = zext i32 %33 to i64
  %add200 = add nuw nsw i64 %conv202, %conv35
  %add203 = add nuw nsw i64 %add200, %conv82
  %add206 = add nuw nsw i64 %add203, %conv115
  %add209 = sub nsw i64 %add206, %conv181
  %add212 = add nsw i64 %add209, %conv199
  %sub215 = add nsw i64 %add212, %shr197
  %conv216 = trunc i64 %sub215 to i32
  store i32 %conv216, i32* %arrayidx198, align 4, !tbaa !11
  %shr218 = ashr i64 %sub215, 32
  %arrayidx219582 = getelementptr inbounds i64, i64* %r_d.0, i64 4
  %arrayidx219 = bitcast i64* %arrayidx219582 to i32*
  %34 = load i32, i32* %arrayidx219, align 4, !tbaa !11
  %conv220 = zext i32 %34 to i64
  %add221 = add nuw nsw i64 %conv115, %conv32
  %add224 = add nuw nsw i64 %add221, %conv151
  %add227 = sub nsw i64 %add224, %conv202
  %add230 = add nsw i64 %add227, %conv220
  %sub233 = add nsw i64 %add230, %shr218
  %conv234 = trunc i64 %sub233 to i32
  store i32 %conv234, i32* %arrayidx219, align 4, !tbaa !11
  %shr236 = ashr i64 %sub233, 32
  %arrayidx237 = getelementptr inbounds i32, i32* %5, i64 9
  %35 = load i32, i32* %arrayidx237, align 4, !tbaa !11
  %conv238 = zext i32 %35 to i64
  %add239 = add nuw nsw i64 %conv151, %conv29
  %add242 = sub nsw i64 %add239, %conv32
  %add245 = add nsw i64 %add242, %conv181
  %add248 = add nsw i64 %add245, %conv238
  %sub251 = add nsw i64 %add248, %shr236
  %conv252 = trunc i64 %sub251 to i32
  store i32 %conv252, i32* %arrayidx237, align 4, !tbaa !11
  %shr254 = ashr i64 %sub251, 32
  %arrayidx255583 = getelementptr inbounds i64, i64* %r_d.0, i64 5
  %arrayidx255 = bitcast i64* %arrayidx255583 to i32*
  %36 = load i32, i32* %arrayidx255, align 4, !tbaa !11
  %conv256 = zext i32 %36 to i64
  %add257 = add nuw nsw i64 %conv181, %conv46
  %add260 = sub nsw i64 %add257, %conv29
  %add263 = add nsw i64 %add260, %conv202
  %add266 = add nsw i64 %add263, %conv256
  %sub269 = add nsw i64 %add266, %shr254
  %conv270 = trunc i64 %sub269 to i32
  store i32 %conv270, i32* %arrayidx255, align 4, !tbaa !11
  %shr272 = ashr i64 %sub269, 32
  %arrayidx273 = getelementptr inbounds i32, i32* %5, i64 11
  %37 = load i32, i32* %arrayidx273, align 4, !tbaa !11
  %conv274 = zext i32 %37 to i64
  %add278 = add nuw nsw i64 %add200, %conv32
  %add281 = sub nsw i64 %add278, %conv46
  %add284 = add nsw i64 %add281, %conv274
  %sub287 = add nsw i64 %add284, %shr272
  %conv288 = trunc i64 %sub287 to i32
  store i32 %conv288, i32* %arrayidx273, align 4, !tbaa !11
  %38 = lshr i64 %sub287, 32
  %conv291 = trunc i64 %38 to i32
  %cmp292 = icmp sgt i32 %conv291, 0
  br i1 %cmp292, label %if.then294, label %if.else300

if.then294:                                       ; preds = %if.end23
  %sub295 = add nuw nsw i64 %38, 4294967295
  %39 = and i64 %sub295, 4294967295
  %arraydecay297 = getelementptr inbounds [5 x [6 x i64]], [5 x [6 x i64]]* @_nist_p_384, i64 0, i64 %39, i64 0
  %call298 = tail call i64 @bn_sub_words(i64* noundef nonnull %r_d.0, i64* noundef nonnull %r_d.0, i64* noundef nonnull %arraydecay297, i32 noundef 6) #7
  br label %if.end316

if.else300:                                       ; preds = %if.end23
  %cmp301 = icmp slt i64 %sub287, 0
  br i1 %cmp301, label %if.then303, label %if.end316

if.then303:                                       ; preds = %if.else300
  %sub305 = xor i64 %38, 4294967295
  %arraydecay308 = getelementptr inbounds [5 x [6 x i64]], [5 x [6 x i64]]* @_nist_p_384, i64 0, i64 %sub305, i64 0
  %call309 = tail call i64 @bn_add_words(i64* noundef nonnull %r_d.0, i64* noundef nonnull %r_d.0, i64* noundef nonnull %arraydecay308, i32 noundef 6) #7
  %sext584 = shl i64 %call309, 32
  %conv311 = ashr exact i64 %sext584, 32
  %sub312 = sub nsw i64 0, %conv311
  %and = and i64 %sub312, ptrtoint (i64 (i64*, i64*, i64*, i32)* @bn_sub_words to i64)
  %neg = add nsw i64 %conv311, -1
  %and313 = and i64 %neg, ptrtoint (i64 (i64*, i64*, i64*, i32)* @bn_add_words to i64)
  %or = or i64 %and313, %and
  %40 = inttoptr i64 %or to i64 (i64*, i64*, i64*, i32)*
  br label %if.end316

if.end316:                                        ; preds = %if.else300, %if.then303, %if.then294
  %u.sroa.0.0 = phi i64 (i64*, i64*, i64*, i32)* [ @bn_sub_words, %if.then294 ], [ %40, %if.then303 ], [ @bn_sub_words, %if.else300 ]
  %carry.0 = phi i64 [ %call298, %if.then294 ], [ %call309, %if.then303 ], [ 1, %if.else300 ]
  %arraydecay318 = getelementptr inbounds [6 x i64], [6 x i64]* %c_d, i64 0, i64 0
  %call319 = call i64 %u.sroa.0.0(i64* noundef nonnull %arraydecay318, i64* noundef nonnull %r_d.0, i64* noundef getelementptr inbounds ([5 x [6 x i64]], [5 x [6 x i64]]* @_nist_p_384, i64 0, i64 0, i64 0), i32 noundef 6) #7
  %sub320 = sub i64 0, %call319
  %sext = shl i64 %carry.0, 32
  %conv321 = ashr exact i64 %sext, 32
  %sub322 = sub nsw i64 0, %conv321
  %41 = ptrtoint [6 x i64]* %c_d to i64
  %notlhs = add i64 %call319, -1
  %notrhs = add nsw i64 %conv321, -1
  %neg325 = or i64 %notrhs, %notlhs
  %and326 = and i64 %neg325, %41
  %42 = ptrtoint i64* %r_d.0 to i64
  %and323 = and i64 %sub320, %42
  %and327 = and i64 %and323, %sub322
  %or328 = or i64 %and326, %and327
  %43 = inttoptr i64 %or328 to i64*
  call fastcc void @nist_cp_bn(i64* noundef nonnull %r_d.0, i64* noundef %43, i32 noundef 6) #8
  %top329 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 6, i32* %top329, align 8, !tbaa !4
  call void @bn_correct_top(%struct.bignum_st* noundef %r) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %cond.false, %if.then8, %if.end316, %if.then6, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 1, %if.then6 ], [ 1, %if.end316 ], [ %conv, %cond.false ], [ 1, %if.then8 ], [ 0, %if.then16 ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %2) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BN_nist_mod_521(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* nocapture readnone %field, %struct.bignum_ctx* noundef %ctx) #1 {
entry:
  %t_d = alloca [9 x i64], align 16
  %top1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 1
  %0 = load i32, i32* %top1, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %a, i64 0, i32 0
  %1 = load i64*, i64** %d, align 8, !tbaa !10
  %2 = bitcast [9 x i64]* %t_d to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %2) #6
  %call = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %a) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull @BN_nist_mod_521.ossl_bignum_nist_p_521_sqr) #7
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_521, %struct.bignum_ctx* noundef %ctx) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_521, %struct.bignum_st* noundef nonnull %a) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %r) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp7 = icmp sgt i32 %call4, 0
  %cmp9 = icmp eq %struct.bignum_st* %r, %a
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.else
  br i1 %cmp9, label %cleanup, label %cond.false

cond.false:                                       ; preds = %if.then8
  %call10 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %a) #7
  %cmp11 = icmp ne %struct.bignum_st* %call10, null
  %conv = zext i1 %cmp11 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.else
  br i1 %cmp9, label %if.end23, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef 9) #7
  %tobool18.not = icmp eq %struct.bignum_st* %call17, null
  br i1 %tobool18.not, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.then16
  %d21 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 0
  %3 = load i64*, i64** %d21, align 8, !tbaa !10
  tail call fastcc void @nist_cp_bn(i64* noundef %3, i64* noundef %1, i32 noundef 9) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end13, %if.end20
  %r_d.0 = phi i64* [ %3, %if.end20 ], [ %1, %if.end13 ]
  %arraydecay = getelementptr inbounds [9 x i64], [9 x i64]* %t_d, i64 0, i64 0
  %add.ptr = getelementptr inbounds i64, i64* %1, i64 8
  %sub = add nsw i32 %0, -8
  call fastcc void @nist_cp_bn_0(i64* noundef nonnull %arraydecay, i64* noundef nonnull %add.ptr, i32 noundef %sub, i32 noundef 9) #8
  %4 = load i64, i64* %arraydecay, align 16, !tbaa !12
  %arrayidx26 = getelementptr inbounds [9 x i64], [9 x i64]* %t_d, i64 0, i64 1
  %5 = load i64, i64* %arrayidx26, align 8, !tbaa !12
  %or = tail call i64 @llvm.fshl.i64(i64 %5, i64 %4, i64 55)
  store i64 %or, i64* %arraydecay, align 16, !tbaa !12
  %arrayidx26.1 = getelementptr inbounds [9 x i64], [9 x i64]* %t_d, i64 0, i64 2
  %6 = load i64, i64* %arrayidx26.1, align 16, !tbaa !12
  %or.1 = tail call i64 @llvm.fshl.i64(i64 %6, i64 %5, i64 55)
  store i64 %or.1, i64* %arrayidx26, align 8, !tbaa !12
  %arrayidx26.2 = getelementptr inbounds [9 x i64], [9 x i64]* %t_d, i64 0, i64 3
  %7 = load i64, i64* %arrayidx26.2, align 8, !tbaa !12
  %or.2 = tail call i64 @llvm.fshl.i64(i64 %7, i64 %6, i64 55)
  store i64 %or.2, i64* %arrayidx26.1, align 16, !tbaa !12
  %arrayidx26.3 = getelementptr inbounds [9 x i64], [9 x i64]* %t_d, i64 0, i64 4
  %8 = load i64, i64* %arrayidx26.3, align 16, !tbaa !12
  %or.3 = tail call i64 @llvm.fshl.i64(i64 %8, i64 %7, i64 55)
  store i64 %or.3, i64* %arrayidx26.2, align 8, !tbaa !12
  %arrayidx26.4 = getelementptr inbounds [9 x i64], [9 x i64]* %t_d, i64 0, i64 5
  %9 = load i64, i64* %arrayidx26.4, align 8, !tbaa !12
  %or.4 = tail call i64 @llvm.fshl.i64(i64 %9, i64 %8, i64 55)
  store i64 %or.4, i64* %arrayidx26.3, align 16, !tbaa !12
  %arrayidx26.5 = getelementptr inbounds [9 x i64], [9 x i64]* %t_d, i64 0, i64 6
  %10 = load i64, i64* %arrayidx26.5, align 16, !tbaa !12
  %or.5 = tail call i64 @llvm.fshl.i64(i64 %10, i64 %9, i64 55)
  store i64 %or.5, i64* %arrayidx26.4, align 8, !tbaa !12
  %arrayidx26.6 = getelementptr inbounds [9 x i64], [9 x i64]* %t_d, i64 0, i64 7
  %11 = load i64, i64* %arrayidx26.6, align 8, !tbaa !12
  %or.6 = tail call i64 @llvm.fshl.i64(i64 %11, i64 %10, i64 55)
  store i64 %or.6, i64* %arrayidx26.5, align 16, !tbaa !12
  %arrayidx26.7 = getelementptr inbounds [9 x i64], [9 x i64]* %t_d, i64 0, i64 8
  %12 = load i64, i64* %arrayidx26.7, align 16, !tbaa !12
  %or.7 = tail call i64 @llvm.fshl.i64(i64 %12, i64 %11, i64 55)
  store i64 %or.7, i64* %arrayidx26.6, align 8, !tbaa !12
  %shr29 = lshr i64 %12, 9
  store i64 %shr29, i64* %arrayidx26.7, align 16, !tbaa !12
  %arrayidx33 = getelementptr inbounds i64, i64* %r_d.0, i64 8
  %13 = load i64, i64* %arrayidx33, align 8, !tbaa !12
  %and34 = and i64 %13, 511
  store i64 %and34, i64* %arrayidx33, align 8, !tbaa !12
  %call36 = call i64 @bn_add_words(i64* noundef %r_d.0, i64* noundef %r_d.0, i64* noundef nonnull %arraydecay, i32 noundef 9) #7
  %call38 = call i64 @bn_sub_words(i64* noundef nonnull %arraydecay, i64* noundef %r_d.0, i64* noundef getelementptr inbounds ([9 x i64], [9 x i64]* @_nist_p_521, i64 0, i64 0), i32 noundef 9) #7
  %sub39 = sub i64 0, %call38
  %14 = ptrtoint [9 x i64]* %t_d to i64
  %neg = add i64 %call38, -1
  %and41 = and i64 %neg, %14
  %15 = ptrtoint i64* %r_d.0 to i64
  %and42 = and i64 %sub39, %15
  %or43 = or i64 %and41, %and42
  %16 = inttoptr i64 %or43 to i64*
  call fastcc void @nist_cp_bn(i64* noundef %r_d.0, i64* noundef %16, i32 noundef 9) #8
  %top44 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %r, i64 0, i32 1
  store i32 9, i32* %top44, align 8, !tbaa !4
  call void @bn_correct_top(%struct.bignum_st* noundef %r) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %cond.false, %if.then8, %if.end23, %if.then6, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 1, %if.then6 ], [ 1, %if.end23 ], [ %conv, %cond.false ], [ 1, %if.then8 ], [ 0, %if.then16 ]
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %2) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @BN_nist_mod_func(%struct.bignum_st* noundef %p) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_192, %struct.bignum_st* noundef %p) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_224, %struct.bignum_st* noundef %p) #7
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_256, %struct.bignum_st* noundef %p) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_384, %struct.bignum_st* noundef %p) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef nonnull @ossl_bignum_nist_p_521, %struct.bignum_st* noundef %p) #7
  %cmp14 = icmp eq i32 %call13, 0
  %BN_nist_mod_521. = select i1 %cmp14, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @BN_nist_mod_521, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null
  br label %return

return:                                           ; preds = %if.end12, %if.end8, %if.end4, %if.end, %entry
  %retval.0 = phi i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* [ @BN_nist_mod_192, %entry ], [ @BN_nist_mod_224, %if.end ], [ @BN_nist_mod_256, %if.end4 ], [ @BN_nist_mod_384, %if.end8 ], [ %BN_nist_mod_521., %if.end12 ]
  ret i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

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
!11 = !{!9, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !20, !21}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !20, !21}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !20, !21}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !20, !21}
!37 = distinct !{!37, !20, !38, !21}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
