; ModuleID = 'crypto/ec/ec_key.c'
source_filename = "crypto/ec/ec_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.bignum_ctx = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.engine_st = type opaque
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/ec/ec_key.c\00", align 1
@__func__.EC_KEY_copy = private unnamed_addr constant [12 x i8] c"EC_KEY_copy\00", align 1
@__func__.EC_KEY_generate_key = private unnamed_addr constant [20 x i8] c"EC_KEY_generate_key\00", align 1
@__func__.EC_KEY_check_key = private unnamed_addr constant [17 x i8] c"EC_KEY_check_key\00", align 1
@__func__.ossl_ec_key_public_check_quick = private unnamed_addr constant [31 x i8] c"ossl_ec_key_public_check_quick\00", align 1
@__func__.ossl_ec_key_public_check = private unnamed_addr constant [25 x i8] c"ossl_ec_key_public_check\00", align 1
@__func__.ossl_ec_key_private_check = private unnamed_addr constant [26 x i8] c"ossl_ec_key_private_check\00", align 1
@__func__.ossl_ec_key_pairwise_check = private unnamed_addr constant [27 x i8] c"ossl_ec_key_pairwise_check\00", align 1
@__func__.ossl_ec_key_simple_check_key = private unnamed_addr constant [29 x i8] c"ossl_ec_key_simple_check_key\00", align 1
@__func__.EC_KEY_set_public_key_affine_coordinates = private unnamed_addr constant [41 x i8] c"EC_KEY_set_public_key_affine_coordinates\00", align 1
@__func__.EC_KEY_priv2oct = private unnamed_addr constant [16 x i8] c"EC_KEY_priv2oct\00", align 1
@__func__.ossl_ec_key_simple_priv2oct = private unnamed_addr constant [28 x i8] c"ossl_ec_key_simple_priv2oct\00", align 1
@__func__.EC_KEY_oct2priv = private unnamed_addr constant [16 x i8] c"EC_KEY_oct2priv\00", align 1
@__func__.ossl_ec_key_simple_oct2priv = private unnamed_addr constant [28 x i8] c"ossl_ec_key_simple_oct2priv\00", align 1
@__func__.EC_KEY_priv2buf = private unnamed_addr constant [16 x i8] c"EC_KEY_priv2buf\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Conditional_PCT\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @EC_KEY_new() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ec_key_st* @ossl_ec_key_new_method_int(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null, %struct.engine_st* noundef null) #8
  ret %struct.ec_key_st* %call
}

declare %struct.ec_key_st* @ossl_ec_key_new_method_int(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @EC_KEY_new_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ec_key_st* @ossl_ec_key_new_method_int(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq, %struct.engine_st* noundef null) #8
  ret %struct.ec_key_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @EC_KEY_new_by_curve_name_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq, i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ec_key_st* @EC_KEY_new_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #9
  %cmp = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name_ex(%struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq, i32 noundef %nid) #8
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 3
  store %struct.ec_group_st* %call1, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.ec_group_st* %call1, null
  br i1 %cmp3, label %cleanup.sink.split, label %if.end5

if.end5:                                          ; preds = %if.end
  %meth = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 0
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !12
  %set_group = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %0, i64 0, i32 5
  %1 = load i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)** %set_group, align 8, !tbaa !13
  %cmp6.not = icmp eq i32 (%struct.ec_key_st*, %struct.ec_group_st*)* %1, null
  br i1 %cmp6.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %call10 = tail call i32 %1(%struct.ec_key_st* noundef nonnull %call, %struct.ec_group_st* noundef nonnull %call1) #8
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true, %if.end
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5, %land.lhs.true, %entry
  %retval.0 = phi %struct.ec_key_st* [ null, %entry ], [ %call, %land.lhs.true ], [ %call, %if.end5 ], [ null, %cleanup.sink.split ]
  ret %struct.ec_key_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.ec_group_st* @EC_GROUP_new_by_curve_name_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @EC_KEY_free(%struct.ec_key_st* noundef %r) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %cmp = icmp eq %struct.ec_key_st* %r, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %r, i64 0, i32 8
  %lock = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %r, i64 0, i32 11
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #9
  %1 = load i32, i32* %i, align 4, !tbaa !15
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %meth = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %r, i64 0, i32 0
  %2 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !12
  %cmp4.not = icmp eq %struct.ec_key_method_st* %2, null
  br i1 %cmp4.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %finish = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %2, i64 0, i32 3
  %3 = load void (%struct.ec_key_st*)*, void (%struct.ec_key_st*)** %finish, align 8, !tbaa !16
  %cmp6.not = icmp eq void (%struct.ec_key_st*)* %3, null
  br i1 %cmp6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  tail call void %3(%struct.ec_key_st* noundef nonnull %r) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true, %if.end3
  %engine = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %r, i64 0, i32 1
  %4 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !17
  %call11 = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %4) #8
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %r, i64 0, i32 3
  %5 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.ec_group_st* %5, null
  br i1 %tobool.not, label %if.end20, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.end10
  %meth14 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %5, i64 0, i32 0
  %6 = load %struct.ec_method_st*, %struct.ec_method_st** %meth14, align 8, !tbaa !18
  %keyfinish = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %6, i64 0, i32 46
  %7 = load void (%struct.ec_key_st*)*, void (%struct.ec_key_st*)** %keyfinish, align 8, !tbaa !20
  %tobool15.not = icmp eq void (%struct.ec_key_st*)* %7, null
  br i1 %tobool15.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %land.lhs.true12
  tail call void %7(%struct.ec_key_st* noundef nonnull %r) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %land.lhs.true12, %if.end10
  %8 = bitcast %struct.ec_key_st* %r to i8*
  %ex_data = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %r, i64 0, i32 10
  tail call void @CRYPTO_free_ex_data(i32 noundef 8, i8* noundef nonnull %8, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #8
  %9 = load i8*, i8** %lock, align 8, !tbaa !22
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %9) #8
  %10 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %10) #8
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %r, i64 0, i32 4
  %11 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %11) #8
  %priv_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %r, i64 0, i32 5
  %12 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  tail call void @BN_clear_free(%struct.bignum_st* noundef %12) #8
  %propq = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %r, i64 0, i32 13
  %13 = load i8*, i8** %propq, align 8, !tbaa !25
  tail call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 100) #8
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %8, i64 noundef 112, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 102) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @EC_KEY_new_by_curve_name(i32 noundef %nid) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ec_key_st* @EC_KEY_new_by_curve_name_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null, i32 noundef %nid) #9
  ret %struct.ec_key_st* %call
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #3 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !15
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

declare void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #1

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @EC_KEY_copy(%struct.ec_key_st* noundef %dest, %struct.ec_key_st* noundef %src) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %dest, null
  %cmp1 = icmp eq %struct.ec_key_st* %src, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.EC_KEY_copy, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 0
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !12
  %meth2 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 0
  %1 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth2, align 8, !tbaa !12
  %cmp3.not = icmp eq %struct.ec_key_method_st* %0, %1
  br i1 %cmp3.not, label %if.end23, label %if.then4

if.then4:                                         ; preds = %if.end
  %finish = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %1, i64 0, i32 3
  %2 = load void (%struct.ec_key_st*)*, void (%struct.ec_key_st*)** %finish, align 8, !tbaa !16
  %cmp6.not = icmp eq void (%struct.ec_key_st*)* %2, null
  br i1 %cmp6.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.then4
  tail call void %2(%struct.ec_key_st* noundef nonnull %dest) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then4
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 3
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %tobool.not = icmp eq %struct.ec_group_st* %3, null
  br i1 %tobool.not, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %meth12 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %3, i64 0, i32 0
  %4 = load %struct.ec_method_st*, %struct.ec_method_st** %meth12, align 8, !tbaa !18
  %keyfinish = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %4, i64 0, i32 46
  %5 = load void (%struct.ec_key_st*)*, void (%struct.ec_key_st*)** %keyfinish, align 8, !tbaa !20
  %tobool13.not = icmp eq void (%struct.ec_key_st*)* %5, null
  br i1 %tobool13.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  tail call void %5(%struct.ec_key_st* noundef nonnull %dest) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %land.lhs.true, %if.end10
  %engine = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 1
  %6 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !17
  %call = tail call i32 @ENGINE_finish(%struct.engine_st* noundef %6) #8
  %cmp19 = icmp eq i32 %call, 0
  br i1 %cmp19, label %return, label %if.end21

if.end21:                                         ; preds = %if.end18
  store %struct.engine_st* null, %struct.engine_st** %engine, align 8, !tbaa !17
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end
  %libctx = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 12
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !26
  %libctx24 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 12
  store %struct.ossl_lib_ctx_st* %7, %struct.ossl_lib_ctx_st** %libctx24, align 8, !tbaa !26
  %group25 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 3
  %8 = load %struct.ec_group_st*, %struct.ec_group_st** %group25, align 8, !tbaa !4
  %cmp26.not = icmp eq %struct.ec_group_st* %8, null
  br i1 %cmp26.not, label %if.end91, label %if.then27

if.then27:                                        ; preds = %if.end23
  %group28 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 3
  %9 = load %struct.ec_group_st*, %struct.ec_group_st** %group28, align 8, !tbaa !4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %9) #8
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !26
  %propq = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 13
  %11 = load i8*, i8** %propq, align 8, !tbaa !25
  %12 = load %struct.ec_group_st*, %struct.ec_group_st** %group25, align 8, !tbaa !4
  %meth31 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %12, i64 0, i32 0
  %13 = load %struct.ec_method_st*, %struct.ec_method_st** %meth31, align 8, !tbaa !18
  %call32 = tail call %struct.ec_group_st* @ossl_ec_group_new_ex(%struct.ossl_lib_ctx_st* noundef %10, i8* noundef %11, %struct.ec_method_st* noundef %13) #8
  store %struct.ec_group_st* %call32, %struct.ec_group_st** %group28, align 8, !tbaa !4
  %cmp35 = icmp eq %struct.ec_group_st* %call32, null
  br i1 %cmp35, label %return, label %if.end37

if.end37:                                         ; preds = %if.then27
  %14 = load %struct.ec_group_st*, %struct.ec_group_st** %group25, align 8, !tbaa !4
  %call40 = tail call i32 @EC_GROUP_copy(%struct.ec_group_st* noundef nonnull %call32, %struct.ec_group_st* noundef %14) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %return, label %if.end43

if.end43:                                         ; preds = %if.end37
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 4
  %15 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %cmp44.not = icmp eq %struct.ec_point_st* %15, null
  br i1 %cmp44.not, label %if.end60, label %if.then45

if.then45:                                        ; preds = %if.end43
  %pub_key46 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 4
  %16 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key46, align 8, !tbaa !23
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %16) #8
  %17 = load %struct.ec_group_st*, %struct.ec_group_st** %group25, align 8, !tbaa !4
  %call48 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %17) #8
  store %struct.ec_point_st* %call48, %struct.ec_point_st** %pub_key46, align 8, !tbaa !23
  %cmp51 = icmp eq %struct.ec_point_st* %call48, null
  br i1 %cmp51, label %return, label %if.end53

if.end53:                                         ; preds = %if.then45
  %18 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %call56 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef nonnull %call48, %struct.ec_point_st* noundef %18) #8
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %return, label %if.end60

if.end60:                                         ; preds = %if.end53, %if.end43
  %priv_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 5
  %19 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  %cmp61.not = icmp eq %struct.bignum_st* %19, null
  br i1 %cmp61.not, label %if.end91, label %if.then62

if.then62:                                        ; preds = %if.end60
  %priv_key63 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 5
  %20 = load %struct.bignum_st*, %struct.bignum_st** %priv_key63, align 8, !tbaa !24
  %cmp64 = icmp eq %struct.bignum_st* %20, null
  br i1 %cmp64, label %if.then65, label %if.end72

if.then65:                                        ; preds = %if.then62
  %call66 = tail call %struct.bignum_st* @BN_new() #8
  store %struct.bignum_st* %call66, %struct.bignum_st** %priv_key63, align 8, !tbaa !24
  %cmp69 = icmp eq %struct.bignum_st* %call66, null
  br i1 %cmp69, label %return, label %if.then65.if.end72_crit_edge

if.then65.if.end72_crit_edge:                     ; preds = %if.then65
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  br label %if.end72

if.end72:                                         ; preds = %if.then65.if.end72_crit_edge, %if.then62
  %21 = phi %struct.bignum_st* [ %.pre, %if.then65.if.end72_crit_edge ], [ %19, %if.then62 ]
  %22 = phi %struct.bignum_st* [ %call66, %if.then65.if.end72_crit_edge ], [ %20, %if.then62 ]
  %call75 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %22, %struct.bignum_st* noundef %21) #8
  %tobool76.not = icmp eq %struct.bignum_st* %call75, null
  br i1 %tobool76.not, label %return, label %if.end78

if.end78:                                         ; preds = %if.end72
  %23 = load %struct.ec_group_st*, %struct.ec_group_st** %group25, align 8, !tbaa !4
  %meth80 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %23, i64 0, i32 0
  %24 = load %struct.ec_method_st*, %struct.ec_method_st** %meth80, align 8, !tbaa !18
  %keycopy = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %24, i64 0, i32 45
  %25 = load i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)** %keycopy, align 8, !tbaa !27
  %tobool81.not = icmp eq i32 (%struct.ec_key_st*, %struct.ec_key_st*)* %25, null
  br i1 %tobool81.not, label %if.end91, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %if.end78
  %call86 = tail call i32 %25(%struct.ec_key_st* noundef nonnull %dest, %struct.ec_key_st* noundef nonnull %src) #8
  %cmp87 = icmp eq i32 %call86, 0
  br i1 %cmp87, label %return, label %if.end91

if.end91:                                         ; preds = %if.end60, %land.lhs.true82, %if.end78, %if.end23
  %enc_flag = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 6
  %26 = load i32, i32* %enc_flag, align 8, !tbaa !28
  %enc_flag92 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 6
  store i32 %26, i32* %enc_flag92, align 8, !tbaa !28
  %conv_form = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 7
  %27 = load i32, i32* %conv_form, align 4, !tbaa !29
  %conv_form93 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 7
  store i32 %27, i32* %conv_form93, align 4, !tbaa !29
  %version = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 2
  %28 = load i32, i32* %version, align 8, !tbaa !30
  %version94 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 2
  store i32 %28, i32* %version94, align 8, !tbaa !30
  %flags = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 9
  %29 = load i32, i32* %flags, align 4, !tbaa !31
  %flags95 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 9
  store i32 %29, i32* %flags95, align 4, !tbaa !31
  %ex_data = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 10
  %ex_data96 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 10
  %call97 = tail call i32 @CRYPTO_dup_ex_data(i32 noundef 8, %struct.crypto_ex_data_st* noundef nonnull %ex_data, %struct.crypto_ex_data_st* noundef nonnull %ex_data96) #8
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %return, label %if.end100

if.end100:                                        ; preds = %if.end91
  %30 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !12
  %31 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth2, align 8, !tbaa !12
  %cmp103.not = icmp eq %struct.ec_key_method_st* %30, %31
  br i1 %cmp103.not, label %if.end117, label %if.then104

if.then104:                                       ; preds = %if.end100
  %engine105 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %src, i64 0, i32 1
  %32 = load %struct.engine_st*, %struct.engine_st** %engine105, align 8, !tbaa !17
  %cmp106.not = icmp eq %struct.engine_st* %32, null
  br i1 %cmp106.not, label %if.end112, label %land.lhs.true107

land.lhs.true107:                                 ; preds = %if.then104
  %call109 = tail call i32 @ENGINE_init(%struct.engine_st* noundef nonnull %32) #8
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %return, label %land.lhs.true107.if.end112_crit_edge

land.lhs.true107.if.end112_crit_edge:             ; preds = %land.lhs.true107
  %.pre196 = load %struct.engine_st*, %struct.engine_st** %engine105, align 8, !tbaa !17
  %.pre197 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !12
  br label %if.end112

if.end112:                                        ; preds = %land.lhs.true107.if.end112_crit_edge, %if.then104
  %33 = phi %struct.ec_key_method_st* [ %.pre197, %land.lhs.true107.if.end112_crit_edge ], [ %30, %if.then104 ]
  %34 = phi %struct.engine_st* [ %.pre196, %land.lhs.true107.if.end112_crit_edge ], [ null, %if.then104 ]
  %engine114 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 1
  store %struct.engine_st* %34, %struct.engine_st** %engine114, align 8, !tbaa !17
  store %struct.ec_key_method_st* %33, %struct.ec_key_method_st** %meth2, align 8, !tbaa !12
  %.pre198 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !12
  br label %if.end117

if.end117:                                        ; preds = %if.end112, %if.end100
  %35 = phi %struct.ec_key_method_st* [ %.pre198, %if.end112 ], [ %30, %if.end100 ]
  %copy = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %35, i64 0, i32 4
  %36 = load i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)** %copy, align 8, !tbaa !32
  %cmp119.not = icmp eq i32 (%struct.ec_key_st*, %struct.ec_key_st*)* %36, null
  br i1 %cmp119.not, label %if.end126, label %land.lhs.true120

land.lhs.true120:                                 ; preds = %if.end117
  %call123 = tail call i32 %36(%struct.ec_key_st* noundef nonnull %dest, %struct.ec_key_st* noundef nonnull %src) #8
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %return, label %if.end126

if.end126:                                        ; preds = %land.lhs.true120, %if.end117
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %dest, i64 0, i32 14
  %37 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %37, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  br label %return

return:                                           ; preds = %land.lhs.true120, %land.lhs.true107, %if.end91, %land.lhs.true82, %if.end72, %if.then65, %if.end53, %if.then45, %if.end37, %if.then27, %if.end18, %if.end126, %if.then
  %retval.0 = phi %struct.ec_key_st* [ null, %if.then ], [ %dest, %if.end126 ], [ null, %if.end18 ], [ null, %if.then27 ], [ null, %if.end37 ], [ null, %if.then45 ], [ null, %if.end53 ], [ null, %if.then65 ], [ null, %if.end72 ], [ null, %land.lhs.true82 ], [ null, %if.end91 ], [ null, %land.lhs.true107 ], [ null, %land.lhs.true120 ]
  ret %struct.ec_key_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare %struct.ec_group_st* @ossl_ec_group_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ec_method_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_copy(%struct.ec_group_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #1

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_copy(%struct.ec_point_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @CRYPTO_dup_ex_data(i32 noundef, %struct.crypto_ex_data_st* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #1

declare i32 @ENGINE_init(%struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @EC_KEY_dup(%struct.ec_key_st* noundef %ec_key) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ec_key_st* @ossl_ec_key_dup(%struct.ec_key_st* noundef %ec_key, i32 noundef 135) #8
  ret %struct.ec_key_st* %call
}

declare %struct.ec_key_st* @ossl_ec_key_dup(%struct.ec_key_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @EC_KEY_up_ref(%struct.ec_key_st* nocapture noundef %r) local_unnamed_addr #4 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %references = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %r, i64 0, i32 8
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #9
  %1 = load i32, i32* %i, align 4, !tbaa !15
  %cmp1 = icmp sgt i32 %1, 1
  %cond = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #3 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.engine_st* @EC_KEY_get0_engine(%struct.ec_key_st* nocapture noundef readonly %eckey) local_unnamed_addr #5 {
entry:
  %engine = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 1
  %0 = load %struct.engine_st*, %struct.engine_st** %engine, align 8, !tbaa !17
  ret %struct.engine_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_generate_key(%struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %eckey, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EC_KEY_generate_key, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %meth = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 0
  %1 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !12
  %keygen = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %1, i64 0, i32 8
  %2 = load i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)** %keygen, align 8, !tbaa !34
  %cmp2.not = icmp eq i32 (%struct.ec_key_st*)* %2, null
  br i1 %cmp2.not, label %if.end9, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call i32 %2(%struct.ec_key_st* noundef nonnull %eckey) #8
  %cmp6 = icmp eq i32 %call, 1
  br i1 %cmp6, label %if.then7, label %return

if.then7:                                         ; preds = %if.then3
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 14
  %3 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %3, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  br label %return

if.end9:                                          ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EC_KEY_generate_key, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 152, i8* noundef null) #8
  br label %return

return:                                           ; preds = %if.then3, %if.then7, %if.end9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end9 ], [ 1, %if.then7 ], [ %call, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_gen(%struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %0, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !18
  %keygen = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %1, i64 0, i32 42
  %2 = load i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)** %keygen, align 8, !tbaa !35
  %call = tail call i32 %2(%struct.ec_key_st* noundef %eckey) #8
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 14
  %3 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %3, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_simple_generate_key(%struct.ec_key_st* nocapture noundef %eckey) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ec_generate_key(%struct.ec_key_st* noundef %eckey) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_generate_key(%struct.ec_key_st* nocapture noundef %eckey) unnamed_addr #0 {
entry:
  %group1 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group1, align 8, !tbaa !4
  %libctx = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 12
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !26
  %call = tail call %struct.bignum_ctx* @BN_CTX_secure_new_ex(%struct.ossl_lib_ctx_st* noundef %1) #8
  %call2 = tail call i32 @EC_KEY_get_flags(%struct.ec_key_st* noundef %eckey) #9
  %and = and i32 %call2, 4
  %tobool.not = icmp eq i32 %and, 0
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %if.then59, label %if.end

if.end:                                           ; preds = %entry
  %priv_key3 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %priv_key3, align 8, !tbaa !24
  %cmp4 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %call6 = tail call %struct.bignum_st* @BN_secure_new() #8
  %cmp7 = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp7, label %if.then59, label %if.end11

if.end11:                                         ; preds = %if.end, %if.then5
  %priv_key.0 = phi %struct.bignum_st* [ %call6, %if.then5 ], [ %2, %if.end ]
  %call12 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %0) #8
  %cmp13 = icmp eq %struct.bignum_st* %call12, null
  br i1 %cmp13, label %if.then59, label %if.end15

if.end15:                                         ; preds = %if.end11
  br i1 %tobool.not, label %if.else25, label %if.then17

if.then17:                                        ; preds = %if.end15
  %call18 = tail call %struct.bignum_st* @BN_new() #8
  %cmp19 = icmp eq %struct.bignum_st* %call18, null
  br i1 %cmp19, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then17
  %call20 = tail call %struct.bignum_st* @BN_value_one() #8
  %call21 = tail call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call18, %struct.bignum_st* noundef nonnull %call12, %struct.bignum_st* noundef %call20) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then59, label %if.end30

if.else25:                                        ; preds = %if.end15
  %call26 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %call12) #8
  %cmp27 = icmp eq %struct.bignum_st* %call26, null
  br i1 %cmp27, label %if.then59, label %if.end30

if.end30:                                         ; preds = %if.else25, %lor.lhs.false
  %order.0 = phi %struct.bignum_st* [ %call18, %lor.lhs.false ], [ %call26, %if.else25 ]
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end30
  %call31 = tail call i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef %priv_key.0, %struct.bignum_st* noundef %order.0, i32 noundef 0, %struct.bignum_ctx* noundef nonnull %call) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then59, label %do.cond

do.cond:                                          ; preds = %do.body
  %call35 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %priv_key.0) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.end, label %do.body, !llvm.loop !36

do.end:                                           ; preds = %do.cond
  %pub_key37 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 4
  %3 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key37, align 8, !tbaa !23
  %cmp38 = icmp eq %struct.ec_point_st* %3, null
  br i1 %cmp38, label %if.then39, label %if.end46

if.then39:                                        ; preds = %do.end
  %call40 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %0) #8
  %cmp41 = icmp eq %struct.ec_point_st* %call40, null
  br i1 %cmp41, label %if.then59, label %if.end46

if.end46:                                         ; preds = %do.end, %if.then39
  %pub_key.0 = phi %struct.ec_point_st* [ %call40, %if.then39 ], [ %3, %do.end ]
  %call47 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %0, %struct.ec_point_st* noundef nonnull %pub_key.0, %struct.bignum_st* noundef %priv_key.0, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef nonnull %call) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then59, label %err

err:                                              ; preds = %if.end46
  store %struct.bignum_st* %priv_key.0, %struct.bignum_st** %priv_key3, align 8, !tbaa !24
  store %struct.ec_point_st* %pub_key.0, %struct.ec_point_st** %pub_key37, align 8, !tbaa !23
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 14
  %4 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %4, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  br label %if.end67

if.then59:                                        ; preds = %do.body, %entry, %if.then5, %if.end11, %if.then17, %if.then39, %if.end46, %lor.lhs.false, %if.else25
  %order.1.ph = phi %struct.bignum_st* [ null, %if.else25 ], [ %call18, %lor.lhs.false ], [ %order.0, %if.end46 ], [ %order.0, %if.then39 ], [ null, %if.then17 ], [ null, %if.end11 ], [ null, %if.then5 ], [ null, %entry ], [ %order.0, %do.body ]
  %pub_key.1.ph = phi %struct.ec_point_st* [ null, %if.else25 ], [ null, %lor.lhs.false ], [ %pub_key.0, %if.end46 ], [ null, %if.then39 ], [ null, %if.then17 ], [ null, %if.end11 ], [ null, %if.then5 ], [ null, %entry ], [ null, %do.body ]
  %priv_key.1.ph = phi %struct.bignum_st* [ %priv_key.0, %if.else25 ], [ %priv_key.0, %lor.lhs.false ], [ %priv_key.0, %if.end46 ], [ %priv_key.0, %if.then39 ], [ %priv_key.0, %if.then17 ], [ %priv_key.0, %if.end11 ], [ null, %if.then5 ], [ null, %entry ], [ %priv_key.0, %do.body ]
  tail call void @ossl_set_error_state(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #8
  %priv_key60 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 5
  %5 = load %struct.bignum_st*, %struct.bignum_st** %priv_key60, align 8, !tbaa !24
  tail call void @BN_clear(%struct.bignum_st* noundef %5) #8
  %pub_key61 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 4
  %6 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key61, align 8, !tbaa !23
  %cmp62.not = icmp eq %struct.ec_point_st* %6, null
  br i1 %cmp62.not, label %if.end67, label %if.then63

if.then63:                                        ; preds = %if.then59
  %call65 = tail call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %0, %struct.ec_point_st* noundef nonnull %6) #8
  br label %if.end67

if.end67:                                         ; preds = %err, %if.then59, %if.then63
  %ok.012 = phi i32 [ 0, %if.then59 ], [ 0, %if.then63 ], [ 1, %err ]
  %priv_key.110 = phi %struct.bignum_st* [ %priv_key.1.ph, %if.then59 ], [ %priv_key.1.ph, %if.then63 ], [ null, %err ]
  %pub_key.18 = phi %struct.ec_point_st* [ %pub_key.1.ph, %if.then59 ], [ %pub_key.1.ph, %if.then63 ], [ null, %err ]
  %order.16 = phi %struct.bignum_st* [ %order.1.ph, %if.then59 ], [ %order.1.ph, %if.then63 ], [ %order.0, %err ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %pub_key.18) #8
  tail call void @BN_clear_free(%struct.bignum_st* noundef %priv_key.110) #8
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #8
  tail call void @BN_free(%struct.bignum_st* noundef %order.16) #8
  ret i32 %ok.012
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_simple_generate_public_key(%struct.ec_key_st* nocapture noundef %eckey) local_unnamed_addr #0 {
entry:
  %libctx = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 12
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !26
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #8
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %1 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 4
  %2 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %priv_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 5
  %3 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  %call1 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %1, %struct.ec_point_st* noundef %2, %struct.bignum_st* noundef %3, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef nonnull %call) #8
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call) #8
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 14
  %4 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %4, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then3 ], [ %call1, %if.end ]
  ret i32 %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_check_key(%struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %eckey, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 4
  %1 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %cmp3 = icmp eq %struct.ec_point_st* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 383, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EC_KEY_check_key, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %0, i64 0, i32 0
  %2 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !18
  %keycheck = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %2, i64 0, i32 43
  %3 = load i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)** %keycheck, align 8, !tbaa !38
  %cmp5 = icmp eq i32 (%struct.ec_key_st*)* %3, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.EC_KEY_check_key, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end7:                                          ; preds = %if.end
  %call = tail call i32 %3(%struct.ec_key_st* noundef nonnull %eckey) #8
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ %call, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_public_check_quick(%struct.ec_key_st* noundef readonly %eckey, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %eckey, null
  br i1 %cmp, label %return.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp1, label %return.sink.split, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 4
  %1 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %cmp3 = icmp eq %struct.ec_point_st* %1, null
  br i1 %cmp3, label %return.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef nonnull %0, %struct.ec_point_st* noundef nonnull %1) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %return.sink.split

if.end7:                                          ; preds = %if.end
  %call8 = tail call fastcc i32 @ec_key_public_range_check(%struct.bignum_ctx* noundef %ctx, %struct.ec_key_st* noundef nonnull %eckey) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %return.sink.split, label %if.end11

if.end11:                                         ; preds = %if.end7
  %2 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %3 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %call14 = tail call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %2, %struct.ec_point_st* noundef %3, %struct.bignum_ctx* noundef %ctx) #8
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end11, %if.end7, %if.end, %entry, %lor.lhs.false, %lor.lhs.false2
  %.sink27 = phi i32 [ 444, %lor.lhs.false2 ], [ 444, %lor.lhs.false ], [ 444, %entry ], [ 450, %if.end ], [ 456, %if.end7 ], [ 462, %if.end11 ]
  %.sink = phi i32 [ 786690, %lor.lhs.false2 ], [ 786690, %lor.lhs.false ], [ 786690, %entry ], [ 106, %if.end ], [ 146, %if.end7 ], [ 107, %if.end11 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink27, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_ec_key_public_check_quick, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #8
  br label %return

return:                                           ; preds = %return.sink.split, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

declare i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_key_public_range_check(%struct.bignum_ctx* noundef %ctx, %struct.ec_key_st* nocapture noundef readonly %key) unnamed_addr #0 {
entry:
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #8
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %call1 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #8
  %cmp = icmp eq %struct.bignum_st* %call1, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 4
  %1 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %call2 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %0, %struct.ec_point_st* noundef %1, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef nonnull %call1, %struct.bignum_ctx* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %2 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %call6 = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %2) #8
  %cmp7 = icmp eq i32 %call6, 406
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  %call9 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %call) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %err

lor.lhs.false:                                    ; preds = %if.then8
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %3, i64 0, i32 10
  %4 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !39
  %call12 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %4) #8
  %cmp13 = icmp sgt i32 %call12, -1
  br i1 %cmp13, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %call15 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %call1) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %err

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %5 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %field19 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %5, i64 0, i32 10
  %6 = load %struct.bignum_st*, %struct.bignum_st** %field19, align 8, !tbaa !39
  %call20 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call1, %struct.bignum_st* noundef %6) #8
  %cmp21 = icmp sgt i32 %call20, -1
  br i1 %cmp21, label %err, label %if.end33

if.else:                                          ; preds = %if.end4
  %7 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %call25 = tail call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %7) #8
  %call26 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %call) #8
  %cmp27 = icmp sgt i32 %call26, %call25
  br i1 %cmp27, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.else
  %call29 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call1) #8
  %cmp30 = icmp sgt i32 %call29, %call25
  br i1 %cmp30, label %err, label %if.end33

if.end33:                                         ; preds = %lor.lhs.false28, %lor.lhs.false17
  br label %err

err:                                              ; preds = %lor.lhs.false28, %if.else, %if.then8, %lor.lhs.false, %lor.lhs.false14, %lor.lhs.false17, %if.end, %entry, %if.end33
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then8 ], [ 0, %lor.lhs.false ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false17 ], [ 1, %if.end33 ], [ 0, %if.end ], [ 0, %if.else ], [ 0, %lor.lhs.false28 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #8
  ret i32 %ret.0
}

declare i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_public_check(%struct.ec_key_st* noundef %eckey, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_ec_key_public_check_quick(%struct.ec_key_st* noundef %eckey, %struct.bignum_ctx* noundef %ctx) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %call1 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %0) #8
  %cmp = icmp eq %struct.ec_point_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %order5 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %1, i64 0, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %order5, align 8, !tbaa !40
  %call6 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %2) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %err.sink.split

if.end9:                                          ; preds = %if.end3
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 4
  %4 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %call11 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %3, %struct.ec_point_st* noundef nonnull %call1, %struct.bignum_st* noundef null, %struct.ec_point_st* noundef %4, %struct.bignum_st* noundef %2, %struct.bignum_ctx* noundef %ctx) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err.sink.split, label %if.end14

if.end14:                                         ; preds = %if.end9
  %5 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %call16 = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %5, %struct.ec_point_st* noundef nonnull %call1) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err.sink.split, label %err

err.sink.split:                                   ; preds = %if.end14, %if.end9, %if.end3
  %.sink35 = phi i32 [ 487, %if.end3 ], [ 492, %if.end9 ], [ 496, %if.end14 ]
  %.sink = phi i32 [ 122, %if.end3 ], [ 524304, %if.end9 ], [ 130, %if.end14 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink35, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_ec_key_public_check, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end14
  %ret.0 = phi i32 [ 1, %if.end14 ], [ 0, %err.sink.split ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_private_check(%struct.ec_key_st* noundef readonly %eckey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %eckey, null
  br i1 %cmp, label %return.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp1, label %return.sink.split, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %priv_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  %cmp3 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp3, label %return.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call %struct.bignum_st* @BN_value_one() #8
  %call5 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %1, %struct.bignum_st* noundef %call) #8
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %return.sink.split, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %2 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %3, i64 0, i32 2
  %4 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !40
  %call10 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %4) #8
  %cmp11 = icmp sgt i32 %call10, -1
  br i1 %cmp11, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end, %lor.lhs.false7, %entry, %lor.lhs.false, %lor.lhs.false2
  %.sink19 = phi i32 [ 513, %lor.lhs.false2 ], [ 513, %lor.lhs.false ], [ 513, %entry ], [ 518, %lor.lhs.false7 ], [ 518, %if.end ]
  %.sink = phi i32 [ 786690, %lor.lhs.false2 ], [ 786690, %lor.lhs.false ], [ 786690, %entry ], [ 123, %lor.lhs.false7 ], [ 123, %if.end ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink19, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ossl_ec_key_private_check, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #8
  br label %return

return:                                           ; preds = %return.sink.split, %lor.lhs.false7
  %retval.0 = phi i32 [ 1, %lor.lhs.false7 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_pairwise_check(%struct.ec_key_st* noundef readonly %eckey, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %eckey, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 4
  %1 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %cmp3 = icmp eq %struct.ec_point_st* %1, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %priv_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  %cmp5 = icmp eq %struct.bignum_st* %2, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 538, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ec_key_pairwise_check, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %call = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %0) #8
  %cmp7 = icmp eq %struct.ec_point_st* %call, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %4 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  %call12 = tail call i32 @EC_POINT_mul(%struct.ec_group_st* noundef %3, %struct.ec_point_st* noundef nonnull %call, %struct.bignum_st* noundef %4, %struct.ec_point_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef %ctx) #8
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end14

if.end14:                                         ; preds = %if.end9
  %5 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %6 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %call17 = tail call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %5, %struct.ec_point_st* noundef nonnull %call, %struct.ec_point_st* noundef %6, %struct.bignum_ctx* noundef %ctx) #8
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %err, label %err.sink.split

err.sink.split:                                   ; preds = %if.end14, %if.end9
  %.sink36 = phi i32 [ 548, %if.end9 ], [ 552, %if.end14 ]
  %.sink = phi i32 [ 524304, %if.end9 ], [ 123, %if.end14 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink36, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ec_key_pairwise_check, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #8
  br label %err

err:                                              ; preds = %err.sink.split, %if.end14, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ 1, %if.end14 ], [ 0, %err.sink.split ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare i32 @EC_POINT_cmp(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_simple_check_key(%struct.ec_key_st* noundef %eckey) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %eckey, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 578, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ossl_ec_key_simple_check_key, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 12
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !26
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #8
  %cmp1 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @ossl_ec_key_public_check(%struct.ec_key_st* noundef nonnull %eckey, %struct.bignum_ctx* noundef nonnull %call) #9
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end3
  %priv_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  %cmp7.not = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp7.not, label %if.end15, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i32 @ossl_ec_key_private_check(%struct.ec_key_st* noundef nonnull %eckey) #9
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then8
  %call11 = tail call i32 @ossl_ec_key_pairwise_check(%struct.ec_key_st* noundef nonnull %eckey, %struct.bignum_ctx* noundef nonnull %call) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false, %if.end6
  br label %err

err:                                              ; preds = %if.then8, %lor.lhs.false, %if.end3, %if.end15
  %ok.0 = phi i32 [ 1, %if.end15 ], [ 0, %lor.lhs.false ], [ 0, %if.then8 ], [ 0, %if.end3 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ok.0, %err ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_set_public_key_affine_coordinates(%struct.ec_key_st* noundef %key, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %key, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ec_group_st* %0, null
  %cmp3 = icmp eq %struct.bignum_st* %x, null
  %or.cond = or i1 %cmp3, %cmp1
  %cmp5 = icmp eq %struct.bignum_st* %y, null
  %or.cond47 = or i1 %cmp5, %or.cond
  br i1 %or.cond47, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 607, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.EC_KEY_set_public_key_affine_coordinates, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %libctx = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 12
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !26
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %1) #8
  %cmp6 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call) #8
  %2 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %call10 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %2) #8
  %cmp11 = icmp eq %struct.ec_point_st* %call10, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end8
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #8
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call) #8
  %cmp16 = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %if.end13
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %call20 = tail call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %3, %struct.ec_point_st* noundef nonnull %call10, %struct.bignum_st* noundef nonnull %x, %struct.bignum_st* noundef nonnull %y, %struct.bignum_ctx* noundef nonnull %call) #8
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %err, label %if.end22

if.end22:                                         ; preds = %if.end18
  %4 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %call24 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %4, %struct.ec_point_st* noundef nonnull %call10, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_ctx* noundef nonnull %call) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call28 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %x, %struct.bignum_st* noundef %call14) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %if.then33

lor.lhs.false30:                                  ; preds = %if.end27
  %call31 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %y, %struct.bignum_st* noundef nonnull %call15) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false30, %if.end27
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 635, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.EC_KEY_set_public_key_affine_coordinates, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 146, i8* noundef null) #8
  br label %err

if.end34:                                         ; preds = %lor.lhs.false30
  %call35 = tail call i32 @EC_KEY_set_public_key(%struct.ec_key_st* noundef nonnull %key, %struct.ec_point_st* noundef nonnull %call10) #9
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.end38

if.end38:                                         ; preds = %if.end34
  %call39 = tail call i32 @EC_KEY_check_key(%struct.ec_key_st* noundef nonnull %key) #9
  %cmp40 = icmp ne i32 %call39, 0
  %spec.select = zext i1 %cmp40 to i32
  br label %err

err:                                              ; preds = %if.end38, %if.end34, %if.end22, %if.end18, %if.end13, %if.end8, %if.then33
  %ok.0 = phi i32 [ 0, %if.end8 ], [ 0, %if.end13 ], [ 0, %if.then33 ], [ 0, %if.end34 ], [ 0, %if.end22 ], [ 0, %if.end18 ], [ %spec.select, %if.end38 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %call) #8
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call) #8
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %call10) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ok.0, %err ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_set_public_key(%struct.ec_key_st* noundef %key, %struct.ec_point_st* noundef %pub_key) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 0
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !12
  %set_public = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %0, i64 0, i32 7
  %1 = load i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)** %set_public, align 8, !tbaa !41
  %cmp.not = icmp eq i32 (%struct.ec_key_st*, %struct.ec_point_st*)* %1, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 %1(%struct.ec_key_st* noundef nonnull %key, %struct.ec_point_st* noundef %pub_key) #8
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %pub_key4 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 4
  %2 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key4, align 8, !tbaa !23
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %2) #8
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %call5 = tail call %struct.ec_point_st* @EC_POINT_dup(%struct.ec_point_st* noundef %pub_key, %struct.ec_group_st* noundef %3) #8
  store %struct.ec_point_st* %call5, %struct.ec_point_st** %pub_key4, align 8, !tbaa !23
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 14
  %4 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %4, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  %cmp8 = icmp ne %struct.ec_point_st* %call5, null
  %cond = zext i1 %cmp8 to i32
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* nocapture noundef readonly %key) local_unnamed_addr #5 {
entry:
  %libctx = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 12
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !26
  ret %struct.ossl_lib_ctx_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ossl_ec_key_get0_propq(%struct.ec_key_st* nocapture noundef readonly %key) local_unnamed_addr #5 {
entry:
  %propq = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 13
  %0 = load i8*, i8** %propq, align 8, !tbaa !25
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_ec_key_set0_libctx(%struct.ec_key_st* nocapture noundef writeonly %key, %struct.ossl_lib_ctx_st* noundef %libctx) local_unnamed_addr #6 {
entry:
  %libctx1 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 12
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* nocapture noundef readonly %key) local_unnamed_addr #5 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  ret %struct.ec_group_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_set_group(%struct.ec_key_st* noundef %key, %struct.ec_group_st* noundef %group) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 0
  %0 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth, align 8, !tbaa !12
  %set_group = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %0, i64 0, i32 5
  %1 = load i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)** %set_group, align 8, !tbaa !13
  %cmp.not = icmp eq i32 (%struct.ec_key_st*, %struct.ec_group_st*)* %1, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 %1(%struct.ec_key_st* noundef nonnull %key, %struct.ec_group_st* noundef %group) #8
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %group4 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %2 = load %struct.ec_group_st*, %struct.ec_group_st** %group4, align 8, !tbaa !4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %2) #8
  %call5 = tail call %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef %group) #8
  store %struct.ec_group_st* %call5, %struct.ec_group_st** %group4, align 8, !tbaa !4
  %cmp8.not = icmp eq %struct.ec_group_st* %call5, null
  br i1 %cmp8.not, label %if.end14, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.end
  %call11 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef nonnull %call5) #8
  %cmp12 = icmp eq i32 %call11, 1172
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true9
  tail call void @EC_KEY_set_flags(%struct.ec_key_st* noundef nonnull %key, i32 noundef 4) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true9, %if.end
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 14
  %3 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %3, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  %4 = load %struct.ec_group_st*, %struct.ec_group_st** %group4, align 8, !tbaa !4
  %cmp16 = icmp ne %struct.ec_group_st* %4, null
  %cond = zext i1 %cmp16 to i32
  br label %return

return:                                           ; preds = %land.lhs.true, %if.end14
  %retval.0 = phi i32 [ %cond, %if.end14 ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

declare %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EC_KEY_set_flags(%struct.ec_key_st* nocapture noundef %key, i32 noundef %flags) local_unnamed_addr #7 {
entry:
  %flags1 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 9
  %0 = load i32, i32* %flags1, align 4, !tbaa !31
  %or = or i32 %0, %flags
  store i32 %or, i32* %flags1, align 4, !tbaa !31
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 14
  %1 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %1, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* nocapture noundef readonly %key) local_unnamed_addr #5 {
entry:
  %priv_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  ret %struct.bignum_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_set_private_key(%struct.ec_key_st* noundef %key, %struct.bignum_st* noundef %priv_key) local_unnamed_addr #0 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %0, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !18
  %cmp2 = icmp eq %struct.ec_method_st* %1, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef nonnull %0) #8
  %cmp4 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp4, label %cleanup, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %call6 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call) #8
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %2 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %meth10 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %2, i64 0, i32 0
  %3 = load %struct.ec_method_st*, %struct.ec_method_st** %meth10, align 8, !tbaa !18
  %set_private = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %3, i64 0, i32 41
  %4 = load i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)** %set_private, align 8, !tbaa !42
  %cmp11.not = icmp eq i32 (%struct.ec_key_st*, %struct.bignum_st*)* %4, null
  br i1 %cmp11.not, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %call15 = tail call i32 %4(%struct.ec_key_st* noundef nonnull %key, %struct.bignum_st* noundef %priv_key) #8
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %cleanup, label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.end8
  %meth19 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 0
  %5 = load %struct.ec_key_method_st*, %struct.ec_key_method_st** %meth19, align 8, !tbaa !12
  %set_private20 = getelementptr inbounds %struct.ec_key_method_st, %struct.ec_key_method_st* %5, i64 0, i32 6
  %6 = load i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)** %set_private20, align 8, !tbaa !43
  %cmp21.not = icmp eq i32 (%struct.ec_key_st*, %struct.bignum_st*)* %6, null
  br i1 %cmp21.not, label %if.end28, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end18
  %call25 = tail call i32 %6(%struct.ec_key_st* noundef nonnull %key, %struct.bignum_st* noundef %priv_key) #8
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %cleanup, label %if.end28

if.end28:                                         ; preds = %land.lhs.true22, %if.end18
  %call29 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef %priv_key) #8
  %cmp30 = icmp eq %struct.bignum_st* %call29, null
  br i1 %cmp30, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end28
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %call29, i32 noundef 4) #8
  %call33 = tail call i32 @bn_get_top(%struct.bignum_st* noundef nonnull %call) #8
  %add = add nsw i32 %call33, 2
  %call34 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef nonnull %call29, i32 noundef %add) #8
  %cmp35 = icmp eq %struct.bignum_st* %call34, null
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %call29) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %priv_key38 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 5
  %7 = load %struct.bignum_st*, %struct.bignum_st** %priv_key38, align 8, !tbaa !24
  tail call void @BN_clear_free(%struct.bignum_st* noundef %7) #8
  store %struct.bignum_st* %call29, %struct.bignum_st** %priv_key38, align 8, !tbaa !24
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 14
  %8 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %8, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %land.lhs.true22, %land.lhs.true, %if.end, %lor.lhs.false5, %entry, %lor.lhs.false, %if.end37, %if.then36
  %retval.0 = phi i32 [ 0, %if.then36 ], [ 1, %if.end37 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false5 ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true22 ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @bn_get_top(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* nocapture noundef readonly %key) local_unnamed_addr #5 {
entry:
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 4
  %0 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  ret %struct.ec_point_st* %0
}

declare %struct.ec_point_st* @EC_POINT_dup(%struct.ec_point_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EC_KEY_get_enc_flags(%struct.ec_key_st* nocapture noundef readonly %key) local_unnamed_addr #5 {
entry:
  %enc_flag = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 6
  %0 = load i32, i32* %enc_flag, align 8, !tbaa !28
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EC_KEY_set_enc_flags(%struct.ec_key_st* nocapture noundef writeonly %key, i32 noundef %flags) local_unnamed_addr #6 {
entry:
  %enc_flag = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 6
  store i32 %flags, i32* %enc_flag, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EC_KEY_get_conv_form(%struct.ec_key_st* nocapture noundef readonly %key) local_unnamed_addr #5 {
entry:
  %conv_form = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 7
  %0 = load i32, i32* %conv_form, align 4, !tbaa !29
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define void @EC_KEY_set_conv_form(%struct.ec_key_st* nocapture noundef %key, i32 noundef %cform) local_unnamed_addr #0 {
entry:
  %conv_form = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 7
  store i32 %cform, i32* %conv_form, align 4, !tbaa !29
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @EC_GROUP_set_point_conversion_form(%struct.ec_group_st* noundef nonnull %0, i32 noundef %cform) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @EC_GROUP_set_point_conversion_form(%struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @EC_KEY_set_asn1_flag(%struct.ec_key_st* nocapture noundef readonly %key, i32 noundef %flag) local_unnamed_addr #0 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp.not = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef nonnull %0, i32 noundef %flag) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_precompute_mult(%struct.ec_key_st* nocapture noundef readonly %key, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @EC_GROUP_precompute_mult(%struct.ec_group_st* noundef nonnull %0, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @EC_GROUP_precompute_mult(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EC_KEY_get_flags(%struct.ec_key_st* nocapture noundef readonly %key) local_unnamed_addr #5 {
entry:
  %flags = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 9
  %0 = load i32, i32* %flags, align 4, !tbaa !31
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @EC_KEY_clear_flags(%struct.ec_key_st* nocapture noundef %key, i32 noundef %flags) local_unnamed_addr #7 {
entry:
  %neg = xor i32 %flags, -1
  %flags1 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 9
  %0 = load i32, i32* %flags1, align 4, !tbaa !31
  %and = and i32 %0, %neg
  store i32 %and, i32* %flags1, align 4, !tbaa !31
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 14
  %1 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %1, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EC_KEY_decoded_from_explicit_params(%struct.ec_key_st* noundef readonly %key) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %key, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %decoded_from_explicit_params = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %0, i64 0, i32 6
  %1 = load i32, i32* %decoded_from_explicit_params, align 8, !tbaa !44
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %1, %if.end ], [ -1, %lor.lhs.false ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @EC_KEY_key2buf(%struct.ec_key_st* noundef readonly %key, i32 noundef %form, i8** noundef %pbuf, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %key, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 4
  %0 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %cmp1 = icmp eq %struct.ec_point_st* %0, null
  br i1 %cmp1, label %return, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %1 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp3 = icmp eq %struct.ec_group_st* %1, null
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef nonnull %1, %struct.ec_point_st* noundef nonnull %0, i32 noundef %form, i8** noundef %pbuf, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %lor.lhs.false2, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i64 %retval.0
}

declare i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_oct2key(%struct.ec_key_st* noundef %key, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %key, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 4
  %1 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %cmp2 = icmp eq %struct.ec_point_st* %1, null
  br i1 %cmp2, label %if.end6, label %if.end10

if.end6:                                          ; preds = %if.end
  %call = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %0) #8
  store %struct.ec_point_st* %call, %struct.ec_point_st** %pub_key, align 8, !tbaa !23
  %cmp8 = icmp eq %struct.ec_point_st* %call, null
  br i1 %cmp8, label %return, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  %.pre = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %if.end6.if.end10_crit_edge, %if.end
  %2 = phi %struct.ec_group_st* [ %.pre, %if.end6.if.end10_crit_edge ], [ %0, %if.end ]
  %3 = phi %struct.ec_point_st* [ %call, %if.end6.if.end10_crit_edge ], [ %1, %if.end ]
  %call13 = tail call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef %2, %struct.ec_point_st* noundef nonnull %3, i8* noundef %buf, i64 noundef %len, %struct.bignum_ctx* noundef %ctx) #8
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %return, label %if.end16

if.end16:                                         ; preds = %if.end10
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 14
  %4 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %4, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  %5 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %5, i64 0, i32 0
  %6 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !18
  %flags = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %6, i64 0, i32 0
  %7 = load i32, i32* %flags, align 8, !tbaa !45
  %and = and i32 %7, 2
  %cmp18 = icmp eq i32 %and, 0
  br i1 %cmp18, label %if.then19, label %return

if.then19:                                        ; preds = %if.end16
  %8 = load i8, i8* %buf, align 1, !tbaa !46
  %9 = and i8 %8, -2
  %and20 = zext i8 %9 to i32
  %conv_form = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 7
  store i32 %and20, i32* %conv_form, align 4, !tbaa !29
  br label %return

return:                                           ; preds = %if.end16, %if.then19, %if.end10, %if.end6, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end6 ], [ 0, %if.end10 ], [ 1, %if.then19 ], [ 1, %if.end16 ]
  ret i32 %retval.0
}

declare i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @EC_KEY_priv2oct(%struct.ec_key_st* noundef %eckey, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %0, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !18
  %cmp2 = icmp eq %struct.ec_method_st* %1, null
  br i1 %cmp2, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %priv2oct = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %1, i64 0, i32 39
  %2 = load i64 (%struct.ec_key_st*, i8*, i64)*, i64 (%struct.ec_key_st*, i8*, i64)** %priv2oct, align 8, !tbaa !47
  %cmp5 = icmp eq i64 (%struct.ec_key_st*, i8*, i64)* %2, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 895, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EC_KEY_priv2oct, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end7:                                          ; preds = %if.end
  %call = tail call i64 %2(%struct.ec_key_st* noundef nonnull %eckey, i8* noundef %buf, i64 noundef %len) #8
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end7, %if.then6
  %retval.0 = phi i64 [ 0, %if.then6 ], [ %call, %if.end7 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_ec_key_simple_priv2oct(%struct.ec_key_st* nocapture noundef readonly %eckey, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %call = tail call i32 @EC_GROUP_order_bits(%struct.ec_group_st* noundef %0) #8
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %priv_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 5
  %1 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  %cmp = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i8* %buf, null
  br i1 %cmp2, label %cleanup, label %if.else

if.else:                                          ; preds = %if.end
  %cmp5 = icmp ugt i64 %conv, %len
  br i1 %cmp5, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.else
  %call12 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %1, i8* noundef nonnull %buf, i32 noundef %div) #8
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then15, label %cleanup

if.then15:                                        ; preds = %if.end9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 918, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_ec_key_simple_priv2oct, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 100, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.else, %if.end, %entry, %if.then15
  %retval.0 = phi i64 [ 0, %if.then15 ], [ 0, %entry ], [ %conv, %if.end ], [ 0, %if.else ], [ %conv, %if.end9 ]
  ret i64 %retval.0
}

declare i32 @EC_GROUP_order_bits(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_oct2priv(%struct.ec_key_st* noundef %eckey, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %0, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !18
  %cmp2 = icmp eq %struct.ec_method_st* %1, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %oct2priv = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %1, i64 0, i32 40
  %2 = load i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)** %oct2priv, align 8, !tbaa !48
  %cmp5 = icmp eq i32 (%struct.ec_key_st*, i8*, i64)* %2, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 932, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EC_KEY_oct2priv, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call = tail call i32 %2(%struct.ec_key_st* noundef nonnull %eckey, i8* noundef %buf, i64 noundef %len) #8
  %cmp11 = icmp eq i32 %call, 1
  br i1 %cmp11, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end7
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 14
  %3 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %3, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then12, %entry, %lor.lhs.false, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.then12 ], [ %call, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_key_simple_oct2priv(%struct.ec_key_st* nocapture noundef %eckey, i8* noundef %buf, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %priv_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 5
  %0 = load %struct.bignum_st*, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %if.end, label %if.end5

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_secure_new() #8
  store %struct.bignum_st* %call, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  %cmp3 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 947, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_ec_key_simple_oct2priv, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %return

if.end5:                                          ; preds = %entry, %if.end
  %1 = phi %struct.bignum_st* [ %call, %if.end ], [ %0, %entry ]
  %conv = trunc i64 %len to i32
  %call7 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %buf, i32 noundef %conv, %struct.bignum_st* noundef nonnull %1) #8
  store %struct.bignum_st* %call7, %struct.bignum_st** %priv_key, align 8, !tbaa !24
  %cmp10 = icmp eq %struct.bignum_st* %call7, null
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 952, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_ec_key_simple_oct2priv, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #8
  br label %return

if.end13:                                         ; preds = %if.end5
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 14
  %2 = load i64, i64* %dirty_cnt, align 8, !tbaa !33
  %inc = add i64 %2, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !33
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then12 ], [ 1, %if.end13 ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_secure_new() local_unnamed_addr #1

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @EC_KEY_priv2buf(%struct.ec_key_st* noundef %eckey, i8** nocapture noundef writeonly %pbuf) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @EC_KEY_priv2oct(%struct.ec_key_st* noundef %eckey, i8* noundef null, i64 noundef 0) #9
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 967) #8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 968, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EC_KEY_priv2buf, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i64 @EC_KEY_priv2oct(%struct.ec_key_st* noundef %eckey, i8* noundef nonnull %call1, i64 noundef %call) #9
  %cmp6 = icmp eq i64 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 973) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  store i8* %call1, i8** %pbuf, align 8, !tbaa !49
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end8, %if.then7, %if.then3
  %retval.0 = phi i64 [ 0, %if.then3 ], [ 0, %if.then7 ], [ %call5, %if.end8 ], [ 0, %entry ]
  ret i64 %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EC_KEY_can_sign(%struct.ec_key_st* nocapture noundef readonly %eckey) local_unnamed_addr #5 {
entry:
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %eckey, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !4
  %cmp = icmp eq %struct.ec_group_st* %0, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %0, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !18
  %cmp2 = icmp eq %struct.ec_method_st* %1, null
  br i1 %cmp2, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %1, i64 0, i32 0
  %2 = load i32, i32* %flags, align 8, !tbaa !45
  %and = lshr i32 %2, 2
  %and.lobit = and i32 %and, 1
  %3 = xor i32 %and.lobit, 1
  br label %return

return:                                           ; preds = %lor.lhs.false3, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %3, %lor.lhs.false3 ]
  ret i32 %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_secure_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_priv_rand_range_ex(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @ossl_set_error_state(i8* noundef) local_unnamed_addr #1

declare void @BN_clear(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"ec_key_st", !6, i64 0, !6, i64 8, !9, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !9, i64 48, !7, i64 52, !7, i64 56, !9, i64 60, !10, i64 64, !6, i64 80, !6, i64 88, !6, i64 96, !11, i64 104}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!5, !6, i64 0}
!13 = !{!14, !6, i64 40}
!14 = !{!"ec_key_method_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112}
!15 = !{!9, !9, i64 0}
!16 = !{!14, !6, i64 24}
!17 = !{!5, !6, i64 8}
!18 = !{!19, !6, i64 0}
!19 = !{!"ec_group_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !7, i64 44, !6, i64 48, !11, i64 56, !6, i64 64, !7, i64 72, !6, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !7, i64 152, !7, i64 160, !6, i64 168, !6, i64 176}
!20 = !{!21, !6, i64 360}
!21 = !{!"ec_method_st", !9, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432}
!22 = !{!5, !6, i64 80}
!23 = !{!5, !6, i64 32}
!24 = !{!5, !6, i64 40}
!25 = !{!5, !6, i64 96}
!26 = !{!5, !6, i64 88}
!27 = !{!21, !6, i64 352}
!28 = !{!5, !9, i64 48}
!29 = !{!5, !7, i64 52}
!30 = !{!5, !9, i64 16}
!31 = !{!5, !9, i64 60}
!32 = !{!14, !6, i64 32}
!33 = !{!5, !11, i64 104}
!34 = !{!14, !6, i64 64}
!35 = !{!21, !6, i64 328}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!21, !6, i64 336}
!39 = !{!19, !6, i64 64}
!40 = !{!19, !6, i64 16}
!41 = !{!14, !6, i64 56}
!42 = !{!21, !6, i64 320}
!43 = !{!14, !6, i64 48}
!44 = !{!19, !9, i64 40}
!45 = !{!21, !9, i64 0}
!46 = !{!7, !7, i64 0}
!47 = !{!21, !6, i64 304}
!48 = !{!21, !6, i64 312}
!49 = !{!6, !6, i64 0}
