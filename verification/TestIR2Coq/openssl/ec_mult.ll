; ModuleID = 'crypto/ec/ec_mult.c'
source_filename = "crypto/ec/ec_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_pre_comp_st = type { %struct.ec_group_st*, i64, i64, i64, %struct.ec_point_st**, i64, i32, i8* }
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.bignum_ctx = type opaque
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/ec/ec_mult.c\00", align 1
@__func__.ossl_ec_scalar_mul_ladder = private unnamed_addr constant [26 x i8] c"ossl_ec_scalar_mul_ladder\00", align 1
@__func__.ossl_ec_wNAF_mul = private unnamed_addr constant [17 x i8] c"ossl_ec_wNAF_mul\00", align 1
@__func__.ossl_ec_wNAF_precompute_mult = private unnamed_addr constant [29 x i8] c"ossl_ec_wNAF_precompute_mult\00", align 1
@__func__.ec_pre_comp_new = private unnamed_addr constant [16 x i8] c"ec_pre_comp_new\00", align 1

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define %struct.ec_pre_comp_st* @EC_ec_pre_comp_dup(%struct.ec_pre_comp_st* noundef returned %pre) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %cmp.not = icmp eq %struct.ec_pre_comp_st* %pre, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %references = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %pre, i64 0, i32 6
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret %struct.ec_pre_comp_st* %pre
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #2 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @EC_ec_pre_comp_free(%struct.ec_pre_comp_st* noundef %pre) local_unnamed_addr #3 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8
  %cmp = icmp eq %struct.ec_pre_comp_st* %pre, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %pre, i64 0, i32 6
  %lock = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %pre, i64 0, i32 7
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #9
  %1 = load i32, i32* %i, align 4, !tbaa !4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %points = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %pre, i64 0, i32 4
  %2 = load %struct.ec_point_st**, %struct.ec_point_st*** %points, align 8, !tbaa !8
  %cmp4.not = icmp eq %struct.ec_point_st** %2, null
  br i1 %cmp4.not, label %if.end9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end3
  %3 = bitcast %struct.ec_point_st** %2 to i8*
  %4 = load %struct.ec_point_st*, %struct.ec_point_st** %2, align 8, !tbaa !12
  %cmp7.not22 = icmp eq %struct.ec_point_st* %4, null
  br i1 %cmp7.not22, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %5 = phi %struct.ec_point_st* [ %6, %for.body ], [ %4, %for.cond.preheader ]
  %pts.023 = phi %struct.ec_point_st** [ %incdec.ptr, %for.body ], [ %2, %for.cond.preheader ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef nonnull %5) #10
  %incdec.ptr = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %pts.023, i64 1
  %6 = load %struct.ec_point_st*, %struct.ec_point_st** %incdec.ptr, align 8, !tbaa !12
  %cmp7.not = icmp eq %struct.ec_point_st* %6, null
  br i1 %cmp7.not, label %for.end.loopexit, label %for.body, !llvm.loop !13

for.end.loopexit:                                 ; preds = %for.body
  %.phi.trans.insert = bitcast %struct.ec_point_st*** %points to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !8
  br label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.end.loopexit
  %7 = phi i8* [ %.pre, %for.end.loopexit ], [ %3, %for.cond.preheader ]
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 104) #10
  br label %if.end9

if.end9:                                          ; preds = %for.end, %if.end3
  %8 = load i8*, i8** %lock, align 8, !tbaa !15
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %8) #10
  %9 = bitcast %struct.ec_pre_comp_st* %pre to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %9, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 107) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #2 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !4
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_scalar_mul_ladder(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %scalar, %struct.ec_point_st* noundef %point, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #3 {
entry:
  %cmp.not = icmp eq %struct.ec_point_st* %point, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %point) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call1 = tail call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %call2 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %0) #10
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_ec_scalar_mul_ladder, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 114, i8* noundef null) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cofactor = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 3
  %1 = load %struct.bignum_st*, %struct.bignum_st** %cofactor, align 8, !tbaa !18
  %call6 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %1) #10
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_ec_scalar_mul_ladder, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 164, i8* noundef null) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #10
  %call10 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %group) #10
  %cmp11 = icmp eq %struct.ec_point_st* %call10, null
  br i1 %cmp11, label %err.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %call12 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %group) #10
  %cmp13 = icmp eq %struct.ec_point_st* %call12, null
  br i1 %cmp13, label %err.sink.split, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false
  br i1 %cmp.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %generator = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 1
  %2 = load %struct.ec_point_st*, %struct.ec_point_st** %generator, align 8, !tbaa !19
  %call18 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef nonnull %call10, %struct.ec_point_st* noundef %2) #10
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err.sink.split, label %do.body

if.else:                                          ; preds = %if.end15
  %call22 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef nonnull %call10, %struct.ec_point_st* noundef nonnull %point) #10
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err.sink.split, label %do.body

do.body:                                          ; preds = %if.then17, %if.else
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %call10, i64 0, i32 2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !20
  tail call void @BN_set_flags(%struct.bignum_st* noundef %3, i32 noundef 4) #10
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %call10, i64 0, i32 3
  %4 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !22
  tail call void @BN_set_flags(%struct.bignum_st* noundef %4, i32 noundef 4) #10
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %call10, i64 0, i32 4
  %5 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !23
  tail call void @BN_set_flags(%struct.bignum_st* noundef %5, i32 noundef 4) #10
  %X28 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 2
  %6 = load %struct.bignum_st*, %struct.bignum_st** %X28, align 8, !tbaa !20
  tail call void @BN_set_flags(%struct.bignum_st* noundef %6, i32 noundef 4) #10
  %Y29 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 3
  %7 = load %struct.bignum_st*, %struct.bignum_st** %Y29, align 8, !tbaa !22
  tail call void @BN_set_flags(%struct.bignum_st* noundef %7, i32 noundef 4) #10
  %Z30 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 4
  %8 = load %struct.bignum_st*, %struct.bignum_st** %Z30, align 8, !tbaa !23
  tail call void @BN_set_flags(%struct.bignum_st* noundef %8, i32 noundef 4) #10
  %X34 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %call12, i64 0, i32 2
  %9 = load %struct.bignum_st*, %struct.bignum_st** %X34, align 8, !tbaa !20
  tail call void @BN_set_flags(%struct.bignum_st* noundef %9, i32 noundef 4) #10
  %Y35 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %call12, i64 0, i32 3
  %10 = load %struct.bignum_st*, %struct.bignum_st** %Y35, align 8, !tbaa !22
  tail call void @BN_set_flags(%struct.bignum_st* noundef %10, i32 noundef 4) #10
  %Z36 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %call12, i64 0, i32 4
  %11 = load %struct.bignum_st*, %struct.bignum_st** %Z36, align 8, !tbaa !23
  tail call void @BN_set_flags(%struct.bignum_st* noundef %11, i32 noundef 4) #10
  %call39 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #10
  %call40 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #10
  %call41 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #10
  %cmp42 = icmp eq %struct.bignum_st* %call41, null
  br i1 %cmp42, label %err.sink.split, label %if.end44

if.end44:                                         ; preds = %do.body
  %12 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %13 = load %struct.bignum_st*, %struct.bignum_st** %cofactor, align 8, !tbaa !18
  %call47 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call39, %struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13, %struct.bignum_ctx* noundef %ctx) #10
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err.sink.split, label %if.end50

if.end50:                                         ; preds = %if.end44
  %call51 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call39) #10
  %call52 = tail call i32 @bn_get_top(%struct.bignum_st* noundef %call39) #10
  %add = add nsw i32 %call52, 2
  %call53 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call41, i32 noundef %add) #10
  %cmp54 = icmp eq %struct.bignum_st* %call53, null
  br i1 %cmp54, label %err.sink.split, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.end50
  %call57 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %call40, i32 noundef %add) #10
  %cmp58 = icmp eq %struct.bignum_st* %call57, null
  br i1 %cmp58, label %err.sink.split, label %if.end60

if.end60:                                         ; preds = %lor.lhs.false55
  %call61 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call41, %struct.bignum_st* noundef %scalar) #10
  %tobool62.not = icmp eq %struct.bignum_st* %call61, null
  br i1 %tobool62.not, label %err.sink.split, label %if.end64

if.end64:                                         ; preds = %if.end60
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call41, i32 noundef 4) #10
  %call65 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call41) #10
  %cmp66 = icmp sgt i32 %call65, %call51
  br i1 %cmp66, label %if.then70, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.end64
  %call68 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %call41) #10
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end75, label %if.then70

if.then70:                                        ; preds = %lor.lhs.false67, %if.end64
  %call71 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call41, %struct.bignum_st* noundef nonnull %call41, %struct.bignum_st* noundef %call39, %struct.bignum_ctx* noundef %ctx) #10
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err.sink.split, label %if.end75

if.end75:                                         ; preds = %if.then70, %lor.lhs.false67
  %call76 = tail call i32 @BN_add(%struct.bignum_st* noundef %call40, %struct.bignum_st* noundef nonnull %call41, %struct.bignum_st* noundef %call39) #10
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err.sink.split, label %if.end79

if.end79:                                         ; preds = %if.end75
  tail call void @BN_set_flags(%struct.bignum_st* noundef %call40, i32 noundef 4) #10
  %call80 = tail call i32 @BN_add(%struct.bignum_st* noundef nonnull %call41, %struct.bignum_st* noundef %call40, %struct.bignum_st* noundef %call39) #10
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err.sink.split, label %if.end83

if.end83:                                         ; preds = %if.end79
  %call84 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef %call40, i32 noundef %call51) #10
  %conv = sext i32 %call84 to i64
  tail call void @BN_consttime_swap(i64 noundef %conv, %struct.bignum_st* noundef nonnull %call41, %struct.bignum_st* noundef %call40, i32 noundef %add) #10
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %14 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !24
  %call86 = tail call i32 @bn_get_top(%struct.bignum_st* noundef %14) #10
  %15 = load %struct.bignum_st*, %struct.bignum_st** %X34, align 8, !tbaa !20
  %call88 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %15, i32 noundef %call86) #10
  %cmp89 = icmp eq %struct.bignum_st* %call88, null
  br i1 %cmp89, label %err.sink.split, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.end83
  %16 = load %struct.bignum_st*, %struct.bignum_st** %Y35, align 8, !tbaa !22
  %call93 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %16, i32 noundef %call86) #10
  %cmp94 = icmp eq %struct.bignum_st* %call93, null
  br i1 %cmp94, label %err.sink.split, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false91
  %17 = load %struct.bignum_st*, %struct.bignum_st** %Z36, align 8, !tbaa !23
  %call98 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %17, i32 noundef %call86) #10
  %cmp99 = icmp eq %struct.bignum_st* %call98, null
  br i1 %cmp99, label %err.sink.split, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false96
  %18 = load %struct.bignum_st*, %struct.bignum_st** %X28, align 8, !tbaa !20
  %call103 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %18, i32 noundef %call86) #10
  %cmp104 = icmp eq %struct.bignum_st* %call103, null
  br i1 %cmp104, label %err.sink.split, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false101
  %19 = load %struct.bignum_st*, %struct.bignum_st** %Y29, align 8, !tbaa !22
  %call108 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %19, i32 noundef %call86) #10
  %cmp109 = icmp eq %struct.bignum_st* %call108, null
  br i1 %cmp109, label %err.sink.split, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %lor.lhs.false106
  %20 = load %struct.bignum_st*, %struct.bignum_st** %Z30, align 8, !tbaa !23
  %call113 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %20, i32 noundef %call86) #10
  %cmp114 = icmp eq %struct.bignum_st* %call113, null
  br i1 %cmp114, label %err.sink.split, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false111
  %21 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !20
  %call118 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %21, i32 noundef %call86) #10
  %cmp119 = icmp eq %struct.bignum_st* %call118, null
  br i1 %cmp119, label %err.sink.split, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %lor.lhs.false116
  %22 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !22
  %call123 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %22, i32 noundef %call86) #10
  %cmp124 = icmp eq %struct.bignum_st* %call123, null
  br i1 %cmp124, label %err.sink.split, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false121
  %23 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !23
  %call128 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %23, i32 noundef %call86) #10
  %cmp129 = icmp eq %struct.bignum_st* %call128, null
  br i1 %cmp129, label %err.sink.split, label %if.end132

if.end132:                                        ; preds = %lor.lhs.false126
  %Z_is_one133 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %call10, i64 0, i32 5
  %24 = load i32, i32* %Z_is_one133, align 8, !tbaa !25
  %tobool134.not = icmp eq i32 %24, 0
  br i1 %tobool134.not, label %land.lhs.true135, label %if.end144

land.lhs.true135:                                 ; preds = %if.end132
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %25 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !26
  %make_affine = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %25, i64 0, i32 27
  %26 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %make_affine, align 8, !tbaa !27
  %cmp136 = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %26, null
  br i1 %cmp136, label %err.sink.split, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %land.lhs.true135
  %call141 = tail call i32 %26(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call10, %struct.bignum_ctx* noundef %ctx) #10
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %err.sink.split, label %if.end144

if.end144:                                        ; preds = %lor.lhs.false138, %if.end132
  %call145 = tail call fastcc i32 @ec_point_ladder_pre(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %r, %struct.ec_point_st* noundef nonnull %call12, %struct.ec_point_st* noundef nonnull %call10, %struct.bignum_ctx* noundef %ctx) #9
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %err.sink.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end144
  %Z_is_one162 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 5
  %Z_is_one163 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %call12, i64 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %i.0.in = phi i32 [ %i.0, %for.body ], [ %call51, %for.cond.preheader ]
  %pbit.0 = phi i32 [ %call151, %for.body ], [ 1, %for.cond.preheader ]
  %i.0 = add nsw i32 %i.0.in, -1
  %cmp149 = icmp sgt i32 %i.0.in, 0
  br i1 %cmp149, label %for.body, label %do.body176

for.body:                                         ; preds = %for.cond
  %call151 = tail call i32 @BN_is_bit_set(%struct.bignum_st* noundef nonnull %call41, i32 noundef %i.0) #10
  %xor = xor i32 %call151, %pbit.0
  %conv153 = sext i32 %xor to i64
  %27 = load %struct.bignum_st*, %struct.bignum_st** %X28, align 8, !tbaa !20
  %28 = load %struct.bignum_st*, %struct.bignum_st** %X34, align 8, !tbaa !20
  tail call void @BN_consttime_swap(i64 noundef %conv153, %struct.bignum_st* noundef %27, %struct.bignum_st* noundef %28, i32 noundef %call86) #10
  %29 = load %struct.bignum_st*, %struct.bignum_st** %Y29, align 8, !tbaa !22
  %30 = load %struct.bignum_st*, %struct.bignum_st** %Y35, align 8, !tbaa !22
  tail call void @BN_consttime_swap(i64 noundef %conv153, %struct.bignum_st* noundef %29, %struct.bignum_st* noundef %30, i32 noundef %call86) #10
  %31 = load %struct.bignum_st*, %struct.bignum_st** %Z30, align 8, !tbaa !23
  %32 = load %struct.bignum_st*, %struct.bignum_st** %Z36, align 8, !tbaa !23
  tail call void @BN_consttime_swap(i64 noundef %conv153, %struct.bignum_st* noundef %31, %struct.bignum_st* noundef %32, i32 noundef %call86) #10
  %33 = load i32, i32* %Z_is_one162, align 8, !tbaa !25
  %34 = load i32, i32* %Z_is_one163, align 8, !tbaa !25
  %xor164 = xor i32 %34, %33
  %and = and i32 %xor164, %xor
  %xor166 = xor i32 %and, %33
  store i32 %xor166, i32* %Z_is_one162, align 8, !tbaa !25
  %35 = load i32, i32* %Z_is_one163, align 8, !tbaa !25
  %xor168 = xor i32 %35, %and
  store i32 %xor168, i32* %Z_is_one163, align 8, !tbaa !25
  %call171 = tail call fastcc i32 @ec_point_ladder_step(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %r, %struct.ec_point_st* noundef %call12, %struct.ec_point_st* noundef nonnull %call10, %struct.bignum_ctx* noundef %ctx) #9
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %err.sink.split, label %for.cond, !llvm.loop !29

do.body176:                                       ; preds = %for.cond
  %conv177 = sext i32 %pbit.0 to i64
  %36 = load %struct.bignum_st*, %struct.bignum_st** %X28, align 8, !tbaa !20
  %37 = load %struct.bignum_st*, %struct.bignum_st** %X34, align 8, !tbaa !20
  tail call void @BN_consttime_swap(i64 noundef %conv177, %struct.bignum_st* noundef %36, %struct.bignum_st* noundef %37, i32 noundef %call86) #10
  %38 = load %struct.bignum_st*, %struct.bignum_st** %Y29, align 8, !tbaa !22
  %39 = load %struct.bignum_st*, %struct.bignum_st** %Y35, align 8, !tbaa !22
  tail call void @BN_consttime_swap(i64 noundef %conv177, %struct.bignum_st* noundef %38, %struct.bignum_st* noundef %39, i32 noundef %call86) #10
  %40 = load %struct.bignum_st*, %struct.bignum_st** %Z30, align 8, !tbaa !23
  %41 = load %struct.bignum_st*, %struct.bignum_st** %Z36, align 8, !tbaa !23
  tail call void @BN_consttime_swap(i64 noundef %conv177, %struct.bignum_st* noundef %40, %struct.bignum_st* noundef %41, i32 noundef %call86) #10
  %42 = load i32, i32* %Z_is_one162, align 8, !tbaa !25
  %43 = load i32, i32* %Z_is_one163, align 8, !tbaa !25
  %xor188 = xor i32 %43, %42
  %and189 = and i32 %xor188, %pbit.0
  %xor191 = xor i32 %and189, %42
  store i32 %xor191, i32* %Z_is_one162, align 8, !tbaa !25
  %44 = load i32, i32* %Z_is_one163, align 8, !tbaa !25
  %xor193 = xor i32 %44, %and189
  store i32 %xor193, i32* %Z_is_one163, align 8, !tbaa !25
  %call196 = tail call fastcc i32 @ec_point_ladder_post(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %r, %struct.ec_point_st* noundef %call12, %struct.ec_point_st* noundef nonnull %call10, %struct.bignum_ctx* noundef %ctx) #9
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %for.body, %do.body176, %if.end144, %land.lhs.true135, %lor.lhs.false138, %if.end83, %lor.lhs.false91, %lor.lhs.false96, %lor.lhs.false101, %lor.lhs.false106, %lor.lhs.false111, %lor.lhs.false116, %lor.lhs.false121, %lor.lhs.false126, %if.end79, %if.end75, %if.then70, %if.end60, %if.end50, %lor.lhs.false55, %if.end44, %do.body, %if.else, %if.then17, %if.end9, %lor.lhs.false
  %.sink360 = phi i32 [ 174, %lor.lhs.false ], [ 174, %if.end9 ], [ 180, %if.then17 ], [ 185, %if.else ], [ 198, %do.body ], [ 203, %if.end44 ], [ 217, %lor.lhs.false55 ], [ 217, %if.end50 ], [ 222, %if.end60 ], [ 234, %if.then70 ], [ 240, %if.end75 ], [ 245, %if.end79 ], [ 265, %lor.lhs.false126 ], [ 265, %lor.lhs.false121 ], [ 265, %lor.lhs.false116 ], [ 265, %lor.lhs.false111 ], [ 265, %lor.lhs.false106 ], [ 265, %lor.lhs.false101 ], [ 265, %lor.lhs.false96 ], [ 265, %lor.lhs.false91 ], [ 265, %if.end83 ], [ 272, %lor.lhs.false138 ], [ 272, %land.lhs.true135 ], [ 278, %if.end144 ], [ 373, %do.body176 ], [ 358, %for.body ]
  %.sink = phi i32 [ 786688, %lor.lhs.false ], [ 786688, %if.end9 ], [ 524304, %if.then17 ], [ 524304, %if.else ], [ 786688, %do.body ], [ 524291, %if.end44 ], [ 524291, %lor.lhs.false55 ], [ 524291, %if.end50 ], [ 524291, %if.end60 ], [ 524291, %if.then70 ], [ 524291, %if.end75 ], [ 524291, %if.end79 ], [ 524291, %lor.lhs.false126 ], [ 524291, %lor.lhs.false121 ], [ 524291, %lor.lhs.false116 ], [ 524291, %lor.lhs.false111 ], [ 524291, %lor.lhs.false106 ], [ 524291, %lor.lhs.false101 ], [ 524291, %lor.lhs.false96 ], [ 524291, %lor.lhs.false91 ], [ 524291, %if.end83 ], [ 524304, %lor.lhs.false138 ], [ 524304, %land.lhs.true135 ], [ 153, %if.end144 ], [ 136, %do.body176 ], [ 162, %for.body ]
  %s.1.ph = phi %struct.ec_point_st* [ null, %lor.lhs.false ], [ null, %if.end9 ], [ %call12, %if.then17 ], [ %call12, %if.else ], [ %call12, %do.body ], [ %call12, %if.end44 ], [ %call12, %lor.lhs.false55 ], [ %call12, %if.end50 ], [ %call12, %if.end60 ], [ %call12, %if.then70 ], [ %call12, %if.end75 ], [ %call12, %if.end79 ], [ %call12, %lor.lhs.false126 ], [ %call12, %lor.lhs.false121 ], [ %call12, %lor.lhs.false116 ], [ %call12, %lor.lhs.false111 ], [ %call12, %lor.lhs.false106 ], [ %call12, %lor.lhs.false101 ], [ %call12, %lor.lhs.false96 ], [ %call12, %lor.lhs.false91 ], [ %call12, %if.end83 ], [ %call12, %lor.lhs.false138 ], [ %call12, %land.lhs.true135 ], [ %call12, %if.end144 ], [ %call12, %do.body176 ], [ %call12, %for.body ]
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink360, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_ec_scalar_mul_ladder, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #10
  br label %err

err:                                              ; preds = %err.sink.split, %do.body176
  %s.1 = phi %struct.ec_point_st* [ %call12, %do.body176 ], [ %s.1.ph, %err.sink.split ]
  %ret.0 = phi i32 [ 1, %do.body176 ], [ 0, %err.sink.split ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %call10) #10
  tail call void @EC_POINT_clear_free(%struct.ec_point_st* noundef %s.1) #10
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then8, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.then4 ], [ 0, %if.then8 ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #4

declare i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #4

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #4

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #4

declare i32 @EC_POINT_copy(%struct.ec_point_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #4

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @bn_get_top(%struct.bignum_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @BN_nnmod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @BN_is_bit_set(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #4

declare void @BN_consttime_swap(i64 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_point_ladder_pre(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %s, %struct.ec_point_st* noundef %p, %struct.bignum_ctx* noundef %ctx) unnamed_addr #3 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !26
  %ladder_pre = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 53
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %ladder_pre, align 8, !tbaa !30
  %cmp.not = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %s, %struct.ec_point_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #10
  br label %return

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %s, %struct.ec_point_st* noundef %p) #10
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %s, %struct.bignum_ctx* noundef %ctx) #10
  %tobool5.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool5.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_point_ladder_step(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %s, %struct.ec_point_st* noundef %p, %struct.bignum_ctx* noundef %ctx) unnamed_addr #3 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !26
  %ladder_step = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 54
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %ladder_step, align 8, !tbaa !31
  %cmp.not = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %s, %struct.ec_point_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #10
  br label %return

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @EC_POINT_add(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %s, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %s, %struct.bignum_ctx* noundef %ctx) #10
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %r, %struct.bignum_ctx* noundef %ctx) #10
  %tobool5.not = icmp ne i32 %call4, 0
  %spec.select = zext i1 %tobool5.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_point_ladder_post(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %s, %struct.ec_point_st* noundef %p, %struct.bignum_ctx* noundef %ctx) unnamed_addr #3 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !26
  %ladder_post = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 55
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %ladder_post, align 8, !tbaa !32
  %cmp.not = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %s, %struct.ec_point_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #10
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare void @EC_POINT_clear_free(%struct.ec_point_st* noundef) local_unnamed_addr #4

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_wNAF_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %scalar, i64 noundef %num, %struct.ec_point_st** nocapture noundef readonly %points, %struct.bignum_st** nocapture noundef readonly %scalars, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #3 {
entry:
  %tmp_len = alloca i64, align 8
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %0) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %entry
  %cofactor = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 3
  %1 = load %struct.bignum_st*, %struct.bignum_st** %cofactor, align 8, !tbaa !18
  %call1 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %1) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end21

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %cmp = icmp ne %struct.bignum_st* %2, %scalar
  %cmp5 = icmp ne %struct.bignum_st* %scalar, null
  %or.cond = and i1 %cmp5, %cmp
  %cmp7 = icmp eq i64 %num, 0
  %or.cond503 = and i1 %cmp7, %or.cond
  br i1 %or.cond503, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %call9 = tail call i32 @ossl_ec_scalar_mul_ladder(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef nonnull %scalar, %struct.ec_point_st* noundef null, %struct.bignum_ctx* noundef %ctx) #9
  br label %cleanup480

if.end:                                           ; preds = %if.then
  %cmp10 = icmp eq %struct.bignum_st* %scalar, null
  %cmp12 = icmp eq i64 %num, 1
  %or.cond504 = and i1 %cmp10, %cmp12
  br i1 %or.cond504, label %land.lhs.true13, label %if.end21

land.lhs.true13:                                  ; preds = %if.end
  %3 = load %struct.bignum_st*, %struct.bignum_st** %scalars, align 8, !tbaa !12
  %cmp15.not = icmp eq %struct.bignum_st* %3, %2
  br i1 %cmp15.not, label %if.end54, label %if.then16

if.then16:                                        ; preds = %land.lhs.true13
  %4 = load %struct.ec_point_st*, %struct.ec_point_st** %points, align 8, !tbaa !12
  %call19 = tail call i32 @ossl_ec_scalar_mul_ladder(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %3, %struct.ec_point_st* noundef %4, %struct.bignum_ctx* noundef %ctx) #9
  br label %cleanup480

if.end21:                                         ; preds = %if.end, %land.lhs.true, %entry
  %cmp22.not = icmp eq %struct.bignum_st* %scalar, null
  br i1 %cmp22.not, label %if.end54, label %if.then23

if.then23:                                        ; preds = %if.end21
  %call24 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef nonnull %group) #10
  %cmp25 = icmp eq %struct.ec_point_st* %call24, null
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then23
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 471, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 113, i8* noundef null) #10
  br label %err

if.end27:                                         ; preds = %if.then23
  %pre_comp28 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 20
  %ec = bitcast %union.anon* %pre_comp28 to %struct.ec_pre_comp_st**
  %5 = load %struct.ec_pre_comp_st*, %struct.ec_pre_comp_st** %ec, align 8, !tbaa !33
  %tobool29.not = icmp eq %struct.ec_pre_comp_st* %5, null
  br i1 %tobool29.not, label %if.end54, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.end27
  %numblocks31 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %5, i64 0, i32 2
  %6 = load i64, i64* %numblocks31, align 8, !tbaa !34
  %tobool32.not = icmp eq i64 %6, 0
  br i1 %tobool32.not, label %if.end54, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true30
  %points34 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %5, i64 0, i32 4
  %7 = load %struct.ec_point_st**, %struct.ec_point_st*** %points34, align 8, !tbaa !8
  %8 = load %struct.ec_point_st*, %struct.ec_point_st** %7, align 8, !tbaa !12
  %call36 = tail call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call24, %struct.ec_point_st* noundef %8, %struct.bignum_ctx* noundef %ctx) #10
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end54

if.then38:                                        ; preds = %land.lhs.true33
  %blocksize39 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %5, i64 0, i32 1
  %9 = load i64, i64* %blocksize39, align 8, !tbaa !35
  %call40 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %scalar) #10
  %conv = sext i32 %call40 to i64
  %div = udiv i64 %conv, %9
  %add = add i64 %div, 1
  %10 = load i64, i64* %numblocks31, align 8, !tbaa !34
  %cmp42 = icmp ugt i64 %add, %10
  %spec.select = select i1 %cmp42, i64 %10, i64 %add
  %w = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %5, i64 0, i32 3
  %11 = load i64, i64* %w, align 8, !tbaa !36
  %sub = add i64 %11, -1
  %shl = shl nuw i64 1, %sub
  %num47 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %5, i64 0, i32 5
  %12 = load i64, i64* %num47, align 8, !tbaa !37
  %mul = shl i64 %10, %sub
  %cmp49.not = icmp eq i64 %12, %mul
  br i1 %cmp49.not, label %if.end54, label %if.then51

if.then51:                                        ; preds = %if.then38
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 499, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #10
  br label %err

if.end54:                                         ; preds = %land.lhs.true13, %if.end27, %land.lhs.true30, %land.lhs.true33, %if.then38, %if.end21
  %blocksize.0 = phi i64 [ %9, %if.then38 ], [ 0, %if.end21 ], [ 0, %land.lhs.true33 ], [ 0, %land.lhs.true30 ], [ 0, %if.end27 ], [ 0, %land.lhs.true13 ]
  %numblocks.1 = phi i64 [ %spec.select, %if.then38 ], [ 0, %if.end21 ], [ 1, %land.lhs.true33 ], [ 1, %land.lhs.true30 ], [ 1, %if.end27 ], [ 0, %land.lhs.true13 ]
  %pre_points_per_block.0 = phi i64 [ %shl, %if.then38 ], [ 0, %if.end21 ], [ 0, %land.lhs.true33 ], [ 0, %land.lhs.true30 ], [ 0, %if.end27 ], [ 0, %land.lhs.true13 ]
  %pre_comp.0 = phi %struct.ec_pre_comp_st* [ %5, %if.then38 ], [ null, %if.end21 ], [ null, %land.lhs.true33 ], [ null, %land.lhs.true30 ], [ null, %if.end27 ], [ null, %land.lhs.true13 ]
  %cmp160.not = phi i1 [ true, %if.then38 ], [ true, %if.end21 ], [ false, %land.lhs.true33 ], [ false, %land.lhs.true30 ], [ false, %if.end27 ], [ true, %land.lhs.true13 ]
  %cmp155.not = phi i1 [ false, %if.then38 ], [ false, %if.end21 ], [ true, %land.lhs.true33 ], [ true, %land.lhs.true30 ], [ true, %if.end27 ], [ false, %land.lhs.true13 ]
  %num_scalar.0 = phi i64 [ 0, %if.then38 ], [ 0, %if.end21 ], [ 1, %land.lhs.true33 ], [ 1, %land.lhs.true30 ], [ 1, %if.end27 ], [ 0, %land.lhs.true13 ]
  %generator.0 = phi %struct.ec_point_st* [ %call24, %if.then38 ], [ null, %if.end21 ], [ %call24, %land.lhs.true33 ], [ %call24, %land.lhs.true30 ], [ %call24, %if.end27 ], [ null, %land.lhs.true13 ]
  %add55 = add i64 %numblocks.1, %num
  %mul56 = shl i64 %add55, 3
  %call57 = tail call i8* @CRYPTO_malloc(i64 noundef %mul56, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 513) #10
  %13 = bitcast i8* %call57 to i64*
  %call59 = tail call i8* @CRYPTO_malloc(i64 noundef %mul56, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 514) #10
  %14 = bitcast i8* %call59 to i64*
  %mul61 = add i64 %mul56, 8
  %call62 = tail call i8* @CRYPTO_malloc(i64 noundef %mul61, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 516) #10
  %15 = bitcast i8* %call62 to i8**
  %call64 = tail call i8* @CRYPTO_malloc(i64 noundef %mul56, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 517) #10
  %16 = bitcast i8* %call64 to %struct.ec_point_st***
  %cmp65.not = icmp eq i8* %call62, null
  br i1 %cmp65.not, label %if.then80, label %if.end69

if.end69:                                         ; preds = %if.end54
  store i8* null, i8** %15, align 8, !tbaa !12
  %cmp70 = icmp eq i8* %call57, null
  %cmp72 = icmp eq i8* %call59, null
  %or.cond505 = select i1 %cmp70, i1 true, i1 %cmp72
  %cmp78 = icmp eq i8* %call64, null
  %or.cond507 = select i1 %or.cond505, i1 true, i1 %cmp78
  br i1 %or.cond507, label %if.then80, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end69
  %add83 = add i64 %num_scalar.0, %num
  %cmp84868.not = icmp eq i64 %add83, 0
  br i1 %cmp84868.not, label %for.end, label %for.body

if.then80:                                        ; preds = %if.end54, %if.end69
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 524, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #10
  br label %err

for.body:                                         ; preds = %for.cond.preheader, %cleanup
  %num_val.0872 = phi i64 [ %add124, %cleanup ], [ 0, %for.cond.preheader ]
  %max_len.0871 = phi i64 [ %spec.select816, %cleanup ], [ 0, %for.cond.preheader ]
  %i.0869 = phi i64 [ %add125, %cleanup ], [ 0, %for.cond.preheader ]
  %cmp86 = icmp ult i64 %i.0869, %num
  br i1 %cmp86, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.body
  %arrayidx88 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %scalars, i64 %i.0869
  %17 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx88, align 8, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.true
  %scalar.sink = phi %struct.bignum_st* [ %17, %cond.true ], [ %scalar, %for.body ]
  %call90 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %scalar.sink) #10
  %cmp92 = icmp ugt i32 %call90, 1999
  br i1 %cmp92, label %cond.end117, label %cond.false95

cond.false95:                                     ; preds = %cond.end
  %cmp96 = icmp ugt i32 %call90, 799
  br i1 %cmp96, label %cond.end117, label %cond.false99

cond.false99:                                     ; preds = %cond.false95
  %cmp100 = icmp ugt i32 %call90, 299
  br i1 %cmp100, label %cond.end117, label %cond.false103

cond.false103:                                    ; preds = %cond.false99
  %cmp104 = icmp ugt i32 %call90, 69
  br i1 %cmp104, label %cond.end117, label %cond.false107

cond.false107:                                    ; preds = %cond.false103
  %cmp108 = icmp ugt i32 %call90, 19
  %cond110 = select i1 %cmp108, i64 2, i64 1
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false95, %cond.false107, %cond.false103, %cond.false99, %cond.end
  %cond118 = phi i64 [ 6, %cond.end ], [ 5, %cond.false95 ], [ 4, %cond.false99 ], [ %cond110, %cond.false107 ], [ 3, %cond.false103 ]
  %arrayidx120 = getelementptr inbounds i64, i64* %13, i64 %i.0869
  store i64 %cond118, i64* %arrayidx120, align 8, !tbaa !38
  %sub122 = add nsw i64 %cond118, -1
  %shl123 = shl nuw nsw i64 1, %sub122
  %add124 = add i64 %shl123, %num_val.0872
  %add125 = add nuw i64 %i.0869, 1
  %arrayidx126 = getelementptr inbounds i8*, i8** %15, i64 %add125
  store i8* null, i8** %arrayidx126, align 8, !tbaa !12
  br i1 %cmp86, label %cond.true129, label %cond.end132

cond.true129:                                     ; preds = %cond.end117
  %arrayidx130 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %scalars, i64 %i.0869
  %18 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx130, align 8, !tbaa !12
  br label %cond.end132

cond.end132:                                      ; preds = %cond.end117, %cond.true129
  %cond133 = phi %struct.bignum_st* [ %18, %cond.true129 ], [ %scalar, %cond.end117 ]
  %conv135 = trunc i64 %cond118 to i32
  %arrayidx136 = getelementptr inbounds i64, i64* %14, i64 %i.0869
  %call137 = tail call i8* @bn_compute_wNAF(%struct.bignum_st* noundef %cond133, i32 noundef %conv135, i64* noundef %arrayidx136) #10
  %arrayidx138 = getelementptr inbounds i8*, i8** %15, i64 %i.0869
  store i8* %call137, i8** %arrayidx138, align 8, !tbaa !12
  %cmp140 = icmp eq i8* %call137, null
  br i1 %cmp140, label %err, label %cleanup

cleanup:                                          ; preds = %cond.end132
  %19 = load i64, i64* %arrayidx136, align 8, !tbaa !38
  %cmp145 = icmp ugt i64 %19, %max_len.0871
  %spec.select816 = select i1 %cmp145, i64 %19, i64 %max_len.0871
  %exitcond.not = icmp eq i64 %add125, %add83
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !39

for.end:                                          ; preds = %cleanup, %for.cond.preheader
  %max_len.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %spec.select816, %cleanup ]
  %num_val.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %add124, %cleanup ]
  %tobool150.not = icmp eq i64 %numblocks.1, 0
  br i1 %tobool150.not, label %if.end253, label %if.then151

if.then151:                                       ; preds = %for.end
  %cmp152 = icmp eq %struct.ec_pre_comp_st* %pre_comp.0, null
  br i1 %cmp152, label %if.then154, label %if.else159

if.then154:                                       ; preds = %if.then151
  br i1 %cmp155.not, label %if.end253, label %if.then157

if.then157:                                       ; preds = %if.then154
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 554, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #10
  br label %err

if.else159:                                       ; preds = %if.then151
  %20 = bitcast i64* %tmp_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #8
  store i64 0, i64* %tmp_len, align 8, !tbaa !38
  br i1 %cmp160.not, label %if.end163, label %if.then162

if.then162:                                       ; preds = %if.else159
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 563, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #10
  br label %cleanup248.thread

if.end163:                                        ; preds = %if.else159
  %w164 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %pre_comp.0, i64 0, i32 3
  %21 = load i64, i64* %w164, align 8, !tbaa !36
  %arrayidx165 = getelementptr inbounds i64, i64* %13, i64 %num
  store i64 %21, i64* %arrayidx165, align 8, !tbaa !38
  %conv167 = trunc i64 %21 to i32
  %call168 = call i8* @bn_compute_wNAF(%struct.bignum_st* noundef %scalar, i32 noundef %conv167, i64* noundef nonnull %tmp_len) #10
  %tobool169.not = icmp eq i8* %call168, null
  br i1 %tobool169.not, label %cleanup248.thread, label %if.end171

if.end171:                                        ; preds = %if.end163
  %22 = load i64, i64* %tmp_len, align 8, !tbaa !38
  %cmp172.not = icmp ugt i64 %22, %max_len.0.lcssa
  br i1 %cmp172.not, label %if.else182, label %if.then174

if.then174:                                       ; preds = %if.end171
  %add175 = add i64 %num, 1
  %arrayidx176 = getelementptr inbounds i8*, i8** %15, i64 %num
  store i8* %call168, i8** %arrayidx176, align 8, !tbaa !12
  %arrayidx178 = getelementptr inbounds i8*, i8** %15, i64 %add175
  store i8* null, i8** %arrayidx178, align 8, !tbaa !12
  %arrayidx179 = getelementptr inbounds i64, i64* %14, i64 %num
  store i64 %22, i64* %arrayidx179, align 8, !tbaa !38
  %points180 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %pre_comp.0, i64 0, i32 4
  %23 = load %struct.ec_point_st**, %struct.ec_point_st*** %points180, align 8, !tbaa !8
  %arrayidx181 = getelementptr inbounds %struct.ec_point_st**, %struct.ec_point_st*** %16, i64 %num
  store %struct.ec_point_st** %23, %struct.ec_point_st*** %arrayidx181, align 8, !tbaa !12
  br label %cleanup248

if.else182:                                       ; preds = %if.end171
  %mul183 = mul i64 %numblocks.1, %blocksize.0
  %cmp184 = icmp ult i64 %22, %mul183
  br i1 %cmp184, label %if.then186, label %if.end196

if.then186:                                       ; preds = %if.else182
  %add187 = add i64 %blocksize.0, -1
  %sub188 = add i64 %add187, %22
  %div189 = udiv i64 %sub188, %blocksize.0
  %numblocks190 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %pre_comp.0, i64 0, i32 2
  %24 = load i64, i64* %numblocks190, align 8, !tbaa !34
  %cmp191 = icmp ugt i64 %div189, %24
  br i1 %cmp191, label %if.then193, label %if.end194

if.then193:                                       ; preds = %if.then186
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 606, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #10
  call void @CRYPTO_free(i8* noundef nonnull %call168, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 607) #10
  br label %cleanup248.thread

if.end194:                                        ; preds = %if.then186
  %add195 = add i64 %div189, %num
  br label %if.end196

if.end196:                                        ; preds = %if.end194, %if.else182
  %totalnum.0 = phi i64 [ %add195, %if.end194 ], [ %add55, %if.else182 ]
  %cmp199875 = icmp ugt i64 %totalnum.0, %num
  br i1 %cmp199875, label %for.body201.lr.ph, label %cleanup243

for.body201.lr.ph:                                ; preds = %if.end196
  %points197 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %pre_comp.0, i64 0, i32 4
  %25 = load %struct.ec_point_st**, %struct.ec_point_st*** %points197, align 8, !tbaa !8
  %sub202 = add i64 %totalnum.0, -1
  br label %for.body201

for.body201:                                      ; preds = %for.body201.lr.ph, %if.end237
  %tmp_points.0880 = phi %struct.ec_point_st** [ %25, %for.body201.lr.ph ], [ %add.ptr, %if.end237 ]
  %pp.0879 = phi i8* [ %call168, %for.body201.lr.ph ], [ %add.ptr239, %if.end237 ]
  %max_len.3878 = phi i64 [ %max_len.0.lcssa, %for.body201.lr.ph ], [ %spec.select818, %if.end237 ]
  %i.1876 = phi i64 [ %num, %for.body201.lr.ph ], [ %add215, %if.end237 ]
  %cmp203 = icmp ult i64 %i.1876, %sub202
  br i1 %cmp203, label %if.then205, label %if.else212

if.then205:                                       ; preds = %for.body201
  %arrayidx206 = getelementptr inbounds i64, i64* %14, i64 %i.1876
  store i64 %blocksize.0, i64* %arrayidx206, align 8, !tbaa !38
  %26 = load i64, i64* %tmp_len, align 8, !tbaa !38
  %cmp207 = icmp ult i64 %26, %blocksize.0
  br i1 %cmp207, label %if.then209, label %if.end210

if.then209:                                       ; preds = %if.then205
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 621, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #10
  call void @CRYPTO_free(i8* noundef nonnull %call168, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 622) #10
  br label %cleanup248.thread

if.end210:                                        ; preds = %if.then205
  %sub211 = sub i64 %26, %blocksize.0
  store i64 %sub211, i64* %tmp_len, align 8, !tbaa !38
  %.pre = load i64, i64* %arrayidx206, align 8, !tbaa !38
  br label %if.end214

if.else212:                                       ; preds = %for.body201
  %27 = load i64, i64* %tmp_len, align 8, !tbaa !38
  %arrayidx213 = getelementptr inbounds i64, i64* %14, i64 %i.1876
  store i64 %27, i64* %arrayidx213, align 8, !tbaa !38
  br label %if.end214

if.end214:                                        ; preds = %if.else212, %if.end210
  %28 = phi i64 [ %27, %if.else212 ], [ %.pre, %if.end210 ]
  %add215 = add i64 %i.1876, 1
  %arrayidx216 = getelementptr inbounds i8*, i8** %15, i64 %add215
  store i8* null, i8** %arrayidx216, align 8, !tbaa !12
  %arrayidx217 = getelementptr inbounds i64, i64* %14, i64 %i.1876
  %call218 = call i8* @CRYPTO_malloc(i64 noundef %28, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 634) #10
  %arrayidx219 = getelementptr inbounds i8*, i8** %15, i64 %i.1876
  store i8* %call218, i8** %arrayidx219, align 8, !tbaa !12
  %cmp221 = icmp eq i8* %call218, null
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end214
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 636, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #10
  call void @CRYPTO_free(i8* noundef nonnull %call168, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 637) #10
  br label %cleanup248.thread

if.end224:                                        ; preds = %if.end214
  %29 = load i64, i64* %arrayidx217, align 8, !tbaa !38
  %call227 = call i8* @memcpy(i8* noundef nonnull %call218, i8* noundef %pp.0879, i64 noundef %29) #10
  %30 = load i64, i64* %arrayidx217, align 8, !tbaa !38
  %31 = load %struct.ec_point_st*, %struct.ec_point_st** %tmp_points.0880, align 8, !tbaa !12
  %cmp234 = icmp eq %struct.ec_point_st* %31, null
  br i1 %cmp234, label %if.then236, label %if.end237

if.then236:                                       ; preds = %if.end224
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 645, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #10
  call void @CRYPTO_free(i8* noundef nonnull %call168, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 646) #10
  br label %cleanup248.thread

if.end237:                                        ; preds = %if.end224
  %cmp229 = icmp ugt i64 %30, %max_len.3878
  %spec.select818 = select i1 %cmp229, i64 %30, i64 %max_len.3878
  %arrayidx238 = getelementptr inbounds %struct.ec_point_st**, %struct.ec_point_st*** %16, i64 %i.1876
  store %struct.ec_point_st** %tmp_points.0880, %struct.ec_point_st*** %arrayidx238, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %tmp_points.0880, i64 %pre_points_per_block.0
  %add.ptr239 = getelementptr inbounds i8, i8* %pp.0879, i64 %blocksize.0
  %exitcond921.not = icmp eq i64 %add215, %totalnum.0
  br i1 %exitcond921.not, label %cleanup243, label %for.body201, !llvm.loop !40

cleanup243:                                       ; preds = %if.end237, %if.end196
  %max_len.3.lcssa = phi i64 [ %max_len.0.lcssa, %if.end196 ], [ %spec.select818, %if.end237 ]
  call void @CRYPTO_free(i8* noundef nonnull %call168, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 653) #10
  br label %cleanup248

cleanup248.thread:                                ; preds = %if.then162, %if.end163, %if.then193, %if.then209, %if.then223, %if.then236
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #8
  br label %err

cleanup248:                                       ; preds = %if.then174, %cleanup243
  %totalnum.3 = phi i64 [ %add175, %if.then174 ], [ %totalnum.0, %cleanup243 ]
  %max_len.7 = phi i64 [ %max_len.0.lcssa, %if.then174 ], [ %max_len.3.lcssa, %cleanup243 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #8
  br label %if.end253

if.end253:                                        ; preds = %cleanup248, %if.then154, %for.end
  %totalnum.4 = phi i64 [ %add55, %if.then154 ], [ %totalnum.3, %cleanup248 ], [ %add55, %for.end ]
  %max_len.8 = phi i64 [ %max_len.0.lcssa, %if.then154 ], [ %max_len.7, %cleanup248 ], [ %max_len.0.lcssa, %for.end ]
  %add254 = shl i64 %num_val.0.lcssa, 3
  %mul255 = add i64 %add254, 8
  %call256 = call i8* @CRYPTO_malloc(i64 noundef %mul255, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 663) #10
  %32 = bitcast i8* %call256 to %struct.ec_point_st**
  %cmp257 = icmp eq i8* %call256, null
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %if.end253
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 665, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #10
  br label %err

if.end260:                                        ; preds = %if.end253
  %arrayidx261 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %32, i64 %num_val.0.lcssa
  store %struct.ec_point_st* null, %struct.ec_point_st** %arrayidx261, align 8, !tbaa !12
  br i1 %cmp84868.not, label %for.end286, label %for.body267

for.body267:                                      ; preds = %if.end260, %for.inc284
  %v.0887 = phi %struct.ec_point_st** [ %incdec.ptr, %for.inc284 ], [ %32, %if.end260 ]
  %i.2886 = phi i64 [ %inc285, %for.inc284 ], [ 0, %if.end260 ]
  %arrayidx268 = getelementptr inbounds %struct.ec_point_st**, %struct.ec_point_st*** %16, i64 %i.2886
  store %struct.ec_point_st** %v.0887, %struct.ec_point_st*** %arrayidx268, align 8, !tbaa !12
  %arrayidx270 = getelementptr inbounds i64, i64* %13, i64 %i.2886
  br label %for.body275

for.body275:                                      ; preds = %for.body267, %if.end280
  %v.1884 = phi %struct.ec_point_st** [ %v.0887, %for.body267 ], [ %incdec.ptr, %if.end280 ]
  %j.0883 = phi i64 [ 0, %for.body267 ], [ %inc282, %if.end280 ]
  %call276 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #10
  store %struct.ec_point_st* %call276, %struct.ec_point_st** %v.1884, align 8, !tbaa !12
  %cmp277 = icmp eq %struct.ec_point_st* %call276, null
  br i1 %cmp277, label %err, label %if.end280

if.end280:                                        ; preds = %for.body275
  %incdec.ptr = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %v.1884, i64 1
  %inc282 = add i64 %j.0883, 1
  %33 = load i64, i64* %arrayidx270, align 8, !tbaa !38
  %sub271 = add i64 %33, -1
  %j.0.highbits = lshr i64 %inc282, %sub271
  %cmp273 = icmp eq i64 %j.0.highbits, 0
  br i1 %cmp273, label %for.body275, label %for.inc284, !llvm.loop !41

for.inc284:                                       ; preds = %if.end280
  %inc285 = add nuw i64 %i.2886, 1
  %exitcond922.not = icmp eq i64 %inc285, %add83
  br i1 %exitcond922.not, label %for.end286, label %for.body267, !llvm.loop !42

for.end286:                                       ; preds = %for.inc284, %if.end260
  %v.0.lcssa = phi %struct.ec_point_st** [ %32, %if.end260 ], [ %incdec.ptr, %for.inc284 ]
  %cmp288 = icmp eq %struct.ec_point_st** %v.0.lcssa, %arrayidx261
  br i1 %cmp288, label %if.end291, label %if.then290

if.then290:                                       ; preds = %for.end286
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 682, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #10
  br label %err

if.end291:                                        ; preds = %for.end286
  %call292 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #10
  %cmp293 = icmp eq %struct.ec_point_st* %call292, null
  br i1 %cmp293, label %err, label %for.cond297.preheader

for.cond297.preheader:                            ; preds = %if.end291
  br i1 %cmp84868.not, label %for.end353, label %for.body302

for.body302:                                      ; preds = %for.cond297.preheader, %for.inc351
  %i.3894 = phi i64 [ %inc352, %for.inc351 ], [ 0, %for.cond297.preheader ]
  %cmp303 = icmp ult i64 %i.3894, %num
  %arrayidx306 = getelementptr inbounds %struct.ec_point_st**, %struct.ec_point_st*** %16, i64 %i.3894
  %34 = load %struct.ec_point_st**, %struct.ec_point_st*** %arrayidx306, align 8, !tbaa !12
  %35 = load %struct.ec_point_st*, %struct.ec_point_st** %34, align 8, !tbaa !12
  br i1 %cmp303, label %if.then305, label %if.else313

if.then305:                                       ; preds = %for.body302
  %arrayidx308 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %points, i64 %i.3894
  %36 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx308, align 8, !tbaa !12
  %call309 = call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %35, %struct.ec_point_st* noundef %36) #10
  %tobool310.not = icmp eq i32 %call309, 0
  br i1 %tobool310.not, label %err, label %if.end320

if.else313:                                       ; preds = %for.body302
  %call316 = call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %35, %struct.ec_point_st* noundef %generator.0) #10
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %err, label %if.end320

if.end320:                                        ; preds = %if.else313, %if.then305
  %arrayidx321 = getelementptr inbounds i64, i64* %13, i64 %i.3894
  %37 = load i64, i64* %arrayidx321, align 8, !tbaa !38
  %cmp322 = icmp ugt i64 %37, 1
  br i1 %cmp322, label %if.then324, label %for.inc351

if.then324:                                       ; preds = %if.end320
  %arrayidx325 = getelementptr inbounds %struct.ec_point_st**, %struct.ec_point_st*** %16, i64 %i.3894
  %38 = load %struct.ec_point_st**, %struct.ec_point_st*** %arrayidx325, align 8, !tbaa !12
  %39 = load %struct.ec_point_st*, %struct.ec_point_st** %38, align 8, !tbaa !12
  %call327 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %call292, %struct.ec_point_st* noundef %39, %struct.bignum_ctx* noundef %ctx) #10
  %tobool328.not = icmp eq i32 %call327, 0
  br i1 %tobool328.not, label %err, label %for.cond331.preheader

for.cond331.preheader:                            ; preds = %if.then324
  %40 = load i64, i64* %arrayidx321, align 8, !tbaa !38
  %cmp335891.not = icmp eq i64 %40, 1
  br i1 %cmp335891.not, label %for.inc351, label %for.body337

for.cond331:                                      ; preds = %for.body337
  %41 = load i64, i64* %arrayidx321, align 8, !tbaa !38
  %sub333 = add i64 %41, -1
  %j.1.highbits = lshr i64 %inc348, %sub333
  %cmp335 = icmp eq i64 %j.1.highbits, 0
  br i1 %cmp335, label %for.body337, label %for.inc351, !llvm.loop !43

for.body337:                                      ; preds = %for.cond331.preheader, %for.cond331
  %j.1892 = phi i64 [ %inc348, %for.cond331 ], [ 1, %for.cond331.preheader ]
  %42 = load %struct.ec_point_st**, %struct.ec_point_st*** %arrayidx325, align 8, !tbaa !12
  %arrayidx339 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %42, i64 %j.1892
  %43 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx339, align 8, !tbaa !12
  %sub341 = add i64 %j.1892, -1
  %arrayidx342 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %42, i64 %sub341
  %44 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx342, align 8, !tbaa !12
  %call343 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %43, %struct.ec_point_st* noundef %44, %struct.ec_point_st* noundef nonnull %call292, %struct.bignum_ctx* noundef %ctx) #10
  %tobool344.not = icmp eq i32 %call343, 0
  %inc348 = add i64 %j.1892, 1
  br i1 %tobool344.not, label %err, label %for.cond331

for.inc351:                                       ; preds = %for.cond331, %for.cond331.preheader, %if.end320
  %inc352 = add nuw i64 %i.3894, 1
  %exitcond923.not = icmp eq i64 %inc352, %add83
  br i1 %exitcond923.not, label %for.end353, label %for.body302, !llvm.loop !44

for.end353:                                       ; preds = %for.inc351, %for.cond297.preheader
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %45 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !26
  %points_make_affine = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %45, i64 0, i32 28
  %46 = load i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)** %points_make_affine, align 8, !tbaa !45
  %cmp354 = icmp eq i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)* %46, null
  br i1 %cmp354, label %err, label %lor.lhs.false356

lor.lhs.false356:                                 ; preds = %for.end353
  %call359 = call i32 %46(%struct.ec_group_st* noundef nonnull %group, i64 noundef %num_val.0.lcssa, %struct.ec_point_st** noundef nonnull %32, %struct.bignum_ctx* noundef %ctx) #10
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %err, label %if.end362

if.end362:                                        ; preds = %lor.lhs.false356
  %47 = trunc i64 %max_len.8 to i32
  %k.0904 = add i32 %47, -1
  %cmp366905 = icmp sgt i32 %k.0904, -1
  br i1 %cmp366905, label %for.body368.lr.ph, label %if.then443

for.body368.lr.ph:                                ; preds = %if.end362
  %cmp377897.not = icmp eq i64 %totalnum.4, 0
  %48 = zext i32 %k.0904 to i64
  br label %for.body368

for.cond365.loopexit:                             ; preds = %for.inc437, %if.end375
  %r_is_inverted.1.lcssa = phi i32 [ %r_is_inverted.0906, %if.end375 ], [ %r_is_inverted.5, %for.inc437 ]
  %r_is_at_infinity.1.lcssa = phi i32 [ %r_is_at_infinity.0907, %if.end375 ], [ %r_is_at_infinity.4, %for.inc437 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %49 = and i64 %indvars.iv.next, 2147483648
  %cmp366 = icmp eq i64 %49, 0
  br i1 %cmp366, label %for.body368, label %for.end441, !llvm.loop !46

for.body368:                                      ; preds = %for.body368.lr.ph, %for.cond365.loopexit
  %indvars.iv = phi i64 [ %48, %for.body368.lr.ph ], [ %indvars.iv.next, %for.cond365.loopexit ]
  %r_is_at_infinity.0907 = phi i32 [ 1, %for.body368.lr.ph ], [ %r_is_at_infinity.1.lcssa, %for.cond365.loopexit ]
  %r_is_inverted.0906 = phi i32 [ 0, %for.body368.lr.ph ], [ %r_is_inverted.1.lcssa, %for.cond365.loopexit ]
  %tobool369.not = icmp eq i32 %r_is_at_infinity.0907, 0
  br i1 %tobool369.not, label %if.then370, label %if.end375

if.then370:                                       ; preds = %for.body368
  %call371 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %r, %struct.bignum_ctx* noundef %ctx) #10
  %tobool372.not = icmp eq i32 %call371, 0
  br i1 %tobool372.not, label %err, label %if.end375

if.end375:                                        ; preds = %if.then370, %for.body368
  br i1 %cmp377897.not, label %for.cond365.loopexit, label %for.body379

for.body379:                                      ; preds = %if.end375, %for.inc437
  %r_is_at_infinity.1901 = phi i32 [ %r_is_at_infinity.4, %for.inc437 ], [ %r_is_at_infinity.0907, %if.end375 ]
  %r_is_inverted.1900 = phi i32 [ %r_is_inverted.5, %for.inc437 ], [ %r_is_inverted.0906, %if.end375 ]
  %i.4898 = phi i64 [ %inc438, %for.inc437 ], [ 0, %if.end375 ]
  %arrayidx380 = getelementptr inbounds i64, i64* %14, i64 %i.4898
  %50 = load i64, i64* %arrayidx380, align 8, !tbaa !38
  %cmp382 = icmp ugt i64 %50, %indvars.iv
  br i1 %cmp382, label %if.then384, label %for.inc437

if.then384:                                       ; preds = %for.body379
  %arrayidx385 = getelementptr inbounds i8*, i8** %15, i64 %i.4898
  %51 = load i8*, i8** %arrayidx385, align 8, !tbaa !12
  %arrayidx386 = getelementptr inbounds i8, i8* %51, i64 %indvars.iv
  %52 = load i8, i8* %arrayidx386, align 1, !tbaa !33
  %tobool388.not = icmp eq i8 %52, 0
  br i1 %tobool388.not, label %for.inc437, label %if.then389

if.then389:                                       ; preds = %if.then384
  %.lobit = lshr i8 %52, 7
  %53 = zext i8 %.lobit to i32
  %54 = call i8 @llvm.abs.i8(i8 %52, i1 false)
  %cmp396.not = icmp eq i32 %r_is_inverted.1900, %53
  br i1 %cmp396.not, label %if.end407, label %if.then398

if.then398:                                       ; preds = %if.then389
  %tobool399.not = icmp eq i32 %r_is_at_infinity.1901, 0
  br i1 %tobool399.not, label %if.then400, label %if.end405

if.then400:                                       ; preds = %if.then398
  %call401 = call i32 @EC_POINT_invert(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.bignum_ctx* noundef %ctx) #10
  %tobool402.not = icmp eq i32 %call401, 0
  br i1 %tobool402.not, label %err, label %if.end405

if.end405:                                        ; preds = %if.then400, %if.then398
  %tobool406.not = icmp eq i32 %r_is_inverted.1900, 0
  %lnot.ext = zext i1 %tobool406.not to i32
  br label %if.end407

if.end407:                                        ; preds = %if.end405, %if.then389
  %r_is_inverted.2 = phi i32 [ %lnot.ext, %if.end405 ], [ %r_is_inverted.1900, %if.then389 ]
  %tobool408.not = icmp eq i32 %r_is_at_infinity.1901, 0
  %arrayidx422 = getelementptr inbounds %struct.ec_point_st**, %struct.ec_point_st*** %16, i64 %i.4898
  %55 = load %struct.ec_point_st**, %struct.ec_point_st*** %arrayidx422, align 8, !tbaa !12
  %56 = lshr i8 %54, 1
  %57 = zext i8 %56 to i64
  %arrayidx425 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %55, i64 %57
  %58 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx425, align 8, !tbaa !12
  br i1 %tobool408.not, label %if.else421, label %if.then409

if.then409:                                       ; preds = %if.end407
  %call413 = call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %58) #10
  %tobool414.not = icmp eq i32 %call413, 0
  br i1 %tobool414.not, label %err, label %if.end416

if.end416:                                        ; preds = %if.then409
  %call417 = call i32 @ossl_ec_point_blind_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.bignum_ctx* noundef %ctx) #10
  %tobool418.not = icmp eq i32 %call417, 0
  br i1 %tobool418.not, label %if.then419, label %for.inc437

if.then419:                                       ; preds = %if.end416
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 762, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ossl_ec_wNAF_mul, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 163, i8* noundef null) #10
  br label %err

if.else421:                                       ; preds = %if.end407
  %call426 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %58, %struct.bignum_ctx* noundef %ctx) #10
  %tobool427.not = icmp eq i32 %call426, 0
  br i1 %tobool427.not, label %err, label %for.inc437

for.inc437:                                       ; preds = %if.end416, %if.else421, %if.then384, %for.body379
  %r_is_inverted.5 = phi i32 [ %r_is_inverted.1900, %for.body379 ], [ %r_is_inverted.2, %if.else421 ], [ %r_is_inverted.1900, %if.then384 ], [ %r_is_inverted.2, %if.end416 ]
  %r_is_at_infinity.4 = phi i32 [ %r_is_at_infinity.1901, %for.body379 ], [ 0, %if.else421 ], [ %r_is_at_infinity.1901, %if.then384 ], [ 0, %if.end416 ]
  %inc438 = add nuw i64 %i.4898, 1
  %exitcond924.not = icmp eq i64 %inc438, %totalnum.4
  br i1 %exitcond924.not, label %for.cond365.loopexit, label %for.body379, !llvm.loop !47

for.end441:                                       ; preds = %for.cond365.loopexit
  %tobool442.not = icmp eq i32 %r_is_at_infinity.1.lcssa, 0
  br i1 %tobool442.not, label %if.else448, label %if.then443

if.then443:                                       ; preds = %if.end362, %for.end441
  %call444 = call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r) #10
  %tobool445.not = icmp eq i32 %call444, 0
  br i1 %tobool445.not, label %err, label %if.end456

if.else448:                                       ; preds = %for.end441
  %tobool449.not = icmp eq i32 %r_is_inverted.1.lcssa, 0
  br i1 %tobool449.not, label %if.end456, label %if.then450

if.then450:                                       ; preds = %if.else448
  %call451 = call i32 @EC_POINT_invert(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.bignum_ctx* noundef %ctx) #10
  %tobool452.not = icmp eq i32 %call451, 0
  br i1 %tobool452.not, label %err, label %if.end456

if.end456:                                        ; preds = %if.else448, %if.then450, %if.then443
  br label %err

err:                                              ; preds = %cond.end132, %for.body275, %if.then324, %if.else313, %if.then305, %for.body337, %if.then370, %if.else421, %if.then409, %if.then400, %if.then419, %cleanup248.thread, %if.then450, %if.then443, %for.end353, %lor.lhs.false356, %if.end291, %if.end456, %if.then290, %if.then259, %if.then157, %if.then80, %if.then51, %if.then26
  %tmp.0 = phi %struct.ec_point_st* [ null, %if.then26 ], [ null, %if.then51 ], [ null, %if.then80 ], [ null, %if.then157 ], [ null, %if.then259 ], [ null, %if.end291 ], [ %call292, %for.end353 ], [ %call292, %if.end456 ], [ %call292, %if.then443 ], [ %call292, %if.then450 ], [ %call292, %lor.lhs.false356 ], [ null, %if.then290 ], [ null, %cleanup248.thread ], [ %call292, %if.then419 ], [ %call292, %if.then400 ], [ %call292, %if.then409 ], [ %call292, %if.else421 ], [ %call292, %if.then370 ], [ %call292, %for.body337 ], [ %call292, %if.then305 ], [ %call292, %if.else313 ], [ %call292, %if.then324 ], [ null, %for.body275 ], [ null, %cond.end132 ]
  %59 = phi i8* [ null, %if.then26 ], [ null, %if.then51 ], [ %call57, %if.then80 ], [ %call57, %if.then157 ], [ %call57, %if.then259 ], [ %call57, %if.end291 ], [ %call57, %for.end353 ], [ %call57, %if.end456 ], [ %call57, %if.then443 ], [ %call57, %if.then450 ], [ %call57, %lor.lhs.false356 ], [ %call57, %if.then290 ], [ %call57, %cleanup248.thread ], [ %call57, %if.then419 ], [ %call57, %if.then400 ], [ %call57, %if.then409 ], [ %call57, %if.else421 ], [ %call57, %if.then370 ], [ %call57, %for.body337 ], [ %call57, %if.then305 ], [ %call57, %if.else313 ], [ %call57, %if.then324 ], [ %call57, %for.body275 ], [ %call57, %cond.end132 ]
  %wNAF.0 = phi i8** [ null, %if.then26 ], [ null, %if.then51 ], [ %15, %if.then80 ], [ %15, %if.then157 ], [ %15, %if.then259 ], [ %15, %if.end291 ], [ %15, %for.end353 ], [ %15, %if.end456 ], [ %15, %if.then443 ], [ %15, %if.then450 ], [ %15, %lor.lhs.false356 ], [ %15, %if.then290 ], [ %15, %cleanup248.thread ], [ %15, %if.then419 ], [ %15, %if.then400 ], [ %15, %if.then409 ], [ %15, %if.else421 ], [ %15, %if.then370 ], [ %15, %for.body337 ], [ %15, %if.then305 ], [ %15, %if.else313 ], [ %15, %if.then324 ], [ %15, %for.body275 ], [ %15, %cond.end132 ]
  %60 = phi i8* [ null, %if.then26 ], [ null, %if.then51 ], [ %call59, %if.then80 ], [ %call59, %if.then157 ], [ %call59, %if.then259 ], [ %call59, %if.end291 ], [ %call59, %for.end353 ], [ %call59, %if.end456 ], [ %call59, %if.then443 ], [ %call59, %if.then450 ], [ %call59, %lor.lhs.false356 ], [ %call59, %if.then290 ], [ %call59, %cleanup248.thread ], [ %call59, %if.then419 ], [ %call59, %if.then400 ], [ %call59, %if.then409 ], [ %call59, %if.else421 ], [ %call59, %if.then370 ], [ %call59, %for.body337 ], [ %call59, %if.then305 ], [ %call59, %if.else313 ], [ %call59, %if.then324 ], [ %call59, %for.body275 ], [ %call59, %cond.end132 ]
  %val.0 = phi %struct.ec_point_st** [ null, %if.then26 ], [ null, %if.then51 ], [ null, %if.then80 ], [ null, %if.then157 ], [ null, %if.then259 ], [ %32, %if.end291 ], [ %32, %for.end353 ], [ %32, %if.end456 ], [ %32, %if.then443 ], [ %32, %if.then450 ], [ %32, %lor.lhs.false356 ], [ %32, %if.then290 ], [ null, %cleanup248.thread ], [ %32, %if.then419 ], [ %32, %if.then400 ], [ %32, %if.then409 ], [ %32, %if.else421 ], [ %32, %if.then370 ], [ %32, %for.body337 ], [ %32, %if.then305 ], [ %32, %if.else313 ], [ %32, %if.then324 ], [ %32, %for.body275 ], [ null, %cond.end132 ]
  %61 = phi i8* [ null, %if.then26 ], [ null, %if.then51 ], [ %call64, %if.then80 ], [ %call64, %if.then157 ], [ %call64, %if.then259 ], [ %call64, %if.end291 ], [ %call64, %for.end353 ], [ %call64, %if.end456 ], [ %call64, %if.then443 ], [ %call64, %if.then450 ], [ %call64, %lor.lhs.false356 ], [ %call64, %if.then290 ], [ %call64, %cleanup248.thread ], [ %call64, %if.then419 ], [ %call64, %if.then400 ], [ %call64, %if.then409 ], [ %call64, %if.else421 ], [ %call64, %if.then370 ], [ %call64, %for.body337 ], [ %call64, %if.then305 ], [ %call64, %if.else313 ], [ %call64, %if.then324 ], [ %call64, %for.body275 ], [ %call64, %cond.end132 ]
  %ret.0 = phi i32 [ 0, %if.then26 ], [ 0, %if.then51 ], [ 0, %if.then80 ], [ 0, %if.then157 ], [ 0, %if.then259 ], [ 0, %if.end291 ], [ 0, %for.end353 ], [ 1, %if.end456 ], [ 0, %if.then443 ], [ 0, %if.then450 ], [ 0, %lor.lhs.false356 ], [ 0, %if.then290 ], [ 0, %cleanup248.thread ], [ 0, %if.then419 ], [ 0, %if.then400 ], [ 0, %if.then409 ], [ 0, %if.else421 ], [ 0, %if.then370 ], [ 0, %for.body337 ], [ 0, %if.then305 ], [ 0, %if.else313 ], [ 0, %if.then324 ], [ 0, %for.body275 ], [ 0, %cond.end132 ]
  call void @EC_POINT_free(%struct.ec_point_st* noundef %tmp.0) #10
  call void @CRYPTO_free(i8* noundef %59, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 790) #10
  call void @CRYPTO_free(i8* noundef %60, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 791) #10
  %cmp457.not = icmp eq i8** %wNAF.0, null
  br i1 %cmp457.not, label %if.end468, label %for.cond461.preheader

for.cond461.preheader:                            ; preds = %err
  %62 = load i8*, i8** %wNAF.0, align 8, !tbaa !12
  %cmp462.not911 = icmp eq i8* %62, null
  br i1 %cmp462.not911, label %for.end467, label %for.body464

for.body464:                                      ; preds = %for.cond461.preheader, %for.body464
  %63 = phi i8* [ %64, %for.body464 ], [ %62, %for.cond461.preheader ]
  %w460.0912 = phi i8** [ %incdec.ptr466, %for.body464 ], [ %wNAF.0, %for.cond461.preheader ]
  call void @CRYPTO_free(i8* noundef nonnull %63, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 796) #10
  %incdec.ptr466 = getelementptr inbounds i8*, i8** %w460.0912, i64 1
  %64 = load i8*, i8** %incdec.ptr466, align 8, !tbaa !12
  %cmp462.not = icmp eq i8* %64, null
  br i1 %cmp462.not, label %for.end467, label %for.body464, !llvm.loop !48

for.end467:                                       ; preds = %for.body464, %for.cond461.preheader
  %65 = bitcast i8** %wNAF.0 to i8*
  call void @CRYPTO_free(i8* noundef nonnull %65, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 798) #10
  br label %if.end468

if.end468:                                        ; preds = %for.end467, %err
  %cmp469.not = icmp eq %struct.ec_point_st** %val.0, null
  br i1 %cmp469.not, label %if.end479, label %for.cond472.preheader

for.cond472.preheader:                            ; preds = %if.end468
  %66 = load %struct.ec_point_st*, %struct.ec_point_st** %val.0, align 8, !tbaa !12
  %cmp473.not913 = icmp eq %struct.ec_point_st* %66, null
  br i1 %cmp473.not913, label %for.end478, label %for.body475

for.body475:                                      ; preds = %for.cond472.preheader, %for.body475
  %67 = phi %struct.ec_point_st* [ %68, %for.body475 ], [ %66, %for.cond472.preheader ]
  %v.2914 = phi %struct.ec_point_st** [ %incdec.ptr477, %for.body475 ], [ %val.0, %for.cond472.preheader ]
  call void @EC_POINT_clear_free(%struct.ec_point_st* noundef nonnull %67) #10
  %incdec.ptr477 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %v.2914, i64 1
  %68 = load %struct.ec_point_st*, %struct.ec_point_st** %incdec.ptr477, align 8, !tbaa !12
  %cmp473.not = icmp eq %struct.ec_point_st* %68, null
  br i1 %cmp473.not, label %for.end478, label %for.body475, !llvm.loop !49

for.end478:                                       ; preds = %for.body475, %for.cond472.preheader
  %69 = bitcast %struct.ec_point_st** %val.0 to i8*
  call void @CRYPTO_free(i8* noundef nonnull %69, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 804) #10
  br label %if.end479

if.end479:                                        ; preds = %for.end478, %if.end468
  call void @CRYPTO_free(i8* noundef %61, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 806) #10
  br label %cleanup480

cleanup480:                                       ; preds = %if.end479, %if.then16, %if.then8
  %retval.0 = phi i32 [ %ret.0, %if.end479 ], [ %call9, %if.then8 ], [ %call19, %if.then16 ]
  ret i32 %retval.0
}

declare %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef) local_unnamed_addr #4

declare i32 @EC_POINT_cmp(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i8* @bn_compute_wNAF(%struct.bignum_st* noundef, i32 noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare i32 @EC_POINT_dbl(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @EC_POINT_add(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @EC_POINT_invert(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @ossl_ec_point_blind_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_wNAF_precompute_mult(%struct.ec_group_st* noundef %group, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #3 {
entry:
  tail call void @EC_pre_comp_free(%struct.ec_group_st* noundef %group) #10
  %call = tail call fastcc %struct.ec_pre_comp_st* @ec_pre_comp_new(%struct.ec_group_st* noundef %group) #9
  %cmp = icmp eq %struct.ec_pre_comp_st* %call, null
  br i1 %cmp, label %cleanup187, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %group) #10
  %cmp2 = icmp eq %struct.ec_point_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 851, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_wNAF_precompute_mult, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 113, i8* noundef null) #10
  br label %if.end176

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp5, label %if.end8, label %if.end11

if.end8:                                          ; preds = %if.end4
  %call7 = tail call %struct.bignum_ctx* @BN_CTX_new() #10
  %cmp9 = icmp eq %struct.bignum_ctx* %call7, null
  br i1 %cmp9, label %if.end176, label %if.end11

if.end11:                                         ; preds = %if.end4, %if.end8
  %new_ctx.0320 = phi %struct.bignum_ctx* [ %call7, %if.end8 ], [ null, %if.end4 ]
  %ctx.addr.0318 = phi %struct.bignum_ctx* [ %call7, %if.end8 ], [ %ctx, %if.end4 ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0318) #10
  %call12 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %group) #10
  %cmp13 = icmp eq %struct.bignum_st* %call12, null
  br i1 %cmp13, label %if.then175, label %if.end15

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call12) #10
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 869, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_wNAF_precompute_mult, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 114, i8* noundef null) #10
  br label %if.then175

if.end18:                                         ; preds = %if.end15
  %call19 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call12) #10
  %conv = sext i32 %call19 to i64
  %cmp20 = icmp ugt i32 %call19, 1999
  %cmp22 = icmp ugt i32 %call19, 799
  %spec.select = select i1 %cmp22, i64 5, i64 4
  %w.0 = select i1 %cmp20, i64 6, i64 %spec.select
  %sub = add nsw i64 %conv, 7
  %div = lshr i64 %sub, 3
  %sub76 = add nsw i64 %w.0, -1
  %mul = shl i64 %div, %sub76
  %add77 = shl i64 %mul, 3
  %mul78 = add i64 %add77, 8
  %call79 = tail call i8* @CRYPTO_malloc(i64 noundef %mul78, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 895) #10
  %0 = bitcast i8* %call79 to %struct.ec_point_st**
  %cmp80 = icmp eq i8* %call79, null
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end18
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 897, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_wNAF_precompute_mult, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #10
  br label %if.then175

if.end83:                                         ; preds = %if.end18
  %arrayidx = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %0, i64 %mul
  store %struct.ec_point_st* null, %struct.ec_point_st** %arrayidx, align 8, !tbaa !12
  %cmp84354.not = icmp eq i64 %mul, 0
  br i1 %cmp84354.not, label %for.end, label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %mul
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !50

for.body:                                         ; preds = %if.end83, %for.cond
  %i.0355 = phi i64 [ %inc, %for.cond ], [ 0, %if.end83 ]
  %call86 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #10
  %arrayidx87 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %0, i64 %i.0355
  store %struct.ec_point_st* %call86, %struct.ec_point_st** %arrayidx87, align 8, !tbaa !12
  %cmp88 = icmp eq %struct.ec_point_st* %call86, null
  %inc = add nuw i64 %i.0355, 1
  br i1 %cmp88, label %if.then90, label %for.cond

if.then90:                                        ; preds = %for.body
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 905, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_wNAF_precompute_mult, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #10
  br label %if.then175

for.end:                                          ; preds = %for.cond, %if.end83
  %call92 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #10
  %cmp93 = icmp eq %struct.ec_point_st* %call92, null
  br i1 %cmp93, label %if.then98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %call95 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #10
  %cmp96 = icmp eq %struct.ec_point_st* %call95, null
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %lor.lhs.false, %for.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 912, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_wNAF_precompute_mult, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #10
  br label %if.then175

if.end99:                                         ; preds = %lor.lhs.false
  %call100 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef nonnull %call95, %struct.ec_point_st* noundef nonnull %call1) #10
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then175, label %for.cond104.preheader

for.cond104.preheader:                            ; preds = %if.end99
  %cmp105363.not = icmp ult i64 %sub, 8
  br i1 %cmp105363.not, label %for.end157, label %for.body107.lr.ph

for.body107.lr.ph:                                ; preds = %for.cond104.preheader
  %sub128 = add nsw i64 %div, -1
  %umax = call i64 @llvm.umax.i64(i64 %div, i64 1)
  br label %for.body107

for.body107:                                      ; preds = %for.body107.lr.ph, %for.inc155
  %var.0365 = phi %struct.ec_point_st** [ %0, %for.body107.lr.ph ], [ %var.1, %for.inc155 ]
  %i.1364 = phi i64 [ 0, %for.body107.lr.ph ], [ %inc156, %for.inc155 ]
  %call108 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %call92, %struct.ec_point_st* noundef nonnull %call95, %struct.bignum_ctx* noundef nonnull %ctx.addr.0318) #10
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then175, label %if.end111

if.end111:                                        ; preds = %for.body107
  %1 = load %struct.ec_point_st*, %struct.ec_point_st** %var.0365, align 8, !tbaa !12
  %call112 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %1, %struct.ec_point_st* noundef nonnull %call95) #10
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.then175, label %for.body119.preheader

for.body119.preheader:                            ; preds = %if.end111
  %var.1356 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %var.0365, i64 1
  br label %for.body119

for.cond116:                                      ; preds = %for.body119
  %var.1 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %var.1361, i64 1
  %j.0.highbits = lshr i64 %inc125, %sub76
  %cmp117 = icmp eq i64 %j.0.highbits, 0
  br i1 %cmp117, label %for.body119, label %for.end127, !llvm.loop !51

for.body119:                                      ; preds = %for.body119.preheader, %for.cond116
  %var.1361 = phi %struct.ec_point_st** [ %var.1, %for.cond116 ], [ %var.1356, %for.body119.preheader ]
  %j.0360 = phi i64 [ %inc125, %for.cond116 ], [ 1, %for.body119.preheader ]
  %var.1.pn359 = phi %struct.ec_point_st** [ %var.1361, %for.cond116 ], [ %var.0365, %for.body119.preheader ]
  %2 = load %struct.ec_point_st*, %struct.ec_point_st** %var.1361, align 8, !tbaa !12
  %3 = load %struct.ec_point_st*, %struct.ec_point_st** %var.1.pn359, align 8, !tbaa !12
  %call120 = tail call i32 @EC_POINT_add(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %2, %struct.ec_point_st* noundef nonnull %call92, %struct.ec_point_st* noundef %3, %struct.bignum_ctx* noundef nonnull %ctx.addr.0318) #10
  %tobool121.not = icmp eq i32 %call120, 0
  %inc125 = add i64 %j.0360, 1
  br i1 %tobool121.not, label %if.then175, label %for.cond116

for.end127:                                       ; preds = %for.cond116
  %cmp129 = icmp ult i64 %i.1364, %sub128
  br i1 %cmp129, label %if.end135, label %for.inc155

if.end135:                                        ; preds = %for.end127
  %call136 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %call95, %struct.ec_point_st* noundef nonnull %call92, %struct.bignum_ctx* noundef nonnull %ctx.addr.0318) #10
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.then175, label %for.body143.preheader

for.body143.preheader:                            ; preds = %if.end135
  %call144 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %call95, %struct.ec_point_st* noundef nonnull %call95, %struct.bignum_ctx* noundef nonnull %ctx.addr.0318) #10
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then175, label %for.cond140

for.cond140:                                      ; preds = %for.body143.preheader
  %call144.1 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %call95, %struct.ec_point_st* noundef nonnull %call95, %struct.bignum_ctx* noundef nonnull %ctx.addr.0318) #10
  %tobool145.not.1 = icmp eq i32 %call144.1, 0
  br i1 %tobool145.not.1, label %if.then175, label %for.cond140.1

for.cond140.1:                                    ; preds = %for.cond140
  %call144.2 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %call95, %struct.ec_point_st* noundef nonnull %call95, %struct.bignum_ctx* noundef nonnull %ctx.addr.0318) #10
  %tobool145.not.2 = icmp eq i32 %call144.2, 0
  br i1 %tobool145.not.2, label %if.then175, label %for.cond140.2

for.cond140.2:                                    ; preds = %for.cond140.1
  %call144.3 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %call95, %struct.ec_point_st* noundef nonnull %call95, %struct.bignum_ctx* noundef nonnull %ctx.addr.0318) #10
  %tobool145.not.3 = icmp eq i32 %call144.3, 0
  br i1 %tobool145.not.3, label %if.then175, label %for.cond140.3

for.cond140.3:                                    ; preds = %for.cond140.2
  %call144.4 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %call95, %struct.ec_point_st* noundef nonnull %call95, %struct.bignum_ctx* noundef nonnull %ctx.addr.0318) #10
  %tobool145.not.4 = icmp eq i32 %call144.4, 0
  br i1 %tobool145.not.4, label %if.then175, label %for.cond140.4

for.cond140.4:                                    ; preds = %for.cond140.3
  %call144.5 = tail call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %call95, %struct.ec_point_st* noundef nonnull %call95, %struct.bignum_ctx* noundef nonnull %ctx.addr.0318) #10
  %tobool145.not.5 = icmp eq i32 %call144.5, 0
  br i1 %tobool145.not.5, label %if.then175, label %for.inc155

for.inc155:                                       ; preds = %for.cond140.4, %for.end127
  %inc156 = add nuw nsw i64 %i.1364, 1
  %exitcond372.not = icmp eq i64 %inc156, %umax
  br i1 %exitcond372.not, label %for.end157, label %for.body107, !llvm.loop !52

for.end157:                                       ; preds = %for.inc155, %for.cond104.preheader
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %4 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !26
  %points_make_affine = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %4, i64 0, i32 28
  %5 = load i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)** %points_make_affine, align 8, !tbaa !45
  %cmp158 = icmp eq i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)* %5, null
  br i1 %cmp158, label %if.then175, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %for.end157
  %call163 = tail call i32 %5(%struct.ec_group_st* noundef nonnull %group, i64 noundef %mul, %struct.ec_point_st** noundef nonnull %0, %struct.bignum_ctx* noundef nonnull %ctx.addr.0318) #10
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then175, label %if.end166

if.end166:                                        ; preds = %lor.lhs.false160
  %group167 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %call, i64 0, i32 0
  store %struct.ec_group_st* %group, %struct.ec_group_st** %group167, align 8, !tbaa !53
  %blocksize168 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %call, i64 0, i32 1
  store i64 8, i64* %blocksize168, align 8, !tbaa !35
  %numblocks169 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %call, i64 0, i32 2
  store i64 %div, i64* %numblocks169, align 8, !tbaa !34
  %w170 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %call, i64 0, i32 3
  store i64 %w.0, i64* %w170, align 8, !tbaa !36
  %points171 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %call, i64 0, i32 4
  %6 = bitcast %struct.ec_point_st*** %points171 to i8**
  store i8* %call79, i8** %6, align 8, !tbaa !8
  %num172 = getelementptr inbounds %struct.ec_pre_comp_st, %struct.ec_pre_comp_st* %call, i64 0, i32 5
  store i64 %mul, i64* %num172, align 8, !tbaa !37
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19
  store i32 5, i32* %pre_comp_type, align 8, !tbaa !54
  %pre_comp173 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 20
  %ec = bitcast %union.anon* %pre_comp173 to %struct.ec_pre_comp_st**
  store %struct.ec_pre_comp_st* %call, %struct.ec_pre_comp_st** %ec, align 8, !tbaa !33
  br label %if.then175

if.then175:                                       ; preds = %if.end135, %if.end111, %for.body107, %for.body143.preheader, %for.cond140, %for.cond140.1, %for.cond140.2, %for.cond140.3, %for.cond140.4, %for.body119, %if.end11, %if.then17, %if.then82, %if.then90, %if.then98, %for.end157, %if.end166, %lor.lhs.false160, %if.end99
  %base.1.ph = phi %struct.ec_point_st* [ %call95, %if.end99 ], [ %call95, %lor.lhs.false160 ], [ %call95, %if.end166 ], [ %call95, %for.end157 ], [ null, %if.then98 ], [ null, %if.then90 ], [ null, %if.then82 ], [ null, %if.then17 ], [ null, %if.end11 ], [ %call95, %for.body119 ], [ %call95, %for.cond140.4 ], [ %call95, %for.cond140.3 ], [ %call95, %for.cond140.2 ], [ %call95, %for.cond140.1 ], [ %call95, %for.cond140 ], [ %call95, %for.body143.preheader ], [ %call95, %for.body107 ], [ %call95, %if.end111 ], [ %call95, %if.end135 ]
  %tmp_point.0.ph = phi %struct.ec_point_st* [ %call92, %if.end99 ], [ %call92, %lor.lhs.false160 ], [ %call92, %if.end166 ], [ %call92, %for.end157 ], [ %call92, %if.then98 ], [ null, %if.then90 ], [ null, %if.then82 ], [ null, %if.then17 ], [ null, %if.end11 ], [ %call92, %for.body119 ], [ %call92, %for.cond140.4 ], [ %call92, %for.cond140.3 ], [ %call92, %for.cond140.2 ], [ %call92, %for.cond140.1 ], [ %call92, %for.cond140 ], [ %call92, %for.body143.preheader ], [ %call92, %for.body107 ], [ %call92, %if.end111 ], [ %call92, %if.end135 ]
  %points.0.ph = phi %struct.ec_point_st** [ %0, %if.end99 ], [ %0, %lor.lhs.false160 ], [ null, %if.end166 ], [ %0, %for.end157 ], [ %0, %if.then98 ], [ %0, %if.then90 ], [ null, %if.then82 ], [ null, %if.then17 ], [ null, %if.end11 ], [ %0, %for.body119 ], [ %0, %for.cond140.4 ], [ %0, %for.cond140.3 ], [ %0, %for.cond140.2 ], [ %0, %for.cond140.1 ], [ %0, %for.cond140 ], [ %0, %for.body143.preheader ], [ %0, %for.body107 ], [ %0, %if.end111 ], [ %0, %if.end135 ]
  %pre_comp.0.ph = phi %struct.ec_pre_comp_st* [ %call, %if.end99 ], [ %call, %lor.lhs.false160 ], [ null, %if.end166 ], [ %call, %for.end157 ], [ %call, %if.then98 ], [ %call, %if.then90 ], [ %call, %if.then82 ], [ %call, %if.then17 ], [ %call, %if.end11 ], [ %call, %for.body119 ], [ %call, %for.cond140.4 ], [ %call, %for.cond140.3 ], [ %call, %for.cond140.2 ], [ %call, %for.cond140.1 ], [ %call, %for.cond140 ], [ %call, %for.body143.preheader ], [ %call, %for.body107 ], [ %call, %if.end111 ], [ %call, %if.end135 ]
  %ret.0.ph = phi i32 [ 0, %if.end99 ], [ 0, %lor.lhs.false160 ], [ 1, %if.end166 ], [ 0, %for.end157 ], [ 0, %if.then98 ], [ 0, %if.then90 ], [ 0, %if.then82 ], [ 0, %if.then17 ], [ 0, %if.end11 ], [ 0, %for.body119 ], [ 0, %for.cond140.4 ], [ 0, %for.cond140.3 ], [ 0, %for.cond140.2 ], [ 0, %for.cond140.1 ], [ 0, %for.cond140 ], [ 0, %for.body143.preheader ], [ 0, %for.body107 ], [ 0, %if.end111 ], [ 0, %if.end135 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx.addr.0318) #10
  br label %if.end176

if.end176:                                        ; preds = %if.then3, %if.end8, %if.then175
  %new_ctx.1350 = phi %struct.bignum_ctx* [ %new_ctx.0320, %if.then175 ], [ null, %if.then3 ], [ null, %if.end8 ]
  %ret.0348 = phi i32 [ %ret.0.ph, %if.then175 ], [ 0, %if.then3 ], [ 0, %if.end8 ]
  %pre_comp.0346 = phi %struct.ec_pre_comp_st* [ %pre_comp.0.ph, %if.then175 ], [ %call, %if.then3 ], [ %call, %if.end8 ]
  %points.0344 = phi %struct.ec_point_st** [ %points.0.ph, %if.then175 ], [ null, %if.then3 ], [ null, %if.end8 ]
  %tmp_point.0341 = phi %struct.ec_point_st* [ %tmp_point.0.ph, %if.then175 ], [ null, %if.then3 ], [ null, %if.end8 ]
  %base.1339 = phi %struct.ec_point_st* [ %base.1.ph, %if.then175 ], [ null, %if.then3 ], [ null, %if.end8 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.1350) #10
  tail call void @EC_ec_pre_comp_free(%struct.ec_pre_comp_st* noundef %pre_comp.0346) #9
  %tobool177.not = icmp eq %struct.ec_point_st** %points.0344, null
  br i1 %tobool177.not, label %if.end186, label %for.cond179.preheader

for.cond179.preheader:                            ; preds = %if.end176
  %7 = load %struct.ec_point_st*, %struct.ec_point_st** %points.0344, align 8, !tbaa !12
  %cmp180.not366 = icmp eq %struct.ec_point_st* %7, null
  br i1 %cmp180.not366, label %for.end185, label %for.body182

for.body182:                                      ; preds = %for.cond179.preheader, %for.body182
  %8 = phi %struct.ec_point_st* [ %9, %for.body182 ], [ %7, %for.cond179.preheader ]
  %p.0367 = phi %struct.ec_point_st** [ %incdec.ptr184, %for.body182 ], [ %points.0344, %for.cond179.preheader ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef nonnull %8) #10
  %incdec.ptr184 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %p.0367, i64 1
  %9 = load %struct.ec_point_st*, %struct.ec_point_st** %incdec.ptr184, align 8, !tbaa !12
  %cmp180.not = icmp eq %struct.ec_point_st* %9, null
  br i1 %cmp180.not, label %for.end185, label %for.body182, !llvm.loop !55

for.end185:                                       ; preds = %for.body182, %for.cond179.preheader
  %10 = bitcast %struct.ec_point_st** %points.0344 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %10, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 984) #10
  br label %if.end186

if.end186:                                        ; preds = %for.end185, %if.end176
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %tmp_point.0341) #10
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %base.1339) #10
  br label %cleanup187

cleanup187:                                       ; preds = %entry, %if.end186
  %retval.0 = phi i32 [ %ret.0348, %if.end186 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @EC_pre_comp_free(%struct.ec_group_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ec_pre_comp_st* @ec_pre_comp_new(%struct.ec_group_st* noundef %group) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.ec_group_st* %group, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 64, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 58) #10
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ec_pre_comp_new, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = bitcast i8* %call to %struct.ec_pre_comp_st*
  %group3 = bitcast i8* %call to %struct.ec_group_st**
  store %struct.ec_group_st* %group, %struct.ec_group_st** %group3, align 8, !tbaa !53
  %blocksize = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %blocksize to i64*
  store i64 8, i64* %1, align 8, !tbaa !35
  %w = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %w to i64*
  store i64 4, i64* %2, align 8, !tbaa !36
  %references = getelementptr inbounds i8, i8* %call, i64 48
  %3 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %3 seq_cst, align 4, !tbaa !56
  %call4 = tail call i8* @CRYPTO_THREAD_lock_new() #10
  %lock = getelementptr inbounds i8, i8* %call, i64 56
  %4 = bitcast i8* %lock to i8**
  store i8* %call4, i8** %4, align 8, !tbaa !15
  %cmp6 = icmp eq i8* %call4, null
  br i1 %cmp6, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end2
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ec_pre_comp_new, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #10
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 72) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry, %if.then7, %if.then1
  %retval.0 = phi %struct.ec_pre_comp_st* [ null, %if.then1 ], [ null, %if.then7 ], [ null, %entry ], [ %0, %if.end2 ]
  ret %struct.ec_pre_comp_st* %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #4

declare %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #4

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ossl_ec_wNAF_have_precompute_mult(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #6 {
entry:
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19
  %0 = load i32, i32* %pre_comp_type, align 8, !tbaa !54
  %cmp = icmp eq i32 %0, 5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %pre_comp = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 20
  %ec = bitcast %union.anon* %pre_comp to %struct.ec_pre_comp_st**
  %1 = load %struct.ec_pre_comp_st*, %struct.ec_pre_comp_st** %ec, align 8, !tbaa !33
  %cmp1 = icmp ne %struct.ec_pre_comp_st* %1, null
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.abs.i8(i8, i1 immarg) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!9, !10, i64 32}
!9 = !{!"ec_pre_comp_st", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !10, i64 32, !11, i64 40, !6, i64 48, !10, i64 56}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!10, !10, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!9, !10, i64 56}
!16 = !{!17, !10, i64 16}
!17 = !{!"ec_group_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !6, i64 44, !10, i64 48, !11, i64 56, !10, i64 64, !6, i64 72, !10, i64 96, !10, i64 104, !5, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !6, i64 152, !6, i64 160, !10, i64 168, !10, i64 176}
!18 = !{!17, !10, i64 24}
!19 = !{!17, !10, i64 8}
!20 = !{!21, !10, i64 16}
!21 = !{!"ec_point_st", !10, i64 0, !5, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40}
!22 = !{!21, !10, i64 24}
!23 = !{!21, !10, i64 32}
!24 = !{!17, !10, i64 64}
!25 = !{!21, !5, i64 40}
!26 = !{!17, !10, i64 0}
!27 = !{!28, !10, i64 208}
!28 = !{!"ec_method_st", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !10, i64 384, !10, i64 392, !10, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !10, i64 432}
!29 = distinct !{!29, !14}
!30 = !{!28, !10, i64 416}
!31 = !{!28, !10, i64 424}
!32 = !{!28, !10, i64 432}
!33 = !{!6, !6, i64 0}
!34 = !{!9, !11, i64 16}
!35 = !{!9, !11, i64 8}
!36 = !{!9, !11, i64 24}
!37 = !{!9, !11, i64 40}
!38 = !{!11, !11, i64 0}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = !{!28, !10, i64 216}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = !{!9, !10, i64 0}
!54 = !{!17, !6, i64 152}
!55 = distinct !{!55, !14}
!56 = !{!9, !6, i64 48}
