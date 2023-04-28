; ModuleID = 'test/ec_internal_test.c'
source_filename = "test/ec_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EC_builtin_curve = type { i32, i8* }
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
%struct.ec_parameters_st = type opaque
%struct.ecpk_parameters_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@crv_len = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"test/ec_internal_test.c\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"curves = OPENSSL_malloc(sizeof(*curves) * crv_len)\00", align 1
@curves = internal unnamed_addr global %struct.EC_builtin_curve* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"EC_get_builtin_curves(curves, crv_len)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"field_tests_ecp_simple\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"field_tests_ecp_mont\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"field_tests_ec2_simple\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"field_tests_default\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"decoded_flag_test\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"ecpkparams_i2d2i_test\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Testing EC_GFp_simple_method()\0A\00", align 1
@params_p256 = internal constant [96 x i8] c"\FF\FF\FF\FF\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FCZ\C65\D8\AA:\93\E7\B3\EB\BDUv\98\86\BCe\1D\06\B0\CCS\B0\F6;\CE<>'\D2`K", align 16
@.str.10 = private unnamed_addr constant [19 x i8] c"ctx = BN_CTX_new()\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"b = BN_CTX_get(ctx)\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"group = EC_GROUP_new(meth)\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"BN_bin2bn(params, len, p)\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"BN_bin2bn(params + len, len, a)\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"BN_bin2bn(params + 2 * len, len, b)\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"EC_GROUP_set_curve(group, p, a, b, ctx)\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"c = BN_CTX_get(ctx)\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"group->meth->field_inv(group, b, BN_value_one(), ctx)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"BN_is_one(b)\00", align 1
@.str.20 = private unnamed_addr constant [79 x i8] c"BN_rand(a, BN_num_bits(group->field) - 1, BN_RAND_TOP_ONE, BN_RAND_BOTTOM_ANY)\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"group->meth->field_inv(group, b, a, ctx)\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"group->meth->field_encode(group, a, a, ctx)\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"group->meth->field_encode(group, b, b, ctx)\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"group->meth->field_mul(group, c, a, b, ctx)\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"group->meth->field_decode(group, c, c, ctx)\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"BN_is_one(c)\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"ERR_GET_LIB(ERR_peek_last_error()) == ERR_LIB_EC\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"ERR_GET_REASON(ERR_peek_last_error()) == EC_R_CANNOT_INVERT\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"group->meth->field_inv(group, b, group->field, ctx)\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Testing EC_GFp_mont_method()\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"Testing EC_GF2m_simple_method()\0A\00", align 1
@params_b283 = internal constant [108 x i8] c"\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\A1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02{h\0A\C8\B8Ym\A5\A4\AF\8A\19\A00?\CA\97\FDvE0\9F\A2\A5\81HZ\F6&>1;y\A2\F5", align 16
@.str.32 = private unnamed_addr constant [18 x i8] c"Testing curve %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"group = EC_GROUP_new_by_curve_name(nid)\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"grp\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"grp->decoded_from_explicit_params\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"ecparams = EC_GROUP_get_ecparameters(grp, NULL)\00", align 1
@.str.38 = private unnamed_addr constant [52 x i8] c"grp_copy = EC_GROUP_new_from_ecparameters(ecparams)\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"grp_copy->decoded_from_explicit_params\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"EC_GROUP_get_asn1_flag(grp)\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"OPENSSL_EC_NAMED_CURVE\00", align 1
@.str.42 = private unnamed_addr constant [52 x i8] c"ecpkparams = EC_GROUP_get_ecpkparameters(grp, NULL)\00", align 1
@.str.43 = private unnamed_addr constant [56 x i8] c"grp_copy = EC_GROUP_new_from_ecpkparameters(ecpkparams)\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"key = EC_KEY_new()\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"EC_KEY_decoded_from_explicit_params(key)\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"EC_KEY_set_group(key, grp_copy)\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.49 = private unnamed_addr constant [53 x i8] c"encodedlen = i2d_ECPKParameters(grp, &encodedparams)\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"encp = encodedparams\00", align 1
@.str.51 = private unnamed_addr constant [55 x i8] c"grp_copy = d2i_ECPKParameters(NULL, &encp, encodedlen)\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"EC_GROUP_get_asn1_flag(grp_copy)\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"OPENSSL_EC_EXPLICIT_CURVE\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"g1 = EC_GROUP_new_by_curve_name(nid)\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"fp = fopen(\22params.der\22, \22wb\22)\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"params.der\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"i2d_ECPKParameters_fp(fp, g1)\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"fclose(fp)\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"fp = fopen(\22params.der\22, \22rb\22)\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"g2 = d2i_ECPKParameters_fp(fp, NULL)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i64 @EC_get_builtin_curves(%struct.EC_builtin_curve* noundef null, i64 noundef 0) #4
  store i64 %call, i64* @crv_len, align 8, !tbaa !3
  %mul = shl i64 %call, 4
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 406) #4
  store i8* %call1, i8** bitcast (%struct.EC_builtin_curve** @curves to i8**), align 8, !tbaa !7
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call1) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %1 = load i64, i64* @crv_len, align 8, !tbaa !3
  %call3 = tail call i64 @EC_get_builtin_curves(%struct.EC_builtin_curve* noundef %0, i64 noundef %1) #4
  %cmp = icmp ne i64 %call3, 0
  %conv = zext i1 %cmp to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 407, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 noundef %conv) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %return, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @field_tests_ecp_simple) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @field_tests_ecp_mont) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @field_tests_ec2_simple) #4
  %2 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv6 = trunc i64 %2 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 (i32)* noundef nonnull @field_tests_default, i32 noundef %conv6, i32 noundef 1) #4
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @decoded_flag_test) #4
  %3 = load i64, i64* @crv_len, align 8, !tbaa !3
  %conv7 = trunc i64 %3 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 (i32)* noundef nonnull @ecpkparams_i2d2i_test, i32 noundef %conv7, i32 noundef 1) #4
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i64 @EC_get_builtin_curves(%struct.EC_builtin_curve* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @field_tests_ecp_simple() #0 {
entry:
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0)) #4
  %call = tail call %struct.ec_method_st* @EC_GFp_simple_method() #4
  %call1 = tail call fastcc i32 @field_tests(%struct.ec_method_st* noundef %call, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @params_p256, i64 0, i64 0), i32 noundef 32) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @field_tests_ecp_mont() #0 {
entry:
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0)) #4
  %call = tail call %struct.ec_method_st* @EC_GFp_mont_method() #4
  %call1 = tail call fastcc i32 @field_tests(%struct.ec_method_st* noundef %call, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @params_p256, i64 0, i64 0), i32 noundef 32) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @field_tests_ec2_simple() #0 {
entry:
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i64 0, i64 0)) #4
  %call = tail call %struct.ec_method_st* @EC_GF2m_simple_method() #4
  %call1 = tail call fastcc i32 @field_tests(%struct.ec_method_st* noundef %call, i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @params_b283, i64 0, i64 0), i32 noundef 36) #5
  ret i32 %call1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @field_tests_default(i32 noundef %n) #0 {
entry:
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %n to i64
  %nid1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %idxprom, i32 0
  %1 = load i32, i32* %nid1, align 8, !tbaa !9
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %1) #4
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i8* noundef %call) #4
  %call2 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %1) #4
  %2 = bitcast %struct.ec_group_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %3 = bitcast %struct.bignum_ctx* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* noundef %3) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call fastcc i32 @group_field_tests(%struct.ec_group_st* noundef %call2, %struct.bignum_ctx* noundef %call4) #5
  %tobool9.not = icmp ne i32 %call8, 0
  %spec.select = zext i1 %tobool9.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false7, %entry, %lor.lhs.false
  %ctx.0 = phi %struct.bignum_ctx* [ %call4, %lor.lhs.false ], [ null, %entry ], [ %call4, %lor.lhs.false7 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false7 ]
  %cmp.not = icmp eq %struct.ec_group_st* %call2, null
  br i1 %cmp.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %err
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call2) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %err
  %cmp12.not = icmp eq %struct.bignum_ctx* %ctx.0, null
  br i1 %cmp12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef nonnull %ctx.0) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decoded_flag_test() #0 {
entry:
  %encodedparams = alloca i8*, align 8
  %encp = alloca i8*, align 8
  %0 = bitcast i8** %encodedparams to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store i8* null, i8** %encodedparams, align 8, !tbaa !7
  %1 = bitcast i8** %encp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %call = tail call %struct.ec_method_st* @EC_GFp_simple_method() #4
  %call1 = tail call %struct.ec_group_st* @EC_GROUP_new(%struct.ec_method_st* noundef %call) #4
  %2 = bitcast %struct.ec_group_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %decoded_from_explicit_params = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %call1, i64 0, i32 6
  %3 = load i32, i32* %decoded_from_explicit_params, align 8, !tbaa !12
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %3, i32 noundef 0) #4
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call1) #4
  %call5 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef 415) #4
  %4 = bitcast %struct.ec_group_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i8* noundef %4) #4
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %decoded_from_explicit_params9 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %call5, i64 0, i32 6
  %5 = load i32, i32* %decoded_from_explicit_params9, align 8, !tbaa !12
  %call10 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %5, i32 noundef 0) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %lor.lhs.false8
  %call14 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef nonnull %call5, %struct.ec_parameters_st* noundef null) #4
  %6 = bitcast %struct.ec_parameters_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i64 0, i64 0), i8* noundef %6) #4
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end13
  %call18 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %call14) #4
  %7 = bitcast %struct.ec_group_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.38, i64 0, i64 0), i8* noundef %7) #4
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %decoded_from_explicit_params22 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %call18, i64 0, i32 6
  %8 = load i32, i32* %decoded_from_explicit_params22, align 8, !tbaa !12
  %call23 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %8, i32 noundef 0) #4
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false21
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call18) #4
  tail call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %call14) #4
  %call27 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef nonnull %call5) #4
  %call28 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 301, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i32 noundef %call27, i32 noundef 1) #4
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end26
  %call31 = tail call %struct.ecpk_parameters_st* @EC_GROUP_get_ecpkparameters(%struct.ec_group_st* noundef nonnull %call5, %struct.ecpk_parameters_st* noundef null) #4
  %9 = bitcast %struct.ecpk_parameters_st* %call31 to i8*
  %call32 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 302, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.42, i64 0, i64 0), i8* noundef %9) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %call35 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecpkparameters(%struct.ecpk_parameters_st* noundef %call31) #4
  %10 = bitcast %struct.ec_group_st* %call35 to i8*
  %call36 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.43, i64 0, i64 0), i8* noundef %10) #4
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %decoded_from_explicit_params39 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %call35, i64 0, i32 6
  %11 = load i32, i32* %decoded_from_explicit_params39, align 8, !tbaa !12
  %call40 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 304, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %11, i32 noundef 0) #4
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false38
  %call43 = tail call %struct.ec_key_st* @EC_KEY_new() #4
  %12 = bitcast %struct.ec_key_st* %call43 to i8*
  %call44 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 305, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i8* noundef %12) #4
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %call47 = tail call i32 @EC_KEY_decoded_from_explicit_params(%struct.ec_key_st* noundef %call43) #4
  %call48 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), i32 noundef %call47, i32 noundef -1) #4
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %call51 = tail call i32 @EC_KEY_set_group(%struct.ec_key_st* noundef %call43, %struct.ec_group_st* noundef nonnull %call35) #4
  %call52 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i32 noundef %call51, i32 noundef 1) #4
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %call55 = tail call i32 @EC_KEY_decoded_from_explicit_params(%struct.ec_key_st* noundef %call43) #4
  %call56 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call55, i32 noundef 0) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %if.end59

if.end59:                                         ; preds = %lor.lhs.false54
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call35) #4
  tail call void @ECPKPARAMETERS_free(%struct.ecpk_parameters_st* noundef %call31) #4
  %call60 = call i32 @i2d_ECPKParameters(%struct.ec_group_st* noundef nonnull %call5, i8** noundef nonnull %encodedparams) #4
  %call61 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call60, i32 noundef 0) #4
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.end59
  %13 = load i8*, i8** %encodedparams, align 8, !tbaa !7
  store i8* %13, i8** %encp, align 8, !tbaa !7
  %call64 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), i8* noundef %13) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false63
  %conv = sext i32 %call60 to i64
  %call67 = call %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef null, i8** noundef nonnull %encp, i64 noundef %conv) #4
  %14 = bitcast %struct.ec_group_st* %call67 to i8*
  %call68 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.51, i64 0, i64 0), i8* noundef %14) #4
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false66
  %decoded_from_explicit_params71 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %call67, i64 0, i32 6
  %15 = load i32, i32* %decoded_from_explicit_params71, align 8, !tbaa !12
  %call72 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 321, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %15, i32 noundef 0) #4
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end75

if.end75:                                         ; preds = %lor.lhs.false70
  call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call67) #4
  %16 = load i8*, i8** %encodedparams, align 8, !tbaa !7
  call void @CRYPTO_free(i8* noundef %16, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 325) #4
  store i8* null, i8** %encodedparams, align 8, !tbaa !7
  call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef nonnull %call5, i32 noundef 0) #4
  %call76 = call %struct.ecpk_parameters_st* @EC_GROUP_get_ecpkparameters(%struct.ec_group_st* noundef nonnull %call5, %struct.ecpk_parameters_st* noundef null) #4
  %17 = bitcast %struct.ecpk_parameters_st* %call76 to i8*
  %call77 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.42, i64 0, i64 0), i8* noundef %17) #4
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end75
  %call80 = call %struct.ec_group_st* @EC_GROUP_new_from_ecpkparameters(%struct.ecpk_parameters_st* noundef %call76) #4
  %18 = bitcast %struct.ec_group_st* %call80 to i8*
  %call81 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.43, i64 0, i64 0), i8* noundef %18) #4
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false79
  %call84 = call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef %call80) #4
  %call85 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i64 0, i64 0), i32 noundef %call84, i32 noundef 0) #4
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false83
  %decoded_from_explicit_params88 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %call80, i64 0, i32 6
  %19 = load i32, i32* %decoded_from_explicit_params88, align 8, !tbaa !12
  %call89 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %19, i32 noundef 0) #4
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %if.end92

if.end92:                                         ; preds = %lor.lhs.false87
  call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %call80) #4
  %call93 = call i32 @i2d_ECPKParameters(%struct.ec_group_st* noundef nonnull %call5, i8** noundef nonnull %encodedparams) #4
  %call94 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call93, i32 noundef 0) #4
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %if.end92
  %20 = load i8*, i8** %encodedparams, align 8, !tbaa !7
  store i8* %20, i8** %encp, align 8, !tbaa !7
  %call97 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), i8* noundef %20) #4
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %lor.lhs.false96
  %conv100 = sext i32 %call93 to i64
  %call101 = call %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef null, i8** noundef nonnull %encp, i64 noundef %conv100) #4
  %21 = bitcast %struct.ec_group_st* %call101 to i8*
  %call102 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.51, i64 0, i64 0), i8* noundef %21) #4
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false99
  %call105 = call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef %call101) #4
  %call106 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i64 0, i64 0), i32 noundef %call105, i32 noundef 0) #4
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %decoded_from_explicit_params109 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %call101, i64 0, i32 6
  %22 = load i32, i32* %decoded_from_explicit_params109, align 8, !tbaa !12
  %call110 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i32 noundef %22, i32 noundef 1) #4
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false108
  %call113 = call i32 @EC_KEY_set_group(%struct.ec_key_st* noundef %call43, %struct.ec_group_st* noundef nonnull %call101) #4
  %call114 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i32 noundef %call113, i32 noundef 1) #4
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false112
  %call117 = call i32 @EC_KEY_decoded_from_explicit_params(%struct.ec_key_st* noundef %call43) #4
  %call118 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i32 noundef %call117, i32 noundef 1) #4
  %tobool119.not = icmp ne i32 %call118, 0
  %spec.select = zext i1 %tobool119.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false116, %if.end92, %lor.lhs.false96, %lor.lhs.false99, %lor.lhs.false104, %lor.lhs.false108, %lor.lhs.false112, %if.end75, %lor.lhs.false79, %lor.lhs.false83, %lor.lhs.false87, %if.end59, %lor.lhs.false63, %lor.lhs.false66, %lor.lhs.false70, %if.end26, %lor.lhs.false30, %lor.lhs.false34, %lor.lhs.false38, %lor.lhs.false42, %lor.lhs.false46, %lor.lhs.false50, %lor.lhs.false54, %if.end13, %lor.lhs.false17, %lor.lhs.false21, %if.end, %lor.lhs.false8, %entry, %lor.lhs.false
  %grp.0 = phi %struct.ec_group_st* [ %call5, %lor.lhs.false112 ], [ %call5, %lor.lhs.false108 ], [ %call5, %lor.lhs.false104 ], [ %call5, %lor.lhs.false99 ], [ %call5, %lor.lhs.false96 ], [ %call5, %if.end92 ], [ %call5, %lor.lhs.false87 ], [ %call5, %lor.lhs.false83 ], [ %call5, %lor.lhs.false79 ], [ %call5, %if.end75 ], [ %call5, %lor.lhs.false70 ], [ %call5, %lor.lhs.false66 ], [ %call5, %lor.lhs.false63 ], [ %call5, %if.end59 ], [ %call5, %lor.lhs.false54 ], [ %call5, %lor.lhs.false50 ], [ %call5, %lor.lhs.false46 ], [ %call5, %lor.lhs.false42 ], [ %call5, %lor.lhs.false38 ], [ %call5, %lor.lhs.false34 ], [ %call5, %lor.lhs.false30 ], [ %call5, %if.end26 ], [ %call5, %lor.lhs.false21 ], [ %call5, %lor.lhs.false17 ], [ %call5, %if.end13 ], [ %call5, %lor.lhs.false8 ], [ %call5, %if.end ], [ %call1, %lor.lhs.false ], [ %call1, %entry ], [ %call5, %lor.lhs.false116 ]
  %grp_copy.0 = phi %struct.ec_group_st* [ %call101, %lor.lhs.false112 ], [ %call101, %lor.lhs.false108 ], [ %call101, %lor.lhs.false104 ], [ %call101, %lor.lhs.false99 ], [ null, %lor.lhs.false96 ], [ null, %if.end92 ], [ %call80, %lor.lhs.false87 ], [ %call80, %lor.lhs.false83 ], [ %call80, %lor.lhs.false79 ], [ null, %if.end75 ], [ %call67, %lor.lhs.false70 ], [ %call67, %lor.lhs.false66 ], [ null, %lor.lhs.false63 ], [ null, %if.end59 ], [ %call35, %lor.lhs.false54 ], [ %call35, %lor.lhs.false50 ], [ %call35, %lor.lhs.false46 ], [ %call35, %lor.lhs.false42 ], [ %call35, %lor.lhs.false38 ], [ %call35, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %if.end26 ], [ %call18, %lor.lhs.false21 ], [ %call18, %lor.lhs.false17 ], [ null, %if.end13 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call101, %lor.lhs.false116 ]
  %ecparams.0 = phi %struct.ec_parameters_st* [ null, %lor.lhs.false112 ], [ null, %lor.lhs.false108 ], [ null, %lor.lhs.false104 ], [ null, %lor.lhs.false99 ], [ null, %lor.lhs.false96 ], [ null, %if.end92 ], [ null, %lor.lhs.false87 ], [ null, %lor.lhs.false83 ], [ null, %lor.lhs.false79 ], [ null, %if.end75 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false66 ], [ null, %lor.lhs.false63 ], [ null, %if.end59 ], [ null, %lor.lhs.false54 ], [ null, %lor.lhs.false50 ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false42 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %if.end26 ], [ %call14, %lor.lhs.false21 ], [ %call14, %lor.lhs.false17 ], [ %call14, %if.end13 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false116 ]
  %ecpkparams.0 = phi %struct.ecpk_parameters_st* [ %call76, %lor.lhs.false112 ], [ %call76, %lor.lhs.false108 ], [ %call76, %lor.lhs.false104 ], [ %call76, %lor.lhs.false99 ], [ %call76, %lor.lhs.false96 ], [ %call76, %if.end92 ], [ %call76, %lor.lhs.false87 ], [ %call76, %lor.lhs.false83 ], [ %call76, %lor.lhs.false79 ], [ %call76, %if.end75 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false66 ], [ null, %lor.lhs.false63 ], [ null, %if.end59 ], [ %call31, %lor.lhs.false54 ], [ %call31, %lor.lhs.false50 ], [ %call31, %lor.lhs.false46 ], [ %call31, %lor.lhs.false42 ], [ %call31, %lor.lhs.false38 ], [ %call31, %lor.lhs.false34 ], [ %call31, %lor.lhs.false30 ], [ null, %if.end26 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %if.end13 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call76, %lor.lhs.false116 ]
  %key.0 = phi %struct.ec_key_st* [ %call43, %lor.lhs.false112 ], [ %call43, %lor.lhs.false108 ], [ %call43, %lor.lhs.false104 ], [ %call43, %lor.lhs.false99 ], [ %call43, %lor.lhs.false96 ], [ %call43, %if.end92 ], [ %call43, %lor.lhs.false87 ], [ %call43, %lor.lhs.false83 ], [ %call43, %lor.lhs.false79 ], [ %call43, %if.end75 ], [ %call43, %lor.lhs.false70 ], [ %call43, %lor.lhs.false66 ], [ %call43, %lor.lhs.false63 ], [ %call43, %if.end59 ], [ %call43, %lor.lhs.false54 ], [ %call43, %lor.lhs.false50 ], [ %call43, %lor.lhs.false46 ], [ %call43, %lor.lhs.false42 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %if.end26 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %if.end13 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call43, %lor.lhs.false116 ]
  %testresult.0 = phi i32 [ 0, %lor.lhs.false112 ], [ 0, %lor.lhs.false108 ], [ 0, %lor.lhs.false104 ], [ 0, %lor.lhs.false99 ], [ 0, %lor.lhs.false96 ], [ 0, %if.end92 ], [ 0, %lor.lhs.false87 ], [ 0, %lor.lhs.false83 ], [ 0, %lor.lhs.false79 ], [ 0, %if.end75 ], [ 0, %lor.lhs.false70 ], [ 0, %lor.lhs.false66 ], [ 0, %lor.lhs.false63 ], [ 0, %if.end59 ], [ 0, %lor.lhs.false54 ], [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false46 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false30 ], [ 0, %if.end26 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %if.end13 ], [ 0, %lor.lhs.false8 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false116 ]
  call void @EC_KEY_free(%struct.ec_key_st* noundef %key.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %grp.0) #4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %grp_copy.0) #4
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %ecparams.0) #4
  call void @ECPKPARAMETERS_free(%struct.ecpk_parameters_st* noundef %ecpkparams.0) #4
  %23 = load i8*, i8** %encodedparams, align 8, !tbaa !7
  call void @CRYPTO_free(i8* noundef %23, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 357) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ecpkparams_i2d2i_test(i32 noundef %n) #0 {
entry:
  %0 = load %struct.EC_builtin_curve*, %struct.EC_builtin_curve** @curves, align 8, !tbaa !7
  %idxprom = sext i32 %n to i64
  %nid1 = getelementptr inbounds %struct.EC_builtin_curve, %struct.EC_builtin_curve* %0, i64 %idxprom, i32 0
  %1 = load i32, i32* %nid1, align 8, !tbaa !9
  %call = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %1) #4
  %2 = bitcast %struct.ec_group_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 371, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i64 0, i64 0), i8* noundef %2) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end29, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0)) #4
  %3 = bitcast %struct._IO_FILE* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 375, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.55, i64 0, i64 0), i8* noundef %3) #4
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call6 = tail call i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef bitcast (i32 (%struct.ec_group_st*, i8**)* @i2d_ECPKParameters to i32 (i8*, i8**)*), %struct._IO_FILE* noundef %call3, i8* noundef %2) #4
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv) #4
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %end, label %if.end10

if.end10:                                         ; preds = %lor.lhs.false
  %call11 = tail call i32 @fclose(%struct._IO_FILE* noundef %call3) #4
  %call12 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 380, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call11, i32 noundef 0) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end29, label %if.end15

if.end15:                                         ; preds = %if.end10
  %call16 = tail call %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0)) #4
  %4 = bitcast %struct._IO_FILE* %call16 to i8*
  %call17 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 387, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i64 0, i64 0), i8* noundef %4) #4
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %end, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end15
  %call20 = tail call i8* @ASN1_d2i_fp(i8* ()* noundef null, i8* (i8**, i8**, i64)* noundef bitcast (%struct.ec_group_st* (%struct.ec_group_st**, i8**, i64)* @d2i_ECPKParameters to i8* (i8**, i8**, i64)*), %struct._IO_FILE* noundef %call16, i8** noundef null) #4
  %5 = bitcast i8* %call20 to %struct.ec_group_st*
  %call21 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i64 0, i64 0), i8* noundef %call20) #4
  %tobool22.not = icmp ne i32 %call21, 0
  %spec.select = zext i1 %tobool22.not to i32
  br label %end

end:                                              ; preds = %lor.lhs.false19, %if.end15, %if.end, %lor.lhs.false
  %g2.0 = phi %struct.ec_group_st* [ null, %if.end15 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ %5, %lor.lhs.false19 ]
  %fp.0 = phi %struct._IO_FILE* [ %call16, %if.end15 ], [ %call3, %lor.lhs.false ], [ %call3, %if.end ], [ %call16, %lor.lhs.false19 ]
  %testresult.0 = phi i32 [ 0, %if.end15 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false19 ]
  %cmp25.not = icmp eq %struct._IO_FILE* %fp.0, null
  br i1 %cmp25.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %end
  %call28 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %fp.0) #4
  br label %if.end29

if.end29:                                         ; preds = %if.end10, %entry, %if.then27, %end
  %testresult.045 = phi i32 [ %testresult.0, %if.then27 ], [ %testresult.0, %end ], [ 0, %entry ], [ 0, %if.end10 ]
  %g2.044 = phi %struct.ec_group_st* [ %g2.0, %if.then27 ], [ %g2.0, %end ], [ null, %entry ], [ null, %if.end10 ]
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %call) #4
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %g2.044) #4
  ret i32 %testresult.045
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #0 {
entry:
  %0 = load i8*, i8** bitcast (%struct.EC_builtin_curve** @curves to i8**), align 8, !tbaa !7
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 427) #4
  ret void
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @field_tests(%struct.ec_method_st* noundef %meth, i8* noundef %params, i32 noundef %len) unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %0 = bitcast %struct.bignum_ctx* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* noundef %0) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %call) #4
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call) #4
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call) #4
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %call) #4
  %1 = bitcast %struct.bignum_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef %1) #4
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call7 = tail call %struct.ec_group_st* @EC_GROUP_new(%struct.ec_method_st* noundef %meth) #4
  %2 = bitcast %struct.ec_group_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* noundef %2) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call11 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %params, i32 noundef %len, %struct.bignum_st* noundef %call2) #4
  %cmp = icmp ne %struct.bignum_st* %call11, null
  %conv = zext i1 %cmp to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %3 = zext i32 %len to i64
  %add.ptr = getelementptr inbounds i8, i8* %params, i64 %3
  %call15 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %add.ptr, i32 noundef %len, %struct.bignum_st* noundef %call3) #4
  %cmp16 = icmp ne %struct.bignum_st* %call15, null
  %conv17 = zext i1 %cmp16 to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv17) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %mul = shl nsw i32 %len, 1
  %4 = zext i32 %mul to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %params, i64 %4
  %call23 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %add.ptr22, i32 noundef %len, %struct.bignum_st* noundef %call4) #4
  %cmp24 = icmp ne %struct.bignum_st* %call23, null
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv25) #4
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false20
  %call29 = tail call i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef %call7, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call4, %struct.bignum_ctx* noundef %call) #4
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv31) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  %call35 = tail call fastcc i32 @group_field_tests(%struct.ec_group_st* noundef %call7, %struct.bignum_ctx* noundef %call) #5
  %tobool36.not = icmp ne i32 %call35, 0
  %spec.select = zext i1 %tobool36.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false34, %if.end, %lor.lhs.false, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false20, %lor.lhs.false28
  %group.0 = phi %struct.ec_group_st* [ %call7, %lor.lhs.false28 ], [ %call7, %lor.lhs.false20 ], [ %call7, %lor.lhs.false14 ], [ %call7, %lor.lhs.false10 ], [ %call7, %lor.lhs.false ], [ null, %if.end ], [ %call7, %lor.lhs.false34 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false34 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %call) #4
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %call) #4
  %cmp39.not = icmp eq %struct.ec_group_st* %group.0, null
  br i1 %cmp39.not, label %cleanup, label %if.then41

if.then41:                                        ; preds = %err
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %group.0) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then41, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %ret.0, %if.then41 ], [ %ret.0, %err ]
  ret i32 %retval.0
}

declare dso_local %struct.ec_method_st* @EC_GFp_simple_method() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare dso_local void @BN_CTX_start(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @EC_GROUP_new(%struct.ec_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_set_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @group_field_tests(%struct.ec_group_st* noundef %group, %struct.bignum_ctx* noundef %ctx) unnamed_addr #0 {
entry:
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 0
  %0 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_inv = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 35
  %1 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_inv, align 8, !tbaa !15
  %cmp = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %1, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %field_mul = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %0, i64 0, i32 32
  %2 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul, align 8, !tbaa !17
  %cmp2 = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %2, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @BN_CTX_start(%struct.bignum_ctx* noundef %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call3 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %ctx) #4
  %3 = bitcast %struct.bignum_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* noundef %3) #4
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %4 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_inv8 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %4, i64 0, i32 35
  %5 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_inv8, align 8, !tbaa !15
  %call9 = tail call %struct.bignum_st* @BN_value_one() #4
  %call10 = tail call i32 %5(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call9, %struct.bignum_ctx* noundef %ctx) #4
  %cmp11 = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp11 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false6
  %call15 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call3) #4
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv17) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %field = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 10
  %6 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !18
  %call21 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %6) #4
  %sub = add nsw i32 %call21, -1
  %call22 = tail call i32 @BN_rand(%struct.bignum_st* noundef %call, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #4
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv24) #4
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false20
  %7 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_inv29 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %7, i64 0, i32 35
  %8 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_inv29, align 8, !tbaa !15
  %call30 = tail call i32 %8(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %ctx) #4
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv32) #4
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false27
  %9 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_encode = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %9, i64 0, i32 36
  %10 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_encode, align 8, !tbaa !19
  %tobool37.not = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %10, null
  br i1 %tobool37.not, label %lor.lhs.false57, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false35
  %call40 = tail call i32 %10(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %ctx) #4
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv42) #4
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %land.lhs.true
  %.pre = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_encode47.phi.trans.insert = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %.pre, i64 0, i32 36
  %.pre197 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_encode47.phi.trans.insert, align 8, !tbaa !19
  %tobool48.not = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %.pre197, null
  br i1 %tobool48.not, label %lor.lhs.false57, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %lor.lhs.false45
  %call52 = tail call i32 %.pre197(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call3, %struct.bignum_ctx* noundef %ctx) #4
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i32 noundef %conv54) #4
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %land.lhs.true49.lor.lhs.false57_crit_edge

land.lhs.true49.lor.lhs.false57_crit_edge:        ; preds = %land.lhs.true49
  %.pre198 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  br label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false35, %land.lhs.true49.lor.lhs.false57_crit_edge, %lor.lhs.false45
  %11 = phi %struct.ec_method_st* [ %.pre198, %land.lhs.true49.lor.lhs.false57_crit_edge ], [ %.pre, %lor.lhs.false45 ], [ %9, %lor.lhs.false35 ]
  %field_mul59 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %11, i64 0, i32 32
  %12 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mul59, align 8, !tbaa !17
  %call60 = tail call i32 %12(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call3, %struct.bignum_ctx* noundef %ctx) #4
  %cmp61 = icmp ne i32 %call60, 0
  %conv62 = zext i1 %cmp61 to i32
  %call63 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv62) #4
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false57
  %13 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_decode = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %13, i64 0, i32 37
  %14 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_decode, align 8, !tbaa !20
  %tobool67.not = icmp eq i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* %14, null
  br i1 %tobool67.not, label %lor.lhs.false76, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %lor.lhs.false65
  %call71 = tail call i32 %14(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call4, %struct.bignum_st* noundef %call4, %struct.bignum_ctx* noundef %ctx) #4
  %cmp72 = icmp ne i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0), i32 noundef %conv73) #4
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %err, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %land.lhs.true68, %lor.lhs.false65
  %call77 = tail call i32 @BN_is_one(%struct.bignum_st* noundef %call4) #4
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv79) #4
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %if.end83

if.end83:                                         ; preds = %lor.lhs.false76
  tail call void @BN_zero_ex(%struct.bignum_st* noundef %call) #4
  %15 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_inv85 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %15, i64 0, i32 35
  %16 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_inv85, align 8, !tbaa !15
  %call86 = tail call i32 %16(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %call, %struct.bignum_ctx* noundef %ctx) #4
  %cmp87 = icmp ne i32 %call86, 0
  %conv88 = zext i1 %cmp87 to i32
  %call89 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv88) #4
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %if.end83
  %call92 = tail call i64 @ERR_peek_last_error() #4
  %call93 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call92) #5
  %cmp94 = icmp eq i32 %call93, 16
  %conv95 = zext i1 %cmp94 to i32
  %call98 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv95) #4
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %err, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false91
  %call101 = tail call i64 @ERR_peek_last_error() #4
  %call102 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call101) #5
  %cmp103 = icmp eq i32 %call102, 165
  %conv104 = zext i1 %cmp103 to i32
  %call107 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv104) #4
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %err, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %lor.lhs.false100
  %17 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !14
  %field_inv111 = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %17, i64 0, i32 35
  %18 = load i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_inv111, align 8, !tbaa !15
  %19 = load %struct.bignum_st*, %struct.bignum_st** %field, align 8, !tbaa !18
  %call113 = tail call i32 %18(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %19, %struct.bignum_ctx* noundef %ctx) #4
  %cmp114 = icmp ne i32 %call113, 0
  %conv115 = zext i1 %cmp114 to i32
  %call116 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv115) #4
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %err, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %lor.lhs.false109
  %call119 = tail call i64 @ERR_peek_last_error() #4
  %call120 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call119) #5
  %cmp121 = icmp eq i32 %call120, 16
  %conv122 = zext i1 %cmp121 to i32
  %call125 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv122) #4
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %err, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %lor.lhs.false118
  %call128 = tail call i64 @ERR_peek_last_error() #4
  %call129 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call128) #5
  %cmp130 = icmp eq i32 %call129, 165
  %conv131 = zext i1 %cmp130 to i32
  %call134 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv131) #4
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %err, label %if.end137

if.end137:                                        ; preds = %lor.lhs.false127
  tail call void @ERR_clear_error() #4
  br label %err

err:                                              ; preds = %if.end83, %lor.lhs.false91, %lor.lhs.false100, %lor.lhs.false109, %lor.lhs.false118, %lor.lhs.false127, %if.end, %lor.lhs.false6, %lor.lhs.false14, %lor.lhs.false20, %lor.lhs.false27, %land.lhs.true, %land.lhs.true49, %lor.lhs.false57, %land.lhs.true68, %lor.lhs.false76, %if.end137
  %ret.0 = phi i32 [ 1, %if.end137 ], [ 0, %lor.lhs.false127 ], [ 0, %lor.lhs.false118 ], [ 0, %lor.lhs.false109 ], [ 0, %lor.lhs.false100 ], [ 0, %lor.lhs.false91 ], [ 0, %if.end83 ], [ 0, %lor.lhs.false76 ], [ 0, %land.lhs.true68 ], [ 0, %lor.lhs.false57 ], [ 0, %land.lhs.true49 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false27 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false6 ], [ 0, %if.end ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 1, %lor.lhs.false ], [ 1, %entry ]
  ret i32 %retval.0
}

declare dso_local void @BN_CTX_end(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare dso_local i32 @BN_is_one(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_rand(%struct.bignum_st* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #3 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

declare dso_local i64 @ERR_peek_last_error() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #3 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

declare dso_local %struct.ec_method_st* @EC_GFp_mont_method() local_unnamed_addr #1

declare dso_local %struct.ec_method_st* @EC_GF2m_simple_method() local_unnamed_addr #1

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef, %struct.ec_parameters_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef) local_unnamed_addr #1

declare dso_local void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ecpk_parameters_st* @EC_GROUP_get_ecpkparameters(%struct.ec_group_st* noundef, %struct.ecpk_parameters_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @EC_GROUP_new_from_ecpkparameters(%struct.ecpk_parameters_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_key_st* @EC_KEY_new() local_unnamed_addr #1

declare dso_local i32 @EC_KEY_decoded_from_explicit_params(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_KEY_set_group(%struct.ec_key_st* noundef, %struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local void @ECPKPARAMETERS_free(%struct.ecpk_parameters_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @i2d_ECPKParameters(%struct.ec_group_st* noundef, i8** noundef) #1

declare dso_local %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef, i8** noundef, i64 noundef) #1

declare dso_local void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare dso_local %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_i2d_fp(i32 (i8*, i8**)* noundef, %struct._IO_FILE* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) local_unnamed_addr #1

declare dso_local i8* @ASN1_d2i_fp(i8* ()* noundef, i8* (i8**, i8**, i64)* noundef, %struct._IO_FILE* noundef, i8** noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"", !11, i64 0, !8, i64 8}
!11 = !{!"int", !5, i64 0}
!12 = !{!13, !11, i64 40}
!13 = !{!"ec_group_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !5, i64 44, !8, i64 48, !4, i64 56, !8, i64 64, !5, i64 72, !8, i64 96, !8, i64 104, !11, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !5, i64 152, !5, i64 160, !8, i64 168, !8, i64 176}
!14 = !{!13, !8, i64 0}
!15 = !{!16, !8, i64 272}
!16 = !{!"ec_method_st", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432}
!17 = !{!16, !8, i64 248}
!18 = !{!13, !8, i64 64}
!19 = !{!16, !8, i64 280}
!20 = !{!16, !8, i64 288}
