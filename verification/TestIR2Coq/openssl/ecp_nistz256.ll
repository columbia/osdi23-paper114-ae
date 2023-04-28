; ModuleID = 'crypto/ec/ecp_nistz256.c'
source_filename = "crypto/ec/ecp_nistz256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.P256_POINT_AFFINE = type { [4 x i64], [4 x i64] }
%struct.anon = type { i8, i8 }
%struct.nistz256_pre_comp_st = type { %struct.ec_group_st*, i64, [64 x %struct.P256_POINT_AFFINE]*, i8*, i32, i8* }
%union.anon.0 = type { %struct.P256_POINT }
%struct.P256_POINT = type { [4 x i64], [4 x i64], [4 x i64] }

@.str = private unnamed_addr constant [25 x i8] c"crypto/ec/ecp_nistz256.c\00", align 1
@EC_GFp_nistz256_method.ret = internal constant %struct.ec_method_st { i32 1, i32 406, i32 (%struct.ec_group_st*)* @ossl_ec_GFp_mont_group_init, void (%struct.ec_group_st*)* @ossl_ec_GFp_mont_group_finish, void (%struct.ec_group_st*)* @ossl_ec_GFp_mont_group_clear_finish, i32 (%struct.ec_group_st*, %struct.ec_group_st*)* @ossl_ec_GFp_mont_group_copy, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_group_set_curve, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_group_get_curve, i32 (%struct.ec_group_st*)* @ossl_ec_GFp_simple_group_get_degree, i32 (%struct.ec_group_st*)* @ossl_ec_group_simple_order_bits, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_group_check_discriminant, i32 (%struct.ec_point_st*)* @ossl_ec_GFp_simple_point_init, void (%struct.ec_point_st*)* @ossl_ec_GFp_simple_point_finish, void (%struct.ec_point_st*)* @ossl_ec_GFp_simple_point_clear_finish, i32 (%struct.ec_point_st*, %struct.ec_point_st*)* @ossl_ec_GFp_simple_point_copy, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ossl_ec_GFp_simple_point_set_to_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_point_set_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ecp_nistz256_get_affine, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)* null, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_add, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_dbl, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_invert, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ossl_ec_GFp_simple_is_at_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_is_on_curve, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_cmp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_make_affine, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_points_make_affine, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)* @ecp_nistz256_points_mul, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* @ecp_nistz256_mult_precompute, i32 (%struct.ec_group_st*)* @ecp_nistz256_window_have_precompute_mult, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_mul, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_sqr, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_inv, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_encode, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_decode, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_set_to_one, i64 (%struct.ec_key_st*, i8*, i64)* @ossl_ec_key_simple_priv2oct, i32 (%struct.ec_key_st*, i8*, i64)* @ossl_ec_key_simple_oct2priv, i32 (%struct.ec_key_st*, %struct.bignum_st*)* null, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_generate_key, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_check_key, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_generate_public_key, i32 (%struct.ec_key_st*, %struct.ec_key_st*)* null, void (%struct.ec_key_st*)* null, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* @ossl_ecdh_simple_compute_key, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* @ossl_ecdsa_simple_sign_setup, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* @ossl_ecdsa_simple_sign_sig, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* @ossl_ecdsa_simple_verify_sig, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ecp_nistz256_inv_mod_ord, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null }, align 8
@__func__.ecp_nistz256_get_affine = private unnamed_addr constant [24 x i8] c"ecp_nistz256_get_affine\00", align 1
@__func__.ecp_nistz256_points_mul = private unnamed_addr constant [24 x i8] c"ecp_nistz256_points_mul\00", align 1
@ecp_nistz256_precomputed = external constant [37 x [64 x %struct.P256_POINT_AFFINE]], align 16
@ONE = internal constant [4 x i64] [i64 1, i64 -4294967296, i64 -1, i64 4294967294], align 16
@def_xG = internal constant [4 x i64] [i64 8784043285714375740, i64 8483257759279461889, i64 8789745728267363600, i64 1770019616739251654], align 16
@def_yG = internal constant [4 x i64] [i64 -2453807210370345462, i64 -8409706061646666660, i64 -3249199208764148955, i64 -8830996915122840187], align 16
@__func__.ecp_nistz256_windowed_mul = private unnamed_addr constant [26 x i8] c"ecp_nistz256_windowed_mul\00", align 1
@__func__.ecp_nistz256_mult_precompute = private unnamed_addr constant [29 x i8] c"ecp_nistz256_mult_precompute\00", align 1
@__func__.ecp_nistz256_pre_comp_new = private unnamed_addr constant [26 x i8] c"ecp_nistz256_pre_comp_new\00", align 1
@ecp_nistz256_inv_mod_ord.RR = internal constant [4 x i64] [i64 -8996981949549908318, i64 5087230966250696614, i64 2901921493521525849, i64 7413256579398063648], align 16
@ecp_nistz256_inv_mod_ord.one = internal constant [4 x i64] [i64 1, i64 0, i64 0, i64 0], align 16
@__func__.ecp_nistz256_inv_mod_ord = private unnamed_addr constant [25 x i8] c"ecp_nistz256_inv_mod_ord\00", align 1
@ecp_nistz256_inv_mod_ord.chain = internal unnamed_addr constant [27 x %struct.anon] [%struct.anon { i8 32, i8 13 }, %struct.anon { i8 6, i8 9 }, %struct.anon { i8 5, i8 4 }, %struct.anon { i8 4, i8 2 }, %struct.anon { i8 5, i8 6 }, %struct.anon { i8 5, i8 7 }, %struct.anon { i8 4, i8 3 }, %struct.anon { i8 3, i8 3 }, %struct.anon { i8 3, i8 3 }, %struct.anon { i8 5, i8 4 }, %struct.anon { i8 9, i8 9 }, %struct.anon { i8 6, i8 6 }, %struct.anon { i8 2, i8 0 }, %struct.anon { i8 5, i8 0 }, %struct.anon { i8 6, i8 6 }, %struct.anon { i8 5, i8 4 }, %struct.anon { i8 4, i8 4 }, %struct.anon { i8 5, i8 4 }, %struct.anon { i8 5, i8 3 }, %struct.anon { i8 3, i8 2 }, %struct.anon { i8 10, i8 9 }, %struct.anon { i8 2, i8 2 }, %struct.anon { i8 5, i8 2 }, %struct.anon { i8 5, i8 2 }, %struct.anon { i8 3, i8 0 }, %struct.anon { i8 7, i8 7 }, %struct.anon { i8 6, i8 6 }], align 16

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define %struct.nistz256_pre_comp_st* @EC_nistz256_pre_comp_dup(%struct.nistz256_pre_comp_st* noundef returned %p) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %cmp.not = icmp eq %struct.nistz256_pre_comp_st* %p, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %references = getelementptr inbounds %struct.nistz256_pre_comp_st, %struct.nistz256_pre_comp_st* %p, i64 0, i32 4
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
  ret %struct.nistz256_pre_comp_st* %p
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
define void @EC_nistz256_pre_comp_free(%struct.nistz256_pre_comp_st* noundef %pre) local_unnamed_addr #3 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #11
  %cmp = icmp eq %struct.nistz256_pre_comp_st* %pre, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.nistz256_pre_comp_st, %struct.nistz256_pre_comp_st* %pre, i64 0, i32 4
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #12
  %1 = load i32, i32* %i, align 4, !tbaa !4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.nistz256_pre_comp_st, %struct.nistz256_pre_comp_st* %pre, i64 0, i32 5
  %precomp_storage = getelementptr inbounds %struct.nistz256_pre_comp_st, %struct.nistz256_pre_comp_st* %pre, i64 0, i32 3
  %2 = load i8*, i8** %precomp_storage, align 8, !tbaa !8
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1267) #13
  %3 = load i8*, i8** %lock, align 8, !tbaa !12
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %3) #13
  %4 = bitcast %struct.nistz256_pre_comp_st* %pre to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1269) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #11
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

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ec_method_st* @EC_GFp_nistz256_method() local_unnamed_addr #5 {
entry:
  ret %struct.ec_method_st* @EC_GFp_nistz256_method.ret
}

declare i32 @ossl_ec_GFp_mont_group_init(%struct.ec_group_st* noundef) #4

declare void @ossl_ec_GFp_mont_group_finish(%struct.ec_group_st* noundef) #4

declare void @ossl_ec_GFp_mont_group_clear_finish(%struct.ec_group_st* noundef) #4

declare i32 @ossl_ec_GFp_mont_group_copy(%struct.ec_group_st* noundef, %struct.ec_group_st* noundef) #4

declare i32 @ossl_ec_GFp_mont_group_set_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_simple_group_get_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_simple_group_get_degree(%struct.ec_group_st* noundef) #4

declare i32 @ossl_ec_group_simple_order_bits(%struct.ec_group_st* noundef) #4

declare i32 @ossl_ec_GFp_simple_group_check_discriminant(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_simple_point_init(%struct.ec_point_st* noundef) #4

declare void @ossl_ec_GFp_simple_point_finish(%struct.ec_point_st* noundef) #4

declare void @ossl_ec_GFp_simple_point_clear_finish(%struct.ec_point_st* noundef) #4

declare i32 @ossl_ec_GFp_simple_point_copy(%struct.ec_point_st* noundef, %struct.ec_point_st* noundef) #4

declare i32 @ossl_ec_GFp_simple_point_set_to_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) #4

declare i32 @ossl_ec_GFp_simple_point_set_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecp_nistz256_get_affine(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* nocapture noundef readnone %ctx) #3 {
entry:
  %z_inv2 = alloca [4 x i64], align 16
  %z_inv3 = alloca [4 x i64], align 16
  %x_aff = alloca [4 x i64], align 16
  %y_aff = alloca [4 x i64], align 16
  %point_x = alloca [4 x i64], align 16
  %point_y = alloca [4 x i64], align 16
  %point_z = alloca [4 x i64], align 16
  %x_ret = alloca [4 x i64], align 16
  %y_ret = alloca [4 x i64], align 16
  %0 = bitcast [4 x i64]* %z_inv2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  %1 = bitcast [4 x i64]* %z_inv3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #11
  %2 = bitcast [4 x i64]* %x_aff to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #11
  %3 = bitcast [4 x i64]* %y_aff to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #11
  %4 = bitcast [4 x i64]* %point_x to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #11
  %5 = bitcast [4 x i64]* %point_y to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #11
  %6 = bitcast [4 x i64]* %point_z to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #11
  %7 = bitcast [4 x i64]* %x_ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #11
  %8 = bitcast [4 x i64]* %y_ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #11
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1187, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ecp_nistz256_get_affine, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 106, i8* noundef null) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %point_x, i64 0, i64 0
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %9 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !13
  %call1 = call fastcc i32 @ecp_nistz256_bignum_to_field_elem(i64* noundef nonnull %arraydecay, %struct.bignum_st* noundef %9) #12
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [4 x i64], [4 x i64]* %point_y, i64 0, i64 0
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %10 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !15
  %call4 = call fastcc i32 @ecp_nistz256_bignum_to_field_elem(i64* noundef nonnull %arraydecay3, %struct.bignum_st* noundef %10) #12
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %arraydecay7 = getelementptr inbounds [4 x i64], [4 x i64]* %point_z, i64 0, i64 0
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %11 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !16
  %call8 = call fastcc i32 @ecp_nistz256_bignum_to_field_elem(i64* noundef nonnull %arraydecay7, %struct.bignum_st* noundef %11) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1194, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ecp_nistz256_get_affine, i64 0, i64 0)) #13
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 146, i8* noundef null) #13
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false6
  %arraydecay12 = getelementptr inbounds [4 x i64], [4 x i64]* %z_inv3, i64 0, i64 0
  call fastcc void @ecp_nistz256_mod_inverse(i64* noundef nonnull %arraydecay12, i64* noundef nonnull %arraydecay7) #12
  %arraydecay14 = getelementptr inbounds [4 x i64], [4 x i64]* %z_inv2, i64 0, i64 0
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay14, i64* noundef nonnull %arraydecay12) #13
  %arraydecay16 = getelementptr inbounds [4 x i64], [4 x i64]* %x_aff, i64 0, i64 0
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay16, i64* noundef nonnull %arraydecay14, i64* noundef nonnull %arraydecay) #13
  %cmp.not = icmp eq %struct.bignum_st* %x, null
  br i1 %cmp.not, label %if.end27, label %if.then19

if.then19:                                        ; preds = %if.end11
  %arraydecay20 = getelementptr inbounds [4 x i64], [4 x i64]* %x_ret, i64 0, i64 0
  call void @ecp_nistz256_from_mont(i64* noundef nonnull %arraydecay20, i64* noundef nonnull %arraydecay16) #13
  %call23 = call i32 @bn_set_words(%struct.bignum_st* noundef nonnull %x, i64* noundef nonnull %arraydecay20, i32 noundef 4) #13
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.then19, %if.end11
  %cmp28.not = icmp eq %struct.bignum_st* %y, null
  br i1 %cmp28.not, label %if.end43, label %if.then29

if.then29:                                        ; preds = %if.end27
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay12, i64* noundef nonnull %arraydecay12, i64* noundef nonnull %arraydecay14) #13
  %arraydecay33 = getelementptr inbounds [4 x i64], [4 x i64]* %y_aff, i64 0, i64 0
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay33, i64* noundef nonnull %arraydecay12, i64* noundef nonnull %arraydecay3) #13
  %arraydecay36 = getelementptr inbounds [4 x i64], [4 x i64]* %y_ret, i64 0, i64 0
  call void @ecp_nistz256_from_mont(i64* noundef nonnull %arraydecay36, i64* noundef nonnull %arraydecay33) #13
  %call39 = call i32 @bn_set_words(%struct.bignum_st* noundef nonnull %y, i64* noundef nonnull %arraydecay36, i32 noundef 4) #13
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %cleanup, label %if.end43

if.end43:                                         ; preds = %if.then29, %if.end27
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.then19, %if.end43, %if.then10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end43 ], [ 0, %if.then10 ], [ 0, %if.then19 ], [ 0, %if.then29 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare i32 @ossl_ec_GFp_simple_add(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_simple_dbl(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_simple_invert(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_simple_is_at_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) #4

declare i32 @ossl_ec_GFp_simple_is_on_curve(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_simple_cmp(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_simple_make_affine(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_simple_points_make_affine(%struct.ec_group_st* noundef, i64 noundef, %struct.ec_point_st** noundef, %struct.bignum_ctx* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecp_nistz256_points_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* nocapture noundef %r, %struct.bignum_st* noundef %scalar, i64 noundef %num, %struct.ec_point_st** noundef %points, %struct.bignum_st** noundef %scalars, %struct.bignum_ctx* noundef %ctx) #3 {
entry:
  %p_str = alloca [33 x i8], align 16
  %t = alloca %union.anon.0, align 32
  %p = alloca %union.anon.0, align 32
  %0 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 33, i8* nonnull %0) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(33) %0, i8 0, i64 33, i1 false)
  %1 = bitcast %union.anon.0* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %1) #11
  %2 = bitcast %union.anon.0* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %2) #11
  %add = add i64 %num, 1
  %3 = icmp ugt i64 %num, 268435454
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 977, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ecp_nistz256_points_mul, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup284

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #13
  %tobool.not = icmp eq %struct.bignum_st* %scalar, null
  br i1 %tobool.not, label %if.end237, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %group) #13
  %cmp4 = icmp eq %struct.ec_point_st* %call, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 986, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ecp_nistz256_points_mul, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 113, i8* noundef null) #13
  br label %err

if.end6:                                          ; preds = %if.then3
  %pre_comp7 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 20
  %nistz256 = bitcast %union.anon* %pre_comp7 to %struct.nistz256_pre_comp_st**
  %4 = load %struct.nistz256_pre_comp_st*, %struct.nistz256_pre_comp_st** %nistz256, align 8, !tbaa !17
  %tobool8.not = icmp eq %struct.nistz256_pre_comp_st* %4, null
  br i1 %tobool8.not, label %land.lhs.true, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call10 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %group) #13
  %cmp11 = icmp eq %struct.ec_point_st* %call10, null
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.then9
  %a = bitcast %union.anon.0* %p to %struct.P256_POINT_AFFINE*
  %precomp = getelementptr inbounds %struct.nistz256_pre_comp_st, %struct.nistz256_pre_comp_st* %4, i64 0, i32 2
  %5 = load [64 x %struct.P256_POINT_AFFINE]*, [64 x %struct.P256_POINT_AFFINE]** %precomp, align 8, !tbaa !18
  %arraydecay = getelementptr inbounds [64 x %struct.P256_POINT_AFFINE], [64 x %struct.P256_POINT_AFFINE]* %5, i64 0, i64 0
  call void @ecp_nistz256_gather_w7(%struct.P256_POINT_AFFINE* noundef nonnull %a, %struct.P256_POINT_AFFINE* noundef %arraydecay, i32 noundef 1) #13
  %call15 = call fastcc i32 @ecp_nistz256_set_from_affine(%struct.ec_point_st* noundef nonnull %call10, %struct.P256_POINT_AFFINE* noundef nonnull %a) #12
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @EC_POINT_free(%struct.ec_point_st* noundef nonnull %call10) #13
  br label %err

if.end18:                                         ; preds = %if.end13
  %call19 = call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call, %struct.ec_point_st* noundef nonnull %call10, %struct.bignum_ctx* noundef %ctx) #13
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.end24, label %if.end24.thread432

if.end24.thread432:                               ; preds = %if.end18
  call void @EC_POINT_free(%struct.ec_point_st* noundef nonnull %call10) #13
  br label %land.lhs.true

if.end24:                                         ; preds = %if.end18
  %6 = load [64 x %struct.P256_POINT_AFFINE]*, [64 x %struct.P256_POINT_AFFINE]** %precomp, align 8, !tbaa !18
  call void @EC_POINT_free(%struct.ec_point_st* noundef nonnull %call10) #13
  %cmp25 = icmp eq [64 x %struct.P256_POINT_AFFINE]* %6, null
  br i1 %cmp25, label %land.lhs.true, label %if.then31

land.lhs.true:                                    ; preds = %if.end6, %if.end24.thread432, %if.end24
  %call26 = call fastcc i32 @ecp_nistz256_is_affine_G(%struct.ec_point_st* noundef nonnull %call) #12
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then215, label %if.then31

if.then31:                                        ; preds = %if.end24, %land.lhs.true
  %preComputedTable.3.ph = phi [64 x %struct.P256_POINT_AFFINE]* [ getelementptr inbounds ([37 x [64 x %struct.P256_POINT_AFFINE]], [37 x [64 x %struct.P256_POINT_AFFINE]]* @ecp_nistz256_precomputed, i64 0, i64 0), %land.lhs.true ], [ %6, %if.end24 ]
  %call32 = call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %scalar) #13
  %cmp33 = icmp sgt i32 %call32, 256
  br i1 %cmp33, label %if.then37, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.then31
  %call35 = call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %scalar) #13
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end46, label %if.then37

if.then37:                                        ; preds = %lor.lhs.false34, %if.then31
  %call38 = call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #13
  %cmp39 = icmp eq %struct.bignum_st* %call38, null
  br i1 %cmp39, label %err, label %if.end41

if.end41:                                         ; preds = %if.then37
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %7 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !19
  %call42 = call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call38, %struct.bignum_st* noundef nonnull %scalar, %struct.bignum_st* noundef %7, %struct.bignum_ctx* noundef %ctx) #13
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1034, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ecp_nistz256_points_mul, i64 0, i64 0)) #13
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #13
  br label %err

if.end46:                                         ; preds = %if.end41, %lor.lhs.false34
  %scalar.addr.0 = phi %struct.bignum_st* [ %scalar, %lor.lhs.false34 ], [ %call38, %if.end41 ]
  %call47457 = call i32 @bn_get_top(%struct.bignum_st* noundef nonnull %scalar.addr.0) #13
  %cmp48459 = icmp sgt i32 %call47457, 0
  br i1 %cmp48459, label %for.body, label %iter.check

for.cond89.preheader:                             ; preds = %for.body
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp90461 = icmp ult i32 %8, 33
  br i1 %cmp90461, label %iter.check, label %for.end96

iter.check:                                       ; preds = %if.end46, %for.cond89.preheader
  %i.0.lcssa483 = phi i64 [ %indvars.iv.next, %for.cond89.preheader ], [ 0, %if.end46 ]
  %9 = and i64 %i.0.lcssa483, 4294967295
  %10 = sub i64 33, %i.0.lcssa483
  %min.iters.check = icmp ult i64 %10, 8
  br i1 %min.iters.check, label %for.body92.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check496 = icmp ult i64 %10, 32
  br i1 %min.iters.check496, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %10, -32
  %11 = add i64 %n.vec, -32
  %12 = lshr exact i64 %11, 5
  %13 = add nuw nsw i64 %12, 1
  %xtraiter = and i64 %13, 3
  %14 = icmp ult i64 %11, 96
  br i1 %14, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %13, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %9, %index
  %15 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %offset.idx
  %16 = bitcast i8* %15 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %16, align 1, !tbaa !17
  %17 = getelementptr inbounds i8, i8* %15, i64 16
  %18 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %18, align 1, !tbaa !17
  %index.next = or i64 %index, 32
  %offset.idx.1 = add i64 %9, %index.next
  %19 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %offset.idx.1
  %20 = bitcast i8* %19 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %20, align 1, !tbaa !17
  %21 = getelementptr inbounds i8, i8* %19, i64 16
  %22 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %22, align 1, !tbaa !17
  %index.next.1 = or i64 %index, 64
  %offset.idx.2 = add i64 %9, %index.next.1
  %23 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %offset.idx.2
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %24, align 1, !tbaa !17
  %25 = getelementptr inbounds i8, i8* %23, i64 16
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %26, align 1, !tbaa !17
  %index.next.2 = or i64 %index, 96
  %offset.idx.3 = add i64 %9, %index.next.2
  %27 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %offset.idx.3
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %28, align 1, !tbaa !17
  %29 = getelementptr inbounds i8, i8* %27, i64 16
  %30 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %30, align 1, !tbaa !17
  %index.next.3 = add nuw i64 %index, 128
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !21

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %9, %index.epil
  %31 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %offset.idx.epil
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %32, align 1, !tbaa !17
  %33 = getelementptr inbounds i8, i8* %31, i64 16
  %34 = bitcast i8* %33 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %34, align 1, !tbaa !17
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !24

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %10, %n.vec
  br i1 %cmp.n, label %for.end96, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end499 = add i64 %9, %n.vec
  %n.vec.remaining = and i64 %10, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body92.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %35 = sub i64 33, %i.0.lcssa483
  %n.vec498 = and i64 %35, -8
  %ind.end = add i64 %9, %n.vec498
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index501 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next503, %vec.epilog.vector.body ]
  %offset.idx502 = add i64 %9, %index501
  %36 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %offset.idx502
  %37 = bitcast i8* %36 to <8 x i8>*
  store <8 x i8> zeroinitializer, <8 x i8>* %37, align 1, !tbaa !17
  %index.next503 = add nuw i64 %index501, 8
  %38 = icmp eq i64 %index.next503, %n.vec498
  br i1 %38, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n500 = icmp eq i64 %35, %n.vec498
  br i1 %cmp.n500, label %for.end96, label %for.body92.preheader

for.body92.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv474.ph = phi i64 [ %9, %iter.check ], [ %ind.end499, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  br label %for.body92

for.body:                                         ; preds = %if.end46, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end46 ]
  %call49 = call i64* @bn_get_words(%struct.bignum_st* noundef nonnull %scalar.addr.0) #13
  %39 = lshr exact i64 %indvars.iv, 3
  %arrayidx50 = getelementptr inbounds i64, i64* %call49, i64 %39
  %40 = load i64, i64* %arrayidx50, align 8, !tbaa !28
  %conv = trunc i64 %40 to i8
  %arrayidx53 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %indvars.iv
  store i8 %conv, i8* %arrayidx53, align 8, !tbaa !17
  %shr = lshr i64 %40, 8
  %conv54 = trunc i64 %shr to i8
  %41 = or i64 %indvars.iv, 1
  %arrayidx57 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %41
  store i8 %conv54, i8* %arrayidx57, align 1, !tbaa !17
  %shr58 = lshr i64 %40, 16
  %conv59 = trunc i64 %shr58 to i8
  %42 = or i64 %indvars.iv, 2
  %arrayidx62 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %42
  store i8 %conv59, i8* %arrayidx62, align 2, !tbaa !17
  %shr63 = lshr i64 %40, 24
  %conv64 = trunc i64 %shr63 to i8
  %43 = or i64 %indvars.iv, 3
  %arrayidx67 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %43
  store i8 %conv64, i8* %arrayidx67, align 1, !tbaa !17
  %shr68 = lshr i64 %40, 32
  %conv69 = trunc i64 %shr68 to i8
  %44 = or i64 %indvars.iv, 4
  %arrayidx72 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %44
  store i8 %conv69, i8* %arrayidx72, align 4, !tbaa !17
  %shr73 = lshr i64 %40, 40
  %conv74 = trunc i64 %shr73 to i8
  %45 = or i64 %indvars.iv, 5
  %arrayidx77 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %45
  store i8 %conv74, i8* %arrayidx77, align 1, !tbaa !17
  %shr78 = lshr i64 %40, 48
  %conv79 = trunc i64 %shr78 to i8
  %46 = or i64 %indvars.iv, 6
  %arrayidx82 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %46
  store i8 %conv79, i8* %arrayidx82, align 2, !tbaa !17
  %shr83 = lshr i64 %40, 56
  %conv84 = trunc i64 %shr83 to i8
  %47 = or i64 %indvars.iv, 7
  %arrayidx87 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %47
  store i8 %conv84, i8* %arrayidx87, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %call47 = call i32 @bn_get_top(%struct.bignum_st* noundef nonnull %scalar.addr.0) #13
  %mul = shl nsw i32 %call47, 3
  %48 = sext i32 %mul to i64
  %cmp48 = icmp slt i64 %indvars.iv.next, %48
  br i1 %cmp48, label %for.body, label %for.cond89.preheader, !llvm.loop !29

for.body92:                                       ; preds = %for.body92.preheader, %for.body92
  %indvars.iv474 = phi i64 [ %indvars.iv.next475, %for.body92 ], [ %indvars.iv474.ph, %for.body92.preheader ]
  %arrayidx94 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %indvars.iv474
  store i8 0, i8* %arrayidx94, align 1, !tbaa !17
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next475, 33
  br i1 %exitcond.not, label %for.end96, label %for.body92, !llvm.loop !30

for.end96:                                        ; preds = %for.body92, %middle.block, %vec.epilog.middle.block, %for.cond89.preheader
  %49 = load i8, i8* %0, align 16, !tbaa !17
  %conv98 = zext i8 %49 to i32
  %shl = shl nuw nsw i32 %conv98, 1
  %and = and i32 %shl, 254
  %call100 = call fastcc i32 @_booth_recode_w7(i32 noundef %and) #12
  %a101 = bitcast %union.anon.0* %p to %struct.P256_POINT_AFFINE*
  %arraydecay103 = getelementptr inbounds [64 x %struct.P256_POINT_AFFINE], [64 x %struct.P256_POINT_AFFINE]* %preComputedTable.3.ph, i64 0, i64 0
  %shr104 = lshr i32 %call100, 1
  call void @ecp_nistz256_gather_w7(%struct.P256_POINT_AFFINE* noundef nonnull %a101, %struct.P256_POINT_AFFINE* noundef nonnull %arraydecay103, i32 noundef %shr104) #13
  %p105 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0
  %arraydecay106 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 2, i64 0
  %arraydecay108 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 1, i64 0
  call void @ecp_nistz256_neg(i64* noundef nonnull %arraydecay106, i64* noundef nonnull %arraydecay108) #13
  %and115 = and i32 %call100, 1
  %conv116 = zext i32 %and115 to i64
  call fastcc void @copy_conditional(i64* noundef nonnull %arraydecay108, i64* noundef nonnull %arraydecay106, i64 noundef %conv116) #12
  %arrayidx118 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 0, i64 0
  %50 = load i64, i64* %arrayidx118, align 32, !tbaa !17
  %arrayidx121 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 0, i64 1
  %51 = load i64, i64* %arrayidx121, align 8, !tbaa !17
  %or = or i64 %51, %50
  %arrayidx124 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 0, i64 2
  %52 = load i64, i64* %arrayidx124, align 16, !tbaa !17
  %or125 = or i64 %or, %52
  %arrayidx128 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 0, i64 3
  %53 = load i64, i64* %arrayidx128, align 8, !tbaa !17
  %or129 = or i64 %or125, %53
  %54 = load i64, i64* %arraydecay108, align 32, !tbaa !17
  %or133 = or i64 %or129, %54
  %arrayidx136 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 1, i64 1
  %55 = load i64, i64* %arrayidx136, align 8, !tbaa !17
  %or137 = or i64 %or133, %55
  %arrayidx140 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 1, i64 2
  %56 = load i64, i64* %arrayidx140, align 16, !tbaa !17
  %or141 = or i64 %or137, %56
  %arrayidx144 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 1, i64 3
  %57 = load i64, i64* %arrayidx144, align 8, !tbaa !17
  %or145 = or i64 %or141, %57
  %call146 = call fastcc i64 @is_zero(i64 noundef %or145) #12
  %neg = add i64 %call146, -1
  %58 = insertelement <2 x i64> poison, i64 %neg, i64 0
  %59 = shufflevector <2 x i64> %58, <2 x i64> poison, <2 x i32> zeroinitializer
  %60 = and <2 x i64> %59, <i64 1, i64 -4294967296>
  %61 = bitcast i64* %arraydecay106 to <2 x i64>*
  store <2 x i64> %60, <2 x i64>* %61, align 32, !tbaa !17
  %arrayidx158 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 2, i64 2
  store i64 %neg, i64* %arrayidx158, align 16, !tbaa !17
  %and159 = and i64 %neg, 4294967294
  %arrayidx162 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 2, i64 3
  store i64 %and159, i64* %arrayidx162, align 8, !tbaa !17
  %a183 = bitcast %union.anon.0* %t to %struct.P256_POINT_AFFINE*
  %arraydecay190 = getelementptr inbounds %union.anon.0, %union.anon.0* %t, i64 0, i32 0, i32 2, i64 0
  %arraydecay193 = getelementptr inbounds %union.anon.0, %union.anon.0* %t, i64 0, i32 0, i32 1, i64 0
  br label %for.body166

for.body166:                                      ; preds = %for.end96, %for.body166
  %indvars.iv477 = phi i64 [ 1, %for.end96 ], [ %indvars.iv.next478, %for.body166 ]
  %idx.0463 = phi i32 [ 7, %for.end96 ], [ %add181, %for.body166 ]
  %sub167 = add nsw i32 %idx.0463, -1
  %div168 = lshr i32 %sub167, 3
  %idxprom169 = zext i32 %div168 to i64
  %arrayidx170 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %idxprom169
  %62 = load i8, i8* %arrayidx170, align 1, !tbaa !17
  %conv171 = zext i8 %62 to i32
  %add172 = add nuw nsw i32 %div168, 1
  %idxprom173 = zext i32 %add172 to i64
  %arrayidx174 = getelementptr inbounds [33 x i8], [33 x i8]* %p_str, i64 0, i64 %idxprom173
  %63 = load i8, i8* %arrayidx174, align 1, !tbaa !17
  %conv175 = zext i8 %63 to i32
  %shl176 = shl nuw nsw i32 %conv175, 8
  %or177 = or i32 %shl176, %conv171
  %rem = and i32 %sub167, 7
  %shr179 = lshr i32 %or177, %rem
  %and180 = and i32 %shr179, 255
  %add181 = add nuw nsw i32 %idx.0463, 7
  %call182 = call fastcc i32 @_booth_recode_w7(i32 noundef %and180) #12
  %arraydecay186 = getelementptr inbounds [64 x %struct.P256_POINT_AFFINE], [64 x %struct.P256_POINT_AFFINE]* %preComputedTable.3.ph, i64 %indvars.iv477, i64 0
  %shr187 = lshr i32 %call182, 1
  call void @ecp_nistz256_gather_w7(%struct.P256_POINT_AFFINE* noundef nonnull %a183, %struct.P256_POINT_AFFINE* noundef nonnull %arraydecay186, i32 noundef %shr187) #13
  call void @ecp_nistz256_neg(i64* noundef nonnull %arraydecay190, i64* noundef nonnull %arraydecay193) #13
  %and200 = and i32 %call182, 1
  %conv201 = zext i32 %and200 to i64
  call fastcc void @copy_conditional(i64* noundef nonnull %arraydecay193, i64* noundef nonnull %arraydecay190, i64 noundef %conv201) #12
  call void @ecp_nistz256_point_add_affine(%struct.P256_POINT* noundef nonnull %p105, %struct.P256_POINT* noundef nonnull %p105, %struct.P256_POINT_AFFINE* noundef nonnull %a183) #13
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 1
  %exitcond480.not = icmp eq i64 %indvars.iv.next478, 37
  br i1 %exitcond480.not, label %if.end237, label %for.body166, !llvm.loop !31

if.then215:                                       ; preds = %land.lhs.true
  %mul217 = shl nuw nsw i64 %add, 3
  %call218 = call i8* @CRYPTO_malloc(i64 noundef %mul217, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1124) #13
  %64 = bitcast i8* %call218 to %struct.bignum_st**
  %cmp219 = icmp eq i8* %call218, null
  br i1 %cmp219, label %if.then221, label %if.end222

if.then221:                                       ; preds = %if.then215
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1126, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ecp_nistz256_points_mul, i64 0, i64 0)) #13
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end222:                                        ; preds = %if.then215
  %call225 = call i8* @CRYPTO_malloc(i64 noundef %mul217, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1130) #13
  %65 = bitcast i8* %call225 to %struct.ec_point_st**
  %cmp226 = icmp eq i8* %call225, null
  br i1 %cmp226, label %if.then228, label %if.then239.thread

if.then228:                                       ; preds = %if.end222
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1132, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.ecp_nistz256_points_mul, i64 0, i64 0)) #13
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.then239.thread:                                ; preds = %if.end222
  %66 = bitcast %struct.bignum_st** %scalars to i8*
  %mul230 = shl nuw nsw i64 %num, 3
  %call231 = call i8* @memcpy(i8* noundef nonnull %call218, i8* noundef %66, i64 noundef %mul230) #13
  %arrayidx232 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %64, i64 %num
  store %struct.bignum_st* %scalar, %struct.bignum_st** %arrayidx232, align 8, !tbaa !32
  %67 = bitcast %struct.ec_point_st** %points to i8*
  %call234 = call i8* @memcpy(i8* noundef nonnull %call225, i8* noundef %67, i64 noundef %mul230) #13
  %arrayidx235 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %65, i64 %num
  store %struct.ec_point_st* %call, %struct.ec_point_st** %arrayidx235, align 8, !tbaa !32
  %p243489 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0
  br label %68

if.end237:                                        ; preds = %for.body166, %if.end
  %tobool238.not = icmp eq i64 %num, 0
  br i1 %tobool238.not, label %if.end257, label %if.then239

if.then239:                                       ; preds = %if.end237
  %p240 = getelementptr inbounds %union.anon.0, %union.anon.0* %t, i64 0, i32 0
  %p243 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0
  %spec.select495 = select i1 %tobool.not, %struct.P256_POINT* %p243, %struct.P256_POINT* %p240
  br label %68

68:                                               ; preds = %if.then239, %if.then239.thread
  %tobool241.not445451493 = phi i1 [ true, %if.then239.thread ], [ %tobool.not, %if.then239 ]
  %69 = phi i8* [ %call218, %if.then239.thread ], [ null, %if.then239 ]
  %70 = phi i8* [ %call225, %if.then239.thread ], [ null, %if.then239 ]
  %scalars.addr.0452492 = phi %struct.bignum_st** [ %64, %if.then239.thread ], [ %scalars, %if.then239 ]
  %points.addr.0453491 = phi %struct.ec_point_st** [ %65, %if.then239.thread ], [ %points, %if.then239 ]
  %num.addr.0454490 = phi i64 [ %add, %if.then239.thread ], [ %num, %if.then239 ]
  %71 = phi %struct.P256_POINT* [ %p243489, %if.then239.thread ], [ %spec.select495, %if.then239 ]
  %call245 = call fastcc i32 @ecp_nistz256_windowed_mul(%struct.ec_group_st* noundef %group, %struct.P256_POINT* noundef nonnull %71, %struct.bignum_st** noundef %scalars.addr.0452492, %struct.ec_point_st** noundef %points.addr.0453491, i64 noundef %num.addr.0454490, %struct.bignum_ctx* noundef %ctx) #12
  %tobool246.not = icmp eq i32 %call245, 0
  %brmerge = or i1 %tobool246.not, %tobool241.not445451493
  br i1 %brmerge, label %cleanup254, label %cleanup254.thread

cleanup254.thread:                                ; preds = %68
  %p243494 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0
  call void @ecp_nistz256_point_add(%struct.P256_POINT* noundef nonnull %p243494, %struct.P256_POINT* noundef nonnull %p243494, %struct.P256_POINT* noundef nonnull %71) #13
  br label %if.end257

cleanup254:                                       ; preds = %68
  br i1 %tobool246.not, label %err, label %if.end257

if.end257:                                        ; preds = %cleanup254.thread, %cleanup254, %if.end237
  %72 = phi i8* [ %70, %cleanup254 ], [ null, %if.end237 ], [ %70, %cleanup254.thread ]
  %73 = phi i8* [ %69, %cleanup254 ], [ null, %if.end237 ], [ %69, %cleanup254.thread ]
  %X258 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 2
  %74 = load %struct.bignum_st*, %struct.bignum_st** %X258, align 8, !tbaa !13
  %arraydecay261 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 0, i64 0
  %call262 = call i32 @bn_set_words(%struct.bignum_st* noundef %74, i64* noundef nonnull %arraydecay261, i32 noundef 4) #13
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %err, label %lor.lhs.false264

lor.lhs.false264:                                 ; preds = %if.end257
  %Y265 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 3
  %75 = load %struct.bignum_st*, %struct.bignum_st** %Y265, align 8, !tbaa !15
  %arraydecay268 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 1, i64 0
  %call269 = call i32 @bn_set_words(%struct.bignum_st* noundef %75, i64* noundef nonnull %arraydecay268, i32 noundef 4) #13
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %err, label %lor.lhs.false271

lor.lhs.false271:                                 ; preds = %lor.lhs.false264
  %Z272 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 4
  %76 = load %struct.bignum_st*, %struct.bignum_st** %Z272, align 8, !tbaa !16
  %arraydecay275 = getelementptr inbounds %union.anon.0, %union.anon.0* %p, i64 0, i32 0, i32 2, i64 0
  %call276 = call i32 @bn_set_words(%struct.bignum_st* noundef %76, i64* noundef nonnull %arraydecay275, i32 noundef 4) #13
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %err, label %if.end279

if.end279:                                        ; preds = %lor.lhs.false271
  %77 = load %struct.bignum_st*, %struct.bignum_st** %Z272, align 8, !tbaa !16
  %call281 = call fastcc i64 @is_one(%struct.bignum_st* noundef %77) #12
  %78 = trunc i64 %call281 to i32
  %conv283 = and i32 %78, 1
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 5
  store i32 %conv283, i32* %Z_is_one, align 8, !tbaa !33
  br label %err

err:                                              ; preds = %if.then37, %if.then44, %if.then9, %if.then17, %cleanup254, %if.end257, %lor.lhs.false264, %lor.lhs.false271, %if.end279, %if.then228, %if.then221, %if.then5
  %79 = phi i8* [ null, %if.then5 ], [ null, %if.then221 ], [ %call218, %if.then228 ], [ %69, %cleanup254 ], [ %73, %if.end279 ], [ %73, %lor.lhs.false271 ], [ %73, %lor.lhs.false264 ], [ %73, %if.end257 ], [ null, %if.then17 ], [ null, %if.then9 ], [ null, %if.then44 ], [ null, %if.then37 ]
  %80 = phi i8* [ null, %if.then5 ], [ null, %if.then221 ], [ null, %if.then228 ], [ %70, %cleanup254 ], [ %72, %if.end279 ], [ %72, %lor.lhs.false271 ], [ %72, %lor.lhs.false264 ], [ %72, %if.end257 ], [ null, %if.then17 ], [ null, %if.then9 ], [ null, %if.then44 ], [ null, %if.then37 ]
  %ret.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then221 ], [ 0, %if.then228 ], [ 0, %cleanup254 ], [ 1, %if.end279 ], [ 0, %lor.lhs.false271 ], [ 0, %lor.lhs.false264 ], [ 0, %if.end257 ], [ 0, %if.then17 ], [ 0, %if.then9 ], [ 0, %if.then44 ], [ 0, %if.then37 ]
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #13
  call void @CRYPTO_free(i8* noundef %80, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1170) #13
  call void @CRYPTO_free(i8* noundef %79, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1171) #13
  br label %cleanup284

cleanup284:                                       ; preds = %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 33, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecp_nistz256_mult_precompute(%struct.ec_group_st* noundef %group, %struct.bignum_ctx* noundef %ctx) #3 {
entry:
  %temp = alloca %struct.P256_POINT_AFFINE, align 8
  tail call void @EC_pre_comp_free(%struct.ec_group_st* noundef %group) #13
  %call = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %group) #13
  %cmp = icmp eq %struct.ec_point_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 836, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ecp_nistz256_mult_precompute, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 113, i8* noundef null) #13
  br label %cleanup86

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @ecp_nistz256_is_affine_G(%struct.ec_point_st* noundef nonnull %call) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %cleanup86

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc %struct.nistz256_pre_comp_st* @ecp_nistz256_pre_comp_new(%struct.ec_group_st* noundef %group) #12
  %cmp5 = icmp eq %struct.nistz256_pre_comp_st* %call4, null
  br i1 %cmp5, label %cleanup86, label %if.end7

if.end7:                                          ; preds = %if.end3
  %cmp8 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end7
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 21
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !34
  %call10 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #13
  %cmp11 = icmp eq %struct.bignum_ctx* %call10, null
  br i1 %cmp11, label %err, label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end7
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call10, %if.then9 ], [ %ctx, %if.end7 ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call10, %if.then9 ], [ null, %if.end7 ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #13
  %call15 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %group) #13
  %cmp16 = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp16, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call15) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 864, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ecp_nistz256_mult_precompute, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 114, i8* noundef null) #13
  br label %err

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i8* @CRYPTO_malloc(i64 noundef 151616, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 871) #13
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 872, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ecp_nistz256_mult_precompute, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #13
  br label %err

if.end26:                                         ; preds = %if.end22
  %add.ptr = getelementptr inbounds i8, i8* %call23, i64 64
  %1 = ptrtoint i8* %call23 to i64
  %rem = and i64 %1, 63
  %idx.neg = sub nsw i64 0, %rem
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %2 = bitcast i8* %add.ptr27 to [64 x %struct.P256_POINT_AFFINE]*
  %call28 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #13
  %call29 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #13
  %cmp30 = icmp eq %struct.ec_point_st* %call28, null
  %cmp31 = icmp eq %struct.ec_point_st* %call29, null
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp31
  br i1 %or.cond, label %err, label %if.end33

if.end33:                                         ; preds = %if.end26
  %call34 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef nonnull %call29, %struct.ec_point_st* noundef nonnull %call) #13
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end33
  %3 = bitcast %struct.P256_POINT_AFFINE* %temp to i8*
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %arraydecay = getelementptr inbounds %struct.P256_POINT_AFFINE, %struct.P256_POINT_AFFINE* %temp, i64 0, i32 0, i64 0
  %X54 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %call28, i64 0, i32 2
  %arraydecay58 = getelementptr inbounds %struct.P256_POINT_AFFINE, %struct.P256_POINT_AFFINE* %temp, i64 0, i32 1, i64 0
  %Y59 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %call28, i64 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.end74
  %inc80 = add nuw nsw i32 %k.0170, 1
  %exitcond172.not = icmp eq i32 %inc80, 64
  br i1 %exitcond172.not, label %for.end81, label %for.body, !llvm.loop !35

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %k.0170 = phi i32 [ 0, %for.cond.preheader ], [ %inc80, %for.cond ]
  %call39 = call i32 @EC_POINT_copy(%struct.ec_point_st* noundef nonnull %call28, %struct.ec_point_st* noundef %call29) #13
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %for.body45

for.body45:                                       ; preds = %for.body, %for.cond65.6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond65.6 ], [ 0, %for.body ]
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #11
  %4 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !36
  %make_affine = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %4, i64 0, i32 27
  %5 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %make_affine, align 8, !tbaa !37
  %cmp46 = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %5, null
  br i1 %cmp46, label %cleanup.thread, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %for.body45
  %call50 = call i32 %5(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %call28, %struct.bignum_ctx* noundef %ctx.addr.0) #13
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup.thread, label %if.end53

if.end53:                                         ; preds = %lor.lhs.false47
  %6 = load %struct.bignum_st*, %struct.bignum_st** %X54, align 8, !tbaa !13
  %call55 = call fastcc i32 @ecp_nistz256_bignum_to_field_elem(i64* noundef nonnull %arraydecay, %struct.bignum_st* noundef %6) #12
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then62, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end53
  %7 = load %struct.bignum_st*, %struct.bignum_st** %Y59, align 8, !tbaa !15
  %call60 = call fastcc i32 @ecp_nistz256_bignum_to_field_elem(i64* noundef nonnull %arraydecay58, %struct.bignum_st* noundef %7) #12
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %if.end63

if.then62:                                        ; preds = %lor.lhs.false57, %if.end53
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 904, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.ecp_nistz256_mult_precompute, i64 0, i64 0)) #13
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 146, i8* noundef null) #13
  br label %cleanup.thread

if.end63:                                         ; preds = %lor.lhs.false57
  %arraydecay64 = getelementptr inbounds [64 x %struct.P256_POINT_AFFINE], [64 x %struct.P256_POINT_AFFINE]* %2, i64 %indvars.iv, i64 0
  call void @ecp_nistz256_scatter_w7(%struct.P256_POINT_AFFINE* noundef nonnull %arraydecay64, %struct.P256_POINT_AFFINE* noundef nonnull %temp, i32 noundef %k.0170) #13
  %call68 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call28, %struct.ec_point_st* noundef nonnull %call28, %struct.bignum_ctx* noundef %ctx.addr.0) #13
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %cleanup.thread, label %for.cond65

for.cond65:                                       ; preds = %if.end63
  %call68.1 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call28, %struct.ec_point_st* noundef nonnull %call28, %struct.bignum_ctx* noundef %ctx.addr.0) #13
  %tobool69.not.1 = icmp eq i32 %call68.1, 0
  br i1 %tobool69.not.1, label %cleanup.thread, label %for.cond65.1

for.cond65.1:                                     ; preds = %for.cond65
  %call68.2 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call28, %struct.ec_point_st* noundef nonnull %call28, %struct.bignum_ctx* noundef %ctx.addr.0) #13
  %tobool69.not.2 = icmp eq i32 %call68.2, 0
  br i1 %tobool69.not.2, label %cleanup.thread, label %for.cond65.2

for.cond65.2:                                     ; preds = %for.cond65.1
  %call68.3 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call28, %struct.ec_point_st* noundef nonnull %call28, %struct.bignum_ctx* noundef %ctx.addr.0) #13
  %tobool69.not.3 = icmp eq i32 %call68.3, 0
  br i1 %tobool69.not.3, label %cleanup.thread, label %for.cond65.3

for.cond65.3:                                     ; preds = %for.cond65.2
  %call68.4 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call28, %struct.ec_point_st* noundef nonnull %call28, %struct.bignum_ctx* noundef %ctx.addr.0) #13
  %tobool69.not.4 = icmp eq i32 %call68.4, 0
  br i1 %tobool69.not.4, label %cleanup.thread, label %for.cond65.4

for.cond65.4:                                     ; preds = %for.cond65.3
  %call68.5 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call28, %struct.ec_point_st* noundef nonnull %call28, %struct.bignum_ctx* noundef %ctx.addr.0) #13
  %tobool69.not.5 = icmp eq i32 %call68.5, 0
  br i1 %tobool69.not.5, label %cleanup.thread, label %for.cond65.5

for.cond65.5:                                     ; preds = %for.cond65.4
  %call68.6 = call i32 @EC_POINT_dbl(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call28, %struct.ec_point_st* noundef nonnull %call28, %struct.bignum_ctx* noundef %ctx.addr.0) #13
  %tobool69.not.6 = icmp eq i32 %call68.6, 0
  br i1 %tobool69.not.6, label %cleanup.thread, label %for.cond65.6

for.cond65.6:                                     ; preds = %for.cond65.5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 37
  br i1 %exitcond.not, label %for.end74, label %for.body45, !llvm.loop !39

cleanup.thread:                                   ; preds = %lor.lhs.false47, %for.body45, %if.end63, %for.cond65, %for.cond65.1, %for.cond65.2, %for.cond65.3, %for.cond65.4, %for.cond65.5, %if.then62
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #11
  br label %err

for.end74:                                        ; preds = %for.cond65.6
  %call75 = call i32 @EC_POINT_add(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %call29, %struct.ec_point_st* noundef %call29, %struct.ec_point_st* noundef nonnull %call, %struct.bignum_ctx* noundef %ctx.addr.0) #13
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %for.cond

for.end81:                                        ; preds = %for.cond
  %group82 = getelementptr inbounds %struct.nistz256_pre_comp_st, %struct.nistz256_pre_comp_st* %call4, i64 0, i32 0
  store %struct.ec_group_st* %group, %struct.ec_group_st** %group82, align 8, !tbaa !40
  %w83 = getelementptr inbounds %struct.nistz256_pre_comp_st, %struct.nistz256_pre_comp_st* %call4, i64 0, i32 1
  store i64 7, i64* %w83, align 8, !tbaa !41
  %precomp = getelementptr inbounds %struct.nistz256_pre_comp_st, %struct.nistz256_pre_comp_st* %call4, i64 0, i32 2
  %8 = bitcast [64 x %struct.P256_POINT_AFFINE]** %precomp to i8**
  store i8* %add.ptr27, i8** %8, align 8, !tbaa !18
  %precomp_storage84 = getelementptr inbounds %struct.nistz256_pre_comp_st, %struct.nistz256_pre_comp_st* %call4, i64 0, i32 3
  store i8* %call23, i8** %precomp_storage84, align 8, !tbaa !8
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19
  store i32 4, i32* %pre_comp_type, align 8, !tbaa !42
  %pre_comp85 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 20
  %nistz256 = bitcast %union.anon* %pre_comp85 to %struct.nistz256_pre_comp_st**
  store %struct.nistz256_pre_comp_st* %call4, %struct.nistz256_pre_comp_st** %nistz256, align 8, !tbaa !17
  br label %err

err:                                              ; preds = %for.end74, %for.body, %cleanup.thread, %if.end33, %if.end26, %if.end14, %if.then9, %for.end81, %if.then25, %if.then21
  %P.0 = phi %struct.ec_point_st* [ null, %if.then9 ], [ null, %if.end14 ], [ null, %if.then21 ], [ null, %if.then25 ], [ %call28, %if.end26 ], [ %call28, %for.end81 ], [ %call28, %if.end33 ], [ %call28, %cleanup.thread ], [ %call28, %for.body ], [ %call28, %for.end74 ]
  %T.0 = phi %struct.ec_point_st* [ null, %if.then9 ], [ null, %if.end14 ], [ null, %if.then21 ], [ null, %if.then25 ], [ %call29, %if.end26 ], [ %call29, %for.end81 ], [ %call29, %if.end33 ], [ %call29, %cleanup.thread ], [ %call29, %for.body ], [ %call29, %for.end74 ]
  %ctx.addr.1 = phi %struct.bignum_ctx* [ null, %if.then9 ], [ %ctx.addr.0, %if.end14 ], [ %ctx.addr.0, %if.then21 ], [ %ctx.addr.0, %if.then25 ], [ %ctx.addr.0, %if.end26 ], [ %ctx.addr.0, %for.end81 ], [ %ctx.addr.0, %if.end33 ], [ %ctx.addr.0, %cleanup.thread ], [ %ctx.addr.0, %for.body ], [ %ctx.addr.0, %for.end74 ]
  %pre_comp.0 = phi %struct.nistz256_pre_comp_st* [ %call4, %if.then9 ], [ %call4, %if.end14 ], [ %call4, %if.then21 ], [ %call4, %if.then25 ], [ %call4, %if.end26 ], [ null, %for.end81 ], [ %call4, %if.end33 ], [ %call4, %cleanup.thread ], [ %call4, %for.body ], [ %call4, %for.end74 ]
  %new_ctx.1 = phi %struct.bignum_ctx* [ null, %if.then9 ], [ %new_ctx.0, %if.end14 ], [ %new_ctx.0, %if.then21 ], [ %new_ctx.0, %if.then25 ], [ %new_ctx.0, %if.end26 ], [ %new_ctx.0, %for.end81 ], [ %new_ctx.0, %if.end33 ], [ %new_ctx.0, %cleanup.thread ], [ %new_ctx.0, %for.body ], [ %new_ctx.0, %for.end74 ]
  %ret.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.end14 ], [ 0, %if.then21 ], [ 0, %if.then25 ], [ 0, %if.end26 ], [ 1, %for.end81 ], [ 0, %if.end33 ], [ 0, %cleanup.thread ], [ 0, %for.body ], [ 0, %for.end74 ]
  %precomp_storage.0 = phi i8* [ null, %if.then9 ], [ null, %if.end14 ], [ null, %if.then21 ], [ null, %if.then25 ], [ %call23, %if.end26 ], [ null, %for.end81 ], [ %call23, %if.end33 ], [ %call23, %cleanup.thread ], [ %call23, %for.body ], [ %call23, %for.end74 ]
  call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx.addr.1) #13
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.1) #13
  call void @EC_nistz256_pre_comp_free(%struct.nistz256_pre_comp_st* noundef %pre_comp.0) #12
  call void @CRYPTO_free(i8* noundef %precomp_storage.0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 931) #13
  call void @EC_POINT_free(%struct.ec_point_st* noundef %P.0) #13
  call void @EC_POINT_free(%struct.ec_point_st* noundef %T.0) #13
  br label %cleanup86

cleanup86:                                        ; preds = %if.end3, %if.end, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ], [ 1, %if.end ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecp_nistz256_window_have_precompute_mult(%struct.ec_group_st* noundef %group) #3 {
entry:
  %call = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %group) #13
  %cmp.not = icmp eq %struct.ec_point_st* %call, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @ecp_nistz256_is_affine_G(%struct.ec_point_st* noundef nonnull %call) #12
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19
  %0 = load i32, i32* %pre_comp_type, align 8, !tbaa !42
  %cmp2 = icmp eq i32 %0, 4
  br i1 %cmp2, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %if.end
  %pre_comp = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 20
  %nistz256 = bitcast %union.anon* %pre_comp to %struct.nistz256_pre_comp_st**
  %1 = load %struct.nistz256_pre_comp_st*, %struct.nistz256_pre_comp_st** %nistz256, align 8, !tbaa !17
  %cmp3 = icmp ne %struct.nistz256_pre_comp_st* %1, null
  %phi.cast = zext i1 %cmp3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.rhs, %land.lhs.true
  %retval.0 = phi i32 [ 1, %land.lhs.true ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  ret i32 %retval.0
}

declare i32 @ossl_ec_GFp_mont_field_mul(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_mont_field_sqr(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_mont_field_inv(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_mont_field_encode(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_mont_field_decode(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #4

declare i32 @ossl_ec_GFp_mont_field_set_to_one(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #4

declare i64 @ossl_ec_key_simple_priv2oct(%struct.ec_key_st* noundef, i8* noundef, i64 noundef) #4

declare i32 @ossl_ec_key_simple_oct2priv(%struct.ec_key_st* noundef, i8* noundef, i64 noundef) #4

declare i32 @ossl_ec_key_simple_generate_key(%struct.ec_key_st* noundef) #4

declare i32 @ossl_ec_key_simple_check_key(%struct.ec_key_st* noundef) #4

declare i32 @ossl_ec_key_simple_generate_public_key(%struct.ec_key_st* noundef) #4

declare i32 @ossl_ecdh_simple_compute_key(i8** noundef, i64* noundef, %struct.ec_point_st* noundef, %struct.ec_key_st* noundef) #4

declare i32 @ossl_ecdsa_simple_sign_setup(%struct.ec_key_st* noundef, %struct.bignum_ctx* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) #4

declare %struct.ECDSA_SIG_st* @ossl_ecdsa_simple_sign_sig(i8* noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.ec_key_st* noundef) #4

declare i32 @ossl_ecdsa_simple_verify_sig(i8* noundef, i32 noundef, %struct.ECDSA_SIG_st* noundef, %struct.ec_key_st* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecp_nistz256_inv_mod_ord(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %x, %struct.bignum_ctx* noundef %ctx) #3 {
entry:
  %table = alloca [15 x [4 x i64]], align 16
  %out = alloca [4 x i64], align 16
  %t = alloca [4 x i64], align 16
  %0 = bitcast [15 x [4 x i64]]* %table to i8*
  call void @llvm.lifetime.start.p0i8(i64 480, i8* nonnull %0) #11
  %1 = bitcast [4 x i64]* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #11
  %2 = bitcast [4 x i64]* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #11
  %call = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %r, i32 noundef 4) #13
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1328, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ecp_nistz256_inv_mod_ord, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #13
  br label %cleanup133

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %x) #13
  %cmp2 = icmp sgt i32 %call1, 256
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %x) #13
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end12, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #13
  %cmp6 = icmp eq %struct.bignum_st* %call5, null
  br i1 %cmp6, label %cleanup, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.then4
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !19
  %call8 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call5, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %3, %struct.bignum_ctx* noundef %ctx) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end12

cleanup:                                          ; preds = %if.then4, %lor.lhs.false7
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1337, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ecp_nistz256_inv_mod_ord, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #13
  br label %cleanup133

if.end12:                                         ; preds = %lor.lhs.false7, %lor.lhs.false
  %x.addr.1 = phi %struct.bignum_st* [ %x, %lor.lhs.false ], [ %call5, %lor.lhs.false7 ]
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %t, i64 0, i64 0
  %call13 = call fastcc i32 @ecp_nistz256_bignum_to_field_elem(i64* noundef nonnull %arraydecay, %struct.bignum_st* noundef %x.addr.1) #12
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @ERR_new() #13
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1344, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ecp_nistz256_inv_mod_ord, i64 0, i64 0)) #13
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 146, i8* noundef null) #13
  br label %cleanup133

if.end16:                                         ; preds = %if.end12
  %arraydecay17 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 0, i64 0
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay17, i64* noundef nonnull %arraydecay, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @ecp_nistz256_inv_mod_ord.RR, i64 0, i64 0)) #13
  %arraydecay20 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 1, i64 0
  call void @ecp_nistz256_ord_sqr_mont(i64* noundef nonnull %arraydecay20, i64* noundef nonnull %arraydecay17, i64 noundef 1) #13
  %arraydecay24 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 2, i64 0
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay24, i64* noundef nonnull %arraydecay17, i64* noundef nonnull %arraydecay20) #13
  %arraydecay30 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 3, i64 0
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay30, i64* noundef nonnull %arraydecay24, i64* noundef nonnull %arraydecay20) #13
  %arraydecay36 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 4, i64 0
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay36, i64* noundef nonnull %arraydecay30, i64* noundef nonnull %arraydecay20) #13
  %arraydecay42 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 5, i64 0
  call void @ecp_nistz256_ord_sqr_mont(i64* noundef nonnull %arraydecay42, i64* noundef nonnull %arraydecay30, i64 noundef 1) #13
  %arraydecay46 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 6, i64 0
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay46, i64* noundef nonnull %arraydecay42, i64* noundef nonnull %arraydecay30) #13
  %arraydecay52 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 7, i64 0
  call void @ecp_nistz256_ord_sqr_mont(i64* noundef nonnull %arraydecay52, i64* noundef nonnull %arraydecay42, i64 noundef 1) #13
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay52, i64* noundef nonnull %arraydecay52, i64* noundef nonnull %arraydecay17) #13
  %arraydecay62 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 8, i64 0
  call void @ecp_nistz256_ord_sqr_mont(i64* noundef nonnull %arraydecay62, i64* noundef nonnull %arraydecay52, i64 noundef 1) #13
  %arraydecay66 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 9, i64 0
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay66, i64* noundef nonnull %arraydecay62, i64* noundef nonnull %arraydecay30) #13
  %arraydecay72 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 10, i64 0
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay72, i64* noundef nonnull %arraydecay62, i64* noundef nonnull %arraydecay52) #13
  %arraydecay78 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 11, i64 0
  call void @ecp_nistz256_ord_sqr_mont(i64* noundef nonnull %arraydecay78, i64* noundef nonnull %arraydecay72, i64 noundef 2) #13
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay78, i64* noundef nonnull %arraydecay78, i64* noundef nonnull %arraydecay24) #13
  %arraydecay88 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 12, i64 0
  call void @ecp_nistz256_ord_sqr_mont(i64* noundef nonnull %arraydecay88, i64* noundef nonnull %arraydecay78, i64 noundef 8) #13
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay88, i64* noundef nonnull %arraydecay88, i64* noundef nonnull %arraydecay78) #13
  %arraydecay98 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 13, i64 0
  call void @ecp_nistz256_ord_sqr_mont(i64* noundef nonnull %arraydecay98, i64* noundef nonnull %arraydecay88, i64 noundef 16) #13
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay98, i64* noundef nonnull %arraydecay98, i64* noundef nonnull %arraydecay88) #13
  %arraydecay107 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 0
  call void @ecp_nistz256_ord_sqr_mont(i64* noundef nonnull %arraydecay107, i64* noundef nonnull %arraydecay98, i64 noundef 64) #13
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay107, i64* noundef nonnull %arraydecay107, i64* noundef nonnull %arraydecay98) #13
  br label %for.body

for.body:                                         ; preds = %if.end16, %for.body
  %indvars.iv = phi i64 [ 0, %if.end16 ], [ %indvars.iv.next, %for.body ]
  %p = getelementptr inbounds [27 x %struct.anon], [27 x %struct.anon]* @ecp_nistz256_inv_mod_ord.chain, i64 0, i64 %indvars.iv, i32 0
  %4 = load i8, i8* %p, align 2, !tbaa !43
  %conv = zext i8 %4 to i64
  call void @ecp_nistz256_ord_sqr_mont(i64* noundef nonnull %arraydecay107, i64* noundef nonnull %arraydecay107, i64 noundef %conv) #13
  %i122 = getelementptr inbounds [27 x %struct.anon], [27 x %struct.anon]* @ecp_nistz256_inv_mod_ord.chain, i64 0, i64 %indvars.iv, i32 1
  %5 = load i8, i8* %i122, align 1, !tbaa !45
  %idxprom123 = zext i8 %5 to i64
  %arraydecay125 = getelementptr inbounds [15 x [4 x i64]], [15 x [4 x i64]]* %table, i64 0, i64 %idxprom123, i64 0
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay107, i64* noundef nonnull %arraydecay107, i64* noundef nonnull %arraydecay125) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 27
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !46

for.end:                                          ; preds = %for.body
  call void @ecp_nistz256_ord_mul_mont(i64* noundef nonnull %arraydecay107, i64* noundef nonnull %arraydecay107, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @ecp_nistz256_inv_mod_ord.one, i64 0, i64 0)) #13
  %call129 = call i32 @bn_set_words(%struct.bignum_st* noundef %r, i64* noundef nonnull %arraydecay107, i32 noundef 4) #13
  %tobool130.not = icmp ne i32 %call129, 0
  %spec.select = zext i1 %tobool130.not to i32
  br label %cleanup133

cleanup133:                                       ; preds = %cleanup, %for.end, %if.then, %if.then15
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %cleanup ], [ 0, %if.then15 ], [ %spec.select, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 480, i8* nonnull %0) #11
  ret i32 %ret.0
}

declare i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecp_nistz256_bignum_to_field_elem(i64* noundef %out, %struct.bignum_st* noundef %in) unnamed_addr #3 {
entry:
  %call = tail call i32 @bn_copy_words(i64* noundef %out, %struct.bignum_st* noundef %in, i32 noundef 4) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ecp_nistz256_mod_inverse(i64* noundef %r, i64* noundef %in) unnamed_addr #3 {
entry:
  %p2 = alloca [4 x i64], align 16
  %p4 = alloca [4 x i64], align 16
  %p8 = alloca [4 x i64], align 16
  %p16 = alloca [4 x i64], align 16
  %p32 = alloca [4 x i64], align 16
  %res = alloca [4 x i64], align 16
  %0 = bitcast [4 x i64]* %p2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #11
  %1 = bitcast [4 x i64]* %p4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #11
  %2 = bitcast [4 x i64]* %p8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #11
  %3 = bitcast [4 x i64]* %p16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #11
  %4 = bitcast [4 x i64]* %p32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #11
  %5 = bitcast [4 x i64]* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #11
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %res, i64 0, i64 0
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef %in) #13
  %arraydecay1 = getelementptr inbounds [4 x i64], [4 x i64]* %p2, i64 0, i64 0
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay1, i64* noundef nonnull %arraydecay, i64* noundef %in) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay1) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  %arraydecay7 = getelementptr inbounds [4 x i64], [4 x i64]* %p4, i64 0, i64 0
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay7, i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay1) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay7) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  %arraydecay18 = getelementptr inbounds [4 x i64], [4 x i64]* %p8, i64 0, i64 0
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay18, i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay7) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay18) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  %arraydecay25 = getelementptr inbounds [4 x i64], [4 x i64]* %p16, i64 0, i64 0
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay25, i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay18) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay25) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  %arraydecay38 = getelementptr inbounds [4 x i64], [4 x i64]* %p32, i64 0, i64 0
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay38, i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay25) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay38) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay, i64* noundef %in) #13
  br label %for.body55

for.body55:                                       ; preds = %entry, %for.body55
  %i.3142 = phi i32 [ 0, %entry ], [ %inc59, %for.body55 ]
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  %inc59 = add nuw nsw i32 %i.3142, 1
  %exitcond.not = icmp eq i32 %inc59, 128
  br i1 %exitcond.not, label %for.end60, label %for.body55, !llvm.loop !47

for.end60:                                        ; preds = %for.body55
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay38) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay38) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay25) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay18) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay7) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay1) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_sqr_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay) #13
  call void @ecp_nistz256_mul_mont(i64* noundef nonnull %arraydecay, i64* noundef nonnull %arraydecay, i64* noundef %in) #13
  %6 = bitcast i64* %r to i8*
  %call = call i8* @memcpy(i8* noundef %6, i8* noundef nonnull %5, i64 noundef 32) #13
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #11
  ret void
}

declare void @ecp_nistz256_sqr_mont(i64* noundef, i64* noundef) local_unnamed_addr #4

declare void @ecp_nistz256_mul_mont(i64* noundef, i64* noundef, i64* noundef) local_unnamed_addr #4

declare void @ecp_nistz256_from_mont(i64* noundef, i64* noundef) local_unnamed_addr #4

declare i32 @bn_set_words(%struct.bignum_st* noundef, i64* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @bn_copy_words(i64* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #4

declare %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef) local_unnamed_addr #4

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #4

declare void @ecp_nistz256_gather_w7(%struct.P256_POINT_AFFINE* noundef, %struct.P256_POINT_AFFINE* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecp_nistz256_set_from_affine(%struct.ec_point_st* nocapture noundef %out, %struct.P256_POINT_AFFINE* noundef %in) unnamed_addr #3 {
entry:
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %out, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !13
  %arraydecay = getelementptr inbounds %struct.P256_POINT_AFFINE, %struct.P256_POINT_AFFINE* %in, i64 0, i32 0, i64 0
  %call = tail call i32 @bn_set_words(%struct.bignum_st* noundef %0, i64* noundef %arraydecay, i32 noundef 4) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %out, i64 0, i32 3
  %1 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !15
  %arraydecay3 = getelementptr inbounds %struct.P256_POINT_AFFINE, %struct.P256_POINT_AFFINE* %in, i64 0, i32 1, i64 0
  %call4 = tail call i32 @bn_set_words(%struct.bignum_st* noundef %1, i64* noundef nonnull %arraydecay3, i32 noundef 4) #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %out, i64 0, i32 4
  %2 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !16
  %call7 = tail call i32 @bn_set_words(%struct.bignum_st* noundef %2, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @ONE, i64 0, i64 0), i32 noundef 4) #13
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true6
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %out, i64 0, i32 5
  store i32 1, i32* %Z_is_one, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6, %land.lhs.true, %entry
  %ret.0 = phi i32 [ %call7, %if.then ], [ 0, %land.lhs.true6 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  ret i32 %ret.0
}

declare void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #4

declare i32 @EC_POINT_cmp(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecp_nistz256_is_affine_G(%struct.ec_point_st* nocapture noundef readonly %generator) unnamed_addr #3 {
entry:
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %generator, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !13
  %call = tail call i32 @bn_get_top(%struct.bignum_st* noundef %0) #13
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %generator, i64 0, i32 3
  %1 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !15
  %call1 = tail call i32 @bn_get_top(%struct.bignum_st* noundef %1) #13
  %cmp2 = icmp eq i32 %call1, 4
  br i1 %cmp2, label %land.lhs.true3, label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !13
  %call5 = tail call i64* @bn_get_words(%struct.bignum_st* noundef %2) #13
  %call6 = tail call fastcc i64 @is_equal(i64* noundef %call5, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @def_xG, i64 0, i64 0)) #12
  %tobool.not = icmp eq i64 %call6, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !15
  %call9 = tail call i64* @bn_get_words(%struct.bignum_st* noundef %3) #13
  %call10 = tail call fastcc i64 @is_equal(i64* noundef %call9, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @def_yG, i64 0, i64 0)) #12
  %tobool11.not = icmp eq i64 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true7
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %generator, i64 0, i32 4
  %4 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !16
  %call12 = tail call fastcc i64 @is_one(%struct.bignum_st* noundef %4) #12
  %tobool13 = icmp ne i64 %call12, 0
  %phi.cast = zext i1 %tobool13 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true7, %land.lhs.true3, %land.lhs.true, %entry
  %5 = phi i32 [ 0, %land.lhs.true7 ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %5
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @BN_nnmod(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @bn_get_top(%struct.bignum_st* noundef) local_unnamed_addr #4

declare i64* @bn_get_words(%struct.bignum_st* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @_booth_recode_w7(i32 noundef %in) unnamed_addr #5 {
entry:
  %shr = lshr i32 %in, 7
  %sub = add nsw i32 %shr, -1
  %neg = sub nsw i32 0, %shr
  %sub2 = sub i32 255, %in
  %and = and i32 %sub2, %neg
  %and4 = and i32 %sub, %in
  %or = or i32 %and4, %and
  %and6 = shl i32 %or, 1
  %add18 = and i32 %and6, 2
  %shr519 = add i32 %add18, %or
  %shl = and i32 %shr519, -2
  %and7 = and i32 %neg, 1
  %add8 = or i32 %shl, %and7
  ret i32 %add8
}

declare void @ecp_nistz256_neg(i64* noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @copy_conditional(i64* nocapture noundef %dst, i64* nocapture noundef readonly %src, i64 noundef %move) unnamed_addr #8 {
entry:
  %sub = sub i64 0, %move
  %neg = add i64 %move, -1
  %0 = load i64, i64* %src, align 8, !tbaa !28
  %and = and i64 %0, %sub
  %1 = load i64, i64* %dst, align 8, !tbaa !28
  %and2 = and i64 %1, %neg
  %xor = xor i64 %and2, %and
  store i64 %xor, i64* %dst, align 8, !tbaa !28
  %arrayidx4 = getelementptr inbounds i64, i64* %src, i64 1
  %2 = load i64, i64* %arrayidx4, align 8, !tbaa !28
  %and5 = and i64 %2, %sub
  %arrayidx6 = getelementptr inbounds i64, i64* %dst, i64 1
  %3 = load i64, i64* %arrayidx6, align 8, !tbaa !28
  %and7 = and i64 %3, %neg
  %xor8 = xor i64 %and7, %and5
  store i64 %xor8, i64* %arrayidx6, align 8, !tbaa !28
  %arrayidx10 = getelementptr inbounds i64, i64* %src, i64 2
  %4 = load i64, i64* %arrayidx10, align 8, !tbaa !28
  %and11 = and i64 %4, %sub
  %arrayidx12 = getelementptr inbounds i64, i64* %dst, i64 2
  %5 = load i64, i64* %arrayidx12, align 8, !tbaa !28
  %and13 = and i64 %5, %neg
  %xor14 = xor i64 %and13, %and11
  store i64 %xor14, i64* %arrayidx12, align 8, !tbaa !28
  %arrayidx16 = getelementptr inbounds i64, i64* %src, i64 3
  %6 = load i64, i64* %arrayidx16, align 8, !tbaa !28
  %and17 = and i64 %6, %sub
  %arrayidx18 = getelementptr inbounds i64, i64* %dst, i64 3
  %7 = load i64, i64* %arrayidx18, align 8, !tbaa !28
  %and19 = and i64 %7, %neg
  %xor20 = xor i64 %and19, %and17
  store i64 %xor20, i64* %arrayidx18, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @is_zero(i64 noundef %in) unnamed_addr #5 {
entry:
  %0 = add i64 %in, -1
  %1 = xor i64 %in, -1
  %neg = and i64 %0, %1
  %shr = lshr i64 %neg, 63
  ret i64 %shr
}

declare void @ecp_nistz256_point_add_affine(%struct.P256_POINT* noundef, %struct.P256_POINT* noundef, %struct.P256_POINT_AFFINE* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ecp_nistz256_windowed_mul(%struct.ec_group_st* nocapture noundef readonly %group, %struct.P256_POINT* noundef %r, %struct.bignum_st** nocapture noundef readonly %scalar, %struct.ec_point_st** nocapture noundef readonly %point, i64 noundef %num, %struct.bignum_ctx* noundef %ctx) unnamed_addr #3 {
entry:
  %mul = shl i64 %num, 4
  %add = or i64 %mul, 6
  %cmp = icmp ugt i64 %add, 22369621
  br i1 %cmp, label %cleanup278.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %add2 = or i64 %mul, 5
  %mul3 = mul i64 %add2, 96
  %add4 = add i64 %mul3, 64
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %add4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 636) #13
  %cmp5 = icmp eq i8* %call, null
  br i1 %cmp5, label %cleanup278.sink.split, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %mul7 = mul i64 %num, 33
  %call9 = tail call i8* @CRYPTO_malloc(i64 noundef %mul7, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 638) #13
  %0 = bitcast i8* %call9 to [33 x i8]*
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %cleanup278.sink.split, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %mul12 = shl i64 %num, 3
  %call13 = tail call i8* @CRYPTO_malloc(i64 noundef %mul12, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 639) #13
  %1 = bitcast i8* %call13 to %struct.bignum_st**
  %cmp14 = icmp eq i8* %call13, null
  br i1 %cmp14, label %cleanup278.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false11
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 64
  %2 = ptrtoint i8* %call to i64
  %rem = and i64 %2, 63
  %idx.neg = sub nsw i64 0, %rem
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %3 = bitcast i8* %add.ptr15 to [16 x %struct.P256_POINT]*
  %4 = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %num, i64 0
  %cmp17523.not = icmp eq i64 %num, 0
  br i1 %cmp17523.not, label %for.end182, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %arraydecay103 = getelementptr inbounds %struct.P256_POINT, %struct.P256_POINT* %4, i64 0, i32 0, i64 0
  %arraydecay110 = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %num, i64 0, i32 1, i64 0
  %arraydecay117 = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %num, i64 0, i32 2, i64 0
  %arrayidx125 = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %num, i64 1
  %arrayidx128 = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %num, i64 2
  %arrayidx138 = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %num, i64 3
  %arrayidx142 = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %num, i64 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc180
  %i.0524 = phi i64 [ 0, %for.body.lr.ph ], [ %inc181, %for.inc180 ]
  %arraydecay = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %i.0524, i64 0
  %arrayidx18 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %scalar, i64 %i.0524
  %5 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx18, align 8, !tbaa !32
  %call19 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %5) #13
  %cmp20 = icmp sgt i32 %call19, 256
  br i1 %cmp20, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %for.body
  %6 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx18, align 8, !tbaa !32
  %call23 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %6) #13
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %lor.lhs.false21, %for.body
  %call25 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #13
  %cmp26 = icmp eq %struct.bignum_st* %call25, null
  br i1 %cmp26, label %cleanup278, label %if.end28

if.end28:                                         ; preds = %if.then24
  %7 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx18, align 8, !tbaa !32
  %8 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !19
  %call30 = tail call i32 @BN_nnmod(%struct.bignum_st* noundef nonnull %call25, %struct.bignum_st* noundef %7, %struct.bignum_st* noundef %8, %struct.bignum_ctx* noundef %ctx) #13
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup278.sink.split, label %if.end37

if.else:                                          ; preds = %lor.lhs.false21
  %9 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx18, align 8, !tbaa !32
  br label %if.end37

if.end37:                                         ; preds = %if.end28, %if.else
  %call25.sink = phi %struct.bignum_st* [ %9, %if.else ], [ %call25, %if.end28 ]
  %arrayidx34 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %1, i64 %i.0524
  store %struct.bignum_st* %call25.sink, %struct.bignum_st** %arrayidx34, align 8, !tbaa !32
  %arrayidx39 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %1, i64 %i.0524
  %call40517 = tail call i32 @bn_get_top(%struct.bignum_st* noundef %call25.sink) #13
  %cmp42519 = icmp sgt i32 %call40517, 0
  br i1 %cmp42519, label %for.body43, label %iter.check

for.cond93.preheader:                             ; preds = %for.body43
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp94521 = icmp ult i32 %10, 33
  br i1 %cmp94521, label %iter.check, label %for.end101

iter.check:                                       ; preds = %if.end37, %for.cond93.preheader
  %j.0.lcssa551 = phi i64 [ %indvars.iv.next, %for.cond93.preheader ], [ 0, %if.end37 ]
  %11 = and i64 %j.0.lcssa551, 4294967295
  %12 = sub i64 33, %j.0.lcssa551
  %min.iters.check = icmp ult i64 %12, 8
  br i1 %min.iters.check, label %for.body96.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check555 = icmp ult i64 %12, 32
  br i1 %min.iters.check555, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %12, -32
  %13 = add i64 %n.vec, -32
  %14 = lshr exact i64 %13, 5
  %15 = add nuw nsw i64 %14, 1
  %xtraiter = and i64 %15, 3
  %16 = icmp ult i64 %13, 96
  br i1 %16, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %15, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %offset.idx = add i64 %11, %index
  %17 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %offset.idx
  %18 = bitcast i8* %17 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %18, align 1, !tbaa !17
  %19 = getelementptr inbounds i8, i8* %17, i64 16
  %20 = bitcast i8* %19 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %20, align 1, !tbaa !17
  %index.next = or i64 %index, 32
  %offset.idx.1 = add i64 %11, %index.next
  %21 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %offset.idx.1
  %22 = bitcast i8* %21 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %22, align 1, !tbaa !17
  %23 = getelementptr inbounds i8, i8* %21, i64 16
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %24, align 1, !tbaa !17
  %index.next.1 = or i64 %index, 64
  %offset.idx.2 = add i64 %11, %index.next.1
  %25 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %offset.idx.2
  %26 = bitcast i8* %25 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %26, align 1, !tbaa !17
  %27 = getelementptr inbounds i8, i8* %25, i64 16
  %28 = bitcast i8* %27 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %28, align 1, !tbaa !17
  %index.next.2 = or i64 %index, 96
  %offset.idx.3 = add i64 %11, %index.next.2
  %29 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %offset.idx.3
  %30 = bitcast i8* %29 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %30, align 1, !tbaa !17
  %31 = getelementptr inbounds i8, i8* %29, i64 16
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %32, align 1, !tbaa !17
  %index.next.3 = add nuw i64 %index, 128
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !48

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %offset.idx.epil = add i64 %11, %index.epil
  %33 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %offset.idx.epil
  %34 = bitcast i8* %33 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %34, align 1, !tbaa !17
  %35 = getelementptr inbounds i8, i8* %33, i64 16
  %36 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> zeroinitializer, <16 x i8>* %36, align 1, !tbaa !17
  %index.next.epil = add nuw i64 %index.epil, 32
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !49

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %for.end101, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end558 = add i64 %11, %n.vec
  %n.vec.remaining = and i64 %12, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body96.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %37 = sub i64 33, %j.0.lcssa551
  %n.vec557 = and i64 %37, -8
  %ind.end = add i64 %11, %n.vec557
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index560 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next562, %vec.epilog.vector.body ]
  %offset.idx561 = add i64 %11, %index560
  %38 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %offset.idx561
  %39 = bitcast i8* %38 to <8 x i8>*
  store <8 x i8> zeroinitializer, <8 x i8>* %39, align 1, !tbaa !17
  %index.next562 = add nuw i64 %index560, 8
  %40 = icmp eq i64 %index.next562, %n.vec557
  br i1 %40, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n559 = icmp eq i64 %37, %n.vec557
  br i1 %cmp.n559, label %for.end101, label %for.body96.preheader

for.body96.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv543.ph = phi i64 [ %11, %iter.check ], [ %ind.end558, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  br label %for.body96

for.body43:                                       ; preds = %if.end37, %for.body43
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body43 ], [ 0, %if.end37 ]
  %41 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx39, align 8, !tbaa !32
  %call45 = tail call i64* @bn_get_words(%struct.bignum_st* noundef %41) #13
  %42 = lshr exact i64 %indvars.iv, 3
  %arrayidx46 = getelementptr inbounds i64, i64* %call45, i64 %42
  %43 = load i64, i64* %arrayidx46, align 8, !tbaa !28
  %conv = trunc i64 %43 to i8
  %arrayidx50 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %indvars.iv
  store i8 %conv, i8* %arrayidx50, align 1, !tbaa !17
  %shr = lshr i64 %43, 8
  %conv51 = trunc i64 %shr to i8
  %44 = or i64 %indvars.iv, 1
  %arrayidx55 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %44
  store i8 %conv51, i8* %arrayidx55, align 1, !tbaa !17
  %shr56 = lshr i64 %43, 16
  %conv57 = trunc i64 %shr56 to i8
  %45 = or i64 %indvars.iv, 2
  %arrayidx61 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %45
  store i8 %conv57, i8* %arrayidx61, align 1, !tbaa !17
  %shr62 = lshr i64 %43, 24
  %conv63 = trunc i64 %shr62 to i8
  %46 = or i64 %indvars.iv, 3
  %arrayidx67 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %46
  store i8 %conv63, i8* %arrayidx67, align 1, !tbaa !17
  %shr68 = lshr i64 %43, 32
  %conv69 = trunc i64 %shr68 to i8
  %47 = or i64 %indvars.iv, 4
  %arrayidx73 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %47
  store i8 %conv69, i8* %arrayidx73, align 1, !tbaa !17
  %shr74 = lshr i64 %43, 40
  %conv75 = trunc i64 %shr74 to i8
  %48 = or i64 %indvars.iv, 5
  %arrayidx79 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %48
  store i8 %conv75, i8* %arrayidx79, align 1, !tbaa !17
  %shr80 = lshr i64 %43, 48
  %conv81 = trunc i64 %shr80 to i8
  %49 = or i64 %indvars.iv, 6
  %arrayidx85 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %49
  store i8 %conv81, i8* %arrayidx85, align 1, !tbaa !17
  %shr86 = lshr i64 %43, 56
  %conv87 = trunc i64 %shr86 to i8
  %50 = or i64 %indvars.iv, 7
  %arrayidx91 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %50
  store i8 %conv87, i8* %arrayidx91, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %51 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx39, align 8, !tbaa !32
  %call40 = tail call i32 @bn_get_top(%struct.bignum_st* noundef %51) #13
  %mul41 = shl nsw i32 %call40, 3
  %52 = sext i32 %mul41 to i64
  %cmp42 = icmp slt i64 %indvars.iv.next, %52
  br i1 %cmp42, label %for.body43, label %for.cond93.preheader, !llvm.loop !51

for.body96:                                       ; preds = %for.body96.preheader, %for.body96
  %indvars.iv543 = phi i64 [ %indvars.iv.next544, %for.body96 ], [ %indvars.iv543.ph, %for.body96.preheader ]
  %arrayidx99 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.0524, i64 %indvars.iv543
  store i8 0, i8* %arrayidx99, align 1, !tbaa !17
  %indvars.iv.next544 = add nuw nsw i64 %indvars.iv543, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next544, 33
  br i1 %exitcond.not, label %for.end101, label %for.body96, !llvm.loop !52

for.end101:                                       ; preds = %for.body96, %middle.block, %vec.epilog.middle.block, %for.cond93.preheader
  %arrayidx104 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %point, i64 %i.0524
  %53 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx104, align 8, !tbaa !32
  %X105 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %53, i64 0, i32 2
  %54 = load %struct.bignum_st*, %struct.bignum_st** %X105, align 8, !tbaa !13
  %call106 = tail call fastcc i32 @ecp_nistz256_bignum_to_field_elem(i64* noundef nonnull %arraydecay103, %struct.bignum_st* noundef %54) #12
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %cleanup278.sink.split, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %for.end101
  %55 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx104, align 8, !tbaa !32
  %Y112 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %55, i64 0, i32 3
  %56 = load %struct.bignum_st*, %struct.bignum_st** %Y112, align 8, !tbaa !15
  %call113 = tail call fastcc i32 @ecp_nistz256_bignum_to_field_elem(i64* noundef nonnull %arraydecay110, %struct.bignum_st* noundef %56) #12
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %cleanup278.sink.split, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false108
  %57 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx104, align 8, !tbaa !32
  %Z119 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %57, i64 0, i32 4
  %58 = load %struct.bignum_st*, %struct.bignum_st** %Z119, align 8, !tbaa !16
  %call120 = tail call fastcc i32 @ecp_nistz256_bignum_to_field_elem(i64* noundef nonnull %arraydecay117, %struct.bignum_st* noundef %58) #12
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %cleanup278.sink.split, label %for.inc180

for.inc180:                                       ; preds = %lor.lhs.false115
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %4, i32 noundef 1) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef nonnull %arrayidx125, %struct.P256_POINT* noundef nonnull %4) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx125, i32 noundef 2) #13
  tail call void @ecp_nistz256_point_add(%struct.P256_POINT* noundef nonnull %arrayidx128, %struct.P256_POINT* noundef nonnull %arrayidx125, %struct.P256_POINT* noundef nonnull %4) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx128, i32 noundef 3) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef nonnull %arrayidx125, %struct.P256_POINT* noundef nonnull %arrayidx125) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx125, i32 noundef 4) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef nonnull %arrayidx128, %struct.P256_POINT* noundef nonnull %arrayidx128) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx128, i32 noundef 6) #13
  tail call void @ecp_nistz256_point_add(%struct.P256_POINT* noundef nonnull %arrayidx138, %struct.P256_POINT* noundef nonnull %arrayidx125, %struct.P256_POINT* noundef nonnull %4) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx138, i32 noundef 5) #13
  tail call void @ecp_nistz256_point_add(%struct.P256_POINT* noundef nonnull %arrayidx142, %struct.P256_POINT* noundef nonnull %arrayidx128, %struct.P256_POINT* noundef nonnull %4) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx142, i32 noundef 7) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef nonnull %arrayidx125, %struct.P256_POINT* noundef nonnull %arrayidx125) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx125, i32 noundef 8) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef nonnull %arrayidx128, %struct.P256_POINT* noundef nonnull %arrayidx128) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx128, i32 noundef 12) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef nonnull %arrayidx138, %struct.P256_POINT* noundef nonnull %arrayidx138) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx138, i32 noundef 10) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef nonnull %arrayidx142, %struct.P256_POINT* noundef nonnull %arrayidx142) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx142, i32 noundef 14) #13
  tail call void @ecp_nistz256_point_add(%struct.P256_POINT* noundef nonnull %arrayidx128, %struct.P256_POINT* noundef nonnull %arrayidx128, %struct.P256_POINT* noundef nonnull %4) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx128, i32 noundef 13) #13
  tail call void @ecp_nistz256_point_add(%struct.P256_POINT* noundef nonnull %arrayidx138, %struct.P256_POINT* noundef nonnull %arrayidx138, %struct.P256_POINT* noundef nonnull %4) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx138, i32 noundef 11) #13
  tail call void @ecp_nistz256_point_add(%struct.P256_POINT* noundef nonnull %arrayidx142, %struct.P256_POINT* noundef nonnull %arrayidx142, %struct.P256_POINT* noundef nonnull %4) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx142, i32 noundef 15) #13
  tail call void @ecp_nistz256_point_add(%struct.P256_POINT* noundef nonnull %arrayidx128, %struct.P256_POINT* noundef nonnull %arrayidx125, %struct.P256_POINT* noundef nonnull %4) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx128, i32 noundef 9) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef nonnull %arrayidx125, %struct.P256_POINT* noundef nonnull %arrayidx125) #13
  tail call void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef nonnull %arraydecay, %struct.P256_POINT* noundef nonnull %arrayidx125, i32 noundef 16) #13
  %inc181 = add nuw i64 %i.0524, 1
  %exitcond546.not = icmp eq i64 %inc181, %num
  br i1 %exitcond546.not, label %for.end182, label %for.body, !llvm.loop !53

for.end182:                                       ; preds = %for.inc180, %if.end
  %arrayidx186 = getelementptr inbounds i8, i8* %call9, i64 31
  %59 = load i8, i8* %arrayidx186, align 1, !tbaa !17
  %60 = lshr i8 %59, 6
  %shr190 = zext i8 %60 to i32
  %arraydecay193 = bitcast i8* %add.ptr15 to %struct.P256_POINT*
  %call194 = tail call fastcc i32 @_booth_recode_w5(i32 noundef %shr190) #12
  %shr195 = lshr i32 %call194, 1
  tail call void @ecp_nistz256_gather_w5(%struct.P256_POINT* noundef nonnull %4, %struct.P256_POINT* noundef nonnull %arraydecay193, i32 noundef %shr195) #13
  %61 = bitcast %struct.P256_POINT* %r to i8*
  %62 = bitcast %struct.P256_POINT* %4 to i8*
  %call197 = tail call i8* @memcpy(i8* noundef %61, i8* noundef nonnull %62, i64 noundef 96) #13
  %arraydecay229 = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %num, i64 1, i32 1, i64 0
  %arraydecay232 = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %num, i64 0, i32 1, i64 0
  br label %while.body

for.cond246.preheader:                            ; preds = %for.end244
  br i1 %cmp17523.not, label %cleanup278, label %for.body249

while.body:                                       ; preds = %for.end182, %for.end244
  %idx.0529 = phi i32 [ 255, %for.end182 ], [ %sub245, %for.end244 ]
  %cmp200 = icmp eq i32 %idx.0529, 255
  %63 = zext i1 %cmp200 to i64
  %cmp204527 = icmp ult i64 %63, %num
  br i1 %cmp204527, label %for.body206.lr.ph, label %for.end244

for.body206.lr.ph:                                ; preds = %while.body
  %sub207 = add nsw i32 %idx.0529, -1
  %div208 = lshr i32 %sub207, 3
  %idxprom210 = zext i32 %div208 to i64
  %add214 = add nuw nsw i32 %div208, 1
  %idxprom215 = zext i32 %add214 to i64
  %rem219 = and i32 %sub207, 7
  br label %for.body206

for.body206:                                      ; preds = %for.body206.lr.ph, %for.body206
  %i.1528 = phi i64 [ %63, %for.body206.lr.ph ], [ %inc243, %for.body206 ]
  %arrayidx211 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.1528, i64 %idxprom210
  %64 = load i8, i8* %arrayidx211, align 1, !tbaa !17
  %conv212 = zext i8 %64 to i32
  %arrayidx216 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.1528, i64 %idxprom215
  %65 = load i8, i8* %arrayidx216, align 1, !tbaa !17
  %conv217 = zext i8 %65 to i32
  %shl = shl nuw nsw i32 %conv217, 8
  %or = or i32 %shl, %conv212
  %shr220 = lshr i32 %or, %rem219
  %and221 = and i32 %shr220, 63
  %call222 = tail call fastcc i32 @_booth_recode_w5(i32 noundef %and221) #12
  %arraydecay225 = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %i.1528, i64 0
  %shr226 = lshr i32 %call222, 1
  tail call void @ecp_nistz256_gather_w5(%struct.P256_POINT* noundef nonnull %4, %struct.P256_POINT* noundef nonnull %arraydecay225, i32 noundef %shr226) #13
  tail call void @ecp_nistz256_neg(i64* noundef nonnull %arraydecay229, i64* noundef nonnull %arraydecay232) #13
  %and239 = and i32 %call222, 1
  %conv240 = zext i32 %and239 to i64
  tail call fastcc void @copy_conditional(i64* noundef nonnull %arraydecay232, i64* noundef nonnull %arraydecay229, i64 noundef %conv240) #12
  tail call void @ecp_nistz256_point_add(%struct.P256_POINT* noundef %r, %struct.P256_POINT* noundef %r, %struct.P256_POINT* noundef nonnull %4) #13
  %inc243 = add i64 %i.1528, 1
  %exitcond547.not = icmp eq i64 %inc243, %num
  br i1 %exitcond547.not, label %for.end244, label %for.body206, !llvm.loop !54

for.end244:                                       ; preds = %for.body206, %while.body
  %sub245 = add nsw i32 %idx.0529, -5
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef %r, %struct.P256_POINT* noundef %r) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef %r, %struct.P256_POINT* noundef %r) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef %r, %struct.P256_POINT* noundef %r) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef %r, %struct.P256_POINT* noundef %r) #13
  tail call void @ecp_nistz256_point_double(%struct.P256_POINT* noundef %r, %struct.P256_POINT* noundef %r) #13
  %cmp198 = icmp ugt i32 %sub245, 4
  br i1 %cmp198, label %while.body, label %for.cond246.preheader, !llvm.loop !55

for.body249:                                      ; preds = %for.cond246.preheader, %for.body249
  %i.2532 = phi i64 [ %inc276, %for.body249 ], [ 0, %for.cond246.preheader ]
  %arrayidx251 = getelementptr inbounds [33 x i8], [33 x i8]* %0, i64 %i.2532, i64 0
  %66 = load i8, i8* %arrayidx251, align 1, !tbaa !17
  %conv252 = zext i8 %66 to i32
  %shl253 = shl nuw nsw i32 %conv252, 1
  %and254 = and i32 %shl253, 62
  %call255 = tail call fastcc i32 @_booth_recode_w5(i32 noundef %and254) #12
  %arraydecay258 = getelementptr inbounds [16 x %struct.P256_POINT], [16 x %struct.P256_POINT]* %3, i64 %i.2532, i64 0
  %shr259 = lshr i32 %call255, 1
  tail call void @ecp_nistz256_gather_w5(%struct.P256_POINT* noundef nonnull %4, %struct.P256_POINT* noundef nonnull %arraydecay258, i32 noundef %shr259) #13
  tail call void @ecp_nistz256_neg(i64* noundef nonnull %arraydecay229, i64* noundef nonnull %arraydecay232) #13
  %and272 = and i32 %call255, 1
  %conv273 = zext i32 %and272 to i64
  tail call fastcc void @copy_conditional(i64* noundef nonnull %arraydecay232, i64* noundef nonnull %arraydecay229, i64 noundef %conv273) #12
  tail call void @ecp_nistz256_point_add(%struct.P256_POINT* noundef %r, %struct.P256_POINT* noundef %r, %struct.P256_POINT* noundef nonnull %4) #13
  %inc276 = add nuw i64 %i.2532, 1
  %exitcond548.not = icmp eq i64 %inc276, %num
  br i1 %exitcond548.not, label %cleanup278, label %for.body249, !llvm.loop !56

cleanup278.sink.split:                            ; preds = %for.end101, %lor.lhs.false108, %lor.lhs.false115, %if.end28, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false11
  %.sink553 = phi i32 [ 640, %lor.lhs.false11 ], [ 640, %lor.lhs.false6 ], [ 640, %lor.lhs.false ], [ 640, %entry ], [ 657, %if.end28 ], [ 685, %lor.lhs.false115 ], [ 685, %lor.lhs.false108 ], [ 685, %for.end101 ]
  %.sink = phi i32 [ 786688, %lor.lhs.false11 ], [ 786688, %lor.lhs.false6 ], [ 786688, %lor.lhs.false ], [ 786688, %entry ], [ 524291, %if.end28 ], [ 146, %lor.lhs.false115 ], [ 146, %lor.lhs.false108 ], [ 146, %for.end101 ]
  %p_str.1.ph = phi [33 x i8]* [ %0, %lor.lhs.false11 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %0, %if.end28 ], [ %0, %lor.lhs.false115 ], [ %0, %lor.lhs.false108 ], [ %0, %for.end101 ]
  %.ph = phi i8* [ null, %lor.lhs.false11 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call13, %if.end28 ], [ %call13, %lor.lhs.false115 ], [ %call13, %lor.lhs.false108 ], [ %call13, %for.end101 ]
  %table_storage.1.ph = phi i8* [ %call, %lor.lhs.false11 ], [ %call, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call, %if.end28 ], [ %call, %lor.lhs.false115 ], [ %call, %lor.lhs.false108 ], [ %call, %for.end101 ]
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink553, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ecp_nistz256_windowed_mul, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #13
  br label %cleanup278

cleanup278:                                       ; preds = %if.then24, %for.body249, %cleanup278.sink.split, %for.cond246.preheader
  %p_str.1 = phi [33 x i8]* [ %0, %for.cond246.preheader ], [ %p_str.1.ph, %cleanup278.sink.split ], [ %0, %for.body249 ], [ %0, %if.then24 ]
  %67 = phi i8* [ %call13, %for.cond246.preheader ], [ %.ph, %cleanup278.sink.split ], [ %call13, %for.body249 ], [ %call13, %if.then24 ]
  %table_storage.1 = phi i8* [ %call, %for.cond246.preheader ], [ %table_storage.1.ph, %cleanup278.sink.split ], [ %call, %for.body249 ], [ %call, %if.then24 ]
  %ret.0 = phi i32 [ 1, %for.cond246.preheader ], [ 0, %cleanup278.sink.split ], [ 1, %for.body249 ], [ 0, %if.then24 ]
  tail call void @CRYPTO_free(i8* noundef %table_storage.1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 783) #13
  %68 = getelementptr [33 x i8], [33 x i8]* %p_str.1, i64 0, i64 0
  tail call void @CRYPTO_free(i8* noundef %68, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 784) #13
  tail call void @CRYPTO_free(i8* noundef %67, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 785) #13
  ret i32 %ret.0
}

declare void @ecp_nistz256_point_add(%struct.P256_POINT* noundef, %struct.P256_POINT* noundef, %struct.P256_POINT* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @is_one(%struct.bignum_st* noundef %z) unnamed_addr #3 {
entry:
  %call = tail call i64* @bn_get_words(%struct.bignum_st* noundef %z) #13
  %call1 = tail call i32 @bn_get_top(%struct.bignum_st* noundef %z) #13
  %cmp = icmp eq i32 %call1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast i64* %call to <4 x i64>*
  %1 = load <4 x i64>, <4 x i64>* %0, align 8, !tbaa !28
  %2 = xor <4 x i64> %1, <i64 1, i64 -4294967296, i64 -1, i64 4294967294>
  %3 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %2)
  %call10 = tail call fastcc i64 @is_zero(i64 noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %res.0 = phi i64 [ %call10, %if.then ], [ 0, %entry ]
  ret i64 %res.0
}

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i64 @is_equal(i64* nocapture noundef readonly %a, i64* nocapture noundef readonly %b) unnamed_addr #9 {
entry:
  %0 = bitcast i64* %a to <4 x i64>*
  %1 = load <4 x i64>, <4 x i64>* %0, align 8, !tbaa !28
  %2 = bitcast i64* %b to <4 x i64>*
  %3 = load <4 x i64>, <4 x i64>* %2, align 8, !tbaa !28
  %4 = xor <4 x i64> %3, %1
  %5 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %4)
  %call = tail call fastcc i64 @is_zero(i64 noundef %5) #12
  ret i64 %call
}

declare void @ecp_nistz256_scatter_w5(%struct.P256_POINT* noundef, %struct.P256_POINT* noundef, i32 noundef) local_unnamed_addr #4

declare void @ecp_nistz256_point_double(%struct.P256_POINT* noundef, %struct.P256_POINT* noundef) local_unnamed_addr #4

declare void @ecp_nistz256_gather_w5(%struct.P256_POINT* noundef, %struct.P256_POINT* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @_booth_recode_w5(i32 noundef %in) unnamed_addr #5 {
entry:
  %shr = lshr i32 %in, 5
  %sub = add nsw i32 %shr, -1
  %neg = sub nsw i32 0, %shr
  %sub2 = sub i32 63, %in
  %and = and i32 %sub2, %neg
  %and4 = and i32 %sub, %in
  %or = or i32 %and4, %and
  %and6 = shl i32 %or, 1
  %add18 = and i32 %and6, 2
  %shr519 = add i32 %add18, %or
  %shl = and i32 %shr519, -2
  %and7 = and i32 %neg, 1
  %add8 = or i32 %shl, %and7
  ret i32 %add8
}

declare void @EC_pre_comp_free(%struct.ec_group_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.nistz256_pre_comp_st* @ecp_nistz256_pre_comp_new(%struct.ec_group_st* noundef %group) unnamed_addr #3 {
entry:
  %tobool.not = icmp eq %struct.ec_group_st* %group, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1226) #13
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1229, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ecp_nistz256_pre_comp_new, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = bitcast i8* %call to %struct.nistz256_pre_comp_st*
  %group3 = bitcast i8* %call to %struct.ec_group_st**
  store %struct.ec_group_st* %group, %struct.ec_group_st** %group3, align 8, !tbaa !40
  %w = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %w to i64*
  store i64 6, i64* %1, align 8, !tbaa !41
  %references = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %2 seq_cst, align 4, !tbaa !57
  %call4 = tail call i8* @CRYPTO_THREAD_lock_new() #13
  %lock = getelementptr inbounds i8, i8* %call, i64 40
  %3 = bitcast i8* %lock to i8**
  store i8* %call4, i8** %3, align 8, !tbaa !12
  %cmp6 = icmp eq i8* %call4, null
  br i1 %cmp6, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end2
  tail call void @ERR_new() #13
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1239, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ecp_nistz256_pre_comp_new, i64 0, i64 0)) #13
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #13
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 noundef 1240) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry, %if.then7, %if.then1
  %retval.0 = phi %struct.nistz256_pre_comp_st* [ null, %if.then1 ], [ null, %if.then7 ], [ null, %entry ], [ %0, %if.end2 ]
  ret %struct.nistz256_pre_comp_st* %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #4

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @EC_POINT_copy(%struct.ec_point_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #4

declare void @ecp_nistz256_scatter_w7(%struct.P256_POINT_AFFINE* noundef, %struct.P256_POINT_AFFINE* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @EC_POINT_dbl(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i32 @EC_POINT_add(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #4

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #4

declare void @ecp_nistz256_ord_mul_mont(i64* noundef, i64* noundef, i64* noundef) local_unnamed_addr #4

declare void @ecp_nistz256_ord_sqr_mont(i64* noundef, i64* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #10

attributes #0 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }

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
!8 = !{!9, !10, i64 24}
!9 = !{!"nistz256_pre_comp_st", !10, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !10, i64 40}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !10, i64 40}
!13 = !{!14, !10, i64 16}
!14 = !{!"ec_point_st", !10, i64 0, !5, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40}
!15 = !{!14, !10, i64 24}
!16 = !{!14, !10, i64 32}
!17 = !{!6, !6, i64 0}
!18 = !{!9, !10, i64 16}
!19 = !{!20, !10, i64 16}
!20 = !{!"ec_group_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !6, i64 44, !10, i64 48, !11, i64 56, !10, i64 64, !6, i64 72, !10, i64 96, !10, i64 104, !5, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !6, i64 152, !6, i64 160, !10, i64 168, !10, i64 176}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !22, !23, !27}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!11, !11, i64 0}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22, !27, !23}
!31 = distinct !{!31, !22}
!32 = !{!10, !10, i64 0}
!33 = !{!14, !5, i64 40}
!34 = !{!20, !10, i64 168}
!35 = distinct !{!35, !22}
!36 = !{!20, !10, i64 0}
!37 = !{!38, !10, i64 208}
!38 = !{!"ec_method_st", !5, i64 0, !5, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !10, i64 384, !10, i64 392, !10, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !10, i64 432}
!39 = distinct !{!39, !22}
!40 = !{!9, !10, i64 0}
!41 = !{!9, !11, i64 8}
!42 = !{!20, !6, i64 152}
!43 = !{!44, !6, i64 0}
!44 = !{!"", !6, i64 0, !6, i64 1}
!45 = !{!44, !6, i64 1}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22, !23}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !22, !23, !27}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22, !27, !23}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = !{!9, !6, i64 32}
