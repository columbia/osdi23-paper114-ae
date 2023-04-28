; ModuleID = 'crypto/ec/ecp_mont.c'
source_filename = "crypto/ec/ecp_mont.c"
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

@EC_GFp_mont_method.ret = internal constant %struct.ec_method_st { i32 1, i32 406, i32 (%struct.ec_group_st*)* @ossl_ec_GFp_mont_group_init, void (%struct.ec_group_st*)* @ossl_ec_GFp_mont_group_finish, void (%struct.ec_group_st*)* @ossl_ec_GFp_mont_group_clear_finish, i32 (%struct.ec_group_st*, %struct.ec_group_st*)* @ossl_ec_GFp_mont_group_copy, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_group_set_curve, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_group_get_curve, i32 (%struct.ec_group_st*)* @ossl_ec_GFp_simple_group_get_degree, i32 (%struct.ec_group_st*)* @ossl_ec_group_simple_order_bits, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_group_check_discriminant, i32 (%struct.ec_point_st*)* @ossl_ec_GFp_simple_point_init, void (%struct.ec_point_st*)* @ossl_ec_GFp_simple_point_finish, void (%struct.ec_point_st*)* @ossl_ec_GFp_simple_point_clear_finish, i32 (%struct.ec_point_st*, %struct.ec_point_st*)* @ossl_ec_GFp_simple_point_copy, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ossl_ec_GFp_simple_point_set_to_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_point_set_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_point_get_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)* null, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_add, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_dbl, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_invert, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ossl_ec_GFp_simple_is_at_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_is_on_curve, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_cmp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_make_affine, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_points_make_affine, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_mul, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_sqr, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_inv, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_encode, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_decode, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_mont_field_set_to_one, i64 (%struct.ec_key_st*, i8*, i64)* @ossl_ec_key_simple_priv2oct, i32 (%struct.ec_key_st*, i8*, i64)* @ossl_ec_key_simple_oct2priv, i32 (%struct.ec_key_st*, %struct.bignum_st*)* null, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_generate_key, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_check_key, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_generate_public_key, i32 (%struct.ec_key_st*, %struct.ec_key_st*)* null, void (%struct.ec_key_st*)* null, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* @ossl_ecdh_simple_compute_key, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* @ossl_ecdsa_simple_sign_setup, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* @ossl_ecdsa_simple_sign_sig, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* @ossl_ecdsa_simple_verify_sig, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_blind_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_ladder_pre, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_ladder_step, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_ladder_post }, align 8
@.str = private unnamed_addr constant [21 x i8] c"crypto/ec/ecp_mont.c\00", align 1
@__func__.ossl_ec_GFp_mont_group_set_curve = private unnamed_addr constant [33 x i8] c"ossl_ec_GFp_mont_group_set_curve\00", align 1
@__func__.ossl_ec_GFp_mont_field_mul = private unnamed_addr constant [27 x i8] c"ossl_ec_GFp_mont_field_mul\00", align 1
@__func__.ossl_ec_GFp_mont_field_sqr = private unnamed_addr constant [27 x i8] c"ossl_ec_GFp_mont_field_sqr\00", align 1
@__func__.ossl_ec_GFp_mont_field_inv = private unnamed_addr constant [27 x i8] c"ossl_ec_GFp_mont_field_inv\00", align 1
@__func__.ossl_ec_GFp_mont_field_encode = private unnamed_addr constant [30 x i8] c"ossl_ec_GFp_mont_field_encode\00", align 1
@__func__.ossl_ec_GFp_mont_field_decode = private unnamed_addr constant [30 x i8] c"ossl_ec_GFp_mont_field_decode\00", align 1
@__func__.ossl_ec_GFp_mont_field_set_to_one = private unnamed_addr constant [34 x i8] c"ossl_ec_GFp_mont_field_set_to_one\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ec_method_st* @EC_GFp_mont_method() local_unnamed_addr #0 {
entry:
  ret %struct.ec_method_st* @EC_GFp_mont_method.ret
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_mont_group_init(%struct.ec_group_st* noundef %group) #1 {
entry:
  %call = tail call i32 @ossl_ec_GFp_simple_group_init(%struct.ec_group_st* noundef %group) #3
  %field_data1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 15
  %0 = bitcast i8** %field_data1 to <2 x i8*>*
  store <2 x i8*> zeroinitializer, <2 x i8*>* %0, align 8, !tbaa !4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_ec_GFp_mont_group_finish(%struct.ec_group_st* noundef %group) #1 {
entry:
  %field_data1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 15
  %0 = bitcast i8** %field_data1 to %struct.bn_mont_ctx_st**
  %1 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %0, align 8, !tbaa !8
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %1) #3
  store i8* null, i8** %field_data1, align 8, !tbaa !8
  %field_data2 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 16
  %2 = bitcast i8** %field_data2 to %struct.bignum_st**
  %3 = load %struct.bignum_st*, %struct.bignum_st** %2, align 8, !tbaa !12
  tail call void @BN_free(%struct.bignum_st* noundef %3) #3
  store i8* null, i8** %field_data2, align 8, !tbaa !12
  tail call void @ossl_ec_GFp_simple_group_finish(%struct.ec_group_st* noundef %group) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_ec_GFp_mont_group_clear_finish(%struct.ec_group_st* noundef %group) #1 {
entry:
  %field_data1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 15
  %0 = bitcast i8** %field_data1 to %struct.bn_mont_ctx_st**
  %1 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %0, align 8, !tbaa !8
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %1) #3
  store i8* null, i8** %field_data1, align 8, !tbaa !8
  %field_data2 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 16
  %2 = bitcast i8** %field_data2 to %struct.bignum_st**
  %3 = load %struct.bignum_st*, %struct.bignum_st** %2, align 8, !tbaa !12
  tail call void @BN_clear_free(%struct.bignum_st* noundef %3) #3
  store i8* null, i8** %field_data2, align 8, !tbaa !12
  tail call void @ossl_ec_GFp_simple_group_clear_finish(%struct.ec_group_st* noundef %group) #3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_mont_group_copy(%struct.ec_group_st* noundef %dest, %struct.ec_group_st* noundef %src) #1 {
entry:
  %field_data1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 15
  %0 = bitcast i8** %field_data1 to %struct.bn_mont_ctx_st**
  %1 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %0, align 8, !tbaa !8
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %1) #3
  store i8* null, i8** %field_data1, align 8, !tbaa !8
  %field_data2 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 16
  %2 = bitcast i8** %field_data2 to %struct.bignum_st**
  %3 = load %struct.bignum_st*, %struct.bignum_st** %2, align 8, !tbaa !12
  tail call void @BN_clear_free(%struct.bignum_st* noundef %3) #3
  store i8* null, i8** %field_data2, align 8, !tbaa !12
  %call = tail call i32 @ossl_ec_GFp_simple_group_copy(%struct.ec_group_st* noundef %dest, %struct.ec_group_st* noundef %src) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %field_data13 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 15
  %4 = load i8*, i8** %field_data13, align 8, !tbaa !8
  %cmp.not = icmp eq i8* %4, null
  br i1 %cmp.not, label %if.end17, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #3
  store %struct.bn_mont_ctx_st* %call5, %struct.bn_mont_ctx_st** %0, align 8, !tbaa !8
  %cmp8 = icmp eq %struct.bn_mont_ctx_st* %call5, null
  br i1 %cmp8, label %return, label %if.end10

if.end10:                                         ; preds = %if.then4
  %5 = bitcast i8** %field_data13 to %struct.bn_mont_ctx_st**
  %6 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %5, align 8, !tbaa !8
  %call13 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_copy(%struct.bn_mont_ctx_st* noundef nonnull %call5, %struct.bn_mont_ctx_st* noundef %6) #3
  %tobool14.not = icmp eq %struct.bn_mont_ctx_st* %call13, null
  br i1 %tobool14.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end10, %if.end
  %field_data218 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 16
  %7 = load i8*, i8** %field_data218, align 8, !tbaa !12
  %cmp19.not = icmp eq i8* %7, null
  br i1 %cmp19.not, label %return, label %if.then20

if.then20:                                        ; preds = %if.end17
  %8 = bitcast i8* %7 to %struct.bignum_st*
  %call22 = tail call %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef nonnull %8) #3
  store %struct.bignum_st* %call22, %struct.bignum_st** %2, align 8, !tbaa !12
  %cmp25 = icmp eq %struct.bignum_st* %call22, null
  br i1 %cmp25, label %err, label %return

err:                                              ; preds = %if.then20, %if.end10
  %9 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %0, align 8, !tbaa !8
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %9) #3
  store i8* null, i8** %field_data1, align 8, !tbaa !8
  br label %return

return:                                           ; preds = %if.end17, %if.then20, %if.then4, %entry, %err
  %retval.0 = phi i32 [ 0, %err ], [ 0, %entry ], [ 0, %if.then4 ], [ 1, %if.then20 ], [ 1, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_mont_group_set_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #1 {
entry:
  %field_data1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 15
  %0 = bitcast i8** %field_data1 to %struct.bn_mont_ctx_st**
  %1 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %0, align 8, !tbaa !8
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %1) #3
  store i8* null, i8** %field_data1, align 8, !tbaa !8
  %field_data2 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 16
  %2 = bitcast i8** %field_data2 to %struct.bignum_st**
  %3 = load %struct.bignum_st*, %struct.bignum_st** %2, align 8, !tbaa !12
  tail call void @BN_free(%struct.bignum_st* noundef %3) #3
  store i8* null, i8** %field_data2, align 8, !tbaa !12
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 21
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !13
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %4) #3
  %cmp3 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ %ctx, %entry ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ null, %entry ]
  %call6 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #3
  %cmp7 = icmp eq %struct.bn_mont_ctx_st* %call6, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call6, %struct.bignum_st* noundef %p, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_ec_GFp_mont_group_set_curve, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #3
  br label %err

if.end12:                                         ; preds = %if.end9
  %call13 = tail call %struct.bignum_st* @BN_new() #3
  %cmp14 = icmp eq %struct.bignum_st* %call13, null
  br i1 %cmp14, label %err, label %if.end16

if.end16:                                         ; preds = %if.end12
  %call17 = tail call %struct.bignum_st* @BN_value_one() #3
  %call18 = tail call i32 @BN_to_montgomery(%struct.bignum_st* noundef nonnull %call13, %struct.bignum_st* noundef %call17, %struct.bn_mont_ctx_st* noundef nonnull %call6, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end16
  store %struct.bn_mont_ctx_st* %call6, %struct.bn_mont_ctx_st** %0, align 8, !tbaa !8
  store %struct.bignum_st* %call13, %struct.bignum_st** %2, align 8, !tbaa !12
  %call24 = tail call i32 @ossl_ec_GFp_simple_group_set_curve(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %err

if.then26:                                        ; preds = %if.end21
  %5 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %0, align 8, !tbaa !8
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %5) #3
  store i8* null, i8** %field_data1, align 8, !tbaa !8
  %6 = load %struct.bignum_st*, %struct.bignum_st** %2, align 8, !tbaa !12
  tail call void @BN_free(%struct.bignum_st* noundef %6) #3
  store i8* null, i8** %field_data2, align 8, !tbaa !12
  br label %err

err:                                              ; preds = %if.end21, %if.then26, %if.end16, %if.end12, %if.end5, %if.then11
  %mont.0 = phi %struct.bn_mont_ctx_st* [ null, %if.end5 ], [ %call6, %if.end12 ], [ null, %if.end21 ], [ null, %if.then26 ], [ %call6, %if.end16 ], [ %call6, %if.then11 ]
  %one.0 = phi %struct.bignum_st* [ null, %if.end5 ], [ null, %if.end12 ], [ null, %if.end21 ], [ null, %if.then26 ], [ %call13, %if.end16 ], [ null, %if.then11 ]
  %ret.0 = phi i32 [ 0, %if.end5 ], [ 0, %if.end12 ], [ %call24, %if.end21 ], [ 0, %if.then26 ], [ 0, %if.end16 ], [ 0, %if.then11 ]
  tail call void @BN_free(%struct.bignum_st* noundef %one.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #3
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %mont.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare i32 @ossl_ec_GFp_simple_group_get_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_group_get_degree(%struct.ec_group_st* noundef) #2

declare i32 @ossl_ec_group_simple_order_bits(%struct.ec_group_st* noundef) #2

declare i32 @ossl_ec_GFp_simple_group_check_discriminant(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_point_init(%struct.ec_point_st* noundef) #2

declare void @ossl_ec_GFp_simple_point_finish(%struct.ec_point_st* noundef) #2

declare void @ossl_ec_GFp_simple_point_clear_finish(%struct.ec_point_st* noundef) #2

declare i32 @ossl_ec_GFp_simple_point_copy(%struct.ec_point_st* noundef, %struct.ec_point_st* noundef) #2

declare i32 @ossl_ec_GFp_simple_point_set_to_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) #2

declare i32 @ossl_ec_GFp_simple_point_set_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_point_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_add(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_dbl(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_invert(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_is_at_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) #2

declare i32 @ossl_ec_GFp_simple_is_on_curve(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_cmp(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_make_affine(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_points_make_affine(%struct.ec_group_st* noundef, i64 noundef, %struct.ec_point_st** noundef, %struct.bignum_ctx* noundef) #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_mont_field_mul(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #1 {
entry:
  %field_data1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 15
  %0 = load i8*, i8** %field_data1, align 8, !tbaa !8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ec_GFp_mont_field_mul, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 111, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %0 to %struct.bn_mont_ctx_st*
  %call = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bn_mont_ctx_st* noundef nonnull %1, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_mont_field_sqr(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #1 {
entry:
  %field_data1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 15
  %0 = load i8*, i8** %field_data1, align 8, !tbaa !8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ec_GFp_mont_field_sqr, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 111, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %0 to %struct.bn_mont_ctx_st*
  %call = tail call i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %a, %struct.bn_mont_ctx_st* noundef nonnull %1, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_mont_field_inv(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #1 {
entry:
  %field_data1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 15
  %0 = load i8*, i8** %field_data1, align 8, !tbaa !8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp1, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 21
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !13
  %call = tail call %struct.bignum_ctx* @BN_CTX_secure_new_ex(%struct.ossl_lib_ctx_st* noundef %1) #3
  %cmp2 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %land.lhs.true ], [ %ctx, %if.end ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %land.lhs.true ], [ null, %if.end ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %cmp6 = icmp eq %struct.bignum_st* %call5, null
  br i1 %cmp6, label %err, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call5, i64 noundef 2) #3
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end8
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %2 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !14
  %call12 = tail call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call5, %struct.bignum_st* noundef %2, %struct.bignum_st* noundef nonnull %call5) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end15

if.end15:                                         ; preds = %if.end11
  %3 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !14
  %4 = bitcast i8** %field_data1 to %struct.bn_mont_ctx_st**
  %5 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %4, align 8, !tbaa !8
  %call18 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef nonnull %call5, %struct.bignum_st* noundef %3, %struct.bignum_ctx* noundef nonnull %ctx.addr.0, %struct.bn_mont_ctx_st* noundef %5) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end15
  %call22 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %r) #3
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %if.then24

if.then24:                                        ; preds = %if.end21
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 255, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ec_GFp_mont_field_inv, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 165, i8* noundef null) #3
  br label %err

err:                                              ; preds = %if.end21, %if.end15, %if.end11, %if.end8, %if.end4, %if.then24
  %ret.0 = phi i32 [ 0, %if.end4 ], [ 0, %if.then24 ], [ 0, %if.end15 ], [ 0, %if.end11 ], [ 0, %if.end8 ], [ 1, %if.end21 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #3
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ], [ 0, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_mont_field_encode(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #1 {
entry:
  %field_data1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 15
  %0 = load i8*, i8** %field_data1, align 8, !tbaa !8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GFp_mont_field_encode, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 111, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %0 to %struct.bn_mont_ctx_st*
  %call = tail call i32 @BN_to_montgomery(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bn_mont_ctx_st* noundef nonnull %1, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_mont_field_decode(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #1 {
entry:
  %field_data1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 15
  %0 = load i8*, i8** %field_data1, align 8, !tbaa !8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 282, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.ossl_ec_GFp_mont_field_decode, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 111, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %0 to %struct.bn_mont_ctx_st*
  %call = tail call i32 @BN_from_montgomery(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bn_mont_ctx_st* noundef nonnull %1, %struct.bignum_ctx* noundef %ctx) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_mont_field_set_to_one(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_ctx* nocapture readnone %ctx) #1 {
entry:
  %field_data2 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 16
  %0 = load i8*, i8** %field_data2, align 8, !tbaa !12
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.ossl_ec_GFp_mont_field_set_to_one, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 111, i8* noundef null) #3
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %0 to %struct.bignum_st*
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef nonnull %1) #3
  %tobool.not = icmp ne %struct.bignum_st* %call, null
  %. = zext i1 %tobool.not to i32
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

declare i64 @ossl_ec_key_simple_priv2oct(%struct.ec_key_st* noundef, i8* noundef, i64 noundef) #2

declare i32 @ossl_ec_key_simple_oct2priv(%struct.ec_key_st* noundef, i8* noundef, i64 noundef) #2

declare i32 @ossl_ec_key_simple_generate_key(%struct.ec_key_st* noundef) #2

declare i32 @ossl_ec_key_simple_check_key(%struct.ec_key_st* noundef) #2

declare i32 @ossl_ec_key_simple_generate_public_key(%struct.ec_key_st* noundef) #2

declare i32 @ossl_ecdh_simple_compute_key(i8** noundef, i64* noundef, %struct.ec_point_st* noundef, %struct.ec_key_st* noundef) #2

declare i32 @ossl_ecdsa_simple_sign_setup(%struct.ec_key_st* noundef, %struct.bignum_ctx* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) #2

declare %struct.ECDSA_SIG_st* @ossl_ecdsa_simple_sign_sig(i8* noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.ec_key_st* noundef) #2

declare i32 @ossl_ecdsa_simple_verify_sig(i8* noundef, i32 noundef, %struct.ECDSA_SIG_st* noundef, %struct.ec_key_st* noundef) #2

declare i32 @ossl_ec_GFp_simple_blind_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_ladder_pre(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_ladder_step(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_ladder_post(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #2

declare i32 @ossl_ec_GFp_simple_group_init(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @ossl_ec_GFp_simple_group_finish(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @ossl_ec_GFp_simple_group_clear_finish(%struct.ec_group_st* noundef) local_unnamed_addr #2

declare i32 @ossl_ec_GFp_simple_group_copy(%struct.ec_group_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #2

declare %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() local_unnamed_addr #2

declare %struct.bn_mont_ctx_st* @BN_MONT_CTX_copy(%struct.bn_mont_ctx_st* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_dup(%struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare i32 @BN_to_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #2

declare i32 @ossl_ec_GFp_simple_group_set_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_ctx* @BN_CTX_secure_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_mod_exp_mont(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_from_montgomery(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bn_mont_ctx_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 120}
!9 = !{!"ec_group_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !6, i64 44, !5, i64 48, !11, i64 56, !5, i64 64, !6, i64 72, !5, i64 96, !5, i64 104, !10, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !6, i64 152, !6, i64 160, !5, i64 168, !5, i64 176}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !5, i64 128}
!13 = !{!9, !5, i64 168}
!14 = !{!9, !5, i64 64}
