; ModuleID = 'crypto/ec/ec2_smpl.c'
source_filename = "crypto/ec/ec2_smpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, {}*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
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

@.str = private unnamed_addr constant [21 x i8] c"crypto/ec/ec2_smpl.c\00", align 1
@__func__.ossl_ec_GF2m_simple_group_set_curve = private unnamed_addr constant [36 x i8] c"ossl_ec_GF2m_simple_group_set_curve\00", align 1
@__func__.ossl_ec_GF2m_simple_group_check_discriminant = private unnamed_addr constant [45 x i8] c"ossl_ec_GF2m_simple_group_check_discriminant\00", align 1
@__func__.ossl_ec_GF2m_simple_point_set_affine_coordinates = private unnamed_addr constant [49 x i8] c"ossl_ec_GF2m_simple_point_set_affine_coordinates\00", align 1
@__func__.ossl_ec_GF2m_simple_point_get_affine_coordinates = private unnamed_addr constant [49 x i8] c"ossl_ec_GF2m_simple_point_get_affine_coordinates\00", align 1
@EC_GF2m_simple_method.ret = internal constant { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* } { i32 1, i32 407, i32 (%struct.ec_group_st*)* @ossl_ec_GF2m_simple_group_init, void (%struct.ec_group_st*)* @ossl_ec_GF2m_simple_group_finish, void (%struct.ec_group_st*)* @ossl_ec_GF2m_simple_group_clear_finish, i32 (%struct.ec_group_st*, %struct.ec_group_st*)* @ossl_ec_GF2m_simple_group_copy, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_group_set_curve, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_group_get_curve, i32 (%struct.ec_group_st*)* @ossl_ec_GF2m_simple_group_get_degree, i32 (%struct.ec_group_st*)* @ossl_ec_group_simple_order_bits, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_group_check_discriminant, i32 (%struct.ec_point_st*)* @ossl_ec_GF2m_simple_point_init, void (%struct.ec_point_st*)* @ossl_ec_GF2m_simple_point_finish, void (%struct.ec_point_st*)* @ossl_ec_GF2m_simple_point_clear_finish, i32 (%struct.ec_point_st*, %struct.ec_point_st*)* @ossl_ec_GF2m_simple_point_copy, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ossl_ec_GF2m_simple_point_set_to_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_point_set_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_point_get_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)* null, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_add, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_dbl, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_invert, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ossl_ec_GF2m_simple_is_at_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_is_on_curve, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_cmp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_make_affine, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_points_make_affine, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)* @ec_GF2m_simple_points_mul, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_field_mul, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_field_sqr, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GF2m_simple_field_div, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GF2m_simple_field_inv, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i64 (%struct.ec_key_st*, i8*, i64)* @ossl_ec_key_simple_priv2oct, i32 (%struct.ec_key_st*, i8*, i64)* @ossl_ec_key_simple_oct2priv, i32 (%struct.ec_key_st*, %struct.bignum_st*)* null, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_generate_key, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_check_key, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_generate_public_key, i32 (%struct.ec_key_st*, %struct.ec_key_st*)* null, void (%struct.ec_key_st*)* null, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* @ossl_ecdh_simple_compute_key, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* @ossl_ecdsa_simple_sign_setup, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* @ossl_ecdsa_simple_sign_sig, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* @ossl_ecdsa_simple_verify_sig, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GF2m_simple_ladder_pre, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GF2m_simple_ladder_step, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GF2m_simple_ladder_post }, align 8
@__func__.ec_GF2m_simple_points_mul = private unnamed_addr constant [26 x i8] c"ec_GF2m_simple_points_mul\00", align 1
@__func__.ec_GF2m_simple_field_inv = private unnamed_addr constant [25 x i8] c"ec_GF2m_simple_field_inv\00", align 1
@__func__.ec_GF2m_simple_ladder_pre = private unnamed_addr constant [26 x i8] c"ec_GF2m_simple_ladder_pre\00", align 1
@__func__.ec_GF2m_simple_ladder_post = private unnamed_addr constant [27 x i8] c"ec_GF2m_simple_ladder_post\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_group_init(%struct.ec_group_st* nocapture noundef %group) #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #3
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  store %struct.bignum_st* %call, %struct.bignum_st** %field, align 8, !tbaa !4
  %call1 = tail call %struct.bignum_st* @BN_new() #3
  %a = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 12
  store %struct.bignum_st* %call1, %struct.bignum_st** %a, align 8, !tbaa !11
  %call2 = tail call %struct.bignum_st* @BN_new() #3
  %b = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  store %struct.bignum_st* %call2, %struct.bignum_st** %b, align 8, !tbaa !12
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !11
  %cmp5 = icmp eq %struct.bignum_st* %1, null
  %cmp8 = icmp eq %struct.bignum_st* %call2, null
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @BN_free(%struct.bignum_st* noundef %0) #3
  %2 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !11
  tail call void @BN_free(%struct.bignum_st* noundef %2) #3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !12
  tail call void @BN_free(%struct.bignum_st* noundef %3) #3
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ossl_ec_GF2m_simple_group_finish(%struct.ec_group_st* nocapture noundef readonly %group) #0 {
entry:
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  tail call void @BN_free(%struct.bignum_st* noundef %0) #3
  %a = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 12
  %1 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !11
  tail call void @BN_free(%struct.bignum_st* noundef %1) #3
  %b = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  %2 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !12
  tail call void @BN_free(%struct.bignum_st* noundef %2) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_ec_GF2m_simple_group_clear_finish(%struct.ec_group_st* nocapture noundef %group) #0 {
entry:
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #3
  %a = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 12
  %1 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !11
  tail call void @BN_clear_free(%struct.bignum_st* noundef %1) #3
  %b = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  %2 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !12
  tail call void @BN_clear_free(%struct.bignum_st* noundef %2) #3
  %arrayidx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 0
  %3 = bitcast i32* %arrayidx to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %3, align 8, !tbaa !13
  %arrayidx8 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 4
  store i32 0, i32* %arrayidx8, align 8, !tbaa !13
  %arrayidx10 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 5
  store i32 -1, i32* %arrayidx10, align 4, !tbaa !13
  ret void
}

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_group_copy(%struct.ec_group_st* nocapture noundef %dest, %struct.ec_group_st* nocapture noundef readonly %src) #0 {
entry:
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  %field1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 10
  %1 = load %struct.bignum_st*, %struct.bignum_st** %field1, align 8, !tbaa !4
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %0, %struct.bignum_st* noundef %1) #3
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %a = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 12
  %2 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !11
  %a2 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 12
  %3 = load %struct.bignum_st*, %struct.bignum_st** %a2, align 8, !tbaa !11
  %call3 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3) #3
  %tobool4.not = icmp eq %struct.bignum_st* %call3, null
  br i1 %tobool4.not, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %b = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 13
  %4 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !12
  %b7 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 13
  %5 = load %struct.bignum_st*, %struct.bignum_st** %b7, align 8, !tbaa !12
  %call8 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5) #3
  %tobool9.not = icmp eq %struct.bignum_st* %call8, null
  br i1 %tobool9.not, label %return, label %if.end11

if.end11:                                         ; preds = %if.end6
  %arrayidx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 11, i64 0
  %6 = load i32, i32* %arrayidx, align 8, !tbaa !13
  %arrayidx13 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 11, i64 0
  store i32 %6, i32* %arrayidx13, align 8, !tbaa !13
  %arrayidx15 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 11, i64 1
  %7 = load i32, i32* %arrayidx15, align 4, !tbaa !13
  %arrayidx17 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 11, i64 1
  store i32 %7, i32* %arrayidx17, align 4, !tbaa !13
  %arrayidx19 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 11, i64 2
  %8 = load i32, i32* %arrayidx19, align 8, !tbaa !13
  %arrayidx21 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 11, i64 2
  store i32 %8, i32* %arrayidx21, align 8, !tbaa !13
  %arrayidx23 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 11, i64 3
  %9 = load i32, i32* %arrayidx23, align 4, !tbaa !13
  %arrayidx25 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 11, i64 3
  store i32 %9, i32* %arrayidx25, align 4, !tbaa !13
  %arrayidx27 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 11, i64 4
  %10 = load i32, i32* %arrayidx27, align 8, !tbaa !13
  %arrayidx29 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 11, i64 4
  store i32 %10, i32* %arrayidx29, align 8, !tbaa !13
  %arrayidx31 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 11, i64 5
  %11 = load i32, i32* %arrayidx31, align 4, !tbaa !13
  %arrayidx33 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 11, i64 5
  store i32 %11, i32* %arrayidx33, align 4, !tbaa !13
  %12 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !11
  %sub = add nsw i32 %6, 63
  %div = sdiv i32 %sub, 64
  %call37 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %12, i32 noundef %div) #3
  %cmp = icmp eq %struct.bignum_st* %call37, null
  br i1 %cmp, label %return, label %if.end39

if.end39:                                         ; preds = %if.end11
  %13 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !12
  %14 = load i32, i32* %arrayidx13, align 8, !tbaa !13
  %sub44 = add nsw i32 %14, 63
  %div45 = sdiv i32 %sub44, 64
  %call46 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %13, i32 noundef %div45) #3
  %cmp47 = icmp eq %struct.bignum_st* %call46, null
  br i1 %cmp47, label %return, label %if.end49

if.end49:                                         ; preds = %if.end39
  %15 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !11
  tail call void @bn_set_all_zero(%struct.bignum_st* noundef %15) #3
  %16 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !12
  tail call void @bn_set_all_zero(%struct.bignum_st* noundef %16) #3
  br label %return

return:                                           ; preds = %if.end39, %if.end11, %if.end6, %if.end, %entry, %if.end49
  %retval.0 = phi i32 [ 1, %if.end49 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end6 ], [ 0, %if.end11 ], [ 0, %if.end39 ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @bn_set_all_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_group_set_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* nocapture readnone %ctx) #0 {
entry:
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %0, %struct.bignum_st* noundef %p) #3
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 0
  %call2 = tail call i32 @BN_GF2m_poly2arr(%struct.bignum_st* noundef %1, i32* noundef nonnull %arraydecay, i32 noundef 6) #3
  switch i32 %call2, label %if.then4 [
    i32 6, label %if.end5
    i32 4, label %if.end5
  ]

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.ossl_ec_GF2m_simple_group_set_curve, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 131, i8* noundef null) #3
  br label %err

if.end5:                                          ; preds = %if.end, %if.end
  %a6 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 12
  %2 = load %struct.bignum_st*, %struct.bignum_st** %a6, align 8, !tbaa !11
  %call9 = tail call i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %a, i32* noundef nonnull %arraydecay) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end5
  %3 = load %struct.bignum_st*, %struct.bignum_st** %a6, align 8, !tbaa !11
  %4 = load i32, i32* %arraydecay, align 8, !tbaa !13
  %sub15 = add nsw i32 %4, 63
  %div = sdiv i32 %sub15, 64
  %call16 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %3, i32 noundef %div) #3
  %cmp17 = icmp eq %struct.bignum_st* %call16, null
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.end12
  %5 = load %struct.bignum_st*, %struct.bignum_st** %a6, align 8, !tbaa !11
  tail call void @bn_set_all_zero(%struct.bignum_st* noundef %5) #3
  %b21 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  %6 = load %struct.bignum_st*, %struct.bignum_st** %b21, align 8, !tbaa !12
  %call24 = tail call i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef %6, %struct.bignum_st* noundef %b, i32* noundef nonnull %arraydecay) #3
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end19
  %7 = load %struct.bignum_st*, %struct.bignum_st** %b21, align 8, !tbaa !12
  %8 = load i32, i32* %arraydecay, align 8, !tbaa !13
  %sub32 = add nsw i32 %8, 63
  %div33 = sdiv i32 %sub32, 64
  %call34 = tail call %struct.bignum_st* @bn_wexpand(%struct.bignum_st* noundef %7, i32 noundef %div33) #3
  %cmp35 = icmp eq %struct.bignum_st* %call34, null
  br i1 %cmp35, label %err, label %if.end37

if.end37:                                         ; preds = %if.end27
  %9 = load %struct.bignum_st*, %struct.bignum_st** %b21, align 8, !tbaa !12
  tail call void @bn_set_all_zero(%struct.bignum_st* noundef %9) #3
  br label %err

err:                                              ; preds = %if.end27, %if.end19, %if.end12, %if.end5, %entry, %if.end37, %if.then4
  %ret.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.end12 ], [ 0, %if.end27 ], [ 1, %if.end37 ], [ 0, %if.end19 ], [ 0, %if.end5 ], [ 0, %entry ]
  ret i32 %ret.0
}

declare i32 @BN_GF2m_poly2arr(%struct.bignum_st* noundef, i32* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_group_get_curve(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* nocapture readnone %ctx) #0 {
entry:
  %cmp.not = icmp eq %struct.bignum_st* %p, null
  br i1 %cmp.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %p, %struct.bignum_st* noundef %0) #3
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.then, %entry
  %cmp3.not = icmp eq %struct.bignum_st* %a, null
  br i1 %cmp3.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.end2
  %a5 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 12
  %1 = load %struct.bignum_st*, %struct.bignum_st** %a5, align 8, !tbaa !11
  %call6 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef %1) #3
  %tobool7.not = icmp eq %struct.bignum_st* %call6, null
  br i1 %tobool7.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.then4, %if.end2
  %cmp11.not = icmp eq %struct.bignum_st* %b, null
  br i1 %cmp11.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end10
  %b13 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  %2 = load %struct.bignum_st*, %struct.bignum_st** %b13, align 8, !tbaa !12
  %call14 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %b, %struct.bignum_st* noundef %2) #3
  %tobool15.not = icmp eq %struct.bignum_st* %call14, null
  br i1 %tobool15.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then4, %if.then12, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end18 ], [ 0, %if.then12 ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_group_get_degree(%struct.ec_group_st* nocapture noundef readonly %group) #0 {
entry:
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #3
  %sub = add nsw i32 %call, -1
  ret i32 %sub
}

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_group_check_discriminant(%struct.ec_group_st* noundef %group, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %cmp1 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 191, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__func__.ossl_ec_GF2m_simple_group_check_discriminant, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #3
  br label %err

if.end3:                                          ; preds = %if.then, %entry
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ %ctx, %entry ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ null, %entry ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp5 = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %b8 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  %0 = load %struct.bignum_st*, %struct.bignum_st** %b8, align 8, !tbaa !12
  %arraydecay = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 0
  %call9 = tail call i32 @BN_GF2m_mod_arr(%struct.bignum_st* noundef nonnull %call4, %struct.bignum_st* noundef %0, i32* noundef nonnull %arraydecay) #3
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call4) #3
  %tobool13.not = icmp eq i32 %call12, 0
  %spec.select = zext i1 %tobool13.not to i32
  br label %err

err:                                              ; preds = %if.end11, %if.end7, %if.end3, %if.then2
  %ret.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end3 ], [ 0, %if.end7 ], [ %spec.select, %if.end11 ]
  %ctx.addr.1 = phi %struct.bignum_ctx* [ null, %if.then2 ], [ %ctx.addr.0, %if.end3 ], [ %ctx.addr.0, %if.end7 ], [ %ctx.addr.0, %if.end11 ]
  %new_ctx.1 = phi %struct.bignum_ctx* [ null, %if.then2 ], [ %new_ctx.0, %if.end3 ], [ %new_ctx.0, %if.end7 ], [ %new_ctx.0, %if.end11 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx.addr.1) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.1) #3
  ret i32 %ret.0
}

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_point_init(%struct.ec_point_st* nocapture noundef %point) #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #3
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  store %struct.bignum_st* %call, %struct.bignum_st** %X, align 8, !tbaa !14
  %call1 = tail call %struct.bignum_st* @BN_new() #3
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  store %struct.bignum_st* %call1, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call2 = tail call %struct.bignum_st* @BN_new() #3
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  store %struct.bignum_st* %call2, %struct.bignum_st** %Z, align 8, !tbaa !17
  %0 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %cmp5 = icmp eq %struct.bignum_st* %1, null
  %cmp8 = icmp eq %struct.bignum_st* %call2, null
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then, label %return

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @BN_free(%struct.bignum_st* noundef %0) #3
  %2 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  tail call void @BN_free(%struct.bignum_st* noundef %2) #3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  tail call void @BN_free(%struct.bignum_st* noundef %3) #3
  br label %return

return:                                           ; preds = %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_ec_GF2m_simple_point_finish(%struct.ec_point_st* nocapture noundef readonly %point) #0 {
entry:
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  tail call void @BN_free(%struct.bignum_st* noundef %0) #3
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %1 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  tail call void @BN_free(%struct.bignum_st* noundef %1) #3
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %2 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  tail call void @BN_free(%struct.bignum_st* noundef %2) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_ec_GF2m_simple_point_clear_finish(%struct.ec_point_st* nocapture noundef %point) #0 {
entry:
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #3
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %1 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  tail call void @BN_clear_free(%struct.bignum_st* noundef %1) #3
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %2 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  tail call void @BN_clear_free(%struct.bignum_st* noundef %2) #3
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 5
  store i32 0, i32* %Z_is_one, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_point_copy(%struct.ec_point_st* nocapture noundef %dest, %struct.ec_point_st* nocapture noundef readonly %src) #0 {
entry:
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %dest, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %X1 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %src, i64 0, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %X1, align 8, !tbaa !14
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %0, %struct.bignum_st* noundef %1) #3
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %dest, i64 0, i32 3
  %2 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %Y2 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %src, i64 0, i32 3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %Y2, align 8, !tbaa !16
  %call3 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3) #3
  %tobool4.not = icmp eq %struct.bignum_st* %call3, null
  br i1 %tobool4.not, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %dest, i64 0, i32 4
  %4 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %Z7 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %src, i64 0, i32 4
  %5 = load %struct.bignum_st*, %struct.bignum_st** %Z7, align 8, !tbaa !17
  %call8 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5) #3
  %tobool9.not = icmp eq %struct.bignum_st* %call8, null
  br i1 %tobool9.not, label %return, label %if.end11

if.end11:                                         ; preds = %if.end6
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %src, i64 0, i32 5
  %6 = load i32, i32* %Z_is_one, align 8, !tbaa !18
  %Z_is_one12 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %dest, i64 0, i32 5
  store i32 %6, i32* %Z_is_one12, align 8, !tbaa !18
  %curve_name = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %src, i64 0, i32 1
  %7 = load i32, i32* %curve_name, align 8, !tbaa !19
  %curve_name13 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %dest, i64 0, i32 1
  store i32 %7, i32* %curve_name13, align 8, !tbaa !19
  br label %return

return:                                           ; preds = %if.end6, %if.end, %entry, %if.end11
  %retval.0 = phi i32 [ 1, %if.end11 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_point_set_to_infinity(%struct.ec_group_st* nocapture readnone %group, %struct.ec_point_st* nocapture noundef %point) #0 {
entry:
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 5
  store i32 0, i32* %Z_is_one, align 8, !tbaa !18
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %0 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %0) #3
  ret i32 1
}

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_point_set_affine_coordinates(%struct.ec_group_st* nocapture readnone %group, %struct.ec_point_st* nocapture noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* nocapture readnone %ctx) #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %x, null
  %cmp1 = icmp eq %struct.bignum_st* %y, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__func__.ossl_ec_GF2m_simple_point_set_affine_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %0, %struct.bignum_st* noundef nonnull %x) #3
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  tail call void @BN_set_negative(%struct.bignum_st* noundef %1, i32 noundef 0) #3
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %2 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call5 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef nonnull %y) #3
  %tobool6.not = icmp eq %struct.bignum_st* %call5, null
  br i1 %tobool6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  tail call void @BN_set_negative(%struct.bignum_st* noundef %3, i32 noundef 0) #3
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %4 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call10 = tail call %struct.bignum_st* @BN_value_one() #3
  %call11 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %4, %struct.bignum_st* noundef %call10) #3
  %tobool12.not = icmp eq %struct.bignum_st* %call11, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end8
  %5 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  tail call void @BN_set_negative(%struct.bignum_st* noundef %5, i32 noundef 0) #3
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 5
  store i32 1, i32* %Z_is_one, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end, %if.end3, %if.end8, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end14 ], [ 0, %if.end8 ], [ 0, %if.end3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare void @BN_set_negative(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_point_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* nocapture readnone %ctx) #0 {
entry:
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__func__.ossl_ec_GF2m_simple_point_get_affine_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 106, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %0 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call1 = tail call %struct.bignum_st* @BN_value_one() #3
  %call2 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %0, %struct.bignum_st* noundef %call1) #3
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__func__.ossl_ec_GF2m_simple_point_get_affine_coordinates, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #3
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cmp.not = icmp eq %struct.bignum_st* %x, null
  br i1 %cmp.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end5
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %call7 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %x, %struct.bignum_st* noundef %1) #3
  %tobool8.not = icmp eq %struct.bignum_st* %call7, null
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.then6
  tail call void @BN_set_negative(%struct.bignum_st* noundef nonnull %x, i32 noundef 0) #3
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end5
  %cmp12.not = icmp eq %struct.bignum_st* %y, null
  br i1 %cmp12.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.end11
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %2 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call14 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %y, %struct.bignum_st* noundef %2) #3
  %tobool15.not = icmp eq %struct.bignum_st* %call14, null
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.then13
  tail call void @BN_set_negative(%struct.bignum_st* noundef nonnull %y, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then13, %if.end17, %if.end11, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then13 ], [ 0, %if.then6 ], [ 1, %if.end17 ], [ 1, %if.end11 ]
  ret i32 %retval.0
}

declare i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_add(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %a, %struct.ec_point_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %a) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %b) #3
  %tobool2.not = icmp ne i32 %call1, 0
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call5 = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %b) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end4
  %call8 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %a) #3
  %tobool9.not = icmp ne i32 %call8, 0
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end12
  %call14 = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %cmp15 = icmp eq %struct.bignum_ctx* %call14, null
  br i1 %cmp15, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end12
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call14, %if.then13 ], [ %ctx, %if.end12 ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call14, %if.then13 ], [ null, %if.end12 ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call19 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call20 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call21 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call22 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call23 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call24 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call25 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call26 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp27 = icmp eq %struct.bignum_st* %call26, null
  br i1 %cmp27, label %err, label %if.end29

if.end29:                                         ; preds = %if.end18
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %a, i64 0, i32 5
  %0 = load i32, i32* %Z_is_one, align 8, !tbaa !18
  %tobool30.not = icmp eq i32 %0, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end29
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %a, i64 0, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %call32 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %1) #3
  %tobool33.not = icmp eq %struct.bignum_st* %call32, null
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.then31
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %a, i64 0, i32 3
  %2 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call36 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %2) #3
  %tobool37.not = icmp eq %struct.bignum_st* %call36, null
  br i1 %tobool37.not, label %err, label %if.end44

if.else:                                          ; preds = %if.end29
  %call40 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %a, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call20, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %if.end44

if.end44:                                         ; preds = %if.else, %if.end35
  %Z_is_one45 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %b, i64 0, i32 5
  %3 = load i32, i32* %Z_is_one45, align 8, !tbaa !18
  %tobool46.not = icmp eq i32 %3, 0
  br i1 %tobool46.not, label %if.else58, label %if.then47

if.then47:                                        ; preds = %if.end44
  %X48 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %b, i64 0, i32 2
  %4 = load %struct.bignum_st*, %struct.bignum_st** %X48, align 8, !tbaa !14
  %call49 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %4) #3
  %tobool50.not = icmp eq %struct.bignum_st* %call49, null
  br i1 %tobool50.not, label %err, label %if.end52

if.end52:                                         ; preds = %if.then47
  %Y53 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %b, i64 0, i32 3
  %5 = load %struct.bignum_st*, %struct.bignum_st** %Y53, align 8, !tbaa !16
  %call54 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %5) #3
  %tobool55.not = icmp eq %struct.bignum_st* %call54, null
  br i1 %tobool55.not, label %err, label %if.end63

if.else58:                                        ; preds = %if.end44
  %call59 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %b, %struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %call22, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %if.end63

if.end63:                                         ; preds = %if.else58, %if.end52
  %call64 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call21) #3
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.else97, label %if.then66

if.then66:                                        ; preds = %if.end63
  %call67 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef nonnull %call26, %struct.bignum_st* noundef %call19, %struct.bignum_st* noundef %call21) #3
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %if.end70

if.end70:                                         ; preds = %if.then66
  %call71 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call25, %struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %call22) #3
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %err, label %if.end74

if.end74:                                         ; preds = %if.end70
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %6 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_div = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %6, i64 0, i32 34
  %7 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_div, align 8, !tbaa !21
  %call75 = tail call i32 %7(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %call25, %struct.bignum_st* noundef %call25, %struct.bignum_st* noundef nonnull %call26, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %if.end78

if.end78:                                         ; preds = %if.end74
  %8 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_sqr = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %8, i64 0, i32 33
  %9 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr, align 8, !tbaa !23
  %call80 = tail call i32 %9(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call25, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %if.end83

if.end83:                                         ; preds = %if.end78
  %a84 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 12
  %10 = load %struct.bignum_st*, %struct.bignum_st** %a84, align 8, !tbaa !11
  %call85 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %10) #3
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %if.end88

if.end88:                                         ; preds = %if.end83
  %call89 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call25) #3
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %if.end92

if.end92:                                         ; preds = %if.end88
  %call93 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef nonnull %call26) #3
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %if.end133

if.else97:                                        ; preds = %if.end63
  %call98 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %call22) #3
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %lor.lhs.false, label %if.then102

lor.lhs.false:                                    ; preds = %if.else97
  %call100 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call21) #3
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end107, label %if.then102

if.then102:                                       ; preds = %lor.lhs.false, %if.else97
  %call103 = tail call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r) #3
  %tobool104.not = icmp ne i32 %call103, 0
  br label %err

if.end107:                                        ; preds = %lor.lhs.false
  %meth108 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %11 = load %struct.ec_method_st*, %struct.ec_method_st** %meth108, align 8, !tbaa !20
  %field_div109 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %11, i64 0, i32 34
  %12 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_div109, align 8, !tbaa !21
  %call110 = tail call i32 %12(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %call25, %struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %call21, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %if.end113

if.end113:                                        ; preds = %if.end107
  %call114 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call25, %struct.bignum_st* noundef %call25, %struct.bignum_st* noundef %call21) #3
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %if.end117

if.end117:                                        ; preds = %if.end113
  %13 = load %struct.ec_method_st*, %struct.ec_method_st** %meth108, align 8, !tbaa !20
  %field_sqr119 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %13, i64 0, i32 33
  %14 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr119, align 8, !tbaa !23
  %call120 = tail call i32 %14(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call25, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %err, label %if.end123

if.end123:                                        ; preds = %if.end117
  %call124 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call25) #3
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %err, label %if.end127

if.end127:                                        ; preds = %if.end123
  %a128 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 12
  %15 = load %struct.bignum_st*, %struct.bignum_st** %a128, align 8, !tbaa !11
  %call129 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %15) #3
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %err, label %if.end133

if.end133:                                        ; preds = %if.end127, %if.end92
  %call134 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call24, %struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %call23) #3
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %err, label %if.end137

if.end137:                                        ; preds = %if.end133
  %meth138 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %16 = load %struct.ec_method_st*, %struct.ec_method_st** %meth138, align 8, !tbaa !20
  %field_mul = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %16, i64 0, i32 32
  %17 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul, align 8, !tbaa !24
  %call139 = tail call i32 %17(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call24, %struct.bignum_st* noundef %call24, %struct.bignum_st* noundef %call25, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %err, label %if.end142

if.end142:                                        ; preds = %if.end137
  %call143 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call24, %struct.bignum_st* noundef %call24, %struct.bignum_st* noundef %call23) #3
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %err, label %if.end146

if.end146:                                        ; preds = %if.end142
  %call147 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call24, %struct.bignum_st* noundef %call24, %struct.bignum_st* noundef %call22) #3
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %err, label %if.end150

if.end150:                                        ; preds = %if.end146
  %call151 = tail call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call24, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool152.not = icmp ne i32 %call151, 0
  br label %err

err:                                              ; preds = %if.end150, %if.then102, %if.end146, %if.end142, %if.end137, %if.end133, %if.end127, %if.end123, %if.end117, %if.end113, %if.end107, %if.end92, %if.end88, %if.end83, %if.end78, %if.end74, %if.end70, %if.then66, %if.else58, %if.end52, %if.then47, %if.else, %if.end35, %if.then31, %if.end18
  %ret.0.shrunk = phi i1 [ false, %if.end18 ], [ false, %if.end146 ], [ false, %if.end142 ], [ false, %if.end137 ], [ false, %if.end133 ], [ false, %if.end92 ], [ false, %if.end88 ], [ false, %if.end83 ], [ false, %if.end78 ], [ false, %if.end74 ], [ false, %if.end70 ], [ false, %if.then66 ], [ false, %if.end127 ], [ false, %if.end123 ], [ false, %if.end117 ], [ false, %if.end113 ], [ false, %if.end107 ], [ false, %if.end52 ], [ false, %if.then47 ], [ false, %if.else58 ], [ false, %if.end35 ], [ false, %if.then31 ], [ false, %if.else ], [ %tobool104.not, %if.then102 ], [ %tobool152.not, %if.end150 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.then7, %if.then, %err
  %retval.0.shrunk = phi i1 [ %ret.0.shrunk, %err ], [ %tobool2.not, %if.then ], [ %tobool9.not, %if.then7 ], [ false, %if.then13 ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

declare i32 @EC_POINT_copy(%struct.ec_point_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_GF2m_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %call = tail call i32 @ossl_ec_GF2m_simple_add(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %a, %struct.ec_point_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_invert(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %0 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call1 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %0) #3
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %return

if.end:                                           ; preds = %lor.lhs.false
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %make_affine = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %1, i64 0, i32 27
  %2 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %make_affine, align 8, !tbaa !25
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %2, null
  br i1 %cmp, label %return, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %call6 = tail call i32 %2(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %point, %struct.bignum_ctx* noundef %ctx) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %return, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false3
  %3 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %4 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %call12 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %3, %struct.bignum_st* noundef %4, %struct.bignum_st* noundef %3) #3
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false3, %entry, %lor.lhs.false, %if.end9
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %lor.lhs.false3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_is_at_infinity(%struct.ec_group_st* nocapture readnone %group, %struct.ec_point_st* nocapture noundef readonly %point) #0 {
entry:
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %0 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %0) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_is_on_curve(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul1 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 32
  %1 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul1, align 8, !tbaa !24
  %field_sqr3 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 33
  %2 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr3, align 8, !tbaa !23
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 5
  %3 = load i32, i32* %Z_is_one, align 8, !tbaa !18
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end6
  %call8 = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %cmp9 = icmp eq %struct.bignum_ctx* %call8, null
  br i1 %cmp9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end6
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call8, %if.then7 ], [ %ctx, %if.end6 ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call8, %if.then7 ], [ null, %if.end6 ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call13 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp15 = icmp eq %struct.bignum_st* %call14, null
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.end12
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %4 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %a = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 12
  %5 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !11
  %call18 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end17
  %6 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %call23 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef %6, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end26

if.end26:                                         ; preds = %if.end21
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %7 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call27 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef %7) #3
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %if.end26
  %8 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %call32 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef %8, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end30
  %b = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  %9 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !12
  %call36 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef %9) #3
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.end35
  %10 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call41 = tail call i32 %2(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %10, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end44

if.end44:                                         ; preds = %if.end39
  %call45 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef nonnull %call14, %struct.bignum_st* noundef %call13) #3
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %if.end48

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call14) #3
  br label %err

err:                                              ; preds = %if.end44, %if.end39, %if.end35, %if.end30, %if.end26, %if.end21, %if.end17, %if.end12, %if.end48
  %ret.0 = phi i32 [ -1, %if.end12 ], [ %call49, %if.end48 ], [ -1, %if.end44 ], [ -1, %if.end39 ], [ -1, %if.end35 ], [ -1, %if.end30 ], [ -1, %if.end26 ], [ -1, %if.end21 ], [ -1, %if.end17 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 1, %entry ], [ -1, %if.end ], [ -1, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_cmp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %a, %struct.ec_point_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %a) #3
  %tobool.not = icmp eq i32 %call, 0
  %call3 = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %b) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cond = zext i1 %tobool4.not to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool4.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %a, i64 0, i32 5
  %0 = load i32, i32* %Z_is_one, align 8, !tbaa !18
  %tobool7.not = icmp eq i32 %0, 0
  br i1 %tobool7.not, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %Z_is_one8 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %b, i64 0, i32 5
  %1 = load i32, i32* %Z_is_one8, align 8, !tbaa !18
  %tobool9.not = icmp eq i32 %1, 0
  br i1 %tobool9.not, label %if.end17, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %a, i64 0, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %X11 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %b, i64 0, i32 2
  %3 = load %struct.bignum_st*, %struct.bignum_st** %X11, align 8, !tbaa !14
  %call12 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3) #3
  %cmp = icmp eq i32 %call12, 0
  br i1 %cmp, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %if.then10
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %a, i64 0, i32 3
  %4 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %Y13 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %b, i64 0, i32 3
  %5 = load %struct.bignum_st*, %struct.bignum_st** %Y13, align 8, !tbaa !16
  %call14 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5) #3
  %cmp15 = icmp ne i32 %call14, 0
  %phi.cast85 = zext i1 %cmp15 to i32
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true, %if.end6
  %cmp18 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end17
  %call20 = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %cmp21 = icmp eq %struct.bignum_ctx* %call20, null
  br i1 %cmp21, label %cleanup, label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end17
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call20, %if.then19 ], [ %ctx, %if.end17 ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call20, %if.then19 ], [ null, %if.end17 ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call25 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call26 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call27 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call28 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp29 = icmp eq %struct.bignum_st* %call28, null
  br i1 %cmp29, label %err, label %if.end31

if.end31:                                         ; preds = %if.end24
  %call32 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %a, %struct.bignum_st* noundef %call25, %struct.bignum_st* noundef %call26, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end31
  %call36 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %b, %struct.bignum_st* noundef %call27, %struct.bignum_st* noundef nonnull %call28, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.end35
  %call40 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call25, %struct.bignum_st* noundef %call27) #3
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %land.rhs42, label %err

land.rhs42:                                       ; preds = %if.end39
  %call43 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call26, %struct.bignum_st* noundef nonnull %call28) #3
  %cmp44 = icmp ne i32 %call43, 0
  %phi.cast = zext i1 %cmp44 to i32
  br label %err

err:                                              ; preds = %if.end39, %land.rhs42, %if.end35, %if.end31, %if.end24
  %ret.0 = phi i32 [ -1, %if.end24 ], [ -1, %if.end35 ], [ -1, %if.end31 ], [ 1, %if.end39 ], [ %phi.cast, %land.rhs42 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.then10, %land.rhs, %if.end, %err, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ %ret.0, %err ], [ 1, %if.end ], [ 1, %if.then10 ], [ %phi.cast85, %land.rhs ], [ -1, %if.then19 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_make_affine(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 5
  %0 = load i32, i32* %Z_is_one, align 8, !tbaa !18
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %point) #3
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.bignum_ctx* @BN_CTX_new() #3
  %cmp4 = icmp eq %struct.bignum_ctx* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call3, %if.then2 ], [ %ctx, %if.end ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call3, %if.then2 ], [ null, %if.end ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call8 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call9 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp10 = icmp eq %struct.bignum_st* %call9, null
  br i1 %cmp10, label %err, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call13 = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %point, %struct.bignum_st* noundef %call8, %struct.bignum_st* noundef nonnull %call9, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.end12
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %call17 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %1, %struct.bignum_st* noundef %call8) #3
  %tobool18.not = icmp eq %struct.bignum_st* %call17, null
  br i1 %tobool18.not, label %err, label %if.end20

if.end20:                                         ; preds = %if.end16
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %2 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call21 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %2, %struct.bignum_st* noundef nonnull %call9) #3
  %tobool22.not = icmp eq %struct.bignum_st* %call21, null
  br i1 %tobool22.not, label %err, label %if.end24

if.end24:                                         ; preds = %if.end20
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %3 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call25 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %3, i64 noundef 1) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %if.end28

if.end28:                                         ; preds = %if.end24
  store i32 1, i32* %Z_is_one, align 8, !tbaa !18
  br label %err

err:                                              ; preds = %if.end24, %if.end20, %if.end16, %if.end12, %if.end7, %if.end28
  %ret.0 = phi i32 [ 0, %if.end7 ], [ 1, %if.end28 ], [ 0, %if.end24 ], [ 0, %if.end20 ], [ 0, %if.end16 ], [ 0, %if.end12 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %entry, %lor.lhs.false, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_points_make_affine(%struct.ec_group_st* noundef %group, i64 noundef %num, %struct.ec_point_st** nocapture noundef readonly %points, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %cmp5.not = icmp eq i64 %num, 0
  br i1 %cmp5.not, label %cleanup, label %for.body

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %num
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !26

for.body:                                         ; preds = %entry, %for.cond
  %i.06 = phi i64 [ %inc, %for.cond ], [ 0, %entry ]
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %make_affine = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 27
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %make_affine, align 8, !tbaa !25
  %arrayidx = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %points, i64 %i.06
  %2 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx, align 8, !tbaa !28
  %call = tail call i32 %1(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %2, %struct.bignum_ctx* noundef %ctx) #3
  %tobool.not = icmp eq i32 %call, 0
  %inc = add nuw i64 %i.06, 1
  br i1 %tobool.not, label %cleanup, label %for.cond

cleanup:                                          ; preds = %for.body, %for.cond, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %for.cond ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_field_mul(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 0
  %call = tail call i32 @BN_GF2m_mod_mul_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, i32* noundef nonnull %arraydecay, %struct.bignum_ctx* noundef %ctx) #3
  ret i32 %call
}

declare i32 @BN_GF2m_mod_mul_arr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i32* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_field_sqr(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %arraydecay = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 0
  %call = tail call i32 @BN_GF2m_mod_sqr_arr(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, i32* noundef nonnull %arraydecay, %struct.bignum_ctx* noundef %ctx) #3
  ret i32 %call
}

declare i32 @BN_GF2m_mod_sqr_arr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GF2m_simple_field_div(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  %call = tail call i32 @BN_GF2m_mod_div(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_st* noundef %0, %struct.bignum_ctx* noundef %ctx) #3
  ret i32 %call
}

declare i32 @BN_GF2m_mod_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define %struct.ec_method_st* @EC_GF2m_simple_method() local_unnamed_addr #2 {
entry:
  ret %struct.ec_method_st* bitcast ({ i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }* @EC_GF2m_simple_method.ret to %struct.ec_method_st*)
}

declare i32 @ossl_ec_group_simple_order_bits(%struct.ec_group_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_GF2m_simple_points_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %scalar, i64 noundef %num, %struct.ec_point_st** noundef %points, %struct.bignum_st** noundef %scalars, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %cmp = icmp ugt i64 %num, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !29
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %0) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false1, label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %cofactor = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 3
  %1 = load %struct.bignum_st*, %struct.bignum_st** %cofactor, align 8, !tbaa !30
  %call2 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %1) #3
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %call4 = tail call i32 @ossl_ec_wNAF_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %scalar, i64 noundef %num, %struct.ec_point_st** noundef %points, %struct.bignum_st** noundef %scalars, %struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %cmp5 = icmp ne %struct.bignum_st* %scalar, null
  %cmp6 = icmp eq i64 %num, 0
  %or.cond = and i1 %cmp5, %cmp6
  br i1 %or.cond, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @ossl_ec_scalar_mul_ladder(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef nonnull %scalar, %struct.ec_point_st* noundef null, %struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %cmp10 = icmp eq %struct.bignum_st* %scalar, null
  %cmp12 = icmp eq i64 %num, 1
  %or.cond34 = and i1 %cmp10, %cmp12
  br i1 %or.cond34, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  %2 = load %struct.bignum_st*, %struct.bignum_st** %scalars, align 8, !tbaa !28
  %3 = load %struct.ec_point_st*, %struct.ec_point_st** %points, align 8, !tbaa !28
  %call15 = tail call i32 @ossl_ec_scalar_mul_ladder(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %2, %struct.ec_point_st* noundef %3, %struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %group) #3
  %cmp18 = icmp eq %struct.ec_point_st* %call17, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 908, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ec_GF2m_simple_points_mul, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @ossl_ec_scalar_mul_ladder(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %call17, %struct.bignum_st* noundef %scalar, %struct.ec_point_st* noundef null, %struct.bignum_ctx* noundef %ctx) #3
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end20
  %4 = load %struct.bignum_st*, %struct.bignum_st** %scalars, align 8, !tbaa !28
  %5 = load %struct.ec_point_st*, %struct.ec_point_st** %points, align 8, !tbaa !28
  %call26 = tail call i32 @ossl_ec_scalar_mul_ladder(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %4, %struct.ec_point_st* noundef %5, %struct.bignum_ctx* noundef %ctx) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false23
  %call29 = tail call i32 @EC_POINT_add(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef nonnull %call17, %struct.ec_point_st* noundef %r, %struct.bignum_ctx* noundef %ctx) #3
  %tobool30.not = icmp ne i32 %call29, 0
  %spec.select = zext i1 %tobool30.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false28, %if.end20, %lor.lhs.false23
  %ret.0 = phi i32 [ 0, %lor.lhs.false23 ], [ 0, %if.end20 ], [ %spec.select, %lor.lhs.false28 ]
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef nonnull %call17) #3
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then19, %if.then13, %if.then7, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call8, %if.then7 ], [ %call15, %if.then13 ], [ 0, %if.then19 ], [ %ret.0, %err ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_GF2m_simple_field_inv(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  %call = tail call i32 @BN_GF2m_mod_inv(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %0, %struct.bignum_ctx* noundef %ctx) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 935, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ec_GF2m_simple_field_inv, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 165, i8* noundef null) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

declare i64 @ossl_ec_key_simple_priv2oct(%struct.ec_key_st* noundef, i8* noundef, i64 noundef) #1

declare i32 @ossl_ec_key_simple_oct2priv(%struct.ec_key_st* noundef, i8* noundef, i64 noundef) #1

declare i32 @ossl_ec_key_simple_generate_key(%struct.ec_key_st* noundef) #1

declare i32 @ossl_ec_key_simple_check_key(%struct.ec_key_st* noundef) #1

declare i32 @ossl_ec_key_simple_generate_public_key(%struct.ec_key_st* noundef) #1

declare i32 @ossl_ecdh_simple_compute_key(i8** noundef, i64* noundef, %struct.ec_point_st* noundef, %struct.ec_key_st* noundef) #1

declare i32 @ossl_ecdsa_simple_sign_setup(%struct.ec_key_st* noundef, %struct.bignum_ctx* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) #1

declare %struct.ECDSA_SIG_st* @ossl_ecdsa_simple_sign_sig(i8* noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.ec_key_st* noundef) #1

declare i32 @ossl_ecdsa_simple_verify_sig(i8* noundef, i32 noundef, %struct.ECDSA_SIG_st* noundef, %struct.ec_key_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_GF2m_simple_ladder_pre(%struct.ec_group_st* noundef %group, %struct.ec_point_st* nocapture noundef %r, %struct.ec_point_st* nocapture noundef %s, %struct.ec_point_st* nocapture noundef readonly %p, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p, i64 0, i32 5
  %0 = load i32, i32* %Z_is_one, align 8, !tbaa !18
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %return, label %do.body.preheader

do.body.preheader:                                ; preds = %entry
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %s, i64 0, i32 4
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.cond
  %1 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %2 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %2) #3
  %sub = add nsw i32 %call, -1
  %call1 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef %1, i32 noundef %sub, i32 noundef -1, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %do.cond

if.then2:                                         ; preds = %do.body
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ec_GF2m_simple_ladder_pre, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #3
  br label %return

do.cond:                                          ; preds = %do.body
  %3 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call5 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %3) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %do.body, !llvm.loop !31

do.end:                                           ; preds = %do.cond
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %4 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_encode = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %4, i64 0, i32 36
  %5 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_encode, align 8, !tbaa !32
  %cmp7.not = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %5, null
  br i1 %cmp7.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %6 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call12 = tail call i32 %5(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %6, %struct.bignum_st* noundef %6, %struct.bignum_ctx* noundef %ctx) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %return, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  %.pre = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %do.end
  %7 = phi %struct.ec_method_st* [ %.pre, %land.lhs.true.lor.lhs.false_crit_edge ], [ %4, %do.end ]
  %field_mul = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %7, i64 0, i32 32
  %8 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul, align 8, !tbaa !24
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %s, i64 0, i32 2
  %9 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %X15 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p, i64 0, i32 2
  %10 = load %struct.bignum_st*, %struct.bignum_st** %X15, align 8, !tbaa !14
  %11 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call17 = tail call i32 %8(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %9, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11, %struct.bignum_ctx* noundef %ctx) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %return, label %do.body21.preheader

do.body21.preheader:                              ; preds = %lor.lhs.false
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 3
  br label %do.body21

do.body21:                                        ; preds = %do.body21.preheader, %do.cond29
  %12 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %13 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !4
  %call23 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %13) #3
  %sub24 = add nsw i32 %call23, -1
  %call25 = tail call i32 @BN_priv_rand_ex(%struct.bignum_st* noundef %12, i32 noundef %sub24, i32 noundef -1, i32 noundef 0, i32 noundef 0, %struct.bignum_ctx* noundef %ctx) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %do.cond29

if.then27:                                        ; preds = %do.body21
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 749, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.ec_GF2m_simple_ladder_pre, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #3
  br label %return

do.cond29:                                        ; preds = %do.body21
  %14 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call31 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %14) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end33, label %do.body21, !llvm.loop !33

do.end33:                                         ; preds = %do.cond29
  %15 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_encode35 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %15, i64 0, i32 36
  %16 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_encode35, align 8, !tbaa !32
  %cmp36.not = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %16, null
  br i1 %cmp36.not, label %lor.lhs.false44, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %do.end33
  %17 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call42 = tail call i32 %16(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %17, %struct.bignum_st* noundef %17, %struct.bignum_ctx* noundef %ctx) #3
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %return, label %land.lhs.true37.lor.lhs.false44_crit_edge

land.lhs.true37.lor.lhs.false44_crit_edge:        ; preds = %land.lhs.true37
  %.pre135 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  br label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true37.lor.lhs.false44_crit_edge, %do.end33
  %18 = phi %struct.ec_method_st* [ %.pre135, %land.lhs.true37.lor.lhs.false44_crit_edge ], [ %15, %do.end33 ]
  %field_sqr = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %18, i64 0, i32 33
  %19 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr, align 8, !tbaa !23
  %Z46 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 4
  %20 = load %struct.bignum_st*, %struct.bignum_st** %Z46, align 8, !tbaa !17
  %21 = load %struct.bignum_st*, %struct.bignum_st** %X15, align 8, !tbaa !14
  %call48 = tail call i32 %19(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %20, %struct.bignum_st* noundef %21, %struct.bignum_ctx* noundef %ctx) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %return, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false44
  %22 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_sqr52 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %22, i64 0, i32 33
  %23 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr52, align 8, !tbaa !23
  %X53 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 2
  %24 = load %struct.bignum_st*, %struct.bignum_st** %X53, align 8, !tbaa !14
  %25 = load %struct.bignum_st*, %struct.bignum_st** %Z46, align 8, !tbaa !17
  %call55 = tail call i32 %23(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %24, %struct.bignum_st* noundef %25, %struct.bignum_ctx* noundef %ctx) #3
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %return, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false50
  %26 = load %struct.bignum_st*, %struct.bignum_st** %X53, align 8, !tbaa !14
  %b = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  %27 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !12
  %call60 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %26, %struct.bignum_st* noundef %26, %struct.bignum_st* noundef %27) #3
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %return, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false57
  %28 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul64 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %28, i64 0, i32 32
  %29 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul64, align 8, !tbaa !24
  %30 = load %struct.bignum_st*, %struct.bignum_st** %Z46, align 8, !tbaa !17
  %31 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call68 = tail call i32 %29(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %30, %struct.bignum_st* noundef %30, %struct.bignum_st* noundef %31, %struct.bignum_ctx* noundef %ctx) #3
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %return, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false62
  %32 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul72 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %32, i64 0, i32 32
  %33 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul72, align 8, !tbaa !24
  %34 = load %struct.bignum_st*, %struct.bignum_st** %X53, align 8, !tbaa !14
  %35 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call76 = tail call i32 %33(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %34, %struct.bignum_st* noundef %34, %struct.bignum_st* noundef %35, %struct.bignum_ctx* noundef %ctx) #3
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %return, label %if.end79

if.end79:                                         ; preds = %lor.lhs.false70
  %Z_is_one80 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %s, i64 0, i32 5
  store i32 0, i32* %Z_is_one80, align 8, !tbaa !18
  %Z_is_one81 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 5
  store i32 0, i32* %Z_is_one81, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %land.lhs.true37, %lor.lhs.false44, %lor.lhs.false50, %lor.lhs.false57, %lor.lhs.false62, %lor.lhs.false70, %land.lhs.true, %lor.lhs.false, %entry, %if.end79, %if.then27, %if.then2
  %retval.0 = phi i32 [ 1, %if.end79 ], [ 0, %if.then27 ], [ 0, %if.then2 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false70 ], [ 0, %lor.lhs.false62 ], [ 0, %lor.lhs.false57 ], [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false44 ], [ 0, %land.lhs.true37 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_GF2m_simple_ladder_step(%struct.ec_group_st* noundef %group, %struct.ec_point_st* nocapture noundef readonly %r, %struct.ec_point_st* nocapture noundef readonly %s, %struct.ec_point_st* nocapture noundef readonly %p, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 32
  %1 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul, align 8, !tbaa !24
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 3
  %2 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 4
  %3 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %s, i64 0, i32 2
  %4 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %call = tail call i32 %1(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %2, %struct.bignum_st* noundef %3, %struct.bignum_st* noundef %4, %struct.bignum_ctx* noundef %ctx) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul2 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %5, i64 0, i32 32
  %6 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul2, align 8, !tbaa !24
  %7 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %X4 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 2
  %8 = load %struct.bignum_st*, %struct.bignum_st** %X4, align 8, !tbaa !14
  %Z5 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %s, i64 0, i32 4
  %9 = load %struct.bignum_st*, %struct.bignum_st** %Z5, align 8, !tbaa !17
  %call6 = tail call i32 %6(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %7, %struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9, %struct.bignum_ctx* noundef %ctx) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %return, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %10 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_sqr = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %10, i64 0, i32 33
  %11 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr, align 8, !tbaa !23
  %Y10 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %s, i64 0, i32 3
  %12 = load %struct.bignum_st*, %struct.bignum_st** %Y10, align 8, !tbaa !16
  %13 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call12 = tail call i32 %11(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13, %struct.bignum_ctx* noundef %ctx) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %return, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false8
  %14 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_sqr16 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %14, i64 0, i32 33
  %15 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr16, align 8, !tbaa !23
  %16 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %17 = load %struct.bignum_st*, %struct.bignum_st** %X4, align 8, !tbaa !14
  %call19 = tail call i32 %15(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %16, %struct.bignum_st* noundef %17, %struct.bignum_ctx* noundef %ctx) #3
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %return, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false14
  %18 = load %struct.bignum_st*, %struct.bignum_st** %Z5, align 8, !tbaa !17
  %19 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %20 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %call25 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %18, %struct.bignum_st* noundef %19, %struct.bignum_st* noundef %20) #3
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %return, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false21
  %21 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_sqr29 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %21, i64 0, i32 33
  %22 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr29, align 8, !tbaa !23
  %23 = load %struct.bignum_st*, %struct.bignum_st** %Z5, align 8, !tbaa !17
  %call32 = tail call i32 %22(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %23, %struct.bignum_st* noundef %23, %struct.bignum_ctx* noundef %ctx) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %return, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false27
  %24 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul36 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %24, i64 0, i32 32
  %25 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul36, align 8, !tbaa !24
  %26 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %27 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call40 = tail call i32 %25(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %26, %struct.bignum_st* noundef %27, %struct.bignum_st* noundef %26, %struct.bignum_ctx* noundef %ctx) #3
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %return, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false34
  %28 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul44 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %28, i64 0, i32 32
  %29 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul44, align 8, !tbaa !24
  %30 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %31 = load %struct.bignum_st*, %struct.bignum_st** %Z5, align 8, !tbaa !17
  %X47 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p, i64 0, i32 2
  %32 = load %struct.bignum_st*, %struct.bignum_st** %X47, align 8, !tbaa !14
  %call48 = tail call i32 %29(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %30, %struct.bignum_st* noundef %31, %struct.bignum_st* noundef %32, %struct.bignum_ctx* noundef %ctx) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %return, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false42
  %33 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %34 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call54 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %33, %struct.bignum_st* noundef %33, %struct.bignum_st* noundef %34) #3
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %return, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false50
  %35 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_sqr58 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %35, i64 0, i32 33
  %36 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr58, align 8, !tbaa !23
  %37 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %38 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call61 = tail call i32 %36(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %37, %struct.bignum_st* noundef %38, %struct.bignum_ctx* noundef %ctx) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %return, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false56
  %39 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul65 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %39, i64 0, i32 32
  %40 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul65, align 8, !tbaa !24
  %41 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %42 = load %struct.bignum_st*, %struct.bignum_st** %Y10, align 8, !tbaa !16
  %call69 = tail call i32 %40(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %41, %struct.bignum_st* noundef %41, %struct.bignum_st* noundef %42, %struct.bignum_ctx* noundef %ctx) #3
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %return, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false63
  %43 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_sqr73 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %43, i64 0, i32 33
  %44 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr73, align 8, !tbaa !23
  %45 = load %struct.bignum_st*, %struct.bignum_st** %Y10, align 8, !tbaa !16
  %call76 = tail call i32 %44(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %45, %struct.bignum_st* noundef %45, %struct.bignum_ctx* noundef %ctx) #3
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %return, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false71
  %46 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul80 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %46, i64 0, i32 32
  %47 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul80, align 8, !tbaa !24
  %48 = load %struct.bignum_st*, %struct.bignum_st** %Y10, align 8, !tbaa !16
  %b = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  %49 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !12
  %call83 = tail call i32 %47(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %48, %struct.bignum_st* noundef %48, %struct.bignum_st* noundef %49, %struct.bignum_ctx* noundef %ctx) #3
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %return, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false78
  %50 = load %struct.bignum_st*, %struct.bignum_st** %X4, align 8, !tbaa !14
  %51 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %52 = load %struct.bignum_st*, %struct.bignum_st** %Y10, align 8, !tbaa !16
  %call89 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %50, %struct.bignum_st* noundef %51, %struct.bignum_st* noundef %52) #3
  %tobool90.not = icmp ne i32 %call89, 0
  %spec.select = zext i1 %tobool90.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false85, %entry, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false14, %lor.lhs.false21, %lor.lhs.false27, %lor.lhs.false34, %lor.lhs.false42, %lor.lhs.false50, %lor.lhs.false56, %lor.lhs.false63, %lor.lhs.false71, %lor.lhs.false78
  %retval.0 = phi i32 [ 0, %lor.lhs.false78 ], [ 0, %lor.lhs.false71 ], [ 0, %lor.lhs.false63 ], [ 0, %lor.lhs.false56 ], [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false27 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false85 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_GF2m_simple_ladder_post(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* nocapture noundef readonly %s, %struct.ec_point_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #0 {
entry:
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 4
  %0 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %0) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %r) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %Z2 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %s, i64 0, i32 4
  %1 = load %struct.bignum_st*, %struct.bignum_st** %Z2, align 8, !tbaa !17
  %call3 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %1) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end12, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef nonnull %r, %struct.ec_point_st* noundef %p) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %call8 = tail call i32 @EC_POINT_invert(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %r, %struct.bignum_ctx* noundef %ctx) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %cleanup

if.then10:                                        ; preds = %lor.lhs.false, %if.then5
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 818, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ec_GF2m_simple_ladder_post, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #3
  br label %cleanup

if.end12:                                         ; preds = %if.end
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #3
  %call13 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #3
  %cmp = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 829, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ec_GF2m_simple_ladder_post, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #3
  br label %err

if.end17:                                         ; preds = %if.end12
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %2 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %2, i64 0, i32 32
  %3 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul, align 8, !tbaa !24
  %4 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %5 = load %struct.bignum_st*, %struct.bignum_st** %Z2, align 8, !tbaa !17
  %call20 = tail call i32 %3(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %call13, %struct.bignum_st* noundef %4, %struct.bignum_st* noundef %5, %struct.bignum_ctx* noundef %ctx) #3
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end17
  %6 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul24 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %6, i64 0, i32 32
  %7 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul24, align 8, !tbaa !24
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p, i64 0, i32 2
  %8 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %9 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call26 = tail call i32 %7(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9, %struct.bignum_ctx* noundef %ctx) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %X29 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 2
  %10 = load %struct.bignum_st*, %struct.bignum_st** %X29, align 8, !tbaa !14
  %call30 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %call14) #3
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %11 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul34 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %11, i64 0, i32 32
  %12 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul34, align 8, !tbaa !24
  %13 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %14 = load %struct.bignum_st*, %struct.bignum_st** %Z2, align 8, !tbaa !17
  %call37 = tail call i32 %12(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %13, %struct.bignum_st* noundef %14, %struct.bignum_ctx* noundef %ctx) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false32
  %15 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul41 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %15, i64 0, i32 32
  %16 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul41, align 8, !tbaa !24
  %17 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %18 = load %struct.bignum_st*, %struct.bignum_st** %X29, align 8, !tbaa !14
  %call44 = tail call i32 %16(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %17, %struct.bignum_st* noundef %18, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_ctx* noundef %ctx) #3
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false39
  %X47 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %s, i64 0, i32 2
  %19 = load %struct.bignum_st*, %struct.bignum_st** %X47, align 8, !tbaa !14
  %call48 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %19) #3
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %20 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul52 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %20, i64 0, i32 32
  %21 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul52, align 8, !tbaa !24
  %call53 = tail call i32 %21(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_ctx* noundef %ctx) #3
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false50
  %22 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_sqr = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %22, i64 0, i32 33
  %23 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_sqr, align 8, !tbaa !23
  %24 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %call58 = tail call i32 %23(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %24, %struct.bignum_ctx* noundef %ctx) #3
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false55
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p, i64 0, i32 3
  %25 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call61 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %25, %struct.bignum_st* noundef nonnull %call15) #3
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %26 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul65 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %26, i64 0, i32 32
  %27 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul65, align 8, !tbaa !24
  %call66 = tail call i32 %27(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %call13, %struct.bignum_ctx* noundef %ctx) #3
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false63
  %call69 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %call14) #3
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false68
  %28 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul73 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %28, i64 0, i32 32
  %29 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul73, align 8, !tbaa !24
  %30 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %call75 = tail call i32 %29(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %30, %struct.bignum_st* noundef %call13, %struct.bignum_ctx* noundef %ctx) #3
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false71
  %31 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_inv = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %31, i64 0, i32 35
  %32 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_inv, align 8, !tbaa !34
  %call79 = tail call i32 %32(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_ctx* noundef %ctx) #3
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false77
  %33 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul83 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %33, i64 0, i32 32
  %34 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul83, align 8, !tbaa !24
  %call84 = tail call i32 %34(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_ctx* noundef %ctx) #3
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false81
  %35 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul88 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %35, i64 0, i32 32
  %36 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul88, align 8, !tbaa !24
  %37 = load %struct.bignum_st*, %struct.bignum_st** %X29, align 8, !tbaa !14
  %38 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call91 = tail call i32 %36(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %37, %struct.bignum_st* noundef %38, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_ctx* noundef %ctx) #3
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %err, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %lor.lhs.false86
  %39 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !14
  %40 = load %struct.bignum_st*, %struct.bignum_st** %X29, align 8, !tbaa !14
  %call96 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %39, %struct.bignum_st* noundef %40) #3
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false93
  %41 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !20
  %field_mul100 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %41, i64 0, i32 32
  %42 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul100, align 8, !tbaa !24
  %call101 = tail call i32 %42(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef nonnull %call15, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %ctx) #3
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %err, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %lor.lhs.false98
  %Y104 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 3
  %43 = load %struct.bignum_st*, %struct.bignum_st** %Y104, align 8, !tbaa !16
  %44 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !16
  %call106 = tail call i32 @BN_GF2m_add(%struct.bignum_st* noundef %43, %struct.bignum_st* noundef %44, %struct.bignum_st* noundef nonnull %call15) #3
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false103
  %45 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !17
  %call110 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %45, i64 noundef 1) #3
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %if.end113

if.end113:                                        ; preds = %lor.lhs.false108
  %Z_is_one = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %r, i64 0, i32 5
  store i32 1, i32* %Z_is_one, align 8, !tbaa !18
  %46 = load %struct.bignum_st*, %struct.bignum_st** %X29, align 8, !tbaa !14
  tail call void @BN_set_negative(%struct.bignum_st* noundef %46, i32 noundef 0) #3
  %47 = load %struct.bignum_st*, %struct.bignum_st** %Y104, align 8, !tbaa !16
  tail call void @BN_set_negative(%struct.bignum_st* noundef %47, i32 noundef 0) #3
  br label %err

err:                                              ; preds = %if.end17, %lor.lhs.false22, %lor.lhs.false28, %lor.lhs.false32, %lor.lhs.false39, %lor.lhs.false46, %lor.lhs.false50, %lor.lhs.false55, %lor.lhs.false60, %lor.lhs.false63, %lor.lhs.false68, %lor.lhs.false71, %lor.lhs.false77, %lor.lhs.false81, %lor.lhs.false86, %lor.lhs.false93, %lor.lhs.false98, %lor.lhs.false103, %lor.lhs.false108, %if.end113, %if.then16
  %ret.0 = phi i32 [ 0, %if.then16 ], [ 1, %if.end113 ], [ 0, %lor.lhs.false108 ], [ 0, %lor.lhs.false103 ], [ 0, %lor.lhs.false98 ], [ 0, %lor.lhs.false93 ], [ 0, %lor.lhs.false86 ], [ 0, %lor.lhs.false81 ], [ 0, %lor.lhs.false77 ], [ 0, %lor.lhs.false71 ], [ 0, %lor.lhs.false68 ], [ 0, %lor.lhs.false63 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false55 ], [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false46 ], [ 0, %lor.lhs.false39 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %if.end17 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #3
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %err, %if.then10, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.then10 ], [ %ret.0, %err ], [ 1, %lor.lhs.false ]
  ret i32 %retval.0
}

declare i32 @ossl_ec_wNAF_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, i64 noundef, %struct.ec_point_st** noundef, %struct.bignum_st** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @ossl_ec_scalar_mul_ladder(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_add(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #1

declare i32 @BN_GF2m_mod_inv(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_priv_rand_ex(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @EC_POINT_invert(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 64}
!5 = !{!"ec_group_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !7, i64 44, !6, i64 48, !10, i64 56, !6, i64 64, !7, i64 72, !6, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !7, i64 152, !7, i64 160, !6, i64 168, !6, i64 176}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 96}
!12 = !{!5, !6, i64 104}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !6, i64 16}
!15 = !{!"ec_point_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40}
!16 = !{!15, !6, i64 24}
!17 = !{!15, !6, i64 32}
!18 = !{!15, !9, i64 40}
!19 = !{!15, !9, i64 8}
!20 = !{!5, !6, i64 0}
!21 = !{!22, !6, i64 264}
!22 = !{!"ec_method_st", !9, i64 0, !9, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432}
!23 = !{!22, !6, i64 256}
!24 = !{!22, !6, i64 248}
!25 = !{!22, !6, i64 208}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!6, !6, i64 0}
!29 = !{!5, !6, i64 16}
!30 = !{!5, !6, i64 24}
!31 = distinct !{!31, !27}
!32 = !{!22, !6, i64 280}
!33 = distinct !{!33, !27}
!34 = !{!22, !6, i64 272}
