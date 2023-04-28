; ModuleID = 'crypto/ec/ecp_nist.c'
source_filename = "crypto/ec/ecp_nist.c"
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

@EC_GFp_nist_method.ret = internal constant %struct.ec_method_st { i32 1, i32 406, i32 (%struct.ec_group_st*)* @ossl_ec_GFp_simple_group_init, void (%struct.ec_group_st*)* @ossl_ec_GFp_simple_group_finish, void (%struct.ec_group_st*)* @ossl_ec_GFp_simple_group_clear_finish, i32 (%struct.ec_group_st*, %struct.ec_group_st*)* @ossl_ec_GFp_nist_group_copy, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_nist_group_set_curve, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_group_get_curve, i32 (%struct.ec_group_st*)* @ossl_ec_GFp_simple_group_get_degree, i32 (%struct.ec_group_st*)* @ossl_ec_group_simple_order_bits, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_group_check_discriminant, i32 (%struct.ec_point_st*)* @ossl_ec_GFp_simple_point_init, void (%struct.ec_point_st*)* @ossl_ec_GFp_simple_point_finish, void (%struct.ec_point_st*)* @ossl_ec_GFp_simple_point_clear_finish, i32 (%struct.ec_point_st*, %struct.ec_point_st*)* @ossl_ec_GFp_simple_point_copy, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ossl_ec_GFp_simple_point_set_to_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_point_set_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_point_get_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)* null, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_add, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_dbl, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_invert, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ossl_ec_GFp_simple_is_at_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_is_on_curve, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_cmp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_make_affine, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_points_make_affine, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_nist_field_mul, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_nist_field_sqr, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_field_inv, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i64 (%struct.ec_key_st*, i8*, i64)* @ossl_ec_key_simple_priv2oct, i32 (%struct.ec_key_st*, i8*, i64)* @ossl_ec_key_simple_oct2priv, i32 (%struct.ec_key_st*, %struct.bignum_st*)* null, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_generate_key, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_check_key, i32 (%struct.ec_key_st*)* @ossl_ec_key_simple_generate_public_key, i32 (%struct.ec_key_st*, %struct.ec_key_st*)* null, void (%struct.ec_key_st*)* null, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* @ossl_ecdh_simple_compute_key, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)* @ossl_ecdsa_simple_sign_setup, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)* @ossl_ecdsa_simple_sign_sig, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* @ossl_ecdsa_simple_verify_sig, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_blind_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_ladder_pre, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_ladder_step, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ossl_ec_GFp_simple_ladder_post }, align 8
@.str = private unnamed_addr constant [21 x i8] c"crypto/ec/ecp_nist.c\00", align 1
@__func__.ossl_ec_GFp_nist_group_set_curve = private unnamed_addr constant [33 x i8] c"ossl_ec_GFp_nist_group_set_curve\00", align 1
@__func__.ossl_ec_GFp_nist_field_mul = private unnamed_addr constant [27 x i8] c"ossl_ec_GFp_nist_field_mul\00", align 1
@__func__.ossl_ec_GFp_nist_field_sqr = private unnamed_addr constant [27 x i8] c"ossl_ec_GFp_nist_field_sqr\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ec_method_st* @EC_GFp_nist_method() local_unnamed_addr #0 {
entry:
  ret %struct.ec_method_st* @EC_GFp_nist_method.ret
}

declare i32 @ossl_ec_GFp_simple_group_init(%struct.ec_group_st* noundef) #1

declare void @ossl_ec_GFp_simple_group_finish(%struct.ec_group_st* noundef) #1

declare void @ossl_ec_GFp_simple_group_clear_finish(%struct.ec_group_st* noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_nist_group_copy(%struct.ec_group_st* noundef %dest, %struct.ec_group_st* noundef %src) #2 {
entry:
  %field_mod_func = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 17
  %0 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mod_func, align 8, !tbaa !4
  %field_mod_func1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 17
  store i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %0, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mod_func1, align 8, !tbaa !4
  %call = tail call i32 @ossl_ec_GFp_simple_group_copy(%struct.ec_group_st* noundef %dest, %struct.ec_group_st* noundef %src) #3
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_nist_group_set_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #2 {
entry:
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 21
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !11
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #3
  %cmp1 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ %ctx, %entry ]
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ null, %entry ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %call4 = tail call %struct.bignum_st* @BN_get0_nist_prime_192() #3
  %call5 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %p) #3
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.end36, label %if.else

if.else:                                          ; preds = %if.end3
  %call8 = tail call %struct.bignum_st* @BN_get0_nist_prime_224() #3
  %call9 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call8, %struct.bignum_st* noundef %p) #3
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.end36, label %if.else13

if.else13:                                        ; preds = %if.else
  %call14 = tail call %struct.bignum_st* @BN_get0_nist_prime_256() #3
  %call15 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %p) #3
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.end36, label %if.else19

if.else19:                                        ; preds = %if.else13
  %call20 = tail call %struct.bignum_st* @BN_get0_nist_prime_384() #3
  %call21 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call20, %struct.bignum_st* noundef %p) #3
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.end36, label %if.else25

if.else25:                                        ; preds = %if.else19
  %call26 = tail call %struct.bignum_st* @BN_get0_nist_prime_521() #3
  %call27 = tail call i32 @BN_ucmp(%struct.bignum_st* noundef %call26, %struct.bignum_st* noundef %p) #3
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.end36, label %if.else31

if.else31:                                        ; preds = %if.else25
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.ossl_ec_GFp_nist_group_set_curve, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 135, i8* noundef null) #3
  br label %err

if.end36:                                         ; preds = %if.else25, %if.else19, %if.else13, %if.else, %if.end3
  %BN_nist_mod_224.sink = phi i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* [ @BN_nist_mod_192, %if.end3 ], [ @BN_nist_mod_224, %if.else ], [ @BN_nist_mod_256, %if.else13 ], [ @BN_nist_mod_384, %if.else19 ], [ @BN_nist_mod_521, %if.else25 ]
  %field_mod_func12 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 17
  store i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %BN_nist_mod_224.sink, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mod_func12, align 8, !tbaa !4
  %call37 = tail call i32 @ossl_ec_GFp_simple_group_set_curve(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  br label %err

err:                                              ; preds = %if.end36, %if.else31
  %ret.0 = phi i32 [ %call37, %if.end36 ], [ 0, %if.else31 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare i32 @ossl_ec_GFp_simple_group_get_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_group_get_degree(%struct.ec_group_st* noundef) #1

declare i32 @ossl_ec_group_simple_order_bits(%struct.ec_group_st* noundef) #1

declare i32 @ossl_ec_GFp_simple_group_check_discriminant(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_point_init(%struct.ec_point_st* noundef) #1

declare void @ossl_ec_GFp_simple_point_finish(%struct.ec_point_st* noundef) #1

declare void @ossl_ec_GFp_simple_point_clear_finish(%struct.ec_point_st* noundef) #1

declare i32 @ossl_ec_GFp_simple_point_copy(%struct.ec_point_st* noundef, %struct.ec_point_st* noundef) #1

declare i32 @ossl_ec_GFp_simple_point_set_to_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) #1

declare i32 @ossl_ec_GFp_simple_point_set_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_point_get_affine_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_add(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_dbl(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_invert(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_is_at_infinity(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef) #1

declare i32 @ossl_ec_GFp_simple_is_on_curve(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_cmp(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_make_affine(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_points_make_affine(%struct.ec_group_st* noundef, i64 noundef, %struct.ec_point_st** noundef, %struct.bignum_ctx* noundef) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_nist_field_mul(%struct.ec_group_st* noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #2 {
entry:
  %tobool = icmp ne %struct.ec_group_st* %group, null
  %tobool1 = icmp ne %struct.bignum_st* %r, null
  %or.cond = and i1 %tobool, %tobool1
  %tobool3 = icmp ne %struct.bignum_st* %a, null
  %or.cond19 = and i1 %or.cond, %tobool3
  %tobool5 = icmp ne %struct.bignum_st* %b, null
  %or.cond20 = and i1 %or.cond19, %tobool5
  br i1 %or.cond20, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ec_GFp_nist_field_mul, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #3
  br label %err

if.end:                                           ; preds = %entry
  %tobool6.not = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %tobool6.not, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 21
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !11
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #3
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %err, label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %ctx, %if.end ], [ %call, %if.then7 ]
  %ctx_new.0 = phi %struct.bignum_ctx* [ null, %if.end ], [ %call, %if.then7 ]
  %call11 = tail call i32 @BN_mul(%struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_st* noundef nonnull %b, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end10
  %field_mod_func = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 17
  %1 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mod_func, align 8, !tbaa !4
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %2 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !12
  %call15 = tail call i32 %1(%struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef %2, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool16.not = icmp ne i32 %call15, 0
  %spec.select = zext i1 %tobool16.not to i32
  br label %err

err:                                              ; preds = %if.end14, %if.end10, %if.then7, %if.then
  %ret.0 = phi i32 [ 0, %if.end10 ], [ 0, %if.then7 ], [ 0, %if.then ], [ %spec.select, %if.end14 ]
  %ctx_new.1 = phi %struct.bignum_ctx* [ %ctx_new.0, %if.end10 ], [ null, %if.then7 ], [ null, %if.then ], [ %ctx_new.0, %if.end14 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx_new.1) #3
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_GFp_nist_field_sqr(%struct.ec_group_st* noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #2 {
entry:
  %tobool = icmp ne %struct.ec_group_st* %group, null
  %tobool1 = icmp ne %struct.bignum_st* %r, null
  %or.cond = and i1 %tobool, %tobool1
  %tobool3 = icmp ne %struct.bignum_st* %a, null
  %or.cond17 = and i1 %or.cond, %tobool3
  br i1 %or.cond17, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.ossl_ec_GFp_nist_field_sqr, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 134, i8* noundef null) #3
  br label %err

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %tobool4.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 21
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !11
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #3
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %err, label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %ctx, %if.end ], [ %call, %if.then5 ]
  %ctx_new.0 = phi %struct.bignum_ctx* [ null, %if.end ], [ %call, %if.then5 ]
  %call9 = tail call i32 @BN_sqr(%struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef nonnull %a, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %if.end12

if.end12:                                         ; preds = %if.end8
  %field_mod_func = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 17
  %1 = load i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mod_func, align 8, !tbaa !4
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %2 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !12
  %call13 = tail call i32 %1(%struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef nonnull %r, %struct.bignum_st* noundef %2, %struct.bignum_ctx* noundef nonnull %ctx.addr.0) #3
  %tobool14.not = icmp ne i32 %call13, 0
  %spec.select = zext i1 %tobool14.not to i32
  br label %err

err:                                              ; preds = %if.end12, %if.end8, %if.then5, %if.then
  %ret.0 = phi i32 [ 0, %if.end8 ], [ 0, %if.then5 ], [ 0, %if.then ], [ %spec.select, %if.end12 ]
  %ctx_new.1 = phi %struct.bignum_ctx* [ %ctx_new.0, %if.end8 ], [ null, %if.then5 ], [ null, %if.then ], [ %ctx_new.0, %if.end12 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx_new.1) #3
  ret i32 %ret.0
}

declare i32 @ossl_ec_GFp_simple_field_inv(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #1

declare i64 @ossl_ec_key_simple_priv2oct(%struct.ec_key_st* noundef, i8* noundef, i64 noundef) #1

declare i32 @ossl_ec_key_simple_oct2priv(%struct.ec_key_st* noundef, i8* noundef, i64 noundef) #1

declare i32 @ossl_ec_key_simple_generate_key(%struct.ec_key_st* noundef) #1

declare i32 @ossl_ec_key_simple_check_key(%struct.ec_key_st* noundef) #1

declare i32 @ossl_ec_key_simple_generate_public_key(%struct.ec_key_st* noundef) #1

declare i32 @ossl_ecdh_simple_compute_key(i8** noundef, i64* noundef, %struct.ec_point_st* noundef, %struct.ec_key_st* noundef) #1

declare i32 @ossl_ecdsa_simple_sign_setup(%struct.ec_key_st* noundef, %struct.bignum_ctx* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) #1

declare %struct.ECDSA_SIG_st* @ossl_ecdsa_simple_sign_sig(i8* noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.ec_key_st* noundef) #1

declare i32 @ossl_ecdsa_simple_verify_sig(i8* noundef, i32 noundef, %struct.ECDSA_SIG_st* noundef, %struct.ec_key_st* noundef) #1

declare i32 @ossl_ec_GFp_simple_blind_coordinates(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_ladder_pre(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_ladder_step(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_ladder_post(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_ctx* noundef) #1

declare i32 @ossl_ec_GFp_simple_group_copy(%struct.ec_group_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #1

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_ucmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_get0_nist_prime_192() local_unnamed_addr #1

declare i32 @BN_nist_mod_192(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #1

declare %struct.bignum_st* @BN_get0_nist_prime_224() local_unnamed_addr #1

declare i32 @BN_nist_mod_224(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #1

declare %struct.bignum_st* @BN_get0_nist_prime_256() local_unnamed_addr #1

declare i32 @BN_nist_mod_256(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #1

declare %struct.bignum_st* @BN_get0_nist_prime_384() local_unnamed_addr #1

declare i32 @BN_nist_mod_384(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #1

declare %struct.bignum_st* @BN_get0_nist_prime_521() local_unnamed_addr #1

declare i32 @BN_nist_mod_521(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @ossl_ec_GFp_simple_group_set_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @BN_sqr(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 136}
!5 = !{!"ec_group_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !7, i64 44, !6, i64 48, !10, i64 56, !6, i64 64, !7, i64 72, !6, i64 96, !6, i64 104, !9, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !7, i64 152, !7, i64 160, !6, i64 168, !6, i64 176}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !6, i64 168}
!12 = !{!5, !6, i64 64}
