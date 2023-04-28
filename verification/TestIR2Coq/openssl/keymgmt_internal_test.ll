; ModuleID = 'test/keymgmt_internal_test.c'
source_filename = "test/keymgmt_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FIXTURE = type { %struct.ossl_lib_ctx_st*, %struct.ossl_provider_st*, %struct.ossl_lib_ctx_st*, %struct.ossl_provider_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.bignum_st = type opaque
%struct.rsa_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"test_pass_key\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"test/keymgmt_internal_test.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"fixture = OPENSSL_zalloc(sizeof(*fixture))\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"fixture->ctx1 = OSSL_LIB_CTX_new()\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"fixture->prov1 = OSSL_PROVIDER_load(fixture->ctx1, \22default\22)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"fixture->ctx2 = OSSL_LIB_CTX_new()\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"fixture->prov2 = OSSL_PROVIDER_load(fixture->ctx2, \22default\22)\00", align 1
@test_pass_rsa.expected = internal unnamed_addr constant [12 x i64] [i64 3161751493, i64 65537, i64 2064855961, i64 59747, i64 52919, i64 1, i64 34201, i64 48519, i64 2, i64 52283, i64 3, i64 0], align 16
@test_pass_rsa.keydata = internal global [12 x i64] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [16 x i8] c"rsa = RSA_new()\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"bn1 = BN_new()\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"BN_set_word(bn1, expected[N])\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"bn2 = BN_new()\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"BN_set_word(bn2, expected[E])\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"bn3 = BN_new()\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"BN_set_word(bn3, expected[D])\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"RSA_set0_key(rsa, bn1, bn2, bn3)\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"BN_set_word(bn1, expected[P])\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"BN_set_word(bn2, expected[Q])\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"RSA_set0_factors(rsa, bn1, bn2)\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"BN_set_word(bn1, expected[DP])\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"BN_set_word(bn2, expected[DQ])\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"BN_set_word(bn3, expected[QINV])\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"RSA_set0_crt_params(rsa, bn1, bn2, bn3)\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"bn_primes[0] = BN_new()\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"BN_set_word(bn_primes[0], expected[F3])\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"bn_exps[0] = BN_new()\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"BN_set_word(bn_exps[0], expected[E3])\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"bn_coeffs[0] = BN_new()\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"BN_set_word(bn_coeffs[0], expected[C2])\00", align 1
@.str.29 = private unnamed_addr constant [67 x i8] c"RSA_set0_multi_prime_params(rsa, bn_primes, bn_exps, bn_coeffs, 1)\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"pk = EVP_PKEY_new()\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_assign_RSA(pk, rsa)\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"km1 = EVP_KEYMGMT_fetch(fixture->ctx1, \22RSA\22, NULL)\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"km2 = EVP_KEYMGMT_fetch(fixture->ctx2, \22RSA\22, NULL)\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"km3 = EVP_KEYMGMT_fetch(fixture->ctx1, \22RSA-PSS\22, NULL)\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"km1\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"km2\00", align 1
@.str.39 = private unnamed_addr constant [60 x i8] c"provkey2 = evp_pkey_export_to_provider(pk, NULL, &km, NULL)\00", align 1
@.str.40 = private unnamed_addr constant [60 x i8] c"provkey = evp_pkey_export_to_provider(pk, NULL, &km1, NULL)\00", align 1
@.str.41 = private unnamed_addr constant [83 x i8] c"evp_keymgmt_export(km2, provkey, OSSL_KEYMGMT_SELECT_KEYPAIR, &export_cb, keydata)\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"expected[i]\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"keydata[i]\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"i = %zu\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"dup_pk = EVP_PKEY_dup(pk)\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"EVP_PKEY_eq(pk, dup_pk)\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.48 = private unnamed_addr constant [59 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_N)\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"get_ulong_via_BN(p, &keydata[N])\00", align 1
@.str.51 = private unnamed_addr constant [59 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_E)\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"get_ulong_via_BN(p, &keydata[E])\00", align 1
@.str.54 = private unnamed_addr constant [59 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_D)\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"get_ulong_via_BN(p, &keydata[D])\00", align 1
@.str.57 = private unnamed_addr constant [65 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_FACTOR1)\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"rsa-factor1\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"get_ulong_via_BN(p, &keydata[P])\00", align 1
@.str.60 = private unnamed_addr constant [65 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_FACTOR2)\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"rsa-factor2\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"get_ulong_via_BN(p, &keydata[Q])\00", align 1
@.str.63 = private unnamed_addr constant [65 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_FACTOR3)\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"rsa-factor3\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"get_ulong_via_BN(p, &keydata[F3])\00", align 1
@.str.66 = private unnamed_addr constant [67 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_EXPONENT1)\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"rsa-exponent1\00", align 1
@.str.68 = private unnamed_addr constant [34 x i8] c"get_ulong_via_BN(p, &keydata[DP])\00", align 1
@.str.69 = private unnamed_addr constant [67 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_EXPONENT2)\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"rsa-exponent2\00", align 1
@.str.71 = private unnamed_addr constant [34 x i8] c"get_ulong_via_BN(p, &keydata[DQ])\00", align 1
@.str.72 = private unnamed_addr constant [67 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_EXPONENT3)\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"rsa-exponent3\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"get_ulong_via_BN(p, &keydata[E3])\00", align 1
@.str.75 = private unnamed_addr constant [70 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_COEFFICIENT1)\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"rsa-coefficient1\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"get_ulong_via_BN(p, &keydata[QINV])\00", align 1
@.str.78 = private unnamed_addr constant [70 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_RSA_COEFFICIENT2)\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"rsa-coefficient2\00", align 1
@.str.80 = private unnamed_addr constant [34 x i8] c"get_ulong_via_BN(p, &keydata[C2])\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"OSSL_PARAM_get_BN(p, &n)\00", align 1
@.str.82 = private unnamed_addr constant [57 x i8] c"BN_bn2nativepad(n, (unsigned char *)goal, sizeof(*goal))\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_pass_key, i32 noundef 1, i32 noundef 1) #3
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pass_key(i32 noundef %n) #0 {
entry:
  %call = tail call fastcc %struct.FIXTURE* @set_up() #4
  %cmp = icmp eq %struct.FIXTURE* %call, null
  br i1 %cmp, label %cleanup, label %if.then2

if.then2:                                         ; preds = %entry
  %call3 = tail call fastcc i32 @test_pass_rsa(%struct.FIXTURE* noundef nonnull %call) #4
  tail call fastcc void @tear_down(%struct.FIXTURE* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then2
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.FIXTURE* @set_up() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 51) #3
  %0 = bitcast i8* %call to %struct.FIXTURE*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #3
  %ctx1 = bitcast i8* %call to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %call2, %struct.ossl_lib_ctx_st** %ctx1, align 8, !tbaa !3
  %1 = bitcast %struct.ossl_lib_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* noundef %1) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx1, align 8, !tbaa !3
  %call7 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #3
  %prov1 = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %prov1 to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %call7, %struct.ossl_provider_st** %3, align 8, !tbaa !8
  %4 = bitcast %struct.ossl_provider_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* noundef %4) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %call11 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #3
  %ctx2 = getelementptr inbounds i8, i8* %call, i64 16
  %5 = bitcast i8* %ctx2 to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %call11, %struct.ossl_lib_ctx_st** %5, align 8, !tbaa !9
  %6 = bitcast %struct.ossl_lib_ctx_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* noundef %6) #3
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %5, align 8, !tbaa !9
  %call16 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #3
  %prov2 = getelementptr inbounds i8, i8* %call, i64 24
  %8 = bitcast i8* %prov2 to %struct.ossl_provider_st**
  store %struct.ossl_provider_st* %call16, %struct.ossl_provider_st** %8, align 8, !tbaa !10
  %9 = bitcast %struct.ossl_provider_st* %call16 to i8*
  %call17 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i8* noundef %9) #3
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then, label %cleanup

if.then:                                          ; preds = %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false5, %lor.lhs.false, %entry
  tail call fastcc void @tear_down(%struct.FIXTURE* noundef %0) #4
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false14, %if.then
  %retval.0 = phi %struct.FIXTURE* [ null, %if.then ], [ %0, %lor.lhs.false14 ]
  ret %struct.FIXTURE* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @tear_down(%struct.FIXTURE* noundef %fixture) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.FIXTURE* %fixture, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %prov1 = getelementptr inbounds %struct.FIXTURE, %struct.FIXTURE* %fixture, i64 0, i32 1
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov1, align 8, !tbaa !8
  %call = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %0) #3
  %prov2 = getelementptr inbounds %struct.FIXTURE, %struct.FIXTURE* %fixture, i64 0, i32 3
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** %prov2, align 8, !tbaa !10
  %call1 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %1) #3
  %ctx1 = getelementptr inbounds %struct.FIXTURE, %struct.FIXTURE* %fixture, i64 0, i32 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx1, align 8, !tbaa !3
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %2) #3
  %ctx2 = getelementptr inbounds %struct.FIXTURE, %struct.FIXTURE* %fixture, i64 0, i32 2
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx2, align 8, !tbaa !9
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %3) #3
  %4 = bitcast %struct.FIXTURE* %fixture to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #1

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_pass_rsa(%struct.FIXTURE* nocapture noundef readonly %fixture) unnamed_addr #0 {
entry:
  %km = alloca %struct.evp_keymgmt_st*, align 8
  %km1 = alloca %struct.evp_keymgmt_st*, align 8
  %bn_primes = alloca [1 x %struct.bignum_st*], align 8
  %bn_exps = alloca [1 x %struct.bignum_st*], align 8
  %bn_coeffs = alloca [1 x %struct.bignum_st*], align 8
  %0 = bitcast %struct.evp_keymgmt_st** %km to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st** %km, align 8, !tbaa !11
  %1 = bitcast %struct.evp_keymgmt_st** %km1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store %struct.evp_keymgmt_st* null, %struct.evp_keymgmt_st** %km1, align 8, !tbaa !11
  %2 = bitcast [1 x %struct.bignum_st*]* %bn_primes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5
  %3 = bitcast [1 x %struct.bignum_st*]* %bn_primes to i64*
  store i64 0, i64* %3, align 8
  %4 = bitcast [1 x %struct.bignum_st*]* %bn_exps to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #5
  %5 = bitcast [1 x %struct.bignum_st*]* %bn_exps to i64*
  store i64 0, i64* %5, align 8
  %6 = bitcast [1 x %struct.bignum_st*]* %bn_coeffs to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5
  %7 = bitcast [1 x %struct.bignum_st*]* %bn_coeffs to i64*
  store i64 0, i64* %7, align 8
  %call = tail call %struct.rsa_st* @RSA_new() #3
  %8 = bitcast %struct.rsa_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* noundef %8) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #3
  %9 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* noundef %9) #3
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call2, i64 noundef 3161751493) #3
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call %struct.bignum_st* @BN_new() #3
  %10 = bitcast %struct.bignum_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef %10) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %call13 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call9, i64 noundef 65537) #3
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv15) #3
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %call19 = tail call %struct.bignum_st* @BN_new() #3
  %11 = bitcast %struct.bignum_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* noundef %11) #3
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call19, i64 noundef 2064855961) #3
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv25) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %call29 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call9, %struct.bignum_st* noundef %call19) #3
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv31) #3
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %lor.lhs.false28
  %call36 = tail call %struct.bignum_st* @BN_new() #3
  %12 = bitcast %struct.bignum_st* %call36 to i8*
  %call37 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* noundef %12) #3
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end35
  %call40 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call36, i64 noundef 59747) #3
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv42) #3
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false39
  %call46 = tail call %struct.bignum_st* @BN_new() #3
  %13 = bitcast %struct.bignum_st* %call46 to i8*
  %call47 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef %13) #3
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false45
  %call50 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call46, i64 noundef 52919) #3
  %cmp51 = icmp ne i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %call53 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv52) #3
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false49
  %call56 = tail call i32 @RSA_set0_factors(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call36, %struct.bignum_st* noundef %call46) #3
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv58) #3
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %if.end62

if.end62:                                         ; preds = %lor.lhs.false55
  %call63 = tail call %struct.bignum_st* @BN_new() #3
  %14 = bitcast %struct.bignum_st* %call63 to i8*
  %call64 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 192, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* noundef %14) #3
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.end62
  %call67 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call63, i64 noundef 34201) #3
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv69) #3
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false66
  %call73 = tail call %struct.bignum_st* @BN_new() #3
  %15 = bitcast %struct.bignum_st* %call73 to i8*
  %call74 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* noundef %15) #3
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %err, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false72
  %call77 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call73, i64 noundef 48519) #3
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv79) #3
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false76
  %call83 = tail call %struct.bignum_st* @BN_new() #3
  %16 = bitcast %struct.bignum_st* %call83 to i8*
  %call84 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* noundef %16) #3
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false82
  %call87 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call83, i64 noundef 52283) #3
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv89) #3
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false86
  %call93 = tail call i32 @RSA_set0_crt_params(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call63, %struct.bignum_st* noundef %call73, %struct.bignum_st* noundef %call83) #3
  %cmp94 = icmp ne i32 %call93, 0
  %conv95 = zext i1 %cmp94 to i32
  %call96 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32 noundef %conv95) #3
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %if.end99

if.end99:                                         ; preds = %lor.lhs.false92
  %call100 = tail call %struct.bignum_st* @BN_new() #3
  %arrayidx = getelementptr inbounds [1 x %struct.bignum_st*], [1 x %struct.bignum_st*]* %bn_primes, i64 0, i64 0
  store %struct.bignum_st* %call100, %struct.bignum_st** %arrayidx, align 8, !tbaa !11
  %17 = bitcast %struct.bignum_st* %call100 to i8*
  %call101 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8* noundef %17) #3
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %err, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %if.end99
  %call105 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call100, i64 noundef 1) #3
  %cmp106 = icmp ne i32 %call105, 0
  %conv107 = zext i1 %cmp106 to i32
  %call108 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i32 noundef %conv107) #3
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %lor.lhs.false103
  %call111 = tail call %struct.bignum_st* @BN_new() #3
  %arrayidx112 = getelementptr inbounds [1 x %struct.bignum_st*], [1 x %struct.bignum_st*]* %bn_exps, i64 0, i64 0
  store %struct.bignum_st* %call111, %struct.bignum_st** %arrayidx112, align 8, !tbaa !11
  %18 = bitcast %struct.bignum_st* %call111 to i8*
  %call113 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8* noundef %18) #3
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false110
  %call117 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call111, i64 noundef 2) #3
  %cmp118 = icmp ne i32 %call117, 0
  %conv119 = zext i1 %cmp118 to i32
  %call120 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv119) #3
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %err, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false115
  %call123 = tail call %struct.bignum_st* @BN_new() #3
  %arrayidx124 = getelementptr inbounds [1 x %struct.bignum_st*], [1 x %struct.bignum_st*]* %bn_coeffs, i64 0, i64 0
  store %struct.bignum_st* %call123, %struct.bignum_st** %arrayidx124, align 8, !tbaa !11
  %19 = bitcast %struct.bignum_st* %call123 to i8*
  %call125 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i8* noundef %19) #3
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %err, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %lor.lhs.false122
  %call129 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call123, i64 noundef 3) #3
  %cmp130 = icmp ne i32 %call129, 0
  %conv131 = zext i1 %cmp130 to i32
  %call132 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv131) #3
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %err, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %lor.lhs.false127
  %call137 = call i32 @RSA_set0_multi_prime_params(%struct.rsa_st* noundef %call, %struct.bignum_st** noundef nonnull %arrayidx, %struct.bignum_st** noundef nonnull %arrayidx112, %struct.bignum_st** noundef nonnull %arrayidx124, i32 noundef 1) #3
  %cmp138 = icmp ne i32 %call137, 0
  %conv139 = zext i1 %cmp138 to i32
  %call140 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv139) #3
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %err, label %if.end143

if.end143:                                        ; preds = %lor.lhs.false134
  %call144 = call %struct.evp_pkey_st* @EVP_PKEY_new() #3
  %20 = bitcast %struct.evp_pkey_st* %call144 to i8*
  %call145 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i8* noundef %20) #3
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %err, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %if.end143
  %call148 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call144, i32 noundef 6, i8* noundef %8) #3
  %cmp149 = icmp ne i32 %call148, 0
  %conv150 = zext i1 %cmp149 to i32
  %call151 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv150) #3
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %err, label %if.end154

if.end154:                                        ; preds = %lor.lhs.false147
  %ctx1 = getelementptr inbounds %struct.FIXTURE, %struct.FIXTURE* %fixture, i64 0, i32 0
  %21 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx1, align 8, !tbaa !3
  %call155 = call %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef %21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* noundef null) #3
  store %struct.evp_keymgmt_st* %call155, %struct.evp_keymgmt_st** %km1, align 8, !tbaa !11
  %22 = bitcast %struct.evp_keymgmt_st* %call155 to i8*
  %call156 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i64 0, i64 0), i8* noundef %22) #3
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %err, label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %if.end154
  %ctx2 = getelementptr inbounds %struct.FIXTURE, %struct.FIXTURE* %fixture, i64 0, i32 2
  %23 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx2, align 8, !tbaa !9
  %call159 = call %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i8* noundef null) #3
  %24 = bitcast %struct.evp_keymgmt_st* %call159 to i8*
  %call160 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.34, i64 0, i64 0), i8* noundef %24) #3
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %err, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %lor.lhs.false158
  %25 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %ctx1, align 8, !tbaa !3
  %call164 = call %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef %25, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8* noundef null) #3
  %26 = bitcast %struct.evp_keymgmt_st* %call164 to i8*
  %call165 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0), i8* noundef %26) #3
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %err, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false162
  %call168 = call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0), i8* noundef %22, i8* noundef %24) #3
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %err, label %while.body

while.cond:                                       ; preds = %if.end210
  %cmp172 = icmp eq %struct.evp_pkey_st* %call206, null
  br i1 %cmp172, label %while.body, label %err, !llvm.loop !12

while.body:                                       ; preds = %lor.lhs.false167, %while.cond
  %pk.0273 = phi %struct.evp_pkey_st* [ null, %while.cond ], [ %call144, %lor.lhs.false167 ]
  store %struct.evp_keymgmt_st* %call164, %struct.evp_keymgmt_st** %km, align 8, !tbaa !11
  %call174 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef %pk.0273, %struct.ossl_lib_ctx_st* noundef null, %struct.evp_keymgmt_st** noundef nonnull %km, i8* noundef null) #3
  %call175 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.39, i64 0, i64 0), i8* noundef %call174) #3
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %err, label %if.end178

if.end178:                                        ; preds = %while.body
  %call179 = call i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef %pk.0273, %struct.ossl_lib_ctx_st* noundef null, %struct.evp_keymgmt_st** noundef nonnull %km1, i8* noundef null) #3
  %call180 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.40, i64 0, i64 0), i8* noundef %call179) #3
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %err, label %lor.lhs.false182

lor.lhs.false182:                                 ; preds = %if.end178
  %call183 = call i32 @evp_keymgmt_export(%struct.evp_keymgmt_st* noundef %call159, i8* noundef %call179, i32 noundef 3, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @export_cb, i8* noundef bitcast ([12 x i64]* @test_pass_rsa.keydata to i8*)) #3
  %cmp184 = icmp ne i32 %call183, 0
  %conv185 = zext i1 %cmp184 to i32
  %call186 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv185) #3
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %err, label %for.body

for.body:                                         ; preds = %lor.lhs.false182, %if.end199
  %i.0272 = phi i64 [ %inc200, %if.end199 ], [ 0, %lor.lhs.false182 ]
  %ret.1271 = phi i32 [ %ret.2, %if.end199 ], [ 0, %lor.lhs.false182 ]
  %arrayidx192 = getelementptr inbounds [12 x i64], [12 x i64]* @test_pass_rsa.expected, i64 0, i64 %i.0272
  %27 = load i64, i64* %arrayidx192, align 8, !tbaa !14
  %conv193 = trunc i64 %27 to i32
  %arrayidx194 = getelementptr inbounds [12 x i64], [12 x i64]* @test_pass_rsa.keydata, i64 0, i64 %i.0272
  %28 = load i64, i64* %arrayidx194, align 8, !tbaa !14
  %conv195 = trunc i64 %28 to i32
  %call196 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv193, i32 noundef %conv195) #3
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.then198, label %if.else

if.then198:                                       ; preds = %for.body
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i64 noundef %i.0272) #3
  br label %if.end199

if.else:                                          ; preds = %for.body
  %inc = add nsw i32 %ret.1271, 1
  br label %if.end199

if.end199:                                        ; preds = %if.else, %if.then198
  %ret.2 = phi i32 [ %inc, %if.else ], [ %ret.1271, %if.then198 ]
  %inc200 = add nuw nsw i64 %i.0272, 1
  %exitcond.not = icmp eq i64 %inc200, 12
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %if.end199
  %cmp202 = icmp eq i32 %ret.2, 12
  br i1 %cmp202, label %lor.lhs.false205, label %err

lor.lhs.false205:                                 ; preds = %for.end
  %call206 = call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef %pk.0273) #3
  %29 = bitcast %struct.evp_pkey_st* %call206 to i8*
  %call207 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 254, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), i8* noundef %29) #3
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %err, label %if.end210

if.end210:                                        ; preds = %lor.lhs.false205
  %call211 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %pk.0273, %struct.evp_pkey_st* noundef %call206) #3
  %call212 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), i32 noundef %call211, i32 noundef 1) #3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pk.0273) #3
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %err, label %while.cond, !llvm.loop !12

err:                                              ; preds = %while.cond, %if.end210, %for.end, %lor.lhs.false205, %if.end178, %lor.lhs.false182, %while.body, %if.end154, %lor.lhs.false158, %lor.lhs.false162, %lor.lhs.false167, %if.end143, %lor.lhs.false147, %if.end99, %lor.lhs.false103, %lor.lhs.false110, %lor.lhs.false115, %lor.lhs.false122, %lor.lhs.false127, %lor.lhs.false134, %if.end62, %lor.lhs.false66, %lor.lhs.false72, %lor.lhs.false76, %lor.lhs.false82, %lor.lhs.false86, %lor.lhs.false92, %if.end35, %lor.lhs.false39, %lor.lhs.false45, %lor.lhs.false49, %lor.lhs.false55, %if.end, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false12, %lor.lhs.false18, %lor.lhs.false22, %lor.lhs.false28, %entry
  %ret.3 = phi i32 [ 0, %lor.lhs.false167 ], [ 0, %lor.lhs.false162 ], [ 0, %lor.lhs.false158 ], [ 0, %if.end154 ], [ 0, %lor.lhs.false147 ], [ 0, %if.end143 ], [ 0, %lor.lhs.false134 ], [ 0, %lor.lhs.false127 ], [ 0, %lor.lhs.false122 ], [ 0, %lor.lhs.false115 ], [ 0, %lor.lhs.false110 ], [ 0, %lor.lhs.false103 ], [ 0, %if.end99 ], [ 0, %lor.lhs.false92 ], [ 0, %lor.lhs.false86 ], [ 0, %lor.lhs.false82 ], [ 0, %lor.lhs.false76 ], [ 0, %lor.lhs.false72 ], [ 0, %lor.lhs.false66 ], [ 0, %if.end62 ], [ 0, %lor.lhs.false55 ], [ 0, %lor.lhs.false49 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false39 ], [ 0, %if.end35 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %call212, %while.cond ], [ 0, %while.body ], [ 0, %if.end178 ], [ 0, %lor.lhs.false182 ], [ 0, %for.end ], [ 1, %lor.lhs.false205 ], [ 0, %if.end210 ]
  %rsa.0 = phi %struct.rsa_st* [ null, %lor.lhs.false167 ], [ null, %lor.lhs.false162 ], [ null, %lor.lhs.false158 ], [ null, %if.end154 ], [ %call, %lor.lhs.false147 ], [ %call, %if.end143 ], [ %call, %lor.lhs.false134 ], [ %call, %lor.lhs.false127 ], [ %call, %lor.lhs.false122 ], [ %call, %lor.lhs.false115 ], [ %call, %lor.lhs.false110 ], [ %call, %lor.lhs.false103 ], [ %call, %if.end99 ], [ %call, %lor.lhs.false92 ], [ %call, %lor.lhs.false86 ], [ %call, %lor.lhs.false82 ], [ %call, %lor.lhs.false76 ], [ %call, %lor.lhs.false72 ], [ %call, %lor.lhs.false66 ], [ %call, %if.end62 ], [ %call, %lor.lhs.false55 ], [ %call, %lor.lhs.false49 ], [ %call, %lor.lhs.false45 ], [ %call, %lor.lhs.false39 ], [ %call, %if.end35 ], [ %call, %lor.lhs.false28 ], [ %call, %lor.lhs.false22 ], [ %call, %lor.lhs.false18 ], [ %call, %lor.lhs.false12 ], [ %call, %lor.lhs.false8 ], [ %call, %lor.lhs.false ], [ %call, %if.end ], [ %call, %entry ], [ null, %while.body ], [ null, %lor.lhs.false182 ], [ null, %if.end178 ], [ null, %lor.lhs.false205 ], [ null, %for.end ], [ null, %if.end210 ], [ null, %while.cond ]
  %bn1.0 = phi %struct.bignum_st* [ null, %lor.lhs.false167 ], [ null, %lor.lhs.false162 ], [ null, %lor.lhs.false158 ], [ null, %if.end154 ], [ null, %lor.lhs.false147 ], [ null, %if.end143 ], [ null, %lor.lhs.false134 ], [ null, %lor.lhs.false127 ], [ null, %lor.lhs.false122 ], [ null, %lor.lhs.false115 ], [ null, %lor.lhs.false110 ], [ null, %lor.lhs.false103 ], [ null, %if.end99 ], [ %call63, %lor.lhs.false92 ], [ %call63, %lor.lhs.false86 ], [ %call63, %lor.lhs.false82 ], [ %call63, %lor.lhs.false76 ], [ %call63, %lor.lhs.false72 ], [ %call63, %lor.lhs.false66 ], [ %call63, %if.end62 ], [ %call36, %lor.lhs.false55 ], [ %call36, %lor.lhs.false49 ], [ %call36, %lor.lhs.false45 ], [ %call36, %lor.lhs.false39 ], [ %call36, %if.end35 ], [ %call2, %lor.lhs.false28 ], [ %call2, %lor.lhs.false22 ], [ %call2, %lor.lhs.false18 ], [ %call2, %lor.lhs.false12 ], [ %call2, %lor.lhs.false8 ], [ %call2, %lor.lhs.false ], [ %call2, %if.end ], [ null, %entry ], [ null, %while.body ], [ null, %lor.lhs.false182 ], [ null, %if.end178 ], [ null, %lor.lhs.false205 ], [ null, %for.end ], [ null, %if.end210 ], [ null, %while.cond ]
  %bn2.0 = phi %struct.bignum_st* [ null, %lor.lhs.false167 ], [ null, %lor.lhs.false162 ], [ null, %lor.lhs.false158 ], [ null, %if.end154 ], [ null, %lor.lhs.false147 ], [ null, %if.end143 ], [ null, %lor.lhs.false134 ], [ null, %lor.lhs.false127 ], [ null, %lor.lhs.false122 ], [ null, %lor.lhs.false115 ], [ null, %lor.lhs.false110 ], [ null, %lor.lhs.false103 ], [ null, %if.end99 ], [ %call73, %lor.lhs.false92 ], [ %call73, %lor.lhs.false86 ], [ %call73, %lor.lhs.false82 ], [ %call73, %lor.lhs.false76 ], [ %call73, %lor.lhs.false72 ], [ %call46, %lor.lhs.false66 ], [ %call46, %if.end62 ], [ %call46, %lor.lhs.false55 ], [ %call46, %lor.lhs.false49 ], [ %call46, %lor.lhs.false45 ], [ %call9, %lor.lhs.false39 ], [ %call9, %if.end35 ], [ %call9, %lor.lhs.false28 ], [ %call9, %lor.lhs.false22 ], [ %call9, %lor.lhs.false18 ], [ %call9, %lor.lhs.false12 ], [ %call9, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ null, %while.body ], [ null, %lor.lhs.false182 ], [ null, %if.end178 ], [ null, %lor.lhs.false205 ], [ null, %for.end ], [ null, %if.end210 ], [ null, %while.cond ]
  %bn3.0 = phi %struct.bignum_st* [ null, %lor.lhs.false167 ], [ null, %lor.lhs.false162 ], [ null, %lor.lhs.false158 ], [ null, %if.end154 ], [ null, %lor.lhs.false147 ], [ null, %if.end143 ], [ null, %lor.lhs.false134 ], [ null, %lor.lhs.false127 ], [ null, %lor.lhs.false122 ], [ null, %lor.lhs.false115 ], [ null, %lor.lhs.false110 ], [ null, %lor.lhs.false103 ], [ null, %if.end99 ], [ %call83, %lor.lhs.false92 ], [ %call83, %lor.lhs.false86 ], [ %call83, %lor.lhs.false82 ], [ %call19, %lor.lhs.false76 ], [ %call19, %lor.lhs.false72 ], [ %call19, %lor.lhs.false66 ], [ %call19, %if.end62 ], [ %call19, %lor.lhs.false55 ], [ %call19, %lor.lhs.false49 ], [ %call19, %lor.lhs.false45 ], [ %call19, %lor.lhs.false39 ], [ %call19, %if.end35 ], [ %call19, %lor.lhs.false28 ], [ %call19, %lor.lhs.false22 ], [ %call19, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ null, %while.body ], [ null, %lor.lhs.false182 ], [ null, %if.end178 ], [ null, %lor.lhs.false205 ], [ null, %for.end ], [ null, %if.end210 ], [ null, %while.cond ]
  %pk.1 = phi %struct.evp_pkey_st* [ %call144, %lor.lhs.false167 ], [ %call144, %lor.lhs.false162 ], [ %call144, %lor.lhs.false158 ], [ %call144, %if.end154 ], [ %call144, %lor.lhs.false147 ], [ %call144, %if.end143 ], [ null, %lor.lhs.false134 ], [ null, %lor.lhs.false127 ], [ null, %lor.lhs.false122 ], [ null, %lor.lhs.false115 ], [ null, %lor.lhs.false110 ], [ null, %lor.lhs.false103 ], [ null, %if.end99 ], [ null, %lor.lhs.false92 ], [ null, %lor.lhs.false86 ], [ null, %lor.lhs.false82 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false72 ], [ null, %lor.lhs.false66 ], [ null, %if.end62 ], [ null, %lor.lhs.false55 ], [ null, %lor.lhs.false49 ], [ null, %lor.lhs.false45 ], [ null, %lor.lhs.false39 ], [ null, %if.end35 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call206, %while.cond ], [ %pk.0273, %while.body ], [ %pk.0273, %if.end178 ], [ %pk.0273, %lor.lhs.false182 ], [ %pk.0273, %for.end ], [ %pk.0273, %lor.lhs.false205 ], [ %call206, %if.end210 ]
  %km2.0 = phi %struct.evp_keymgmt_st* [ %call159, %lor.lhs.false167 ], [ %call159, %lor.lhs.false162 ], [ %call159, %lor.lhs.false158 ], [ null, %if.end154 ], [ null, %lor.lhs.false147 ], [ null, %if.end143 ], [ null, %lor.lhs.false134 ], [ null, %lor.lhs.false127 ], [ null, %lor.lhs.false122 ], [ null, %lor.lhs.false115 ], [ null, %lor.lhs.false110 ], [ null, %lor.lhs.false103 ], [ null, %if.end99 ], [ null, %lor.lhs.false92 ], [ null, %lor.lhs.false86 ], [ null, %lor.lhs.false82 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false72 ], [ null, %lor.lhs.false66 ], [ null, %if.end62 ], [ null, %lor.lhs.false55 ], [ null, %lor.lhs.false49 ], [ null, %lor.lhs.false45 ], [ null, %lor.lhs.false39 ], [ null, %if.end35 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call159, %while.body ], [ %call159, %lor.lhs.false182 ], [ %call159, %if.end178 ], [ %call159, %lor.lhs.false205 ], [ %call159, %for.end ], [ %call159, %if.end210 ], [ %call159, %while.cond ]
  %km3.0 = phi %struct.evp_keymgmt_st* [ %call164, %lor.lhs.false167 ], [ %call164, %lor.lhs.false162 ], [ null, %lor.lhs.false158 ], [ null, %if.end154 ], [ null, %lor.lhs.false147 ], [ null, %if.end143 ], [ null, %lor.lhs.false134 ], [ null, %lor.lhs.false127 ], [ null, %lor.lhs.false122 ], [ null, %lor.lhs.false115 ], [ null, %lor.lhs.false110 ], [ null, %lor.lhs.false103 ], [ null, %if.end99 ], [ null, %lor.lhs.false92 ], [ null, %lor.lhs.false86 ], [ null, %lor.lhs.false82 ], [ null, %lor.lhs.false76 ], [ null, %lor.lhs.false72 ], [ null, %lor.lhs.false66 ], [ null, %if.end62 ], [ null, %lor.lhs.false55 ], [ null, %lor.lhs.false49 ], [ null, %lor.lhs.false45 ], [ null, %lor.lhs.false39 ], [ null, %if.end35 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false22 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call164, %while.body ], [ %call164, %lor.lhs.false182 ], [ %call164, %if.end178 ], [ %call164, %lor.lhs.false205 ], [ %call164, %for.end ], [ %call164, %if.end210 ], [ %call164, %while.cond ]
  call void @RSA_free(%struct.rsa_st* noundef %rsa.0) #3
  call void @BN_free(%struct.bignum_st* noundef %bn1.0) #3
  call void @BN_free(%struct.bignum_st* noundef %bn2.0) #3
  call void @BN_free(%struct.bignum_st* noundef %bn3.0) #3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pk.1) #3
  %30 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %km1, align 8, !tbaa !11
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %30) #3
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %km2.0) #3
  call void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef %km3.0) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.3
}

declare dso_local %struct.rsa_st* @RSA_new() local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_key(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_factors(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_crt_params(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_multi_prime_params(%struct.rsa_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_keymgmt_st* @EVP_KEYMGMT_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @evp_pkey_export_to_provider(%struct.evp_pkey_st* noundef, %struct.ossl_lib_ctx_st* noundef, %struct.evp_keymgmt_st** noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @evp_keymgmt_export(%struct.evp_keymgmt_st* noundef, i8* noundef, i32 noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @export_cb(%struct.ossl_param_st* noundef %params, i8* noundef %arg) #0 {
entry:
  %0 = bitcast i8* %arg to i64*
  %cmp = icmp eq i8* %arg, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #3
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.48, i64 0, i64 0), i8* noundef %1) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %call, i64* noundef nonnull %0) #4
  %cmp3 = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv) #3
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #3
  %2 = bitcast %struct.ossl_param_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.51, i64 0, i64 0), i8* noundef %2) #3
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %arrayidx11 = getelementptr inbounds i8, i8* %arg, i64 8
  %3 = bitcast i8* %arrayidx11 to i64*
  %call12 = tail call fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %call7, i64* noundef nonnull %3) #4
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv14) #3
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false10
  %call18 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0)) #3
  %4 = bitcast %struct.ossl_param_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.54, i64 0, i64 0), i8* noundef %4) #3
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %arrayidx22 = getelementptr inbounds i8, i8* %arg, i64 16
  %5 = bitcast i8* %arrayidx22 to i64*
  %call23 = tail call fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %call18, i64* noundef nonnull %5) #4
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv25) #3
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %lor.lhs.false21
  %call30 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0)) #3
  %6 = bitcast %struct.ossl_param_st* %call30 to i8*
  %call31 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.57, i64 0, i64 0), i8* noundef %6) #3
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %cleanup, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.end29
  %arrayidx34 = getelementptr inbounds i8, i8* %arg, i64 24
  %7 = bitcast i8* %arrayidx34 to i64*
  %call35 = tail call fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %call30, i64* noundef nonnull %7) #4
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv37) #3
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false33
  %call41 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0)) #3
  %8 = bitcast %struct.ossl_param_st* %call41 to i8*
  %call42 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.60, i64 0, i64 0), i8* noundef %8) #3
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %arrayidx45 = getelementptr inbounds i8, i8* %arg, i64 32
  %9 = bitcast i8* %arrayidx45 to i64*
  %call46 = tail call fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %call41, i64* noundef nonnull %9) #4
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv48) #3
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cleanup, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false44
  %call52 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i64 0, i64 0)) #3
  %10 = bitcast %struct.ossl_param_st* %call52 to i8*
  %call53 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.63, i64 0, i64 0), i8* noundef %10) #3
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cleanup, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false51
  %arrayidx56 = getelementptr inbounds i8, i8* %arg, i64 40
  %11 = bitcast i8* %arrayidx56 to i64*
  %call57 = tail call fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %call52, i64* noundef nonnull %11) #4
  %cmp58 = icmp ne i32 %call57, 0
  %conv59 = zext i1 %cmp58 to i32
  %call60 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i64 0, i64 0), i32 noundef %conv59) #3
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %cleanup, label %if.end63

if.end63:                                         ; preds = %lor.lhs.false55
  %call64 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i64 0, i64 0)) #3
  %12 = bitcast %struct.ossl_param_st* %call64 to i8*
  %call65 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.66, i64 0, i64 0), i8* noundef %12) #3
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.end63
  %arrayidx68 = getelementptr inbounds i8, i8* %arg, i64 48
  %13 = bitcast i8* %arrayidx68 to i64*
  %call69 = tail call fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %call64, i64* noundef nonnull %13) #4
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.68, i64 0, i64 0), i32 noundef %conv71) #3
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %cleanup, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false67
  %call75 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.70, i64 0, i64 0)) #3
  %14 = bitcast %struct.ossl_param_st* %call75 to i8*
  %call76 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.69, i64 0, i64 0), i8* noundef %14) #3
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false74
  %arrayidx79 = getelementptr inbounds i8, i8* %arg, i64 56
  %15 = bitcast i8* %arrayidx79 to i64*
  %call80 = tail call fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %call75, i64* noundef nonnull %15) #4
  %cmp81 = icmp ne i32 %call80, 0
  %conv82 = zext i1 %cmp81 to i32
  %call83 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.71, i64 0, i64 0), i32 noundef %conv82) #3
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %cleanup, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false78
  %call86 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i64 0, i64 0)) #3
  %16 = bitcast %struct.ossl_param_st* %call86 to i8*
  %call87 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.72, i64 0, i64 0), i8* noundef %16) #3
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %cleanup, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false85
  %arrayidx90 = getelementptr inbounds i8, i8* %arg, i64 64
  %17 = bitcast i8* %arrayidx90 to i64*
  %call91 = tail call fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %call86, i64* noundef nonnull %17) #4
  %cmp92 = icmp ne i32 %call91, 0
  %conv93 = zext i1 %cmp92 to i32
  %call94 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv93) #3
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %cleanup, label %if.end97

if.end97:                                         ; preds = %lor.lhs.false89
  %call98 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.76, i64 0, i64 0)) #3
  %18 = bitcast %struct.ossl_param_st* %call98 to i8*
  %call99 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.75, i64 0, i64 0), i8* noundef %18) #3
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %cleanup, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %if.end97
  %arrayidx102 = getelementptr inbounds i8, i8* %arg, i64 72
  %19 = bitcast i8* %arrayidx102 to i64*
  %call103 = tail call fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %call98, i64* noundef nonnull %19) #4
  %cmp104 = icmp ne i32 %call103, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv105) #3
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %cleanup, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false101
  %call109 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0)) #3
  %20 = bitcast %struct.ossl_param_st* %call109 to i8*
  %call110 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.78, i64 0, i64 0), i8* noundef %20) #3
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %cleanup, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false108
  %arrayidx113 = getelementptr inbounds i8, i8* %arg, i64 80
  %21 = bitcast i8* %arrayidx113 to i64*
  %call114 = tail call fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %call109, i64* noundef nonnull %21) #4
  %cmp115 = icmp ne i32 %call114, 0
  %conv116 = zext i1 %cmp115 to i32
  %call117 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv116) #3
  %tobool118.not = icmp ne i32 %call117, 0
  %spec.select = zext i1 %tobool118.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false112, %if.end97, %lor.lhs.false101, %lor.lhs.false108, %if.end63, %lor.lhs.false67, %lor.lhs.false74, %lor.lhs.false78, %lor.lhs.false85, %lor.lhs.false89, %if.end29, %lor.lhs.false33, %lor.lhs.false40, %lor.lhs.false44, %lor.lhs.false51, %lor.lhs.false55, %if.end, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false10, %lor.lhs.false17, %lor.lhs.false21, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %lor.lhs.false55 ], [ 0, %lor.lhs.false51 ], [ 0, %lor.lhs.false44 ], [ 0, %lor.lhs.false40 ], [ 0, %lor.lhs.false33 ], [ 0, %if.end29 ], [ 0, %lor.lhs.false89 ], [ 0, %lor.lhs.false85 ], [ 0, %lor.lhs.false78 ], [ 0, %lor.lhs.false74 ], [ 0, %lor.lhs.false67 ], [ 0, %if.end63 ], [ 0, %lor.lhs.false108 ], [ 0, %lor.lhs.false101 ], [ 0, %if.end97 ], [ %spec.select, %lor.lhs.false112 ]
  ret i32 %retval.0
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_KEYMGMT_free(%struct.evp_keymgmt_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_ulong_via_BN(%struct.ossl_param_st* noundef %p, i64* noundef %goal) unnamed_addr #0 {
entry:
  %n = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store %struct.bignum_st* null, %struct.bignum_st** %n, align 8, !tbaa !11
  %call = call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef %p, %struct.bignum_st** noundef nonnull %n) #3
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.81, i64 0, i64 0), i32 noundef %conv) #3
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !11
  %2 = bitcast i64* %goal to i8*
  %call2 = call i32 @BN_bn2nativepad(%struct.bignum_st* noundef %1, i8* noundef %2, i32 noundef 8) #3
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.82, i64 0, i64 0), i32 noundef %conv4) #3
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %ret.0 = phi i32 [ 1, %lor.lhs.false ], [ 0, %if.then ]
  %3 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !11
  call void @BN_free(%struct.bignum_st* noundef %3) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %ret.0
}

declare dso_local i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @BN_bn2nativepad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!4, !5, i64 8}
!9 = !{!4, !5, i64 16}
!10 = !{!4, !5, i64 24}
!11 = !{!5, !5, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = distinct !{!16, !13}
