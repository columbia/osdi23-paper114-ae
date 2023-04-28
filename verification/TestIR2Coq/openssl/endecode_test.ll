; ModuleID = 'test/endecode_test.c'
source_filename = "test/endecode_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_provider_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bignum_ctx = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.5, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.5 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_md_ctx_st = type opaque
%struct.bignum_st = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.ossl_encoder_ctx_st = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.ossl_decoder_ctx_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.X509_sig_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.6 }
%union.anon.6 = type { i8* }

@test_get_options.options = internal constant [14 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 2, i32 60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 3, i32 60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 4, i32 60, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 5, i32 115, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.23, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [21 x i8] c"Usage: %s [options]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Display the list of tests available\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Run a single test by id or name\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Run a single iteration of a test\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Number of tabs added to output\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Seed value to randomize tests with\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Explicitly use a non-default library context\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"PEM format RSA key file to encode/decode\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"pss\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"PEM format RSA-PSS key file to encode/decode\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"The configuration file to use for the library context\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"The provider to load (The default value is 'default')\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@setup_tests.qbits = internal global i64 160, align 8
@setup_tests.pbits = internal global i64 1024, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"pbits\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"qbits\00", align 1
@__const.setup_tests.DSA_params = private unnamed_addr constant [3 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 2, i8* bitcast (i64* @setup_tests.pbits to i8*), i64 8, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 2, i8* bitcast (i64* @setup_tests.qbits to i8*), i64 8, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@setup_tests.groupname = internal global [11 x i8] c"prime256v1\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@default_libctx = internal unnamed_addr global i1 false, align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@is_fips = internal unnamed_addr global i1 false, align 4
@deflprov = internal global %struct.ossl_provider_st* null, align 8
@testctx = internal global %struct.ossl_lib_ctx_st* null, align 8
@nullprov = internal global %struct.ossl_provider_st* null, align 8
@.str.29 = private unnamed_addr constant [21 x i8] c"test/endecode_test.c\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"keyctx = OSSL_LIB_CTX_new()\00", align 1
@keyctx = internal unnamed_addr global %struct.ossl_lib_ctx_st* null, align 8
@.str.31 = private unnamed_addr constant [48 x i8] c"keyprov = OSSL_PROVIDER_load(keyctx, \22default\22)\00", align 1
@keyprov = internal unnamed_addr global %struct.ossl_provider_st* null, align 8
@.str.32 = private unnamed_addr constant [31 x i8] c"bnctx = BN_CTX_new_ex(testctx)\00", align 1
@bnctx = internal unnamed_addr global %struct.bignum_ctx* null, align 8
@.str.33 = private unnamed_addr constant [36 x i8] c"bld_prime_nc = OSSL_PARAM_BLD_new()\00", align 1
@bld_prime_nc = internal unnamed_addr global %struct.ossl_param_bld_st* null, align 8
@.str.34 = private unnamed_addr constant [33 x i8] c"bld_prime = OSSL_PARAM_BLD_new()\00", align 1
@bld_prime = internal unnamed_addr global %struct.ossl_param_bld_st* null, align 8
@.str.35 = private unnamed_addr constant [68 x i8] c"ec_explicit_prime_params_nc = OSSL_PARAM_BLD_to_param(bld_prime_nc)\00", align 1
@ec_explicit_prime_params_nc = internal unnamed_addr global %struct.ossl_param_st* null, align 8
@.str.36 = private unnamed_addr constant [71 x i8] c"ec_explicit_prime_params_explicit = OSSL_PARAM_BLD_to_param(bld_prime)\00", align 1
@ec_explicit_prime_params_explicit = internal unnamed_addr global %struct.ossl_param_st* null, align 8
@.str.37 = private unnamed_addr constant [34 x i8] c"bld_tri_nc = OSSL_PARAM_BLD_new()\00", align 1
@bld_tri_nc = internal unnamed_addr global %struct.ossl_param_bld_st* null, align 8
@.str.38 = private unnamed_addr constant [31 x i8] c"bld_tri = OSSL_PARAM_BLD_new()\00", align 1
@bld_tri = internal unnamed_addr global %struct.ossl_param_bld_st* null, align 8
@.str.39 = private unnamed_addr constant [64 x i8] c"ec_explicit_tri_params_nc = OSSL_PARAM_BLD_to_param(bld_tri_nc)\00", align 1
@ec_explicit_tri_params_nc = internal unnamed_addr global %struct.ossl_param_st* null, align 8
@.str.40 = private unnamed_addr constant [67 x i8] c"ec_explicit_tri_params_explicit = OSSL_PARAM_BLD_to_param(bld_tri)\00", align 1
@ec_explicit_tri_params_explicit = internal unnamed_addr global %struct.ossl_param_st* null, align 8
@.str.41 = private unnamed_addr constant [19 x i8] c"Generating keys...\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"Generating DH keys...\00", align 1
@.str.43 = private unnamed_addr constant [46 x i8] c"template_DH = make_template(\22DH\22, ((void*)0))\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@template_DH = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.45 = private unnamed_addr constant [43 x i8] c"key_DH = make_key(\22DH\22, template_DH, NULL)\00", align 1
@key_DH = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.46 = private unnamed_addr constant [53 x i8] c"template_DHX = make_template(\22X9.42 DH\22, ((void*)0))\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"X9.42 DH\00", align 1
@template_DHX = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.48 = private unnamed_addr constant [51 x i8] c"key_DHX = make_key(\22X9.42 DH\22, template_DHX, NULL)\00", align 1
@key_DHX = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.49 = private unnamed_addr constant [23 x i8] c"Generating DSA keys...\00", align 1
@.str.50 = private unnamed_addr constant [48 x i8] c"template_DSA = make_template(\22DSA\22, DSA_params)\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@template_DSA = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.52 = private unnamed_addr constant [46 x i8] c"key_DSA = make_key(\22DSA\22, template_DSA, NULL)\00", align 1
@key_DSA = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.53 = private unnamed_addr constant [22 x i8] c"Generating EC keys...\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"template_EC = make_template(\22EC\22, EC_params)\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@template_EC = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.56 = private unnamed_addr constant [43 x i8] c"key_EC = make_key(\22EC\22, template_EC, NULL)\00", align 1
@key_EC = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.57 = private unnamed_addr constant [86 x i8] c"template_ECExplicitPrimeNamedCurve = make_template(\22EC\22, ec_explicit_prime_params_nc)\00", align 1
@template_ECExplicitPrimeNamedCurve = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.58 = private unnamed_addr constant [89 x i8] c"key_ECExplicitPrimeNamedCurve = make_key(\22EC\22, template_ECExplicitPrimeNamedCurve, NULL)\00", align 1
@key_ECExplicitPrimeNamedCurve = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.59 = private unnamed_addr constant [84 x i8] c"template_ECExplicitPrime2G = make_template(\22EC\22, ec_explicit_prime_params_explicit)\00", align 1
@template_ECExplicitPrime2G = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.60 = private unnamed_addr constant [73 x i8] c"key_ECExplicitPrime2G = make_key(\22EC\22, template_ECExplicitPrime2G, NULL)\00", align 1
@key_ECExplicitPrime2G = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.61 = private unnamed_addr constant [82 x i8] c"template_ECExplicitTriNamedCurve = make_template(\22EC\22, ec_explicit_tri_params_nc)\00", align 1
@template_ECExplicitTriNamedCurve = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.62 = private unnamed_addr constant [85 x i8] c"key_ECExplicitTriNamedCurve = make_key(\22EC\22, template_ECExplicitTriNamedCurve, NULL)\00", align 1
@key_ECExplicitTriNamedCurve = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.63 = private unnamed_addr constant [80 x i8] c"template_ECExplicitTri2G = make_template(\22EC\22, ec_explicit_tri_params_explicit)\00", align 1
@template_ECExplicitTri2G = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.64 = private unnamed_addr constant [69 x i8] c"key_ECExplicitTri2G = make_key(\22EC\22, template_ECExplicitTri2G, NULL)\00", align 1
@key_ECExplicitTri2G = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.65 = private unnamed_addr constant [52 x i8] c"key_ED25519 = make_key(\22ED25519\22, NULL, ((void*)0))\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"ED25519\00", align 1
@key_ED25519 = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.67 = private unnamed_addr constant [48 x i8] c"key_ED448 = make_key(\22ED448\22, NULL, ((void*)0))\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"ED448\00", align 1
@key_ED448 = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.69 = private unnamed_addr constant [50 x i8] c"key_X25519 = make_key(\22X25519\22, NULL, ((void*)0))\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"X25519\00", align 1
@key_X25519 = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.71 = private unnamed_addr constant [46 x i8] c"key_X448 = make_key(\22X448\22, NULL, ((void*)0))\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"X448\00", align 1
@key_X448 = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.73 = private unnamed_addr constant [19 x i8] c"Loading RSA key...\00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c"key_RSA = load_pkey_pem(rsa_file, keyctx)\00", align 1
@key_RSA = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.75 = private unnamed_addr constant [23 x i8] c"Loading RSA_PSS key...\00", align 1
@.str.76 = private unnamed_addr constant [50 x i8] c"key_RSA_PSS = load_pkey_pem(rsa_pss_file, keyctx)\00", align 1
@key_RSA_PSS = internal unnamed_addr global %struct.evp_pkey_st* null, align 8
@.str.77 = private unnamed_addr constant [21 x i8] c"Generating keys done\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"test_unprotected_DH_via_DER\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"test_unprotected_DH_via_PEM\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"test_protected_DH_via_DER\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"test_protected_DH_via_PEM\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"test_public_DH_via_DER\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"test_public_DH_via_PEM\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"test_params_DH_via_DER\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"test_params_DH_via_PEM\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"test_unprotected_DHX_via_DER\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"test_unprotected_DHX_via_PEM\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"test_protected_DHX_via_DER\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"test_protected_DHX_via_PEM\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"test_public_DHX_via_DER\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"test_public_DHX_via_PEM\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"test_params_DHX_via_DER\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"test_params_DHX_via_PEM\00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"test_unprotected_DSA_via_DER\00", align 1
@.str.95 = private unnamed_addr constant [29 x i8] c"test_unprotected_DSA_via_PEM\00", align 1
@.str.96 = private unnamed_addr constant [27 x i8] c"test_protected_DSA_via_DER\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"test_protected_DSA_via_PEM\00", align 1
@.str.98 = private unnamed_addr constant [24 x i8] c"test_public_DSA_via_DER\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"test_public_DSA_via_PEM\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"test_params_DSA_via_DER\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"test_params_DSA_via_PEM\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"test_unprotected_DSA_via_legacy_PEM\00", align 1
@.str.103 = private unnamed_addr constant [34 x i8] c"test_protected_DSA_via_legacy_PEM\00", align 1
@.str.104 = private unnamed_addr constant [32 x i8] c"test_unprotected_DSA_via_MSBLOB\00", align 1
@.str.105 = private unnamed_addr constant [27 x i8] c"test_public_DSA_via_MSBLOB\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"test_unprotected_DSA_via_PVK\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"test_protected_DSA_via_PVK\00", align 1
@.str.108 = private unnamed_addr constant [28 x i8] c"test_unprotected_EC_via_DER\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"test_unprotected_EC_via_PEM\00", align 1
@.str.110 = private unnamed_addr constant [26 x i8] c"test_protected_EC_via_DER\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"test_protected_EC_via_PEM\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"test_public_EC_via_DER\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"test_public_EC_via_PEM\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"test_params_EC_via_DER\00", align 1
@.str.115 = private unnamed_addr constant [23 x i8] c"test_params_EC_via_PEM\00", align 1
@.str.116 = private unnamed_addr constant [35 x i8] c"test_unprotected_EC_via_legacy_PEM\00", align 1
@.str.117 = private unnamed_addr constant [33 x i8] c"test_protected_EC_via_legacy_PEM\00", align 1
@.str.118 = private unnamed_addr constant [51 x i8] c"test_unprotected_ECExplicitPrimeNamedCurve_via_DER\00", align 1
@.str.119 = private unnamed_addr constant [51 x i8] c"test_unprotected_ECExplicitPrimeNamedCurve_via_PEM\00", align 1
@.str.120 = private unnamed_addr constant [49 x i8] c"test_protected_ECExplicitPrimeNamedCurve_via_DER\00", align 1
@.str.121 = private unnamed_addr constant [49 x i8] c"test_protected_ECExplicitPrimeNamedCurve_via_PEM\00", align 1
@.str.122 = private unnamed_addr constant [46 x i8] c"test_public_ECExplicitPrimeNamedCurve_via_DER\00", align 1
@.str.123 = private unnamed_addr constant [46 x i8] c"test_public_ECExplicitPrimeNamedCurve_via_PEM\00", align 1
@.str.124 = private unnamed_addr constant [58 x i8] c"test_unprotected_ECExplicitPrimeNamedCurve_via_legacy_PEM\00", align 1
@.str.125 = private unnamed_addr constant [56 x i8] c"test_protected_ECExplicitPrimeNamedCurve_via_legacy_PEM\00", align 1
@.str.126 = private unnamed_addr constant [43 x i8] c"test_unprotected_ECExplicitPrime2G_via_DER\00", align 1
@.str.127 = private unnamed_addr constant [43 x i8] c"test_unprotected_ECExplicitPrime2G_via_PEM\00", align 1
@.str.128 = private unnamed_addr constant [41 x i8] c"test_protected_ECExplicitPrime2G_via_DER\00", align 1
@.str.129 = private unnamed_addr constant [41 x i8] c"test_protected_ECExplicitPrime2G_via_PEM\00", align 1
@.str.130 = private unnamed_addr constant [38 x i8] c"test_public_ECExplicitPrime2G_via_DER\00", align 1
@.str.131 = private unnamed_addr constant [38 x i8] c"test_public_ECExplicitPrime2G_via_PEM\00", align 1
@.str.132 = private unnamed_addr constant [50 x i8] c"test_unprotected_ECExplicitPrime2G_via_legacy_PEM\00", align 1
@.str.133 = private unnamed_addr constant [48 x i8] c"test_protected_ECExplicitPrime2G_via_legacy_PEM\00", align 1
@.str.134 = private unnamed_addr constant [49 x i8] c"test_unprotected_ECExplicitTriNamedCurve_via_DER\00", align 1
@.str.135 = private unnamed_addr constant [49 x i8] c"test_unprotected_ECExplicitTriNamedCurve_via_PEM\00", align 1
@.str.136 = private unnamed_addr constant [47 x i8] c"test_protected_ECExplicitTriNamedCurve_via_DER\00", align 1
@.str.137 = private unnamed_addr constant [47 x i8] c"test_protected_ECExplicitTriNamedCurve_via_PEM\00", align 1
@.str.138 = private unnamed_addr constant [44 x i8] c"test_public_ECExplicitTriNamedCurve_via_DER\00", align 1
@.str.139 = private unnamed_addr constant [44 x i8] c"test_public_ECExplicitTriNamedCurve_via_PEM\00", align 1
@.str.140 = private unnamed_addr constant [56 x i8] c"test_unprotected_ECExplicitTriNamedCurve_via_legacy_PEM\00", align 1
@.str.141 = private unnamed_addr constant [54 x i8] c"test_protected_ECExplicitTriNamedCurve_via_legacy_PEM\00", align 1
@.str.142 = private unnamed_addr constant [41 x i8] c"test_unprotected_ECExplicitTri2G_via_DER\00", align 1
@.str.143 = private unnamed_addr constant [41 x i8] c"test_unprotected_ECExplicitTri2G_via_PEM\00", align 1
@.str.144 = private unnamed_addr constant [39 x i8] c"test_protected_ECExplicitTri2G_via_DER\00", align 1
@.str.145 = private unnamed_addr constant [39 x i8] c"test_protected_ECExplicitTri2G_via_PEM\00", align 1
@.str.146 = private unnamed_addr constant [36 x i8] c"test_public_ECExplicitTri2G_via_DER\00", align 1
@.str.147 = private unnamed_addr constant [36 x i8] c"test_public_ECExplicitTri2G_via_PEM\00", align 1
@.str.148 = private unnamed_addr constant [48 x i8] c"test_unprotected_ECExplicitTri2G_via_legacy_PEM\00", align 1
@.str.149 = private unnamed_addr constant [46 x i8] c"test_protected_ECExplicitTri2G_via_legacy_PEM\00", align 1
@.str.150 = private unnamed_addr constant [33 x i8] c"test_unprotected_ED25519_via_DER\00", align 1
@.str.151 = private unnamed_addr constant [33 x i8] c"test_unprotected_ED25519_via_PEM\00", align 1
@.str.152 = private unnamed_addr constant [31 x i8] c"test_protected_ED25519_via_DER\00", align 1
@.str.153 = private unnamed_addr constant [31 x i8] c"test_protected_ED25519_via_PEM\00", align 1
@.str.154 = private unnamed_addr constant [28 x i8] c"test_public_ED25519_via_DER\00", align 1
@.str.155 = private unnamed_addr constant [28 x i8] c"test_public_ED25519_via_PEM\00", align 1
@.str.156 = private unnamed_addr constant [31 x i8] c"test_unprotected_ED448_via_DER\00", align 1
@.str.157 = private unnamed_addr constant [31 x i8] c"test_unprotected_ED448_via_PEM\00", align 1
@.str.158 = private unnamed_addr constant [29 x i8] c"test_protected_ED448_via_DER\00", align 1
@.str.159 = private unnamed_addr constant [29 x i8] c"test_protected_ED448_via_PEM\00", align 1
@.str.160 = private unnamed_addr constant [26 x i8] c"test_public_ED448_via_DER\00", align 1
@.str.161 = private unnamed_addr constant [26 x i8] c"test_public_ED448_via_PEM\00", align 1
@.str.162 = private unnamed_addr constant [32 x i8] c"test_unprotected_X25519_via_DER\00", align 1
@.str.163 = private unnamed_addr constant [32 x i8] c"test_unprotected_X25519_via_PEM\00", align 1
@.str.164 = private unnamed_addr constant [30 x i8] c"test_protected_X25519_via_DER\00", align 1
@.str.165 = private unnamed_addr constant [30 x i8] c"test_protected_X25519_via_PEM\00", align 1
@.str.166 = private unnamed_addr constant [27 x i8] c"test_public_X25519_via_DER\00", align 1
@.str.167 = private unnamed_addr constant [27 x i8] c"test_public_X25519_via_PEM\00", align 1
@.str.168 = private unnamed_addr constant [30 x i8] c"test_unprotected_X448_via_DER\00", align 1
@.str.169 = private unnamed_addr constant [30 x i8] c"test_unprotected_X448_via_PEM\00", align 1
@.str.170 = private unnamed_addr constant [28 x i8] c"test_protected_X448_via_DER\00", align 1
@.str.171 = private unnamed_addr constant [28 x i8] c"test_protected_X448_via_PEM\00", align 1
@.str.172 = private unnamed_addr constant [25 x i8] c"test_public_X448_via_DER\00", align 1
@.str.173 = private unnamed_addr constant [25 x i8] c"test_public_X448_via_PEM\00", align 1
@.str.174 = private unnamed_addr constant [29 x i8] c"test_unprotected_RSA_via_DER\00", align 1
@.str.175 = private unnamed_addr constant [29 x i8] c"test_unprotected_RSA_via_PEM\00", align 1
@.str.176 = private unnamed_addr constant [27 x i8] c"test_protected_RSA_via_DER\00", align 1
@.str.177 = private unnamed_addr constant [27 x i8] c"test_protected_RSA_via_PEM\00", align 1
@.str.178 = private unnamed_addr constant [24 x i8] c"test_public_RSA_via_DER\00", align 1
@.str.179 = private unnamed_addr constant [24 x i8] c"test_public_RSA_via_PEM\00", align 1
@.str.180 = private unnamed_addr constant [36 x i8] c"test_unprotected_RSA_via_legacy_PEM\00", align 1
@.str.181 = private unnamed_addr constant [34 x i8] c"test_protected_RSA_via_legacy_PEM\00", align 1
@.str.182 = private unnamed_addr constant [33 x i8] c"test_unprotected_RSA_PSS_via_DER\00", align 1
@.str.183 = private unnamed_addr constant [33 x i8] c"test_unprotected_RSA_PSS_via_PEM\00", align 1
@.str.184 = private unnamed_addr constant [31 x i8] c"test_protected_RSA_PSS_via_DER\00", align 1
@.str.185 = private unnamed_addr constant [31 x i8] c"test_protected_RSA_PSS_via_PEM\00", align 1
@.str.186 = private unnamed_addr constant [28 x i8] c"test_public_RSA_PSS_via_DER\00", align 1
@.str.187 = private unnamed_addr constant [28 x i8] c"test_public_RSA_PSS_via_PEM\00", align 1
@.str.188 = private unnamed_addr constant [32 x i8] c"test_unprotected_RSA_via_MSBLOB\00", align 1
@.str.189 = private unnamed_addr constant [27 x i8] c"test_public_RSA_via_MSBLOB\00", align 1
@.str.190 = private unnamed_addr constant [29 x i8] c"test_unprotected_RSA_via_PVK\00", align 1
@.str.191 = private unnamed_addr constant [27 x i8] c"test_protected_RSA_via_PVK\00", align 1
@create_ec_explicit_prime_params_namedcurve.prime256v1_gen = internal constant [65 x i8] c"\04k\17\D1\F2\E1,BG\F8\BC\E6\E5c\A4@\F2w\03}\81-\EB3\A0\F4\A19E\D8\98\C2\96O\E3B\E2\FE\1A\7F\9B\8E\E7\EBJ|\0F\9E\16+\CE3Wk1^\CE\CB\B6@h7\BFQ\F5", align 16
@do_create_ec_explicit_prime_params.prime_data = internal constant [33 x i8] c"\00\FF\FF\FF\FF\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@do_create_ec_explicit_prime_params.a_data = internal constant [33 x i8] c"\00\FF\FF\FF\FF\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FC", align 16
@do_create_ec_explicit_prime_params.b_data = internal constant [32 x i8] c"Z\C65\D8\AA:\93\E7\B3\EB\BDUv\98\86\BCe\1D\06\B0\CCS\B0\F6;\CE<>'\D2`K", align 16
@do_create_ec_explicit_prime_params.seed = internal constant [20 x i8] c"\C4\9D6\08\86\E7\04\93jfx\E1\13\9D&\B7\81\9F~\90", align 16
@do_create_ec_explicit_prime_params.order_data = internal constant [33 x i8] c"\00\FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\BC\E6\FA\AD\A7\17\9E\84\F3\B9\CA\C2\FCc%Q", align 16
@.str.192 = private unnamed_addr constant [22 x i8] c"a = BN_CTX_get(bnctx)\00", align 1
@.str.193 = private unnamed_addr constant [22 x i8] c"b = BN_CTX_get(bnctx)\00", align 1
@.str.194 = private unnamed_addr constant [26 x i8] c"prime = BN_CTX_get(bnctx)\00", align 1
@.str.195 = private unnamed_addr constant [26 x i8] c"order = BN_CTX_get(bnctx)\00", align 1
@.str.196 = private unnamed_addr constant [49 x i8] c"BN_bin2bn(prime_data, sizeof(prime_data), prime)\00", align 1
@.str.197 = private unnamed_addr constant [37 x i8] c"BN_bin2bn(a_data, sizeof(a_data), a)\00", align 1
@.str.198 = private unnamed_addr constant [37 x i8] c"BN_bin2bn(b_data, sizeof(b_data), b)\00", align 1
@.str.199 = private unnamed_addr constant [49 x i8] c"BN_bin2bn(order_data, sizeof(order_data), order)\00", align 1
@.str.200 = private unnamed_addr constant [93 x i8] c"OSSL_PARAM_BLD_push_utf8_string(bld, OSSL_PKEY_PARAM_EC_FIELD_TYPE, SN_X9_62_prime_field, 0)\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"field-type\00", align 1
@.str.202 = private unnamed_addr constant [12 x i8] c"prime-field\00", align 1
@.str.203 = private unnamed_addr constant [57 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_P, prime)\00", align 1
@.str.204 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.205 = private unnamed_addr constant [53 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_A, a)\00", align 1
@.str.206 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.207 = private unnamed_addr constant [53 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_B, b)\00", align 1
@.str.208 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.209 = private unnamed_addr constant [61 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_ORDER, order)\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.211 = private unnamed_addr constant [82 x i8] c"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_EC_GENERATOR, gen, gen_len)\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@.str.213 = private unnamed_addr constant [83 x i8] c"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_EC_SEED, seed, sizeof(seed))\00", align 1
@.str.214 = private unnamed_addr constant [73 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_COFACTOR, BN_value_one())\00", align 1
@.str.215 = private unnamed_addr constant [9 x i8] c"cofactor\00", align 1
@create_ec_explicit_prime_params.prime256v1_gen2 = internal constant [65 x i8] c"\04\E4\97\08\BE}\FA\A2\9A\A3\12o\E4\E7\D0%\E3J\C1\03\15\8C\D93\C6\97B\F5\DC\97\B9\D71\E9}t=gj;!\08\9C1s\F8\C1'\C9\D2\A0\A0\83f\E0\C9\DA\A8\C6V+\94\B1\AEU", align 16
@create_ec_explicit_trinomial_params_namedcurve.gen = internal constant [61 x i8] c"\04\01r2\BA\85:~s\1A\F1)\F2/\F4\14\95c\A4\19\C2k\F5\0AL\9Dn\EF\ADa&\01\DBS}\EC\E8\19\B7\F7\0FUZg\C4'\A8\CD\9B\F1\8A\EB\9BV\E0\C1\10V\FA\E6\A3", align 16
@do_create_ec_explicit_trinomial_params.poly_data = internal constant [30 x i8] c"\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\01", align 16
@do_create_ec_explicit_trinomial_params.a_data = internal constant [30 x i8] zeroinitializer, align 16
@do_create_ec_explicit_trinomial_params.b_data = internal constant [30 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", align 16
@do_create_ec_explicit_trinomial_params.order_data = internal constant [30 x i8] c"\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00\06\9D[\B9\15\BC\D4n\FB\1A\D5\F1s\AB\DF", align 16
@do_create_ec_explicit_trinomial_params.cofactor_data = internal constant [1 x i8] c"\04", align 1
@.str.216 = private unnamed_addr constant [25 x i8] c"poly = BN_CTX_get(bnctx)\00", align 1
@.str.217 = private unnamed_addr constant [29 x i8] c"cofactor = BN_CTX_get(bnctx)\00", align 1
@.str.218 = private unnamed_addr constant [46 x i8] c"BN_bin2bn(poly_data, sizeof(poly_data), poly)\00", align 1
@.str.219 = private unnamed_addr constant [58 x i8] c"BN_bin2bn(cofactor_data, sizeof(cofactor_data), cofactor)\00", align 1
@.str.220 = private unnamed_addr constant [106 x i8] c"OSSL_PARAM_BLD_push_utf8_string(bld, OSSL_PKEY_PARAM_EC_FIELD_TYPE, SN_X9_62_characteristic_two_field, 0)\00", align 1
@.str.221 = private unnamed_addr constant [25 x i8] c"characteristic-two-field\00", align 1
@.str.222 = private unnamed_addr constant [56 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_P, poly)\00", align 1
@.str.223 = private unnamed_addr constant [67 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_EC_COFACTOR, cofactor)\00", align 1
@create_ec_explicit_trinomial_params.gen2 = internal constant [61 x i8] c"\04\00\D7\BA\D0&l1jxv\01\D12K\8F0)-x0\CAC\AA\F0\A2Z\D4\0F\B3\F4\00\85K\1B\8DP\10\A5\1C\80\F7\86@bL\87\D1&z\9C\\\E9\82)\D1gpA\EA\CB", align 16
@.str.224 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.225 = private unnamed_addr constant [15 x i8] c"PrivateKeyInfo\00", align 1
@.str.226 = private unnamed_addr constant [109 x i8] c"encode_cb(file, line, &encoded, &encoded_len, pkey, selection, output_type, output_structure, pass, pcipher)\00", align 1
@.str.227 = private unnamed_addr constant [49 x i8] c"check_cb(file, line, type, encoded, encoded_len)\00", align 1
@.str.228 = private unnamed_addr constant [156 x i8] c"decode_cb(file, line, (void **)&pkey2, encoded, encoded_len, output_type, output_structure, (flags & FLAG_DECODE_WITH_TYPE ? type : NULL), selection, pass)\00", align 1
@.str.229 = private unnamed_addr constant [112 x i8] c"encode_cb(file, line, &encoded2, &encoded2_len, pkey2, selection, output_type, output_structure, pass, pcipher)\00", align 1
@.str.230 = private unnamed_addr constant [36 x i8] c"EVP_PKEY_parameters_eq(pkey, pkey2)\00", align 1
@.str.231 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.232 = private unnamed_addr constant [25 x i8] c"EVP_PKEY_eq(pkey, pkey2)\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"|pkey| encoded\00", align 1
@.str.234 = private unnamed_addr constant [16 x i8] c"|pkey2| encoded\00", align 1
@.str.235 = private unnamed_addr constant [96 x i8] c"ectx = OSSL_ENCODER_CTX_new_for_pkey(pkey, selection, output_type, output_structure, testpropq)\00", align 1
@.str.236 = private unnamed_addr constant [40 x i8] c"OSSL_ENCODER_CTX_get_num_encoders(ectx)\00", align 1
@.str.237 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.238 = private unnamed_addr constant [59 x i8] c"OSSL_ENCODER_CTX_set_passphrase(ectx, upass, strlen(pass))\00", align 1
@.str.239 = private unnamed_addr constant [49 x i8] c"OSSL_ENCODER_CTX_set_cipher(ectx, pcipher, NULL)\00", align 1
@.str.240 = private unnamed_addr constant [31 x i8] c"mem_ser = BIO_new(BIO_s_mem())\00", align 1
@.str.241 = private unnamed_addr constant [35 x i8] c"OSSL_ENCODER_to_bio(ectx, mem_ser)\00", align 1
@.str.242 = private unnamed_addr constant [39 x i8] c"BIO_get_mem_ptr(mem_ser, &mem_buf) > 0\00", align 1
@.str.243 = private unnamed_addr constant [25 x i8] c"*encoded = mem_buf->data\00", align 1
@.str.244 = private unnamed_addr constant [31 x i8] c"*encoded_len = mem_buf->length\00", align 1
@.str.245 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.246 = private unnamed_addr constant [52 x i8] c"encoded_bio = BIO_new_mem_buf(encoded, encoded_len)\00", align 1
@.str.247 = private unnamed_addr constant [114 x i8] c"dctx = OSSL_DECODER_CTX_new_for_pkey(&testpkey, testtype, structure_type, keytype, selection, testctx, testpropq)\00", align 1
@.str.248 = private unnamed_addr constant [23 x i8] c"BIO_reset(encoded_bio)\00", align 1
@.str.249 = private unnamed_addr constant [41 x i8] c"OSSL_DECODER_from_bio(dctx, encoded_bio)\00", align 1
@.str.250 = private unnamed_addr constant [17 x i8] c"(i == 2) ? 0 : 1\00", align 1
@.str.251 = private unnamed_addr constant [39 x i8] c"EVP_PKEY_parameters_eq(pkey, testpkey)\00", align 1
@.str.252 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_eq(pkey, testpkey)\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"data1\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"data2\00", align 1
@.str.255 = private unnamed_addr constant [6 x i8] c"p8inf\00", align 1
@.str.256 = private unnamed_addr constant [5 x i8] c"pkey\00", align 1
@.str.257 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_is_a(pkey, type)\00", align 1
@.str.258 = private unnamed_addr constant [19 x i8] c"%s isn't any of %s\00", align 1
@.str.259 = private unnamed_addr constant [27 x i8] c"evp_pkey_is_provided(pkey)\00", align 1
@.str.260 = private unnamed_addr constant [3 x i8] c", \00", align 1
@check_unprotected_PKCS8_PEM.expected_pem_header = internal constant [28 x i8] c"-----BEGIN PRIVATE KEY-----\00", align 16
@.str.261 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.262 = private unnamed_addr constant [20 x i8] c"expected_pem_header\00", align 1
@.str.263 = private unnamed_addr constant [24 x i8] c"EncryptedPrivateKeyInfo\00", align 1
@.str.264 = private unnamed_addr constant [32 x i8] c"the holy handgrenade of antioch\00", align 1
@.str.265 = private unnamed_addr constant [12 x i8] c"AES-256-CBC\00", align 1
@.str.266 = private unnamed_addr constant [3 x i8] c"p8\00", align 1
@check_protected_PKCS8_PEM.expected_pem_header = internal constant [38 x i8] c"-----BEGIN ENCRYPTED PRIVATE KEY-----\00", align 16
@.str.267 = private unnamed_addr constant [21 x i8] c"SubjectPublicKeyInfo\00", align 1
@check_public_PEM.expected_pem_header = internal constant [27 x i8] c"-----BEGIN PUBLIC KEY-----\00", align 16
@.str.268 = private unnamed_addr constant [14 x i8] c"type-specific\00", align 1
@check_params_PEM.expected_pem_header = internal global [80 x i8] zeroinitializer, align 16
@.str.269 = private unnamed_addr constant [102 x i8] c"BIO_snprintf(expected_pem_header, sizeof(expected_pem_header), \22-----BEGIN %s PARAMETERS-----\22, type)\00", align 1
@.str.270 = private unnamed_addr constant [30 x i8] c"-----BEGIN %s PARAMETERS-----\00", align 1
@.str.271 = private unnamed_addr constant [75 x i8] c"Test not available if using a non-default library context or FIPS provider\00", align 1
@.str.272 = private unnamed_addr constant [55 x i8] c"cipher = EVP_CIPHER_fetch(testctx, pcipher, testpropq)\00", align 1
@.str.273 = private unnamed_addr constant [88 x i8] c"PEM_write_bio_PrivateKey_traditional(mem_ser, pkey, cipher, upass, passlen, NULL, NULL)\00", align 1
@check_unprotected_legacy_PEM.expected_pem_header = internal global [80 x i8] zeroinitializer, align 16
@.str.274 = private unnamed_addr constant [103 x i8] c"BIO_snprintf(expected_pem_header, sizeof(expected_pem_header), \22-----BEGIN %s PRIVATE KEY-----\22, type)\00", align 1
@.str.275 = private unnamed_addr constant [31 x i8] c"-----BEGIN %s PRIVATE KEY-----\00", align 1
@check_protected_legacy_PEM.expected_pem_header = internal global [80 x i8] zeroinitializer, align 16
@.str.276 = private unnamed_addr constant [29 x i8] c"strstr(data, \22\\nDEK-Info: \22)\00", align 1
@.str.277 = private unnamed_addr constant [12 x i8] c"\0ADEK-Info: \00", align 1
@.str.278 = private unnamed_addr constant [7 x i8] c"MSBLOB\00", align 1
@.str.279 = private unnamed_addr constant [34 x i8] c"i2b_PrivateKey_bio(mem_ser, pkey)\00", align 1
@.str.280 = private unnamed_addr constant [33 x i8] c"i2b_PublicKey_bio(mem_ser, pkey)\00", align 1
@.str.281 = private unnamed_addr constant [4 x i8] c"PVK\00", align 1
@.str.282 = private unnamed_addr constant [64 x i8] c"ossl_assert((selection & OSSL_KEYMGMT_SELECT_PRIVATE_KEY) != 0)\00", align 1
@.str.283 = private unnamed_addr constant [78 x i8] c"i2b_PVK_bio_ex(mem_ser, pkey, enc, pass_pw, (void *)pass, testctx, testpropq)\00", align 1
@.str.284 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.285 = private unnamed_addr constant [30 x i8] c"Legacy provider not available\00", align 1
@.str.286 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.287 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([14 x %struct.options_st], [14 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %DSA_params = alloca [3 x %struct.ossl_param_st], align 16
  %EC_params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast [3 x %struct.ossl_param_st]* %DSA_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) %0, i8* noundef nonnull align 16 dereferenceable(120) bitcast ([3 x %struct.ossl_param_st]* @__const.setup_tests.DSA_params to i8*), i64 120, i1 false)
  %1 = bitcast [2 x %struct.ossl_param_st]* %EC_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %2 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %EC_params, i64 0, i64 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 16
  %3 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %EC_params, i64 0, i64 0, i32 1
  store i32 4, i32* %3, align 8
  %4 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %EC_params, i64 0, i64 0, i32 2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @setup_tests.groupname, i64 0, i64 0), i8** %4, align 16
  %5 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %EC_params, i64 0, i64 0, i32 3
  %6 = bitcast i64* %5 to <2 x i64>*
  store <2 x i64> <i64 10, i64 -1>, <2 x i64>* %6, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %rsa_file.0 = phi i8* [ null, %entry ], [ %rsa_file.0.be, %while.cond.backedge ]
  %rsa_pss_file.0 = phi i8* [ null, %entry ], [ %rsa_pss_file.0.be, %while.cond.backedge ]
  %prov_name.0 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), %entry ], [ %prov_name.0.be, %while.cond.backedge ]
  %config_file.0 = phi i8* [ null, %entry ], [ %config_file.0.be, %while.cond.backedge ]
  %call = tail call i32 @opt_next() #9
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 5, label %sw.bb1
    i32 4, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %rsa_file.0.be = phi i8* [ %rsa_file.0, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %rsa_file.0, %sw.bb3 ], [ %rsa_file.0, %sw.bb1 ], [ %rsa_file.0, %sw.bb ], [ %rsa_file.0, %while.cond ], [ %rsa_file.0, %while.cond ], [ %rsa_file.0, %while.cond ], [ %rsa_file.0, %while.cond ], [ %rsa_file.0, %while.cond ], [ %rsa_file.0, %while.cond ]
  %rsa_pss_file.0.be = phi i8* [ %call8, %sw.bb7 ], [ %rsa_pss_file.0, %sw.bb5 ], [ %rsa_pss_file.0, %sw.bb3 ], [ %rsa_pss_file.0, %sw.bb1 ], [ %rsa_pss_file.0, %sw.bb ], [ %rsa_pss_file.0, %while.cond ], [ %rsa_pss_file.0, %while.cond ], [ %rsa_pss_file.0, %while.cond ], [ %rsa_pss_file.0, %while.cond ], [ %rsa_pss_file.0, %while.cond ], [ %rsa_pss_file.0, %while.cond ]
  %prov_name.0.be = phi i8* [ %prov_name.0, %sw.bb7 ], [ %prov_name.0, %sw.bb5 ], [ %prov_name.0, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %prov_name.0, %sw.bb ], [ %prov_name.0, %while.cond ], [ %prov_name.0, %while.cond ], [ %prov_name.0, %while.cond ], [ %prov_name.0, %while.cond ], [ %prov_name.0, %while.cond ], [ %prov_name.0, %while.cond ]
  %config_file.0.be = phi i8* [ %config_file.0, %sw.bb7 ], [ %config_file.0, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %config_file.0, %sw.bb1 ], [ %config_file.0, %sw.bb ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ], [ %config_file.0, %while.cond ]
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  store i1 true, i1* @default_libctx, align 4
  br label %while.cond.backedge

sw.bb1:                                           ; preds = %while.cond
  %call2 = tail call i8* @opt_arg() #9
  br label %while.cond.backedge

sw.bb3:                                           ; preds = %while.cond
  %call4 = tail call i8* @opt_arg() #9
  br label %while.cond.backedge

sw.bb5:                                           ; preds = %while.cond
  %call6 = tail call i8* @opt_arg() #9
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %while.cond
  %call8 = tail call i8* @opt_arg() #9
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %call10 = tail call i32 @strcmp(i8* noundef %prov_name.0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #10
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i1 true, i1* @is_fips, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %.b = load i1, i1* @default_libctx, align 4
  br i1 %.b, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  %call13 = tail call i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef null, %struct.ossl_provider_st** noundef null, i8* noundef %config_file.0, %struct.ossl_provider_st** noundef nonnull @deflprov, i8* noundef %prov_name.0) #9
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end21

if.else:                                          ; preds = %if.end
  %call17 = tail call i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef nonnull @testctx, %struct.ossl_provider_st** noundef nonnull @nullprov, i8* noundef %config_file.0, %struct.ossl_provider_st** noundef nonnull @deflprov, i8* noundef %prov_name.0) #9
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.else, %if.then12
  %call22 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #9
  store %struct.ossl_lib_ctx_st* %call22, %struct.ossl_lib_ctx_st** @keyctx, align 8, !tbaa !5
  %7 = bitcast %struct.ossl_lib_ctx_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1309, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* noundef %7) #9
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end21
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @keyctx, align 8, !tbaa !5
  %call27 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #9
  store %struct.ossl_provider_st* %call27, %struct.ossl_provider_st** @keyprov, align 8, !tbaa !5
  %9 = bitcast %struct.ossl_provider_st* %call27 to i8*
  %call28 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1311, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i64 0, i64 0), i8* noundef %9) #9
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.end26
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call32 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %10) #9
  store %struct.bignum_ctx* %call32, %struct.bignum_ctx** @bnctx, align 8, !tbaa !5
  %11 = bitcast %struct.bignum_ctx* %call32 to i8*
  %call33 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1315, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i8* noundef %11) #9
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %call35 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #9
  store %struct.ossl_param_bld_st* %call35, %struct.ossl_param_bld_st** @bld_prime_nc, align 8, !tbaa !5
  %12 = bitcast %struct.ossl_param_bld_st* %call35 to i8*
  %call36 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1316, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i8* noundef %12) #9
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %call39 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #9
  store %struct.ossl_param_bld_st* %call39, %struct.ossl_param_bld_st** @bld_prime, align 8, !tbaa !5
  %13 = bitcast %struct.ossl_param_bld_st* %call39 to i8*
  %call40 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1317, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0), i8* noundef %13) #9
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false38
  %14 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_prime_nc, align 8, !tbaa !5
  %call43 = tail call fastcc i32 @create_ec_explicit_prime_params_namedcurve(%struct.ossl_param_bld_st* noundef %14) #11
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %cleanup, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %15 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_prime, align 8, !tbaa !5
  %call46 = tail call fastcc i32 @create_ec_explicit_prime_params(%struct.ossl_param_bld_st* noundef %15) #11
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %cleanup, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %16 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_prime_nc, align 8, !tbaa !5
  %call49 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %16) #9
  store %struct.ossl_param_st* %call49, %struct.ossl_param_st** @ec_explicit_prime_params_nc, align 8, !tbaa !5
  %17 = bitcast %struct.ossl_param_st* %call49 to i8*
  %call50 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1320, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.35, i64 0, i64 0), i8* noundef %17) #9
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %cleanup, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %18 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_prime, align 8, !tbaa !5
  %call53 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %18) #9
  store %struct.ossl_param_st* %call53, %struct.ossl_param_st** @ec_explicit_prime_params_explicit, align 8, !tbaa !5
  %19 = bitcast %struct.ossl_param_st* %call53 to i8*
  %call54 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1321, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.36, i64 0, i64 0), i8* noundef %19) #9
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %cleanup, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %call57 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #9
  store %struct.ossl_param_bld_st* %call57, %struct.ossl_param_bld_st** @bld_tri_nc, align 8, !tbaa !5
  %20 = bitcast %struct.ossl_param_bld_st* %call57 to i8*
  %call58 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1323, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i64 0, i64 0), i8* noundef %20) #9
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %call61 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #9
  store %struct.ossl_param_bld_st* %call61, %struct.ossl_param_bld_st** @bld_tri, align 8, !tbaa !5
  %21 = bitcast %struct.ossl_param_bld_st* %call61 to i8*
  %call62 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1324, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i8* noundef %21) #9
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %lor.lhs.false60
  %22 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_tri_nc, align 8, !tbaa !5
  %call65 = tail call fastcc i32 @create_ec_explicit_trinomial_params_namedcurve(%struct.ossl_param_bld_st* noundef %22) #11
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %cleanup, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false64
  %23 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_tri, align 8, !tbaa !5
  %call68 = tail call fastcc i32 @create_ec_explicit_trinomial_params(%struct.ossl_param_bld_st* noundef %23) #11
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %cleanup, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false67
  %24 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_tri_nc, align 8, !tbaa !5
  %call71 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %24) #9
  store %struct.ossl_param_st* %call71, %struct.ossl_param_st** @ec_explicit_tri_params_nc, align 8, !tbaa !5
  %25 = bitcast %struct.ossl_param_st* %call71 to i8*
  %call72 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1327, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.39, i64 0, i64 0), i8* noundef %25) #9
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %cleanup, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false70
  %26 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_tri, align 8, !tbaa !5
  %call75 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %26) #9
  store %struct.ossl_param_st* %call75, %struct.ossl_param_st** @ec_explicit_tri_params_explicit, align 8, !tbaa !5
  %27 = bitcast %struct.ossl_param_st* %call75 to i8*
  %call76 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1328, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.40, i64 0, i64 0), i8* noundef %27) #9
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup, label %if.end79

if.end79:                                         ; preds = %lor.lhs.false74
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1334, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1337, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0)) #9
  %call81 = tail call fastcc %struct.evp_pkey_st* @make_template(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct.ossl_param_st* noundef null) #11
  store %struct.evp_pkey_st* %call81, %struct.evp_pkey_st** @template_DH, align 8, !tbaa !5
  %28 = bitcast %struct.evp_pkey_st* %call81 to i8*
  %call82 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1338, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.43, i64 0, i64 0), i8* noundef %28) #9
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %land.end107.critedge241, label %land.rhs

land.rhs:                                         ; preds = %if.end79
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_DH, align 8, !tbaa !5
  %call84 = tail call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct.evp_pkey_st* noundef %29) #11
  store %struct.evp_pkey_st* %call84, %struct.evp_pkey_st** @key_DH, align 8, !tbaa !5
  %30 = bitcast %struct.evp_pkey_st* %call84 to i8*
  %call85 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1338, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i64 0, i64 0), i8* noundef %30) #9
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.end107.critedge240, label %land.lhs.true88

land.lhs.true88:                                  ; preds = %land.rhs
  %call89 = tail call fastcc %struct.evp_pkey_st* @make_template(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), %struct.ossl_param_st* noundef null) #11
  store %struct.evp_pkey_st* %call89, %struct.evp_pkey_st** @template_DHX, align 8, !tbaa !5
  %31 = bitcast %struct.evp_pkey_st* %call89 to i8*
  %call90 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1339, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.46, i64 0, i64 0), i8* noundef %31) #9
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %land.end107.critedge, label %land.rhs92

land.rhs92:                                       ; preds = %land.lhs.true88
  %32 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_DHX, align 8, !tbaa !5
  %call93 = tail call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), %struct.evp_pkey_st* noundef %32) #11
  store %struct.evp_pkey_st* %call93, %struct.evp_pkey_st** @key_DHX, align 8, !tbaa !5
  %33 = bitcast %struct.evp_pkey_st* %call93 to i8*
  %call94 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1339, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i8* noundef %33) #9
  %tobool95.not = icmp eq i32 %call94, 0
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1342, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0)) #9
  br i1 %tobool95.not, label %land.end119.critedge242, label %land.lhs.true99

land.lhs.true99:                                  ; preds = %land.rhs92
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %DSA_params, i64 0, i64 0
  %call100 = call fastcc %struct.evp_pkey_st* @make_template(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.ossl_param_st* noundef nonnull %arraydecay) #11
  store %struct.evp_pkey_st* %call100, %struct.evp_pkey_st** @template_DSA, align 8, !tbaa !5
  %34 = bitcast %struct.evp_pkey_st* %call100 to i8*
  %call101 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1343, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.50, i64 0, i64 0), i8* noundef %34) #9
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %land.end119.critedge, label %land.rhs103

land.rhs103:                                      ; preds = %land.lhs.true99
  %35 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_DSA, align 8, !tbaa !5
  %call104 = call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %35) #11
  store %struct.evp_pkey_st* %call104, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %36 = bitcast %struct.evp_pkey_st* %call104 to i8*
  %call105 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1343, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.52, i64 0, i64 0), i8* noundef %36) #9
  %tobool106.not = icmp eq i32 %call105, 0
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1346, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0)) #9
  br i1 %tobool106.not, label %land.end198.critedge361, label %land.lhs.true110

land.end107.critedge:                             ; preds = %land.lhs.true88
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1342, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1346, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end107.critedge240:                          ; preds = %land.rhs
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1342, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1346, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end107.critedge241:                          ; preds = %if.end79
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1342, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1346, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.lhs.true110:                                 ; preds = %land.rhs103
  %arraydecay111 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %EC_params, i64 0, i64 0
  %call112 = call fastcc %struct.evp_pkey_st* @make_template(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.ossl_param_st* noundef nonnull %arraydecay111) #11
  store %struct.evp_pkey_st* %call112, %struct.evp_pkey_st** @template_EC, align 8, !tbaa !5
  %37 = bitcast %struct.evp_pkey_st* %call112 to i8*
  %call113 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1347, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.54, i64 0, i64 0), i8* noundef %37) #9
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.end198.critedge360, label %land.rhs115

land.rhs115:                                      ; preds = %land.lhs.true110
  %38 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_EC, align 8, !tbaa !5
  %call116 = call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %38) #11
  store %struct.evp_pkey_st* %call116, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  %39 = bitcast %struct.evp_pkey_st* %call116 to i8*
  %call117 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1347, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.56, i64 0, i64 0), i8* noundef %39) #9
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %land.end198.critedge359, label %land.lhs.true122

land.end119.critedge:                             ; preds = %land.lhs.true99
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1346, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end119.critedge242:                          ; preds = %land.rhs92
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1346, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.lhs.true122:                                 ; preds = %land.rhs115
  %40 = load %struct.ossl_param_st*, %struct.ossl_param_st** @ec_explicit_prime_params_nc, align 8, !tbaa !5
  %call123 = call fastcc %struct.evp_pkey_st* @make_template(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.ossl_param_st* noundef %40) #11
  store %struct.evp_pkey_st* %call123, %struct.evp_pkey_st** @template_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  %41 = bitcast %struct.evp_pkey_st* %call123 to i8*
  %call124 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1348, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.57, i64 0, i64 0), i8* noundef %41) #9
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %land.end198.critedge358, label %land.rhs126

land.rhs126:                                      ; preds = %land.lhs.true122
  %42 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  %call127 = call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %42) #11
  store %struct.evp_pkey_st* %call127, %struct.evp_pkey_st** @key_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  %43 = bitcast %struct.evp_pkey_st* %call127 to i8*
  %call128 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1348, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.58, i64 0, i64 0), i8* noundef %43) #9
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %land.end198.critedge357, label %land.lhs.true133

land.lhs.true133:                                 ; preds = %land.rhs126
  %44 = load %struct.ossl_param_st*, %struct.ossl_param_st** @ec_explicit_prime_params_explicit, align 8, !tbaa !5
  %call134 = call fastcc %struct.evp_pkey_st* @make_template(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.ossl_param_st* noundef %44) #11
  store %struct.evp_pkey_st* %call134, %struct.evp_pkey_st** @template_ECExplicitPrime2G, align 8, !tbaa !5
  %45 = bitcast %struct.evp_pkey_st* %call134 to i8*
  %call135 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1349, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.59, i64 0, i64 0), i8* noundef %45) #9
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %land.end198.critedge356, label %land.rhs137

land.rhs137:                                      ; preds = %land.lhs.true133
  %46 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_ECExplicitPrime2G, align 8, !tbaa !5
  %call138 = call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %46) #11
  store %struct.evp_pkey_st* %call138, %struct.evp_pkey_st** @key_ECExplicitPrime2G, align 8, !tbaa !5
  %47 = bitcast %struct.evp_pkey_st* %call138 to i8*
  %call139 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1349, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.60, i64 0, i64 0), i8* noundef %47) #9
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %land.end198.critedge355, label %land.lhs.true144

land.lhs.true144:                                 ; preds = %land.rhs137
  %48 = load %struct.ossl_param_st*, %struct.ossl_param_st** @ec_explicit_tri_params_nc, align 8, !tbaa !5
  %call145 = call fastcc %struct.evp_pkey_st* @make_template(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.ossl_param_st* noundef %48) #11
  store %struct.evp_pkey_st* %call145, %struct.evp_pkey_st** @template_ECExplicitTriNamedCurve, align 8, !tbaa !5
  %49 = bitcast %struct.evp_pkey_st* %call145 to i8*
  %call146 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1351, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.61, i64 0, i64 0), i8* noundef %49) #9
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %land.end198.critedge354, label %land.rhs148

land.rhs148:                                      ; preds = %land.lhs.true144
  %50 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_ECExplicitTriNamedCurve, align 8, !tbaa !5
  %call149 = call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %50) #11
  store %struct.evp_pkey_st* %call149, %struct.evp_pkey_st** @key_ECExplicitTriNamedCurve, align 8, !tbaa !5
  %51 = bitcast %struct.evp_pkey_st* %call149 to i8*
  %call150 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1351, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.62, i64 0, i64 0), i8* noundef %51) #9
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %land.end198.critedge353, label %land.lhs.true155

land.lhs.true155:                                 ; preds = %land.rhs148
  %52 = load %struct.ossl_param_st*, %struct.ossl_param_st** @ec_explicit_tri_params_explicit, align 8, !tbaa !5
  %call156 = call fastcc %struct.evp_pkey_st* @make_template(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.ossl_param_st* noundef %52) #11
  store %struct.evp_pkey_st* %call156, %struct.evp_pkey_st** @template_ECExplicitTri2G, align 8, !tbaa !5
  %53 = bitcast %struct.evp_pkey_st* %call156 to i8*
  %call157 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1352, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.63, i64 0, i64 0), i8* noundef %53) #9
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %land.end198.critedge352, label %land.rhs159

land.rhs159:                                      ; preds = %land.lhs.true155
  %54 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_ECExplicitTri2G, align 8, !tbaa !5
  %call160 = call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %54) #11
  store %struct.evp_pkey_st* %call160, %struct.evp_pkey_st** @key_ECExplicitTri2G, align 8, !tbaa !5
  %55 = bitcast %struct.evp_pkey_st* %call160 to i8*
  %call161 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1352, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.64, i64 0, i64 0), i8* noundef %55) #9
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %land.end198.critedge351, label %land.rhs166

land.rhs166:                                      ; preds = %land.rhs159
  %call167 = call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), %struct.evp_pkey_st* noundef null) #11
  store %struct.evp_pkey_st* %call167, %struct.evp_pkey_st** @key_ED25519, align 8, !tbaa !5
  %56 = bitcast %struct.evp_pkey_st* %call167 to i8*
  %call168 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1354, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.65, i64 0, i64 0), i8* noundef %56) #9
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %land.end198.critedge350, label %land.rhs173

land.rhs173:                                      ; preds = %land.rhs166
  %call174 = call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), %struct.evp_pkey_st* noundef null) #11
  store %struct.evp_pkey_st* %call174, %struct.evp_pkey_st** @key_ED448, align 8, !tbaa !5
  %57 = bitcast %struct.evp_pkey_st* %call174 to i8*
  %call175 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1355, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.67, i64 0, i64 0), i8* noundef %57) #9
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %land.end198.critedge349, label %land.rhs180

land.rhs180:                                      ; preds = %land.rhs173
  %call181 = call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), %struct.evp_pkey_st* noundef null) #11
  store %struct.evp_pkey_st* %call181, %struct.evp_pkey_st** @key_X25519, align 8, !tbaa !5
  %58 = bitcast %struct.evp_pkey_st* %call181 to i8*
  %call182 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1356, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.69, i64 0, i64 0), i8* noundef %58) #9
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %land.end198.critedge, label %land.rhs187

land.rhs187:                                      ; preds = %land.rhs180
  %call188 = call fastcc %struct.evp_pkey_st* @make_key(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), %struct.evp_pkey_st* noundef null) #11
  store %struct.evp_pkey_st* %call188, %struct.evp_pkey_st** @key_X448, align 8, !tbaa !5
  %59 = bitcast %struct.evp_pkey_st* %call188 to i8*
  %call189 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1357, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.71, i64 0, i64 0), i8* noundef %59) #9
  %tobool190.not = icmp eq i32 %call189, 0
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  br i1 %tobool190.not, label %land.end205.critedge, label %land.rhs194

land.rhs194:                                      ; preds = %land.rhs187
  %60 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @keyctx, align 8, !tbaa !5
  %call195 = call %struct.evp_pkey_st* @load_pkey_pem(i8* noundef %rsa_file.0, %struct.ossl_lib_ctx_st* noundef %60) #9
  store %struct.evp_pkey_st* %call195, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %61 = bitcast %struct.evp_pkey_st* %call195 to i8*
  %call196 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1360, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i64 0, i64 0), i8* noundef %61) #9
  %tobool197.not = icmp eq i32 %call196, 0
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  br i1 %tobool197.not, label %if.end209.critedge, label %land.rhs201

land.end198.critedge:                             ; preds = %land.rhs180
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge349:                          ; preds = %land.rhs173
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge350:                          ; preds = %land.rhs166
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge351:                          ; preds = %land.rhs159
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge352:                          ; preds = %land.lhs.true155
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge353:                          ; preds = %land.rhs148
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge354:                          ; preds = %land.lhs.true144
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge355:                          ; preds = %land.rhs137
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge356:                          ; preds = %land.lhs.true133
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge357:                          ; preds = %land.rhs126
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge358:                          ; preds = %land.lhs.true122
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge359:                          ; preds = %land.rhs115
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge360:                          ; preds = %land.lhs.true110
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.end198.critedge361:                          ; preds = %land.rhs103
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1359, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.73, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

land.rhs201:                                      ; preds = %land.rhs194
  %62 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @keyctx, align 8, !tbaa !5
  %call202 = call %struct.evp_pkey_st* @load_pkey_pem(i8* noundef %rsa_pss_file.0, %struct.ossl_lib_ctx_st* noundef %62) #9
  store %struct.evp_pkey_st* %call202, %struct.evp_pkey_st** @key_RSA_PSS, align 8, !tbaa !5
  %63 = bitcast %struct.evp_pkey_st* %call202 to i8*
  %call203 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1362, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.76, i64 0, i64 0), i8* noundef %63) #9
  %tobool204.not = icmp eq i32 %call203, 0
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br i1 %tobool204.not, label %cleanup, label %if.then208

land.end205.critedge:                             ; preds = %land.rhs187
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1361, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0)) #9
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

if.then208:                                       ; preds = %land.rhs201
  call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_DH_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.79, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_DH_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_DH_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_DH_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i64 0, i64 0), i32 ()* noundef nonnull @test_public_DH_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.83, i64 0, i64 0), i32 ()* noundef nonnull @test_public_DH_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84, i64 0, i64 0), i32 ()* noundef nonnull @test_params_DH_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.85, i64 0, i64 0), i32 ()* noundef nonnull @test_params_DH_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.86, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_DHX_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_DHX_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_DHX_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_DHX_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.90, i64 0, i64 0), i32 ()* noundef nonnull @test_public_DHX_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.91, i64 0, i64 0), i32 ()* noundef nonnull @test_public_DHX_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.92, i64 0, i64 0), i32 ()* noundef nonnull @test_params_DHX_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0), i32 ()* noundef nonnull @test_params_DHX_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.94, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_DSA_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.95, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_DSA_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.96, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_DSA_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.97, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_DSA_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.98, i64 0, i64 0), i32 ()* noundef nonnull @test_public_DSA_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.99, i64 0, i64 0), i32 ()* noundef nonnull @test_public_DSA_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.100, i64 0, i64 0), i32 ()* noundef nonnull @test_params_DSA_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.101, i64 0, i64 0), i32 ()* noundef nonnull @test_params_DSA_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_DSA_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.103, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_DSA_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.104, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_DSA_via_MSBLOB) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.105, i64 0, i64 0), i32 ()* noundef nonnull @test_public_DSA_via_MSBLOB) #9
  call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_DSA_via_PVK) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.107, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_DSA_via_PVK) #9
  call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.108, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_EC_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.109, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_EC_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.110, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_EC_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_EC_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.112, i64 0, i64 0), i32 ()* noundef nonnull @test_public_EC_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.113, i64 0, i64 0), i32 ()* noundef nonnull @test_public_EC_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.114, i64 0, i64 0), i32 ()* noundef nonnull @test_params_EC_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.115, i64 0, i64 0), i32 ()* noundef nonnull @test_params_EC_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.116, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_EC_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.117, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_EC_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.118, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitPrimeNamedCurve_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.119, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitPrimeNamedCurve_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.120, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitPrimeNamedCurve_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.121, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitPrimeNamedCurve_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.122, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ECExplicitPrimeNamedCurve_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.123, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ECExplicitPrimeNamedCurve_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.124, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitPrimeNamedCurve_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.125, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitPrimeNamedCurve_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.126, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitPrime2G_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.127, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitPrime2G_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.128, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitPrime2G_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.129, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitPrime2G_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.130, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ECExplicitPrime2G_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.131, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ECExplicitPrime2G_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.132, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitPrime2G_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.133, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitPrime2G_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.134, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitTriNamedCurve_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.135, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitTriNamedCurve_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.136, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitTriNamedCurve_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.137, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitTriNamedCurve_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.138, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ECExplicitTriNamedCurve_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.139, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ECExplicitTriNamedCurve_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.140, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitTriNamedCurve_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.141, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitTriNamedCurve_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.142, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitTri2G_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.143, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitTri2G_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.144, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitTri2G_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.145, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitTri2G_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.146, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ECExplicitTri2G_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ECExplicitTri2G_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.148, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ECExplicitTri2G_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.149, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ECExplicitTri2G_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.150, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ED25519_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.151, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ED25519_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.152, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ED25519_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.153, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ED25519_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.154, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ED25519_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.155, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ED25519_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.156, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ED448_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.157, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_ED448_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.158, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ED448_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.159, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_ED448_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.160, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ED448_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.161, i64 0, i64 0), i32 ()* noundef nonnull @test_public_ED448_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.162, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_X25519_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.163, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_X25519_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.164, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_X25519_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.165, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_X25519_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.166, i64 0, i64 0), i32 ()* noundef nonnull @test_public_X25519_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.167, i64 0, i64 0), i32 ()* noundef nonnull @test_public_X25519_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.168, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_X448_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.169, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_X448_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.170, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_X448_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.171, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_X448_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.172, i64 0, i64 0), i32 ()* noundef nonnull @test_public_X448_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.173, i64 0, i64 0), i32 ()* noundef nonnull @test_public_X448_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.174, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_RSA_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.175, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_RSA_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.176, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_RSA_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.177, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_RSA_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.178, i64 0, i64 0), i32 ()* noundef nonnull @test_public_RSA_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.179, i64 0, i64 0), i32 ()* noundef nonnull @test_public_RSA_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.180, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_RSA_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.181, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_RSA_via_legacy_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.182, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_RSA_PSS_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.183, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_RSA_PSS_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.184, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_RSA_PSS_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.185, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_RSA_PSS_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.186, i64 0, i64 0), i32 ()* noundef nonnull @test_public_RSA_PSS_via_DER) #9
  call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.187, i64 0, i64 0), i32 ()* noundef nonnull @test_public_RSA_PSS_via_PEM) #9
  call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.188, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_RSA_via_MSBLOB) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.189, i64 0, i64 0), i32 ()* noundef nonnull @test_public_RSA_via_MSBLOB) #9
  call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.190, i64 0, i64 0), i32 ()* noundef nonnull @test_unprotected_RSA_via_PVK) #9
  call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.191, i64 0, i64 0), i32 ()* noundef nonnull @test_protected_RSA_via_PVK) #9
  br label %cleanup

if.end209.critedge:                               ; preds = %land.rhs194
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1363, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.77, i64 0, i64 0)) #9
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %land.rhs201, %if.then208, %if.end209.critedge, %land.end205.critedge, %land.end198.critedge, %land.end119.critedge, %land.end119.critedge242, %land.end107.critedge, %land.end107.critedge240, %land.end107.critedge241, %land.end198.critedge349, %land.end198.critedge350, %land.end198.critedge351, %land.end198.critedge352, %land.end198.critedge353, %land.end198.critedge354, %land.end198.critedge355, %land.end198.critedge356, %land.end198.critedge357, %land.end198.critedge358, %land.end198.critedge359, %land.end198.critedge360, %land.end198.critedge361, %if.end31, %lor.lhs.false, %lor.lhs.false38, %lor.lhs.false42, %lor.lhs.false45, %lor.lhs.false48, %lor.lhs.false52, %lor.lhs.false56, %lor.lhs.false60, %lor.lhs.false64, %lor.lhs.false67, %lor.lhs.false70, %lor.lhs.false74, %if.end26, %if.end21, %if.else, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 0, %if.else ], [ 0, %if.end21 ], [ 0, %if.end26 ], [ 0, %lor.lhs.false74 ], [ 0, %lor.lhs.false70 ], [ 0, %lor.lhs.false67 ], [ 0, %lor.lhs.false64 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false56 ], [ 0, %lor.lhs.false52 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false ], [ 0, %if.end31 ], [ 1, %land.end198.critedge361 ], [ 1, %land.end198.critedge360 ], [ 1, %land.end198.critedge359 ], [ 1, %land.end198.critedge358 ], [ 1, %land.end198.critedge357 ], [ 1, %land.end198.critedge356 ], [ 1, %land.end198.critedge355 ], [ 1, %land.end198.critedge354 ], [ 1, %land.end198.critedge353 ], [ 1, %land.end198.critedge352 ], [ 1, %land.end198.critedge351 ], [ 1, %land.end198.critedge350 ], [ 1, %land.end198.critedge349 ], [ 1, %land.end107.critedge241 ], [ 1, %land.end107.critedge240 ], [ 1, %land.end107.critedge ], [ 1, %land.end119.critedge242 ], [ 1, %land.end119.critedge ], [ 1, %land.end198.critedge ], [ 1, %land.end205.critedge ], [ 1, %if.end209.critedge ], [ 1, %if.then208 ], [ 1, %land.rhs201 ], [ 0, %while.cond ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @opt_next() local_unnamed_addr #5

declare dso_local i8* @opt_arg() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #6

declare dso_local i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef, %struct.ossl_provider_st** noundef, i8* noundef, %struct.ossl_provider_st** noundef, i8* noundef) local_unnamed_addr #5

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #5

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #5

declare dso_local %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @create_ec_explicit_prime_params_namedcurve(%struct.ossl_param_bld_st* noundef %bld) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @do_create_ec_explicit_prime_params(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @create_ec_explicit_prime_params_namedcurve.prime256v1_gen, i64 0, i64 0)) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @create_ec_explicit_prime_params(%struct.ossl_param_bld_st* noundef %bld) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @do_create_ec_explicit_prime_params(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @create_ec_explicit_prime_params.prime256v1_gen2, i64 0, i64 0)) #11
  ret i32 %call
}

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @create_ec_explicit_trinomial_params_namedcurve(%struct.ossl_param_bld_st* noundef %bld) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @do_create_ec_explicit_trinomial_params(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @create_ec_explicit_trinomial_params_namedcurve.gen, i64 0, i64 0)) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @create_ec_explicit_trinomial_params(%struct.ossl_param_bld_st* noundef %bld) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @do_create_ec_explicit_trinomial_params(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @create_ec_explicit_trinomial_params.gen2, i64 0, i64 0)) #11
  ret i32 %call
}

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @make_template(i8* noundef %type, %struct.ossl_param_st* noundef %genparams) unnamed_addr #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0)) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @keyctx, align 8, !tbaa !5
  %call1 = tail call %struct.evp_pkey_st* @get_dh512(%struct.ossl_lib_ctx_st* noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0)) #10
  %cmp3 = icmp eq i32 %call2, 0
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @keyctx, align 8, !tbaa !5
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = tail call %struct.evp_pkey_st* @get_dhx512(%struct.ossl_lib_ctx_st* noundef %2) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef %type, i8* noundef null) #9
  %cmp8.not = icmp eq %struct.evp_pkey_ctx_st* %call7, null
  br i1 %cmp8.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %call9 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call7) #9
  %cmp10 = icmp sgt i32 %call9, 0
  br i1 %cmp10, label %land.lhs.true11, label %land.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %cmp12 = icmp eq %struct.ossl_param_st* %genparams, null
  br i1 %cmp12, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true11
  %call13 = tail call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %call7, %struct.ossl_param_st* noundef nonnull %genparams) #9
  %cmp14 = icmp sgt i32 %call13, 0
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true11
  %call15 = call i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef nonnull %call7, %struct.evp_pkey_st** noundef nonnull %pkey) #9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %land.lhs.true, %if.end6
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call7) #9
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then4, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ %call1, %if.then ], [ %call5, %if.then4 ], [ %3, %land.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @make_key(i8* noundef %type, %struct.evp_pkey_st* noundef %template) unnamed_addr #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %cmp.not = icmp eq %struct.evp_pkey_st* %template, null
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @keyctx, align 8, !tbaa !5
  br i1 %cmp.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %1, %struct.evp_pkey_st* noundef nonnull %template, i8* noundef null) #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef %type, i8* noundef null) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.evp_pkey_ctx_st* [ %call, %cond.true ], [ %call1, %cond.false ]
  %cmp2.not = icmp eq %struct.evp_pkey_ctx_st* %cond, null
  br i1 %cmp2.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %call3 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %cond) #9
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call9 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %cond, %struct.evp_pkey_st** noundef nonnull %pkey) #9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %cond.end
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %cond) #9
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.evp_pkey_st* %2
}

declare dso_local %struct.evp_pkey_st* @load_pkey_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #5

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_DH_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DH, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_DH_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DH, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_DH_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DH, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_DH_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DH, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_DH_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DH, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_DH_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DH, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_params_DH_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DH, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_params_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_params_DH_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DH, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_params_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_DHX_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DHX, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_DHX_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DHX, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_DHX_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DHX, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_DHX_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DHX, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_DHX_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DHX, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_DHX_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DHX, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_params_DHX_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DHX, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_params_via_DER(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_params_DHX_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DHX, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_params_via_PEM(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_DSA_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_DSA_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_DSA_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_DSA_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_DSA_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_DSA_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_params_DSA_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_params_via_DER(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_params_DSA_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_params_via_PEM(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_DSA_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_legacy_PEM(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_DSA_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_legacy_PEM(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_DSA_via_MSBLOB() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_MSBLOB(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_DSA_via_MSBLOB() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_MSBLOB(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_DSA_via_PVK() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PVK(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_DSA_via_PVK() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PVK(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_EC_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_EC_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_EC_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_EC_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_EC_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_EC_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_params_EC_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_params_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_params_EC_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_params_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_EC_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_legacy_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_EC_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_legacy_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitPrimeNamedCurve_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitPrimeNamedCurve_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitPrimeNamedCurve_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitPrimeNamedCurve_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ECExplicitPrimeNamedCurve_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ECExplicitPrimeNamedCurve_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitPrimeNamedCurve_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_legacy_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitPrimeNamedCurve_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_legacy_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitPrime2G_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrime2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitPrime2G_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrime2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitPrime2G_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrime2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitPrime2G_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrime2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ECExplicitPrime2G_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrime2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ECExplicitPrime2G_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrime2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitPrime2G_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrime2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_legacy_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitPrime2G_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrime2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_legacy_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitTriNamedCurve_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTriNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitTriNamedCurve_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTriNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitTriNamedCurve_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTriNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitTriNamedCurve_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTriNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ECExplicitTriNamedCurve_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTriNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ECExplicitTriNamedCurve_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTriNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitTriNamedCurve_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTriNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_legacy_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitTriNamedCurve_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTriNamedCurve, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_legacy_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitTri2G_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTri2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitTri2G_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTri2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitTri2G_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTri2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitTri2G_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTri2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ECExplicitTri2G_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTri2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ECExplicitTri2G_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTri2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ECExplicitTri2G_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTri2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_legacy_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ECExplicitTri2G_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTri2G, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_legacy_PEM(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ED25519_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ED25519_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ED25519_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ED25519_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ED25519_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ED25519_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ED448_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_ED448_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ED448_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_ED448_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ED448_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_ED448_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_X25519_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_X25519_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_X25519_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_X25519_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_X25519_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_X25519_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X25519, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_X448_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_X448_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_X448_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_X448_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_X448_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_X448_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X448, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_RSA_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_RSA_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_RSA_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_RSA_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_RSA_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_RSA_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_RSA_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_legacy_PEM(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_RSA_via_legacy_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_legacy_PEM(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_RSA_PSS_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA_PSS, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_DER(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.287, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_RSA_PSS_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA_PSS, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PEM(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.287, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_RSA_PSS_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA_PSS, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_DER(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.287, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_RSA_PSS_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA_PSS, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PEM(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.287, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_RSA_PSS_via_DER() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA_PSS, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_DER(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.287, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_RSA_PSS_via_PEM() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA_PSS, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_PEM(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.287, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_RSA_via_MSBLOB() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_MSBLOB(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_public_RSA_via_MSBLOB() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_public_via_MSBLOB(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_unprotected_RSA_via_PVK() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_unprotected_via_PVK(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_protected_RSA_via_PVK() #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  %call = tail call fastcc i32 @test_protected_via_PVK(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.286, i64 0, i64 0), %struct.evp_pkey_st* noundef %0) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.ossl_param_st*, %struct.ossl_param_st** @ec_explicit_prime_params_nc, align 8, !tbaa !5
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %0) #9
  %1 = load %struct.ossl_param_st*, %struct.ossl_param_st** @ec_explicit_prime_params_explicit, align 8, !tbaa !5
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %1) #9
  %2 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_prime_nc, align 8, !tbaa !5
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %2) #9
  %3 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_prime, align 8, !tbaa !5
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %3) #9
  %4 = load %struct.ossl_param_st*, %struct.ossl_param_st** @ec_explicit_tri_params_nc, align 8, !tbaa !5
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %4) #9
  %5 = load %struct.ossl_param_st*, %struct.ossl_param_st** @ec_explicit_tri_params_explicit, align 8, !tbaa !5
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %5) #9
  %6 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_tri_nc, align 8, !tbaa !5
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %6) #9
  %7 = load %struct.ossl_param_bld_st*, %struct.ossl_param_bld_st** @bld_tri, align 8, !tbaa !5
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %7) #9
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @bnctx, align 8, !tbaa !5
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %8) #9
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_DH, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %9) #9
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DH, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %10) #9
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_DHX, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %11) #9
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DHX, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %12) #9
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_DSA, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %13) #9
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_DSA, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %14) #9
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_EC, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %15) #9
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_EC, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %16) #9
  %17 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %17) #9
  %18 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrimeNamedCurve, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %18) #9
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_ECExplicitPrime2G, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %19) #9
  %20 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitPrime2G, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %20) #9
  %21 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_ECExplicitTriNamedCurve, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %21) #9
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTriNamedCurve, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %22) #9
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @template_ECExplicitTri2G, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %23) #9
  %24 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ECExplicitTri2G, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %24) #9
  %25 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED25519, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %25) #9
  %26 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_ED448, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %26) #9
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X25519, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %27) #9
  %28 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_X448, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %28) #9
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %29) #9
  %30 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** @key_RSA_PSS, align 8, !tbaa !5
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %30) #9
  %31 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %call = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %31) #9
  %32 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @deflprov, align 8, !tbaa !5
  %call1 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %32) #9
  %33 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @keyprov, align 8, !tbaa !5
  %call2 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %33) #9
  %34 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %34) #9
  %35 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @keyctx, align 8, !tbaa !5
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %35) #9
  ret void
}

declare dso_local void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #5

declare dso_local void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #5

declare dso_local void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #5

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #5

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #5

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_create_ec_explicit_prime_params(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %gen) unnamed_addr #1 {
entry:
  %0 = load %struct.bignum_ctx*, %struct.bignum_ctx** @bnctx, align 8, !tbaa !5
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %0) #9
  %1 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1072, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.192, i64 0, i64 0), i8* noundef %1) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.bignum_ctx*, %struct.bignum_ctx** @bnctx, align 8, !tbaa !5
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %2) #9
  %3 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1073, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.193, i64 0, i64 0), i8* noundef %3) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %4 = load %struct.bignum_ctx*, %struct.bignum_ctx** @bnctx, align 8, !tbaa !5
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %4) #9
  %5 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1074, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.194, i64 0, i64 0), i8* noundef %5) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %6 = load %struct.bignum_ctx*, %struct.bignum_ctx** @bnctx, align 8, !tbaa !5
  %call10 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %6) #9
  %7 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1075, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.195, i64 0, i64 0), i8* noundef %7) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @do_create_ec_explicit_prime_params.prime_data, i64 0, i64 0), i32 noundef 33, %struct.bignum_st* noundef %call6) #9
  %8 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1076, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.196, i64 0, i64 0), i8* noundef %8) #9
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @do_create_ec_explicit_prime_params.a_data, i64 0, i64 0), i32 noundef 33, %struct.bignum_st* noundef %call) #9
  %9 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1077, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.197, i64 0, i64 0), i8* noundef %9) #9
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %call22 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @do_create_ec_explicit_prime_params.b_data, i64 0, i64 0), i32 noundef 32, %struct.bignum_st* noundef %call2) #9
  %10 = bitcast %struct.bignum_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1078, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.198, i64 0, i64 0), i8* noundef %10) #9
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.end, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %call26 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @do_create_ec_explicit_prime_params.order_data, i64 0, i64 0), i32 noundef 33, %struct.bignum_st* noundef %call10) #9
  %11 = bitcast %struct.bignum_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1079, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.199, i64 0, i64 0), i8* noundef %11) #9
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.end, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %call30 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.201, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.202, i64 0, i64 0), i64 noundef 0) #9
  %cmp = icmp ne i32 %call30, 0
  %conv = zext i1 %cmp to i32
  %call31 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1082, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.200, i64 0, i64 0), i32 noundef %conv) #9
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.end, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %call34 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.204, i64 0, i64 0), %struct.bignum_st* noundef %call6) #9
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1083, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.203, i64 0, i64 0), i32 noundef %conv36) #9
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.end, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %land.lhs.true33
  %call40 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i64 0, i64 0), %struct.bignum_st* noundef %call) #9
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1084, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.205, i64 0, i64 0), i32 noundef %conv42) #9
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.end, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %land.lhs.true39
  %call46 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i64 0, i64 0), %struct.bignum_st* noundef %call2) #9
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1085, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.207, i64 0, i64 0), i32 noundef %conv48) #9
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.end, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %land.lhs.true45
  %call52 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.210, i64 0, i64 0), %struct.bignum_st* noundef %call10) #9
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1087, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.209, i64 0, i64 0), i32 noundef %conv54) #9
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.end, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %land.lhs.true51
  %call58 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i64 0, i64 0), i8* noundef %gen, i64 noundef 65) #9
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1089, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.211, i64 0, i64 0), i32 noundef %conv60) #9
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.end, label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true57
  %call64 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @do_create_ec_explicit_prime_params.seed, i64 0, i64 0), i64 noundef 20) #9
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1091, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.213, i64 0, i64 0), i32 noundef %conv66) #9
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true63
  %call69 = tail call %struct.bignum_st* @BN_value_one() #9
  %call70 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.215, i64 0, i64 0), %struct.bignum_st* noundef %call69) #9
  %cmp71 = icmp ne i32 %call70, 0
  %conv72 = zext i1 %cmp71 to i32
  %call73 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1093, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.214, i64 0, i64 0), i32 noundef %conv72) #9
  %tobool74 = icmp ne i32 %call73, 0
  %phi.cast = zext i1 %tobool74 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true63, %land.lhs.true57, %land.lhs.true51, %land.lhs.true45, %land.lhs.true39, %land.lhs.true33, %land.lhs.true29, %land.lhs.true25, %land.lhs.true21, %land.lhs.true17, %land.lhs.true13, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %12 = phi i32 [ 0, %land.lhs.true63 ], [ 0, %land.lhs.true57 ], [ 0, %land.lhs.true51 ], [ 0, %land.lhs.true45 ], [ 0, %land.lhs.true39 ], [ 0, %land.lhs.true33 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %12
}

declare dso_local %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef) local_unnamed_addr #5

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #5

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare dso_local i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #5

declare dso_local i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare dso_local %struct.bignum_st* @BN_value_one() local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_create_ec_explicit_trinomial_params(%struct.ossl_param_bld_st* noundef %bld, i8* noundef %gen) unnamed_addr #1 {
entry:
  %0 = load %struct.bignum_ctx*, %struct.bignum_ctx** @bnctx, align 8, !tbaa !5
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %0) #9
  %1 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1161, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.192, i64 0, i64 0), i8* noundef %1) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.bignum_ctx*, %struct.bignum_ctx** @bnctx, align 8, !tbaa !5
  %call2 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %2) #9
  %3 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1162, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.193, i64 0, i64 0), i8* noundef %3) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %4 = load %struct.bignum_ctx*, %struct.bignum_ctx** @bnctx, align 8, !tbaa !5
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %4) #9
  %5 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1163, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.216, i64 0, i64 0), i8* noundef %5) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %6 = load %struct.bignum_ctx*, %struct.bignum_ctx** @bnctx, align 8, !tbaa !5
  %call10 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %6) #9
  %7 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1164, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.195, i64 0, i64 0), i8* noundef %7) #9
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %8 = load %struct.bignum_ctx*, %struct.bignum_ctx** @bnctx, align 8, !tbaa !5
  %call14 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* noundef %8) #9
  %9 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1165, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.217, i64 0, i64 0), i8* noundef %9) #9
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @do_create_ec_explicit_trinomial_params.poly_data, i64 0, i64 0), i32 noundef 30, %struct.bignum_st* noundef %call6) #9
  %10 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1166, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.218, i64 0, i64 0), i8* noundef %10) #9
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %call22 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @do_create_ec_explicit_trinomial_params.a_data, i64 0, i64 0), i32 noundef 30, %struct.bignum_st* noundef %call) #9
  %11 = bitcast %struct.bignum_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1167, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.197, i64 0, i64 0), i8* noundef %11) #9
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.end, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %call26 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @do_create_ec_explicit_trinomial_params.b_data, i64 0, i64 0), i32 noundef 30, %struct.bignum_st* noundef %call2) #9
  %12 = bitcast %struct.bignum_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1168, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.198, i64 0, i64 0), i8* noundef %12) #9
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.end, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %call30 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @do_create_ec_explicit_trinomial_params.order_data, i64 0, i64 0), i32 noundef 30, %struct.bignum_st* noundef %call10) #9
  %13 = bitcast %struct.bignum_st* %call30 to i8*
  %call31 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1169, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.199, i64 0, i64 0), i8* noundef %13) #9
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.end, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %call34 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @do_create_ec_explicit_trinomial_params.cofactor_data, i64 0, i64 0), i32 noundef 1, %struct.bignum_st* noundef %call14) #9
  %14 = bitcast %struct.bignum_st* %call34 to i8*
  %call35 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1170, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.219, i64 0, i64 0), i8* noundef %14) #9
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.end, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true33
  %call38 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.201, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.221, i64 0, i64 0), i64 noundef 0) #9
  %cmp = icmp ne i32 %call38, 0
  %conv = zext i1 %cmp to i32
  %call39 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1173, i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.220, i64 0, i64 0), i32 noundef %conv) #9
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.end, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true37
  %call42 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.204, i64 0, i64 0), %struct.bignum_st* noundef %call6) #9
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1174, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.222, i64 0, i64 0), i32 noundef %conv44) #9
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.end, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true41
  %call48 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.206, i64 0, i64 0), %struct.bignum_st* noundef %call) #9
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1175, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.205, i64 0, i64 0), i32 noundef %conv50) #9
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.end, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %land.lhs.true47
  %call54 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.208, i64 0, i64 0), %struct.bignum_st* noundef %call2) #9
  %cmp55 = icmp ne i32 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1176, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.207, i64 0, i64 0), i32 noundef %conv56) #9
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.end, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %land.lhs.true53
  %call60 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.210, i64 0, i64 0), %struct.bignum_st* noundef %call10) #9
  %cmp61 = icmp ne i32 %call60, 0
  %conv62 = zext i1 %cmp61 to i32
  %call63 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1178, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.209, i64 0, i64 0), i32 noundef %conv62) #9
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.end, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %land.lhs.true59
  %call66 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.212, i64 0, i64 0), i8* noundef %gen, i64 noundef 61) #9
  %cmp67 = icmp ne i32 %call66, 0
  %conv68 = zext i1 %cmp67 to i32
  %call69 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1180, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.211, i64 0, i64 0), i32 noundef %conv68) #9
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true65
  %call71 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %bld, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.215, i64 0, i64 0), %struct.bignum_st* noundef %call14) #9
  %cmp72 = icmp ne i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1182, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.223, i64 0, i64 0), i32 noundef %conv73) #9
  %tobool75 = icmp ne i32 %call74, 0
  %phi.cast = zext i1 %tobool75 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true65, %land.lhs.true59, %land.lhs.true53, %land.lhs.true47, %land.lhs.true41, %land.lhs.true37, %land.lhs.true33, %land.lhs.true29, %land.lhs.true25, %land.lhs.true21, %land.lhs.true17, %land.lhs.true13, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %15 = phi i32 [ 0, %land.lhs.true65 ], [ 0, %land.lhs.true59 ], [ 0, %land.lhs.true53 ], [ 0, %land.lhs.true47 ], [ 0, %land.lhs.true41 ], [ 0, %land.lhs.true37 ], [ 0, %land.lhs.true33 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %15
}

declare dso_local %struct.evp_pkey_st* @get_dh512(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #5

declare dso_local %struct.evp_pkey_st* @get_dhx512(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #5

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #5

declare dso_local i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #5

declare dso_local i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #5

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #5

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #5

declare dso_local i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_unprotected_via_DER(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @test_encode_decode(i32 noundef 526, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 135, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.224, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.225, i64 0, i64 0), i8* noundef null, i8* noundef null, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_prov, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_mem, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_unprotected_PKCS8_DER, void (i8*, i8*, i64)* noundef nonnull @dump_der, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_encode_decode(i32 noundef %line, i8* noundef %type, %struct.evp_pkey_st* noundef %pkey, i32 noundef %selection, i8* noundef %output_type, i8* noundef %output_structure, i8* noundef %pass, i8* noundef %pcipher, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* nocapture noundef readonly %encode_cb, i32 (i8*, i32, i8*, i64, i8*, i64)* nocapture noundef readonly %test_cb, i32 (i8*, i32, i8*, i8*, i64)* nocapture noundef readonly %check_cb, void (i8*, i8*, i64)* nocapture noundef readonly %dump_cb, i32 noundef %flags) unnamed_addr #1 {
entry:
  %encoded = alloca i8*, align 8
  %encoded_len = alloca i64, align 8
  %pkey2 = alloca %struct.evp_pkey_st*, align 8
  %encoded2 = alloca i8*, align 8
  %encoded2_len = alloca i64, align 8
  %0 = bitcast i8** %encoded to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* null, i8** %encoded, align 8, !tbaa !5
  %1 = bitcast i64* %encoded_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store i64 0, i64* %encoded_len, align 8, !tbaa !9
  %2 = bitcast %struct.evp_pkey_st** %pkey2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !5
  %3 = bitcast i8** %encoded2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store i8* null, i8** %encoded2, align 8, !tbaa !5
  %4 = bitcast i64* %encoded2_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8
  store i64 0, i64* %encoded2_len, align 8, !tbaa !9
  %5 = bitcast %struct.evp_pkey_st* %pkey to i8*
  %call = call i32 %encode_cb(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef %line, i8** noundef nonnull %encoded, i64* noundef nonnull %encoded_len, i8* noundef %5, i32 noundef %selection, i8* noundef %output_type, i8* noundef %output_structure, i8* noundef %pass, i8* noundef %pcipher) #9, !callees !11
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.226, i64 0, i64 0), i32 noundef %conv) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8*, i8** %encoded, align 8, !tbaa !5
  %7 = load i64, i64* %encoded_len, align 8, !tbaa !9
  %call2 = call i32 %check_cb(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef %line, i8* noundef %type, i8* noundef %6, i64 noundef %7) #9
  %cmp3 = icmp ne i32 %call2, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.227, i64 0, i64 0), i32 noundef %conv4) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then44, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %8 = bitcast %struct.evp_pkey_st** %pkey2 to i8**
  %9 = load i8*, i8** %encoded, align 8, !tbaa !5
  %10 = load i64, i64* %encoded_len, align 8, !tbaa !9
  %and = and i32 %flags, 1
  %tobool8.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool8.not, i8* null, i8* %type
  %call9 = call fastcc i32 @decode_EVP_PKEY_prov(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef %line, i8** noundef nonnull %8, i8* noundef %9, i64 noundef %10, i8* noundef %output_type, i8* noundef %output_structure, i8* noundef %cond, i32 noundef %selection, i8* noundef %pass) #11
  %cmp10 = icmp ne i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([156 x i8], [156 x i8]* @.str.228, i64 0, i64 0), i32 noundef %conv11) #9
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then44, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false7
  %11 = load i8*, i8** %8, align 8, !tbaa !5
  %call15 = call i32 %encode_cb(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef %line, i8** noundef nonnull %encoded2, i64* noundef nonnull %encoded2_len, i8* noundef %11, i32 noundef %selection, i8* noundef %output_type, i8* noundef %output_structure, i8* noundef %pass, i8* noundef %pcipher) #9, !callees !11
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([112 x i8], [112 x i8]* @.str.229, i64 0, i64 0), i32 noundef %conv17) #9
  %tobool19.not = icmp eq i32 %call18, 0
  %12 = bitcast i8* %11 to %struct.evp_pkey_st*
  br i1 %tobool19.not, label %if.then44, label %if.end

if.end:                                           ; preds = %lor.lhs.false14
  %cmp20 = icmp eq i32 %selection, 4
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end
  %call23 = call i32 @EVP_PKEY_parameters_eq(%struct.evp_pkey_st* noundef %pkey, %struct.evp_pkey_st* noundef %12) #9
  %call24 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.230, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i64 0, i64 0), i32 noundef %call23, i32 noundef 1) #9
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then44, label %if.end33

if.else:                                          ; preds = %if.end
  %call28 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %pkey, %struct.evp_pkey_st* noundef %12) #9
  %call29 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.232, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i64 0, i64 0), i32 noundef %call28, i32 noundef 1) #9
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then44, label %if.end33

if.end33:                                         ; preds = %if.else, %if.then22
  %cmp34 = icmp eq i8* %pass, null
  %cmp36 = icmp eq i8* %pcipher, null
  %or.cond = and i1 %cmp34, %cmp36
  br i1 %or.cond, label %land.lhs.true38, label %if.end59

land.lhs.true38:                                  ; preds = %if.end33
  %13 = load i8*, i8** %encoded, align 8, !tbaa !5
  %14 = load i64, i64* %encoded_len, align 8, !tbaa !9
  %15 = load i8*, i8** %encoded2, align 8, !tbaa !5
  %16 = load i64, i64* %encoded2_len, align 8, !tbaa !9
  %call39 = call i32 %test_cb(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef %line, i8* noundef %13, i64 noundef %14, i8* noundef %15, i64 noundef %16) #9, !callees !12
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then44, label %if.end59

if.then44:                                        ; preds = %land.lhs.true38, %if.else, %if.then22, %entry, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false14
  %17 = load i8*, i8** %encoded, align 8, !tbaa !5
  %cmp45 = icmp ne i8* %17, null
  %18 = load i64, i64* %encoded_len, align 8
  %cmp48 = icmp ne i64 %18, 0
  %or.cond60 = select i1 %cmp45, i1 %cmp48, i1 false
  br i1 %or.cond60, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then44
  call void %dump_cb(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.233, i64 0, i64 0), i8* noundef nonnull %17, i64 noundef %18) #9, !callees !13
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then44
  %19 = load i8*, i8** %encoded2, align 8, !tbaa !5
  %cmp52 = icmp ne i8* %19, null
  %20 = load i64, i64* %encoded2_len, align 8
  %cmp55 = icmp ne i64 %20, 0
  %or.cond61 = select i1 %cmp52, i1 %cmp55, i1 false
  br i1 %or.cond61, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end51
  call void %dump_cb(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.234, i64 0, i64 0), i8* noundef nonnull %19, i64 noundef %20) #9, !callees !13
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true38, %if.end33, %if.end51, %if.then57
  %ok.03 = phi i32 [ 0, %if.end51 ], [ 0, %if.then57 ], [ 1, %if.end33 ], [ 1, %land.lhs.true38 ]
  %21 = load i8*, i8** %encoded, align 8, !tbaa !5
  call void @CRYPTO_free(i8* noundef %21, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 205) #9
  %22 = load i8*, i8** %encoded2, align 8, !tbaa !5
  call void @CRYPTO_free(i8* noundef %22, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 206) #9
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %23) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ok.03
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_EVP_PKEY_prov(i8* noundef %file, i32 noundef %line, i8** nocapture noundef writeonly %encoded, i64* nocapture noundef writeonly %encoded_len, i8* noundef %object, i32 noundef %selection, i8* noundef %output_type, i8* noundef %output_structure, i8* noundef %pass, i8* noundef %pcipher) #1 {
entry:
  %mem_buf = alloca %struct.buf_mem_st*, align 8
  %0 = bitcast i8* %object to %struct.evp_pkey_st*
  %1 = bitcast %struct.buf_mem_st** %mem_buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %call = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %0, i32 noundef %selection, i8* noundef %output_type, i8* noundef %output_structure, i8* noundef null) #9
  %2 = bitcast %struct.ossl_encoder_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.235, i64 0, i64 0), i8* noundef %2) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call) #9
  %call3 = tail call i32 @test_int_gt(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.236, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %cmp.not = icmp eq i8* %pass, null
  br i1 %cmp.not, label %lor.lhs.false11, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false5
  %call6 = tail call i64 @strlen(i8* noundef nonnull %pass) #10
  %call7 = tail call i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef %call, i8* noundef nonnull %pass, i64 noundef %call6) #9
  %cmp8 = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp8 to i32
  %call9 = tail call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.238, i64 0, i64 0), i32 noundef %conv) #9
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %end, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %land.lhs.true, %lor.lhs.false5
  %cmp12.not = icmp eq i8* %pcipher, null
  br i1 %cmp12.not, label %lor.lhs.false20, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %lor.lhs.false11
  %call15 = tail call i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef %call, i8* noundef nonnull %pcipher, i8* noundef null) #9
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = tail call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.239, i64 0, i64 0), i32 noundef %conv17) #9
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %end, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true14, %lor.lhs.false11
  %call21 = tail call %struct.bio_method_st* @BIO_s_mem() #9
  %call22 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call21) #9
  %3 = bitcast %struct.bio_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.240, i64 0, i64 0), i8* noundef %3) #9
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %end, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false20
  %call26 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call, %struct.bio_st* noundef %call22) #9
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.241, i64 0, i64 0), i32 noundef %conv28) #9
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %end, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %call32 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call22, i32 noundef 115, i64 noundef 0, i8* noundef nonnull %1) #9
  %cmp33 = icmp sgt i64 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call37 = call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.242, i64 0, i64 0), i32 noundef %conv34) #9
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %end, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false31
  %4 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %4, i64 0, i32 1
  %5 = load i8*, i8** %data, align 8, !tbaa !14
  store i8* %5, i8** %encoded, align 8, !tbaa !5
  %call40 = call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.243, i64 0, i64 0), i8* noundef %5) #9
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %end, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %6 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %6, i64 0, i32 0
  %7 = load i64, i64* %length, align 8, !tbaa !16
  store i64 %7, i64* %encoded_len, align 8, !tbaa !9
  %call43 = call i32 @test_long_gt(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.244, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i64 noundef %7, i64 noundef 0) #9
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false42
  %8 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %data45 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %8, i64 0, i32 1
  store i8* null, i8** %data45, align 8, !tbaa !14
  %length46 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %8, i64 0, i32 0
  store i64 0, i64* %length46, align 8, !tbaa !16
  br label %end

end:                                              ; preds = %entry, %lor.lhs.false, %land.lhs.true, %land.lhs.true14, %lor.lhs.false20, %lor.lhs.false25, %lor.lhs.false31, %lor.lhs.false39, %lor.lhs.false42, %if.end
  %mem_ser.0 = phi %struct.bio_st* [ %call22, %if.end ], [ %call22, %lor.lhs.false42 ], [ %call22, %lor.lhs.false39 ], [ %call22, %lor.lhs.false31 ], [ %call22, %lor.lhs.false25 ], [ %call22, %lor.lhs.false20 ], [ null, %land.lhs.true14 ], [ null, %land.lhs.true ], [ null, %lor.lhs.false ], [ null, %entry ]
  %ok.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false39 ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false20 ], [ 0, %land.lhs.true14 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %call47 = call i32 @BIO_free(%struct.bio_st* noundef %mem_ser.0) #9
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @decode_EVP_PKEY_prov(i8* noundef %file, i32 noundef %line, i8** nocapture noundef writeonly %object, i8* noundef %encoded, i64 noundef %encoded_len, i8* noundef %input_type, i8* noundef %structure_type, i8* noundef %keytype, i32 noundef %selection, i8* noundef %pass) unnamed_addr #1 {
entry:
  %testpkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %testpkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %testpkey, align 8, !tbaa !5
  %call = tail call i32 @strcmp(i8* noundef %input_type, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.224, i64 0, i64 0)) #10
  %cmp = icmp eq i32 %call, 0
  %. = select i1 %cmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.245, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.224, i64 0, i64 0)
  %conv = trunc i64 %encoded_len to i32
  %call1 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %encoded, i32 noundef %conv) #9
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.246, i64 0, i64 0), i8* noundef %1) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp18.not = icmp eq i8* %pass, null
  %cmp44 = icmp eq i32 %selection, 4
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0113 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %pkey.0112 = phi %struct.evp_pkey_st* [ null, %for.cond.preheader ], [ %pkey.1, %for.inc ]
  %cmp7 = icmp eq i32 %i.0113, 0
  %cmp9 = icmp eq i32 %i.0113, 1
  %cond = select i1 %cmp9, i8* null, i8* %.
  %cond14 = select i1 %cmp7, i8* %input_type, i8* %cond
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call15 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %testpkey, i8* noundef %cond14, i8* noundef %structure_type, i8* noundef %keytype, i32 noundef %selection, %struct.ossl_lib_ctx_st* noundef %2, i8* noundef null) #9
  %3 = bitcast %struct.ossl_decoder_ctx_st* %call15 to i8*
  %call16 = call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.247, i64 0, i64 0), i8* noundef %3) #9
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  br i1 %cmp18.not, label %lor.lhs.false23, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call20 = call i64 @strlen(i8* noundef nonnull %pass) #10
  %call21 = call i32 @OSSL_DECODER_CTX_set_passphrase(%struct.ossl_decoder_ctx_st* noundef %call15, i8* noundef nonnull %pass, i64 noundef %call20) #9
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %end, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %call24 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 1, i64 noundef 0, i8* noundef null) #9
  %conv25 = trunc i64 %call24 to i32
  %call26 = call i32 @test_int_gt(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.248, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i32 noundef %conv25, i32 noundef 0) #9
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %end, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false23
  %call29 = call i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef %call15, %struct.bio_st* noundef %call1) #9
  %cmp30 = icmp ne i32 %i.0113, 2
  %cond32 = zext i1 %cmp30 to i32
  %call33 = call i32 @test_int_eq(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.249, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.250, i64 0, i64 0), i32 noundef %call29, i32 noundef %cond32) #9
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %end, label %if.end36

if.end36:                                         ; preds = %lor.lhs.false28
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %call15) #9
  br i1 %cmp7, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.end36
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %testpkey, align 8, !tbaa !5
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %testpkey, align 8, !tbaa !5
  br label %for.inc

if.else40:                                        ; preds = %if.end36
  br i1 %cmp9, label %if.then43, label %for.inc

if.then43:                                        ; preds = %if.else40
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %testpkey, align 8, !tbaa !5
  br i1 %cmp44, label %if.then46, label %if.else52

if.then46:                                        ; preds = %if.then43
  %call47 = call i32 @EVP_PKEY_parameters_eq(%struct.evp_pkey_st* noundef %pkey.0112, %struct.evp_pkey_st* noundef %5) #9
  %call48 = call i32 @test_int_eq(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.251, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i64 0, i64 0), i32 noundef %call47, i32 noundef 1) #9
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %end, label %for.inc

if.else52:                                        ; preds = %if.then43
  %call53 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %pkey.0112, %struct.evp_pkey_st* noundef %5) #9
  %call54 = call i32 @test_int_eq(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.252, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i64 0, i64 0), i32 noundef %call53, i32 noundef 1) #9
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %end, label %for.inc

for.inc:                                          ; preds = %if.else40, %if.else52, %if.then46, %if.then39
  %pkey.1 = phi %struct.evp_pkey_st* [ %4, %if.then39 ], [ %pkey.0112, %if.then46 ], [ %pkey.0112, %if.else52 ], [ %pkey.0112, %if.else40 ]
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %for.inc
  %6 = bitcast i8** %object to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %pkey.1, %struct.evp_pkey_st** %6, align 8, !tbaa !5
  br label %end

end:                                              ; preds = %if.else52, %if.then46, %for.body, %land.lhs.true, %lor.lhs.false23, %lor.lhs.false28, %entry, %for.end
  %dctx.2 = phi %struct.ossl_decoder_ctx_st* [ null, %for.end ], [ null, %entry ], [ %call15, %lor.lhs.false28 ], [ %call15, %lor.lhs.false23 ], [ %call15, %land.lhs.true ], [ %call15, %for.body ], [ null, %if.then46 ], [ null, %if.else52 ]
  %pkey.3 = phi %struct.evp_pkey_st* [ null, %for.end ], [ null, %entry ], [ %pkey.0112, %lor.lhs.false28 ], [ %pkey.0112, %lor.lhs.false23 ], [ %pkey.0112, %land.lhs.true ], [ %pkey.0112, %for.body ], [ %pkey.0112, %if.then46 ], [ %pkey.0112, %if.else52 ]
  %ok.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false23 ], [ 0, %land.lhs.true ], [ 0, %for.body ], [ 0, %if.then46 ], [ 0, %if.else52 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.3) #9
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %testpkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %7) #9
  %call61 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #9
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %dctx.2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_mem(i8* noundef %file, i32 noundef %line, i8* noundef %data1, i64 noundef %data1_len, i8* noundef %data2, i64 noundef %data2_len) #1 {
entry:
  %call = tail call i32 @test_mem_eq(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.253, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.254, i64 0, i64 0), i8* noundef %data1, i64 noundef %data1_len, i8* noundef %data2, i64 noundef %data2_len) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_unprotected_PKCS8_DER(i8* noundef %file, i32 noundef %line, i8* noundef %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %datap = alloca i8*, align 8
  %namelist = alloca i8*, align 8
  %0 = bitcast i8** %datap to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* %data, i8** %datap, align 8, !tbaa !5
  %call = call %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef null, i8** noundef nonnull %datap, i64 noundef %data_len) #9
  %1 = bitcast %struct.pkcs8_priv_key_info_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.255, i64 0, i64 0), i8* noundef %1) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end23, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call2 = call %struct.evp_pkey_st* @EVP_PKCS82PKEY_ex(%struct.pkcs8_priv_key_info_st* noundef %call, %struct.ossl_lib_ctx_st* noundef %2, i8* noundef null) #9
  %3 = bitcast i8** %namelist to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8
  store i8* null, i8** %namelist, align 8, !tbaa !5
  %4 = bitcast %struct.evp_pkey_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.256, i64 0, i64 0), i8* noundef %4) #9
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end22, label %if.then5

if.then5:                                         ; preds = %if.then
  %call6 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %call2, i8* noundef %type) #9
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.257, i64 0, i64 0), i32 noundef %conv) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %land.rhs

if.then9:                                         ; preds = %if.then5
  %call10 = call i32 @EVP_PKEY_type_names_do_all(%struct.evp_pkey_st* noundef %call2, void (i8*, i8*)* noundef nonnull @collect_name, i8* noundef nonnull %3) #9
  %5 = load i8*, i8** %namelist, align 8, !tbaa !5
  %cmp11.not = icmp eq i8* %5, null
  br i1 %cmp11.not, label %if.end, label %if.then13

if.then13:                                        ; preds = %if.then9
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.258, i64 0, i64 0), i8* noundef %type, i8* noundef nonnull %5) #9
  %.pre = load i8*, i8** %namelist, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then9
  %6 = phi i8* [ %.pre, %if.then13 ], [ null, %if.then9 ]
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 514) #9
  br label %land.end

land.rhs:                                         ; preds = %if.then5
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %call2, i64 0, i32 13
  %7 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !18
  %cmp16 = icmp ne %struct.evp_keymgmt_st* %7, null
  %conv17 = zext i1 %cmp16 to i32
  %call20 = call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.259, i64 0, i64 0), i32 noundef %conv17) #9
  %tobool21 = icmp ne i32 %call20, 0
  %phi.cast = zext i1 %tobool21 to i32
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %8 = phi i32 [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call2) #9
  br label %if.end22

if.end22:                                         ; preds = %land.end, %if.then
  %ok.0 = phi i32 [ %8, %land.end ], [ 0, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %entry
  %ok.1 = phi i32 [ %ok.0, %if.end22 ], [ 0, %entry ]
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef %call) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ok.1
}

; Function Attrs: noinline nounwind uwtable
define internal void @dump_der(i8* noundef %label, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  tail call void @test_output_memory(i8* noundef %label, i8* noundef %data, i64 noundef %data_len) #9
  ret void
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i32 @EVP_PKEY_parameters_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #5

declare dso_local i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #5

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare dso_local %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #5

declare dso_local i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #6

declare dso_local i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #5

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #5

declare dso_local i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #5

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #5

declare dso_local i32 @test_long_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #5

declare dso_local void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #5

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #5

declare dso_local %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local i32 @OSSL_DECODER_CTX_set_passphrase(%struct.ossl_decoder_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare dso_local i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #5

declare dso_local void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #5

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare dso_local %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #5

declare dso_local %struct.evp_pkey_st* @EVP_PKCS82PKEY_ex(%struct.pkcs8_priv_key_info_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local i32 @EVP_PKEY_type_names_do_all(%struct.evp_pkey_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal void @collect_name(i8* noundef %name, i8* nocapture noundef %arg) #1 {
entry:
  %0 = bitcast i8* %arg to i8**
  %call = tail call i64 @strlen(i8* noundef %name) #10
  %1 = load i8*, i8** %0, align 8, !tbaa !5
  %cmp.not = icmp eq i8* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i64 @strlen(i8* noundef nonnull %1) #10
  %add = add i64 %call, 2
  %add2 = add i64 %add, %call1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %space.0 = phi i64 [ %add2, %if.then ], [ %call, %entry ]
  %inc = add i64 %space.0, 1
  %call3 = tail call i8* @CRYPTO_realloc(i8* noundef %1, i64 noundef %inc, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 474) #9
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %2 = load i8*, i8** %0, align 8, !tbaa !5
  %cmp7.not = icmp eq i8* %2, null
  br i1 %cmp7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i8* @strcat(i8* noundef nonnull %call3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.260, i64 0, i64 0)) #9
  %call10 = tail call i8* @strcat(i8* noundef nonnull %call3, i8* noundef %name) #9
  br label %if.end12

if.else:                                          ; preds = %if.end6
  %call11 = tail call i8* @strcpy(i8* noundef nonnull %call3, i8* noundef %name) #9
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  store i8* %call3, i8** %0, align 8, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end12
  ret void
}

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #5

declare dso_local void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #5

declare dso_local i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #7

declare dso_local void @test_output_memory(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_unprotected_via_PEM(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @test_encode_decode(i32 noundef 548, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 135, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.245, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.225, i64 0, i64 0), i8* noundef null, i8* noundef null, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_prov, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_text, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_unprotected_PKCS8_PEM, void (i8*, i8*, i64)* noundef nonnull @dump_pem, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_text(i8* noundef %file, i32 noundef %line, i8* noundef %data1, i64 noundef %data1_len, i8* noundef %data2, i64 noundef %data2_len) #1 {
entry:
  %call = tail call i32 @test_strn_eq(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.253, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.254, i64 0, i64 0), i8* noundef %data1, i64 noundef %data1_len, i8* noundef %data2, i64 noundef %data2_len) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_unprotected_PKCS8_PEM(i8* noundef %file, i32 noundef %line, i8* nocapture noundef readnone %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %call = tail call i32 @test_strn_eq(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.261, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.262, i64 0, i64 0), i8* noundef %data, i64 noundef 27, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @check_unprotected_PKCS8_PEM.expected_pem_header, i64 0, i64 0), i64 noundef 27) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @dump_pem(i8* noundef %label, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %sub = add i64 %data_len, -1
  tail call void @test_output_string(i8* noundef %label, i8* noundef %data, i64 noundef %sub) #9
  ret void
}

declare dso_local i32 @test_strn_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare dso_local void @test_output_string(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_protected_via_DER(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @test_encode_decode(i32 noundef 703, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.224, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.264, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.265, i64 0, i64 0), i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_prov, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_mem, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_protected_PKCS8_DER, void (i8*, i8*, i64)* noundef nonnull @dump_der, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_protected_PKCS8_DER(i8* noundef %file, i32 noundef %line, i8* nocapture noundef readnone %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %datap = alloca i8*, align 8
  %0 = bitcast i8** %datap to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* %data, i8** %datap, align 8, !tbaa !5
  %call = call %struct.X509_sig_st* @d2i_X509_SIG(%struct.X509_sig_st** noundef null, i8** noundef nonnull %datap, i64 noundef %data_len) #9
  %1 = bitcast %struct.X509_sig_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.266, i64 0, i64 0), i8* noundef %1) #9
  call void @X509_SIG_free(%struct.X509_sig_st* noundef %call) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %call1
}

declare dso_local %struct.X509_sig_st* @d2i_X509_SIG(%struct.X509_sig_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #5

declare dso_local void @X509_SIG_free(%struct.X509_sig_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_protected_via_PEM(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @test_encode_decode(i32 noundef 726, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.245, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.264, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.265, i64 0, i64 0), i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_prov, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_text, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_protected_PKCS8_PEM, void (i8*, i8*, i64)* noundef nonnull @dump_pem, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_protected_PKCS8_PEM(i8* noundef %file, i32 noundef %line, i8* nocapture noundef readnone %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %call = tail call i32 @test_strn_eq(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.261, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.262, i64 0, i64 0), i8* noundef %data, i64 noundef 37, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @check_protected_PKCS8_PEM.expected_pem_header, i64 0, i64 0), i64 noundef 37) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_public_via_DER(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @test_encode_decode(i32 noundef 796, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 134, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.224, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.267, i64 0, i64 0), i8* noundef null, i8* noundef null, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_prov, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_mem, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_public_DER, void (i8*, i8*, i64)* noundef nonnull @dump_der, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_public_DER(i8* noundef %file, i32 noundef %line, i8* noundef %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %datap = alloca i8*, align 8
  %0 = bitcast i8** %datap to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* %data, i8** %datap, align 8, !tbaa !5
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = call %struct.evp_pkey_st* @d2i_PUBKEY_ex(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %datap, i64 noundef %data_len, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef null) #9
  %2 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.256, i64 0, i64 0), i8* noundef %2) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call2 = call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %call, i8* noundef %type) #9
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.257, i64 0, i64 0), i32 noundef %conv) #9
  %tobool4 = icmp ne i32 %call3, 0
  %phi.cast = zext i1 %tobool4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %3
}

declare dso_local %struct.evp_pkey_st* @d2i_PUBKEY_ex(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_public_via_PEM(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @test_encode_decode(i32 noundef 817, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 134, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.245, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.267, i64 0, i64 0), i8* noundef null, i8* noundef null, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_prov, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_text, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_public_PEM, void (i8*, i8*, i64)* noundef nonnull @dump_pem, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_public_PEM(i8* noundef %file, i32 noundef %line, i8* nocapture noundef readnone %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %call = tail call i32 @test_strn_eq(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.261, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.262, i64 0, i64 0), i8* noundef %data, i64 noundef 26, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @check_public_PEM.expected_pem_header, i64 0, i64 0), i64 noundef 26) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_params_via_DER(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @test_encode_decode(i32 noundef 599, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.224, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.268, i64 0, i64 0), i8* noundef null, i8* noundef null, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_prov, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_mem, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_params_DER, void (i8*, i8*, i64)* noundef nonnull @dump_der, i32 noundef 1) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_params_DER(i8* nocapture noundef readnone %file, i32 noundef %line, i8* noundef readonly %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %datap = alloca i8*, align 8
  %0 = bitcast i8** %datap to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* %data, i8** %datap, align 8, !tbaa !5
  %call = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0)) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then16, label %if.else

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0)) #10
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then16, label %if.else4

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0)) #10
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then16, label %if.end14

if.end14:                                         ; preds = %if.else4
  %call9 = tail call i32 @strcmp(i8* noundef %type, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0)) #10
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.else4, %if.else, %entry, %if.end14
  %itype.031 = phi i32 [ 408, %if.end14 ], [ 116, %if.else4 ], [ 920, %if.else ], [ 28, %entry ]
  %call17 = call %struct.evp_pkey_st* @d2i_KeyParams(i32 noundef %itype.031, %struct.evp_pkey_st** noundef null, i8** noundef nonnull %datap, i64 noundef %data_len) #9
  %cmp18 = icmp ne %struct.evp_pkey_st* %call17, null
  %conv = zext i1 %cmp18 to i32
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call17) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14
  %ok.0 = phi i32 [ %conv, %if.then16 ], [ 0, %if.end14 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ok.0
}

declare dso_local %struct.evp_pkey_st* @d2i_KeyParams(i32 noundef, %struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_params_via_PEM(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @test_encode_decode(i32 noundef 608, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.245, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.268, i64 0, i64 0), i8* noundef null, i8* noundef null, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_prov, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_text, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_params_PEM, void (i8*, i8*, i64)* noundef nonnull @dump_pem, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_params_PEM(i8* noundef %file, i32 noundef %line, i8* noundef %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %call = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @check_params_PEM.expected_pem_header, i64 0, i64 0), i64 noundef 80, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.270, i64 0, i64 0), i8* noundef %type) #9
  %call1 = tail call i32 @test_int_gt(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.269, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call2 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @check_params_PEM.expected_pem_header, i64 0, i64 0)) #10
  %call4 = tail call i32 @test_strn_eq(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.261, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.262, i64 0, i64 0), i8* noundef %data, i64 noundef %call2, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @check_params_PEM.expected_pem_header, i64 0, i64 0), i64 noundef %call2) #9
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_unprotected_via_legacy_PEM(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %.b = load i1, i1* @default_libctx, align 4
  %.b3 = load i1, i1* @is_fips, align 4
  %or.cond = select i1 %.b, i1 true, i1 %.b3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 632, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.271, i64 0, i64 0)) #9
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @test_encode_decode(i32 noundef 634, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.245, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.268, i64 0, i64 0), i8* noundef null, i8* noundef null, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_legacy_PEM, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_text, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_unprotected_legacy_PEM, void (i8*, i8*, i64)* noundef nonnull @dump_pem, i32 noundef 0) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_EVP_PKEY_legacy_PEM(i8* noundef %file, i32 noundef %line, i8** nocapture noundef writeonly %encoded, i64* nocapture noundef writeonly %encoded_len, i8* noundef %object, i32 noundef %selection, i8* nocapture noundef readnone %output_type, i8* nocapture noundef readnone %output_structure, i8* noundef %pass, i8* noundef %pcipher) #1 {
entry:
  %mem_buf = alloca %struct.buf_mem_st*, align 8
  %0 = bitcast i8* %object to %struct.evp_pkey_st*
  %1 = bitcast %struct.buf_mem_st** %mem_buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %cmp = icmp ne i8* %pcipher, null
  %cmp1 = icmp ne i8* %pass, null
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef nonnull %pass) #10
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call2 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef nonnull %pcipher, i8* noundef null) #9
  %3 = bitcast %struct.evp_cipher_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.272, i64 0, i64 0), i8* noundef %3) #9
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %end, label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %cipher.0 = phi %struct.evp_cipher_st* [ %call2, %if.then ], [ null, %entry ]
  %passlen.0 = phi i64 [ %call, %if.then ], [ 0, %entry ]
  %call6 = tail call %struct.bio_method_st* @BIO_s_mem() #9
  %call7 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call6) #9
  %4 = bitcast %struct.bio_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.240, i64 0, i64 0), i8* noundef %4) #9
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %conv = trunc i64 %passlen.0 to i32
  %call10 = tail call i32 @PEM_write_bio_PrivateKey_traditional(%struct.bio_st* noundef %call7, %struct.evp_pkey_st* noundef %0, %struct.evp_cipher_st* noundef %cipher.0, i8* noundef %pass, i32 noundef %conv, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #9
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = tail call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.273, i64 0, i64 0), i32 noundef %conv12) #9
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %call16 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call7, i32 noundef 115, i64 noundef 0, i8* noundef nonnull %1) #9
  %cmp17 = icmp sgt i64 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call21 = call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.242, i64 0, i64 0), i32 noundef %conv18) #9
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %end, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false15
  %5 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %5, i64 0, i32 1
  %6 = load i8*, i8** %data, align 8, !tbaa !14
  store i8* %6, i8** %encoded, align 8, !tbaa !5
  %call24 = call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.243, i64 0, i64 0), i8* noundef %6) #9
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %end, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %7, i64 0, i32 0
  %8 = load i64, i64* %length, align 8, !tbaa !16
  store i64 %8, i64* %encoded_len, align 8, !tbaa !9
  %call27 = call i32 @test_long_gt(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.244, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i64 noundef %8, i64 noundef 0) #9
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %end, label %if.end30

if.end30:                                         ; preds = %lor.lhs.false26
  %9 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %data31 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %9, i64 0, i32 1
  store i8* null, i8** %data31, align 8, !tbaa !14
  %length32 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %9, i64 0, i32 0
  store i64 0, i64* %length32, align 8, !tbaa !16
  br label %end

end:                                              ; preds = %if.end5, %lor.lhs.false, %lor.lhs.false15, %lor.lhs.false23, %lor.lhs.false26, %if.then, %if.end30
  %mem_ser.0 = phi %struct.bio_st* [ %call7, %if.end30 ], [ %call7, %lor.lhs.false26 ], [ %call7, %lor.lhs.false23 ], [ %call7, %lor.lhs.false15 ], [ %call7, %lor.lhs.false ], [ %call7, %if.end5 ], [ null, %if.then ]
  %cipher.1 = phi %struct.evp_cipher_st* [ %cipher.0, %if.end30 ], [ %cipher.0, %lor.lhs.false26 ], [ %cipher.0, %lor.lhs.false23 ], [ %cipher.0, %lor.lhs.false15 ], [ %cipher.0, %lor.lhs.false ], [ %cipher.0, %if.end5 ], [ %call2, %if.then ]
  %ok.0 = phi i32 [ 1, %if.end30 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false ], [ 0, %if.end5 ], [ 0, %if.then ]
  %call33 = call i32 @BIO_free(%struct.bio_st* noundef %mem_ser.0) #9
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %cipher.1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_unprotected_legacy_PEM(i8* noundef %file, i32 noundef %line, i8* noundef %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %call = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @check_unprotected_legacy_PEM.expected_pem_header, i64 0, i64 0), i64 noundef 80, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.275, i64 0, i64 0), i8* noundef %type) #9
  %call1 = tail call i32 @test_int_gt(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.274, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call2 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @check_unprotected_legacy_PEM.expected_pem_header, i64 0, i64 0)) #10
  %call4 = tail call i32 @test_strn_eq(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.261, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.262, i64 0, i64 0), i8* noundef %data, i64 noundef %call2, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @check_unprotected_legacy_PEM.expected_pem_header, i64 0, i64 0), i64 noundef %call2) #9
  %tobool5 = icmp ne i32 %call4, 0
  %phi.cast = zext i1 %tobool5 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

declare dso_local %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local i32 @PEM_write_bio_PrivateKey_traditional(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_protected_via_legacy_PEM(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %.b = load i1, i1* @default_libctx, align 4
  %.b3 = load i1, i1* @is_fips, align 4
  %or.cond = select i1 %.b, i1 true, i1 %.b3
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 753, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.271, i64 0, i64 0)) #9
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @test_encode_decode(i32 noundef 755, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.245, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.268, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.264, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.265, i64 0, i64 0), i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_legacy_PEM, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_text, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_protected_legacy_PEM, void (i8*, i8*, i64)* noundef nonnull @dump_pem, i32 noundef 0) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_protected_legacy_PEM(i8* noundef %file, i32 noundef %line, i8* noundef %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %call = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @check_protected_legacy_PEM.expected_pem_header, i64 0, i64 0), i64 noundef 80, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.275, i64 0, i64 0), i8* noundef %type) #9
  %call1 = tail call i32 @test_int_gt(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.274, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #9
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @check_protected_legacy_PEM.expected_pem_header, i64 0, i64 0)) #10
  %call4 = tail call i32 @test_strn_eq(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.261, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.262, i64 0, i64 0), i8* noundef %data, i64 noundef %call2, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @check_protected_legacy_PEM.expected_pem_header, i64 0, i64 0), i64 noundef %call2) #9
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call6 = tail call i8* @strstr(i8* noundef %data, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.277, i64 0, i64 0)) #10
  %call7 = tail call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.276, i64 0, i64 0), i8* noundef %call6) #9
  %tobool8 = icmp ne i32 %call7, 0
  %phi.cast = zext i1 %tobool8 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %0 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_unprotected_via_MSBLOB(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @test_encode_decode(i32 noundef 656, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.278, i64 0, i64 0), i8* noundef null, i8* noundef null, i8* noundef null, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_MSBLOB, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_mem, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_MSBLOB, void (i8*, i8*, i64)* noundef nonnull @dump_der, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_EVP_PKEY_MSBLOB(i8* noundef %file, i32 noundef %line, i8** nocapture noundef writeonly %encoded, i64* nocapture noundef writeonly %encoded_len, i8* noundef %object, i32 noundef %selection, i8* nocapture noundef readnone %output_type, i8* nocapture noundef readnone %output_structure, i8* nocapture noundef readnone %pass, i8* nocapture noundef readnone %pcipher) #1 {
entry:
  %mem_buf = alloca %struct.buf_mem_st*, align 8
  %0 = bitcast i8* %object to %struct.evp_pkey_st*
  %1 = bitcast %struct.buf_mem_st** %mem_buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #9
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #9
  %2 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.240, i64 0, i64 0), i8* noundef %2) #9
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %if.end

if.end:                                           ; preds = %entry
  %and = and i32 %selection, 1
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @i2b_PrivateKey_bio(%struct.bio_st* noundef %call1, %struct.evp_pkey_st* noundef %0) #9
  %call5 = tail call i32 @test_int_ge(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.279, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i32 noundef %call4, i32 noundef 0) #9
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %end, label %if.end14

if.else:                                          ; preds = %if.end
  %call9 = tail call i32 @i2b_PublicKey_bio(%struct.bio_st* noundef %call1, %struct.evp_pkey_st* noundef %0) #9
  %call10 = tail call i32 @test_int_ge(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.280, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #9
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %end, label %if.end14

if.end14:                                         ; preds = %if.else, %if.then3
  %call15 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 115, i64 noundef 0, i8* noundef nonnull %1) #9
  %cmp16 = icmp sgt i64 %call15, 0
  %conv = zext i1 %cmp16 to i32
  %call19 = call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.242, i64 0, i64 0), i32 noundef %conv) #9
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %3, i64 0, i32 1
  %4 = load i8*, i8** %data, align 8, !tbaa !14
  store i8* %4, i8** %encoded, align 8, !tbaa !5
  %call21 = call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.243, i64 0, i64 0), i8* noundef %4) #9
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %end, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %5 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %5, i64 0, i32 0
  %6 = load i64, i64* %length, align 8, !tbaa !16
  store i64 %6, i64* %encoded_len, align 8, !tbaa !9
  %call24 = call i32 @test_long_gt(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.244, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i64 noundef %6, i64 noundef 0) #9
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %end, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false23
  %7 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %data28 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %7, i64 0, i32 1
  store i8* null, i8** %data28, align 8, !tbaa !14
  %length29 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %7, i64 0, i32 0
  store i64 0, i64* %length29, align 8, !tbaa !16
  br label %end

end:                                              ; preds = %if.end14, %lor.lhs.false, %lor.lhs.false23, %if.else, %if.then3, %entry, %if.end27
  %ok.0 = phi i32 [ 1, %if.end27 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false ], [ 0, %if.end14 ], [ 0, %if.then3 ], [ 0, %if.else ], [ 0, %entry ]
  %call30 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_MSBLOB(i8* noundef %file, i32 noundef %line, i8* nocapture noundef readnone %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %datap = alloca i8*, align 8
  %0 = bitcast i8** %datap to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* %data, i8** %datap, align 8, !tbaa !5
  %call = call %struct.evp_pkey_st* @b2i_PrivateKey(i8** noundef nonnull %datap, i64 noundef %data_len) #9
  %1 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.256, i64 0, i64 0), i8* noundef %1) #9
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %call1
}

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare dso_local i32 @i2b_PrivateKey_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #5

declare dso_local i32 @i2b_PublicKey_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #5

declare dso_local %struct.evp_pkey_st* @b2i_PrivateKey(i8** noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_public_via_MSBLOB(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @test_encode_decode(i32 noundef 839, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.278, i64 0, i64 0), i8* noundef null, i8* noundef null, i8* noundef null, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_MSBLOB, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_mem, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_public_MSBLOB, void (i8*, i8*, i64)* noundef nonnull @dump_der, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_public_MSBLOB(i8* noundef %file, i32 noundef %line, i8* nocapture noundef readnone %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %datap = alloca i8*, align 8
  %0 = bitcast i8** %datap to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* %data, i8** %datap, align 8, !tbaa !5
  %call = call %struct.evp_pkey_st* @b2i_PublicKey(i8** noundef nonnull %datap, i64 noundef %data_len) #9
  %1 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.256, i64 0, i64 0), i8* noundef %1) #9
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %call1
}

declare dso_local %struct.evp_pkey_st* @b2i_PublicKey(i8** noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_unprotected_via_PVK(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %call = tail call fastcc i32 @test_encode_decode(i32 noundef 677, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.281, i64 0, i64 0), i8* noundef null, i8* noundef null, i8* noundef null, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_PVK, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_mem, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_PVK, void (i8*, i8*, i64)* noundef nonnull @dump_der, i32 noundef 0) #11
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_EVP_PKEY_PVK(i8* noundef %file, i32 noundef %line, i8** nocapture noundef writeonly %encoded, i64* nocapture noundef writeonly %encoded_len, i8* noundef %object, i32 noundef %selection, i8* nocapture noundef readnone %output_type, i8* nocapture noundef readnone %output_structure, i8* noundef %pass, i8* nocapture noundef readnone %pcipher) #1 {
entry:
  %mem_buf = alloca %struct.buf_mem_st*, align 8
  %0 = bitcast i8* %object to %struct.evp_pkey_st*
  %1 = bitcast %struct.buf_mem_st** %mem_buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %cmp = icmp ne i8* %pass, null
  %conv = zext i1 %cmp to i32
  %and = and i32 %selection, 1
  %call = tail call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.282, i64 0, i64 0), i32 noundef %and) #9
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call7 = tail call %struct.bio_method_st* @BIO_s_mem() #9
  %call8 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call7) #9
  %2 = bitcast %struct.bio_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.240, i64 0, i64 0), i8* noundef %2) #9
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %end, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call12 = tail call i32 @i2b_PVK_bio_ex(%struct.bio_st* noundef %call8, %struct.evp_pkey_st* noundef %0, i32 noundef %conv, i32 (i8*, i32, i32, i8*)* noundef nonnull @pass_pw, i8* noundef %pass, %struct.ossl_lib_ctx_st* noundef %3, i8* noundef null) #9
  %call13 = tail call i32 @test_int_ge(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.283, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i32 noundef %call12, i32 noundef 0) #9
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %call16 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call8, i32 noundef 115, i64 noundef 0, i8* noundef nonnull %1) #9
  %cmp17 = icmp sgt i64 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call21 = call i32 @test_true(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.242, i64 0, i64 0), i32 noundef %conv18) #9
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %end, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false15
  %4 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %4, i64 0, i32 1
  %5 = load i8*, i8** %data, align 8, !tbaa !14
  store i8* %5, i8** %encoded, align 8, !tbaa !5
  %call24 = call i32 @test_ptr(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.243, i64 0, i64 0), i8* noundef %5) #9
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %end, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %6 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %6, i64 0, i32 0
  %7 = load i64, i64* %length, align 8, !tbaa !16
  store i64 %7, i64* %encoded_len, align 8, !tbaa !9
  %call27 = call i32 @test_long_gt(i8* noundef %file, i32 noundef %line, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.244, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0), i64 noundef %7, i64 noundef 0) #9
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false26
  %8 = load %struct.buf_mem_st*, %struct.buf_mem_st** %mem_buf, align 8, !tbaa !5
  %data29 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %8, i64 0, i32 1
  store i8* null, i8** %data29, align 8, !tbaa !14
  %length30 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %8, i64 0, i32 0
  store i64 0, i64* %length30, align 8, !tbaa !16
  br label %end

end:                                              ; preds = %entry, %lor.lhs.false, %lor.lhs.false11, %lor.lhs.false15, %lor.lhs.false23, %lor.lhs.false26, %if.end
  %mem_ser.0 = phi %struct.bio_st* [ %call8, %if.end ], [ %call8, %lor.lhs.false26 ], [ %call8, %lor.lhs.false23 ], [ %call8, %lor.lhs.false15 ], [ %call8, %lor.lhs.false11 ], [ %call8, %lor.lhs.false ], [ null, %entry ]
  %ok.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %call31 = call i32 @BIO_free(%struct.bio_st* noundef %mem_ser.0) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_PVK(i8* nocapture noundef readnone %file, i32 noundef %line, i8* nocapture noundef readnone %type, i8* noundef %data, i64 noundef %data_len) #1 {
entry:
  %in = alloca i8*, align 8
  %saltlen = alloca i32, align 4
  %keylen = alloca i32, align 4
  %0 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* %data, i8** %in, align 8, !tbaa !5
  %1 = bitcast i32* %saltlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8
  store i32 0, i32* %saltlen, align 4, !tbaa !23
  %2 = bitcast i32* %keylen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  store i32 0, i32* %keylen, align 4, !tbaa !23
  %conv = trunc i64 %data_len to i32
  %call = call i32 @ossl_do_PVK_header(i8** noundef nonnull %in, i32 noundef %conv, i32 noundef 0, i32* noundef nonnull %saltlen, i32* noundef nonnull %keylen) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %call
}

declare dso_local i32 @i2b_PVK_bio_ex(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @pass_pw(i8* noundef %buf, i32 noundef %size, i32 noundef %rwflag, i8* noundef %userdata) #1 {
entry:
  %conv = sext i32 %size to i64
  %call = tail call i64 @OPENSSL_strlcpy(i8* noundef %buf, i8* noundef %userdata, i64 noundef %conv) #9
  %call1 = tail call i64 @strlen(i8* noundef %userdata) #10
  %conv2 = trunc i64 %call1 to i32
  ret i32 %conv2
}

declare dso_local i64 @OPENSSL_strlcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare dso_local i32 @ossl_do_PVK_header(i8** noundef, i32 noundef, i32 noundef, i32* noundef, i32* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_protected_via_PVK(i8* noundef %type, %struct.evp_pkey_st* noundef %key) unnamed_addr #1 {
entry:
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.284, i64 0, i64 0)) #9
  %cmp = icmp eq %struct.ossl_provider_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.285, i64 0, i64 0)) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @test_encode_decode(i32 noundef 772, i8* noundef %type, %struct.evp_pkey_st* noundef %key, i32 noundef 7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.281, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.264, i64 0, i64 0), i8* noundef null, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* noundef nonnull @encode_EVP_PKEY_PVK, i32 (i8*, i32, i8*, i64, i8*, i64)* noundef nonnull @test_mem, i32 (i8*, i32, i8*, i8*, i64)* noundef nonnull @check_PVK, void (i8*, i8*, i64)* noundef nonnull @dump_der, i32 noundef 0) #11
  %call3 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* @encode_EVP_PKEY_MSBLOB, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* @encode_EVP_PKEY_PVK, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* @encode_EVP_PKEY_legacy_PEM, i32 (i8*, i32, i8**, i64*, i8*, i32, i8*, i8*, i8*, i8*)* @encode_EVP_PKEY_prov}
!12 = !{i32 (i8*, i32, i8*, i64, i8*, i64)* @test_mem, i32 (i8*, i32, i8*, i64, i8*, i64)* @test_text}
!13 = !{void (i8*, i8*, i64)* @dump_der, void (i8*, i8*, i64)* @dump_pem}
!14 = !{!15, !6, i64 8}
!15 = !{!"buf_mem_st", !10, i64 0, !6, i64 8, !10, i64 16, !10, i64 24}
!16 = !{!15, !10, i64 0}
!17 = distinct !{!17, !4}
!18 = !{!19, !6, i64 96}
!19 = !{!"evp_pkey_st", !20, i64 0, !20, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !6, i64 56, !6, i64 64, !20, i64 72, !20, i64 76, !21, i64 80, !6, i64 96, !6, i64 104, !10, i64 112, !6, i64 120, !10, i64 128, !22, i64 136}
!20 = !{!"int", !7, i64 0}
!21 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!22 = !{!"", !20, i64 0, !20, i64 4, !20, i64 8}
!23 = !{!20, !20, i64 0}
