; ModuleID = 'crypto/ec/ec_lib.c'
source_filename = "crypto/ec/ec_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.nistz256_pre_comp_st = type opaque
%struct.ec_pre_comp_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"crypto/ec/ec_lib.c\00", align 1
@__func__.ossl_ec_group_new_ex = private unnamed_addr constant [21 x i8] c"ossl_ec_group_new_ex\00", align 1
@__func__.EC_GROUP_copy = private unnamed_addr constant [14 x i8] c"EC_GROUP_copy\00", align 1
@__func__.EC_GROUP_set_generator = private unnamed_addr constant [23 x i8] c"EC_GROUP_set_generator\00", align 1
@__func__.EC_GROUP_set_seed = private unnamed_addr constant [18 x i8] c"EC_GROUP_set_seed\00", align 1
@__func__.EC_GROUP_set_curve = private unnamed_addr constant [19 x i8] c"EC_GROUP_set_curve\00", align 1
@__func__.EC_GROUP_get_curve = private unnamed_addr constant [19 x i8] c"EC_GROUP_get_curve\00", align 1
@__func__.EC_GROUP_get_degree = private unnamed_addr constant [20 x i8] c"EC_GROUP_get_degree\00", align 1
@__func__.EC_GROUP_check_discriminant = private unnamed_addr constant [28 x i8] c"EC_GROUP_check_discriminant\00", align 1
@__func__.EC_POINT_new = private unnamed_addr constant [13 x i8] c"EC_POINT_new\00", align 1
@__func__.EC_POINT_copy = private unnamed_addr constant [14 x i8] c"EC_POINT_copy\00", align 1
@__func__.EC_POINT_set_to_infinity = private unnamed_addr constant [25 x i8] c"EC_POINT_set_to_infinity\00", align 1
@__func__.EC_POINT_set_Jprojective_coordinates_GFp = private unnamed_addr constant [41 x i8] c"EC_POINT_set_Jprojective_coordinates_GFp\00", align 1
@__func__.EC_POINT_get_Jprojective_coordinates_GFp = private unnamed_addr constant [41 x i8] c"EC_POINT_get_Jprojective_coordinates_GFp\00", align 1
@__func__.EC_POINT_set_affine_coordinates = private unnamed_addr constant [32 x i8] c"EC_POINT_set_affine_coordinates\00", align 1
@__func__.EC_POINT_get_affine_coordinates = private unnamed_addr constant [32 x i8] c"EC_POINT_get_affine_coordinates\00", align 1
@__func__.EC_POINT_add = private unnamed_addr constant [13 x i8] c"EC_POINT_add\00", align 1
@__func__.EC_POINT_dbl = private unnamed_addr constant [13 x i8] c"EC_POINT_dbl\00", align 1
@__func__.EC_POINT_invert = private unnamed_addr constant [16 x i8] c"EC_POINT_invert\00", align 1
@__func__.EC_POINT_is_at_infinity = private unnamed_addr constant [24 x i8] c"EC_POINT_is_at_infinity\00", align 1
@__func__.EC_POINT_is_on_curve = private unnamed_addr constant [21 x i8] c"EC_POINT_is_on_curve\00", align 1
@__func__.EC_POINT_cmp = private unnamed_addr constant [13 x i8] c"EC_POINT_cmp\00", align 1
@__func__.EC_POINT_make_affine = private unnamed_addr constant [21 x i8] c"EC_POINT_make_affine\00", align 1
@__func__.EC_POINTs_make_affine = private unnamed_addr constant [22 x i8] c"EC_POINTs_make_affine\00", align 1
@__func__.EC_POINTs_mul = private unnamed_addr constant [14 x i8] c"EC_POINTs_mul\00", align 1
@__func__.EC_POINT_mul = private unnamed_addr constant [13 x i8] c"EC_POINT_mul\00", align 1
@__func__.EC_GROUP_get_trinomial_basis = private unnamed_addr constant [29 x i8] c"EC_GROUP_get_trinomial_basis\00", align 1
@__func__.EC_GROUP_get_pentanomial_basis = private unnamed_addr constant [31 x i8] c"EC_GROUP_get_pentanomial_basis\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"point-format\00", align 1
@__func__.ossl_ec_group_set_params = private unnamed_addr constant [25 x i8] c"ossl_ec_group_set_params\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@__func__.EC_GROUP_new_from_params = private unnamed_addr constant [25 x i8] c"EC_GROUP_new_from_params\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"field-type\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"prime-field\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"characteristic-two-field\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"cofactor\00", align 1
@__func__.group_new_from_name = private unnamed_addr constant [20 x i8] c"group_new_from_name\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_group_st* @ossl_ec_group_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.ec_method_st* noundef %meth) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_method_st* %meth, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_ec_group_new_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 108, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %group_init = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %meth, i64 0, i32 2
  %0 = load i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)** %group_init, align 8, !tbaa !4
  %cmp1 = icmp eq i32 (%struct.ec_group_st*)* %0, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_ec_group_new_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 184, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 43) #8
  %1 = bitcast i8* %call to %struct.ec_group_st*
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_ec_group_new_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %libctx7 = getelementptr inbounds i8, i8* %call, i64 168
  %2 = bitcast i8* %libctx7 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !10
  %cmp8.not = icmp eq i8* %propq, null
  br i1 %cmp8.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end6
  %call10 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %propq, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 51) #8
  %propq11 = getelementptr inbounds i8, i8* %call, i64 176
  %3 = bitcast i8* %propq11 to i8**
  store i8* %call10, i8** %3, align 8, !tbaa !13
  %cmp13 = icmp eq i8* %call10, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then9
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_ec_group_new_ex, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %err

if.end16:                                         ; preds = %if.then9, %if.end6
  %meth17 = bitcast i8* %call to %struct.ec_method_st**
  store %struct.ec_method_st* %meth, %struct.ec_method_st** %meth17, align 8, !tbaa !14
  %flags = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %meth, i64 0, i32 0
  %4 = load i32, i32* %flags, align 8, !tbaa !15
  %and = and i32 %4, 2
  %cmp19 = icmp eq i32 %and, 0
  br i1 %cmp19, label %if.then20, label %if.end31

if.then20:                                        ; preds = %if.end16
  %call21 = tail call %struct.bignum_st* @BN_new() #8
  %order = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %order to %struct.bignum_st**
  store %struct.bignum_st* %call21, %struct.bignum_st** %5, align 8, !tbaa !16
  %cmp23 = icmp eq %struct.bignum_st* %call21, null
  br i1 %cmp23, label %err, label %if.end25

if.end25:                                         ; preds = %if.then20
  %call26 = tail call %struct.bignum_st* @BN_new() #8
  %cofactor = getelementptr inbounds i8, i8* %call, i64 24
  %6 = bitcast i8* %cofactor to %struct.bignum_st**
  store %struct.bignum_st* %call26, %struct.bignum_st** %6, align 8, !tbaa !17
  %cmp28 = icmp eq %struct.bignum_st* %call26, null
  br i1 %cmp28, label %err, label %if.end31

if.end31:                                         ; preds = %if.end25, %if.end16
  %asn1_flag = getelementptr inbounds i8, i8* %call, i64 36
  %7 = bitcast i8* %asn1_flag to i32*
  store i32 0, i32* %7, align 4, !tbaa !18
  %asn1_form = getelementptr inbounds i8, i8* %call, i64 44
  %8 = bitcast i8* %asn1_form to i32*
  store i32 4, i32* %8, align 4, !tbaa !19
  %9 = load i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)** %group_init, align 8, !tbaa !4
  %call33 = tail call i32 %9(%struct.ec_group_st* noundef nonnull %1) #8
  %tobool.not = icmp eq i32 %call33, 0
  br i1 %tobool.not, label %err, label %cleanup

err:                                              ; preds = %if.end31, %if.end25, %if.then20, %if.then14
  %order36 = getelementptr inbounds i8, i8* %call, i64 16
  %10 = bitcast i8* %order36 to %struct.bignum_st**
  %11 = load %struct.bignum_st*, %struct.bignum_st** %10, align 8, !tbaa !16
  tail call void @BN_free(%struct.bignum_st* noundef %11) #8
  %cofactor37 = getelementptr inbounds i8, i8* %call, i64 24
  %12 = bitcast i8* %cofactor37 to %struct.bignum_st**
  %13 = load %struct.bignum_st*, %struct.bignum_st** %12, align 8, !tbaa !17
  tail call void @BN_free(%struct.bignum_st* noundef %13) #8
  %propq38 = getelementptr inbounds i8, i8* %call, i64 176
  %14 = bitcast i8* %propq38 to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %15, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 75) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 76) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %err, %if.then5, %if.then2, %if.then
  %retval.0 = phi %struct.ec_group_st* [ null, %if.then ], [ null, %if.then2 ], [ null, %if.then5 ], [ null, %err ], [ %1, %if.end31 ]
  ret %struct.ec_group_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_new() local_unnamed_addr #2

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_group_st* @EC_GROUP_new(%struct.ec_method_st* noundef %meth) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ec_group_st* @ossl_ec_group_new_ex(%struct.ossl_lib_ctx_st* noundef null, i8* noundef null, %struct.ec_method_st* noundef %meth) #9
  ret %struct.ec_group_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @EC_pre_comp_free(%struct.ec_group_st* nocapture noundef %group) local_unnamed_addr #0 {
entry:
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19
  %0 = load i32, i32* %pre_comp_type, align 8, !tbaa !20
  switch i32 %0, label %sw.epilog [
    i32 5, label %sw.bb2
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %pre_comp = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 20
  %nistz256 = bitcast %union.anon* %pre_comp to %struct.nistz256_pre_comp_st**
  %1 = load %struct.nistz256_pre_comp_st*, %struct.nistz256_pre_comp_st** %nistz256, align 8, !tbaa !21
  tail call void @EC_nistz256_pre_comp_free(%struct.nistz256_pre_comp_st* noundef %1) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %pre_comp3 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 20
  %ec = bitcast %union.anon* %pre_comp3 to %struct.ec_pre_comp_st**
  %2 = load %struct.ec_pre_comp_st*, %struct.ec_pre_comp_st** %ec, align 8, !tbaa !21
  tail call void @EC_ec_pre_comp_free(%struct.ec_pre_comp_st* noundef %2) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb
  %pre_comp4 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 20
  %ec5 = bitcast %union.anon* %pre_comp4 to %struct.ec_pre_comp_st**
  store %struct.ec_pre_comp_st* null, %struct.ec_pre_comp_st** %ec5, align 8, !tbaa !21
  ret void
}

declare void @EC_nistz256_pre_comp_free(%struct.nistz256_pre_comp_st* noundef) local_unnamed_addr #2

declare void @EC_ec_pre_comp_free(%struct.ec_pre_comp_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @EC_GROUP_free(%struct.ec_group_st* noundef %group) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ec_group_st* %group, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %group_finish = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 3
  %1 = load void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)** %group_finish, align 8, !tbaa !22
  %cmp.not = icmp eq void (%struct.ec_group_st*)* %1, null
  br i1 %cmp.not, label %if.end4, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void %1(%struct.ec_group_st* noundef nonnull %group) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  tail call void @EC_pre_comp_free(%struct.ec_group_st* noundef nonnull %group) #9
  %mont_data = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  %2 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %2) #8
  %generator = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 1
  %3 = load %struct.ec_point_st*, %struct.ec_point_st** %generator, align 8, !tbaa !24
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %3) #9
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %4 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  tail call void @BN_free(%struct.bignum_st* noundef %4) #8
  %cofactor = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 3
  %5 = load %struct.bignum_st*, %struct.bignum_st** %cofactor, align 8, !tbaa !17
  tail call void @BN_free(%struct.bignum_st* noundef %5) #8
  %seed = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 8
  %6 = load i8*, i8** %seed, align 8, !tbaa !25
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 135) #8
  %propq = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 22
  %7 = load i8*, i8** %propq, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 136) #8
  %8 = bitcast %struct.ec_group_st* %group to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 137) #8
  br label %return

return:                                           ; preds = %entry, %if.end4
  ret void
}

declare void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @EC_POINT_free(%struct.ec_point_st* noundef %point) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_point_st* %point, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !26
  %point_finish = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 12
  %1 = load void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)** %point_finish, align 8, !tbaa !28
  %cmp1.not = icmp eq void (%struct.ec_point_st*)* %1, null
  br i1 %cmp1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void %1(%struct.ec_point_st* noundef nonnull %point) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %2 = bitcast %struct.ec_point_st* %point to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 753) #8
  br label %return

return:                                           ; preds = %entry, %if.end5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @EC_GROUP_clear_free(%struct.ec_group_st* noundef %group) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq %struct.ec_group_st* %group, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %group_clear_finish = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 4
  %1 = load void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)** %group_clear_finish, align 8, !tbaa !29
  %cmp.not = icmp eq void (%struct.ec_group_st*)* %1, null
  br i1 %cmp.not, label %if.else, label %if.end10.sink.split

if.else:                                          ; preds = %if.end
  %group_finish = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 3
  %2 = load void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)** %group_finish, align 8, !tbaa !22
  %cmp5.not = icmp eq void (%struct.ec_group_st*)* %2, null
  br i1 %cmp5.not, label %if.end10, label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.else, %if.end
  %.sink = phi void (%struct.ec_group_st*)* [ %1, %if.end ], [ %2, %if.else ]
  tail call void %.sink(%struct.ec_group_st* noundef nonnull %group) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else
  tail call void @EC_pre_comp_free(%struct.ec_group_st* noundef nonnull %group) #9
  %mont_data = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  %3 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %3) #8
  %generator = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 1
  %4 = load %struct.ec_point_st*, %struct.ec_point_st** %generator, align 8, !tbaa !24
  tail call void @EC_POINT_clear_free(%struct.ec_point_st* noundef %4) #9
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %5 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  tail call void @BN_clear_free(%struct.bignum_st* noundef %5) #8
  %cofactor = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 3
  %6 = load %struct.bignum_st*, %struct.bignum_st** %cofactor, align 8, !tbaa !17
  tail call void @BN_clear_free(%struct.bignum_st* noundef %6) #8
  %seed = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 8
  %7 = load i8*, i8** %seed, align 8, !tbaa !25
  %seed_len = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 9
  %8 = load i64, i64* %seed_len, align 8, !tbaa !30
  tail call void @CRYPTO_clear_free(i8* noundef %7, i64 noundef %8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 156) #8
  %9 = bitcast %struct.ec_group_st* %group to i8*
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %9, i64 noundef 184, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 157) #8
  br label %return

return:                                           ; preds = %entry, %if.end10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @EC_POINT_clear_free(%struct.ec_point_st* noundef %point) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_point_st* %point, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !26
  %point_clear_finish = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 13
  %1 = load void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)** %point_clear_finish, align 8, !tbaa !31
  %cmp1.not = icmp eq void (%struct.ec_point_st*)* %1, null
  br i1 %cmp1.not, label %if.else, label %if.end11.sink.split

if.else:                                          ; preds = %if.end
  %point_finish = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 12
  %2 = load void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)** %point_finish, align 8, !tbaa !28
  %cmp6.not = icmp eq void (%struct.ec_point_st*)* %2, null
  br i1 %cmp6.not, label %if.end11, label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.else, %if.end
  %.sink = phi void (%struct.ec_point_st*)* [ %1, %if.end ], [ %2, %if.else ]
  tail call void %.sink(%struct.ec_point_st* noundef nonnull %point) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.else
  %3 = bitcast %struct.ec_point_st* %point to i8*
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %3, i64 noundef 48, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 765) #8
  br label %return

return:                                           ; preds = %entry, %if.end11
  ret void
}

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_copy(%struct.ec_group_st* noundef %dest, %struct.ec_group_st* noundef %src) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %group_copy = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 5
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)** %group_copy, align 8, !tbaa !32
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_group_st*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EC_GROUP_copy, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %meth2 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 0
  %2 = load %struct.ec_method_st*, %struct.ec_method_st** %meth2, align 8, !tbaa !14
  %cmp3.not = icmp eq %struct.ec_method_st* %0, %2
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EC_GROUP_copy, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq %struct.ec_group_st* %dest, %src
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end5
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 21
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !10
  %libctx9 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 21
  store %struct.ossl_lib_ctx_st* %3, %struct.ossl_lib_ctx_st** %libctx9, align 8, !tbaa !10
  %curve_name = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 4
  %4 = load i32, i32* %curve_name, align 8, !tbaa !33
  %curve_name10 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 4
  store i32 %4, i32* %curve_name10, align 8, !tbaa !33
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 19
  %5 = load i32, i32* %pre_comp_type, align 8, !tbaa !20
  %pre_comp_type11 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 19
  store i32 %5, i32* %pre_comp_type11, align 8, !tbaa !20
  %6 = load i32, i32* %pre_comp_type, align 8, !tbaa !20
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb13
    i32 5, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end8
  %pre_comp = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 20
  %ec = bitcast %union.anon* %pre_comp to %struct.ec_pre_comp_st**
  store %struct.ec_pre_comp_st* null, %struct.ec_pre_comp_st** %ec, align 8, !tbaa !21
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end8
  %pre_comp14 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 20
  %nistz256 = bitcast %union.anon* %pre_comp14 to %struct.nistz256_pre_comp_st**
  %7 = load %struct.nistz256_pre_comp_st*, %struct.nistz256_pre_comp_st** %nistz256, align 8, !tbaa !21
  %call = tail call %struct.nistz256_pre_comp_st* @EC_nistz256_pre_comp_dup(%struct.nistz256_pre_comp_st* noundef %7) #8
  %pre_comp15 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 20
  %nistz25616 = bitcast %union.anon* %pre_comp15 to %struct.nistz256_pre_comp_st**
  store %struct.nistz256_pre_comp_st* %call, %struct.nistz256_pre_comp_st** %nistz25616, align 8, !tbaa !21
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end8
  %pre_comp19 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 20
  %ec20 = bitcast %union.anon* %pre_comp19 to %struct.ec_pre_comp_st**
  %8 = load %struct.ec_pre_comp_st*, %struct.ec_pre_comp_st** %ec20, align 8, !tbaa !21
  %call21 = tail call %struct.ec_pre_comp_st* @EC_ec_pre_comp_dup(%struct.ec_pre_comp_st* noundef %8) #8
  %pre_comp22 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 20
  %ec23 = bitcast %union.anon* %pre_comp22 to %struct.ec_pre_comp_st**
  store %struct.ec_pre_comp_st* %call21, %struct.ec_pre_comp_st** %ec23, align 8, !tbaa !21
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %sw.bb18, %sw.bb13, %sw.bb
  %mont_data = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 18
  %9 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  %cmp24.not = icmp eq %struct.bn_mont_ctx_st* %9, null
  %mont_data41 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 18
  %10 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data41, align 8, !tbaa !23
  br i1 %cmp24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %sw.epilog
  %cmp27 = icmp eq %struct.bn_mont_ctx_st* %10, null
  br i1 %cmp27, label %if.then28, label %if.end35

if.then28:                                        ; preds = %if.then25
  %call29 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #8
  store %struct.bn_mont_ctx_st* %call29, %struct.bn_mont_ctx_st** %mont_data41, align 8, !tbaa !23
  %cmp32 = icmp eq %struct.bn_mont_ctx_st* %call29, null
  br i1 %cmp32, label %return, label %if.then28.if.end35_crit_edge

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  %.pre = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  br label %if.end35

if.end35:                                         ; preds = %if.then28.if.end35_crit_edge, %if.then25
  %11 = phi %struct.bn_mont_ctx_st* [ %.pre, %if.then28.if.end35_crit_edge ], [ %9, %if.then25 ]
  %12 = phi %struct.bn_mont_ctx_st* [ %call29, %if.then28.if.end35_crit_edge ], [ %10, %if.then25 ]
  %call38 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_copy(%struct.bn_mont_ctx_st* noundef nonnull %12, %struct.bn_mont_ctx_st* noundef %11) #8
  %tobool.not = icmp eq %struct.bn_mont_ctx_st* %call38, null
  br i1 %tobool.not, label %return, label %if.end43

if.else:                                          ; preds = %sw.epilog
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %10) #8
  store %struct.bn_mont_ctx_st* null, %struct.bn_mont_ctx_st** %mont_data41, align 8, !tbaa !23
  br label %if.end43

if.end43:                                         ; preds = %if.end35, %if.else
  %generator = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 1
  %13 = load %struct.ec_point_st*, %struct.ec_point_st** %generator, align 8, !tbaa !24
  %cmp44.not = icmp eq %struct.ec_point_st* %13, null
  %generator63 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 1
  %14 = load %struct.ec_point_st*, %struct.ec_point_st** %generator63, align 8, !tbaa !24
  br i1 %cmp44.not, label %if.else62, label %if.then45

if.then45:                                        ; preds = %if.end43
  %cmp47 = icmp eq %struct.ec_point_st* %14, null
  br i1 %cmp47, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.then45
  %call49 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %dest) #9
  store %struct.ec_point_st* %call49, %struct.ec_point_st** %generator63, align 8, !tbaa !24
  %cmp52 = icmp eq %struct.ec_point_st* %call49, null
  br i1 %cmp52, label %return, label %if.then48.if.end55_crit_edge

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  %.pre166 = load %struct.ec_point_st*, %struct.ec_point_st** %generator, align 8, !tbaa !24
  br label %if.end55

if.end55:                                         ; preds = %if.then48.if.end55_crit_edge, %if.then45
  %15 = phi %struct.ec_point_st* [ %.pre166, %if.then48.if.end55_crit_edge ], [ %13, %if.then45 ]
  %16 = phi %struct.ec_point_st* [ %call49, %if.then48.if.end55_crit_edge ], [ %14, %if.then45 ]
  %call58 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef nonnull %16, %struct.ec_point_st* noundef %15) #9
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %return, label %if.end65

if.else62:                                        ; preds = %if.end43
  tail call void @EC_POINT_clear_free(%struct.ec_point_st* noundef %14) #9
  store %struct.ec_point_st* null, %struct.ec_point_st** %generator63, align 8, !tbaa !24
  br label %if.end65

if.end65:                                         ; preds = %if.end55, %if.else62
  %17 = load %struct.ec_method_st*, %struct.ec_method_st** %meth2, align 8, !tbaa !14
  %flags = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %17, i64 0, i32 0
  %18 = load i32, i32* %flags, align 8, !tbaa !15
  %and = and i32 %18, 2
  %cmp67 = icmp eq i32 %and, 0
  br i1 %cmp67, label %if.then68, label %if.end79

if.then68:                                        ; preds = %if.end65
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 2
  %19 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %order69 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 2
  %20 = load %struct.bignum_st*, %struct.bignum_st** %order69, align 8, !tbaa !16
  %call70 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %19, %struct.bignum_st* noundef %20) #8
  %tobool71.not = icmp eq %struct.bignum_st* %call70, null
  br i1 %tobool71.not, label %return, label %if.end73

if.end73:                                         ; preds = %if.then68
  %cofactor = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 3
  %21 = load %struct.bignum_st*, %struct.bignum_st** %cofactor, align 8, !tbaa !17
  %cofactor74 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 3
  %22 = load %struct.bignum_st*, %struct.bignum_st** %cofactor74, align 8, !tbaa !17
  %call75 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %21, %struct.bignum_st* noundef %22) #8
  %tobool76.not = icmp eq %struct.bignum_st* %call75, null
  br i1 %tobool76.not, label %return, label %if.end79

if.end79:                                         ; preds = %if.end73, %if.end65
  %asn1_flag = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 5
  %23 = load i32, i32* %asn1_flag, align 4, !tbaa !18
  %asn1_flag80 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 5
  store i32 %23, i32* %asn1_flag80, align 4, !tbaa !18
  %asn1_form = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 7
  %24 = load i32, i32* %asn1_form, align 4, !tbaa !19
  %asn1_form81 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 7
  store i32 %24, i32* %asn1_form81, align 4, !tbaa !19
  %decoded_from_explicit_params = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 6
  %25 = load i32, i32* %decoded_from_explicit_params, align 8, !tbaa !34
  %decoded_from_explicit_params82 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 6
  store i32 %25, i32* %decoded_from_explicit_params82, align 8, !tbaa !34
  %seed = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 8
  %26 = load i8*, i8** %seed, align 8, !tbaa !25
  %tobool83.not = icmp eq i8* %26, null
  %seed101 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 8
  %27 = load i8*, i8** %seed101, align 8, !tbaa !25
  br i1 %tobool83.not, label %if.else100, label %if.then84

if.then84:                                        ; preds = %if.end79
  tail call void @CRYPTO_free(i8* noundef %27, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 249) #8
  %seed_len = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %src, i64 0, i32 9
  %28 = load i64, i64* %seed_len, align 8, !tbaa !30
  %call86 = tail call i8* @CRYPTO_malloc(i64 noundef %28, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 250) #8
  store i8* %call86, i8** %seed101, align 8, !tbaa !25
  %cmp88 = icmp eq i8* %call86, null
  br i1 %cmp88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.then84
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EC_GROUP_copy, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %return

if.end90:                                         ; preds = %if.then84
  %29 = load i8*, i8** %seed, align 8, !tbaa !25
  %30 = load i64, i64* %seed_len, align 8, !tbaa !30
  %call94 = tail call i8* @memcpy(i8* noundef nonnull %call86, i8* noundef %29, i64 noundef %30) #8
  %tobool95.not = icmp eq i8* %call94, null
  br i1 %tobool95.not, label %return, label %if.end97

if.end97:                                         ; preds = %if.end90
  %31 = load i64, i64* %seed_len, align 8, !tbaa !30
  br label %if.end104

if.else100:                                       ; preds = %if.end79
  tail call void @CRYPTO_free(i8* noundef %27, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 258) #8
  store i8* null, i8** %seed101, align 8, !tbaa !25
  br label %if.end104

if.end104:                                        ; preds = %if.else100, %if.end97
  %.sink = phi i64 [ 0, %if.else100 ], [ %31, %if.end97 ]
  %seed_len103 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %dest, i64 0, i32 9
  store i64 %.sink, i64* %seed_len103, align 8, !tbaa !30
  %32 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %group_copy106 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %32, i64 0, i32 5
  %33 = load i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)** %group_copy106, align 8, !tbaa !32
  %call107 = tail call i32 %33(%struct.ec_group_st* noundef nonnull %dest, %struct.ec_group_st* noundef nonnull %src) #8
  br label %return

return:                                           ; preds = %if.end90, %if.end73, %if.then68, %if.end55, %if.then48, %if.end35, %if.then28, %if.end5, %if.end104, %if.then89, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then89 ], [ %call107, %if.end104 ], [ 1, %if.end5 ], [ 0, %if.then28 ], [ 0, %if.end35 ], [ 0, %if.then48 ], [ 0, %if.end55 ], [ 0, %if.then68 ], [ 0, %if.end73 ], [ 0, %if.end90 ]
  ret i32 %retval.0
}

declare %struct.nistz256_pre_comp_st* @EC_nistz256_pre_comp_dup(%struct.nistz256_pre_comp_st* noundef) local_unnamed_addr #2

declare %struct.ec_pre_comp_st* @EC_ec_pre_comp_dup(%struct.ec_pre_comp_st* noundef) local_unnamed_addr #2

declare %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() local_unnamed_addr #2

declare %struct.bn_mont_ctx_st* @BN_MONT_CTX_copy(%struct.bn_mont_ctx_st* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef readonly %group) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_group_st* %group, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 721, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EC_POINT_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %point_init = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 11
  %1 = load i32 (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*)** %point_init, align 8, !tbaa !35
  %cmp1 = icmp eq i32 (%struct.ec_point_st*)* %1, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 725, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EC_POINT_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 729) #8
  %2 = bitcast i8* %call to %struct.ec_point_st*
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EC_POINT_new, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %3 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %meth8 = bitcast i8* %call to %struct.ec_method_st**
  store %struct.ec_method_st* %3, %struct.ec_method_st** %meth8, align 8, !tbaa !26
  %curve_name = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 4
  %4 = load i32, i32* %curve_name, align 8, !tbaa !33
  %curve_name9 = getelementptr inbounds i8, i8* %call, i64 8
  %5 = bitcast i8* %curve_name9 to i32*
  store i32 %4, i32* %5, align 8, !tbaa !36
  %point_init11 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %3, i64 0, i32 11
  %6 = load i32 (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*)** %point_init11, align 8, !tbaa !35
  %call12 = tail call i32 %6(%struct.ec_point_st* noundef nonnull %2) #8
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then13, label %cleanup

if.then13:                                        ; preds = %if.end6
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 739) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then13, %if.then5, %if.then2, %if.then
  %retval.0 = phi %struct.ec_point_st* [ null, %if.then ], [ null, %if.then2 ], [ null, %if.then5 ], [ null, %if.then13 ], [ %2, %if.end6 ]
  ret %struct.ec_point_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_copy(%struct.ec_point_st* noundef %dest, %struct.ec_point_st* noundef %src) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %dest, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !26
  %point_copy = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 14
  %1 = load i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)** %point_copy, align 8, !tbaa !37
  %cmp = icmp eq i32 (%struct.ec_point_st*, %struct.ec_point_st*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EC_POINT_copy, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %meth2 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %src, i64 0, i32 0
  %2 = load %struct.ec_method_st*, %struct.ec_method_st** %meth2, align 8, !tbaa !26
  %cmp3.not = icmp eq %struct.ec_method_st* %0, %2
  br i1 %cmp3.not, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %if.end
  %curve_name = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %dest, i64 0, i32 1
  %3 = load i32, i32* %curve_name, align 8, !tbaa !36
  %curve_name4 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %src, i64 0, i32 1
  %4 = load i32, i32* %curve_name4, align 8, !tbaa !36
  %cmp5.not = icmp eq i32 %3, %4
  %cmp7.not = icmp eq i32 %3, 0
  %or.cond = or i1 %cmp7.not, %cmp5.not
  %cmp10.not = icmp eq i32 %4, 0
  %or.cond29 = or i1 %cmp10.not, %or.cond
  br i1 %or.cond29, label %if.end12, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 778, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EC_POINT_copy, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %cmp13 = icmp eq %struct.ec_point_st* %dest, %src
  br i1 %cmp13, label %return, label %if.end15

if.end15:                                         ; preds = %if.end12
  %call = tail call i32 %1(%struct.ec_point_st* noundef nonnull %dest, %struct.ec_point_st* noundef nonnull %src) #8
  br label %return

return:                                           ; preds = %if.end12, %if.end15, %if.then11, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then11 ], [ %call, %if.end15 ], [ 1, %if.end12 ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_group_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %a, i64 0, i32 21
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !10
  %propq = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %a, i64 0, i32 22
  %1 = load i8*, i8** %propq, align 8, !tbaa !13
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %a, i64 0, i32 0
  %2 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %call = tail call %struct.ec_group_st* @ossl_ec_group_new_ex(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %1, %struct.ec_method_st* noundef %2) #9
  %cmp1 = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @EC_GROUP_copy(%struct.ec_group_st* noundef nonnull %call, %struct.ec_group_st* noundef nonnull %a) #9
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end3
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.then8
  %retval.0 = phi %struct.ec_group_st* [ null, %if.then8 ], [ null, %entry ], [ null, %if.end ], [ %call, %if.end3 ]
  ret %struct.ec_group_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ec_method_st* @EC_GROUP_method_of(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  ret %struct.ec_method_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EC_METHOD_get_field_type(%struct.ec_method_st* nocapture noundef readonly %meth) local_unnamed_addr #4 {
entry:
  %field_type = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %meth, i64 0, i32 1
  %0 = load i32, i32* %field_type, align 4, !tbaa !38
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %generator, %struct.bignum_st* noundef %order, %struct.bignum_st* noundef %cofactor) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_point_st* %generator, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.EC_GROUP_set_generator, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !39
  %cmp1 = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp1, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false3, label %if.then7

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !39
  %call5 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %1) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.EC_GROUP_set_generator, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 103, i8* noundef null) #8
  br label %return

if.end8:                                          ; preds = %lor.lhs.false3
  %cmp9 = icmp eq %struct.bignum_st* %order, null
  br i1 %cmp9, label %if.then21, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end8
  %call11 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %order) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %if.then21

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %order) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %if.then21

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %order) #8
  %2 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !39
  %call19 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %2) #8
  %add = add nsw i32 %call19, 1
  %cmp20 = icmp sgt i32 %call17, %add
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false10, %if.end8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.EC_GROUP_set_generator, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 122, i8* noundef null) #8
  br label %return

if.end22:                                         ; preds = %lor.lhs.false16
  %cmp23.not = icmp eq %struct.bignum_st* %cofactor, null
  br i1 %cmp23.not, label %if.end27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end22
  %call24 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %cofactor) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.EC_GROUP_set_generator, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 164, i8* noundef null) #8
  br label %return

if.end27:                                         ; preds = %land.lhs.true, %if.end22
  %generator28 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 1
  %3 = load %struct.ec_point_st*, %struct.ec_point_st** %generator28, align 8, !tbaa !24
  %cmp29 = icmp eq %struct.ec_point_st* %3, null
  br i1 %cmp29, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end27
  %call31 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %group) #9
  store %struct.ec_point_st* %call31, %struct.ec_point_st** %generator28, align 8, !tbaa !24
  %cmp34 = icmp eq %struct.ec_point_st* %call31, null
  br i1 %cmp34, label %return, label %if.end37

if.end37:                                         ; preds = %if.then30, %if.end27
  %4 = phi %struct.ec_point_st* [ %call31, %if.then30 ], [ %3, %if.end27 ]
  %call39 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef nonnull %4, %struct.ec_point_st* noundef nonnull %generator) #9
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %return, label %if.end42

if.end42:                                         ; preds = %if.end37
  %order43 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %5 = load %struct.bignum_st*, %struct.bignum_st** %order43, align 8, !tbaa !16
  %call44 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %5, %struct.bignum_st* noundef nonnull %order) #8
  %tobool45.not = icmp eq %struct.bignum_st* %call44, null
  br i1 %tobool45.not, label %return, label %if.end47

if.end47:                                         ; preds = %if.end42
  br i1 %cmp23.not, label %if.else, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %if.end47
  %call50 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %cofactor) #8
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.else

if.then52:                                        ; preds = %land.lhs.true49
  %cofactor53 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 3
  %6 = load %struct.bignum_st*, %struct.bignum_st** %cofactor53, align 8, !tbaa !17
  %call54 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %6, %struct.bignum_st* noundef nonnull %cofactor) #8
  %tobool55.not = icmp eq %struct.bignum_st* %call54, null
  br i1 %tobool55.not, label %return, label %if.end63

if.else:                                          ; preds = %land.lhs.true49, %if.end47
  %call58 = tail call fastcc i32 @ec_guess_cofactor(%struct.ec_group_st* noundef nonnull %group) #9
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.else
  %cofactor61 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 3
  %7 = load %struct.bignum_st*, %struct.bignum_st** %cofactor61, align 8, !tbaa !17
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %7) #8
  br label %return

if.end63:                                         ; preds = %if.else, %if.then52
  %8 = load %struct.bignum_st*, %struct.bignum_st** %order43, align 8, !tbaa !16
  %call65 = tail call i32 @BN_is_odd(%struct.bignum_st* noundef %8) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %if.end63
  %call68 = tail call fastcc i32 @ec_precompute_mont_data(%struct.ec_group_st* noundef nonnull %group) #9
  br label %return

if.end69:                                         ; preds = %if.end63
  %mont_data = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  %9 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %9) #8
  store %struct.bn_mont_ctx_st* null, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  br label %return

return:                                           ; preds = %if.then52, %if.end42, %if.end37, %if.then30, %if.end69, %if.then67, %if.then60, %if.then26, %if.then21, %if.then7, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then7 ], [ 0, %if.then21 ], [ 0, %if.then26 ], [ %call68, %if.then67 ], [ 1, %if.end69 ], [ 0, %if.then60 ], [ 0, %if.then30 ], [ 0, %if.end37 ], [ 0, %if.end42 ], [ 0, %if.then52 ]
  ret i32 %retval.0
}

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_guess_cofactor(%struct.ec_group_st* nocapture noundef readonly %group) unnamed_addr #0 {
entry:
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %0) #8
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %1 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !39
  %call1 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %1) #8
  %add = add nsw i32 %call1, 1
  %div = sdiv i32 %add, 2
  %add2 = add nsw i32 %div, 3
  %cmp.not = icmp sgt i32 %call, %add2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %cofactor = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 3
  %2 = load %struct.bignum_st*, %struct.bignum_st** %cofactor, align 8, !tbaa !17
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 21
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !10
  %call3 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %3) #8
  %cmp4 = icmp eq %struct.bignum_ctx* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call3) #8
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call3) #8
  %cmp8 = icmp eq %struct.bignum_st* %call7, null
  br i1 %cmp8, label %err, label %if.end10

if.end10:                                         ; preds = %if.end6
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %4 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_type = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %4, i64 0, i32 1
  %5 = load i32, i32* %field_type, align 4, !tbaa !38
  %cmp11 = icmp eq i32 %5, 407
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  tail call void @BN_zero_ex(%struct.bignum_st* noundef nonnull %call7) #8
  %6 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !39
  %call14 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %6) #8
  %sub = add nsw i32 %call14, -1
  %call15 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call7, i32 noundef %sub) #8
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %err, label %if.end23

if.else:                                          ; preds = %if.end10
  %7 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !39
  %call19 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef %7) #8
  %tobool20.not = icmp eq %struct.bignum_st* %call19, null
  br i1 %tobool20.not, label %err, label %if.end23

if.end23:                                         ; preds = %if.else, %if.then12
  %cofactor24 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 3
  %8 = load %struct.bignum_st*, %struct.bignum_st** %cofactor24, align 8, !tbaa !17
  %9 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %call26 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end23
  %10 = load %struct.bignum_st*, %struct.bignum_st** %cofactor24, align 8, !tbaa !17
  %call30 = tail call i32 @BN_add(%struct.bignum_st* noundef %10, %struct.bignum_st* noundef %10, %struct.bignum_st* noundef nonnull %call7) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %11 = load %struct.bignum_st*, %struct.bignum_st** %cofactor24, align 8, !tbaa !17
  %call35 = tail call %struct.bignum_st* @BN_value_one() #8
  %call36 = tail call i32 @BN_add(%struct.bignum_st* noundef %11, %struct.bignum_st* noundef %11, %struct.bignum_st* noundef %call35) #8
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false32
  %12 = load %struct.bignum_st*, %struct.bignum_st** %cofactor24, align 8, !tbaa !17
  %13 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %call42 = tail call i32 @BN_div(%struct.bignum_st* noundef %12, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %12, %struct.bignum_st* noundef %13, %struct.bignum_ctx* noundef nonnull %call3) #8
  %tobool43.not = icmp ne i32 %call42, 0
  %spec.select = zext i1 %tobool43.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false38, %if.end23, %lor.lhs.false, %lor.lhs.false32, %if.else, %if.then12, %if.end6
  %ret.0 = phi i32 [ 0, %if.end6 ], [ 0, %lor.lhs.false32 ], [ 0, %lor.lhs.false ], [ 0, %if.end23 ], [ 0, %if.then12 ], [ 0, %if.else ], [ %spec.select, %lor.lhs.false38 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %call3) #8
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %ret.0, %err ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_is_odd(%struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_precompute_mont_data(%struct.ec_group_st* nocapture noundef %group) unnamed_addr #0 {
entry:
  %libctx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 21
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !10
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %0) #8
  %mont_data = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  %1 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %1) #8
  store %struct.bn_mont_ctx_st* null, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  %cmp = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bn_mont_ctx_st* @BN_MONT_CTX_new() #8
  store %struct.bn_mont_ctx_st* %call2, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  %cmp5 = icmp eq %struct.bn_mont_ctx_st* %call2, null
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %2 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %call9 = tail call i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef nonnull %call2, %struct.bignum_st* noundef %2, %struct.bignum_ctx* noundef nonnull %call) #8
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then10, label %err

if.then10:                                        ; preds = %if.end7
  %3 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  tail call void @BN_MONT_CTX_free(%struct.bn_mont_ctx_st* noundef %3) #8
  store %struct.bn_mont_ctx_st* null, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  br label %err

err:                                              ; preds = %if.end7, %if.end, %entry, %if.then10
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then10 ], [ 1, %if.end7 ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #8
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %generator = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 1
  %0 = load %struct.ec_point_st*, %struct.ec_point_st** %generator, align 8, !tbaa !24
  ret %struct.ec_point_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bn_mont_ctx_st* @EC_GROUP_get_mont_data(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %mont_data = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  %0 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  ret %struct.bn_mont_ctx_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_get_order(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %order, %struct.bignum_ctx* nocapture noundef readnone %ctx) local_unnamed_addr #0 {
entry:
  %order1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %order1, align 8, !tbaa !16
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %order, %struct.bignum_st* noundef nonnull %0) #8
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %order) #8
  %tobool6.not = icmp eq i32 %call5, 0
  %lnot.ext = zext i1 %tobool6.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %lnot.ext, %if.end4 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  ret %struct.bignum_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_order_bits(%struct.ec_group_st* noundef %group) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %group_order_bits = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 9
  %1 = load i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)** %group_order_bits, align 8, !tbaa !40
  %call = tail call i32 %1(%struct.ec_group_st* noundef %group) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_get_cofactor(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %cofactor, %struct.bignum_ctx* nocapture noundef readnone %ctx) local_unnamed_addr #0 {
entry:
  %cofactor1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 3
  %0 = load %struct.bignum_st*, %struct.bignum_st** %cofactor1, align 8, !tbaa !17
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %cofactor, %struct.bignum_st* noundef nonnull %0) #8
  %tobool.not = icmp eq %struct.bignum_st* %call, null
  br i1 %tobool.not, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %1 = load %struct.bignum_st*, %struct.bignum_st** %cofactor1, align 8, !tbaa !17
  %call6 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %1) #8
  %tobool7.not = icmp eq i32 %call6, 0
  %lnot.ext = zext i1 %tobool7.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ %lnot.ext, %if.end4 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %cofactor = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 3
  %0 = load %struct.bignum_st*, %struct.bignum_st** %cofactor, align 8, !tbaa !17
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EC_GROUP_set_curve_name(%struct.ec_group_st* nocapture noundef writeonly %group, i32 noundef %nid) local_unnamed_addr #5 {
entry:
  %curve_name = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 4
  store i32 %nid, i32* %curve_name, align 8, !tbaa !33
  %cmp.not = icmp ne i32 %nid, 0
  %cond = zext i1 %cmp.not to i32
  %asn1_flag = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 5
  store i32 %cond, i32* %asn1_flag, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %curve_name = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 4
  %0 = load i32, i32* %curve_name, align 8, !tbaa !33
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @EC_GROUP_get0_field(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %0 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !39
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EC_GROUP_get_field_type(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_type = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 1
  %1 = load i32, i32* %field_type, align 4, !tbaa !38
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* nocapture noundef writeonly %group, i32 noundef %flag) local_unnamed_addr #5 {
entry:
  %asn1_flag = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 5
  store i32 %flag, i32* %asn1_flag, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %asn1_flag = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 5
  %0 = load i32, i32* %asn1_flag, align 4, !tbaa !18
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @EC_GROUP_set_point_conversion_form(%struct.ec_group_st* nocapture noundef writeonly %group, i32 noundef %form) local_unnamed_addr #5 {
entry:
  %asn1_form = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 7
  store i32 %form, i32* %asn1_form, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @EC_GROUP_get_point_conversion_form(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %asn1_form = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 7
  %0 = load i32, i32* %asn1_form, align 4, !tbaa !19
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i64 @EC_GROUP_set_seed(%struct.ec_group_st* nocapture noundef %group, i8* noundef %p, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %seed = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 8
  %0 = load i8*, i8** %seed, align 8, !tbaa !25
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 529) #8
  store i8* null, i8** %seed, align 8, !tbaa !25
  %seed_len = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 9
  store i64 0, i64* %seed_len, align 8, !tbaa !30
  %tobool = icmp ne i64 %len, 0
  %tobool2 = icmp ne i8* %p, null
  %or.cond = and i1 %tobool2, %tobool
  br i1 %or.cond, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %len, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 536) #8
  store i8* %call, i8** %seed, align 8, !tbaa !25
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 537, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.EC_GROUP_set_seed, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %return

if.end5:                                          ; preds = %if.end
  %call7 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %p, i64 noundef %len) #8
  store i64 %len, i64* %seed_len, align 8, !tbaa !30
  br label %return

return:                                           ; preds = %entry, %if.end5, %if.then4
  %retval.0 = phi i64 [ 0, %if.then4 ], [ %len, %if.end5 ], [ 1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @EC_GROUP_get0_seed(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %seed = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 8
  %0 = load i8*, i8** %seed, align 8, !tbaa !25
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @EC_GROUP_get_seed_len(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #4 {
entry:
  %seed_len = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 9
  %0 = load i64, i64* %seed_len, align 8, !tbaa !30
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %group_set_curve = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 6
  %1 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %group_set_curve, align 8, !tbaa !41
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 560, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EC_GROUP_set_curve, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %group_get_curve = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 7
  %1 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %group_get_curve, align 8, !tbaa !42
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 570, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.EC_GROUP_get_curve, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_set_curve_GFp(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_get_curve_GFp(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_set_curve_GF2m(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_get_curve_GF2m(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %p, %struct.bignum_st* noundef %a, %struct.bignum_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef %group) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %group_get_degree = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 8
  %1 = load i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)** %group_get_degree, align 8, !tbaa !43
  %cmp = icmp eq i32 (%struct.ec_group_st*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 607, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.EC_GROUP_get_degree, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_check_discriminant(%struct.ec_group_st* noundef %group, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %group_check_discriminant = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 10
  %1 = load i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)** %group_check_discriminant, align 8, !tbaa !44
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 616, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EC_GROUP_check_discriminant, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_cmp(%struct.ec_group_st* noundef %a, %struct.ec_group_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %a) #9
  %call1 = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %b) #9
  %cmp.not = icmp eq i32 %call, %call1
  br i1 %cmp.not, label %if.end, label %cleanup88

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %a) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %b) #9
  %tobool4.not = icmp eq i32 %call3, 0
  %cmp8.not = icmp eq i32 %call2, %call3
  %or.cond158 = select i1 %tobool4.not, i1 true, i1 %cmp8.not
  br i1 %or.cond158, label %if.end10, label %cleanup88

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %a, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %flags = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %flags, align 8, !tbaa !15
  %and = and i32 %1, 2
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end13, label %cleanup88

if.end13:                                         ; preds = %if.end10
  %cmp14 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp14, label %if.end17, label %if.end20

if.end17:                                         ; preds = %if.end13
  %call16 = tail call %struct.bignum_ctx* @BN_CTX_new() #8
  %cmp18 = icmp eq %struct.bignum_ctx* %call16, null
  br i1 %cmp18, label %cleanup88, label %if.end20

if.end20:                                         ; preds = %if.end13, %if.end17
  %ctx.addr.0156 = phi %struct.bignum_ctx* [ %call16, %if.end17 ], [ %ctx, %if.end13 ]
  %ctx_new.0155 = phi %struct.bignum_ctx* [ %call16, %if.end17 ], [ null, %if.end13 ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.0156) #8
  %call21 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0156) #8
  %call22 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0156) #8
  %call23 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0156) #8
  %call24 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0156) #8
  %call25 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0156) #8
  %call26 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.0156) #8
  %cmp27 = icmp eq %struct.bignum_st* %call26, null
  br i1 %cmp27, label %cleanup88.sink.split, label %if.end29

if.end29:                                         ; preds = %if.end20
  %2 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %group_get_curve = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %2, i64 0, i32 7
  %3 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %group_get_curve, align 8, !tbaa !42
  %call31 = tail call i32 %3(%struct.ec_group_st* noundef nonnull %a, %struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %call23, %struct.bignum_ctx* noundef nonnull %ctx.addr.0156) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup88.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end29
  %meth33 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %b, i64 0, i32 0
  %4 = load %struct.ec_method_st*, %struct.ec_method_st** %meth33, align 8, !tbaa !14
  %group_get_curve34 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %4, i64 0, i32 7
  %5 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %group_get_curve34, align 8, !tbaa !42
  %call35 = tail call i32 %5(%struct.ec_group_st* noundef %b, %struct.bignum_st* noundef %call24, %struct.bignum_st* noundef %call25, %struct.bignum_st* noundef nonnull %call26, %struct.bignum_ctx* noundef nonnull %ctx.addr.0156) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cleanup88.sink.split, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %call41 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call21, %struct.bignum_st* noundef %call24) #8
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %lor.lhs.false43, label %cleanup88.sink.split

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %call44 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call22, %struct.bignum_st* noundef %call25) #8
  %cmp45.not = icmp eq i32 %call44, 0
  br i1 %cmp45.not, label %lor.lhs.false46, label %cleanup88.sink.split

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %call47 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call23, %struct.bignum_st* noundef nonnull %call26) #8
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %lor.lhs.false52, label %cleanup88.sink.split

lor.lhs.false52:                                  ; preds = %lor.lhs.false46
  %call53 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef nonnull %a) #9
  %call54 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef nonnull %b) #9
  %call55 = tail call i32 @EC_POINT_cmp(%struct.ec_group_st* noundef nonnull %a, %struct.ec_point_st* noundef %call53, %struct.ec_point_st* noundef %call54, %struct.bignum_ctx* noundef nonnull %ctx.addr.0156) #9
  %cmp56.not = icmp eq i32 %call55, 0
  br i1 %cmp56.not, label %if.then60, label %cleanup88.sink.split

if.then60:                                        ; preds = %lor.lhs.false52
  %call61 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef nonnull %a) #9
  %call62 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef nonnull %b) #9
  %cmp63 = icmp eq %struct.bignum_st* %call61, null
  %cmp65 = icmp eq %struct.bignum_st* %call62, null
  %or.cond = select i1 %cmp63, i1 true, i1 %cmp65
  br i1 %or.cond, label %cleanup88.sink.split, label %if.end67

if.end67:                                         ; preds = %if.then60
  %call68 = tail call i32 @BN_cmp(%struct.bignum_st* noundef nonnull %call61, %struct.bignum_st* noundef nonnull %call62) #8
  %cmp69.not = icmp eq i32 %call68, 0
  br i1 %cmp69.not, label %if.end71, label %cleanup88.sink.split

if.end71:                                         ; preds = %if.end67
  %call72 = tail call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef nonnull %a) #9
  %call73 = tail call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef nonnull %b) #9
  %call74 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call72) #8
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %cleanup88.sink.split

land.lhs.true76:                                  ; preds = %if.end71
  %call77 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %call73) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.lhs.true79, label %cleanup88.sink.split

land.lhs.true79:                                  ; preds = %land.lhs.true76
  %call80 = tail call i32 @BN_cmp(%struct.bignum_st* noundef %call72, %struct.bignum_st* noundef %call73) #8
  %cmp81.not = icmp ne i32 %call80, 0
  %spec.select = zext i1 %cmp81.not to i32
  br label %cleanup88.sink.split

cleanup88.sink.split:                             ; preds = %if.end71, %land.lhs.true76, %if.end67, %if.then60, %lor.lhs.false40, %lor.lhs.false43, %lor.lhs.false46, %lor.lhs.false, %if.end29, %lor.lhs.false52, %land.lhs.true79, %if.end20
  %retval.0.ph = phi i32 [ -1, %if.end20 ], [ -1, %if.then60 ], [ 1, %if.end67 ], [ 0, %if.end71 ], [ 0, %land.lhs.true76 ], [ %spec.select, %land.lhs.true79 ], [ 1, %lor.lhs.false40 ], [ 1, %lor.lhs.false43 ], [ 1, %lor.lhs.false46 ], [ 1, %lor.lhs.false ], [ 1, %if.end29 ], [ 1, %lor.lhs.false52 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.0156) #8
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx_new.0155) #8
  br label %cleanup88

cleanup88:                                        ; preds = %cleanup88.sink.split, %land.lhs.true, %if.end17, %if.end10, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.end10 ], [ -1, %if.end17 ], [ 1, %land.lhs.true ], [ %retval.0.ph, %cleanup88.sink.split ]
  ret i32 %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #2

declare void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_cmp(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_cmp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %a, %struct.ec_point_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %point_cmp = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 26
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %point_cmp, align 8, !tbaa !45
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1018, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EC_POINT_cmp, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %a, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %b, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1022, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EC_POINT_cmp, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %call7 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %a, %struct.ec_point_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %call7, %if.end4 ], [ -1, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_point_st* @EC_POINT_dup(%struct.ec_point_st* noundef %a, %struct.ec_group_st* noundef %group) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_point_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %group) #9
  %cmp1 = icmp eq %struct.ec_point_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @EC_POINT_copy(%struct.ec_point_st* noundef nonnull %call, %struct.ec_point_st* noundef nonnull %a) #9
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end3
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.then5
  %retval.0 = phi %struct.ec_point_st* [ null, %if.then5 ], [ null, %entry ], [ null, %if.end ], [ %call, %if.end3 ]
  ret %struct.ec_point_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ec_method_st* @EC_POINT_method_of(%struct.ec_point_st* nocapture noundef readonly %point) local_unnamed_addr #4 {
entry:
  %meth = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !26
  ret %struct.ec_method_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %point_set_to_infinity = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 15
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)** %point_set_to_infinity, align 8, !tbaa !46
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 815, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_POINT_set_to_infinity, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %meth2 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 0
  %2 = load %struct.ec_method_st*, %struct.ec_method_st** %meth2, align 8, !tbaa !26
  %cmp3.not = icmp eq %struct.ec_method_st* %0, %2
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 819, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_POINT_set_to_infinity, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end5:                                          ; preds = %if.end
  %call = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %point) #8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ %call, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_set_Jprojective_coordinates_GFp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_st* noundef %z, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_type = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 1
  %1 = load i32, i32* %field_type, align 4, !tbaa !38
  %cmp.not = icmp eq i32 %1, 406
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 832, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.EC_POINT_set_Jprojective_coordinates_GFp, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %point, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 836, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.EC_POINT_set_Jprojective_coordinates_GFp, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @ossl_ec_GFp_simple_set_Jprojective_coordinates_GFp(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_st* noundef %z, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end2 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @ec_point_is_compat(%struct.ec_point_st* nocapture noundef readonly %point, %struct.ec_group_st* nocapture noundef readonly %group) unnamed_addr #4 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %meth1 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth1, align 8, !tbaa !26
  %cmp = icmp eq %struct.ec_method_st* %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %curve_name = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 4
  %2 = load i32, i32* %curve_name, align 8, !tbaa !33
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %curve_name3 = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 1
  %3 = load i32, i32* %curve_name3, align 8, !tbaa !36
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %land.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %2, %3
  %phi.cast = zext i1 %cmp7 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %lor.rhs, %entry
  %4 = phi i32 [ 0, %entry ], [ 1, %lor.lhs.false ], [ 1, %land.rhs ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

declare i32 @ossl_ec_GFp_simple_set_Jprojective_coordinates_GFp(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_get_Jprojective_coordinates_GFp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_st* noundef %z, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_type = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 1
  %1 = load i32, i32* %field_type, align 4, !tbaa !38
  %cmp.not = icmp eq i32 %1, 406
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 849, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.EC_POINT_get_Jprojective_coordinates_GFp, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %point, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 853, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.EC_POINT_get_Jprojective_coordinates_GFp, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @ossl_ec_GFp_simple_get_Jprojective_coordinates_GFp(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_st* noundef %z, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end2 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

declare i32 @ossl_ec_GFp_simple_get_Jprojective_coordinates_GFp(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %point_set_affine_coordinates = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 16
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %point_set_affine_coordinates, align 8, !tbaa !47
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %return.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %point, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return.sink.split, label %if.end2

if.end2:                                          ; preds = %if.end
  %call5 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %return, label %if.end8

if.end8:                                          ; preds = %if.end2
  %call9 = tail call i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_ctx* noundef %ctx) #9
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end8, %if.end, %entry
  %.sink20 = phi i32 [ 866, %entry ], [ 870, %if.end ], [ 877, %if.end8 ]
  %.sink = phi i32 [ 786689, %entry ], [ 101, %if.end ], [ 107, %if.end8 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink20, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.EC_POINT_set_affine_coordinates, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #8
  br label %return

return:                                           ; preds = %return.sink.split, %if.end8, %if.end2
  %retval.0 = phi i32 [ 0, %if.end2 ], [ 1, %if.end8 ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_is_on_curve(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %is_on_curve = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 25
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %is_on_curve, align 8, !tbaa !48
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1004, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EC_POINT_is_on_curve, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %point, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1008, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EC_POINT_is_on_curve, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end2:                                          ; preds = %if.end
  %call5 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call5, %if.end2 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_set_affine_coordinates_GFp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_set_affine_coordinates_GF2m(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_POINT_set_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %point_get_affine_coordinates = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 17
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %point_get_affine_coordinates, align 8, !tbaa !49
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 906, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.EC_POINT_get_affine_coordinates, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %point, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 910, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.EC_POINT_get_affine_coordinates, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 914, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.EC_POINT_get_affine_coordinates, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 106, i8* noundef null) #8
  br label %return

if.end6:                                          ; preds = %if.end2
  %2 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %point_get_affine_coordinates8 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %2, i64 0, i32 17
  %3 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %point_get_affine_coordinates8, align 8, !tbaa !49
  %call9 = tail call i32 %3(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ %call9, %if.end6 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %is_at_infinity = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 24
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)** %is_at_infinity, align 8, !tbaa !50
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 983, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EC_POINT_is_at_infinity, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %point, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 987, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.EC_POINT_is_at_infinity, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end2:                                          ; preds = %if.end
  %call5 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point) #8
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call5, %if.end2 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_get_affine_coordinates_GFp(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_get_affine_coordinates_GF2m(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EC_POINT_get_affine_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef %y, %struct.bignum_ctx* noundef %ctx) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_add(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %a, %struct.ec_point_st* noundef %b, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %add = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 21
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %add, align 8, !tbaa !51
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 942, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EC_POINT_add, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %r, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %a, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then6, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %b, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 947, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EC_POINT_add, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end7:                                          ; preds = %lor.lhs.false3
  %call10 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %a, %struct.ec_point_st* noundef %b, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call10, %if.end7 ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_dbl(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %a, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %dbl = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 22
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %dbl, align 8, !tbaa !52
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 957, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EC_POINT_dbl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %r, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call1 = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %a, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 961, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EC_POINT_dbl, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %call7 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.ec_point_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call7, %if.end4 ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_invert(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %a, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %invert = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 23
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %invert, align 8, !tbaa !53
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 970, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EC_POINT_invert, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %a, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 974, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.EC_POINT_invert, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end2:                                          ; preds = %if.end
  %call5 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %a, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call5, %if.end2 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_make_affine(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %make_affine = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 27
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %make_affine, align 8, !tbaa !54
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1032, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EC_POINT_make_affine, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %point, %struct.ec_group_st* noundef nonnull %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1036, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.EC_POINT_make_affine, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %return

if.end2:                                          ; preds = %if.end
  %call5 = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %point, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call5, %if.end2 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINTs_make_affine(%struct.ec_group_st* noundef %group, i64 noundef %num, %struct.ec_point_st** noundef %points, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %points_make_affine = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 28
  %1 = load i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)** %points_make_affine, align 8, !tbaa !55
  %cmp = icmp eq i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp115.not = icmp eq i64 %num, 0
  br i1 %cmp115.not, label %for.end, label %for.body

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1048, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.EC_POINTs_make_affine, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %num
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !56

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.016 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %points, i64 %i.016
  %2 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx, align 8, !tbaa !58
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %2, %struct.ec_group_st* noundef %group) #9
  %tobool.not = icmp eq i32 %call, 0
  %inc = add nuw i64 %i.016, 1
  br i1 %tobool.not, label %if.then2, label %for.cond

if.then2:                                         ; preds = %for.body
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1053, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.EC_POINTs_make_affine, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call6 = tail call i32 %1(%struct.ec_group_st* noundef %group, i64 noundef %num, %struct.ec_point_st** noundef %points, %struct.bignum_ctx* noundef %ctx) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ %call6, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINTs_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %scalar, i64 noundef %num, %struct.ec_point_st** noundef %points, %struct.bignum_st** noundef %scalars, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %r, %struct.ec_group_st* noundef %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1079, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EC_POINTs_mul, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq %struct.bignum_st* %scalar, null
  %cmp1 = icmp eq i64 %num, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp1, label %for.end, label %for.body

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r) #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %exitcond.not = icmp eq i64 %inc, %num
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !59

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.057 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %points, i64 %i.057
  %0 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx, align 8, !tbaa !58
  %call6 = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %0, %struct.ec_group_st* noundef %group) #9
  %tobool7.not = icmp eq i32 %call6, 0
  %inc = add nuw i64 %i.057, 1
  br i1 %tobool7.not, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1088, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EC_POINTs_mul, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %cmp10 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp10, label %if.end13, label %if.end16

if.end13:                                         ; preds = %for.end
  %call12 = tail call %struct.bignum_ctx* @BN_CTX_secure_new() #8
  %cmp14 = icmp eq %struct.bignum_ctx* %call12, null
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1098, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.EC_POINTs_mul, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup

if.end16:                                         ; preds = %for.end, %if.end13
  %new_ctx.055 = phi %struct.bignum_ctx* [ %call12, %if.end13 ], [ null, %for.end ]
  %ctx.addr.054 = phi %struct.bignum_ctx* [ %call12, %if.end13 ], [ %ctx, %for.end ]
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %1 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %mul = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %1, i64 0, i32 29
  %2 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)** %mul, align 8, !tbaa !60
  %cmp17.not = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)* %2, null
  br i1 %cmp17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call21 = tail call i32 %2(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %scalar, i64 noundef %num, %struct.ec_point_st** noundef %points, %struct.bignum_st** noundef %scalars, %struct.bignum_ctx* noundef nonnull %ctx.addr.054) #8
  br label %if.end23

if.else:                                          ; preds = %if.end16
  %call22 = tail call i32 @ossl_ec_wNAF_mul(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %scalar, i64 noundef %num, %struct.ec_point_st** noundef %points, %struct.bignum_st** noundef %scalars, %struct.bignum_ctx* noundef nonnull %ctx.addr.054) #8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  %ret.0 = phi i32 [ %call21, %if.then18 ], [ %call22, %if.else ]
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.055) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then15, %if.then8, %if.then2, %if.then
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %if.then8 ], [ 0, %if.then15 ], [ %ret.0, %if.end23 ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_secure_new() local_unnamed_addr #2

declare i32 @ossl_ec_wNAF_mul(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, i64 noundef, %struct.ec_point_st** noundef, %struct.bignum_st** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EC_POINT_mul(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %g_scalar, %struct.ec_point_st* noundef %point, %struct.bignum_st* noundef %p_scalar, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %point.addr = alloca %struct.ec_point_st*, align 8
  %p_scalar.addr = alloca %struct.bignum_st*, align 8
  store %struct.ec_point_st* %point, %struct.ec_point_st** %point.addr, align 8, !tbaa !58
  store %struct.bignum_st* %p_scalar, %struct.bignum_st** %p_scalar.addr, align 8, !tbaa !58
  %call = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef %r, %struct.ec_group_st* noundef %group) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp.not = icmp eq %struct.ec_point_st* %point, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call1 = tail call fastcc i32 @ec_point_is_compat(%struct.ec_point_st* noundef nonnull %point, %struct.ec_group_st* noundef %group) #9
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1126, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EC_POINT_mul, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 101, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %cmp3 = icmp eq %struct.bignum_st* %g_scalar, null
  %cmp5 = icmp eq %struct.bignum_st* %p_scalar, null
  %or.cond = and i1 %cmp3, %cmp5
  br i1 %or.cond, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @EC_POINT_set_to_infinity(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %r) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %cmp9 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp9, label %if.end12, label %if.end15

if.end12:                                         ; preds = %if.end8
  %call11 = tail call %struct.bignum_ctx* @BN_CTX_secure_new() #8
  %cmp13 = icmp eq %struct.bignum_ctx* %call11, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1138, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.EC_POINT_mul, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786691, i8* noundef null) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end8, %if.end12
  %new_ctx.051 = phi %struct.bignum_ctx* [ %call11, %if.end12 ], [ null, %if.end8 ]
  %ctx.addr.050 = phi %struct.bignum_ctx* [ %call11, %if.end12 ], [ %ctx, %if.end8 ]
  %cmp16 = icmp ne %struct.ec_point_st* %point, null
  %cmp17 = icmp ne %struct.bignum_st* %p_scalar, null
  %0 = and i1 %cmp16, %cmp17
  %1 = zext i1 %0 to i64
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %2 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %mul = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %2, i64 0, i32 29
  %3 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)** %mul, align 8, !tbaa !60
  %cmp18.not = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)* %3, null
  br i1 %cmp18.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end15
  %call23 = call i32 %3(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %g_scalar, i64 noundef %1, %struct.ec_point_st** noundef nonnull %point.addr, %struct.bignum_st** noundef nonnull %p_scalar.addr, %struct.bignum_ctx* noundef nonnull %ctx.addr.050) #8
  br label %if.end25

if.else:                                          ; preds = %if.end15
  %call24 = call i32 @ossl_ec_wNAF_mul(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %r, %struct.bignum_st* noundef %g_scalar, i64 noundef %1, %struct.ec_point_st** noundef nonnull %point.addr, %struct.bignum_st** noundef nonnull %p_scalar.addr, %struct.bignum_ctx* noundef nonnull %ctx.addr.050) #8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20
  %ret.0 = phi i32 [ %call23, %if.then20 ], [ %call24, %if.else ]
  call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.051) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then14, %if.then6, %if.then
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ 0, %if.then14 ], [ %ret.0, %if.end25 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_precompute_mult(%struct.ec_group_st* noundef %group, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %mul = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 29
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)** %mul, align 8, !tbaa !60
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ossl_ec_wNAF_precompute_mult(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

if.end:                                           ; preds = %entry
  %precompute_mult = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 30
  %2 = load i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)** %precompute_mult, align 8, !tbaa !61
  %cmp2.not = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* %2, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call6 = tail call i32 %2(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_ec_wNAF_precompute_mult(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_have_precompute_mult(%struct.ec_group_st* noundef %group) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %mul = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 29
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)** %mul, align 8, !tbaa !60
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @ossl_ec_wNAF_have_precompute_mult(%struct.ec_group_st* noundef nonnull %group) #8
  br label %return

if.end:                                           ; preds = %entry
  %have_precompute_mult = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 31
  %2 = load i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)** %have_precompute_mult, align 8, !tbaa !62
  %cmp2.not = icmp eq i32 (%struct.ec_group_st*)* %2, null
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %call6 = tail call i32 %2(%struct.ec_group_st* noundef nonnull %group) #8
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.then3 ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare i32 @ossl_ec_wNAF_have_precompute_mult(%struct.ec_group_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @EC_KEY_set_ex_data(%struct.ec_key_st* noundef %key, i32 noundef %idx, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 10
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %arg) #8
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @EC_KEY_get_ex_data(%struct.ec_key_st* noundef %key, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %key, i64 0, i32 10
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #8
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_group_simple_order_bits(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #0 {
entry:
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %0 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %cmp = icmp eq %struct.bignum_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %0) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_group_do_inverse_ord(%struct.ec_group_st* noundef %group, %struct.bignum_st* noundef %res, %struct.bignum_st* noundef %x, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_inverse_mod_ord = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 51
  %1 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_inverse_mod_ord, align 8, !tbaa !63
  %cmp.not = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %res, %struct.bignum_st* noundef %x, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

if.else:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @ec_field_inverse_mod_ord(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %res, %struct.bignum_st* noundef %x, %struct.bignum_ctx* noundef %ctx) #9
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_field_inverse_mod_ord(%struct.ec_group_st* nocapture noundef readonly %group, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %x, %struct.bignum_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %mont_data = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  %0 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  %cmp = icmp eq %struct.bn_mont_ctx_st* %0, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp1, label %if.end3, label %if.end6

if.end3:                                          ; preds = %if.end
  %call = tail call %struct.bignum_ctx* @BN_CTX_secure_new() #8
  %cmp4 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end, %if.end3
  %new_ctx.045 = phi %struct.bignum_ctx* [ %call, %if.end3 ], [ null, %if.end ]
  %ctx.addr.043 = phi %struct.bignum_ctx* [ %call, %if.end3 ], [ %ctx, %if.end ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %ctx.addr.043) #8
  %call7 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %ctx.addr.043) #8
  %cmp8 = icmp eq %struct.bignum_st* %call7, null
  br i1 %cmp8, label %err, label %if.end10

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @BN_set_word(%struct.bignum_st* noundef nonnull %call7, i64 noundef 2) #8
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end10
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %1 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %call14 = tail call i32 @BN_sub(%struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef %1, %struct.bignum_st* noundef nonnull %call7) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %if.end13
  %2 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !16
  %3 = load %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st** %mont_data, align 8, !tbaa !23
  %call20 = tail call i32 @BN_mod_exp_mont(%struct.bignum_st* noundef %r, %struct.bignum_st* noundef %x, %struct.bignum_st* noundef nonnull %call7, %struct.bignum_st* noundef %2, %struct.bignum_ctx* noundef nonnull %ctx.addr.043, %struct.bn_mont_ctx_st* noundef %3) #8
  %tobool21.not = icmp ne i32 %call20, 0
  %spec.select = zext i1 %tobool21.not to i32
  br label %err

err:                                              ; preds = %if.end17, %if.end13, %if.end10, %if.end6
  %ret.0 = phi i32 [ 0, %if.end6 ], [ 0, %if.end13 ], [ 0, %if.end10 ], [ %spec.select, %if.end17 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %ctx.addr.043) #8
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %new_ctx.045) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_point_blind_coordinates(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %p, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %blind_coordinates = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 52
  %1 = load i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)** %blind_coordinates, align 8, !tbaa !64
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef %p, %struct.bignum_ctx* noundef %ctx) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define i32 @EC_GROUP_get_basis_type(%struct.ec_group_st* nocapture noundef readonly %group) local_unnamed_addr #6 {
entry:
  %call = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef %group) #9
  %cmp.not = icmp eq i32 %call, 407
  br i1 %cmp.not, label %land.rhs.preheader, label %cleanup

land.rhs.preheader:                               ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 0
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !65
  %cmp2.not = icmp eq i32 %0, 0
  br i1 %cmp2.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %land.rhs.preheader
  %arrayidx.1 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 1
  %1 = load i32, i32* %arrayidx.1, align 4, !tbaa !65
  %cmp2.not.1 = icmp eq i32 %1, 0
  br i1 %cmp2.not.1, label %cleanup, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 2
  %2 = load i32, i32* %arrayidx.2, align 4, !tbaa !65
  %cmp2.not.2 = icmp eq i32 %2, 0
  br i1 %cmp2.not.2, label %cleanup, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 3
  %3 = load i32, i32* %arrayidx.3, align 4, !tbaa !65
  %cmp2.not.3 = icmp eq i32 %3, 0
  br i1 %cmp2.not.3, label %cleanup, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 4
  %4 = load i32, i32* %arrayidx.4, align 4, !tbaa !65
  %cmp2.not.4 = icmp eq i32 %4, 0
  %spec.select = select i1 %cmp2.not.4, i32 683, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %land.rhs.preheader, %for.inc, %for.inc.1, %for.inc.2, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %for.inc.2 ], [ 682, %for.inc.1 ], [ 0, %for.inc ], [ 0, %land.rhs.preheader ], [ %spec.select, %for.inc.3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_get_trinomial_basis(%struct.ec_group_st* noundef readonly %group, i32* noundef writeonly %k) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_group_st* %group, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef nonnull %group) #9
  %cmp1.not = icmp eq i32 %call, 407
  br i1 %cmp1.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 0
  %0 = load i32, i32* %arrayidx, align 8, !tbaa !65
  %cmp2.not = icmp eq i32 %0, 0
  br i1 %cmp2.not, label %if.then10, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 1
  %1 = load i32, i32* %arrayidx4, align 4, !tbaa !65
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %if.then10, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %arrayidx8 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 2
  %2 = load i32, i32* %arrayidx8, align 8, !tbaa !65
  %cmp9 = icmp eq i32 %2, 0
  br i1 %cmp9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true6, %land.lhs.true, %lor.lhs.false, %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1355, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.EC_GROUP_get_trinomial_basis, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end11:                                         ; preds = %land.lhs.true6
  %tobool.not = icmp eq i32* %k, null
  br i1 %tobool.not, label %return, label %if.then12

if.then12:                                        ; preds = %if.end11
  store i32 %1, i32* %k, align 4, !tbaa !65
  br label %return

return:                                           ; preds = %if.end11, %if.then12, %entry, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %entry ], [ 1, %if.then12 ], [ 1, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @EC_GROUP_get_pentanomial_basis(%struct.ec_group_st* noundef readonly %group, i32* noundef writeonly %k1, i32* noundef writeonly %k2, i32* noundef writeonly %k3) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_group_st* %group, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef nonnull %group) #9
  %cmp1.not = icmp eq i32 %call, 407
  br i1 %cmp1.not, label %lor.lhs.false, label %if.then18

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 0
  %0 = load i32, i32* %arrayidx, align 8, !tbaa !65
  %cmp2.not = icmp eq i32 %0, 0
  br i1 %cmp2.not, label %if.then18, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 1
  %1 = load i32, i32* %arrayidx4, align 4, !tbaa !65
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %if.then18, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %arrayidx8 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 2
  %2 = load i32, i32* %arrayidx8, align 8, !tbaa !65
  %cmp9.not = icmp eq i32 %2, 0
  br i1 %cmp9.not, label %if.then18, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true6
  %arrayidx12 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 3
  %3 = load i32, i32* %arrayidx12, align 4, !tbaa !65
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %if.then18, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %arrayidx16 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 11, i64 4
  %4 = load i32, i32* %arrayidx16, align 8, !tbaa !65
  %cmp17 = icmp eq i32 %4, 0
  br i1 %cmp17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true14, %land.lhs.true10, %land.lhs.true6, %land.lhs.true, %lor.lhs.false, %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1375, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.EC_GROUP_get_pentanomial_basis, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786689, i8* noundef null) #8
  br label %return

if.end19:                                         ; preds = %land.lhs.true14
  %tobool.not = icmp eq i32* %k1, null
  br i1 %tobool.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end19
  store i32 %3, i32* %k1, align 4, !tbaa !65
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end19
  %tobool24.not = icmp eq i32* %k2, null
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end23
  %5 = load i32, i32* %arrayidx8, align 8, !tbaa !65
  store i32 %5, i32* %k2, align 4, !tbaa !65
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23
  %tobool29.not = icmp eq i32* %k3, null
  br i1 %tobool29.not, label %return, label %if.then30

if.then30:                                        ; preds = %if.end28
  %6 = load i32, i32* %arrayidx4, align 4, !tbaa !65
  store i32 %6, i32* %k3, align 4, !tbaa !65
  br label %return

return:                                           ; preds = %if.end28, %if.then30, %entry, %if.then18
  %retval.0 = phi i32 [ 0, %if.then18 ], [ 0, %entry ], [ 1, %if.then30 ], [ 1, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_ec_group_set_params(%struct.ec_group_st* nocapture noundef %group, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %encoding_flag = alloca i32, align 4
  %format = alloca i32, align 4
  %0 = bitcast i32* %encoding_flag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  store i32 -1, i32* %encoding_flag, align 4, !tbaa !65
  %1 = bitcast i32* %format to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #10
  store i32 -1, i32* %format, align 4, !tbaa !65
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #8
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 @ossl_ec_pt_format_param2id(%struct.ossl_param_st* noundef nonnull %call, i32* noundef nonnull %format) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %if.then
  %2 = load i32, i32* %format, align 4, !tbaa !65
  call void @EC_GROUP_set_point_conversion_form(%struct.ec_group_st* noundef %group, i32 noundef %2) #9
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %call4 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #8
  %cmp5.not = icmp eq %struct.ossl_param_st* %call4, null
  br i1 %cmp5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %if.end3
  %call7 = call i32 @ossl_ec_encoding_param2id(%struct.ossl_param_st* noundef nonnull %call4, i32* noundef nonnull %encoding_flag) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup.sink.split, label %if.end10

if.end10:                                         ; preds = %if.then6
  %3 = load i32, i32* %encoding_flag, align 4, !tbaa !65
  call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef %group, i32 noundef %3) #9
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end3
  %call12 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #8
  %cmp13.not = icmp eq %struct.ossl_param_st* %call12, null
  br i1 %cmp13.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.end11
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call12, i64 0, i32 1
  %4 = load i32, i32* %data_type, align 8, !tbaa !66
  %cmp15.not = icmp eq i32 %4, 5
  br i1 %cmp15.not, label %lor.lhs.false, label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.then14
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call12, i64 0, i32 2
  %5 = load i8*, i8** %data, align 8, !tbaa !68
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call12, i64 0, i32 3
  %6 = load i64, i64* %data_size, align 8, !tbaa !69
  %call16 = call i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef %group, i8* noundef %5, i64 noundef %6) #9
  %tobool17.not = icmp eq i64 %call16, 0
  br i1 %tobool17.not, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.then14, %lor.lhs.false, %if.then6, %if.then
  %.sink35 = phi i32 [ 1509, %if.then ], [ 1518, %if.then6 ], [ 1529, %lor.lhs.false ], [ 1529, %if.then14 ]
  %.sink = phi i32 [ 104, %if.then ], [ 104, %if.then6 ], [ 175, %lor.lhs.false ], [ 175, %if.then14 ]
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink35, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_ec_group_set_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %if.end11 ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #2

declare i32 @ossl_ec_pt_format_param2id(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #2

declare i32 @ossl_ec_encoding_param2id(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.ec_group_st* @EC_GROUP_new_from_params(%struct.ossl_param_st* noundef %params, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %p = alloca %struct.bignum_st*, align 8
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %order = alloca %struct.bignum_st*, align 8
  %cofactor = alloca %struct.bignum_st*, align 8
  %encoding_flag = alloca i32, align 4
  %0 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  %2 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #10
  %3 = bitcast %struct.bignum_st** %order to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #10
  %4 = bitcast %struct.bignum_st** %cofactor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #10
  store %struct.bignum_st* null, %struct.bignum_st** %cofactor, align 8, !tbaa !58
  %5 = bitcast i32* %encoding_flag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #10
  store i32 -1, i32* %encoding_flag, align 4, !tbaa !65
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #8
  %cmp.not = icmp eq %struct.ossl_param_st* %call, null
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.ec_group_st* @group_new_from_name(%struct.ossl_param_st* noundef nonnull %call, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #9
  %cmp2.not = icmp eq %struct.ec_group_st* %call1, null
  br i1 %cmp2.not, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 @ossl_ec_group_set_params(%struct.ec_group_st* noundef nonnull %call1, %struct.ossl_param_st* noundef %params) #9
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.then3
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call1) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx) #8
  %cmp9 = icmp eq %struct.bignum_ctx* %call8, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1565, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef nonnull %call8) #8
  %call12 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call8) #8
  store %struct.bignum_st* %call12, %struct.bignum_st** %p, align 8, !tbaa !58
  %call13 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call8) #8
  store %struct.bignum_st* %call13, %struct.bignum_st** %a, align 8, !tbaa !58
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call8) #8
  store %struct.bignum_st* %call14, %struct.bignum_st** %b, align 8, !tbaa !58
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call8) #8
  store %struct.bignum_st* %call15, %struct.bignum_st** %order, align 8, !tbaa !58
  %cmp16 = icmp eq %struct.bignum_st* %call15, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1575, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #8
  br label %if.then160

if.end18:                                         ; preds = %if.end11
  %call19 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)) #8
  %cmp20 = icmp eq %struct.ossl_param_st* %call19, null
  br i1 %cmp20, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call19, i64 0, i32 1
  %6 = load i32, i32* %data_type, align 8, !tbaa !66
  %cmp21.not = icmp eq i32 %6, 4
  br i1 %cmp21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %lor.lhs.false, %if.end18
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1581, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 103, i8* noundef null) #8
  br label %if.then160

if.end23:                                         ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call19, i64 0, i32 2
  %7 = load i8*, i8** %data, align 8, !tbaa !68
  %call24 = tail call i32 @strcasecmp(i8* noundef %7, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)) #11
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.end33, label %if.else

if.else:                                          ; preds = %if.end23
  %call28 = tail call i32 @strcasecmp(i8* noundef %7, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0)) #11
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.end33, label %if.else31

if.else31:                                        ; preds = %if.else
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1590, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 131, i8* noundef null) #8
  br label %if.then160

if.end33:                                         ; preds = %if.else, %if.end23
  %call34 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #8
  %call35 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef %call34, %struct.bignum_st** noundef nonnull %a) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1596, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 168, i8* noundef null) #8
  br label %if.then160

if.end38:                                         ; preds = %if.end33
  %call39 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #8
  %call40 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef %call39, %struct.bignum_st** noundef nonnull %b) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end38
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1601, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 169, i8* noundef null) #8
  br label %if.then160

if.end43:                                         ; preds = %if.end38
  %call44 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #8
  %call45 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef %call44, %struct.bignum_st** noundef nonnull %p) #8
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1608, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 172, i8* noundef null) #8
  br label %if.then160

if.end48:                                         ; preds = %if.end43
  %8 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !58
  br i1 %cmp25, label %if.then50, label %if.else63

if.then50:                                        ; preds = %if.end48
  %call51 = call i32 @BN_is_negative(%struct.bignum_st* noundef %8) #8
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %if.then56

lor.lhs.false53:                                  ; preds = %if.then50
  %9 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !58
  %call54 = call i32 @BN_is_zero(%struct.bignum_st* noundef %9) #8
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %lor.lhs.false53, %if.then50
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1614, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 172, i8* noundef null) #8
  br label %if.then160

if.end57:                                         ; preds = %lor.lhs.false53
  %10 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !58
  %call58 = call i32 @BN_num_bits(%struct.bignum_st* noundef %10) #8
  %cmp59 = icmp sgt i32 %call58, 661
  br i1 %cmp59, label %if.then60, label %if.end72

if.then60:                                        ; preds = %if.end57
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1619, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 143, i8* noundef null) #8
  br label %if.then160

if.else63:                                        ; preds = %if.end48
  %11 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !58
  %12 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !58
  %call64 = call %struct.ec_group_st* @EC_GROUP_new_curve_GF2m(%struct.bignum_st* noundef %8, %struct.bignum_st* noundef %11, %struct.bignum_st* noundef %12, %struct.bignum_ctx* noundef null) #8
  %cmp65.not = icmp eq %struct.ec_group_st* %call64, null
  br i1 %cmp65.not, label %if.then74, label %if.then66

if.then66:                                        ; preds = %if.else63
  %call67 = call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef nonnull %call64) #9
  %cmp68 = icmp sgt i32 %call67, 661
  br i1 %cmp68, label %if.then69, label %if.end75

if.then69:                                        ; preds = %if.then66
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1635, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 143, i8* noundef null) #8
  br label %if.then160

if.end72:                                         ; preds = %if.end57
  %13 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !58
  %14 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !58
  %15 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !58
  %call62 = call %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef %13, %struct.bignum_st* noundef %14, %struct.bignum_st* noundef %15, %struct.bignum_ctx* noundef nonnull %call8) #8
  %cmp73 = icmp eq %struct.ec_group_st* %call62, null
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.else63, %if.end72
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1643, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #8
  br label %if.then160

if.end75:                                         ; preds = %if.then66, %if.end72
  %field_bits.0267 = phi i32 [ %call58, %if.end72 ], [ %call67, %if.then66 ]
  %group.1266 = phi %struct.ec_group_st* [ %call62, %if.end72 ], [ %call64, %if.then66 ]
  %call76 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #8
  %cmp77.not = icmp eq %struct.ossl_param_st* %call76, null
  br i1 %cmp77.not, label %if.end88, label %if.then78

if.then78:                                        ; preds = %if.end75
  %data_type79 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call76, i64 0, i32 1
  %16 = load i32, i32* %data_type79, align 8, !tbaa !66
  %cmp80.not = icmp eq i32 %16, 5
  br i1 %cmp80.not, label %if.end82, label %if.then81

if.then81:                                        ; preds = %if.then78
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1651, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 175, i8* noundef null) #8
  br label %if.then160

if.end82:                                         ; preds = %if.then78
  %data83 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call76, i64 0, i32 2
  %17 = load i8*, i8** %data83, align 8, !tbaa !68
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call76, i64 0, i32 3
  %18 = load i64, i64* %data_size, align 8, !tbaa !69
  %call84 = call i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef nonnull %group.1266, i8* noundef %17, i64 noundef %18) #9
  %tobool85.not = icmp eq i64 %call84, 0
  br i1 %tobool85.not, label %if.then160, label %if.end88

if.end88:                                         ; preds = %if.end82, %if.end75
  %call89 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #8
  %cmp90 = icmp eq %struct.ossl_param_st* %call89, null
  br i1 %cmp90, label %if.then94, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.end88
  %data_type92 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call89, i64 0, i32 1
  %19 = load i32, i32* %data_type92, align 8, !tbaa !66
  %cmp93.not = icmp eq i32 %19, 5
  br i1 %cmp93.not, label %if.end95, label %if.then94

if.then94:                                        ; preds = %lor.lhs.false91, %if.end88
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1662, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 173, i8* noundef null) #8
  br label %if.then160

if.end95:                                         ; preds = %lor.lhs.false91
  %data96 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call89, i64 0, i32 2
  %20 = load i8*, i8** %data96, align 8, !tbaa !68
  %call97 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %group.1266) #9
  %cmp98 = icmp eq %struct.ec_point_st* %call97, null
  br i1 %cmp98, label %if.then160, label %if.end100

if.end100:                                        ; preds = %if.end95
  %21 = load i8, i8* %20, align 1, !tbaa !21
  %22 = and i8 %21, -2
  %and = zext i8 %22 to i32
  call void @EC_GROUP_set_point_conversion_form(%struct.ec_group_st* noundef nonnull %group.1266, i32 noundef %and) #9
  %data_size101 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call89, i64 0, i32 3
  %23 = load i64, i64* %data_size101, align 8, !tbaa !69
  %call102 = call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef nonnull %group.1266, %struct.ec_point_st* noundef nonnull %call97, i8* noundef nonnull %20, i64 noundef %23, %struct.bignum_ctx* noundef nonnull %call8) #8
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end100
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1671, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 173, i8* noundef null) #8
  br label %if.then160

if.end105:                                        ; preds = %if.end100
  %call106 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #8
  %call107 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef %call106, %struct.bignum_st** noundef nonnull %order) #8
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then119, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.end105
  %24 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !58
  %call110 = call i32 @BN_is_negative(%struct.bignum_st* noundef %24) #8
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %lor.lhs.false112, label %if.then119

lor.lhs.false112:                                 ; preds = %lor.lhs.false109
  %25 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !58
  %call113 = call i32 @BN_is_zero(%struct.bignum_st* noundef %25) #8
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %lor.lhs.false115, label %if.then119

lor.lhs.false115:                                 ; preds = %lor.lhs.false112
  %26 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !58
  %call116 = call i32 @BN_num_bits(%struct.bignum_st* noundef %26) #8
  %add = add nsw i32 %field_bits.0267, 1
  %cmp117 = icmp sgt i32 %call116, %add
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %lor.lhs.false115, %lor.lhs.false112, %lor.lhs.false109, %if.end105
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1680, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 122, i8* noundef null) #8
  br label %if.then160

if.end120:                                        ; preds = %lor.lhs.false115
  %call121 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #8
  %cmp122.not = icmp eq %struct.ossl_param_st* %call121, null
  br i1 %cmp122.not, label %if.end133, label %if.then124

if.then124:                                       ; preds = %if.end120
  %call125 = call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef nonnull %call8) #8
  store %struct.bignum_st* %call125, %struct.bignum_st** %cofactor, align 8, !tbaa !58
  %cmp126 = icmp eq %struct.bignum_st* %call125, null
  br i1 %cmp126, label %if.then131, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %if.then124
  %call129 = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef nonnull %call121, %struct.bignum_st** noundef nonnull %cofactor) #8
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.then131, label %if.end133

if.then131:                                       ; preds = %lor.lhs.false128, %if.then124
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1689, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 171, i8* noundef null) #8
  br label %if.then160

if.end133:                                        ; preds = %lor.lhs.false128, %if.end120
  %27 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !58
  %28 = load %struct.bignum_st*, %struct.bignum_st** %cofactor, align 8, !tbaa !58
  %call134 = call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef nonnull %group.1266, %struct.ec_point_st* noundef nonnull %call97, %struct.bignum_st* noundef %27, %struct.bignum_st* noundef %28) #9
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end133
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1696, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 173, i8* noundef null) #8
  br label %if.then160

if.end137:                                        ; preds = %if.end133
  %call138 = call fastcc %struct.ec_group_st* @ec_group_explicit_to_named(%struct.ec_group_st* noundef nonnull %group.1266, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.bignum_ctx* noundef nonnull %call8) #9
  %cmp139 = icmp eq %struct.ec_group_st* %call138, null
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end137
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1702, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 174, i8* noundef null) #8
  br label %if.then160

if.end142:                                        ; preds = %if.end137
  %cmp143 = icmp eq %struct.ec_group_st* %call138, %group.1266
  br i1 %cmp143, label %if.then145, label %if.else157

if.then145:                                       ; preds = %if.end142
  %call146 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #8
  %cmp147.not = icmp eq %struct.ossl_param_st* %call146, null
  br i1 %cmp147.not, label %if.end152, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then145
  %call149 = call i32 @ossl_ec_encoding_param2id(%struct.ossl_param_st* noundef nonnull %call146, i32* noundef nonnull %encoding_flag) #8
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then151, label %if.end152

if.then151:                                       ; preds = %land.lhs.true
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1713, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #8
  br label %cleanup

if.end152:                                        ; preds = %land.lhs.true, %if.then145
  %29 = load i32, i32* %encoding_flag, align 4, !tbaa !65
  %cmp153 = icmp eq i32 %29, 1
  br i1 %cmp153, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.end152
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1717, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.EC_GROUP_new_from_params, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 102, i8* noundef null) #8
  br label %if.then160

if.end156:                                        ; preds = %if.end152
  call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef nonnull %group.1266, i32 noundef 0) #9
  br label %if.end161

if.else157:                                       ; preds = %if.end142
  call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %group.1266) #9
  br label %if.end161

if.then160:                                       ; preds = %if.end95, %if.end82, %if.then155, %if.then141, %if.then136, %if.then131, %if.then119, %if.then104, %if.then94, %if.then81, %if.then74, %if.then69, %if.then60, %if.then56, %if.then47, %if.then42, %if.then37, %if.else31, %if.then22, %if.then17
  %group.3.ph = phi %struct.ec_group_st* [ null, %if.then17 ], [ null, %if.then22 ], [ null, %if.else31 ], [ null, %if.then37 ], [ null, %if.then42 ], [ null, %if.then47 ], [ null, %if.then56 ], [ null, %if.then60 ], [ %call64, %if.then69 ], [ null, %if.then74 ], [ %group.1266, %if.then81 ], [ %group.1266, %if.then94 ], [ %group.1266, %if.then104 ], [ %group.1266, %if.then119 ], [ %group.1266, %if.then131 ], [ %group.1266, %if.then136 ], [ %group.1266, %if.then141 ], [ %group.1266, %if.then155 ], [ %group.1266, %if.end82 ], [ %group.1266, %if.end95 ]
  %point.0.ph = phi %struct.ec_point_st* [ null, %if.then17 ], [ null, %if.then22 ], [ null, %if.else31 ], [ null, %if.then37 ], [ null, %if.then42 ], [ null, %if.then47 ], [ null, %if.then56 ], [ null, %if.then60 ], [ null, %if.then69 ], [ null, %if.then74 ], [ null, %if.then81 ], [ null, %if.then94 ], [ %call97, %if.then104 ], [ %call97, %if.then119 ], [ %call97, %if.then131 ], [ %call97, %if.then136 ], [ %call97, %if.then141 ], [ %call97, %if.then155 ], [ null, %if.end82 ], [ null, %if.end95 ]
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.3.ph) #9
  br label %if.end161

if.end161:                                        ; preds = %if.else157, %if.end156, %if.then160
  %point.0272 = phi %struct.ec_point_st* [ %point.0.ph, %if.then160 ], [ %call97, %if.else157 ], [ %call97, %if.end156 ]
  %group.4 = phi %struct.ec_group_st* [ null, %if.then160 ], [ %call138, %if.else157 ], [ %group.1266, %if.end156 ]
  call void @EC_POINT_free(%struct.ec_point_st* noundef %point.0272) #9
  call void @BN_CTX_end(%struct.bignum_ctx* noundef nonnull %call8) #8
  call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then5, %if.then3, %if.end161, %if.then151, %if.then10
  %retval.0 = phi %struct.ec_group_st* [ null, %if.then10 ], [ %group.4, %if.end161 ], [ null, %if.then151 ], [ %call1, %if.then3 ], [ null, %if.then5 ], [ null, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret %struct.ec_group_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ec_group_st* @group_new_from_name(%struct.ossl_param_st* noundef %p, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) unnamed_addr #0 {
entry:
  %curve_name = alloca i8*, align 8
  %0 = bitcast i8** %curve_name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  store i8* null, i8** %curve_name, align 8, !tbaa !58
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !66
  switch i32 %1, label %cleanup [
    i32 4, label %sw.bb
    i32 6, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !68
  store i8* %2, i8** %curve_name, align 8, !tbaa !58
  %cmp = icmp ne i8* %2, null
  %conv = zext i1 %cmp to i32
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call = call i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef nonnull %p, i8** noundef nonnull %curve_name) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %ok.0 = phi i32 [ %call, %sw.bb1 ], [ %conv, %sw.bb ]
  %tobool.not = icmp eq i32 %ok.0, 0
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %sw.epilog
  %3 = load i8*, i8** %curve_name, align 8, !tbaa !58
  %call2 = call i32 @ossl_ec_curve_name2nid(i8* noundef %3) #8
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 1491, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.group_new_from_name, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 141, i8* noundef null) #8
  br label %cleanup

if.else:                                          ; preds = %if.then
  %call6 = call %struct.ec_group_st* @EC_GROUP_new_by_curve_name_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog, %if.else, %if.then5
  %retval.0 = phi %struct.ec_group_st* [ null, %if.then5 ], [ %call6, %if.else ], [ null, %sw.epilog ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret %struct.ec_group_st* %retval.0
}

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #7

declare i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #2

declare %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare %struct.ec_group_st* @EC_GROUP_new_curve_GF2m(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ec_group_st* @ec_group_explicit_to_named(%struct.ec_group_st* noundef %group, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, %struct.bignum_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %call = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %group) #9
  %call1 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %group) #9
  %call2 = tail call i8* @EC_GROUP_get0_seed(%struct.ec_group_st* noundef %group) #9
  %cmp = icmp eq i8* %call2, null
  %call3 = tail call %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef %group) #9
  %cmp4 = icmp eq %struct.ec_group_st* %call3, null
  br i1 %cmp4, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call6 = tail call i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef nonnull %call3, i8* noundef null, i64 noundef 0) #9
  %cmp7.not = icmp eq i64 %call6, 1
  br i1 %cmp7.not, label %lor.lhs.false9, label %err

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %call10 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef nonnull %call3, %struct.ec_point_st* noundef %call, %struct.bignum_st* noundef %call1, %struct.bignum_st* noundef null) #9
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %call11 = tail call i32 @ossl_ec_curve_nid_from_params(%struct.ec_group_st* noundef nonnull %call3, %struct.bignum_ctx* noundef %ctx) #8
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end28, label %if.then14

if.then14:                                        ; preds = %if.end
  %call15 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq, i32 noundef %call11) #8
  %cmp16 = icmp eq %struct.ec_group_st* %call15, null
  br i1 %cmp16, label %err, label %if.end19

if.end19:                                         ; preds = %if.then14
  tail call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef nonnull %call15, i32 noundef 0) #9
  br i1 %cmp, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end19
  %call22 = tail call i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef nonnull %call15, i8* noundef null, i64 noundef 0) #9
  %cmp23.not = icmp eq i64 %call22, 1
  br i1 %cmp23.not, label %if.end28, label %err

if.end28:                                         ; preds = %if.end, %if.end19, %if.then21
  %ret_group.0 = phi %struct.ec_group_st* [ %call15, %if.then21 ], [ %call15, %if.end19 ], [ %group, %if.end ]
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call3) #9
  br label %cleanup

err:                                              ; preds = %if.then21, %if.then14, %entry, %lor.lhs.false, %lor.lhs.false9
  %ret_group.1 = phi %struct.ec_group_st* [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.then14 ], [ %call15, %if.then21 ], [ null, %lor.lhs.false9 ]
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call3) #9
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %ret_group.1) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end28
  %retval.0 = phi %struct.ec_group_st* [ null, %err ], [ %ret_group.0, %if.end28 ]
  ret %struct.ec_group_st* %retval.0
}

declare i32 @BN_set_bit(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_rshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare %struct.bignum_st* @BN_value_one() local_unnamed_addr #2

declare i32 @BN_div(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_MONT_CTX_set(%struct.bn_mont_ctx_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_sub(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #2

declare i32 @BN_mod_exp_mont(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef, %struct.bn_mont_ctx_st* noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_get_utf8_ptr(%struct.ossl_param_st* noundef, i8** noundef) local_unnamed_addr #2

declare i32 @ossl_ec_curve_name2nid(i8* noundef) local_unnamed_addr #2

declare %struct.ec_group_st* @EC_GROUP_new_by_curve_name_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_ec_curve_nid_from_params(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 8}
!5 = !{!"ec_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !9, i64 376, !9, i64 384, !9, i64 392, !9, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !9, i64 432}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!11, !9, i64 168}
!11 = !{!"ec_group_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !7, i64 44, !9, i64 48, !12, i64 56, !9, i64 64, !7, i64 72, !9, i64 96, !9, i64 104, !6, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !7, i64 152, !7, i64 160, !9, i64 168, !9, i64 176}
!12 = !{!"long", !7, i64 0}
!13 = !{!11, !9, i64 176}
!14 = !{!11, !9, i64 0}
!15 = !{!5, !6, i64 0}
!16 = !{!11, !9, i64 16}
!17 = !{!11, !9, i64 24}
!18 = !{!11, !6, i64 36}
!19 = !{!11, !7, i64 44}
!20 = !{!11, !7, i64 152}
!21 = !{!7, !7, i64 0}
!22 = !{!5, !9, i64 16}
!23 = !{!11, !9, i64 144}
!24 = !{!11, !9, i64 8}
!25 = !{!11, !9, i64 48}
!26 = !{!27, !9, i64 0}
!27 = !{!"ec_point_st", !9, i64 0, !6, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40}
!28 = !{!5, !9, i64 88}
!29 = !{!5, !9, i64 24}
!30 = !{!11, !12, i64 56}
!31 = !{!5, !9, i64 96}
!32 = !{!5, !9, i64 32}
!33 = !{!11, !6, i64 32}
!34 = !{!11, !6, i64 40}
!35 = !{!5, !9, i64 80}
!36 = !{!27, !6, i64 8}
!37 = !{!5, !9, i64 104}
!38 = !{!5, !6, i64 4}
!39 = !{!11, !9, i64 64}
!40 = !{!5, !9, i64 64}
!41 = !{!5, !9, i64 40}
!42 = !{!5, !9, i64 48}
!43 = !{!5, !9, i64 56}
!44 = !{!5, !9, i64 72}
!45 = !{!5, !9, i64 200}
!46 = !{!5, !9, i64 112}
!47 = !{!5, !9, i64 120}
!48 = !{!5, !9, i64 192}
!49 = !{!5, !9, i64 128}
!50 = !{!5, !9, i64 184}
!51 = !{!5, !9, i64 160}
!52 = !{!5, !9, i64 168}
!53 = !{!5, !9, i64 176}
!54 = !{!5, !9, i64 208}
!55 = !{!5, !9, i64 216}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!9, !9, i64 0}
!59 = distinct !{!59, !57}
!60 = !{!5, !9, i64 224}
!61 = !{!5, !9, i64 232}
!62 = !{!5, !9, i64 240}
!63 = !{!5, !9, i64 400}
!64 = !{!5, !9, i64 408}
!65 = !{!6, !6, i64 0}
!66 = !{!67, !6, i64 8}
!67 = !{!"ossl_param_st", !9, i64 0, !6, i64 8, !9, i64 16, !12, i64 24, !12, i64 32}
!68 = !{!67, !9, i64 16}
!69 = !{!67, !12, i64 24}
