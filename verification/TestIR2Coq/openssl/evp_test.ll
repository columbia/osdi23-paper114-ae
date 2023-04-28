; ModuleID = 'test/evp_test.c'
source_filename = "test/evp_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.key_list_st = type { i8*, %struct.evp_pkey_st*, %struct.key_list_st* }
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
%struct.evp_test_method_st = type { i8*, i32 (%struct.evp_test_st*, i8*)*, void (%struct.evp_test_st*)*, i32 (%struct.evp_test_st*, i8*, i8*)*, i32 (%struct.evp_test_st*)* }
%struct.evp_test_st = type { %struct.stanza_st, i8*, i32, %struct.evp_test_method_st*, i8*, i8*, i8*, i8*, i8* }
%struct.stanza_st = type { i8*, %struct.bio_st*, i32, i32, i32, i32, i32, i32, [150 x %struct.pair_st], %struct.bio_st*, [4096 x i8] }
%struct.pair_st = type { i8*, i8* }
%struct.bio_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_rand_st = type opaque
%struct.evp_rand_ctx_st = type opaque
%struct.rand_data_st = type { %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st*, i32, i32, i32, i32, i8*, i8*, [15 x %struct.rand_data_pass_st] }
%struct.rand_data_pass_st = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.cipher_data_st = type { %struct.evp_cipher_st*, %struct.evp_cipher_st*, i32, i32, i8*, i64, i64, i8*, i8*, i32, i64, i8*, i64, i8*, i64, [4 x i8*], [4 x i64], i32, i32, i8*, i8*, i64, i32, i8*, i64 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type opaque
%struct.digest_data_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.stack_st_EVP_TEST_BUFFER*, i8*, i64, i32 }
%struct.stack_st_EVP_TEST_BUFFER = type opaque
%struct.evp_test_buffer_st = type { i8*, i64, i64, i32 }
%struct.stack_st = type opaque
%struct.DIGESTSIGN_DATA = type { i32, i32, %struct.evp_md_st*, %struct.evp_md_ctx_st*, %struct.evp_pkey_ctx_st*, %struct.stack_st_EVP_TEST_BUFFER*, i8*, i64, i8*, i64 }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon.0, %struct.anon.6, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.6 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.bignum_st = type opaque
%struct.encode_data_st = type { i8*, i64, i8*, i64, i32 }
%struct.evp_Encode_Ctx_st = type opaque
%struct.evp_kdf_st = type { %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, i8* (i8*)*, i8* (i8*)*, void (i8*)*, void (i8*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)* }
%struct.evp_kdf_ctx_st = type opaque
%struct.kdf_data_st = type { %struct.evp_kdf_ctx_st*, i8*, i64, [20 x %struct.ossl_param_st], %struct.ossl_param_st* }
%struct.pkey_kdf_data_st = type { %struct.evp_pkey_ctx_st*, i8*, i64 }
%struct.keypair_test_data_st = type { %struct.evp_pkey_st*, %struct.evp_pkey_st* }
%struct.keygen_test_data_st = type { %struct.evp_pkey_ctx_st*, i8* }
%struct.evp_mac_st = type { %struct.ossl_provider_st*, i32, i8*, i8*, i32, i8*, i8* (i8*)*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)* }
%struct.mac_data_st = type { i8*, %struct.evp_mac_st*, i32, i8*, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i32, %struct.stack_st_OPENSSL_STRING*, i32, i32 }
%struct.stack_st_OPENSSL_STRING = type opaque
%struct.evp_mac_ctx_st = type opaque
%struct.pbe_data_st = type { i32, i64, i64, i64, i64, i32, i32, %struct.evp_md_st*, i8*, i64, i8*, i64, i8*, i64 }
%struct.pkey_data_st = type { %struct.evp_pkey_ctx_st*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i8*, i64, i8*, i64 }

@test_get_options.test_options = internal constant [11 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] [file...]\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"The configuration file to use for the libctx\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"file\09File to run tests on.\0A\00", align 1
@libctx = internal global %struct.ossl_lib_ctx_st* null, align 8
@prov_null = internal global %struct.ossl_provider_st* null, align 8
@.str.17 = private unnamed_addr constant [15 x i8] c"run_file_tests\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test/evp_test.c\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"t = OPENSSL_zalloc(sizeof(*t))\00", align 1
@public_keys = internal unnamed_addr global %struct.key_list_st* null, align 8
@private_keys = internal unnamed_addr global %struct.key_list_st* null, align 8
@.str.20 = private unnamed_addr constant [11 x i8] c"PrivateKey\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Can't read private key %s\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"PublicKey\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Can't read public key %s\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"PrivateKeyRaw\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"PublicKeyRaw\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Failed to parse %s value\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Unrecognised algorithm NID\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"Failed to create binary key\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Can't read %s data\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Availablein\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"skipping, '%s' provider not available: %s:%d\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Duplicate key %s\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"key = OPENSSL_malloc(sizeof(*key))\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Line %d: missing blank line\0A\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"t->meth = find_test(pp->key)\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"unknown %s: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"Securitycheck\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"skipping, Securitycheck is disabled: %s:%d\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"Line %d: 'Availablein' should be the first option\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"Result\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"Line %d: multiple result lines\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"Reason\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Line %d: multiple reason lines\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"Line %d: unknown keyword %s\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"Line %d: error processing keyword %s = %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"*buf = OPENSSL_hexstr2buf(value, &len)\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"Can't convert %s\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"ret = p = OPENSSL_malloc(input_len)\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"Bad escape sequence in file\00", align 1
@rand_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @rand_test_init, void (%struct.evp_test_st*)* @rand_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @rand_test_parse, i32 (%struct.evp_test_st*)* @rand_test_run }, align 8
@cipher_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @cipher_test_init, void (%struct.evp_test_st*)* @cipher_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @cipher_test_parse, i32 (%struct.evp_test_st*)* @cipher_test_run }, align 8
@digest_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @digest_test_init, void (%struct.evp_test_st*)* @digest_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @digest_test_parse, i32 (%struct.evp_test_st*)* @digest_test_run }, align 8
@digestsign_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.198, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @digestsign_test_init, void (%struct.evp_test_st*)* @digestsigver_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @digestsigver_test_parse, i32 (%struct.evp_test_st*)* @digestsign_test_run }, align 8
@digestverify_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.210, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @digestverify_test_init, void (%struct.evp_test_st*)* @digestsigver_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @digestsigver_test_parse, i32 (%struct.evp_test_st*)* @digestverify_test_run }, align 8
@encode_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.212, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @encode_test_init, void (%struct.evp_test_st*)* @encode_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @encode_test_parse, i32 (%struct.evp_test_st*)* @encode_test_run }, align 8
@kdf_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.228, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @kdf_test_init, void (%struct.evp_test_st*)* @kdf_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @kdf_test_parse, i32 (%struct.evp_test_st*)* @kdf_test_run }, align 8
@pkey_kdf_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.237, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @pkey_kdf_test_init, void (%struct.evp_test_st*)* @pkey_kdf_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @pkey_kdf_test_parse, i32 (%struct.evp_test_st*)* @pkey_kdf_test_run }, align 8
@keypair_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.238, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @keypair_test_init, void (%struct.evp_test_st*)* @keypair_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @void_test_parse, i32 (%struct.evp_test_st*)* @keypair_test_run }, align 8
@keygen_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.253, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @keygen_test_init, void (%struct.evp_test_st*)* @keygen_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @keygen_test_parse, i32 (%struct.evp_test_st*)* @keygen_test_run }, align 8
@mac_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.260, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @mac_test_init, void (%struct.evp_test_st*)* @mac_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @mac_test_parse, i32 (%struct.evp_test_st*)* @mac_test_run }, align 8
@oneshot_digestsign_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.302, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @oneshot_digestsign_test_init, void (%struct.evp_test_st*)* @digestsigver_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @digestsigver_test_parse, i32 (%struct.evp_test_st*)* @oneshot_digestsign_test_run }, align 8
@oneshot_digestverify_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.305, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @oneshot_digestverify_test_init, void (%struct.evp_test_st*)* @digestsigver_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @digestsigver_test_parse, i32 (%struct.evp_test_st*)* @oneshot_digestverify_test_run }, align 8
@pbe_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.306, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @pbe_test_init, void (%struct.evp_test_st*)* @pbe_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @pbe_test_parse, i32 (%struct.evp_test_st*)* @pbe_test_run }, align 8
@pdecrypt_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.329, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @decrypt_test_init, void (%struct.evp_test_st*)* @pkey_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @pkey_test_parse, i32 (%struct.evp_test_st*)* @pkey_test_run }, align 8
@pderive_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.337, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @pderive_test_init, void (%struct.evp_test_st*)* @pkey_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @pderive_test_parse, i32 (%struct.evp_test_st*)* @pderive_test_run }, align 8
@psign_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.345, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @sign_test_init, void (%struct.evp_test_st*)* @pkey_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @pkey_test_parse, i32 (%struct.evp_test_st*)* @pkey_test_run }, align 8
@pverify_recover_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.346, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @verify_recover_test_init, void (%struct.evp_test_st*)* @pkey_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @pkey_test_parse, i32 (%struct.evp_test_st*)* @pkey_test_run }, align 8
@pverify_test_method = internal constant %struct.evp_test_method_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.347, i32 0, i32 0), i32 (%struct.evp_test_st*, i8*)* @verify_test_init, void (%struct.evp_test_st*)* @pkey_test_cleanup, i32 (%struct.evp_test_st*, i8*, i8*)* @pkey_test_parse, i32 (%struct.evp_test_st*)* @verify_test_run }, align 8
@.str.52 = private unnamed_addr constant [5 x i8] c"RAND\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"rdata = OPENSSL_zalloc(sizeof(*rdata))\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"TEST-RAND\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"-fips\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"strength\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"Entropy.\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"ReseedEntropy.\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"Nonce.\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"PersonalisationString.\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"ReseedAdditionalInput.\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"AdditionalInputA.\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"AdditionalInputB.\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"EntropyPredictionResistanceA.\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"EntropyPredictionResistanceB.\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"Output.\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"Cipher\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"rdata->cipher = OPENSSL_strdup(value)\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"Digest\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"rdata->digest = OPENSSL_strdup(value)\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"DerivationFunction\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"GenerateBits\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"PredictionResistance\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"got = OPENSSL_malloc(got_len)\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"use_derivation_function\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@.str.80 = private unnamed_addr constant [47 x i8] c"EVP_RAND_CTX_set_params(expected->ctx, params)\00", align 1
@.str.81 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"test_entropy\00", align 1
@.str.83 = private unnamed_addr constant [11 x i8] c"test_nonce\00", align 1
@.str.84 = private unnamed_addr constant [69 x i8] c"EVP_RAND_instantiate(expected->parent, strength, 0, NULL, 0, params)\00", align 1
@.str.85 = private unnamed_addr constant [105 x i8] c"EVP_RAND_instantiate (expected->ctx, strength, expected->prediction_resistance, z, item->pers_len, NULL)\00", align 1
@.str.86 = private unnamed_addr constant [50 x i8] c"EVP_RAND_CTX_set_params(expected->parent, params)\00", align 1
@.str.87 = private unnamed_addr constant [118 x i8] c"EVP_RAND_reseed (expected->ctx, expected->prediction_resistance, NULL, 0, item->reseed_addin, item->reseed_addin_len)\00", align 1
@.str.88 = private unnamed_addr constant [123 x i8] c"EVP_RAND_generate (expected->ctx, got, got_len, strength, expected->prediction_resistance, item->addinA, item->addinA_len)\00", align 1
@.str.89 = private unnamed_addr constant [123 x i8] c"EVP_RAND_generate (expected->ctx, got, got_len, strength, expected->prediction_resistance, item->addinB, item->addinB_len)\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"got\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"item->output\00", align 1
@.str.92 = private unnamed_addr constant [38 x i8] c"EVP_RAND_uninstantiate(expected->ctx)\00", align 1
@.str.93 = private unnamed_addr constant [41 x i8] c"EVP_RAND_uninstantiate(expected->parent)\00", align 1
@.str.94 = private unnamed_addr constant [43 x i8] c"EVP_RAND_verify_zeroization(expected->ctx)\00", align 1
@.str.95 = private unnamed_addr constant [34 x i8] c"EVP_RAND_get_state(expected->ctx)\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"EVP_RAND_STATE_UNINITIALISED\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"Error in test case %d of %d\0A\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"skipping, '%s' is disabled\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"skipping, '%s' is not available\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"%s is fetched\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"RC5\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"Rounds\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"IV\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"NextIV\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"Plaintext\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"Ciphertext\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"KeyBits\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"TLSAAD\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"AAD\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"Tag\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"SetTagLate\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"MACKey\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"TLSVersion\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"Operation\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"ENCRYPT\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"DECRYPT\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"CTSMode\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"NO_KEY\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"NO_IV\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"NO_TAG\00", align 1
@cipher_test_run.aux_err = internal global [64 x i8] zeroinitializer, align 16
@.str.124 = private unnamed_addr constant [26 x i8] c"%s in-place, %sfragmented\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"misaligned\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"aligned\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.128 = private unnamed_addr constant [37 x i8] c"%s output and %s input, %sfragmented\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"TEST_FAILURE\00", align 1
@.str.130 = private unnamed_addr constant [32 x i8] c"ctx_base = EVP_CIPHER_CTX_new()\00", align 1
@.str.131 = private unnamed_addr constant [27 x i8] c"ctx = EVP_CIPHER_CTX_new()\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c"CIPHERINIT_ERROR\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"cts_mode\00", align 1
@.str.134 = private unnamed_addr constant [17 x i8] c"INVALID_CTS_MODE\00", align 1
@.str.135 = private unnamed_addr constant [18 x i8] c"INVALID_IV_LENGTH\00", align 1
@.str.136 = private unnamed_addr constant [21 x i8] c"TAG_LENGTH_SET_ERROR\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"TAG_SET_ERROR\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"INVALID_ROUNDS\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"INVALID_KEY_LENGTH\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"INVALID KEY BITS\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"KEY_SET_ERROR\00", align 1
@.str.142 = private unnamed_addr constant [56 x i8] c"EVP_CIPHER_CTX_get_updated_iv(ctx_base, iv, sizeof(iv))\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"expected->iv\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"INVALID_IV\00", align 1
@.str.146 = private unnamed_addr constant [18 x i8] c"SET_MAC_KEY_ERROR\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"tls-version\00", align 1
@.str.148 = private unnamed_addr constant [22 x i8] c"SET_TLS_VERSION_ERROR\00", align 1
@.str.149 = private unnamed_addr constant [31 x i8] c"CCM_PLAINTEXT_LENGTH_SET_ERROR\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"AAD_SET_ERROR\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"tlsaad\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"TLS1_AAD_ERROR\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"CIPHERUPDATE_ERROR\00", align 1
@.str.154 = private unnamed_addr constant [18 x i8] c"CIPHERFINAL_ERROR\00", align 1
@.str.155 = private unnamed_addr constant [22 x i8] c"AES-128-CBC-HMAC-SHA1\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"AES-256-CBC-HMAC-SHA1\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"VALUE_MISMATCH\00", align 1
@.str.158 = private unnamed_addr constant [18 x i8] c"expected->tag_len\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"sizeof(rtag)\00", align 1
@.str.160 = private unnamed_addr constant [26 x i8] c"TAG_LENGTH_INTERNAL_ERROR\00", align 1
@.str.161 = private unnamed_addr constant [19 x i8] c"TAG_RETRIEVE_ERROR\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c"TAG_VALUE_MISMATCH\00", align 1
@.str.163 = private unnamed_addr constant [51 x i8] c"EVP_CIPHER_CTX_get_updated_iv(ctx, iv, sizeof(iv))\00", align 1
@.str.164 = private unnamed_addr constant [18 x i8] c"expected->next_iv\00", align 1
@.str.165 = private unnamed_addr constant [16 x i8] c"INVALID_NEXT_IV\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.167 = private unnamed_addr constant [37 x i8] c"mdat = OPENSSL_zalloc(sizeof(*mdat))\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"MD2\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"Count\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"Ncopy\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"Padding\00", align 1
@.str.174 = private unnamed_addr constant [33 x i8] c"db = OPENSSL_malloc(sizeof(*db))\00", align 1
@.str.175 = private unnamed_addr constant [36 x i8] c"*sk = sk_EVP_TEST_BUFFER_new_null()\00", align 1
@.str.176 = private unnamed_addr constant [31 x i8] c"tbuf = OPENSSL_malloc(tbuflen)\00", align 1
@.str.177 = private unnamed_addr constant [24 x i8] c"mctx = EVP_MD_CTX_new()\00", align 1
@.str.178 = private unnamed_addr constant [17 x i8] c"DIGESTINIT_ERROR\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"pad-type\00", align 1
@.str.180 = private unnamed_addr constant [36 x i8] c"EVP_MD_CTX_set_params(mctx, params)\00", align 1
@.str.181 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"PARAMS_ERROR\00", align 1
@.str.183 = private unnamed_addr constant [19 x i8] c"DIGESTUPDATE_ERROR\00", align 1
@.str.184 = private unnamed_addr constant [28 x i8] c"mctx_cpy = EVP_MD_CTX_new()\00", align 1
@.str.185 = private unnamed_addr constant [21 x i8] c"DIGESTFINALXOF_ERROR\00", align 1
@.str.186 = private unnamed_addr constant [5 x i8] c"dont\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"\22touch\22\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"touch\00", align 1
@.str.189 = private unnamed_addr constant [18 x i8] c"DIGESTFINAL_ERROR\00", align 1
@.str.190 = private unnamed_addr constant [21 x i8] c"expected->output_len\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"got_len\00", align 1
@.str.192 = private unnamed_addr constant [23 x i8] c"DIGEST_LENGTH_MISMATCH\00", align 1
@.str.193 = private unnamed_addr constant [16 x i8] c"DIGEST_MISMATCH\00", align 1
@.str.194 = private unnamed_addr constant [53 x i8] c"inbuf = sk_EVP_TEST_BUFFER_value(expected->input, 0)\00", align 1
@.str.195 = private unnamed_addr constant [110 x i8] c"EVP_Q_digest(libctx, EVP_MD_get0_name(expected->fetched_digest), NULL, inbuf->buf, inbuf->buflen, got, &size)\00", align 1
@.str.196 = private unnamed_addr constant [17 x i8] c"expected->output\00", align 1
@.str.197 = private unnamed_addr constant [20 x i8] c"EVP_Q_digest failed\00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"DigestSign\00", align 1
@.str.199 = private unnamed_addr constant [29 x i8] c"mdat->ctx = EVP_MD_CTX_new()\00", align 1
@.str.200 = private unnamed_addr constant [23 x i8] c"DIGESTVERIFYINIT_ERROR\00", align 1
@.str.201 = private unnamed_addr constant [21 x i8] c"DIGESTSIGNINIT_ERROR\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@.str.203 = private unnamed_addr constant [31 x i8] c"tmpval = OPENSSL_strdup(value)\00", align 1
@.str.204 = private unnamed_addr constant [18 x i8] c"PKEY_CTRL_INVALID\00", align 1
@.str.205 = private unnamed_addr constant [16 x i8] c"PKEY_CTRL_ERROR\00", align 1
@.str.206 = private unnamed_addr constant [29 x i8] c"DIGESTSIGNFINAL_LENGTH_ERROR\00", align 1
@.str.207 = private unnamed_addr constant [15 x i8] c"MALLOC_FAILURE\00", align 1
@.str.208 = private unnamed_addr constant [22 x i8] c"DIGESTSIGNFINAL_ERROR\00", align 1
@.str.209 = private unnamed_addr constant [19 x i8] c"SIGNATURE_MISMATCH\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"DigestVerify\00", align 1
@.str.211 = private unnamed_addr constant [13 x i8] c"VERIFY_ERROR\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@.str.213 = private unnamed_addr constant [39 x i8] c"edata = OPENSSL_zalloc(sizeof(*edata))\00", align 1
@.str.214 = private unnamed_addr constant [10 x i8] c"canonical\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.217 = private unnamed_addr constant [49 x i8] c"t->expected_err = OPENSSL_strdup(\22DECODE_ERROR\22)\00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"DECODE_ERROR\00", align 1
@.str.219 = private unnamed_addr constant [63 x i8] c"Bad encoding: %s. Should be one of {canonical, valid, invalid}\00", align 1
@.str.220 = private unnamed_addr constant [34 x i8] c"decode_ctx = EVP_ENCODE_CTX_new()\00", align 1
@.str.221 = private unnamed_addr constant [15 x i8] c"INTERNAL_ERROR\00", align 1
@.str.222 = private unnamed_addr constant [34 x i8] c"encode_ctx = EVP_ENCODE_CTX_new()\00", align 1
@.str.223 = private unnamed_addr constant [68 x i8] c"encode_out = OPENSSL_malloc(EVP_ENCODE_LENGTH(expected->input_len))\00", align 1
@.str.224 = private unnamed_addr constant [91 x i8] c"EVP_EncodeUpdate(encode_ctx, encode_out, &chunk_len, expected->input, expected->input_len)\00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"BAD_ENCODING\00", align 1
@.str.226 = private unnamed_addr constant [69 x i8] c"decode_out = OPENSSL_malloc(EVP_DECODE_LENGTH(expected->output_len))\00", align 1
@.str.227 = private unnamed_addr constant [13 x i8] c"BAD_DECODING\00", align 1
@.str.228 = private unnamed_addr constant [4 x i8] c"KDF\00", align 1
@.str.229 = private unnamed_addr constant [39 x i8] c"kdata = OPENSSL_zalloc(sizeof(*kdata))\00", align 1
@.str.230 = private unnamed_addr constant [29 x i8] c"name = OPENSSL_strdup(value)\00", align 1
@.str.231 = private unnamed_addr constant [16 x i8] c"KDF_PARAM_ERROR\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"cekalg\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"KDF_CTRL_ERROR\00", align 1
@.str.234 = private unnamed_addr constant [49 x i8] c"got = OPENSSL_malloc(got_len == 0 ? 1 : got_len)\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"KDF_DERIVE_ERROR\00", align 1
@.str.236 = private unnamed_addr constant [13 x i8] c"KDF_MISMATCH\00", align 1
@.str.237 = private unnamed_addr constant [8 x i8] c"PKEYKDF\00", align 1
@.str.238 = private unnamed_addr constant [15 x i8] c"PrivPubKeyPair\00", align 1
@.str.239 = private unnamed_addr constant [28 x i8] c"priv = OPENSSL_strdup(pair)\00", align 1
@.str.240 = private unnamed_addr constant [24 x i8] c"pub = strchr(priv, ':')\00", align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"PARSING_ERROR\00", align 1
@.str.242 = private unnamed_addr constant [34 x i8] c"find_key(&pk, priv, private_keys)\00", align 1
@.str.243 = private unnamed_addr constant [27 x i8] c"Can't find private key: %s\00", align 1
@.str.244 = private unnamed_addr constant [20 x i8] c"MISSING_PRIVATE_KEY\00", align 1
@.str.245 = private unnamed_addr constant [34 x i8] c"find_key(&pubk, pub, public_keys)\00", align 1
@.str.246 = private unnamed_addr constant [26 x i8] c"Can't find public key: %s\00", align 1
@.str.247 = private unnamed_addr constant [19 x i8] c"MISSING_PUBLIC_KEY\00", align 1
@.str.248 = private unnamed_addr constant [37 x i8] c"data = OPENSSL_malloc(sizeof(*data))\00", align 1
@.str.249 = private unnamed_addr constant [22 x i8] c"KEYPAIR_TYPE_MISMATCH\00", align 1
@.str.250 = private unnamed_addr constant [17 x i8] c"KEYPAIR_MISMATCH\00", align 1
@.str.251 = private unnamed_addr constant [27 x i8] c"UNSUPPORTED_KEY_COMPARISON\00", align 1
@.str.252 = private unnamed_addr constant [35 x i8] c"Unexpected error in key comparison\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"KeyGen\00", align 1
@.str.254 = private unnamed_addr constant [55 x i8] c"genctx = EVP_PKEY_CTX_new_from_name(libctx, alg, NULL)\00", align 1
@.str.255 = private unnamed_addr constant [18 x i8] c"KEYGEN_INIT_ERROR\00", align 1
@.str.256 = private unnamed_addr constant [8 x i8] c"KeyName\00", align 1
@.str.257 = private unnamed_addr constant [40 x i8] c"keygen->keyname = OPENSSL_strdup(value)\00", align 1
@.str.258 = private unnamed_addr constant [22 x i8] c"KEYGEN_GENERATE_ERROR\00", align 1
@.str.259 = private unnamed_addr constant [33 x i8] c"Warning: legacy key generated %s\00", align 1
@.str.260 = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@mac_test_init.epilogue = internal constant [13 x i8] c" by EVP_PKEY\00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"CMAC\00", align 1
@.str.262 = private unnamed_addr constant [9 x i8] c"Poly1305\00", align 1
@.str.263 = private unnamed_addr constant [8 x i8] c"SipHash\00", align 1
@.str.264 = private unnamed_addr constant [7 x i8] c"Custom\00", align 1
@.str.265 = private unnamed_addr constant [5 x i8] c"Salt\00", align 1
@.str.266 = private unnamed_addr constant [10 x i8] c"Algorithm\00", align 1
@.str.267 = private unnamed_addr constant [4 x i8] c"XOF\00", align 1
@.str.268 = private unnamed_addr constant [11 x i8] c"OutputSize\00", align 1
@.str.269 = private unnamed_addr constant [10 x i8] c"BlockSize\00", align 1
@.str.270 = private unnamed_addr constant [27 x i8] c"Trying the EVP_MAC %s test\00", align 1
@.str.271 = private unnamed_addr constant [35 x i8] c"Trying the EVP_MAC %s test with %s\00", align 1
@.str.272 = private unnamed_addr constant [15 x i8] c"MAC_BAD_PARAMS\00", align 1
@.str.273 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.274 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.275 = private unnamed_addr constant [24 x i8] c"MAC_TOO_MANY_PARAMETERS\00", align 1
@.str.276 = private unnamed_addr constant [31 x i8] c"tmpkey = OPENSSL_strdup(value)\00", align 1
@.str.277 = private unnamed_addr constant [16 x i8] c"MAC_PARAM_ERROR\00", align 1
@.str.278 = private unnamed_addr constant [17 x i8] c"MAC_CREATE_ERROR\00", align 1
@.str.279 = private unnamed_addr constant [15 x i8] c"MAC_INIT_ERROR\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.281 = private unnamed_addr constant [11 x i8] c"block-size\00", align 1
@.str.282 = private unnamed_addr constant [35 x i8] c"EVP_MAC_CTX_get_params(ctx, sizes)\00", align 1
@.str.283 = private unnamed_addr constant [12 x i8] c"output_size\00", align 1
@.str.284 = private unnamed_addr constant [22 x i8] c"expected->output_size\00", align 1
@.str.285 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@.str.286 = private unnamed_addr constant [21 x i8] c"expected->block_size\00", align 1
@.str.287 = private unnamed_addr constant [17 x i8] c"MAC_UPDATE_ERROR\00", align 1
@.str.288 = private unnamed_addr constant [43 x i8] c"got = OPENSSL_malloc(expected->output_len)\00", align 1
@.str.289 = private unnamed_addr constant [13 x i8] c"TEST_MAC_ERR\00", align 1
@.str.290 = private unnamed_addr constant [16 x i8] c"MAC_FINAL_ERROR\00", align 1
@.str.291 = private unnamed_addr constant [23 x i8] c"MAC_FINAL_LENGTH_ERROR\00", align 1
@.str.292 = private unnamed_addr constant [160 x i8] c"EVP_Q_mac(libctx, expected->mac_name, NULL, expected->alg, params, expected->key, expected->key_len, expected->input, expected->input_len, got, got_len, &size)\00", align 1
@.str.293 = private unnamed_addr constant [17 x i8] c"EVP_Q_mac failed\00", align 1
@.str.294 = private unnamed_addr constant [28 x i8] c"Trying the EVP_PKEY %s test\00", align 1
@.str.295 = private unnamed_addr constant [36 x i8] c"Trying the EVP_PKEY %s test with %s\00", align 1
@.str.296 = private unnamed_addr constant [37 x i8] c"skipping, PKEY CMAC '%s' is disabled\00", align 1
@.str.297 = private unnamed_addr constant [55 x i8] c"cipher = EVP_CIPHER_fetch(libctx, expected->alg, NULL)\00", align 1
@.str.298 = private unnamed_addr constant [21 x i8] c"MAC_KEY_CREATE_ERROR\00", align 1
@.str.299 = private unnamed_addr constant [32 x i8] c"skipping, HMAC '%s' is disabled\00", align 1
@.str.300 = private unnamed_addr constant [21 x i8] c"EVPPKEYCTXCTRL_ERROR\00", align 1
@.str.301 = private unnamed_addr constant [23 x i8] c"DIGESTSIGNUPDATE_ERROR\00", align 1
@.str.302 = private unnamed_addr constant [18 x i8] c"OneShotDigestSign\00", align 1
@.str.303 = private unnamed_addr constant [24 x i8] c"DIGESTSIGN_LENGTH_ERROR\00", align 1
@.str.304 = private unnamed_addr constant [17 x i8] c"DIGESTSIGN_ERROR\00", align 1
@.str.305 = private unnamed_addr constant [20 x i8] c"OneShotDigestVerify\00", align 1
@.str.306 = private unnamed_addr constant [4 x i8] c"PBE\00", align 1
@.str.307 = private unnamed_addr constant [7 x i8] c"scrypt\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"pbkdf2\00", align 1
@.str.309 = private unnamed_addr constant [7 x i8] c"pkcs12\00", align 1
@.str.310 = private unnamed_addr constant [25 x i8] c"Unknown pbe algorithm %s\00", align 1
@.str.311 = private unnamed_addr constant [37 x i8] c"pdat = OPENSSL_zalloc(sizeof(*pdat))\00", align 1
@.str.312 = private unnamed_addr constant [9 x i8] c"Password\00", align 1
@.str.313 = private unnamed_addr constant [3 x i8] c"MD\00", align 1
@.str.314 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.315 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.316 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.317 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.318 = private unnamed_addr constant [7 x i8] c"maxmem\00", align 1
@.str.319 = private unnamed_addr constant [3 x i8] c"*p\00", align 1
@.str.320 = private unnamed_addr constant [28 x i8] c"Invalid empty integer value\00", align 1
@.str.321 = private unnamed_addr constant [30 x i8] c"Integer overflow in string %s\00", align 1
@.str.322 = private unnamed_addr constant [27 x i8] c"isdigit((unsigned char)*p)\00", align 1
@.str.323 = private unnamed_addr constant [31 x i8] c"Invalid character in string %s\00", align 1
@.str.324 = private unnamed_addr constant [40 x i8] c"key = OPENSSL_malloc(expected->key_len)\00", align 1
@.str.325 = private unnamed_addr constant [13 x i8] c"PBKDF2_ERROR\00", align 1
@.str.326 = private unnamed_addr constant [13 x i8] c"SCRYPT_ERROR\00", align 1
@.str.327 = private unnamed_addr constant [13 x i8] c"PKCS12_ERROR\00", align 1
@.str.328 = private unnamed_addr constant [13 x i8] c"KEY_MISMATCH\00", align 1
@.str.329 = private unnamed_addr constant [8 x i8] c"Decrypt\00", align 1
@.str.330 = private unnamed_addr constant [31 x i8] c"skipping, key '%s' is disabled\00", align 1
@.str.331 = private unnamed_addr constant [60 x i8] c"kdata->ctx = EVP_PKEY_CTX_new_from_pkey(libctx, pkey, NULL)\00", align 1
@.str.332 = private unnamed_addr constant [17 x i8] c"KEYOP_INIT_ERROR\00", align 1
@.str.333 = private unnamed_addr constant [19 x i8] c"KEYOP_LENGTH_ERROR\00", align 1
@.str.334 = private unnamed_addr constant [12 x i8] c"KEYOP_ERROR\00", align 1
@.str.335 = private unnamed_addr constant [15 x i8] c"KEYOP_MISMATCH\00", align 1
@.str.336 = private unnamed_addr constant [39 x i8] c"copy = EVP_PKEY_CTX_dup(expected->ctx)\00", align 1
@.str.337 = private unnamed_addr constant [7 x i8] c"Derive\00", align 1
@.str.338 = private unnamed_addr constant [16 x i8] c"PeerKeyValidate\00", align 1
@.str.339 = private unnamed_addr constant [8 x i8] c"PeerKey\00", align 1
@.str.340 = private unnamed_addr constant [22 x i8] c"DERIVE_SET_PEER_ERROR\00", align 1
@.str.341 = private unnamed_addr constant [13 x i8] c"SharedSecret\00", align 1
@.str.342 = private unnamed_addr constant [39 x i8] c"dctx = EVP_PKEY_CTX_dup(expected->ctx)\00", align 1
@.str.343 = private unnamed_addr constant [13 x i8] c"DERIVE_ERROR\00", align 1
@.str.344 = private unnamed_addr constant [23 x i8] c"SHARED_SECRET_MISMATCH\00", align 1
@.str.345 = private unnamed_addr constant [5 x i8] c"Sign\00", align 1
@.str.346 = private unnamed_addr constant [14 x i8] c"VerifyRecover\00", align 1
@.str.347 = private unnamed_addr constant [7 x i8] c"Verify\00", align 1
@.str.348 = private unnamed_addr constant [15 x i8] c"%s:%d %s error\00", align 1
@.str.349 = private unnamed_addr constant [55 x i8] c"%s:%d: Source of above error (%s); unexpected error %s\00", align 1
@.str.350 = private unnamed_addr constant [50 x i8] c"%s:%d: Source of above error; unexpected error %s\00", align 1
@.str.351 = private unnamed_addr constant [38 x i8] c"%s:%d: Succeeded but was expecting %s\00", align 1
@.str.352 = private unnamed_addr constant [26 x i8] c"%s:%d: Expected %s got %s\00", align 1
@.str.354 = private unnamed_addr constant [35 x i8] c"%s:%d: Expected error \22%s\22 not set\00", align 1
@.str.355 = private unnamed_addr constant [63 x i8] c"%s:%d: Expected error \22%s\22, no strings available. Assuming ok.\00", align 1
@.str.356 = private unnamed_addr constant [37 x i8] c"%s:%d: Expected error \22%s\22, got \22%s\22\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([11 x %struct.options_st], [11 x %struct.options_st]* @test_get_options.test_options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %sw.bb, %entry
  %config_file.0.ph = phi i8* [ %call1, %sw.bb ], [ null, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %call = tail call i32 @opt_next() #13
  switch i32 %call, label %cleanup [
    i32 0, label %while.end
    i32 1, label %sw.bb
    i32 500, label %while.cond.backedge
    i32 501, label %while.cond.backedge
    i32 502, label %while.cond.backedge
    i32 503, label %while.cond.backedge
    i32 504, label %while.cond.backedge
    i32 505, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  %call1 = tail call i8* @opt_arg() #13
  br label %while.cond.outer, !llvm.loop !3

while.end:                                        ; preds = %while.cond
  %call4 = tail call i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef nonnull @libctx, %struct.ossl_provider_st** noundef nonnull @prov_null, i8* noundef %config_file.0.ph, %struct.ossl_provider_st** noundef null, i8* noundef null) #13
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %while.end
  %call5 = tail call i64 @test_get_argument_count() #13
  %cmp6 = icmp eq i64 %call5, 0
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %conv = trunc i64 %call5 to i32
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 (i32)* noundef nonnull @run_file_tests, i32 noundef %conv, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %if.end, %while.end, %if.end8
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %while.end ], [ 0, %if.end ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local i8* @opt_arg() local_unnamed_addr #3

declare dso_local i32 @test_get_libctx(%struct.ossl_lib_ctx_st** noundef, %struct.ossl_provider_st** noundef, i8* noundef, %struct.ossl_provider_st** noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i64 @test_get_argument_count() local_unnamed_addr #3

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @run_file_tests(i32 noundef %i) #1 {
entry:
  %conv = sext i32 %i to i64
  %call = tail call i8* @test_get_argument(i64 noundef %conv) #13
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef 6608, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3747) #13
  %0 = bitcast i8* %call1 to %struct.evp_test_st*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3747, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* noundef %call1) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %s = bitcast i8* %call1 to %struct.stanza_st*
  %call3 = tail call i32 @test_start_file(%struct.stanza_st* noundef %s, i8* noundef %call) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %fp = getelementptr inbounds i8, i8* %call1, i64 8
  %1 = bitcast i8* %fp to %struct.bio_st**
  %2 = load %struct.bio_st*, %struct.bio_st** %1, align 8, !tbaa !5
  %call849 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %2, i32 noundef 2, i64 noundef 0, i8* noundef null) #13
  %conv950 = trunc i64 %call849 to i32
  %tobool10.not51 = icmp eq i32 %conv950, 0
  br i1 %tobool10.not51, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %skip = getelementptr inbounds i8, i8* %call1, i64 6552
  %3 = bitcast i8* %skip to i32*
  %numskip = getelementptr inbounds i8, i8* %call1, i64 32
  %4 = bitcast i8* %numskip to i32*
  br label %while.body

if.then5:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3750) #13
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call11 = tail call fastcc i32 @parse(%struct.evp_test_st* noundef nonnull %0) #14
  %5 = load i32, i32* %3, align 8, !tbaa !12
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %while.body
  %6 = load i32, i32* %4, align 8, !tbaa !13
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %4, align 8, !tbaa !13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then13, %lor.lhs.false
  %7 = load %struct.bio_st*, %struct.bio_st** %1, align 8, !tbaa !5
  %call8 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %7, i32 noundef 2, i64 noundef 0, i8* noundef null) #13
  %conv9 = trunc i64 %call8 to i32
  %tobool10.not = icmp eq i32 %conv9, 0
  br i1 %tobool10.not, label %while.body, label %while.end, !llvm.loop !14

if.end15:                                         ; preds = %while.body
  %cmp = icmp eq i32 %call11, 0
  br i1 %cmp, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %call17 = tail call fastcc i32 @run_test(%struct.evp_test_st* noundef nonnull %0) #14
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %while.cond.backedge

if.then19:                                        ; preds = %lor.lhs.false, %if.end15
  %errors = getelementptr inbounds i8, i8* %call1, i64 24
  %8 = bitcast i8* %errors to i32*
  %9 = load i32, i32* %8, align 8, !tbaa !15
  %inc21 = add nsw i32 %9, 1
  store i32 %inc21, i32* %8, align 8, !tbaa !15
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader, %if.then19
  %call24 = tail call i32 @test_end_file(%struct.stanza_st* noundef nonnull %s) #13
  tail call fastcc void @clear_test(%struct.evp_test_st* noundef nonnull %0) #14
  %10 = load %struct.key_list_st*, %struct.key_list_st** @public_keys, align 8, !tbaa !16
  tail call fastcc void @free_key_list(%struct.key_list_st* noundef %10) #14
  %11 = load %struct.key_list_st*, %struct.key_list_st** @private_keys, align 8, !tbaa !16
  tail call fastcc void @free_key_list(%struct.key_list_st* noundef %11) #14
  %key = getelementptr inbounds i8, i8* %call1, i64 2440
  %12 = bitcast i8* %key to %struct.bio_st**
  %13 = load %struct.bio_st*, %struct.bio_st** %12, align 8, !tbaa !17
  %call26 = tail call i32 @BIO_free(%struct.bio_st* noundef %13) #13
  %errors28 = getelementptr inbounds i8, i8* %call1, i64 24
  %14 = bitcast i8* %errors28 to i32*
  %15 = load i32, i32* %14, align 8, !tbaa !15
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3772) #13
  %cmp29 = icmp eq i32 %15, 0
  %conv30 = zext i1 %cmp29 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %while.end, %if.then5
  %retval.0 = phi i32 [ %conv30, %while.end ], [ 0, %if.then5 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @prov_null, align 8, !tbaa !16
  %call = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %0) #13
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %1) #13
  ret void
}

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_start_file(%struct.stanza_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse(%struct.evp_test_st* noundef %t) unnamed_addr #1 {
entry:
  %keybin = alloca i8*, align 8
  %keylen = alloca i64, align 8
  %fp = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 1
  %s = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0
  %numpairs = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 7
  %arrayidx = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 8, i64 0
  %key9418 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %arrayidx, i64 0, i32 0
  %0 = bitcast i8** %keybin to i8*
  %1 = bitcast i64* %keylen to i8*
  %key29 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 9
  %curr = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 2
  br label %top

top:                                              ; preds = %top.backedge, %entry
  %skip_availablein.0 = phi i32 [ 0, %entry ], [ %skip_availablein.1398, %top.backedge ]
  br label %do.body

do.body:                                          ; preds = %do.cond, %top
  %2 = load %struct.bio_st*, %struct.bio_st** %fp, align 8, !tbaa !5
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %2, i32 noundef 2, i64 noundef 0, i8* noundef null) #13
  %conv = trunc i64 %call to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.end, label %cleanup252

if.end:                                           ; preds = %do.body
  tail call fastcc void @clear_test(%struct.evp_test_st* noundef nonnull %t) #14
  %call2 = tail call i32 @test_readstanza(%struct.stanza_st* noundef nonnull %s) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup252, label %do.cond

do.cond:                                          ; preds = %if.end
  %3 = load i32, i32* %numpairs, align 4, !tbaa !18
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.cond
  %4 = load i8*, i8** %key9418, align 8, !tbaa !20
  %call10419 = tail call i32 @strcmp(i8* noundef %4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #15
  %cmp11420 = icmp eq i32 %call10419, 0
  br i1 %cmp11420, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end115, %do.end
  %pp.0.lcssa = phi %struct.pair_st* [ %arrayidx, %do.end ], [ %incdec.ptr116, %if.end115 ]
  %skip_availablein.1.lcssa = phi i32 [ %skip_availablein.0, %do.end ], [ %inc, %if.end115 ]
  %5 = load %struct.bio_st*, %struct.bio_st** %key29, align 8, !tbaa !17
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call16 = tail call %struct.evp_pkey_st* @PEM_read_bio_PrivateKey_ex(%struct.bio_st* noundef %5, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null, %struct.ossl_lib_ctx_st* noundef %6, i8* noundef null) #13
  %cmp17 = icmp eq %struct.evp_pkey_st* %call16, null
  br i1 %cmp17, label %land.lhs.true, label %if.then123

land.lhs.true:                                    ; preds = %if.then13
  %call19 = tail call fastcc i32 @key_unsupported() #14
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.then123

if.then21:                                        ; preds = %land.lhs.true
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #13
  %value = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0.lcssa, i64 0, i32 1
  %7 = load i8*, i8** %value, align 8, !tbaa !22
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3589, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* noundef %7) #13
  tail call void @test_openssl_errors() #13
  br label %cleanup252

if.else:                                          ; preds = %do.end, %if.end115
  %8 = phi i8* [ %22, %if.end115 ], [ %4, %do.end ]
  %skip_availablein.1422 = phi i32 [ %inc, %if.end115 ], [ %skip_availablein.0, %do.end ]
  %pp.0421 = phi %struct.pair_st* [ %incdec.ptr116, %if.end115 ], [ %arrayidx, %do.end ]
  %call24 = tail call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0)) #15
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else39

if.then27:                                        ; preds = %if.else
  %9 = load %struct.bio_st*, %struct.bio_st** %key29, align 8, !tbaa !17
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call30 = tail call %struct.evp_pkey_st* @PEM_read_bio_PUBKEY_ex(%struct.bio_st* noundef %9, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null, %struct.ossl_lib_ctx_st* noundef %10, i8* noundef null) #13
  %cmp31 = icmp eq %struct.evp_pkey_st* %call30, null
  br i1 %cmp31, label %land.lhs.true33, label %if.then123

land.lhs.true33:                                  ; preds = %if.then27
  %call34 = tail call fastcc i32 @key_unsupported() #14
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %if.then123

if.then36:                                        ; preds = %land.lhs.true33
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #13
  %value37 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0421, i64 0, i32 1
  %11 = load i8*, i8** %value37, align 8, !tbaa !22
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3598, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i8* noundef %11) #13
  tail call void @test_openssl_errors() #13
  br label %cleanup252

if.else39:                                        ; preds = %if.else
  %call41 = tail call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0)) #15
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else39
  %call45 = tail call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0)) #15
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.else101

if.then48:                                        ; preds = %lor.lhs.false, %if.else39
  %private_keys.public_keys = phi %struct.key_list_st** [ @public_keys, %lor.lhs.false ], [ @private_keys, %if.else39 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  %value56 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0421, i64 0, i32 1
  %12 = load i8*, i8** %value56, align 8, !tbaa !22
  %call57 = tail call i8* @strchr(i8* noundef %12, i32 noundef 58) #15
  %cmp58.not = icmp eq i8* %call57, null
  br i1 %cmp58.not, label %if.then70, label %if.then60

if.then60:                                        ; preds = %if.then48
  %incdec.ptr = getelementptr inbounds i8, i8* %call57, i64 1
  store i8 0, i8* %call57, align 1, !tbaa !23
  %call61 = tail call i8* @strchr(i8* noundef nonnull %incdec.ptr, i32 noundef 58) #15
  %cmp62.not = icmp eq i8* %call61, null
  br i1 %cmp62.not, label %if.then60.if.then70_crit_edge, label %if.end72

if.then60.if.then70_crit_edge:                    ; preds = %if.then60
  %key9.le416.le.phi.trans.insert = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0421, i64 0, i32 0
  %.pre = load i8*, i8** %key9.le416.le.phi.trans.insert, align 8, !tbaa !20
  br label %if.then70

if.then70:                                        ; preds = %if.then48, %if.then60.if.then70_crit_edge
  %13 = phi i8* [ %.pre, %if.then60.if.then70_crit_edge ], [ %8, %if.then48 ]
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3623, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i8* noundef %13) #13
  br label %cleanup.thread

if.end72:                                         ; preds = %if.then60
  store i8 0, i8* %call61, align 1, !tbaa !23
  %call73 = tail call i32 @OBJ_txt2nid(i8* noundef nonnull %incdec.ptr) #13
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end72
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3629, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0)) #13
  br label %cleanup.thread

if.end77:                                         ; preds = %if.end72
  %incdec.ptr65 = getelementptr inbounds i8, i8* %call61, i64 1
  %call78 = call fastcc i32 @parse_bin(i8* noundef nonnull %incdec.ptr65, i8** noundef nonnull %keybin, i64* noundef nonnull %keylen) #14
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end77
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3633, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0)) #13
  br label %cleanup.thread

if.end81:                                         ; preds = %if.end77
  %14 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %15 = load i8*, i8** %keybin, align 8, !tbaa !16
  %16 = load i64, i64* %keylen, align 8, !tbaa !24
  br i1 %cmp42, label %if.then84, label %if.else86

if.then84:                                        ; preds = %if.end81
  %call85 = tail call %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef %14, i8* noundef nonnull %incdec.ptr, i8* noundef null, i8* noundef %15, i64 noundef %16) #13
  br label %if.end88

if.else86:                                        ; preds = %if.end81
  %call87 = tail call %struct.evp_pkey_st* @EVP_PKEY_new_raw_public_key_ex(%struct.ossl_lib_ctx_st* noundef %14, i8* noundef nonnull %incdec.ptr, i8* noundef null, i8* noundef %15, i64 noundef %16) #13
  br label %if.end88

if.end88:                                         ; preds = %if.else86, %if.then84
  %pkey.0 = phi %struct.evp_pkey_st* [ %call85, %if.then84 ], [ %call87, %if.else86 ]
  %cmp89 = icmp eq %struct.evp_pkey_st* %pkey.0, null
  br i1 %cmp89, label %land.lhs.true91, label %cleanup

land.lhs.true91:                                  ; preds = %if.end88
  %call92 = tail call fastcc i32 @key_unsupported() #14
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then94, label %cleanup

if.then94:                                        ; preds = %land.lhs.true91
  %key9.le416.le424 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0421, i64 0, i32 0
  %17 = load i8*, i8** %key9.le416.le424, align 8, !tbaa !20
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3643, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i8* noundef %17) #13
  tail call void @CRYPTO_free(i8* noundef %15, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3644) #13
  tail call void @test_openssl_errors() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then70, %if.then76, %if.then94, %if.then80
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  br label %cleanup252

cleanup:                                          ; preds = %if.end88, %land.lhs.true91
  tail call void @CRYPTO_free(i8* noundef %15, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3648) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  br label %if.then123

if.else101:                                       ; preds = %lor.lhs.false
  %call103 = tail call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #15
  %cmp104 = icmp eq i32 %call103, 0
  br i1 %cmp104, label %if.then106, label %if.end144

if.then106:                                       ; preds = %if.else101
  %value107 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0421, i64 0, i32 1
  %18 = load i8*, i8** %value107, align 8, !tbaa !22
  %call108 = tail call fastcc i32 @prov_available(i8* noundef %18) #14
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then110, label %if.end115

if.then110:                                       ; preds = %if.then106
  %value107.le = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0421, i64 0, i32 1
  %19 = load i8*, i8** %value107.le, align 8, !tbaa !22
  %test_file = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %test_file, align 8, !tbaa !26
  %start114 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 3
  %21 = load i32, i32* %start114, align 4, !tbaa !27
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3652, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i64 0, i64 0), i8* noundef %19, i8* noundef %20, i32 noundef %21) #13
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip, align 8, !tbaa !12
  br label %cleanup252

if.end115:                                        ; preds = %if.then106
  %inc = add nsw i32 %skip_availablein.1422, 1
  %incdec.ptr116 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0421, i64 1
  %key9 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %incdec.ptr116, i64 0, i32 0
  %22 = load i8*, i8** %key9, align 8, !tbaa !20
  %call10 = tail call i32 @strcmp(i8* noundef %22, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)) #15
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then123:                                       ; preds = %cleanup, %land.lhs.true, %if.then13, %land.lhs.true33, %if.then27
  %pp.0403 = phi %struct.pair_st* [ %pp.0421, %if.then27 ], [ %pp.0421, %land.lhs.true33 ], [ %pp.0.lcssa, %if.then13 ], [ %pp.0.lcssa, %land.lhs.true ], [ %pp.0421, %cleanup ]
  %skip_availablein.1398 = phi i32 [ %skip_availablein.1422, %if.then27 ], [ %skip_availablein.1422, %land.lhs.true33 ], [ %skip_availablein.1.lcssa, %if.then13 ], [ %skip_availablein.1.lcssa, %land.lhs.true ], [ %skip_availablein.1422, %cleanup ]
  %pkey.2.ph = phi %struct.evp_pkey_st* [ %call30, %if.then27 ], [ null, %land.lhs.true33 ], [ %call16, %if.then13 ], [ null, %land.lhs.true ], [ %pkey.0, %cleanup ]
  %klist.1.ph = phi %struct.key_list_st** [ @public_keys, %if.then27 ], [ @public_keys, %land.lhs.true33 ], [ @private_keys, %if.then13 ], [ @private_keys, %land.lhs.true ], [ %private_keys.public_keys, %cleanup ]
  %value124 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0403, i64 0, i32 1
  %23 = load i8*, i8** %value124, align 8, !tbaa !22
  %24 = load %struct.key_list_st*, %struct.key_list_st** %klist.1.ph, align 8, !tbaa !16
  %call125 = tail call fastcc i32 @find_key(%struct.evp_pkey_st** noundef null, i8* noundef %23, %struct.key_list_st* noundef %24) #14
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end129, label %if.then127

if.then127:                                       ; preds = %if.then123
  %value124.le = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0403, i64 0, i32 1
  %25 = load i8*, i8** %value124.le, align 8, !tbaa !22
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3664, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* noundef %25) #13
  br label %cleanup252

if.end129:                                        ; preds = %if.then123
  %call130 = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3667) #13
  %call131 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3667, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0), i8* noundef %call130) #13
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %cleanup252, label %if.end134

if.end134:                                        ; preds = %if.end129
  %call135 = tail call fastcc i8* @take_value(%struct.pair_st* noundef nonnull %pp.0403) #14
  %name = bitcast i8* %call130 to i8**
  store i8* %call135, i8** %name, align 8, !tbaa !28
  %key136 = getelementptr inbounds i8, i8* %call130, i64 8
  %26 = bitcast i8* %key136 to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %pkey.2.ph, %struct.evp_pkey_st** %26, align 8, !tbaa !30
  %27 = load %struct.key_list_st*, %struct.key_list_st** %klist.1.ph, align 8, !tbaa !16
  %next = getelementptr inbounds i8, i8* %call130, i64 16
  %28 = bitcast i8* %next to %struct.key_list_st**
  store %struct.key_list_st* %27, %struct.key_list_st** %28, align 8, !tbaa !31
  %29 = bitcast %struct.key_list_st** %klist.1.ph to i8**
  store i8* %call130, i8** %29, align 8, !tbaa !16
  %30 = load i32, i32* %numpairs, align 4, !tbaa !18
  %sub = sub nsw i32 %30, %skip_availablein.1398
  %cmp139.not = icmp eq i32 %sub, 1
  br i1 %cmp139.not, label %top.backedge, label %if.then141

if.then141:                                       ; preds = %if.end134
  %31 = load i32, i32* %curr, align 8, !tbaa !32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3676, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i32 noundef %31) #13
  br label %top.backedge

top.backedge:                                     ; preds = %if.then141, %if.end134
  br label %top

if.end144:                                        ; preds = %if.else101
  %key9.le = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0421, i64 0, i32 0
  %call146 = tail call fastcc %struct.evp_test_method_st* @find_test(i8* noundef %8) #14
  %meth = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 3
  store %struct.evp_test_method_st* %call146, %struct.evp_test_method_st** %meth, align 8, !tbaa !33
  %32 = bitcast %struct.evp_test_method_st* %call146 to i8*
  %call147 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3681, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0), i8* noundef %32) #13
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %cleanup252, label %if.end150

if.end150:                                        ; preds = %if.end144
  %33 = load %struct.evp_test_method_st*, %struct.evp_test_method_st** %meth, align 8, !tbaa !33
  %init = getelementptr inbounds %struct.evp_test_method_st, %struct.evp_test_method_st* %33, i64 0, i32 1
  %34 = load i32 (%struct.evp_test_st*, i8*)*, i32 (%struct.evp_test_st*, i8*)** %init, align 8, !tbaa !34
  %value152 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0421, i64 0, i32 1
  %35 = load i8*, i8** %value152, align 8, !tbaa !22
  %call153 = tail call i32 %34(%struct.evp_test_st* noundef nonnull %t, i8* noundef %35) #13
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.then155, label %if.end158

if.then155:                                       ; preds = %if.end150
  %36 = load i8*, i8** %key9.le, align 8, !tbaa !20
  %37 = load i8*, i8** %value152, align 8, !tbaa !22
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3684, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* noundef %36, i8* noundef %37) #13
  br label %cleanup252

if.end158:                                        ; preds = %if.end150
  %skip159 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  %38 = load i32, i32* %skip159, align 8, !tbaa !12
  %cmp160 = icmp eq i32 %38, 1
  br i1 %cmp160, label %cleanup252, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end158
  %39 = load i32, i32* %numpairs, align 4, !tbaa !18
  %sub167429 = sub nsw i32 %39, %skip_availablein.1422
  %cmp168430 = icmp sgt i32 %sub167429, 1
  br i1 %cmp168430, label %for.body.lr.ph, label %cleanup252

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %reason = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 7
  %expected_err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0432 = phi i32 [ 1, %for.body.lr.ph ], [ %inc251, %for.inc ]
  %pp.0.pn431 = phi %struct.pair_st* [ %pp.0421, %for.body.lr.ph ], [ %pp.1433, %for.inc ]
  %pp.1433 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0.pn431, i64 1
  %key170 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.1433, i64 0, i32 0
  %40 = load i8*, i8** %key170, align 8, !tbaa !20
  %call171 = tail call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0)) #15
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %if.then174, label %if.else180

if.then174:                                       ; preds = %for.body
  %test_file176 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 0
  %41 = load i8*, i8** %test_file176, align 8, !tbaa !26
  %start178 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 3
  %42 = load i32, i32* %start178, align 4, !tbaa !27
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3700, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i64 0, i64 0), i8* noundef %41, i32 noundef %42) #13
  store i32 1, i32* %skip159, align 8, !tbaa !12
  br label %cleanup252

if.else180:                                       ; preds = %for.body
  %call182 = tail call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0)) #15
  %cmp183 = icmp eq i32 %call182, 0
  br i1 %cmp183, label %if.then185, label %if.else188

if.then185:                                       ; preds = %if.else180
  %43 = load i32, i32* %curr, align 8, !tbaa !32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3706, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0), i32 noundef %43) #13
  br label %cleanup252

if.else188:                                       ; preds = %if.else180
  %call190 = tail call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #15
  %cmp191 = icmp eq i32 %call190, 0
  br i1 %cmp191, label %if.then193, label %if.else202

if.then193:                                       ; preds = %if.else188
  %44 = load i8*, i8** %expected_err, align 8, !tbaa !36
  %cmp194.not = icmp eq i8* %44, null
  br i1 %cmp194.not, label %for.inc.sink.split, label %if.then196

if.then196:                                       ; preds = %if.then193
  %45 = load i32, i32* %curr, align 8, !tbaa !32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3710, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0), i32 noundef %45) #13
  br label %cleanup252

if.else202:                                       ; preds = %if.else188
  %call204 = tail call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0)) #15
  %cmp205 = icmp eq i32 %call204, 0
  br i1 %cmp205, label %for.inc, label %if.else208

if.else208:                                       ; preds = %if.else202
  %call210 = tail call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0)) #15
  %cmp211 = icmp eq i32 %call210, 0
  br i1 %cmp211, label %if.then213, label %if.else222

if.then213:                                       ; preds = %if.else208
  %46 = load i8*, i8** %reason, align 8, !tbaa !37
  %cmp214.not = icmp eq i8* %46, null
  br i1 %cmp214.not, label %for.inc.sink.split, label %if.then216

if.then216:                                       ; preds = %if.then213
  %47 = load i32, i32* %curr, align 8, !tbaa !32
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3718, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i64 0, i64 0), i32 noundef %47) #13
  br label %cleanup252

if.else222:                                       ; preds = %if.else208
  %48 = load %struct.evp_test_method_st*, %struct.evp_test_method_st** %meth, align 8, !tbaa !33
  %parse = getelementptr inbounds %struct.evp_test_method_st, %struct.evp_test_method_st* %48, i64 0, i32 3
  %49 = load i32 (%struct.evp_test_st*, i8*, i8*)*, i32 (%struct.evp_test_st*, i8*, i8*)** %parse, align 8, !tbaa !38
  %value225 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0.pn431, i64 1, i32 1
  %50 = load i8*, i8** %value225, align 8, !tbaa !22
  %call226 = tail call i32 %49(%struct.evp_test_st* noundef nonnull %t, i8* noundef %40, i8* noundef %50) #13
  %cmp227 = icmp eq i32 %call226, 0
  br i1 %cmp227, label %if.then229, label %if.end233

if.then229:                                       ; preds = %if.else222
  %key170.le501 = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.1433, i64 0, i32 0
  %51 = load i32, i32* %curr, align 8, !tbaa !32
  %52 = load i8*, i8** %key170.le501, align 8, !tbaa !20
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3727, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.45, i64 0, i64 0), i32 noundef %51, i8* noundef %52) #13
  br label %cleanup252

if.end233:                                        ; preds = %if.else222
  %cmp234 = icmp slt i32 %call226, 0
  br i1 %cmp234, label %if.then236, label %for.inc

if.then236:                                       ; preds = %if.end233
  %key170.le = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.1433, i64 0, i32 0
  %value225.le = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp.0.pn431, i64 1, i32 1
  %53 = load i32, i32* %curr, align 8, !tbaa !32
  %54 = load i8*, i8** %key170.le, align 8, !tbaa !20
  %55 = load i8*, i8** %value225.le, align 8, !tbaa !22
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3732, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i64 0, i64 0), i32 noundef %53, i8* noundef %54, i8* noundef %55) #13
  br label %cleanup252

for.inc.sink.split:                               ; preds = %if.then213, %if.then193
  %expected_err.sink = phi i8** [ %expected_err, %if.then193 ], [ %reason, %if.then213 ]
  %call200 = tail call fastcc i8* @take_value(%struct.pair_st* noundef nonnull %pp.1433) #14
  store i8* %call200, i8** %expected_err.sink, align 8, !tbaa !16
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end233, %if.else202
  %inc251 = add nuw nsw i32 %i.0432, 1
  %56 = load i32, i32* %numpairs, align 4, !tbaa !18
  %sub167 = sub nsw i32 %56, %skip_availablein.1422
  %cmp168 = icmp slt i32 %inc251, %sub167
  br i1 %cmp168, label %for.body, label %cleanup252, !llvm.loop !39

cleanup252:                                       ; preds = %if.end129, %if.end, %do.body, %for.inc, %for.cond.preheader, %cleanup.thread, %if.then229, %if.then236, %if.end158, %if.end144, %if.then216, %if.then196, %if.then185, %if.then174, %if.then155, %if.then127, %if.then110, %if.then36, %if.then21
  %retval.6 = phi i32 [ 0, %if.then127 ], [ 0, %if.then174 ], [ 0, %if.then185 ], [ 0, %if.then196 ], [ 0, %if.then216 ], [ 0, %if.then155 ], [ 0, %if.then21 ], [ 0, %if.then36 ], [ 0, %if.then110 ], [ 0, %if.end144 ], [ 0, %if.end158 ], [ 0, %if.then236 ], [ 0, %if.then229 ], [ 0, %cleanup.thread ], [ 1, %for.cond.preheader ], [ 1, %for.inc ], [ 0, %if.end ], [ -1, %do.body ], [ 0, %if.end129 ]
  ret i32 %retval.6
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @run_test(%struct.evp_test_st* noundef %t) unnamed_addr #1 {
entry:
  %meth = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 3
  %0 = load %struct.evp_test_method_st*, %struct.evp_test_method_st** %meth, align 8, !tbaa !33
  %cmp = icmp eq %struct.evp_test_method_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %numtests = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 5
  %1 = load i32, i32* %numtests, align 4, !tbaa !40
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %numtests, align 4, !tbaa !40
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  %2 = load i32, i32* %skip, align 8, !tbaa !12
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %numskip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 6
  %3 = load i32, i32* %numskip, align 8, !tbaa !13
  %inc3 = add nsw i32 %3, 1
  store i32 %inc3, i32* %numskip, align 8, !tbaa !13
  br label %return

if.else:                                          ; preds = %if.end
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  %4 = load i8*, i8** %err, align 8, !tbaa !41
  %cmp4 = icmp eq i8* %4, null
  br i1 %cmp4, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.else
  %run_test = getelementptr inbounds %struct.evp_test_method_st, %struct.evp_test_method_st* %0, i64 0, i32 4
  %5 = load i32 (%struct.evp_test_st*)*, i32 (%struct.evp_test_st*)** %run_test, align 8, !tbaa !42
  %call = tail call i32 %5(%struct.evp_test_st* noundef nonnull %t) #13
  %cmp6.not = icmp eq i32 %call, 1
  br i1 %cmp6.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %test_file = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 0
  %6 = load i8*, i8** %test_file, align 8, !tbaa !26
  %start = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 3
  %7 = load i32, i32* %start, align 4, !tbaa !27
  %8 = load %struct.evp_test_method_st*, %struct.evp_test_method_st** %meth, align 8, !tbaa !33
  %name = getelementptr inbounds %struct.evp_test_method_st, %struct.evp_test_method_st* %8, i64 0, i32 0
  %9 = load i8*, i8** %name, align 8, !tbaa !43
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3430, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.348, i64 0, i64 0), i8* noundef %6, i32 noundef %7, i8* noundef %9) #13
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.else
  %call12 = tail call fastcc i32 @check_test_error(%struct.evp_test_st* noundef nonnull %t) #14
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %return

if.then14:                                        ; preds = %if.end11
  tail call void @test_openssl_errors() #13
  %errors = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 4
  %10 = load i32, i32* %errors, align 8, !tbaa !15
  %inc16 = add nsw i32 %10, 1
  store i32 %inc16, i32* %errors, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %if.then1, %if.then14, %if.end11, %entry, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %entry ], [ 1, %if.end11 ], [ 1, %if.then14 ], [ 1, %if.then1 ]
  ret i32 %retval.0
}

declare dso_local i32 @test_end_file(%struct.stanza_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @clear_test(%struct.evp_test_st* noundef %t) unnamed_addr #1 {
entry:
  %s = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0
  tail call void @test_clearstanza(%struct.stanza_st* noundef %s) #13
  tail call void @ERR_clear_error() #13
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = load i8*, i8** %data, align 8, !tbaa !44
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %meth = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 3
  %1 = load %struct.evp_test_method_st*, %struct.evp_test_method_st** %meth, align 8, !tbaa !33
  %cmp1.not = icmp eq %struct.evp_test_method_st* %1, null
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %cleanup = getelementptr inbounds %struct.evp_test_method_st, %struct.evp_test_method_st* %1, i64 0, i32 2
  %2 = load void (%struct.evp_test_st*)*, void (%struct.evp_test_st*)** %cleanup, align 8, !tbaa !45
  tail call void %2(%struct.evp_test_st* noundef nonnull %t) #13
  %.pre = load i8*, i8** %data, align 8, !tbaa !44
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %3 = phi i8* [ %.pre, %if.then2 ], [ %0, %if.then ]
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3341) #13
  store i8* null, i8** %data, align 8, !tbaa !44
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %expected_err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 6
  %4 = load i8*, i8** %expected_err, align 8, !tbaa !36
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3344) #13
  store i8* null, i8** %expected_err, align 8, !tbaa !36
  %reason = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 7
  %5 = load i8*, i8** %reason, align 8, !tbaa !37
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3346) #13
  store i8* null, i8** %reason, align 8, !tbaa !37
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* null, i8** %err, align 8, !tbaa !41
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 0, i32* %skip, align 8, !tbaa !12
  %meth9 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 3
  store %struct.evp_test_method_st* null, %struct.evp_test_method_st** %meth9, align 8, !tbaa !33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @free_key_list(%struct.key_list_st* noundef %lst) unnamed_addr #1 {
entry:
  %cmp.not7 = icmp eq %struct.key_list_st* %lst, null
  br i1 %cmp.not7, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %lst.addr.08 = phi %struct.key_list_st* [ %0, %while.body ], [ %lst, %entry ]
  %next1 = getelementptr inbounds %struct.key_list_st, %struct.key_list_st* %lst.addr.08, i64 0, i32 2
  %0 = load %struct.key_list_st*, %struct.key_list_st** %next1, align 8, !tbaa !31
  %key = getelementptr inbounds %struct.key_list_st, %struct.key_list_st* %lst.addr.08, i64 0, i32 1
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !30
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %1) #13
  %name = getelementptr inbounds %struct.key_list_st, %struct.key_list_st* %lst.addr.08, i64 0, i32 0
  %2 = load i8*, i8** %name, align 8, !tbaa !28
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3461) #13
  %3 = bitcast %struct.key_list_st* %lst.addr.08 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3462) #13
  %cmp.not = icmp eq %struct.key_list_st* %0, null
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !46

while.end:                                        ; preds = %while.body, %entry
  ret void
}

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_readstanza(%struct.stanza_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local %struct.evp_pkey_st* @PEM_read_bio_PrivateKey_ex(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @key_unsupported() unnamed_addr #1 {
entry:
  %call = tail call i64 @ERR_peek_last_error() #13
  %call1 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %call) #14
  %call2 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %call) #14
  %cmp = icmp eq i32 %call1, 6
  %cmp4 = icmp eq i32 %call2, 156
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp9 = icmp eq i32 %call2, 114
  %or.cond26 = select i1 %cmp, i1 %cmp9, i1 false
  %cmp12 = icmp eq i32 %call2, 524556
  %or.cond27 = select i1 %or.cond26, i1 true, i1 %cmp12
  br i1 %or.cond27, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %cmp14 = icmp eq i32 %call1, 16
  br i1 %cmp14, label %land.lhs.true16, label %cleanup

land.lhs.true16:                                  ; preds = %if.end
  switch i32 %call2, label %cleanup [
    i32 141, label %cleanup.sink.split
    i32 129, label %cleanup.sink.split
  ]

cleanup.sink.split:                               ; preds = %land.lhs.true16, %land.lhs.true16, %entry, %lor.lhs.false
  tail call void @ERR_clear_error() #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end, %land.lhs.true16
  %retval.0 = phi i32 [ 0, %land.lhs.true16 ], [ 0, %if.end ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local void @test_openssl_errors() local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @PEM_read_bio_PUBKEY_ex(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #4

declare dso_local i32 @OBJ_txt2nid(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_bin(i8* noundef %value, i8** nocapture noundef writeonly %buf, i64* nocapture noundef writeonly %buflen) unnamed_addr #1 {
entry:
  %len = alloca i64, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  %call = tail call i32 @strcmp(i8* noundef %value, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %buf, align 8, !tbaa !16
  store i64 0, i64* %buflen, align 8, !tbaa !24
  br label %cleanup31

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %value, align 1, !tbaa !23
  switch i8 %1, label %if.end26 [
    i8 0, label %if.then3
    i8 34, label %if.then13
  ]

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 294) #13
  store i8* %call4, i8** %buf, align 8, !tbaa !16
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %cleanup31, label %if.end8

if.end8:                                          ; preds = %if.then3
  store i8 0, i8* %call4, align 1, !tbaa !23
  store i64 0, i64* %buflen, align 8, !tbaa !24
  br label %cleanup31

if.then13:                                        ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %value, i64 1
  %call14 = tail call i64 @strlen(i8* noundef nonnull %incdec.ptr) #15
  %cmp15 = icmp eq i64 %call14, 0
  br i1 %cmp15, label %cleanup31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then13
  %arrayidx17 = getelementptr inbounds i8, i8* %value, i64 %call14
  %2 = load i8, i8* %arrayidx17, align 1, !tbaa !23
  %cmp19.not = icmp eq i8 %2, 34
  br i1 %cmp19.not, label %if.end22, label %cleanup31

if.end22:                                         ; preds = %lor.lhs.false
  %dec = add i64 %call14, -1
  %call23 = tail call fastcc i8* @unescape(i8* noundef nonnull %incdec.ptr, i64 noundef %dec, i64* noundef %buflen) #14
  store i8* %call23, i8** %buf, align 8, !tbaa !16
  %cmp24 = icmp ne i8* %call23, null
  %cond = zext i1 %cmp24 to i32
  br label %cleanup31

if.end26:                                         ; preds = %if.end
  %call27 = call i8* @OPENSSL_hexstr2buf(i8* noundef nonnull %value, i64* noundef nonnull %len) #13
  store i8* %call27, i8** %buf, align 8, !tbaa !16
  %call28 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), i8* noundef %call27) #13
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i8* noundef nonnull %value) #13
  call void @test_openssl_errors() #13
  br label %cleanup31

if.end30:                                         ; preds = %if.end26
  %3 = load i64, i64* %len, align 8, !tbaa !24
  store i64 %3, i64* %buflen, align 8, !tbaa !24
  br label %cleanup31

cleanup31:                                        ; preds = %if.end22, %lor.lhs.false, %if.then13, %if.then3, %if.end30, %if.then29, %if.end8, %if.then
  %retval.1 = phi i32 [ 1, %if.then ], [ 1, %if.end8 ], [ 1, %if.end30 ], [ -1, %if.then29 ], [ 0, %if.then3 ], [ %cond, %if.end22 ], [ 0, %lor.lhs.false ], [ 0, %if.then13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.1
}

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new_raw_public_key_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @prov_available(i8* noundef %providers) unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %entry
  %providers.addr.0 = phi i8* [ %providers, %entry ], [ %providers.addr.1, %if.end24 ]
  %more.0 = phi i32 [ 1, %entry ], [ %more.1, %if.end24 ]
  %tobool.not = icmp eq i32 %more.0, 0
  br i1 %tobool.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %call = tail call i16** @__ctype_b_loc() #17
  %0 = load i16*, i16** %call, align 8, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  %providers.addr.1 = phi i8* [ %incdec.ptr, %for.cond ], [ %providers.addr.0, %for.cond.preheader ]
  %1 = load i8, i8* %providers.addr.1, align 1, !tbaa !23
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !47
  %3 = and i16 %2, 8192
  %tobool2.not = icmp eq i16 %3, 0
  %incdec.ptr = getelementptr inbounds i8, i8* %providers.addr.1, i64 1
  br i1 %tobool2.not, label %for.end, label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %cleanup, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %for.end
  %4 = and i16 %2, 8192
  %tobool15.not49 = icmp eq i16 %4, 0
  br i1 %tobool15.not49, label %for.inc17, label %if.else

for.inc17:                                        ; preds = %land.rhs.preheader, %for.inc17.land.rhs_crit_edge
  %p.04350 = phi i8* [ %incdec.ptr18, %for.inc17.land.rhs_crit_edge ], [ %providers.addr.1, %land.rhs.preheader ]
  %incdec.ptr18 = getelementptr inbounds i8, i8* %p.04350, i64 1
  %5 = load i8, i8* %incdec.ptr18, align 1, !tbaa !23
  %cmp7.not = icmp eq i8 %5, 0
  br i1 %cmp7.not, label %if.end24, label %for.inc17.land.rhs_crit_edge, !llvm.loop !50

for.inc17.land.rhs_crit_edge:                     ; preds = %for.inc17
  %idxprom11.phi.trans.insert = sext i8 %5 to i64
  %arrayidx12.phi.trans.insert = getelementptr inbounds i16, i16* %0, i64 %idxprom11.phi.trans.insert
  %.pre = load i16, i16* %arrayidx12.phi.trans.insert, align 2, !tbaa !47
  %6 = and i16 %.pre, 8192
  %tobool15.not = icmp eq i16 %6, 0
  br i1 %tobool15.not, label %for.inc17, label %if.else

if.else:                                          ; preds = %for.inc17.land.rhs_crit_edge, %land.rhs.preheader
  %p.043.lcssa = phi i8* [ %providers.addr.1, %land.rhs.preheader ], [ %incdec.ptr18, %for.inc17.land.rhs_crit_edge ]
  store i8 0, i8* %p.043.lcssa, align 1, !tbaa !23
  br label %if.end24

if.end24:                                         ; preds = %for.inc17, %if.else
  %more.1 = phi i32 [ %more.0, %if.else ], [ 0, %for.inc17 ]
  %7 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call25 = tail call i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef %7, i8* noundef nonnull %providers.addr.1) #13
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %while.cond, label %cleanup, !llvm.loop !51

cleanup:                                          ; preds = %while.cond, %for.end, %if.end24
  %retval.0 = phi i32 [ 1, %if.end24 ], [ 0, %for.end ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc i32 @find_key(%struct.evp_pkey_st** noundef writeonly %ppk, i8* noundef readonly %name, %struct.key_list_st* noundef readonly %lst) unnamed_addr #5 {
entry:
  %cmp.not11 = icmp eq %struct.key_list_st* %lst, null
  br i1 %cmp.not11, label %return, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %lst.addr.012 = phi %struct.key_list_st* [ %2, %for.inc ], [ %lst, %entry ]
  %name1 = getelementptr inbounds %struct.key_list_st, %struct.key_list_st* %lst.addr.012, i64 0, i32 0
  %0 = load i8*, i8** %name1, align 8, !tbaa !28
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %name) #15
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %cmp3.not = icmp eq %struct.evp_pkey_st** %ppk, null
  br i1 %cmp3.not, label %return, label %if.then4

if.then4:                                         ; preds = %if.then
  %key = getelementptr inbounds %struct.key_list_st, %struct.key_list_st* %lst.addr.012, i64 0, i32 1
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !30
  store %struct.evp_pkey_st* %1, %struct.evp_pkey_st** %ppk, align 8, !tbaa !16
  br label %return

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.key_list_st, %struct.key_list_st* %lst.addr.012, i64 0, i32 2
  %2 = load %struct.key_list_st*, %struct.key_list_st** %next, align 8, !tbaa !31
  %cmp.not = icmp eq %struct.key_list_st* %2, null
  br i1 %cmp.not, label %return, label %for.body, !llvm.loop !52

return:                                           ; preds = %for.inc, %entry, %if.then, %if.then4
  %retval.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.then ], [ 0, %entry ], [ 0, %for.inc ]
  ret i32 %retval.0
}

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i8* @take_value(%struct.pair_st* nocapture noundef %pp) unnamed_addr #6 {
entry:
  %value = getelementptr inbounds %struct.pair_st, %struct.pair_st* %pp, i64 0, i32 1
  %0 = load i8*, i8** %value, align 8, !tbaa !22
  store i8* null, i8** %value, align 8, !tbaa !22
  ret i8* %0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc %struct.evp_test_method_st* @find_test(i8* noundef readonly %name) unnamed_addr #7 {
entry:
  %call = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %for.cond

for.cond:                                         ; preds = %entry
  %call.1 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0)) #15
  %cmp.1 = icmp eq i32 %call.1, 0
  br i1 %cmp.1, label %cleanup, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0)) #15
  %cmp.2 = icmp eq i32 %call.2, 0
  br i1 %cmp.2, label %cleanup, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.198, i64 0, i64 0)) #15
  %cmp.3 = icmp eq i32 %call.3, 0
  br i1 %cmp.3, label %cleanup, label %for.cond.3

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.210, i64 0, i64 0)) #15
  %cmp.4 = icmp eq i32 %call.4, 0
  br i1 %cmp.4, label %cleanup, label %for.cond.4

for.cond.4:                                       ; preds = %for.cond.3
  %call.5 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.212, i64 0, i64 0)) #15
  %cmp.5 = icmp eq i32 %call.5, 0
  br i1 %cmp.5, label %cleanup, label %for.cond.5

for.cond.5:                                       ; preds = %for.cond.4
  %call.6 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.228, i64 0, i64 0)) #15
  %cmp.6 = icmp eq i32 %call.6, 0
  br i1 %cmp.6, label %cleanup, label %for.cond.6

for.cond.6:                                       ; preds = %for.cond.5
  %call.7 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.237, i64 0, i64 0)) #15
  %cmp.7 = icmp eq i32 %call.7, 0
  br i1 %cmp.7, label %cleanup, label %for.cond.7

for.cond.7:                                       ; preds = %for.cond.6
  %call.8 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.238, i64 0, i64 0)) #15
  %cmp.8 = icmp eq i32 %call.8, 0
  br i1 %cmp.8, label %cleanup, label %for.cond.8

for.cond.8:                                       ; preds = %for.cond.7
  %call.9 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.253, i64 0, i64 0)) #15
  %cmp.9 = icmp eq i32 %call.9, 0
  br i1 %cmp.9, label %cleanup, label %for.cond.9

for.cond.9:                                       ; preds = %for.cond.8
  %call.10 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.260, i64 0, i64 0)) #15
  %cmp.10 = icmp eq i32 %call.10, 0
  br i1 %cmp.10, label %cleanup, label %for.cond.10

for.cond.10:                                      ; preds = %for.cond.9
  %call.11 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.302, i64 0, i64 0)) #15
  %cmp.11 = icmp eq i32 %call.11, 0
  br i1 %cmp.11, label %cleanup, label %for.cond.11

for.cond.11:                                      ; preds = %for.cond.10
  %call.12 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.305, i64 0, i64 0)) #15
  %cmp.12 = icmp eq i32 %call.12, 0
  br i1 %cmp.12, label %cleanup, label %for.cond.12

for.cond.12:                                      ; preds = %for.cond.11
  %call.13 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.306, i64 0, i64 0)) #15
  %cmp.13 = icmp eq i32 %call.13, 0
  br i1 %cmp.13, label %cleanup, label %for.cond.13

for.cond.13:                                      ; preds = %for.cond.12
  %call.14 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.329, i64 0, i64 0)) #15
  %cmp.14 = icmp eq i32 %call.14, 0
  br i1 %cmp.14, label %cleanup, label %for.cond.14

for.cond.14:                                      ; preds = %for.cond.13
  %call.15 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.337, i64 0, i64 0)) #15
  %cmp.15 = icmp eq i32 %call.15, 0
  br i1 %cmp.15, label %cleanup, label %for.cond.15

for.cond.15:                                      ; preds = %for.cond.14
  %call.16 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.345, i64 0, i64 0)) #15
  %cmp.16 = icmp eq i32 %call.16, 0
  br i1 %cmp.16, label %cleanup, label %for.cond.16

for.cond.16:                                      ; preds = %for.cond.15
  %call.17 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.346, i64 0, i64 0)) #15
  %cmp.17 = icmp eq i32 %call.17, 0
  br i1 %cmp.17, label %cleanup, label %for.cond.17

for.cond.17:                                      ; preds = %for.cond.16
  %call.18 = tail call i32 @strcmp(i8* noundef %name, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.347, i64 0, i64 0)) #15
  %cmp.18 = icmp eq i32 %call.18, 0
  %spec.select = select i1 %cmp.18, %struct.evp_test_method_st* @pverify_test_method, %struct.evp_test_method_st* null
  br label %cleanup

cleanup:                                          ; preds = %for.cond.17, %for.cond.16, %for.cond.15, %for.cond.14, %for.cond.13, %for.cond.12, %for.cond.11, %for.cond.10, %for.cond.9, %for.cond.8, %for.cond.7, %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %entry
  %.lcssa = phi %struct.evp_test_method_st* [ @rand_test_method, %entry ], [ @cipher_test_method, %for.cond ], [ @digest_test_method, %for.cond.1 ], [ @digestsign_test_method, %for.cond.2 ], [ @digestverify_test_method, %for.cond.3 ], [ @encode_test_method, %for.cond.4 ], [ @kdf_test_method, %for.cond.5 ], [ @pkey_kdf_test_method, %for.cond.6 ], [ @keypair_test_method, %for.cond.7 ], [ @keygen_test_method, %for.cond.8 ], [ @mac_test_method, %for.cond.9 ], [ @oneshot_digestsign_test_method, %for.cond.10 ], [ @oneshot_digestverify_test_method, %for.cond.11 ], [ @pbe_test_method, %for.cond.12 ], [ @pdecrypt_test_method, %for.cond.13 ], [ @pderive_test_method, %for.cond.14 ], [ @psign_test_method, %for.cond.15 ], [ @pverify_recover_test_method, %for.cond.16 ], [ %spec.select, %for.cond.17 ]
  ret %struct.evp_test_method_st* %.lcssa
}

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i64 @ERR_peek_last_error() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #0 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #0 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare dso_local void @ERR_clear_error() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @unescape(i8* nocapture noundef readonly %input, i64 noundef %input_len, i64* nocapture noundef writeonly %out_len) unnamed_addr #1 {
entry:
  %cmp = icmp eq i64 %input_len, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %out_len, align 8, !tbaa !24
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 243) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %input_len, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 247) #13
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i64 0, i64 0), i8* noundef %call1) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %sub = add i64 %input_len, -1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.045 = phi i64 [ 0, %for.body.lr.ph ], [ %inc21, %for.inc ]
  %p.044 = phi i8* [ %call1, %for.body.lr.ph ], [ %p.1, %for.inc ]
  %input.addr.043 = phi i8* [ %input, %for.body.lr.ph ], [ %input.addr.1, %for.inc ]
  %0 = load i8, i8* %input.addr.043, align 1, !tbaa !23
  %cmp6 = icmp eq i8 %0, 92
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %cmp9 = icmp eq i64 %i.045, %sub
  br i1 %cmp9, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then8
  %incdec.ptr = getelementptr inbounds i8, i8* %input.addr.043, i64 1
  %1 = load i8, i8* %incdec.ptr, align 1, !tbaa !23
  %cmp12.not = icmp eq i8 %1, 110
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %if.then8
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i64 0, i64 0)) #13
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 268) #13
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  store i8 10, i8* %p.044, align 1, !tbaa !23
  %inc = add nuw i64 %i.045, 1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %input.addr.043, i64 2
  br label %for.inc

if.else:                                          ; preds = %for.body
  %incdec.ptr18 = getelementptr inbounds i8, i8* %input.addr.043, i64 1
  store i8 %0, i8* %p.044, align 1, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %if.else
  %input.addr.1 = phi i8* [ %incdec.ptr17, %if.end15 ], [ %incdec.ptr18, %if.else ]
  %i.1 = phi i64 [ %inc, %if.end15 ], [ %i.045, %if.else ]
  %p.1 = getelementptr inbounds i8, i8* %p.044, i64 1
  %inc21 = add i64 %i.1, 1
  %cmp5 = icmp ult i64 %inc21, %input_len
  br i1 %cmp5, label %for.body, label %for.end, !llvm.loop !53

for.end:                                          ; preds = %for.inc
  %phi.cast = ptrtoint i8* %p.1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %call1 to i64
  %sub.ptr.sub = sub i64 %phi.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %out_len, align 8, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then14, %for.end, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ null, %if.then14 ], [ %call1, %for.end ], [ null, %if.end ]
  ret i8* %retval.0
}

declare dso_local i8* @OPENSSL_hexstr2buf(i8* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #8

declare dso_local i32 @OSSL_PROVIDER_available(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @rand_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %name) #1 {
entry:
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %strength = alloca i32, align 4
  %0 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #16
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  %1 = bitcast i32* %strength to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16
  store i32 256, i32* %strength, align 4, !tbaa !54
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 2448, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2313) #13
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2313, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i64 0, i64 0), i8* noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call2 = tail call %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0)) #13
  %cmp = icmp eq %struct.evp_rand_st* %call2, null
  br i1 %cmp, label %err, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call %struct.evp_rand_ctx_st* @EVP_RAND_CTX_new(%struct.evp_rand_st* noundef nonnull %call2, %struct.evp_rand_ctx_st* noundef null) #13
  %parent = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %parent to %struct.evp_rand_ctx_st**
  store %struct.evp_rand_ctx_st* %call5, %struct.evp_rand_ctx_st** %3, align 8, !tbaa !55
  tail call void @EVP_RAND_free(%struct.evp_rand_st* noundef nonnull %call2) #13
  %4 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %3, align 8, !tbaa !55
  %cmp7 = icmp eq %struct.evp_rand_ctx_st* %4, null
  br i1 %cmp7, label %err, label %if.end9

if.end9:                                          ; preds = %if.end4
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params46 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params46, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i32* noundef nonnull %strength) #13
  %5 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %3, align 8, !tbaa !55
  %call12 = call i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* noundef %5, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end15

if.end15:                                         ; preds = %if.end9
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call16 = call %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef %name, i8* noundef null) #13
  %cmp17 = icmp eq %struct.evp_rand_st* %call16, null
  br i1 %cmp17, label %err, label %if.end19

if.end19:                                         ; preds = %if.end15
  %7 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %3, align 8, !tbaa !55
  %call21 = call %struct.evp_rand_ctx_st* @EVP_RAND_CTX_new(%struct.evp_rand_st* noundef nonnull %call16, %struct.evp_rand_ctx_st* noundef %7) #13
  %ctx = bitcast i8* %call to %struct.evp_rand_ctx_st**
  store %struct.evp_rand_ctx_st* %call21, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  call void @EVP_RAND_free(%struct.evp_rand_st* noundef nonnull %call16) #13
  %8 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  %cmp23 = icmp eq %struct.evp_rand_ctx_st* %8, null
  br i1 %cmp23, label %err, label %if.end25

if.end25:                                         ; preds = %if.end19
  %n = getelementptr inbounds i8, i8* %call, i64 16
  %9 = bitcast i8* %n to i32*
  store i32 -1, i32* %9, align 8, !tbaa !58
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call, i8** %data, align 8, !tbaa !44
  br label %cleanup

err:                                              ; preds = %if.end, %if.end19, %if.end15, %if.end9, %if.end4
  %parent26 = getelementptr inbounds i8, i8* %call, i64 8
  %10 = bitcast i8* %parent26 to %struct.evp_rand_ctx_st**
  %11 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %10, align 8, !tbaa !55
  call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %11) #13
  call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2342) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end25
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end25 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #16
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @rand_test_cleanup(%struct.evp_test_st* nocapture noundef readonly %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.rand_data_st**
  %1 = load %struct.rand_data_st*, %struct.rand_data_st** %0, align 8, !tbaa !44
  %cipher = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 6
  %2 = load i8*, i8** %cipher, align 8, !tbaa !59
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2351) #13
  %digest = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 7
  %3 = load i8*, i8** %digest, align 8, !tbaa !60
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2352) #13
  %n = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 2
  %4 = load i32, i32* %n, align 8, !tbaa !58
  %cmp.not56 = icmp slt i32 %4, 0
  br i1 %cmp.not56, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %entropy = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 0
  %5 = load i8*, i8** %entropy, align 8, !tbaa !61
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2355) #13
  %reseed_entropy = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 1
  %6 = load i8*, i8** %reseed_entropy, align 8, !tbaa !63
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2356) #13
  %nonce = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 2
  %7 = load i8*, i8** %nonce, align 8, !tbaa !64
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2357) #13
  %pers = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 3
  %8 = load i8*, i8** %pers, align 8, !tbaa !65
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2358) #13
  %reseed_addin = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 4
  %9 = load i8*, i8** %reseed_addin, align 8, !tbaa !66
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2359) #13
  %addinA = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 5
  %10 = load i8*, i8** %addinA, align 8, !tbaa !67
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2360) #13
  %addinB = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 6
  %11 = load i8*, i8** %addinB, align 8, !tbaa !68
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2361) #13
  %pr_entropyA = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 7
  %12 = load i8*, i8** %pr_entropyA, align 8, !tbaa !69
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2362) #13
  %pr_entropyB = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 8
  %13 = load i8*, i8** %pr_entropyB, align 8, !tbaa !70
  tail call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2363) #13
  %output = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 9
  %14 = load i8*, i8** %output, align 8, !tbaa !71
  tail call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2364) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = load i32, i32* %n, align 8, !tbaa !58
  %16 = sext i32 %15 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %16
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !72

for.end:                                          ; preds = %for.body, %entry
  %ctx = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 0
  %17 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  tail call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %17) #13
  %parent = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 1
  %18 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %parent, align 8, !tbaa !55
  tail call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %18) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rand_test_parse(%struct.evp_test_st* nocapture noundef readonly %t, i8* noundef %keyword, i8* noundef %value) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.rand_data_st**
  %1 = load %struct.rand_data_st*, %struct.rand_data_st** %0, align 8, !tbaa !44
  %call = tail call i8* @strchr(i8* noundef %keyword, i32 noundef 46) #15
  %cmp.not = icmp eq i8* %call, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i64 1
  %call1 = tail call i32 @atoi(i8* noundef %incdec.ptr) #15
  %cmp2 = icmp sgt i32 %call1, 14
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %n4 = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 2
  %2 = load i32, i32* %n4, align 8, !tbaa !58
  %cmp5 = icmp sgt i32 %call1, %2
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  store i32 %call1, i32* %n4, align 8, !tbaa !58
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %idx.ext = sext i32 %call1 to i64
  %call10 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i64 0, i64 0), i64 noundef 8) #15
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %entropy = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 0
  %entropy_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 10
  %call13 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %entropy, i64* noundef nonnull %entropy_len) #14
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %call15 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), i64 noundef 14) #15
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %reseed_entropy = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 1
  %reseed_entropy_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 18
  %call18 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %reseed_entropy, i64* noundef nonnull %reseed_entropy_len) #14
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i64 noundef 6) #15
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  %nonce = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 2
  %nonce_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 11
  %call23 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %nonce, i64* noundef nonnull %nonce_len) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %call25 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i64 0, i64 0), i64 noundef 22) #15
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %pers = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 3
  %pers_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 12
  %call28 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %pers, i64* noundef nonnull %pers_len) #14
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call30 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i64 0, i64 0), i64 noundef 22) #15
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %reseed_addin = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 4
  %reseed_addin_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 19
  %call33 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %reseed_addin, i64* noundef nonnull %reseed_addin_len) #14
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %call35 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i64 noundef 17) #15
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  %addinA = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 5
  %addinA_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 13
  %call38 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %addinA, i64* noundef nonnull %addinA_len) #14
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %call40 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i64 noundef 17) #15
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end39
  %addinB = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 6
  %addinB_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 14
  %call43 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %addinB, i64* noundef nonnull %addinB_len) #14
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %call45 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0), i64 noundef 29) #15
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end44
  %pr_entropyA = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 7
  %pr_entropyA_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 15
  %call48 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %pr_entropyA, i64* noundef nonnull %pr_entropyA_len) #14
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %call50 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.65, i64 0, i64 0), i64 noundef 29) #15
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end49
  %pr_entropyB = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 8
  %pr_entropyB_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 16
  %call53 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %pr_entropyB, i64* noundef nonnull %pr_entropyB_len) #14
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  %call55 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0), i64 noundef 7) #15
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %cleanup

if.then57:                                        ; preds = %if.end54
  %output = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 9
  %output_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %idx.ext, i32 17
  %call58 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %output, i64* noundef nonnull %output_len) #14
  br label %cleanup

if.else:                                          ; preds = %entry
  %call60 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i64 0, i64 0)) #15
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end65

if.then62:                                        ; preds = %if.else
  %call63 = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2415) #13
  %cipher = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 6
  store i8* %call63, i8** %cipher, align 8, !tbaa !59
  %call64 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2415, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i64 0, i64 0), i8* noundef %call63) #13
  br label %cleanup

if.end65:                                         ; preds = %if.else
  %call66 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0)) #15
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end65
  %call69 = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2417) #13
  %digest = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 7
  store i8* %call69, i8** %digest, align 8, !tbaa !60
  %call70 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2417, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.70, i64 0, i64 0), i8* noundef %call69) #13
  br label %cleanup

if.end71:                                         ; preds = %if.end65
  %call72 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.71, i64 0, i64 0)) #15
  %cmp73 = icmp eq i32 %call72, 0
  br i1 %cmp73, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end71
  %call75 = tail call i32 @atoi(i8* noundef %value) #15
  %cmp76 = icmp ne i32 %call75, 0
  %conv = zext i1 %cmp76 to i32
  %use_df = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 4
  store i32 %conv, i32* %use_df, align 8, !tbaa !73
  br label %cleanup

if.end77:                                         ; preds = %if.end71
  %call78 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i64 0, i64 0)) #15
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.end89

if.then81:                                        ; preds = %if.end77
  %call82 = tail call i32 @atoi(i8* noundef %value) #15
  %cmp83 = icmp sgt i32 %call82, 0
  %3 = and i32 %call82, 7
  %cmp85.not = icmp eq i32 %3, 0
  %or.cond = and i1 %cmp83, %cmp85.not
  br i1 %or.cond, label %if.end88, label %cleanup

if.end88:                                         ; preds = %if.then81
  %generate_bits = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 5
  store i32 %call82, i32* %generate_bits, align 4, !tbaa !74
  br label %cleanup

if.end89:                                         ; preds = %if.end77
  %call90 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0)) #15
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %cleanup

if.then93:                                        ; preds = %if.end89
  %call94 = tail call i32 @atoi(i8* noundef %value) #15
  %cmp95 = icmp ne i32 %call94, 0
  %conv96 = zext i1 %cmp95 to i32
  %prediction_resistance = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 3
  store i32 %conv96, i32* %prediction_resistance, align 4, !tbaa !75
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end89, %if.then81, %if.then, %if.then93, %if.end88, %if.then74, %if.then68, %if.then62, %if.then57, %if.then52, %if.then47, %if.then42, %if.then37, %if.then32, %if.then27, %if.then22, %if.then17, %if.then12
  %retval.0 = phi i32 [ %call13, %if.then12 ], [ %call18, %if.then17 ], [ %call23, %if.then22 ], [ %call28, %if.then27 ], [ %call33, %if.then32 ], [ %call38, %if.then37 ], [ %call43, %if.then42 ], [ %call48, %if.then47 ], [ %call53, %if.then52 ], [ %call58, %if.then57 ], [ %call64, %if.then62 ], [ %call70, %if.then68 ], [ 1, %if.then74 ], [ 1, %if.end88 ], [ 1, %if.then93 ], [ 0, %if.then ], [ 0, %if.then81 ], [ 0, %if.end89 ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rand_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %params = alloca [5 x %struct.ossl_param_st], align 16
  %tmp5 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %tmp16 = alloca %struct.ossl_param_st, align 8
  %tmp17 = alloca %struct.ossl_param_st, align 8
  %tmp37 = alloca %struct.ossl_param_st, align 8
  %tmp46 = alloca %struct.ossl_param_st, align 8
  %tmp47 = alloca %struct.ossl_param_st, align 8
  %tmp74 = alloca %struct.ossl_param_st, align 8
  %tmp77 = alloca %struct.ossl_param_st, align 8
  %tmp101 = alloca %struct.ossl_param_st, align 8
  %tmp104 = alloca %struct.ossl_param_st, align 8
  %tmp128 = alloca %struct.ossl_param_st, align 8
  %tmp131 = alloca %struct.ossl_param_st, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.rand_data_st**
  %1 = load %struct.rand_data_st*, %struct.rand_data_st** %0, align 8, !tbaa !44
  %generate_bits = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 5
  %2 = load i32, i32* %generate_bits, align 4, !tbaa !74
  %div = lshr i32 %2, 3
  %conv = zext i32 %div to i64
  %3 = bitcast [5 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %3) #16
  %arraydecay = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2447) #13
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2447, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %use_df = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 4
  %params298 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params298, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.75, i64 0, i64 0), i32* noundef nonnull %use_df) #13
  %cipher = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 6
  %4 = load i8*, i8** %cipher, align 8, !tbaa !59
  %cmp.not = icmp eq i8* %4, null
  br i1 %cmp.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %incdec.ptr4 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %5 = bitcast %struct.ossl_param_st* %tmp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #16
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef 0) #13
  %6 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #16
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  %p.0 = phi %struct.ossl_param_st* [ %incdec.ptr4, %if.then3 ], [ %incdec.ptr, %if.end ]
  %digest = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 7
  %7 = load i8*, i8** %digest, align 8, !tbaa !60
  %cmp8.not = icmp eq i8* %7, null
  br i1 %cmp8.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end7
  %incdec.ptr11 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 1
  %8 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #16
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef 0) #13
  %9 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7
  %p.1 = phi %struct.ossl_param_st* [ %incdec.ptr11, %if.then10 ], [ %p.0, %if.end7 ]
  %incdec.ptr15 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.1, i64 1
  %10 = bitcast %struct.ossl_param_st* %tmp16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #16
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i64 noundef 0) #13
  %11 = bitcast %struct.ossl_param_st* %p.1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #16
  %12 = bitcast %struct.ossl_param_st* %tmp17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp17) #13
  %13 = bitcast %struct.ossl_param_st* %incdec.ptr15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %13, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #16
  %ctx = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 0
  %14 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  %call19 = call i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* noundef %14, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2459, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv21) #13
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end188, label %if.end25

if.end25:                                         ; preds = %if.end14
  %15 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  %call27 = call i32 @EVP_RAND_get_strength(%struct.evp_rand_ctx_st* noundef %15) #13
  %n = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 2
  %16 = load i32, i32* %n, align 8, !tbaa !58
  %cmp28.not293 = icmp slt i32 %16, 0
  br i1 %cmp28.not293, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end25
  %17 = bitcast %struct.ossl_param_st* %tmp37 to i8*
  %incdec.ptr45 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %18 = bitcast %struct.ossl_param_st* %tmp46 to i8*
  %19 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  %20 = bitcast %struct.ossl_param_st* %tmp47 to i8*
  %21 = bitcast %struct.ossl_param_st* %incdec.ptr45 to i8*
  %parent = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 1
  %prediction_resistance = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 3
  %22 = bitcast %struct.ossl_param_st* %tmp74 to i8*
  %23 = bitcast %struct.ossl_param_st* %tmp77 to i8*
  %24 = bitcast %struct.ossl_param_st* %tmp101 to i8*
  %25 = bitcast %struct.ossl_param_st* %tmp104 to i8*
  %26 = bitcast %struct.ossl_param_st* %tmp128 to i8*
  %27 = bitcast %struct.ossl_param_st* %tmp131 to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %entropy = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 0
  %28 = load i8*, i8** %entropy, align 8, !tbaa !61
  %cmp33.not = icmp eq i8* %28, null
  %spec.select = select i1 %cmp33.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.81, i64 0, i64 0), i8* %28
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %17) #16
  %entropy_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 10
  %29 = load i64, i64* %entropy_len, align 8, !tbaa !77
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp37, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0), i8* noundef %spec.select, i64 noundef %29) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #16
  %nonce = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 2
  %30 = load i8*, i8** %nonce, align 8, !tbaa !64
  %cmp38.not = icmp eq i8* %30, null
  %cond44 = select i1 %cmp38.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.81, i64 0, i64 0), i8* %30
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %18) #16
  %nonce_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 11
  %31 = load i64, i64* %nonce_len, align 8, !tbaa !78
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp46, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i64 0, i64 0), i8* noundef %cond44, i64 noundef %31) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %19, i8* noundef nonnull align 8 dereferenceable(40) %18, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #16
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %20) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp47) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %21, i8* noundef nonnull align 8 dereferenceable(40) %20, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %20) #16
  %32 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %parent, align 8, !tbaa !55
  %call49 = call i32 @EVP_RAND_instantiate(%struct.evp_rand_ctx_st* noundef %32, i32 noundef %call27, i32 noundef 0, i8* noundef null, i64 noundef 0, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2475, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.84, i64 0, i64 0), i32 noundef %conv51) #13
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then186, label %if.end55

if.end55:                                         ; preds = %for.body
  %pers = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 3
  %33 = load i8*, i8** %pers, align 8, !tbaa !65
  %cmp56.not = icmp eq i8* %33, null
  %spec.select284 = select i1 %cmp56.not, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.81, i64 0, i64 0), i8* %33
  %34 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  %35 = load i32, i32* %prediction_resistance, align 4, !tbaa !75
  %pers_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 12
  %36 = load i64, i64* %pers_len, align 8, !tbaa !79
  %call64 = call i32 @EVP_RAND_instantiate(%struct.evp_rand_ctx_st* noundef %34, i32 noundef %call27, i32 noundef %35, i8* noundef %spec.select284, i64 noundef %36, %struct.ossl_param_st* noundef null) #13
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2482, i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.85, i64 0, i64 0), i32 noundef %conv66) #13
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then186, label %if.end70

if.end70:                                         ; preds = %if.end55
  %reseed_entropy = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 1
  %37 = load i8*, i8** %reseed_entropy, align 8, !tbaa !63
  %cmp71.not = icmp eq i8* %37, null
  br i1 %cmp71.not, label %if.end96, label %if.then73

if.then73:                                        ; preds = %if.end70
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22) #16
  %reseed_entropy_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 18
  %38 = load i64, i64* %reseed_entropy_len, align 8, !tbaa !80
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp74, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %37, i64 noundef %38) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %22, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22) #16
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %23) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp77) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %19, i8* noundef nonnull align 8 dereferenceable(40) %23, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %23) #16
  %39 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %parent, align 8, !tbaa !55
  %call80 = call i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* noundef %39, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %cmp81 = icmp ne i32 %call80, 0
  %conv82 = zext i1 %cmp81 to i32
  %call83 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2490, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv82) #13
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then186, label %if.end86

if.end86:                                         ; preds = %if.then73
  %40 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  %41 = load i32, i32* %prediction_resistance, align 4, !tbaa !75
  %reseed_addin = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 4
  %42 = load i8*, i8** %reseed_addin, align 8, !tbaa !66
  %reseed_addin_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 19
  %43 = load i64, i64* %reseed_addin_len, align 8, !tbaa !81
  %call89 = call i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* noundef %40, i32 noundef %41, i8* noundef null, i64 noundef 0, i8* noundef %42, i64 noundef %43) #13
  %cmp90 = icmp ne i32 %call89, 0
  %conv91 = zext i1 %cmp90 to i32
  %call92 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2496, i8* noundef getelementptr inbounds ([118 x i8], [118 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv91) #13
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then186, label %if.end96

if.end96:                                         ; preds = %if.end86, %if.end70
  %pr_entropyA = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 7
  %44 = load i8*, i8** %pr_entropyA, align 8, !tbaa !69
  %cmp97.not = icmp eq i8* %44, null
  br i1 %cmp97.not, label %if.end114, label %if.then99

if.then99:                                        ; preds = %if.end96
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %24) #16
  %pr_entropyA_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 15
  %45 = load i64, i64* %pr_entropyA_len, align 8, !tbaa !82
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp101, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %44, i64 noundef %45) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %24, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %24) #16
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %25) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp104) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %19, i8* noundef nonnull align 8 dereferenceable(40) %25, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #16
  %46 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %parent, align 8, !tbaa !55
  %call107 = call i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* noundef %46, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %cmp108 = icmp ne i32 %call107, 0
  %conv109 = zext i1 %cmp108 to i32
  %call110 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2504, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv109) #13
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then186, label %if.end114

if.end114:                                        ; preds = %if.then99, %if.end96
  %47 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  %48 = load i32, i32* %prediction_resistance, align 4, !tbaa !75
  %addinA = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 5
  %49 = load i8*, i8** %addinA, align 8, !tbaa !67
  %addinA_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 13
  %50 = load i64, i64* %addinA_len, align 8, !tbaa !83
  %call117 = call i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef %47, i8* noundef %call, i64 noundef %conv, i32 noundef %call27, i32 noundef %48, i8* noundef %49, i64 noundef %50) #13
  %cmp118 = icmp ne i32 %call117, 0
  %conv119 = zext i1 %cmp118 to i32
  %call120 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2510, i8* noundef getelementptr inbounds ([123 x i8], [123 x i8]* @.str.88, i64 0, i64 0), i32 noundef %conv119) #13
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then186, label %if.end123

if.end123:                                        ; preds = %if.end114
  %pr_entropyB = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 8
  %51 = load i8*, i8** %pr_entropyB, align 8, !tbaa !70
  %cmp124.not = icmp eq i8* %51, null
  br i1 %cmp124.not, label %if.end141, label %if.then126

if.then126:                                       ; preds = %if.end123
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %26) #16
  %pr_entropyB_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 16
  %52 = load i64, i64* %pr_entropyB_len, align 8, !tbaa !84
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp128, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %51, i64 noundef %52) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %26, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %26) #16
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %27) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp131) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %19, i8* noundef nonnull align 8 dereferenceable(40) %27, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %27) #16
  %53 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %parent, align 8, !tbaa !55
  %call134 = call i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* noundef %53, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %cmp135 = icmp ne i32 %call134, 0
  %conv136 = zext i1 %cmp135 to i32
  %call137 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2518, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv136) #13
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %cleanup, label %if.end141

if.end141:                                        ; preds = %if.then126, %if.end123
  %54 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  %55 = load i32, i32* %prediction_resistance, align 4, !tbaa !75
  %addinB = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 6
  %56 = load i8*, i8** %addinB, align 8, !tbaa !68
  %addinB_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 14
  %57 = load i64, i64* %addinB_len, align 8, !tbaa !85
  %call144 = call i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef %54, i8* noundef %call, i64 noundef %conv, i32 noundef %call27, i32 noundef %55, i8* noundef %56, i64 noundef %57) #13
  %cmp145 = icmp ne i32 %call144, 0
  %conv146 = zext i1 %cmp145 to i32
  %call147 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2524, i8* noundef getelementptr inbounds ([123 x i8], [123 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv146) #13
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.then186, label %if.end150

if.end150:                                        ; preds = %if.end141
  %output = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 9
  %58 = load i8*, i8** %output, align 8, !tbaa !71
  %output_len = getelementptr inbounds %struct.rand_data_st, %struct.rand_data_st* %1, i64 0, i32 8, i64 %indvars.iv, i32 17
  %59 = load i64, i64* %output_len, align 8, !tbaa !86
  %call151 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2526, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i64 0, i64 0), i8* noundef %call, i64 noundef %conv, i8* noundef %58, i64 noundef %59) #13
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then186, label %if.end154

if.end154:                                        ; preds = %if.end150
  %60 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  %call156 = call i32 @EVP_RAND_uninstantiate(%struct.evp_rand_ctx_st* noundef %60) #13
  %cmp157 = icmp ne i32 %call156, 0
  %conv158 = zext i1 %cmp157 to i32
  %call159 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2528, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv158) #13
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.then186, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end154
  %61 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %parent, align 8, !tbaa !55
  %call162 = call i32 @EVP_RAND_uninstantiate(%struct.evp_rand_ctx_st* noundef %61) #13
  %cmp163 = icmp ne i32 %call162, 0
  %conv164 = zext i1 %cmp163 to i32
  %call165 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2529, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv164) #13
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.then186, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false
  %62 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  %call169 = call i32 @EVP_RAND_verify_zeroization(%struct.evp_rand_ctx_st* noundef %62) #13
  %cmp170 = icmp ne i32 %call169, 0
  %conv171 = zext i1 %cmp170 to i32
  %call172 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2530, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv171) #13
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then186, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %lor.lhs.false167
  %63 = load %struct.evp_rand_ctx_st*, %struct.evp_rand_ctx_st** %ctx, align 8, !tbaa !57
  %call176 = call i32 @EVP_RAND_get_state(%struct.evp_rand_ctx_st* noundef %63) #13
  %call177 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2532, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.96, i64 0, i64 0), i32 noundef %call176, i32 noundef 0) #13
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.then186, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false174
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %64 = load i32, i32* %n, align 8, !tbaa !58
  %65 = sext i32 %64 to i64
  %cmp28.not.not = icmp slt i64 %indvars.iv, %65
  br i1 %cmp28.not.not, label %for.body, label %for.end, !llvm.loop !87

for.end:                                          ; preds = %for.inc, %if.end25
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* null, i8** %err, align 8, !tbaa !41
  br label %if.end188

if.then186:                                       ; preds = %for.body, %if.end55, %if.then73, %if.end86, %if.then99, %if.end114, %if.end141, %if.end150, %lor.lhs.false174, %lor.lhs.false167, %lor.lhs.false, %if.end154
  %66 = trunc i64 %indvars.iv to i32
  %67 = load i32, i32* %n, align 8, !tbaa !58
  %add = add nsw i32 %67, 1
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2540, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.97, i64 0, i64 0), i32 noundef %66, i32 noundef %add) #13
  br label %if.end188

if.end188:                                        ; preds = %if.end14, %for.end, %if.then186
  %ret.0290 = phi i32 [ 0, %if.then186 ], [ 0, %if.end14 ], [ 1, %for.end ]
  call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2541) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %entry, %if.end188
  %retval.0 = phi i32 [ %ret.0290, %if.end188 ], [ 0, %entry ], [ 0, %if.then126 ]
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %3) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

declare dso_local %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_rand_ctx_st* @EVP_RAND_CTX_new(%struct.evp_rand_st* noundef, %struct.evp_rand_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_RAND_free(%struct.evp_rand_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

declare dso_local i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #12

declare dso_local void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_RAND_get_strength(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_RAND_instantiate(%struct.evp_rand_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_RAND_reseed(%struct.evp_rand_ctx_st* noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_RAND_uninstantiate(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_RAND_verify_zeroization(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_RAND_get_state(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @cipher_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %alg) #1 {
entry:
  %call = tail call fastcc i32 @is_cipher_disabled(i8* noundef %alg) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip, align 8, !tbaa !12
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 558, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i8* noundef %alg) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ERR_set_mark() #13
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call2 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %alg, i8* noundef null) #13
  %cmp = icmp eq %struct.evp_cipher_st* %call2, null
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef %alg) #13
  %cmp4 = icmp eq %struct.evp_cipher_st* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call i8* @strstr(i8* noundef %alg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0)) #15
  %cmp7.not = icmp eq i8* %call6, null
  br i1 %cmp7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.then5
  %call9 = tail call i32 @ERR_pop_to_mark() #13
  %skip10 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip10, align 8, !tbaa !12
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0), i8* noundef %alg) #13
  br label %cleanup

if.end11:                                         ; preds = %if.then5
  %call12 = tail call i32 @ERR_clear_last_mark() #13
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true, %if.end
  %cipher.0 = phi %struct.evp_cipher_st* [ %call3, %land.lhs.true ], [ %call2, %if.end ]
  %call14 = tail call i32 @ERR_clear_last_mark() #13
  %call15 = tail call i8* @CRYPTO_zalloc(i64 noundef 232, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 577) #13
  %cipher16 = bitcast i8* %call15 to %struct.evp_cipher_st**
  store %struct.evp_cipher_st* %cipher.0, %struct.evp_cipher_st** %cipher16, align 8, !tbaa !88
  %fetched_cipher17 = getelementptr inbounds i8, i8* %call15, i64 8
  %1 = bitcast i8* %fetched_cipher17 to %struct.evp_cipher_st**
  store %struct.evp_cipher_st* %call2, %struct.evp_cipher_st** %1, align 8, !tbaa !90
  %enc = getelementptr inbounds i8, i8* %call15, i64 16
  %2 = bitcast i8* %enc to i32*
  store i32 -1, i32* %2, align 8, !tbaa !91
  %call18 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef nonnull %cipher.0) #13
  %call19 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef nonnull %cipher.0) #13
  %and = and i64 %call19, 2097152
  %tobool20.not = icmp eq i64 %and, 0
  %cmp22.not = icmp eq i32 %call18, 0
  %cond = select i1 %cmp22.not, i32 -1, i32 %call18
  %.sink = select i1 %tobool20.not, i32 0, i32 %cond
  %aead23 = getelementptr inbounds i8, i8* %call15, i64 20
  %3 = bitcast i8* %aead23 to i32*
  store i32 %.sink, i32* %3, align 4, !tbaa !92
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call15, i8** %data, align 8, !tbaa !44
  br i1 %cmp, label %cleanup, label %if.then26

if.then26:                                        ; preds = %if.end13
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 589, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i64 0, i64 0), i8* noundef %alg) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then26, %if.end11, %if.then8, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then8 ], [ 0, %if.end11 ], [ 1, %if.then26 ], [ 1, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @cipher_test_cleanup(%struct.evp_test_st* nocapture noundef readonly %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.cipher_data_st**
  %1 = load %struct.cipher_data_st*, %struct.cipher_data_st** %0, align 8, !tbaa !44
  %key = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 4
  %2 = load i8*, i8** %key, align 8, !tbaa !93
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 598) #13
  %iv = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 7
  %3 = load i8*, i8** %iv, align 8, !tbaa !94
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 599) #13
  %next_iv = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 8
  %4 = load i8*, i8** %next_iv, align 8, !tbaa !95
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 600) #13
  %ciphertext = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 13
  %5 = load i8*, i8** %ciphertext, align 8, !tbaa !96
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 601) #13
  %plaintext = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 11
  %6 = load i8*, i8** %plaintext, align 8, !tbaa !97
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 602) #13
  %arrayidx = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 0
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 604) #13
  %arrayidx.1 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 1
  %8 = load i8*, i8** %arrayidx.1, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 604) #13
  %arrayidx.2 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 2
  %9 = load i8*, i8** %arrayidx.2, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 604) #13
  %arrayidx.3 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 3
  %10 = load i8*, i8** %arrayidx.3, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 604) #13
  %tag = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 19
  %11 = load i8*, i8** %tag, align 8, !tbaa !98
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 605) #13
  %mac_key = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 23
  %12 = load i8*, i8** %mac_key, align 8, !tbaa !99
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 606) #13
  %fetched_cipher = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 1
  %13 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %fetched_cipher, align 8, !tbaa !90
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %13) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cipher_test_parse(%struct.evp_test_st* nocapture noundef readonly %t, i8* noundef readonly %keyword, i8* noundef %value) #1 {
entry:
  %endptr = alloca i8*, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.cipher_data_st**
  %1 = load %struct.cipher_data_st*, %struct.cipher_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %key = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 4
  %key_len = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 5
  %call1 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %key, i64* noundef nonnull %key_len) #14
  br label %cleanup132

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i64 0, i64 0)) #15
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @atoi(i8* noundef %value) #15
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %cleanup132, label %if.end8

if.end8:                                          ; preds = %if.then4
  %rounds = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 9
  store i32 %call5, i32* %rounds, align 8, !tbaa !100
  br label %cleanup132

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0)) #15
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %iv = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 7
  %iv_len = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 10
  %call13 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %iv, i64* noundef nonnull %iv_len) #14
  br label %cleanup132

if.end14:                                         ; preds = %if.end9
  %call15 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i64 0, i64 0)) #15
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  %next_iv = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 8
  %iv_len18 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 10
  %call19 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %next_iv, i64* noundef nonnull %iv_len18) #14
  br label %cleanup132

if.end20:                                         ; preds = %if.end14
  %call21 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i64 0, i64 0)) #15
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  %plaintext = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 11
  %plaintext_len = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 12
  %call24 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %plaintext, i64* noundef nonnull %plaintext_len) #14
  br label %cleanup132

if.end25:                                         ; preds = %if.end20
  %call26 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i64 0, i64 0)) #15
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %ciphertext = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 13
  %ciphertext_len = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 14
  %call29 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %ciphertext, i64* noundef nonnull %ciphertext_len) #14
  br label %cleanup132

if.end30:                                         ; preds = %if.end25
  %call31 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i64 0, i64 0)) #15
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end30
  %call34 = tail call i32 @atoi(i8* noundef %value) #15
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %cleanup132, label %if.end37

if.end37:                                         ; preds = %if.then33
  %conv203 = zext i32 %call34 to i64
  %key_bits = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 6
  store i64 %conv203, i64* %key_bits, align 8, !tbaa !101
  br label %cleanup132

if.end38:                                         ; preds = %if.end30
  %aead = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 3
  %2 = load i32, i32* %aead, align 4, !tbaa !92
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end108, label %if.then39

if.then39:                                        ; preds = %if.end38
  %call40 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i64 0, i64 0)) #15
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.end45.thread, label %if.end45

if.end45.thread:                                  ; preds = %if.then39
  %tls_aad44 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 17
  store i32 1, i32* %tls_aad44, align 8, !tbaa !102
  br label %for.body.preheader

if.end45:                                         ; preds = %if.then39
  %call46 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i64 0, i64 0)) #15
  %cmp47 = icmp eq i32 %call46, 0
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp41
  br i1 %or.cond, label %for.body.preheader, label %if.end63

for.body.preheader:                               ; preds = %if.end45.thread, %if.end45
  %arrayidx = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 0
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !16
  %cmp53 = icmp eq i8* %3, null
  br i1 %cmp53, label %if.then55, label %for.inc

if.then55:                                        ; preds = %for.inc.2, %for.inc.1, %for.inc, %for.body.preheader
  %i.0205.lcssa.wide = phi i64 [ 0, %for.body.preheader ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ]
  %arrayidx.le = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 %i.0205.lcssa.wide
  %arrayidx60 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 16, i64 %i.0205.lcssa.wide
  %call61 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %arrayidx.le, i64* noundef nonnull %arrayidx60) #14
  br label %cleanup132

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 1
  %4 = load i8*, i8** %arrayidx.1, align 8, !tbaa !16
  %cmp53.1 = icmp eq i8* %4, null
  br i1 %cmp53.1, label %if.then55, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 2
  %5 = load i8*, i8** %arrayidx.2, align 8, !tbaa !16
  %cmp53.2 = icmp eq i8* %5, null
  br i1 %cmp53.2, label %if.then55, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 3
  %6 = load i8*, i8** %arrayidx.3, align 8, !tbaa !16
  %cmp53.3 = icmp eq i8* %6, null
  br i1 %cmp53.3, label %if.then55, label %cleanup132

if.end63:                                         ; preds = %if.end45
  %call64 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.111, i64 0, i64 0)) #15
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end63
  %tag = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 19
  %tag_len = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 21
  %call68 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %tag, i64* noundef nonnull %tag_len) #14
  br label %cleanup132

if.end69:                                         ; preds = %if.end63
  %call70 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i64 0, i64 0)) #15
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.end86

if.then73:                                        ; preds = %if.end69
  %call74 = tail call i32 @strcmp(i8* noundef %value, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i64 0, i64 0)) #15
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.then73
  %tag_late = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 22
  store i32 1, i32* %tag_late, align 8, !tbaa !103
  br label %cleanup132

if.else:                                          ; preds = %if.then73
  %call78 = tail call i32 @strcmp(i8* noundef %value, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i64 0, i64 0)) #15
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %cleanup132

if.then81:                                        ; preds = %if.else
  %tag_late82 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 22
  store i32 0, i32* %tag_late82, align 8, !tbaa !103
  br label %cleanup132

if.end86:                                         ; preds = %if.end69
  %call87 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i64 0, i64 0)) #15
  %cmp88 = icmp eq i32 %call87, 0
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.end86
  %mac_key = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 23
  %mac_key_len = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 24
  %call91 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %mac_key, i64* noundef nonnull %mac_key_len) #14
  br label %cleanup132

if.end92:                                         ; preds = %if.end86
  %call93 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.116, i64 0, i64 0)) #15
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.end108

if.then96:                                        ; preds = %if.end92
  %7 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #16
  %call97 = call i64 @strtol(i8* noundef %value, i8** noundef nonnull %endptr, i32 noundef 0) #13
  %conv98 = trunc i64 %call97 to i32
  %tls_version = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 18
  store i32 %conv98, i32* %tls_version, align 4, !tbaa !104
  %8 = load i8, i8* %value, align 1, !tbaa !23
  %cmp101.not = icmp eq i8 %8, 0
  br i1 %cmp101.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then96
  %9 = load i8*, i8** %endptr, align 8, !tbaa !16
  %10 = load i8, i8* %9, align 1, !tbaa !23
  %cmp105 = icmp eq i8 %10, 0
  %phi.cast = zext i1 %cmp105 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then96
  %11 = phi i32 [ 0, %if.then96 ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #16
  br label %cleanup132

if.end108:                                        ; preds = %if.end92, %if.end38
  %call109 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i64 0, i64 0)) #15
  %cmp110 = icmp eq i32 %call109, 0
  br i1 %cmp110, label %if.then112, label %if.end126

if.then112:                                       ; preds = %if.end108
  %call113 = tail call i32 @strcmp(i8* noundef %value, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i64 0, i64 0)) #15
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.else117

if.then116:                                       ; preds = %if.then112
  %enc = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 2
  store i32 1, i32* %enc, align 8, !tbaa !91
  br label %cleanup132

if.else117:                                       ; preds = %if.then112
  %call118 = tail call i32 @strcmp(i8* noundef %value, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i64 0, i64 0)) #15
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then121, label %cleanup132

if.then121:                                       ; preds = %if.else117
  %enc122 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 2
  store i32 0, i32* %enc122, align 8, !tbaa !91
  br label %cleanup132

if.end126:                                        ; preds = %if.end108
  %call127 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.120, i64 0, i64 0)) #15
  %cmp128 = icmp eq i32 %call127, 0
  br i1 %cmp128, label %if.then130, label %cleanup132

if.then130:                                       ; preds = %if.end126
  %cts_mode = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 20
  store i8* %value, i8** %cts_mode, align 8, !tbaa !105
  br label %cleanup132

cleanup132:                                       ; preds = %for.inc.2, %if.then77, %if.then81, %if.else, %land.end, %if.then90, %if.then67, %if.then55, %if.end126, %if.then116, %if.then121, %if.else117, %if.then33, %if.then4, %if.then130, %if.end37, %if.then28, %if.then23, %if.then17, %if.then12, %if.end8, %if.then
  %retval.1 = phi i32 [ %call1, %if.then ], [ 1, %if.end8 ], [ %call13, %if.then12 ], [ %call19, %if.then17 ], [ %call24, %if.then23 ], [ %call29, %if.then28 ], [ 1, %if.end37 ], [ 1, %if.then130 ], [ -1, %if.then4 ], [ -1, %if.then33 ], [ -1, %if.else117 ], [ 1, %if.then121 ], [ 1, %if.then116 ], [ 0, %if.end126 ], [ 1, %if.then77 ], [ 1, %if.then81 ], [ -1, %if.else ], [ %11, %land.end ], [ %call91, %if.then90 ], [ %call68, %if.then67 ], [ %call61, %if.then55 ], [ -1, %for.inc.2 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cipher_test_run(%struct.evp_test_st* noundef %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.cipher_data_st**
  %1 = load %struct.cipher_data_st*, %struct.cipher_data_st** %0, align 8, !tbaa !44
  %key = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 4
  %2 = load i8*, i8** %key, align 8, !tbaa !93
  %tobool.not = icmp eq i8* %2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %cleanup

if.end:                                           ; preds = %entry
  %iv = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 7
  %3 = load i8*, i8** %iv, align 8, !tbaa !94
  %tobool1.not = icmp eq i8* %3, null
  br i1 %tobool1.not, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %cipher = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 0
  %4 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !88
  %call = tail call i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef %4) #13
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end9, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  %5 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !88
  %call5 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %5) #13
  %cmp.not = icmp eq i32 %call5, 65538
  br i1 %cmp.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.then3
  %err7 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i64 0, i64 0), i8** %err7, align 8, !tbaa !41
  br label %cleanup

if.end9:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %aead = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 3
  %6 = load i32, i32* %aead, align 4, !tbaa !92
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %if.end17, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end9
  %tag = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 19
  %7 = load i8*, i8** %tag, align 8, !tbaa !98
  %cmp12 = icmp eq i8* %7, null
  br i1 %cmp12, label %land.lhs.true13, label %if.end17

land.lhs.true13:                                  ; preds = %land.lhs.true11
  %tls_aad = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 17
  %8 = load i32, i32* %tls_aad, align 8, !tbaa !102
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %land.lhs.true13
  %err16 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.123, i64 0, i64 0), i8** %err16, align 8, !tbaa !41
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true13, %land.lhs.true11, %if.end9
  %aux_err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 5
  %enc = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 2
  %cipher69 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 0
  br label %if.end35

if.end35:                                         ; preds = %if.end17, %if.end93
  %out_misalign.0149 = phi i64 [ 0, %if.end17 ], [ %out_misalign.1, %if.end93 ]
  %frag.0148 = phi i32 [ 0, %if.end17 ], [ %frag.1, %if.end93 ]
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @cipher_test_run.aux_err, i64 0, i64 0), i8** %aux_err, align 8, !tbaa !106
  %tobool24.not = icmp eq i64 %out_misalign.0149, 0
  %cond = select i1 %tobool24.not, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i64 0, i64 0)
  %tobool25.not = icmp eq i32 %frag.0148, 0
  %cond26 = select i1 %tobool25.not, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.81, i64 0, i64 0)
  %call27 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @cipher_test_run.aux_err, i64 0, i64 0), i64 noundef 64, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.124, i64 0, i64 0), i8* noundef %cond, i8* noundef %cond26) #13
  %9 = load i32, i32* %enc, align 8, !tbaa !91
  %tobool36.not = icmp eq i32 %9, 0
  br i1 %tobool36.not, label %if.then48, label %if.then37

if.then37:                                        ; preds = %if.end35
  %call38 = tail call fastcc i32 @cipher_test_enc(%struct.evp_test_st* noundef nonnull %t, i32 noundef 1, i64 noundef %out_misalign.0149, i64 noundef -1, i32 noundef %frag.0148) #14
  %cmp39.not = icmp eq i32 %call38, 1
  br i1 %cmp39.not, label %if.end45, label %cleanup

if.end45:                                         ; preds = %if.then37
  %.pr = load i32, i32* %enc, align 8, !tbaa !91
  %cmp47.not = icmp eq i32 %.pr, 1
  br i1 %cmp47.not, label %if.end35.1, label %if.then48

if.then48:                                        ; preds = %if.end35, %if.end45
  %call49 = tail call fastcc i32 @cipher_test_enc(%struct.evp_test_st* noundef %t, i32 noundef 0, i64 noundef %out_misalign.0149, i64 noundef -1, i32 noundef %frag.0148) #14
  %cmp50.not = icmp eq i32 %call49, 1
  br i1 %cmp50.not, label %if.end35.1, label %if.then51

if.then51:                                        ; preds = %if.then48.2, %if.then48.1, %if.then48
  %call49.lcssa = phi i32 [ %call49.2, %if.then48.2 ], [ %call49.1, %if.then48.1 ], [ %call49, %if.then48 ]
  %10 = xor i32 %call49.lcssa, -1
  %call49.lobit.not = lshr i32 %10, 31
  br label %cleanup

if.end35.1:                                       ; preds = %if.end45, %if.then48
  %call34.1 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @cipher_test_run.aux_err, i64 0, i64 0), i64 noundef 64, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.128, i64 0, i64 0), i8* noundef %cond, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i64 0, i64 0), i8* noundef %cond26) #13
  %11 = load i32, i32* %enc, align 8, !tbaa !91
  %tobool36.not.1 = icmp eq i32 %11, 0
  br i1 %tobool36.not.1, label %if.then48.1, label %if.then37.1

if.then37.1:                                      ; preds = %if.end35.1
  %call38.1 = tail call fastcc i32 @cipher_test_enc(%struct.evp_test_st* noundef %t, i32 noundef 1, i64 noundef %out_misalign.0149, i64 noundef 0, i32 noundef %frag.0148) #14
  %cmp39.not.1 = icmp eq i32 %call38.1, 1
  br i1 %cmp39.not.1, label %if.end45.1, label %cleanup

if.end45.1:                                       ; preds = %if.then37.1
  %.pr.1 = load i32, i32* %enc, align 8, !tbaa !91
  %cmp47.not.1 = icmp eq i32 %.pr.1, 1
  br i1 %cmp47.not.1, label %if.end35.2, label %if.then48.1

if.then48.1:                                      ; preds = %if.end45.1, %if.end35.1
  %call49.1 = tail call fastcc i32 @cipher_test_enc(%struct.evp_test_st* noundef %t, i32 noundef 0, i64 noundef %out_misalign.0149, i64 noundef 0, i32 noundef %frag.0148) #14
  %cmp50.not.1 = icmp eq i32 %call49.1, 1
  br i1 %cmp50.not.1, label %if.end35.2, label %if.then51

if.end35.2:                                       ; preds = %if.then48.1, %if.end45.1
  %call34.2 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @cipher_test_run.aux_err, i64 0, i64 0), i64 noundef 64, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.128, i64 0, i64 0), i8* noundef %cond, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i64 0, i64 0), i8* noundef %cond26) #13
  %12 = load i32, i32* %enc, align 8, !tbaa !91
  %tobool36.not.2 = icmp eq i32 %12, 0
  br i1 %tobool36.not.2, label %if.then48.2, label %if.then37.2

if.then37.2:                                      ; preds = %if.end35.2
  %call38.2 = tail call fastcc i32 @cipher_test_enc(%struct.evp_test_st* noundef %t, i32 noundef 1, i64 noundef %out_misalign.0149, i64 noundef 1, i32 noundef %frag.0148) #14
  %cmp39.not.2 = icmp eq i32 %call38.2, 1
  br i1 %cmp39.not.2, label %if.end45.2, label %cleanup

if.end45.2:                                       ; preds = %if.then37.2
  %.pr.2 = load i32, i32* %enc, align 8, !tbaa !91
  %cmp47.not.2 = icmp eq i32 %.pr.2, 1
  br i1 %cmp47.not.2, label %for.end, label %if.then48.2

if.then48.2:                                      ; preds = %if.end45.2, %if.end35.2
  %call49.2 = tail call fastcc i32 @cipher_test_enc(%struct.evp_test_st* noundef %t, i32 noundef 0, i64 noundef %out_misalign.0149, i64 noundef 1, i32 noundef %frag.0148) #14
  %cmp50.not.2 = icmp eq i32 %call49.2, 1
  br i1 %cmp50.not.2, label %for.end, label %if.then51

for.end:                                          ; preds = %if.end45.2, %if.then48.2
  %cmp57 = icmp eq i64 %out_misalign.0149, 1
  %or.cond = select i1 %cmp57, i1 %tobool25.not, i1 false
  br i1 %or.cond, label %if.then60, label %if.else91

if.then60:                                        ; preds = %for.end
  %13 = load i32, i32* %aead, align 4, !tbaa !92
  switch i32 %13, label %lor.lhs.false72 [
    i32 7, label %for.end94
    i32 2, label %for.end94
    i32 -1, label %land.lhs.true68
  ]

land.lhs.true68:                                  ; preds = %if.then60
  %14 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher69, align 8, !tbaa !88
  %call70 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %14) #13
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %for.end94, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.then60, %land.lhs.true68
  %15 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher69, align 8, !tbaa !88
  %call74 = tail call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %15) #13
  %and = and i64 %call74, 16384
  %cmp75.not = icmp eq i64 %and, 0
  br i1 %cmp75.not, label %lor.lhs.false76, label %for.end94

lor.lhs.false76:                                  ; preds = %lor.lhs.false72
  %16 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher69, align 8, !tbaa !88
  %call78 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %16) #13
  %cmp79 = icmp eq i32 %call78, 65540
  br i1 %cmp79, label %for.end94, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false76
  %17 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher69, align 8, !tbaa !88
  %call82 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %17) #13
  %cmp83 = icmp eq i32 %call82, 65537
  br i1 %cmp83, label %for.end94, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false80
  %18 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher69, align 8, !tbaa !88
  %call86 = tail call i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef %18) #13
  %cmp87 = icmp eq i32 %call86, 65538
  br i1 %cmp87, label %for.end94, label %if.end93

if.else91:                                        ; preds = %for.end
  %inc92 = add i64 %out_misalign.0149, 1
  br label %if.end93

if.end93:                                         ; preds = %lor.lhs.false84, %if.else91
  %frag.1 = phi i32 [ %frag.0148, %if.else91 ], [ 1, %lor.lhs.false84 ]
  %out_misalign.1 = phi i64 [ %inc92, %if.else91 ], [ 0, %lor.lhs.false84 ]
  %cmp18 = icmp ult i64 %out_misalign.1, 2
  br i1 %cmp18, label %if.end35, label %for.end94, !llvm.loop !107

for.end94:                                        ; preds = %if.then60, %if.then60, %land.lhs.true68, %lor.lhs.false72, %lor.lhs.false76, %lor.lhs.false80, %lor.lhs.false84, %if.end93
  store i8* null, i8** %aux_err, align 8, !tbaa !106
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.then37.1, %if.then37.2, %if.then51, %for.end94, %if.then15, %if.then6, %if.then
  %retval.0 = phi i32 [ 1, %for.end94 ], [ 0, %if.then15 ], [ 0, %if.then6 ], [ 0, %if.then ], [ %call49.lobit.not, %if.then51 ], [ 1, %if.then37.2 ], [ 1, %if.then37.1 ], [ 1, %if.then37 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @is_cipher_disabled(i8* noundef readonly %name) unnamed_addr #11 {
entry:
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0)) #15
  %call1 = tail call i32 @strncasecmp(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0), i8* noundef %name, i64 noundef %call) #15
  %cmp = icmp eq i32 %call1, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

declare dso_local i32 @ERR_set_mark() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_get_cipherbyname(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local i32 @ERR_pop_to_mark() local_unnamed_addr #3

declare dso_local i32 @ERR_clear_last_mark() local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_get_mode(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncasecmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_get_iv_length(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cipher_test_enc(%struct.evp_test_st* noundef %t, i32 noundef %enc, i64 noundef %out_misalign, i64 noundef %inp_misalign, i32 noundef %frag) unnamed_addr #1 {
entry:
  %tmplen = alloca i32, align 4
  %chunklen = alloca i32, align 4
  %tmpflen = alloca i32, align 4
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp45 = alloca %struct.ossl_param_st, align 8
  %tmp48 = alloca %struct.ossl_param_st, align 8
  %iv151 = alloca [128 x i8], align 16
  %params197 = alloca [2 x %struct.ossl_param_st], align 16
  %tmp199 = alloca %struct.ossl_param_st, align 8
  %tmp202 = alloca %struct.ossl_param_st, align 8
  %params318 = alloca [2 x %struct.ossl_param_st], align 16
  %tmp330 = alloca %struct.ossl_param_st, align 8
  %tmp334 = alloca %struct.ossl_param_st, align 8
  %rtag = alloca [16 x i8], align 16
  %iv501 = alloca [128 x i8], align 16
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.cipher_data_st**
  %1 = load %struct.cipher_data_st*, %struct.cipher_data_st** %0, align 8, !tbaa !44
  %2 = bitcast i32* %tmplen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #16
  %3 = bitcast i32* %chunklen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16
  %4 = bitcast i32* %tmpflen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #16
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #13
  %5 = bitcast %struct.evp_cipher_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 700, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.130, i64 0, i64 0), i8* noundef %5) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err529, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #13
  %6 = bitcast %struct.evp_cipher_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 702, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.131, i64 0, i64 0), i8* noundef %6) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err529, label %if.end6

if.end6:                                          ; preds = %if.end
  tail call void @EVP_CIPHER_CTX_set_flags(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 1) #13
  %tobool7.not = icmp eq i32 %enc, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %plaintext = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 11
  %plaintext_len = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 12
  %ciphertext = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 13
  %ciphertext_len = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 14
  br label %if.end13

if.else:                                          ; preds = %if.end6
  %ciphertext9 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 13
  %ciphertext_len10 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 14
  %plaintext11 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 11
  %plaintext_len12 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 12
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %in.0.in = phi i8** [ %plaintext, %if.then8 ], [ %ciphertext9, %if.else ]
  %expected_out.0.in = phi i8** [ %ciphertext, %if.then8 ], [ %plaintext11, %if.else ]
  %in_len.0.in = phi i64* [ %plaintext_len, %if.then8 ], [ %ciphertext_len10, %if.else ]
  %out_len.0.in = phi i64* [ %ciphertext_len, %if.then8 ], [ %plaintext_len12, %if.else ]
  %out_len.0 = load i64, i64* %out_len.0.in, align 8, !tbaa !24
  %in_len.0 = load i64, i64* %in_len.0.in, align 8, !tbaa !24
  %expected_out.0 = load i8*, i8** %expected_out.0.in, align 8, !tbaa !16
  %in.0 = load i8*, i8** %in.0.in, align 8, !tbaa !16
  %cmp = icmp eq i64 %inp_misalign, -1
  %add = add i64 %in_len.0, %out_misalign
  br i1 %cmp, label %if.then14, label %if.else21

if.then14:                                        ; preds = %if.end13
  %add15 = add i64 %add, 64
  %call16 = tail call i8* @CRYPTO_malloc(i64 noundef %add15, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 718) #13
  %tobool17.not = icmp eq i8* %call16, null
  br i1 %tobool17.not, label %err529, label %if.end19

if.end19:                                         ; preds = %if.then14
  %add.ptr = getelementptr inbounds i8, i8* %call16, i64 %out_misalign
  br label %if.end37

if.else21:                                        ; preds = %if.end13
  %and = and i64 %add, 15
  %sub = sub nuw nsw i64 16, %and
  %add23 = add i64 %sub, %inp_misalign
  %add25 = add i64 %in_len.0, 64
  %add26 = add i64 %add25, %add
  %add27 = add i64 %add26, %add23
  %call28 = tail call i8* @CRYPTO_malloc(i64 noundef %add27, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 733) #13
  %tobool29.not = icmp eq i8* %call28, null
  br i1 %tobool29.not, label %err529, label %if.end31

if.end31:                                         ; preds = %if.else21
  %add.ptr32 = getelementptr inbounds i8, i8* %call28, i64 %out_misalign
  %add.ptr33 = getelementptr inbounds i8, i8* %add.ptr32, i64 %in_len.0
  %add.ptr34 = getelementptr inbounds i8, i8* %add.ptr33, i64 64
  %add.ptr35 = getelementptr inbounds i8, i8* %add.ptr34, i64 %add23
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %if.end19
  %add.ptr35.sink = phi i8* [ %add.ptr35, %if.end31 ], [ %add.ptr, %if.end19 ]
  %tmp.0 = phi i8* [ %call28, %if.end31 ], [ %call16, %if.end19 ]
  %call36 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr35.sink, i8* noundef %in.0, i64 noundef %in_len.0) #13
  %cipher = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 0
  %7 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !88
  %call38 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef %7, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef %enc) #13
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end37
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.132, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err529

if.end42:                                         ; preds = %if.end37
  %cts_mode = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 20
  %8 = load i8*, i8** %cts_mode, align 8, !tbaa !105
  %cmp43.not = icmp eq i8* %8, null
  br i1 %cmp43.not, label %if.end54, label %if.then44

if.then44:                                        ; preds = %if.end42
  %9 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #16
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %10 = bitcast %struct.ossl_param_st* %tmp45 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #16
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp45, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i64 0, i64 0), i8* noundef nonnull %8, i64 noundef 0) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #16
  %arrayidx47 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %11 = bitcast %struct.ossl_param_st* %tmp48 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp48) #13
  %12 = bitcast %struct.ossl_param_st* %arrayidx47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #16
  %call49 = call i32 @EVP_CIPHER_CTX_set_params(%struct.evp_cipher_ctx_st* noundef %call, %struct.ossl_param_st* noundef nonnull %arrayidx) #13
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then44
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #16
  br label %if.end54

cleanup:                                          ; preds = %if.then44
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.134, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #16
  br label %err529

if.end54:                                         ; preds = %cleanup.thread, %if.end42
  %iv = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 7
  %13 = load i8*, i8** %iv, align 8, !tbaa !94
  %tobool55.not = icmp eq i8* %13, null
  br i1 %tobool55.not, label %if.end74, label %if.then56

if.then56:                                        ; preds = %if.end54
  %aead = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 3
  %14 = load i32, i32* %aead, align 4, !tbaa !92
  %tobool57.not = icmp eq i32 %14, 0
  %iv_len65 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 10
  %15 = load i64, i64* %iv_len65, align 8, !tbaa !108
  br i1 %tobool57.not, label %if.else64, label %if.then58

if.then58:                                        ; preds = %if.then56
  %conv = trunc i64 %15 to i32
  %call59 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 9, i32 noundef %conv, i8* noundef null) #13
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.end74

if.then61:                                        ; preds = %if.then58
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.135, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err529

if.else64:                                        ; preds = %if.then56
  %call66 = call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %call) #13
  %conv67 = sext i32 %call66 to i64
  %cmp68.not = icmp eq i64 %15, %conv67
  br i1 %cmp68.not, label %if.end74, label %if.then70

if.then70:                                        ; preds = %if.else64
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.135, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err529

if.end74:                                         ; preds = %if.then58, %if.else64, %if.end54
  %aead75 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 3
  %16 = load i32, i32* %aead75, align 4, !tbaa !92
  %tobool76.not = icmp eq i32 %16, 0
  br i1 %tobool76.not, label %if.end106, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end74
  %tls_aad = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 17
  %17 = load i32, i32* %tls_aad, align 8, !tbaa !102
  %tobool77.not = icmp eq i32 %17, 0
  br i1 %tobool77.not, label %if.then78, label %if.end106

if.then78:                                        ; preds = %land.lhs.true
  %tobool7.not.not = xor i1 %tobool7.not, true
  %cmp81 = icmp eq i32 %16, 65539
  %or.cond = select i1 %tobool7.not.not, i1 true, i1 %cmp81
  br i1 %or.cond, label %if.end90.thread, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %if.then78
  %tag_late = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 22
  %18 = load i32, i32* %tag_late, align 8, !tbaa !103
  %tobool84.not = icmp eq i32 %18, 0
  br i1 %tobool84.not, label %if.end90, label %if.end90.thread

if.end90.thread:                                  ; preds = %if.then78, %lor.lhs.false83
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.136, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %lor.lhs.false92

if.end90:                                         ; preds = %lor.lhs.false83
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  %tag89 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 19
  %19 = load i8*, i8** %tag89, align 8, !tbaa !98
  %tobool91.not = icmp eq i8* %19, null
  br i1 %tobool91.not, label %lor.lhs.false92, label %if.then96

lor.lhs.false92:                                  ; preds = %if.end90.thread, %if.end90
  %cmp94.not = icmp eq i32 %16, 6
  br i1 %cmp94.not, label %if.end106, label %if.then96

if.then96:                                        ; preds = %lor.lhs.false92, %if.end90
  %tag.0812 = phi i8* [ null, %lor.lhs.false92 ], [ %19, %if.end90 ]
  %tag_len = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 21
  %20 = load i64, i64* %tag_len, align 8, !tbaa !109
  %conv97 = trunc i64 %20 to i32
  %call98 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 17, i32 noundef %conv97, i8* noundef %tag.0812) #13
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %err529, label %if.end106

if.end106:                                        ; preds = %if.then96, %lor.lhs.false92, %land.lhs.true, %if.end74
  %rounds = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 9
  %21 = load i32, i32* %rounds, align 8, !tbaa !100
  %cmp107.not = icmp eq i32 %21, 0
  br i1 %cmp107.not, label %if.end120, label %if.then109

if.then109:                                       ; preds = %if.end106
  %call112 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 5, i32 noundef %21, i8* noundef null) #13
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %cleanup117, label %if.end120

cleanup117:                                       ; preds = %if.then109
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.138, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err529

if.end120:                                        ; preds = %if.then109, %if.end106
  %key_len = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 5
  %22 = load i64, i64* %key_len, align 8, !tbaa !110
  %conv121 = trunc i64 %22 to i32
  %call122 = call i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef %conv121) #13
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then124, label %if.end126

if.then124:                                       ; preds = %if.end120
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.139, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err529

if.end126:                                        ; preds = %if.end120
  %key_bits = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 6
  %23 = load i64, i64* %key_bits, align 8, !tbaa !101
  %cmp127.not = icmp eq i64 %23, 0
  br i1 %cmp127.not, label %if.end140, label %if.then129

if.then129:                                       ; preds = %if.end126
  %conv131 = trunc i64 %23 to i32
  %call132 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 3, i32 noundef %conv131, i8* noundef null) #13
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %cleanup137, label %if.end140

cleanup137:                                       ; preds = %if.then129
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.140, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err529

if.end140:                                        ; preds = %if.then129, %if.end126
  %key = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 4
  %24 = load i8*, i8** %key, align 8, !tbaa !93
  %25 = load i8*, i8** %iv, align 8, !tbaa !94
  %call142 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef %24, i8* noundef %25, i32 noundef -1) #13
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.then144, label %if.end146

if.then144:                                       ; preds = %if.end140
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.141, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err529

if.end146:                                        ; preds = %if.end140
  %26 = load i8*, i8** %iv, align 8, !tbaa !94
  %cmp148.not = icmp eq i8* %26, null
  br i1 %cmp148.not, label %if.end177, label %if.then150

if.then150:                                       ; preds = %if.end146
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %iv151, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %27) #16
  %call153 = call i32 @EVP_CIPHER_CTX_get_updated_iv(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %27, i64 noundef 128) #13
  %cmp154 = icmp ne i32 %call153, 0
  %conv155 = zext i1 %cmp154 to i32
  %call156 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 817, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.142, i64 0, i64 0), i32 noundef %conv155) #13
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %cleanup174, label %lor.lhs.false158

lor.lhs.false158:                                 ; preds = %if.then150
  %28 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !88
  %call160 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %28) #13
  %and161 = and i64 %call160, 16
  %cmp162 = icmp eq i64 %and161, 0
  br i1 %cmp162, label %land.lhs.true164, label %cleanup174.thread

land.lhs.true164:                                 ; preds = %lor.lhs.false158
  %29 = load i8*, i8** %iv, align 8, !tbaa !94
  %iv_len166 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 10
  %30 = load i64, i64* %iv_len166, align 8, !tbaa !108
  %call169 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 820, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144, i64 0, i64 0), i8* noundef %29, i64 noundef %30, i8* noundef nonnull %27, i64 noundef %30) #13
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %cleanup174, label %cleanup174.thread

cleanup174.thread:                                ; preds = %land.lhs.true164, %lor.lhs.false158
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %27) #16
  br label %if.end177

cleanup174:                                       ; preds = %if.then150, %land.lhs.true164
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.145, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %27) #16
  br label %err529

if.end177:                                        ; preds = %cleanup174.thread, %if.end146
  %call178 = call i32 @ERR_set_mark() #13
  %call179 = call i32 @EVP_CIPHER_CTX_copy(%struct.evp_cipher_ctx_st* noundef %call2, %struct.evp_cipher_ctx_st* noundef %call) #13
  %tobool180.not = icmp eq i32 %call179, 0
  %call2.call = select i1 %tobool180.not, %struct.evp_cipher_ctx_st* %call2, %struct.evp_cipher_ctx_st* %call
  %call. = select i1 %tobool180.not, %struct.evp_cipher_ctx_st* %call, %struct.evp_cipher_ctx_st* null
  %call.call2 = select i1 %tobool180.not, %struct.evp_cipher_ctx_st* %call, %struct.evp_cipher_ctx_st* %call2
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call2.call) #13
  %call184 = call i32 @ERR_pop_to_mark() #13
  %mac_key = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 23
  %31 = load i8*, i8** %mac_key, align 8, !tbaa !99
  %cmp185.not = icmp eq i8* %31, null
  br i1 %cmp185.not, label %if.end194, label %land.lhs.true187

land.lhs.true187:                                 ; preds = %if.end177
  %mac_key_len = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 24
  %32 = load i64, i64* %mac_key_len, align 8, !tbaa !111
  %conv188 = trunc i64 %32 to i32
  %call190 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call.call2, i32 noundef 23, i32 noundef %conv188, i8* noundef nonnull %31) #13
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.then192, label %if.end194

if.then192:                                       ; preds = %land.lhs.true187
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.146, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err529

if.end194:                                        ; preds = %land.lhs.true187, %if.end177
  %tls_version = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 18
  %33 = load i32, i32* %tls_version, align 4, !tbaa !104
  %tobool195.not = icmp eq i32 %33, 0
  br i1 %tobool195.not, label %if.end212, label %if.then196

if.then196:                                       ; preds = %if.end194
  %34 = bitcast [2 x %struct.ossl_param_st]* %params197 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %34) #16
  %arrayidx198 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params197, i64 0, i64 0
  %35 = bitcast %struct.ossl_param_st* %tmp199 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %35) #16
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp199, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.147, i64 0, i64 0), i32* noundef nonnull %tls_version) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %34, i8* noundef nonnull align 8 dereferenceable(40) %35, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %35) #16
  %arrayidx201 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params197, i64 0, i64 1
  %36 = bitcast %struct.ossl_param_st* %tmp202 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %36) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp202) #13
  %37 = bitcast %struct.ossl_param_st* %arrayidx201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %37, i8* noundef nonnull align 8 dereferenceable(40) %36, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %36) #16
  %call204 = call i32 @EVP_CIPHER_CTX_set_params(%struct.evp_cipher_ctx_st* noundef %call.call2, %struct.ossl_param_st* noundef nonnull %arrayidx198) #13
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %cleanup209, label %cleanup209.thread

cleanup209.thread:                                ; preds = %if.then196
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %34) #16
  br label %if.end212

cleanup209:                                       ; preds = %if.then196
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.148, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %34) #16
  br label %err529

if.end212:                                        ; preds = %cleanup209.thread, %if.end194
  %38 = load i32, i32* %aead75, align 4, !tbaa !92
  %cmp214 = icmp eq i32 %38, 7
  br i1 %cmp214, label %if.then216, label %if.end223

if.then216:                                       ; preds = %if.end212
  %conv217 = trunc i64 %out_len.0 to i32
  %call218 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call.call2, i8* noundef null, i32* noundef nonnull %tmplen, i8* noundef null, i32 noundef %conv217) #13
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.then220, label %if.end223

if.then220:                                       ; preds = %if.then216
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.149, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err529

if.end223:                                        ; preds = %if.then216, %if.end212
  %arrayidx224 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 0
  %39 = load i8*, i8** %arrayidx224, align 8, !tbaa !16
  %cmp225.not = icmp eq i8* %39, null
  br i1 %cmp225.not, label %if.end314, label %land.lhs.true227

land.lhs.true227:                                 ; preds = %if.end223
  %tls_aad228 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 17
  %40 = load i32, i32* %tls_aad228, align 8, !tbaa !102
  %tobool229.not = icmp eq i32 %40, 0
  br i1 %tobool229.not, label %if.then230, label %if.end314

if.then230:                                       ; preds = %land.lhs.true227
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  %tobool232.not = icmp eq i32 %frag, 0
  %41 = load i8*, i8** %arrayidx224, align 8, !tbaa !16
  %cmp236.not856 = icmp eq i8* %41, null
  br i1 %tobool232.not, label %for.cond.preheader, label %for.cond249.preheader

for.cond249.preheader:                            ; preds = %if.then230
  br i1 %cmp236.not856, label %if.end314, label %for.body255

for.cond.preheader:                               ; preds = %if.then230
  br i1 %cmp236.not856, label %if.end314, label %for.body

for.cond:                                         ; preds = %for.body
  %arrayidx235 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 %indvars.iv.next863
  %42 = load i8*, i8** %arrayidx235, align 8, !tbaa !16
  %cmp236.not = icmp eq i8* %42, null
  br i1 %cmp236.not, label %if.end314, label %for.body, !llvm.loop !112

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %for.cond ], [ 0, %for.cond.preheader ]
  %43 = phi i8* [ %42, %for.cond ], [ %41, %for.cond.preheader ]
  %arrayidx242 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 16, i64 %indvars.iv862
  %44 = load i64, i64* %arrayidx242, align 8, !tbaa !24
  %conv243 = trunc i64 %44 to i32
  %call244 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call.call2, i8* noundef null, i32* noundef nonnull %chunklen, i8* noundef nonnull %43, i32 noundef %conv243) #13
  %tobool245.not = icmp eq i32 %call244, 0
  %indvars.iv.next863 = add nuw i64 %indvars.iv862, 1
  br i1 %tobool245.not, label %err529, label %for.cond

for.body255:                                      ; preds = %for.cond249.preheader, %for.inc310
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc310 ], [ 0, %for.cond249.preheader ]
  %45 = phi i8* [ %52, %for.inc310 ], [ %41, %for.cond249.preheader ]
  %arrayidx252853 = phi i8** [ %arrayidx252, %for.inc310 ], [ %arrayidx224, %for.cond249.preheader ]
  %donelen.0850 = phi i64 [ %donelen.2828, %for.inc310 ], [ 0, %for.cond249.preheader ]
  %arrayidx258 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 16, i64 %indvars.iv
  %46 = load i64, i64* %arrayidx258, align 8, !tbaa !24
  %cmp259.not = icmp eq i64 %46, 0
  br i1 %cmp259.not, label %for.inc310, label %if.then261

if.then261:                                       ; preds = %for.body255
  %call265 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call.call2, i8* noundef null, i32* noundef nonnull %chunklen, i8* noundef nonnull %45, i32 noundef 1) #13
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %err529, label %if.end270

if.end270:                                        ; preds = %if.then261
  %inc269 = add i64 %donelen.0850, 1
  %.pr = load i64, i64* %arrayidx258, align 8, !tbaa !24
  %cmp274 = icmp ugt i64 %.pr, 2
  br i1 %cmp274, label %if.then276, label %if.end295

if.then276:                                       ; preds = %if.end270
  %47 = load i8*, i8** %arrayidx252853, align 8, !tbaa !16
  %add.ptr280 = getelementptr inbounds i8, i8* %47, i64 %inc269
  %48 = trunc i64 %.pr to i32
  %conv285 = add i32 %48, -2
  %call286 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call.call2, i8* noundef null, i32* noundef nonnull %chunklen, i8* noundef %add.ptr280, i32 noundef %conv285) #13
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %err529, label %if.end289

if.end289:                                        ; preds = %if.then276
  %49 = load i64, i64* %arrayidx258, align 8, !tbaa !24
  %sub293 = add i64 %donelen.0850, -1
  %add294 = add i64 %sub293, %49
  br label %if.end295

if.end295:                                        ; preds = %if.end289, %if.end270
  %50 = phi i64 [ %49, %if.end289 ], [ %.pr, %if.end270 ]
  %donelen.2 = phi i64 [ %add294, %if.end289 ], [ %inc269, %if.end270 ]
  %cmp299 = icmp ugt i64 %50, 1
  br i1 %cmp299, label %land.lhs.true301, label %for.inc310

land.lhs.true301:                                 ; preds = %if.end295
  %51 = load i8*, i8** %arrayidx252853, align 8, !tbaa !16
  %add.ptr305 = getelementptr inbounds i8, i8* %51, i64 %donelen.2
  %call306 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call.call2, i8* noundef null, i32* noundef nonnull %chunklen, i8* noundef %add.ptr305, i32 noundef 1) #13
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %err529, label %for.inc310

for.inc310:                                       ; preds = %for.body255, %if.end295, %land.lhs.true301
  %donelen.2828 = phi i64 [ %donelen.2, %if.end295 ], [ %donelen.2, %land.lhs.true301 ], [ %donelen.0850, %for.body255 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %arrayidx252 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 15, i64 %indvars.iv.next
  %52 = load i8*, i8** %arrayidx252, align 8, !tbaa !16
  %cmp253.not = icmp eq i8* %52, null
  br i1 %cmp253.not, label %if.end314, label %for.body255, !llvm.loop !113

if.end314:                                        ; preds = %for.inc310, %for.cond, %for.cond249.preheader, %for.cond.preheader, %land.lhs.true227, %if.end223
  %tls_aad315 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 17
  %53 = load i32, i32* %tls_aad315, align 8, !tbaa !102
  %tobool316.not = icmp eq i32 %53, 0
  br i1 %tobool316.not, label %if.else345, label %if.then317

if.then317:                                       ; preds = %if.end314
  %54 = bitcast [2 x %struct.ossl_param_st]* %params318 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %54) #16
  %55 = load i8*, i8** %arrayidx224, align 8, !tbaa !16
  %arrayidx323 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 16, i64 0
  %56 = load i64, i64* %arrayidx323, align 8, !tbaa !24
  %call324 = call i8* @CRYPTO_memdup(i8* noundef %55, i64 noundef %56, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 902) #13
  %cmp325 = icmp eq i8* %call324, null
  br i1 %cmp325, label %cleanup341.thread, label %if.end328

if.end328:                                        ; preds = %if.then317
  %arrayidx329 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params318, i64 0, i64 0
  %57 = bitcast %struct.ossl_param_st* %tmp330 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %57) #16
  %58 = load i64, i64* %arrayidx323, align 8, !tbaa !24
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp330, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.151, i64 0, i64 0), i8* noundef nonnull %call324, i64 noundef %58) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %54, i8* noundef nonnull align 8 dereferenceable(40) %57, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %57) #16
  %arrayidx333 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params318, i64 0, i64 1
  %59 = bitcast %struct.ossl_param_st* %tmp334 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %59) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp334) #13
  %60 = bitcast %struct.ossl_param_st* %arrayidx333 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %60, i8* noundef nonnull align 8 dereferenceable(40) %59, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %59) #16
  %call336 = call i32 @EVP_CIPHER_CTX_set_params(%struct.evp_cipher_ctx_st* noundef %call.call2, %struct.ossl_param_st* noundef nonnull %arrayidx329) #13
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %if.then338, label %cleanup341

if.then338:                                       ; preds = %if.end328
  call void @CRYPTO_free(i8* noundef nonnull %call324, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 909) #13
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.152, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %cleanup341.thread

cleanup341.thread:                                ; preds = %if.then338, %if.then317
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %54) #16
  br label %err529

cleanup341:                                       ; preds = %if.end328
  call void @CRYPTO_free(i8* noundef nonnull %call324, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 913) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %54) #16
  br label %if.end364

if.else345:                                       ; preds = %if.end314
  br i1 %tobool7.not, label %land.lhs.true347, label %if.end364

land.lhs.true347:                                 ; preds = %if.else345
  %61 = load i32, i32* %aead75, align 4, !tbaa !92
  %cmp349 = icmp eq i32 %61, 65539
  br i1 %cmp349, label %if.then354, label %lor.lhs.false351

lor.lhs.false351:                                 ; preds = %land.lhs.true347
  %tag_late352 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 22
  %62 = load i32, i32* %tag_late352, align 8, !tbaa !103
  %tobool353.not = icmp eq i32 %62, 0
  br i1 %tobool353.not, label %if.end364, label %if.then354

if.then354:                                       ; preds = %lor.lhs.false351, %land.lhs.true347
  %tag_len355 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 21
  %63 = load i64, i64* %tag_len355, align 8, !tbaa !109
  %conv356 = trunc i64 %63 to i32
  %tag357 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 19
  %64 = load i8*, i8** %tag357, align 8, !tbaa !98
  %call358 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call.call2, i32 noundef 17, i32 noundef %conv356, i8* noundef %64) #13
  %tobool359.not = icmp eq i32 %call358, 0
  br i1 %tobool359.not, label %if.then360, label %if.end364

if.then360:                                       ; preds = %if.then354
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err529

if.end364:                                        ; preds = %cleanup341, %if.else345, %lor.lhs.false351, %if.then354
  %call365 = call i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef %call.call2, i32 noundef 0) #13
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.153, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  store i32 0, i32* %tmplen, align 4, !tbaa !54
  %tobool367.not = icmp eq i32 %frag, 0
  br i1 %tobool367.not, label %if.then368, label %if.else375

if.then368:                                       ; preds = %if.end364
  %add.ptr369 = getelementptr inbounds i8, i8* %tmp.0, i64 %out_misalign
  %conv370 = trunc i64 %in_len.0 to i32
  %call371 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call.call2, i8* noundef nonnull %add.ptr369, i32* noundef nonnull %tmplen, i8* noundef %call36, i32 noundef %conv370) #13
  %tobool372.not = icmp eq i32 %call371, 0
  br i1 %tobool372.not, label %err529, label %if.then368.if.end413_crit_edge

if.then368.if.end413_crit_edge:                   ; preds = %if.then368
  %.pre = load i32, i32* %tmplen, align 4, !tbaa !54
  br label %if.end413

if.else375:                                       ; preds = %if.end364
  %cmp376.not = icmp eq i64 %in_len.0, 0
  br i1 %cmp376.not, label %if.end413, label %if.then378

if.then378:                                       ; preds = %if.else375
  %add.ptr379 = getelementptr inbounds i8, i8* %tmp.0, i64 %out_misalign
  %call380 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call.call2, i8* noundef nonnull %add.ptr379, i32* noundef nonnull %chunklen, i8* noundef %call36, i32 noundef 1) #13
  %tobool381.not = icmp eq i32 %call380, 0
  br i1 %tobool381.not, label %err529, label %if.end385

if.end385:                                        ; preds = %if.then378
  %65 = load i32, i32* %chunklen, align 4, !tbaa !54
  %66 = load i32, i32* %tmplen, align 4, !tbaa !54
  %add384 = add nsw i32 %66, %65
  store i32 %add384, i32* %tmplen, align 4, !tbaa !54
  %incdec.ptr = getelementptr inbounds i8, i8* %call36, i64 1
  %dec = add i64 %in_len.0, -1
  %cmp386 = icmp ugt i64 %dec, 1
  br i1 %cmp386, label %if.then388, label %if.end400

if.then388:                                       ; preds = %if.end385
  %idx.ext = sext i32 %add384 to i64
  %add.ptr390 = getelementptr inbounds i8, i8* %add.ptr379, i64 %idx.ext
  %sub391 = add i64 %in_len.0, -2
  %conv392 = trunc i64 %sub391 to i32
  %call393 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call.call2, i8* noundef nonnull %add.ptr390, i32* noundef nonnull %chunklen, i8* noundef nonnull %incdec.ptr, i32 noundef %conv392) #13
  %tobool394.not = icmp eq i32 %call393, 0
  br i1 %tobool394.not, label %err529, label %if.end400.thread837

if.end400.thread837:                              ; preds = %if.then388
  %67 = load i32, i32* %chunklen, align 4, !tbaa !54
  %68 = load i32, i32* %tmplen, align 4, !tbaa !54
  %add397 = add nsw i32 %68, %67
  store i32 %add397, i32* %tmplen, align 4, !tbaa !54
  %add.ptr399 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %sub391
  br label %if.then403

if.end400:                                        ; preds = %if.end385
  %cmp401.not = icmp eq i64 %dec, 0
  br i1 %cmp401.not, label %if.end413, label %if.then403

if.then403:                                       ; preds = %if.end400.thread837, %if.end400
  %69 = phi i32 [ %add397, %if.end400.thread837 ], [ %add384, %if.end400 ]
  %in.3841 = phi i8* [ %add.ptr399, %if.end400.thread837 ], [ %incdec.ptr, %if.end400 ]
  %idx.ext405 = sext i32 %69 to i64
  %add.ptr406 = getelementptr inbounds i8, i8* %add.ptr379, i64 %idx.ext405
  %call407 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call.call2, i8* noundef nonnull %add.ptr406, i32* noundef nonnull %chunklen, i8* noundef nonnull %in.3841, i32 noundef 1) #13
  %tobool408.not = icmp eq i32 %call407, 0
  br i1 %tobool408.not, label %err529, label %if.end410

if.end410:                                        ; preds = %if.then403
  %70 = load i32, i32* %chunklen, align 4, !tbaa !54
  %71 = load i32, i32* %tmplen, align 4, !tbaa !54
  %add411 = add nsw i32 %71, %70
  store i32 %add411, i32* %tmplen, align 4, !tbaa !54
  br label %if.end413

if.end413:                                        ; preds = %if.then368.if.end413_crit_edge, %if.else375, %if.end400, %if.end410
  %72 = phi i32 [ %.pre, %if.then368.if.end413_crit_edge ], [ 0, %if.else375 ], [ %add384, %if.end400 ], [ %add411, %if.end410 ]
  %add.ptr414 = getelementptr inbounds i8, i8* %tmp.0, i64 %out_misalign
  %idx.ext415 = sext i32 %72 to i64
  %add.ptr416 = getelementptr inbounds i8, i8* %add.ptr414, i64 %idx.ext415
  %call417 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call.call2, i8* noundef nonnull %add.ptr416, i32* noundef nonnull %tmpflen) #13
  %tobool418.not = icmp eq i32 %call417, 0
  br i1 %tobool418.not, label %if.then419, label %if.end421

if.then419:                                       ; preds = %if.end413
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.154, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err529

if.end421:                                        ; preds = %if.end413
  br i1 %tobool7.not, label %land.lhs.true423, label %if.end456

land.lhs.true423:                                 ; preds = %if.end421
  %73 = load i32, i32* %tls_aad315, align 8, !tbaa !102
  %tobool425.not = icmp eq i32 %73, 0
  br i1 %tobool425.not, label %if.end456, label %if.then426

if.then426:                                       ; preds = %land.lhs.true423
  %74 = load i32, i32* %tls_version, align 4, !tbaa !104
  %cmp428 = icmp sgt i32 %74, 769
  br i1 %cmp428, label %land.lhs.true430, label %if.end447

land.lhs.true430:                                 ; preds = %if.then426
  %75 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !88
  %call432 = call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef %75, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.155, i64 0, i64 0)) #13
  %tobool433.not = icmp eq i32 %call432, 0
  br i1 %tobool433.not, label %lor.lhs.false434, label %if.then438

lor.lhs.false434:                                 ; preds = %land.lhs.true430
  %76 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !88
  %call436 = call i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef %76, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.156, i64 0, i64 0)) #13
  %tobool437.not = icmp eq i32 %call436, 0
  br i1 %tobool437.not, label %if.end447, label %if.then438

if.then438:                                       ; preds = %lor.lhs.false434, %land.lhs.true430
  %iv_len439 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 10
  %77 = load i64, i64* %iv_len439, align 8, !tbaa !108
  %78 = load i32, i32* %tmplen, align 4, !tbaa !54
  %79 = trunc i64 %77 to i32
  %conv442 = sub i32 %78, %79
  store i32 %conv442, i32* %tmplen, align 4, !tbaa !54
  %add.ptr444 = getelementptr inbounds i8, i8* %expected_out.0, i64 %77
  %add446 = add i64 %77, %out_misalign
  br label %if.end447

if.end447:                                        ; preds = %if.then438, %lor.lhs.false434, %if.then426
  %expected_out.1 = phi i8* [ %add.ptr444, %if.then438 ], [ %expected_out.0, %lor.lhs.false434 ], [ %expected_out.0, %if.then426 ]
  %out_misalign.addr.0 = phi i64 [ %add446, %if.then438 ], [ %out_misalign, %lor.lhs.false434 ], [ %out_misalign, %if.then426 ]
  %conv448 = trunc i64 %out_len.0 to i32
  %80 = load i32, i32* %tmplen, align 4, !tbaa !54
  %81 = load i32, i32* %tmpflen, align 4, !tbaa !54
  %add449 = add nsw i32 %81, %80
  %cmp450 = icmp slt i32 %add449, %conv448
  %conv454 = sext i32 %add449 to i64
  %spec.select = select i1 %cmp450, i64 %conv454, i64 %out_len.0
  br label %if.end456

if.end456:                                        ; preds = %if.end447, %land.lhs.true423, %if.end421
  %expected_out.2 = phi i8* [ %expected_out.0, %if.end421 ], [ %expected_out.0, %land.lhs.true423 ], [ %expected_out.1, %if.end447 ]
  %out_len.1 = phi i64 [ %out_len.0, %if.end421 ], [ %out_len.0, %land.lhs.true423 ], [ %spec.select, %if.end447 ]
  %out_misalign.addr.1 = phi i64 [ %out_misalign, %if.end421 ], [ %out_misalign, %land.lhs.true423 ], [ %out_misalign.addr.0, %if.end447 ]
  %add.ptr457 = getelementptr inbounds i8, i8* %tmp.0, i64 %out_misalign.addr.1
  %82 = load i32, i32* %tmplen, align 4, !tbaa !54
  %83 = load i32, i32* %tmpflen, align 4, !tbaa !54
  %add458 = add nsw i32 %83, %82
  %conv459 = sext i32 %add458 to i64
  %call460 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.157, i64 0, i64 0), i8* noundef %expected_out.2, i64 noundef %out_len.1, i8* noundef nonnull %add.ptr457, i64 noundef %conv459) #14
  %tobool461.not = icmp eq i32 %call460, 0
  br i1 %tobool461.not, label %err529, label %if.end463

if.end463:                                        ; preds = %if.end456
  br i1 %tobool7.not, label %if.end497, label %land.lhs.true465

land.lhs.true465:                                 ; preds = %if.end463
  %84 = load i32, i32* %aead75, align 4, !tbaa !92
  %tobool467.not = icmp eq i32 %84, 0
  br i1 %tobool467.not, label %if.end497, label %land.lhs.true468

land.lhs.true468:                                 ; preds = %land.lhs.true465
  %85 = load i32, i32* %tls_aad315, align 8, !tbaa !102
  %tobool470.not = icmp eq i32 %85, 0
  br i1 %tobool470.not, label %if.then471, label %if.end497

if.then471:                                       ; preds = %land.lhs.true468
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %rtag, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %86) #16
  %tag_len472 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 21
  %87 = load i64, i64* %tag_len472, align 8, !tbaa !109
  %call473 = call i32 @test_size_t_le(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 975, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.158, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.159, i64 0, i64 0), i64 noundef %87, i64 noundef 16) #13
  %tobool474.not = icmp eq i32 %call473, 0
  br i1 %tobool474.not, label %cleanup494.thread.sink.split, label %if.end477

if.end477:                                        ; preds = %if.then471
  %88 = load i64, i64* %tag_len472, align 8, !tbaa !109
  %conv479 = trunc i64 %88 to i32
  %call481 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call.call2, i32 noundef 16, i32 noundef %conv479, i8* noundef nonnull %86) #13
  %tobool482.not = icmp eq i32 %call481, 0
  br i1 %tobool482.not, label %cleanup494.thread.sink.split, label %if.end485

if.end485:                                        ; preds = %if.end477
  %tag486 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 19
  %89 = load i8*, i8** %tag486, align 8, !tbaa !98
  %90 = load i64, i64* %tag_len472, align 8, !tbaa !109
  %call490 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.162, i64 0, i64 0), i8* noundef %89, i64 noundef %90, i8* noundef nonnull %86, i64 noundef %90) #14
  %tobool491.not = icmp eq i32 %call490, 0
  br i1 %tobool491.not, label %cleanup494.thread, label %cleanup494

cleanup494.thread.sink.split:                     ; preds = %if.end477, %if.then471
  %.sink = phi i8* [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.160, i64 0, i64 0), %if.then471 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.161, i64 0, i64 0), %if.end477 ]
  store i8* %.sink, i8** %err, align 8, !tbaa !41
  br label %cleanup494.thread

cleanup494.thread:                                ; preds = %cleanup494.thread.sink.split, %if.end485
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86) #16
  br label %err529

cleanup494:                                       ; preds = %if.end485
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86) #16
  br label %if.end497

if.end497:                                        ; preds = %cleanup494, %land.lhs.true468, %land.lhs.true465, %if.end463
  %next_iv = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 8
  %91 = load i8*, i8** %next_iv, align 8, !tbaa !95
  %cmp498.not = icmp eq i8* %91, null
  br i1 %cmp498.not, label %if.end527, label %if.then500

if.then500:                                       ; preds = %if.end497
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %iv501, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %92) #16
  %call503 = call i32 @EVP_CIPHER_CTX_get_updated_iv(%struct.evp_cipher_ctx_st* noundef %call.call2, i8* noundef nonnull %92, i64 noundef 128) #13
  %cmp504 = icmp ne i32 %call503, 0
  %conv505 = zext i1 %cmp504 to i32
  %call506 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 993, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.163, i64 0, i64 0), i32 noundef %conv505) #13
  %tobool507.not = icmp eq i32 %call506, 0
  br i1 %tobool507.not, label %cleanup524, label %lor.lhs.false508

lor.lhs.false508:                                 ; preds = %if.then500
  %93 = load %struct.evp_cipher_st*, %struct.evp_cipher_st** %cipher, align 8, !tbaa !88
  %call510 = call i64 @EVP_CIPHER_get_flags(%struct.evp_cipher_st* noundef %93) #13
  %and511 = and i64 %call510, 16
  %cmp512 = icmp eq i64 %and511, 0
  br i1 %cmp512, label %land.lhs.true514, label %cleanup524.thread

land.lhs.true514:                                 ; preds = %lor.lhs.false508
  %94 = load i8*, i8** %next_iv, align 8, !tbaa !95
  %iv_len516 = getelementptr inbounds %struct.cipher_data_st, %struct.cipher_data_st* %1, i64 0, i32 10
  %95 = load i64, i64* %iv_len516, align 8, !tbaa !108
  %call519 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 996, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.164, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144, i64 0, i64 0), i8* noundef %94, i64 noundef %95, i8* noundef nonnull %92, i64 noundef %95) #13
  %tobool520.not = icmp eq i32 %call519, 0
  br i1 %tobool520.not, label %cleanup524, label %cleanup524.thread

cleanup524.thread:                                ; preds = %land.lhs.true514, %lor.lhs.false508
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %92) #16
  br label %if.end527

cleanup524:                                       ; preds = %if.then500, %land.lhs.true514
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.165, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %92) #16
  br label %err529

if.end527:                                        ; preds = %cleanup524.thread, %if.end497
  store i8* null, i8** %err, align 8, !tbaa !41
  br label %err529

err529:                                           ; preds = %land.lhs.true301, %if.then276, %if.then261, %for.body, %cleanup524, %cleanup494.thread, %cleanup341.thread, %cleanup209, %cleanup174, %cleanup137, %cleanup117, %if.then96, %cleanup, %if.end456, %if.then403, %if.then388, %if.then378, %if.then368, %if.else21, %if.then14, %if.end, %entry, %if.end527, %if.then419, %if.then360, %if.then220, %if.then192, %if.then144, %if.then124, %if.then70, %if.then61, %if.then40
  %tmp.1 = phi i8* [ %tmp.0, %cleanup ], [ %tmp.0, %cleanup117 ], [ %tmp.0, %cleanup137 ], [ %tmp.0, %cleanup174 ], [ %tmp.0, %cleanup209 ], [ %tmp.0, %cleanup524 ], [ %tmp.0, %if.end527 ], [ %tmp.0, %if.end456 ], [ %tmp.0, %if.then419 ], [ %tmp.0, %if.then403 ], [ %tmp.0, %if.then388 ], [ %tmp.0, %if.then378 ], [ %tmp.0, %if.then368 ], [ %tmp.0, %if.then360 ], [ %tmp.0, %if.then220 ], [ %tmp.0, %if.then192 ], [ %tmp.0, %if.then144 ], [ %tmp.0, %if.then124 ], [ %tmp.0, %if.then61 ], [ %tmp.0, %if.then70 ], [ %tmp.0, %if.then40 ], [ null, %if.then14 ], [ null, %if.else21 ], [ null, %if.end ], [ null, %entry ], [ %tmp.0, %if.then96 ], [ %tmp.0, %cleanup341.thread ], [ %tmp.0, %cleanup494.thread ], [ %tmp.0, %for.body ], [ %tmp.0, %if.then261 ], [ %tmp.0, %if.then276 ], [ %tmp.0, %land.lhs.true301 ]
  %ok.0 = phi i32 [ 0, %cleanup ], [ 0, %cleanup117 ], [ 0, %cleanup137 ], [ 0, %cleanup174 ], [ 0, %cleanup209 ], [ 0, %cleanup524 ], [ 1, %if.end527 ], [ 0, %if.end456 ], [ 0, %if.then419 ], [ 0, %if.then403 ], [ 0, %if.then388 ], [ 0, %if.then378 ], [ 0, %if.then368 ], [ 0, %if.then360 ], [ 0, %if.then220 ], [ 0, %if.then192 ], [ 0, %if.then144 ], [ 0, %if.then124 ], [ 0, %if.then61 ], [ 0, %if.then70 ], [ 0, %if.then40 ], [ 0, %if.then14 ], [ 0, %if.else21 ], [ 0, %if.end ], [ 0, %entry ], [ 0, %if.then96 ], [ 0, %cleanup341.thread ], [ 0, %cleanup494.thread ], [ 0, %for.body ], [ 0, %if.then261 ], [ 0, %if.then276 ], [ 0, %land.lhs.true301 ]
  %ctx_base.1 = phi %struct.evp_cipher_ctx_st* [ %call, %cleanup ], [ %call, %cleanup117 ], [ %call, %cleanup137 ], [ %call, %cleanup174 ], [ %call., %cleanup209 ], [ %call., %cleanup524 ], [ %call., %if.end527 ], [ %call., %if.end456 ], [ %call., %if.then419 ], [ %call., %if.then403 ], [ %call., %if.then388 ], [ %call., %if.then378 ], [ %call., %if.then368 ], [ %call., %if.then360 ], [ %call., %if.then220 ], [ %call., %if.then192 ], [ %call, %if.then144 ], [ %call, %if.then124 ], [ %call, %if.then61 ], [ %call, %if.then70 ], [ %call, %if.then40 ], [ %call, %if.then14 ], [ %call, %if.else21 ], [ %call, %if.end ], [ %call, %entry ], [ %call, %if.then96 ], [ %call., %cleanup341.thread ], [ %call., %cleanup494.thread ], [ %call., %for.body ], [ %call., %if.then261 ], [ %call., %if.then276 ], [ %call., %land.lhs.true301 ]
  %ctx.1 = phi %struct.evp_cipher_ctx_st* [ %call2, %cleanup ], [ %call2, %cleanup117 ], [ %call2, %cleanup137 ], [ %call2, %cleanup174 ], [ %call.call2, %cleanup209 ], [ %call.call2, %cleanup524 ], [ %call.call2, %if.end527 ], [ %call.call2, %if.end456 ], [ %call.call2, %if.then419 ], [ %call.call2, %if.then403 ], [ %call.call2, %if.then388 ], [ %call.call2, %if.then378 ], [ %call.call2, %if.then368 ], [ %call.call2, %if.then360 ], [ %call.call2, %if.then220 ], [ %call.call2, %if.then192 ], [ %call2, %if.then144 ], [ %call2, %if.then124 ], [ %call2, %if.then61 ], [ %call2, %if.then70 ], [ %call2, %if.then40 ], [ %call2, %if.then14 ], [ %call2, %if.else21 ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %if.then96 ], [ %call.call2, %cleanup341.thread ], [ %call.call2, %cleanup494.thread ], [ %call.call2, %for.body ], [ %call.call2, %if.then261 ], [ %call.call2, %if.then276 ], [ %call.call2, %land.lhs.true301 ]
  call void @CRYPTO_free(i8* noundef %tmp.1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1005) #13
  %cmp530.not = icmp eq %struct.evp_cipher_ctx_st* %ctx.1, %ctx_base.1
  br i1 %cmp530.not, label %if.end533, label %if.then532

if.then532:                                       ; preds = %err529
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx_base.1) #13
  br label %if.end533

if.end533:                                        ; preds = %if.then532, %err529
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #16
  ret i32 %ok.0
}

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_CTX_set_flags(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #12

declare dso_local i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_set_params(%struct.evp_cipher_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_set_key_length(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_get_updated_iv(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_copy(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_memdup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_is_a(%struct.evp_cipher_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @memory_err_compare(%struct.evp_test_st* nocapture noundef %t, i8* noundef %err, i8* noundef %expected, i64 noundef %expected_len, i8* noundef %got, i64 noundef %got_len) unnamed_addr #1 {
entry:
  %expected_err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 6
  %0 = load i8*, i8** %expected_err, align 8, !tbaa !36
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef %err) #15
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 @test_mem_ne(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.166, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef %expected, i64 noundef %expected_len, i8* noundef %got, i64 noundef %got_len) #13
  %tobool.not = icmp eq i32 %call3, 0
  %lnot.ext = zext i1 %tobool.not to i32
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call4 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.166, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef %expected, i64 noundef %expected_len, i8* noundef %got, i64 noundef %got_len) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %r.0 = phi i32 [ %lnot.ext, %if.then ], [ %call4, %if.else ]
  %tobool5.not = icmp eq i32 %r.0, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %err7 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* %err, i8** %err7, align 8, !tbaa !41
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  ret i32 %r.0
}

declare dso_local i32 @test_size_t_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %alg) #1 {
entry:
  %call = tail call fastcc i32 @is_digest_disabled(i8* noundef %alg) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i8* noundef %alg) #13
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip, align 8, !tbaa !12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call1 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %alg, i8* noundef null) #13
  %cmp = icmp eq %struct.evp_md_st* %call1, null
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %alg) #13
  %cmp3 = icmp eq %struct.evp_md_st* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %digest.0 = phi %struct.evp_md_st* [ %call2, %land.lhs.true ], [ %call1, %if.end ]
  %call6 = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 356) #13
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 356, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.167, i64 0, i64 0), i8* noundef %call6) #13
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end5
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call6, i8** %data, align 8, !tbaa !44
  %digest11 = bitcast i8* %call6 to %struct.evp_md_st**
  store %struct.evp_md_st* %digest.0, %struct.evp_md_st** %digest11, align 8, !tbaa !114
  %fetched_digest12 = getelementptr inbounds i8, i8* %call6, i64 8
  %1 = bitcast i8* %fetched_digest12 to %struct.evp_md_st**
  store %struct.evp_md_st* %call1, %struct.evp_md_st** %1, align 8, !tbaa !116
  %pad_type = getelementptr inbounds i8, i8* %call6, i64 40
  %2 = bitcast i8* %pad_type to i32*
  store i32 0, i32* %2, align 8, !tbaa !117
  br i1 %cmp, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.end10
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i64 0, i64 0), i8* noundef %alg) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then14, %if.end5, %land.lhs.true, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %if.end5 ], [ 1, %if.then14 ], [ 1, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @digest_test_cleanup(%struct.evp_test_st* nocapture noundef readonly %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.digest_data_st**
  %1 = load %struct.digest_data_st*, %struct.digest_data_st** %0, align 8, !tbaa !44
  %input = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 2
  %2 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %input, align 8, !tbaa !118
  tail call fastcc void @sk_EVP_TEST_BUFFER_pop_free(%struct.stack_st_EVP_TEST_BUFFER* noundef %2) #14
  %output = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 3
  %3 = load i8*, i8** %output, align 8, !tbaa !119
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 372) #13
  %fetched_digest = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 1
  %4 = load %struct.evp_md_st*, %struct.evp_md_st** %fetched_digest, align 8, !tbaa !116
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %4) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_test_parse(%struct.evp_test_st* nocapture noundef readonly %t, i8* noundef readonly %keyword, i8* noundef %value) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.digest_data_st**
  %1 = load %struct.digest_data_st*, %struct.digest_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %input = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 2
  %call1 = tail call fastcc i32 @evp_test_buffer_append(i8* noundef %value, %struct.stack_st_EVP_TEST_BUFFER** noundef nonnull %input) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i64 0, i64 0)) #15
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %output = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 3
  %output_len = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 4
  %call5 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %output, i64* noundef nonnull %output_len) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.171, i64 0, i64 0)) #15
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  %input10 = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 2
  %2 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %input10, align 8, !tbaa !118
  %call11 = tail call fastcc i32 @evp_test_buffer_set_count(i8* noundef %value, %struct.stack_st_EVP_TEST_BUFFER* noundef %2) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.172, i64 0, i64 0)) #15
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  %input16 = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 2
  %3 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %input16, align 8, !tbaa !118
  %call17 = tail call fastcc i32 @evp_test_buffer_ncopy(i8* noundef %value, %struct.stack_st_EVP_TEST_BUFFER* noundef %3) #14
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %call19 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.173, i64 0, i64 0)) #15
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %cleanup

if.then21:                                        ; preds = %if.end18
  %call22 = tail call i32 @atoi(i8* noundef %value) #15
  %pad_type = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 5
  store i32 %call22, i32* %pad_type, align 8, !tbaa !117
  %cmp23 = icmp sgt i32 %call22, 0
  %conv = zext i1 %cmp23 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then21, %if.then15, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.then4 ], [ %call11, %if.then9 ], [ %call17, %if.then15 ], [ %conv, %if.then21 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %got_len = alloca i32, align 4
  %size = alloca i64, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %tmp17 = alloca %struct.ossl_param_st, align 8
  %dont = alloca [6 x i8], align 1
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.digest_data_st**
  %1 = load %struct.digest_data_st*, %struct.digest_data_st** %0, align 8, !tbaa !44
  %2 = bitcast i32* %got_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #16
  %3 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #16
  store i64 0, i64* %size, align 8, !tbaa !24
  %4 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #16
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #13
  %5 = bitcast %struct.evp_md_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 411, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.177, i64 0, i64 0), i8* noundef %5) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err113, label %if.end

if.end:                                           ; preds = %entry
  %output_len = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 4
  %6 = load i64, i64* %output_len, align 8, !tbaa !120
  %cmp = icmp ugt i64 %6, 64
  %spec.select = select i1 %cmp, i64 %6, i64 64
  %call3 = tail call i8* @CRYPTO_malloc(i64 noundef %spec.select, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 415) #13
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 416, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef %call3) #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err113, label %if.end7

if.end7:                                          ; preds = %if.end
  %digest = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 0
  %7 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !114
  %call8 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call, %struct.evp_md_st* noundef %7, %struct.engine_st* noundef null) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.178, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err113

if.end12:                                         ; preds = %if.end7
  %pad_type = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 5
  %8 = load i32, i32* %pad_type, align 8, !tbaa !117
  %cmp13 = icmp sgt i32 %8, 0
  br i1 %cmp13, label %if.then14, label %if.end24

if.then14:                                        ; preds = %if.end12
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params179 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params179, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.179, i64 0, i64 0), i32* noundef nonnull %pad_type) #13
  %arrayidx16 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %9 = bitcast %struct.ossl_param_st* %tmp17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp17) #13
  %10 = bitcast %struct.ossl_param_st* %arrayidx16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %10, i8* noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #16
  %call18 = call i32 @EVP_MD_CTX_set_params(%struct.evp_md_ctx_st* noundef %call, %struct.ossl_param_st* noundef nonnull %arrayidx) #13
  %call19 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.180, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0), i32 noundef %call18, i32 noundef 0) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then14
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.182, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err113

if.end24:                                         ; preds = %if.then14, %if.end12
  %input = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 2
  %11 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %input, align 8, !tbaa !118
  %call25 = call fastcc i32 @evp_test_buffer_do(%struct.stack_st_EVP_TEST_BUFFER* noundef %11, i32 (i8*, i8*, i64)* noundef nonnull @digest_update_fn, i8* noundef %5) #14
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.183, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err113

if.end29:                                         ; preds = %if.end24
  %12 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !114
  %call31 = call i64 @EVP_MD_get_flags(%struct.evp_md_st* noundef %12) #13
  %and = and i64 %call31, 2
  %cmp32 = icmp ne i64 %and, 0
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end29
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* %dont, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %13) #16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %13, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.188, i64 0, i64 0), i64 6, i1 false)
  %call35 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #13
  %14 = bitcast %struct.evp_md_ctx_st* %call35 to i8*
  %call36 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 442, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.184, i64 0, i64 0), i8* noundef %14) #13
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cleanup.thread, label %if.end39

if.end39:                                         ; preds = %if.then34
  %call40 = call i32 @EVP_MD_CTX_copy(%struct.evp_md_ctx_st* noundef %call35, %struct.evp_md_ctx_st* noundef %call) #13
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call35) #13
  br label %cleanup.thread

if.end43:                                         ; preds = %if.end39
  %call45 = call i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef %call35, i8* noundef nonnull %13, i64 noundef 0) #13
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end43
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call35) #13
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.185, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %cleanup.thread

if.end49:                                         ; preds = %if.end43
  %call51 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.186, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.187, i64 0, i64 0), i8* noundef nonnull %13, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.188, i64 0, i64 0)) #13
  %tobool52.not = icmp eq i32 %call51, 0
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call35) #13
  br i1 %tobool52.not, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end49
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.185, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %cleanup.thread

if.end55:                                         ; preds = %if.end49
  %15 = load i64, i64* %output_len, align 8, !tbaa !120
  %conv57 = trunc i64 %15 to i32
  store i32 %conv57, i32* %got_len, align 4, !tbaa !54
  %conv58 = and i64 %15, 4294967295
  %call59 = call i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef %call, i8* noundef %call3, i64 noundef %conv58) #13
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %cleanup

if.then61:                                        ; preds = %if.end55
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.185, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then61, %if.then53, %if.then47, %if.then42, %if.then34
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %13) #16
  br label %err113

cleanup:                                          ; preds = %if.end55
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %13) #16
  br label %if.end70

if.else:                                          ; preds = %if.end29
  %call65 = call i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef %call, i8* noundef %call3, i32* noundef nonnull %got_len) #13
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %if.else.if.end70_crit_edge

if.else.if.end70_crit_edge:                       ; preds = %if.else
  %.pre = load i32, i32* %got_len, align 4, !tbaa !54
  br label %if.end70

if.then67:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.189, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err113

if.end70:                                         ; preds = %if.else.if.end70_crit_edge, %cleanup
  %16 = phi i32 [ %.pre, %if.else.if.end70_crit_edge ], [ %conv57, %cleanup ]
  %17 = load i64, i64* %output_len, align 8, !tbaa !120
  %conv72 = trunc i64 %17 to i32
  %call73 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.190, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.191, i64 0, i64 0), i32 noundef %conv72, i32 noundef %16) #13
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.end70
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.192, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err113

if.end77:                                         ; preds = %if.end70
  %output = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 3
  %18 = load i8*, i8** %output, align 8, !tbaa !119
  %19 = load i64, i64* %output_len, align 8, !tbaa !120
  %20 = load i32, i32* %got_len, align 4, !tbaa !54
  %conv79 = zext i32 %20 to i64
  %call80 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.193, i64 0, i64 0), i8* noundef %18, i64 noundef %19, i8* noundef %call3, i64 noundef %conv79) #14
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err113, label %if.end83

if.end83:                                         ; preds = %if.end77
  store i8* null, i8** %err, align 8, !tbaa !41
  %21 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %input, align 8, !tbaa !118
  %call86 = call fastcc i32 @sk_EVP_TEST_BUFFER_num(%struct.stack_st_EVP_TEST_BUFFER* noundef %21) #14
  %cmp87 = icmp ne i32 %call86, 1
  %or.cond = select i1 %cmp87, i1 true, i1 %cmp32
  br i1 %or.cond, label %err113, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %if.end83
  %22 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %input, align 8, !tbaa !118
  %call92 = call fastcc %struct.evp_test_buffer_st* @sk_EVP_TEST_BUFFER_value(%struct.stack_st_EVP_TEST_BUFFER* noundef %22, i32 noundef 0) #14
  %23 = bitcast %struct.evp_test_buffer_st* %call92 to i8*
  %call93 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 487, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.194, i64 0, i64 0), i8* noundef %23) #13
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true95, label %err113

land.lhs.true95:                                  ; preds = %land.lhs.true90
  %count_set = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %call92, i64 0, i32 3
  %24 = load i32, i32* %count_set, align 8, !tbaa !121
  %tobool96.not = icmp eq i32 %24, 0
  br i1 %tobool96.not, label %if.then97, label %err113

if.then97:                                        ; preds = %land.lhs.true95
  %25 = load i32, i32* %got_len, align 4, !tbaa !54
  %conv98 = zext i32 %25 to i64
  call void @OPENSSL_cleanse(i8* noundef %call3, i64 noundef %conv98) #13
  %26 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %fetched_digest = getelementptr inbounds %struct.digest_data_st, %struct.digest_data_st* %1, i64 0, i32 1
  %27 = load %struct.evp_md_st*, %struct.evp_md_st** %fetched_digest, align 8, !tbaa !116
  %call99 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %27) #13
  %buf = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %call92, i64 0, i32 0
  %28 = load i8*, i8** %buf, align 8, !tbaa !123
  %buflen = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %call92, i64 0, i32 1
  %29 = load i64, i64* %buflen, align 8, !tbaa !124
  %call100 = call i32 @EVP_Q_digest(%struct.ossl_lib_ctx_st* noundef %26, i8* noundef %call99, i8* noundef null, i8* noundef %28, i64 noundef %29, i8* noundef %call3, i64* noundef nonnull %size) #13
  %cmp101 = icmp ne i32 %call100, 0
  %conv102 = zext i1 %cmp101 to i32
  %call103 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 493, i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.195, i64 0, i64 0), i32 noundef %conv102) #13
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then97
  %30 = load i64, i64* %size, align 8, !tbaa !24
  %31 = load i8*, i8** %output, align 8, !tbaa !119
  %32 = load i64, i64* %output_len, align 8, !tbaa !120
  %call107 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 495, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.196, i64 0, i64 0), i8* noundef %call3, i64 noundef %30, i8* noundef %31, i64 noundef %32) #13
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then109, label %err113

if.then109:                                       ; preds = %lor.lhs.false, %if.then97
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.197, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err113

err113:                                           ; preds = %cleanup.thread, %if.end83, %land.lhs.true90, %land.lhs.true95, %lor.lhs.false, %if.end77, %if.end, %entry, %if.then109, %if.then75, %if.then67, %if.then27, %if.then21, %if.then10
  %got.0 = phi i8* [ %call3, %if.end83 ], [ %call3, %land.lhs.true90 ], [ %call3, %land.lhs.true95 ], [ %call3, %lor.lhs.false ], [ %call3, %if.then109 ], [ %call3, %if.end77 ], [ %call3, %if.then75 ], [ %call3, %if.then67 ], [ %call3, %if.then27 ], [ %call3, %if.then21 ], [ %call3, %if.then10 ], [ %call3, %if.end ], [ null, %entry ], [ %call3, %cleanup.thread ]
  call void @CRYPTO_free(i8* noundef %got.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 502) #13
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #13
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #16
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal fastcc i32 @is_digest_disabled(i8* noundef readonly %name) unnamed_addr #11 {
entry:
  %call = tail call i32 @strcasecmp(i8* noundef %name, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.168, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_EVP_TEST_BUFFER_pop_free(%struct.stack_st_EVP_TEST_BUFFER* noundef %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_EVP_TEST_BUFFER* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %0, void (i8*)* noundef bitcast (void (%struct.evp_test_buffer_st*)* @evp_test_buffer_free to void (i8*)*)) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @evp_test_buffer_free(%struct.evp_test_buffer_st* noundef %db) #1 {
entry:
  %cmp.not = icmp eq %struct.evp_test_buffer_st* %db, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %db, i64 0, i32 0
  %0 = load i8*, i8** %buf, align 8, !tbaa !123
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 128) #13
  %1 = bitcast %struct.evp_test_buffer_st* %db to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 129) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_sk_pop_free(%struct.stack_st* noundef, void (i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_test_buffer_append(i8* noundef %value, %struct.stack_st_EVP_TEST_BUFFER** nocapture noundef %sk) unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 32, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 139) #13
  %0 = bitcast i8* %call to %struct.evp_test_buffer_st*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.174, i64 0, i64 0), i8* noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %buf = bitcast i8* %call to i8**
  %buflen = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %buflen to i64*
  %call2 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef %buf, i64* noundef nonnull %1) #14
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %count = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %count to i64*
  store i64 1, i64* %2, align 8, !tbaa !125
  %count_set = getelementptr inbounds i8, i8* %call, i64 24
  %3 = bitcast i8* %count_set to i32*
  store i32 0, i32* %3, align 8, !tbaa !121
  %4 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %sk, align 8, !tbaa !16
  %cmp = icmp eq %struct.stack_st_EVP_TEST_BUFFER* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %call6 = tail call fastcc %struct.stack_st_EVP_TEST_BUFFER* @sk_EVP_TEST_BUFFER_new_null() #14
  store %struct.stack_st_EVP_TEST_BUFFER* %call6, %struct.stack_st_EVP_TEST_BUFFER** %sk, align 8, !tbaa !16
  %5 = bitcast %struct.stack_st_EVP_TEST_BUFFER* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.175, i64 0, i64 0), i8* noundef %5) #13
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  %.pre = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %sk, align 8, !tbaa !16
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end5
  %6 = phi %struct.stack_st_EVP_TEST_BUFFER* [ %.pre, %land.lhs.true.if.end10_crit_edge ], [ %4, %if.end5 ]
  %call11 = tail call fastcc i32 @sk_EVP_TEST_BUFFER_push(%struct.stack_st_EVP_TEST_BUFFER* noundef %6, %struct.evp_test_buffer_st* noundef nonnull %0) #14
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %cleanup

err:                                              ; preds = %if.end10, %land.lhs.true, %if.end, %entry
  tail call void @evp_test_buffer_free(%struct.evp_test_buffer_st* noundef %0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %err
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_test_buffer_set_count(i8* noundef nonnull %value, %struct.stack_st_EVP_TEST_BUFFER* noundef %sk) unnamed_addr #1 {
entry:
  %call = tail call i32 @atoi(i8* noundef %value) #15
  %cmp = icmp slt i32 %call, 1
  %cmp1 = icmp eq %struct.stack_st_EVP_TEST_BUFFER* %sk, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc i32 @sk_EVP_TEST_BUFFER_num(%struct.stack_st_EVP_TEST_BUFFER* noundef nonnull %sk) #14
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call fastcc i32 @sk_EVP_TEST_BUFFER_num(%struct.stack_st_EVP_TEST_BUFFER* noundef nonnull %sk) #14
  %sub = add nsw i32 %call6, -1
  %call7 = tail call fastcc %struct.evp_test_buffer_st* @sk_EVP_TEST_BUFFER_value(%struct.stack_st_EVP_TEST_BUFFER* noundef nonnull %sk, i32 noundef %sub) #14
  %count_set = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %call7, i64 0, i32 3
  %0 = load i32, i32* %count_set, align 8, !tbaa !121
  %cmp8.not = icmp eq i32 %0, 0
  br i1 %cmp8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end5
  %conv22 = zext i32 %call to i64
  %count11 = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %call7, i64 0, i32 2
  store i64 %conv22, i64* %count11, align 8, !tbaa !125
  store i32 1, i32* %count_set, align 8, !tbaa !121
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false, %entry, %if.end10
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_test_buffer_ncopy(i8* noundef nonnull %value, %struct.stack_st_EVP_TEST_BUFFER* noundef %sk) unnamed_addr #1 {
entry:
  %call = tail call i32 @atoi(i8* noundef %value) #15
  %cmp = icmp slt i32 %call, 1
  %cmp1 = icmp eq %struct.stack_st_EVP_TEST_BUFFER* %sk, null
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call fastcc i32 @sk_EVP_TEST_BUFFER_num(%struct.stack_st_EVP_TEST_BUFFER* noundef nonnull %sk) #14
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %call6 = tail call fastcc i32 @sk_EVP_TEST_BUFFER_num(%struct.stack_st_EVP_TEST_BUFFER* noundef nonnull %sk) #14
  %sub = add nsw i32 %call6, -1
  %call7 = tail call fastcc %struct.evp_test_buffer_st* @sk_EVP_TEST_BUFFER_value(%struct.stack_st_EVP_TEST_BUFFER* noundef nonnull %sk, i32 noundef %sub) #14
  %buflen = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %call7, i64 0, i32 1
  %0 = load i64, i64* %buflen, align 8, !tbaa !124
  %conv46 = zext i32 %call to i64
  %mul = mul i64 %0, %conv46
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 176) #13
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.176, i64 0, i64 0), i8* noundef %call8) #13
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end5
  %buf = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %call7, i64 0, i32 0
  %.pre = load i64, i64* %buflen, align 8, !tbaa !124
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %1 = phi i64 [ %.pre, %for.body.lr.ph ], [ %3, %for.body ]
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %p.048 = phi i8* [ %call8, %for.body.lr.ph ], [ %add.ptr, %for.body ]
  %2 = load i8*, i8** %buf, align 8, !tbaa !123
  %call15 = tail call i8* @memcpy(i8* noundef %p.048, i8* noundef %2, i64 noundef %1) #13
  %inc = add nuw nsw i32 %i.049, 1
  %3 = load i64, i64* %buflen, align 8, !tbaa !124
  %add.ptr = getelementptr inbounds i8, i8* %p.048, i64 %3
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !126

for.end:                                          ; preds = %for.body
  %buf17 = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %call7, i64 0, i32 0
  %4 = load i8*, i8** %buf17, align 8, !tbaa !123
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 181) #13
  store i8* %call8, i8** %buf17, align 8, !tbaa !123
  store i64 %mul, i64* %buflen, align 8, !tbaa !124
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false, %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_EVP_TEST_BUFFER* @sk_EVP_TEST_BUFFER_new_null() unnamed_addr #1 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #13
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_EVP_TEST_BUFFER*
  ret %struct.stack_st_EVP_TEST_BUFFER* %0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_TEST_BUFFER_push(%struct.stack_st_EVP_TEST_BUFFER* noundef %sk, %struct.evp_test_buffer_st* noundef %ptr) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_EVP_TEST_BUFFER* %sk to %struct.stack_st*
  %1 = bitcast %struct.evp_test_buffer_st* %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #13
  ret i32 %call
}

declare dso_local %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #3

declare dso_local i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_EVP_TEST_BUFFER_num(%struct.stack_st_EVP_TEST_BUFFER* noundef %sk) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_EVP_TEST_BUFFER* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_test_buffer_st* @sk_EVP_TEST_BUFFER_value(%struct.stack_st_EVP_TEST_BUFFER* noundef %sk, i32 noundef %idx) unnamed_addr #1 {
entry:
  %0 = bitcast %struct.stack_st_EVP_TEST_BUFFER* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #13
  %1 = bitcast i8* %call to %struct.evp_test_buffer_st*
  ret %struct.evp_test_buffer_st* %1
}

declare dso_local i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #3

declare dso_local i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MD_CTX_set_params(%struct.evp_md_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_test_buffer_do(%struct.stack_st_EVP_TEST_BUFFER* noundef %sk, i32 (i8*, i8*, i64)* nocapture noundef readonly %fn, i8* noundef %ctx) unnamed_addr #1 {
entry:
  %call24 = tail call fastcc i32 @sk_EVP_TEST_BUFFER_num(%struct.stack_st_EVP_TEST_BUFFER* noundef %sk) #14
  %cmp25 = icmp sgt i32 %call24, 0
  br i1 %cmp25, label %for.body, label %cleanup11

for.body:                                         ; preds = %entry, %for.inc8
  %i.026 = phi i32 [ %inc9, %for.inc8 ], [ 0, %entry ]
  %call1 = tail call fastcc %struct.evp_test_buffer_st* @sk_EVP_TEST_BUFFER_value(%struct.stack_st_EVP_TEST_BUFFER* noundef %sk, i32 noundef %i.026) #14
  %count = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %call1, i64 0, i32 2
  %0 = load i64, i64* %count, align 8, !tbaa !125
  %cmp322.not = icmp eq i64 %0, 0
  br i1 %cmp322.not, label %for.inc8, label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.body
  %buf = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %call1, i64 0, i32 0
  %buflen = getelementptr inbounds %struct.evp_test_buffer_st, %struct.evp_test_buffer_st* %call1, i64 0, i32 1
  br label %for.body4

for.cond2:                                        ; preds = %for.body4
  %1 = load i64, i64* %count, align 8, !tbaa !125
  %cmp3 = icmp ult i64 %inc, %1
  br i1 %cmp3, label %for.body4, label %for.inc8, !llvm.loop !127

for.body4:                                        ; preds = %for.body4.lr.ph, %for.cond2
  %j.023 = phi i64 [ 0, %for.body4.lr.ph ], [ %inc, %for.cond2 ]
  %2 = load i8*, i8** %buf, align 8, !tbaa !123
  %3 = load i64, i64* %buflen, align 8, !tbaa !124
  %call5 = tail call i32 %fn(i8* noundef %ctx, i8* noundef %2, i64 noundef %3) #13, !callees !128
  %cmp6 = icmp slt i32 %call5, 1
  %inc = add nuw i64 %j.023, 1
  br i1 %cmp6, label %cleanup11, label %for.cond2

for.inc8:                                         ; preds = %for.cond2, %for.body
  %inc9 = add nuw nsw i32 %i.026, 1
  %call = tail call fastcc i32 @sk_EVP_TEST_BUFFER_num(%struct.stack_st_EVP_TEST_BUFFER* noundef %sk) #14
  %cmp = icmp slt i32 %inc9, %call
  br i1 %cmp, label %for.body, label %cleanup11, !llvm.loop !129

cleanup11:                                        ; preds = %for.inc8, %for.body4, %entry
  %retval.2 = phi i32 [ 1, %entry ], [ 0, %for.body4 ], [ 1, %for.inc8 ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digest_update_fn(i8* noundef %ctx, i8* noundef %buf, i64 noundef %buflen) #1 {
entry:
  %0 = bitcast i8* %ctx to %struct.evp_md_ctx_st*
  %call = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %0, i8* noundef %buf, i64 noundef %buflen) #13
  ret i32 %call
}

declare dso_local i64 @EVP_MD_get_flags(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MD_CTX_copy(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_Q_digest(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @digestsign_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %alg) #1 {
entry:
  %call = tail call fastcc i32 @digestsigver_test_init(%struct.evp_test_st* noundef %t, i8* noundef %alg, i32 noundef 0, i32 noundef 0) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @digestsigver_test_cleanup(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = load i8*, i8** %data, align 8, !tbaa !44
  %ctx = getelementptr inbounds i8, i8* %0, i64 16
  %1 = bitcast i8* %ctx to %struct.evp_md_ctx_st**
  %2 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %1, align 8, !tbaa !130
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %2) #13
  %input = getelementptr inbounds i8, i8* %0, i64 32
  %3 = bitcast i8* %input to %struct.stack_st_EVP_TEST_BUFFER**
  %4 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %3, align 8, !tbaa !132
  tail call fastcc void @sk_EVP_TEST_BUFFER_pop_free(%struct.stack_st_EVP_TEST_BUFFER* noundef %4) #14
  %osin = getelementptr inbounds i8, i8* %0, i64 40
  %5 = bitcast i8* %osin to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !133
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3087) #13
  %output = getelementptr inbounds i8, i8* %0, i64 56
  %7 = bitcast i8* %output to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !134
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3088) #13
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3089) #13
  store i8* null, i8** %data, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digestsigver_test_parse(%struct.evp_test_st* nocapture noundef %t, i8* noundef readonly %keyword, i8* noundef %value) #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.DIGESTSIGN_DATA**
  %1 = load %struct.DIGESTSIGN_DATA*, %struct.DIGESTSIGN_DATA** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end31

if.then:                                          ; preds = %entry
  %2 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !16
  %md = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 2
  %3 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !135
  %cmp1 = icmp eq %struct.evp_md_st* %3, null
  br i1 %cmp1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then
  %call3 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef nonnull %3) #13
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi i8* [ %call3, %cond.false ], [ null, %if.then ]
  %is_verify = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 0
  %4 = load i32, i32* %is_verify, align 8, !tbaa !136
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then7, label %if.then4

if.then4:                                         ; preds = %cond.end
  %5 = load %struct.key_list_st*, %struct.key_list_st** @public_keys, align 8, !tbaa !16
  %call5 = call fastcc i32 @find_key(%struct.evp_pkey_st** noundef nonnull %pkey, i8* noundef %value, %struct.key_list_st* noundef %5) #14
  %phi.cmp = icmp eq i32 %call5, 0
  br i1 %phi.cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %cond.end, %if.then4
  %6 = load %struct.key_list_st*, %struct.key_list_st** @private_keys, align 8, !tbaa !16
  %call8 = call fastcc i32 @find_key(%struct.evp_pkey_st** noundef nonnull %pkey, i8* noundef %value, %struct.key_list_st* noundef %6) #14
  %phi.cmp114 = icmp eq i32 %call8, 0
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4
  %rv.1 = phi i1 [ %phi.cmp114, %if.then7 ], [ false, %if.then4 ]
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8
  %cmp11 = icmp eq %struct.evp_pkey_st* %7, null
  %or.cond = select i1 %rv.1, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip, align 8, !tbaa !12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %8 = load i32, i32* %is_verify, align 8, !tbaa !136
  %tobool15.not = icmp eq i32 %8, 0
  %ctx22 = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 3
  %9 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %ctx22, align 8, !tbaa !130
  %pctx23 = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 4
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  br i1 %tobool15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef %9, %struct.evp_pkey_ctx_st** noundef nonnull %pctx23, i8* noundef %cond, %struct.ossl_lib_ctx_st* noundef %10, i8* noundef null, %struct.evp_pkey_st* noundef nonnull %7, %struct.ossl_param_st* noundef null) #13
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.then16
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.200, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call24 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef %9, %struct.evp_pkey_ctx_st** noundef nonnull %pctx23, i8* noundef %cond, %struct.ossl_lib_ctx_st* noundef %10, i8* noundef null, %struct.evp_pkey_st* noundef nonnull %7, %struct.ossl_param_st* noundef null) #13
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %cleanup

if.then26:                                        ; preds = %if.end21
  %err27 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.201, i64 0, i64 0), i8** %err27, align 8, !tbaa !41
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then26, %if.then16, %if.then19, %if.then12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  br label %cleanup72

if.end31:                                         ; preds = %entry
  %call32 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i64 0, i64 0)) #15
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.end40

if.then34:                                        ; preds = %if.end31
  %is_oneshot = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 1
  %11 = load i32, i32* %is_oneshot, align 4, !tbaa !137
  %tobool35.not = icmp eq i32 %11, 0
  br i1 %tobool35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.then34
  %osin = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 6
  %osin_len = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 7
  %call37 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %osin, i64* noundef nonnull %osin_len) #14
  br label %cleanup72

if.end38:                                         ; preds = %if.then34
  %input = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 5
  %call39 = tail call fastcc i32 @evp_test_buffer_append(i8* noundef %value, %struct.stack_st_EVP_TEST_BUFFER** noundef nonnull %input) #14
  br label %cleanup72

if.end40:                                         ; preds = %if.end31
  %call41 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i64 0, i64 0)) #15
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  %output = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 8
  %output_len = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 9
  %call44 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %output, i64* noundef nonnull %output_len) #14
  br label %cleanup72

if.end45:                                         ; preds = %if.end40
  %is_oneshot46 = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 1
  %12 = load i32, i32* %is_oneshot46, align 4, !tbaa !137
  %tobool47.not = icmp eq i32 %12, 0
  br i1 %tobool47.not, label %if.then48, label %if.end61

if.then48:                                        ; preds = %if.end45
  %call49 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.171, i64 0, i64 0)) #15
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.then48
  %input52 = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 5
  %13 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %input52, align 8, !tbaa !132
  %call53 = tail call fastcc i32 @evp_test_buffer_set_count(i8* noundef %value, %struct.stack_st_EVP_TEST_BUFFER* noundef %13) #14
  br label %cleanup72

if.end54:                                         ; preds = %if.then48
  %call55 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.172, i64 0, i64 0)) #15
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end54
  %input58 = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 5
  %14 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %input58, align 8, !tbaa !132
  %call59 = tail call fastcc i32 @evp_test_buffer_ncopy(i8* noundef %value, %struct.stack_st_EVP_TEST_BUFFER* noundef %14) #14
  br label %cleanup72

if.end61:                                         ; preds = %if.end54, %if.end45
  %call62 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.202, i64 0, i64 0)) #15
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %cleanup72

if.then64:                                        ; preds = %if.end61
  %pctx65 = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 4
  %15 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx65, align 8, !tbaa !138
  %cmp66 = icmp eq %struct.evp_pkey_ctx_st* %15, null
  br i1 %cmp66, label %cleanup72, label %if.end68

if.end68:                                         ; preds = %if.then64
  %call70 = tail call fastcc i32 @pkey_test_ctrl(%struct.evp_test_st* noundef nonnull %t, %struct.evp_pkey_ctx_st* noundef nonnull %15, i8* noundef %value) #14
  br label %cleanup72

cleanup72:                                        ; preds = %if.end61, %if.then64, %if.end68, %if.then57, %if.then51, %if.then43, %if.end38, %if.then36, %cleanup
  %retval.1 = phi i32 [ 1, %cleanup ], [ %call37, %if.then36 ], [ %call39, %if.end38 ], [ %call44, %if.then43 ], [ %call70, %if.end68 ], [ %call53, %if.then51 ], [ %call59, %if.then57 ], [ -1, %if.then64 ], [ 0, %if.end61 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digestsign_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %got_len = alloca i64, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.DIGESTSIGN_DATA**
  %1 = load %struct.DIGESTSIGN_DATA*, %struct.DIGESTSIGN_DATA** %0, align 8, !tbaa !44
  %2 = bitcast i64* %got_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  %input = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 5
  %3 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %input, align 8, !tbaa !132
  %ctx = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 3
  %4 = bitcast %struct.evp_md_ctx_st** %ctx to i8**
  %5 = load i8*, i8** %4, align 8, !tbaa !130
  %call = tail call fastcc i32 @evp_test_buffer_do(%struct.stack_st_EVP_TEST_BUFFER* noundef %3, i32 (i8*, i8*, i64)* noundef nonnull @digestsign_update_fn, i8* noundef %5) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err24.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %6 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %ctx, align 8, !tbaa !130
  %call2 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %6, i8* noundef null, i64* noundef nonnull %got_len) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err24.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end
  %7 = load i64, i64* %got_len, align 8, !tbaa !24
  %call7 = call i8* @CRYPTO_malloc(i64 noundef %7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3167) #13
  %call8 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3167, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call7) #13
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err24.sink.split, label %if.end12

if.end12:                                         ; preds = %if.end6
  %8 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %ctx, align 8, !tbaa !130
  %call14 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %8, i8* noundef %call7, i64* noundef nonnull %got_len) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err24.sink.split, label %if.end18

if.end18:                                         ; preds = %if.end12
  %output = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 8
  %9 = load i8*, i8** %output, align 8, !tbaa !134
  %output_len = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 9
  %10 = load i64, i64* %output_len, align 8, !tbaa !139
  %11 = load i64, i64* %got_len, align 8, !tbaa !24
  %call19 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.209, i64 0, i64 0), i8* noundef %9, i64 noundef %10, i8* noundef %call7, i64 noundef %11) #14
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err24, label %err24.sink.split

err24.sink.split:                                 ; preds = %if.end18, %if.end12, %if.end6, %if.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.183, i64 0, i64 0), %entry ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.206, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.207, i64 0, i64 0), %if.end6 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.208, i64 0, i64 0), %if.end12 ], [ null, %if.end18 ]
  %got.0.ph = phi i8* [ null, %entry ], [ null, %if.end ], [ %call7, %if.end6 ], [ %call7, %if.end12 ], [ %call7, %if.end18 ]
  %err23 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* %.sink, i8** %err23, align 8, !tbaa !41
  br label %err24

err24:                                            ; preds = %err24.sink.split, %if.end18
  %got.0 = phi i8* [ %call7, %if.end18 ], [ %got.0.ph, %err24.sink.split ]
  call void @CRYPTO_free(i8* noundef %got.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3182) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @digestsigver_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %alg, i32 noundef %is_verify, i32 noundef %is_oneshot) unnamed_addr #1 {
entry:
  %call = tail call i32 @strcmp(i8* noundef %alg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #15
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @is_digest_disabled(i8* noundef %alg) #14
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip, align 8, !tbaa !12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call3 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %alg) #13
  %cmp4 = icmp eq %struct.evp_md_st* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %md.0 = phi %struct.evp_md_st* [ %call3, %if.end ], [ null, %entry ]
  %call8 = tail call i8* @CRYPTO_zalloc(i64 noundef 72, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3063) #13
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3063, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.167, i64 0, i64 0), i8* noundef %call8) #13
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end7
  %md13 = getelementptr inbounds i8, i8* %call8, i64 8
  %0 = bitcast i8* %md13 to %struct.evp_md_st**
  store %struct.evp_md_st* %md.0, %struct.evp_md_st** %0, align 8, !tbaa !135
  %call14 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #13
  %ctx = getelementptr inbounds i8, i8* %call8, i64 16
  %1 = bitcast i8* %ctx to %struct.evp_md_ctx_st**
  store %struct.evp_md_ctx_st* %call14, %struct.evp_md_ctx_st** %1, align 8, !tbaa !130
  %2 = bitcast %struct.evp_md_ctx_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3066, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.199, i64 0, i64 0), i8* noundef %2) #13
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  tail call void @CRYPTO_free(i8* noundef nonnull %call8, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3067) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %is_verify19 = bitcast i8* %call8 to i32*
  store i32 %is_verify, i32* %is_verify19, align 8, !tbaa !136
  %is_oneshot20 = getelementptr inbounds i8, i8* %call8, i64 4
  %3 = bitcast i8* %is_oneshot20 to i32*
  store i32 %is_oneshot, i32* %3, align 4, !tbaa !137
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call8, i8** %data, align 8, !tbaa !44
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end, %if.end18, %if.then17, %if.then2
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 1, %if.end18 ], [ 0, %if.then17 ], [ 0, %if.end ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

declare dso_local i32 @EVP_DigestVerifyInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkey_test_ctrl(%struct.evp_test_st* nocapture noundef writeonly %t, %struct.evp_pkey_ctx_st* noundef %pctx, i8* noundef %value) unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1662) #13
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1662, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.203, i64 0, i64 0), i8* noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @strchr(i8* noundef %call, i32 noundef 58) #15
  %cmp.not = icmp eq i8* %call2, null
  br i1 %cmp.not, label %if.end20, label %if.end5

if.end5:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %call2, i64 1
  store i8 0, i8* %call2, align 1, !tbaa !23
  %call4 = tail call i32 @EVP_PKEY_CTX_ctrl_str(%struct.evp_pkey_ctx_st* noundef %pctx, i8* noundef %call, i8* noundef nonnull %incdec.ptr) #13
  %cmp6 = icmp eq i32 %call4, -2
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.204, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %if.end20

if.else:                                          ; preds = %if.end5
  %cmp9 = icmp slt i32 %call4, 1
  br i1 %cmp9, label %if.then10, label %if.end20

if.then10:                                        ; preds = %if.else
  %call11 = tail call fastcc i32 @is_digest_disabled(i8* noundef nonnull %incdec.ptr) #14
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.then15

lor.lhs.false:                                    ; preds = %if.then10
  %call13 = tail call fastcc i32 @is_cipher_disabled(i8* noundef nonnull %incdec.ptr) #14
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %lor.lhs.false, %if.then10
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1674, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull %incdec.ptr) #13
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip, align 8, !tbaa !12
  br label %if.end20

if.else16:                                        ; preds = %lor.lhs.false
  %err17 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.205, i64 0, i64 0), i8** %err17, align 8, !tbaa !41
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.else, %if.else16, %if.then15, %if.then7
  %rv.1 = phi i32 [ 1, %if.then7 ], [ 1, %if.then15 ], [ 1, %if.else16 ], [ %call4, %if.else ], [ 0, %if.end ]
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1682) #13
  %cmp21 = icmp ne i32 %rv.1, 0
  %conv = zext i1 %cmp21 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end20
  %retval.0 = phi i32 [ %conv, %if.end20 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @EVP_PKEY_CTX_ctrl_str(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @digestsign_update_fn(i8* noundef %ctx, i8* noundef %buf, i64 noundef %buflen) #1 {
entry:
  %0 = bitcast i8* %ctx to %struct.evp_md_ctx_st*
  %call = tail call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef %0, i8* noundef %buf, i64 noundef %buflen) #13
  ret i32 %call
}

declare dso_local i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @digestverify_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %alg) #1 {
entry:
  %call = tail call fastcc i32 @digestsigver_test_init(%struct.evp_test_st* noundef %t, i8* noundef %alg, i32 noundef 1, i32 noundef 0) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digestverify_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.DIGESTSIGN_DATA**
  %1 = load %struct.DIGESTSIGN_DATA*, %struct.DIGESTSIGN_DATA** %0, align 8, !tbaa !44
  %input = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 5
  %2 = load %struct.stack_st_EVP_TEST_BUFFER*, %struct.stack_st_EVP_TEST_BUFFER** %input, align 8, !tbaa !132
  %ctx = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 3
  %3 = bitcast %struct.evp_md_ctx_st** %ctx to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !130
  %call = tail call fastcc i32 @evp_test_buffer_do(%struct.stack_st_EVP_TEST_BUFFER* noundef %2, i32 (i8*, i8*, i64)* noundef nonnull @digestverify_update_fn, i8* noundef %4) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %5 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %ctx, align 8, !tbaa !130
  %output = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 8
  %6 = load i8*, i8** %output, align 8, !tbaa !134
  %output_len = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 9
  %7 = load i64, i64* %output_len, align 8, !tbaa !139
  %call2 = tail call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef %5, i8* noundef %6, i64 noundef %7) #13
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %if.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.183, i64 0, i64 0), %entry ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.211, i64 0, i64 0), %if.end ]
  %err4 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* %.sink, i8** %err4, align 8, !tbaa !41
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @digestverify_update_fn(i8* noundef %ctx, i8* noundef %buf, i64 noundef %buflen) #1 {
entry:
  %0 = bitcast i8* %ctx to %struct.evp_md_ctx_st*
  %call = tail call i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef %0, i8* noundef %buf, i64 noundef %buflen) #13
  ret i32 %call
}

declare dso_local i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %encoding) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2147) #13
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2147, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.213, i64 0, i64 0), i8* noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef %encoding, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.214, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.end22.sink.split, label %if.else

if.else:                                          ; preds = %if.end
  %call5 = tail call i32 @strcmp(i8* noundef %encoding, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.215, i64 0, i64 0)) #15
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.end22.sink.split, label %if.else9

if.else9:                                         ; preds = %if.else
  %call10 = tail call i32 @strcmp(i8* noundef %encoding, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.216, i64 0, i64 0)) #15
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else19

if.then12:                                        ; preds = %if.else9
  %encoding13 = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %encoding13 to i32*
  store i32 2, i32* %0, align 8, !tbaa !140
  %call14 = tail call i8* @CRYPTO_strdup(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.218, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2155) #13
  %expected_err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 6
  store i8* %call14, i8** %expected_err, align 8, !tbaa !36
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2155, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.217, i64 0, i64 0), i8* noundef %call14) #13
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end22

if.else19:                                        ; preds = %if.else9
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2160, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.219, i64 0, i64 0), i8* noundef %encoding) #13
  br label %err

if.end22.sink.split:                              ; preds = %if.else, %if.end
  %.sink = phi i32 [ 0, %if.end ], [ 1, %if.else ]
  %encoding8 = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %encoding8 to i32*
  store i32 %.sink, i32* %1, align 8, !tbaa !140
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.then12
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call, i8** %data, align 8, !tbaa !44
  br label %cleanup

err:                                              ; preds = %if.then12, %if.else19
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2166) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end22
  %retval.0 = phi i32 [ 1, %if.end22 ], [ 0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @encode_test_cleanup(%struct.evp_test_st* nocapture noundef readonly %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = load i8*, i8** %data, align 8, !tbaa !44
  %input = bitcast i8* %0 to i8**
  %1 = load i8*, i8** %input, align 8, !tbaa !142
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2174) #13
  %output = getelementptr inbounds i8, i8* %0, i64 16
  %2 = bitcast i8* %output to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !143
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2175) #13
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 40) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_test_parse(%struct.evp_test_st* nocapture noundef readonly %t, i8* noundef readonly %keyword, i8* noundef %value) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.encode_data_st**
  %1 = load %struct.encode_data_st*, %struct.encode_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %input = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 0
  %input_len = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 1
  %call1 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef %input, i64* noundef nonnull %input_len) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i64 0, i64 0)) #15
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %output = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 2
  %output_len = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 3
  %call5 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %output, i64* noundef nonnull %output_len) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %chunk_len = alloca i32, align 4
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.encode_data_st**
  %1 = load %struct.encode_data_st*, %struct.encode_data_st** %0, align 8, !tbaa !44
  %2 = bitcast i32* %chunk_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #16
  %call = tail call %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() #13
  %3 = bitcast %struct.evp_Encode_Ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2198, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.220, i64 0, i64 0), i8* noundef %3) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err73.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %encoding = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 4
  %4 = load i32, i32* %encoding, align 8, !tbaa !140
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end32

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() #13
  %5 = bitcast %struct.evp_Encode_Ctx_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2205, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.222, i64 0, i64 0), i8* noundef %5) #13
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %input_len = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 1
  %6 = load i64, i64* %input_len, align 8, !tbaa !144
  %add = add i64 %6, 2
  %div = udiv i64 %add, 3
  %mul = shl i64 %div, 2
  %div7 = udiv i64 %6, 48
  %add8 = shl nuw nsw i64 %div7, 1
  %add10 = add nuw nsw i64 %add8, 82
  %add11 = add i64 %add10, %mul
  %call12 = tail call i8* @CRYPTO_malloc(i64 noundef %add11, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2207) #13
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2207, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.223, i64 0, i64 0), i8* noundef %call12) #13
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err73, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false
  tail call void @EVP_EncodeInit(%struct.evp_Encode_Ctx_st* noundef %call3) #13
  %input = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 0
  %7 = load i8*, i8** %input, align 8, !tbaa !142
  %8 = load i64, i64* %input_len, align 8, !tbaa !144
  %conv = trunc i64 %8 to i32
  %call18 = call i32 @EVP_EncodeUpdate(%struct.evp_Encode_Ctx_st* noundef %call3, i8* noundef %call12, i32* noundef nonnull %chunk_len, i8* noundef %7, i32 noundef %conv) #13
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2212, i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.224, i64 0, i64 0), i32 noundef %conv20) #13
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err73, label %if.end24

if.end24:                                         ; preds = %if.end16
  %9 = load i32, i32* %chunk_len, align 4, !tbaa !54
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %call12, i64 %idx.ext
  call void @EVP_EncodeFinal(%struct.evp_Encode_Ctx_st* noundef %call3, i8* noundef %add.ptr, i32* noundef nonnull %chunk_len) #13
  %10 = load i32, i32* %chunk_len, align 4, !tbaa !54
  %add25 = add nsw i32 %10, %9
  %output = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 2
  %11 = load i8*, i8** %output, align 8, !tbaa !143
  %output_len26 = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 3
  %12 = load i64, i64* %output_len26, align 8, !tbaa !145
  %conv27 = sext i32 %add25 to i64
  %call28 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.225, i64 0, i64 0), i8* noundef %11, i64 noundef %12, i8* noundef %call12, i64 noundef %conv27) #14
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err73, label %if.end32

if.end32:                                         ; preds = %if.end24, %if.end
  %encode_out.0 = phi i8* [ %call12, %if.end24 ], [ null, %if.end ]
  %encode_ctx.0 = phi %struct.evp_Encode_Ctx_st* [ %call3, %if.end24 ], [ null, %if.end ]
  %output_len33 = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 3
  %13 = load i64, i64* %output_len33, align 8, !tbaa !145
  %add34 = add i64 %13, 3
  %div35 = lshr i64 %add34, 2
  %mul36 = mul nuw i64 %div35, 3
  %add37 = add nuw i64 %mul36, 80
  %call38 = call i8* @CRYPTO_malloc(i64 noundef %add37, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2227) #13
  %call39 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2227, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.226, i64 0, i64 0), i8* noundef %call38) #13
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err73, label %if.end42

if.end42:                                         ; preds = %if.end32
  call void @EVP_DecodeInit(%struct.evp_Encode_Ctx_st* noundef %call) #13
  %output43 = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 2
  %14 = load i8*, i8** %output43, align 8, !tbaa !143
  %15 = load i64, i64* %output_len33, align 8, !tbaa !145
  %conv45 = trunc i64 %15 to i32
  %call46 = call i32 @EVP_DecodeUpdate(%struct.evp_Encode_Ctx_st* noundef %call, i8* noundef %call38, i32* noundef nonnull %chunk_len, i8* noundef %14, i32 noundef %conv45) #13
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %err73.sink.split, label %if.end51

if.end51:                                         ; preds = %if.end42
  %16 = load i32, i32* %chunk_len, align 4, !tbaa !54
  %idx.ext52 = sext i32 %16 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %call38, i64 %idx.ext52
  %call54 = call i32 @EVP_DecodeFinal(%struct.evp_Encode_Ctx_st* noundef %call, i8* noundef %add.ptr53, i32* noundef nonnull %chunk_len) #13
  %cmp55.not = icmp eq i32 %call54, 1
  br i1 %cmp55.not, label %if.end59, label %err73.sink.split

if.end59:                                         ; preds = %if.end51
  %17 = load i32, i32* %encoding, align 8, !tbaa !140
  %cmp62.not = icmp eq i32 %17, 2
  br i1 %cmp62.not, label %if.end71, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end59
  %18 = load i32, i32* %chunk_len, align 4, !tbaa !54
  %add60 = add nsw i32 %18, %16
  %input64 = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 0
  %19 = load i8*, i8** %input64, align 8, !tbaa !142
  %input_len65 = getelementptr inbounds %struct.encode_data_st, %struct.encode_data_st* %1, i64 0, i32 1
  %20 = load i64, i64* %input_len65, align 8, !tbaa !144
  %conv66 = sext i32 %add60 to i64
  %call67 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.227, i64 0, i64 0), i8* noundef %19, i64 noundef %20, i8* noundef %call38, i64 noundef %conv66) #14
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err73.sink.split, label %if.end71

if.end71:                                         ; preds = %land.lhs.true, %if.end59
  br label %err73.sink.split

err73.sink.split:                                 ; preds = %land.lhs.true, %if.end51, %if.end42, %entry, %if.end71
  %.sink = phi i8* [ null, %if.end71 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.221, i64 0, i64 0), %entry ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.218, i64 0, i64 0), %if.end42 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.218, i64 0, i64 0), %if.end51 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.227, i64 0, i64 0), %land.lhs.true ]
  %encode_out.1.ph = phi i8* [ %encode_out.0, %if.end71 ], [ null, %entry ], [ %encode_out.0, %if.end42 ], [ %encode_out.0, %if.end51 ], [ %encode_out.0, %land.lhs.true ]
  %decode_out.0.ph = phi i8* [ %call38, %if.end71 ], [ null, %entry ], [ %call38, %if.end42 ], [ %call38, %if.end51 ], [ %call38, %land.lhs.true ]
  %encode_ctx.1.ph = phi %struct.evp_Encode_Ctx_st* [ %encode_ctx.0, %if.end71 ], [ null, %entry ], [ %encode_ctx.0, %if.end42 ], [ %encode_ctx.0, %if.end51 ], [ %encode_ctx.0, %land.lhs.true ]
  %err72 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* %.sink, i8** %err72, align 8, !tbaa !41
  br label %err73

err73:                                            ; preds = %err73.sink.split, %if.end32, %if.end24, %if.end16, %if.then2, %lor.lhs.false
  %encode_out.1 = phi i8* [ %encode_out.0, %if.end32 ], [ %call12, %if.end24 ], [ %call12, %if.end16 ], [ %call12, %lor.lhs.false ], [ null, %if.then2 ], [ %encode_out.1.ph, %err73.sink.split ]
  %decode_out.0 = phi i8* [ %call38, %if.end32 ], [ null, %if.end24 ], [ null, %if.end16 ], [ null, %lor.lhs.false ], [ null, %if.then2 ], [ %decode_out.0.ph, %err73.sink.split ]
  %encode_ctx.1 = phi %struct.evp_Encode_Ctx_st* [ %encode_ctx.0, %if.end32 ], [ %call3, %if.end24 ], [ %call3, %if.end16 ], [ %call3, %lor.lhs.false ], [ %call3, %if.then2 ], [ %encode_ctx.1.ph, %err73.sink.split ]
  call void @CRYPTO_free(i8* noundef %encode_out.1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2254) #13
  call void @CRYPTO_free(i8* noundef %decode_out.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2255) #13
  call void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef %call) #13
  call void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef %encode_ctx.1) #13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #16
  ret i32 1
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

declare dso_local %struct.evp_Encode_Ctx_st* @EVP_ENCODE_CTX_new() local_unnamed_addr #3

declare dso_local void @EVP_EncodeInit(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_EncodeUpdate(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @EVP_EncodeFinal(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local void @EVP_DecodeInit(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DecodeUpdate(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DecodeFinal(%struct.evp_Encode_Ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local void @EVP_ENCODE_CTX_free(%struct.evp_Encode_Ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @kdf_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %name) #1 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef 832, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2582) #13
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2582, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.229, i64 0, i64 0), i8* noundef %call1) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %entry
  %params = getelementptr inbounds i8, i8* %call1, i64 24
  %p = getelementptr inbounds i8, i8* %call1, i64 824
  %0 = bitcast i8* %p to i8**
  store i8* %params, i8** %0, align 8, !tbaa !146
  %1 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %params, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #16
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call7 = call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef %name, i8* noundef null) #13
  %cmp = icmp eq %struct.evp_kdf_st* %call7, null
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2589) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = call %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef nonnull %call7) #13
  %ctx = bitcast i8* %call1 to %struct.evp_kdf_ctx_st**
  store %struct.evp_kdf_ctx_st* %call10, %struct.evp_kdf_ctx_st** %ctx, align 8, !tbaa !148
  call void @EVP_KDF_free(%struct.evp_kdf_st* noundef nonnull %call7) #13
  %3 = load %struct.evp_kdf_ctx_st*, %struct.evp_kdf_ctx_st** %ctx, align 8, !tbaa !148
  %cmp12 = icmp eq %struct.evp_kdf_ctx_st* %3, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2595) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call1, i8** %data, align 8, !tbaa !44
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14, %if.then13, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then13 ], [ 1, %if.end14 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @kdf_test_cleanup(%struct.evp_test_st* nocapture noundef readonly %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.kdf_data_st**
  %1 = load %struct.kdf_data_st*, %struct.kdf_data_st** %0, align 8, !tbaa !44
  %arraydecay = getelementptr inbounds %struct.kdf_data_st, %struct.kdf_data_st* %1, i64 0, i32 3, i64 0
  %key8 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %arraydecay, i64 0, i32 0
  %2 = load i8*, i8** %key8, align 8, !tbaa !149
  %cmp.not9 = icmp eq i8* %2, null
  br i1 %cmp.not9, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %p.010 = phi %struct.ossl_param_st* [ %incdec.ptr, %for.body ], [ %arraydecay, %entry ]
  %data1 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.010, i64 0, i32 2
  %3 = load i8*, i8** %data1, align 8, !tbaa !151
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2608) #13
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.010, i64 1
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %4 = load i8*, i8** %key, align 8, !tbaa !149
  %cmp.not = icmp eq i8* %4, null
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !152

for.end:                                          ; preds = %for.body, %entry
  %output = getelementptr inbounds %struct.kdf_data_st, %struct.kdf_data_st* %1, i64 0, i32 1
  %5 = load i8*, i8** %output, align 8, !tbaa !153
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2609) #13
  %ctx = getelementptr inbounds %struct.kdf_data_st, %struct.kdf_data_st* %1, i64 0, i32 0
  %6 = load %struct.evp_kdf_ctx_st*, %struct.evp_kdf_ctx_st** %ctx, align 8, !tbaa !148
  tail call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %6) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kdf_test_parse(%struct.evp_test_st* nocapture noundef %t, i8* noundef readonly %keyword, i8* noundef %value) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.kdf_data_st**
  %1 = load %struct.kdf_data_st*, %struct.kdf_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %output = getelementptr inbounds %struct.kdf_data_st, %struct.kdf_data_st* %1, i64 0, i32 1
  %output_len = getelementptr inbounds %struct.kdf_data_st, %struct.kdf_data_st* %1, i64 0, i32 2
  %call1 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %output, i64* noundef nonnull %output_len) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.202, i64 0, i64 0), i64 noundef 4) #15
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %ctx = getelementptr inbounds %struct.kdf_data_st, %struct.kdf_data_st* %1, i64 0, i32 0
  %2 = load %struct.evp_kdf_ctx_st*, %struct.evp_kdf_ctx_st** %ctx, align 8, !tbaa !148
  %call5 = tail call fastcc i32 @kdf_test_ctrl(%struct.evp_test_st* noundef nonnull %t, %struct.evp_kdf_ctx_st* noundef %2, i8* noundef %value) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @kdf_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.kdf_data_st**
  %1 = load %struct.kdf_data_st*, %struct.kdf_data_st** %0, align 8, !tbaa !44
  %output_len = getelementptr inbounds %struct.kdf_data_st, %struct.kdf_data_st* %1, i64 0, i32 2
  %2 = load i64, i64* %output_len, align 8, !tbaa !154
  %ctx = getelementptr inbounds %struct.kdf_data_st, %struct.kdf_data_st* %1, i64 0, i32 0
  %3 = load %struct.evp_kdf_ctx_st*, %struct.evp_kdf_ctx_st** %ctx, align 8, !tbaa !148
  %arraydecay = getelementptr inbounds %struct.kdf_data_st, %struct.kdf_data_st* %1, i64 0, i32 3, i64 0
  %call = tail call i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef %3, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.233, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq i64 %2, 0
  %cond = select i1 %cmp, i64 1, i64 %2
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %cond, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2674) #13
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2674, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.234, i64 0, i64 0), i8* noundef %call1) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err19.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end
  %4 = load %struct.evp_kdf_ctx_st*, %struct.evp_kdf_ctx_st** %ctx, align 8, !tbaa !148
  %call8 = tail call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef %4, i8* noundef %call1, i64 noundef %2, %struct.ossl_param_st* noundef null) #13
  %cmp9 = icmp slt i32 %call8, 1
  br i1 %cmp9, label %err19.sink.split, label %if.end12

if.end12:                                         ; preds = %if.end6
  %output = getelementptr inbounds %struct.kdf_data_st, %struct.kdf_data_st* %1, i64 0, i32 1
  %5 = load i8*, i8** %output, align 8, !tbaa !153
  %6 = load i64, i64* %output_len, align 8, !tbaa !154
  %call14 = tail call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.236, i64 0, i64 0), i8* noundef %5, i64 noundef %6, i8* noundef %call1, i64 noundef %2) #14
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err19, label %err19.sink.split

err19.sink.split:                                 ; preds = %if.end12, %if.end6, %if.end
  %.sink = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.221, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.235, i64 0, i64 0), %if.end6 ], [ null, %if.end12 ]
  %err18 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* %.sink, i8** %err18, align 8, !tbaa !41
  br label %err19

err19:                                            ; preds = %err19.sink.split, %if.end12
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2690) #13
  br label %cleanup

cleanup:                                          ; preds = %err19, %if.then
  ret i32 1
}

declare dso_local %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_KDF_free(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @kdf_test_ctrl(%struct.evp_test_st* nocapture noundef %t, %struct.evp_kdf_ctx_st* noundef %kctx, i8* noundef %value) unnamed_addr #1 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.kdf_data_st**
  %1 = load %struct.kdf_data_st*, %struct.kdf_data_st** %0, align 8, !tbaa !44
  %call = tail call %struct.evp_kdf_st* @EVP_KDF_CTX_kdf(%struct.evp_kdf_ctx_st* noundef %kctx) #13
  %call1 = tail call %struct.ossl_param_st* @EVP_KDF_settable_ctx_params(%struct.evp_kdf_st* noundef %call) #13
  %call2 = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2621) #13
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2621, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.230, i64 0, i64 0), i8* noundef %call2) #13
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call i8* @strchr(i8* noundef %call2, i32 noundef 58) #15
  %cmp.not = icmp eq i8* %call4, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %call4, i64 1
  store i8 0, i8* %call4, align 1, !tbaa !23
  %call9 = tail call i64 @strlen(i8* noundef nonnull %incdec.ptr) #15
  br label %cond.end

cond.end:                                         ; preds = %if.end, %cond.true
  %p.069 = phi i8* [ %incdec.ptr, %cond.true ], [ null, %if.end ]
  %cond = phi i64 [ %call9, %cond.true ], [ 0, %if.end ]
  %p771 = getelementptr inbounds %struct.kdf_data_st, %struct.kdf_data_st* %1, i64 0, i32 4
  %2 = load %struct.ossl_param_st*, %struct.ossl_param_st** %p771, align 8, !tbaa !146
  %call10 = tail call i32 @OSSL_PARAM_allocate_from_text(%struct.ossl_param_st* noundef %2, %struct.ossl_param_st* noundef %call1, i8* noundef %call2, i8* noundef %p.069, i64 noundef %cond, i32* noundef null) #13
  %3 = load %struct.ossl_param_st*, %struct.ossl_param_st** %p771, align 8, !tbaa !146
  %incdec.ptr12 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %3, i64 1
  store %struct.ossl_param_st* %incdec.ptr12, %struct.ossl_param_st** %p771, align 8, !tbaa !146
  %4 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp) #13
  %5 = bitcast %struct.ossl_param_st* %incdec.ptr12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %5, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #16
  %tobool13.not = icmp eq i32 %call10, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %cond.end
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.231, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %cleanup.sink.split

if.end15:                                         ; preds = %cond.end
  br i1 %cmp.not, label %cleanup.sink.split, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15
  %call17 = call i32 @strcmp(i8* noundef %call2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0)) #15
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %land.lhs.true26

if.then19:                                        ; preds = %land.lhs.true
  %call20 = call fastcc i32 @is_digest_disabled(i8* noundef nonnull %p.069) #14
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true26, label %if.then22

if.then22:                                        ; preds = %if.then19
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2637, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull %p.069) #13
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip, align 8, !tbaa !12
  br label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true, %if.then22, %if.then19
  %call27 = call i32 @strcmp(i8* noundef %call2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #15
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %land.lhs.true31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true26
  %call29 = call i32 @strcmp(i8* noundef %call2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.232, i64 0, i64 0)) #15
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %land.lhs.true31, label %cleanup.sink.split

land.lhs.true31:                                  ; preds = %lor.lhs.false, %land.lhs.true26
  %call32 = call fastcc i32 @is_cipher_disabled(i8* noundef nonnull %p.069) #14
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup.sink.split, label %if.then34

if.then34:                                        ; preds = %land.lhs.true31
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2645, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i8* noundef nonnull %p.069) #13
  %skip35 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip35, align 8, !tbaa !12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false, %land.lhs.true31, %if.then34, %if.end15, %if.then14
  %.sink = phi i32 [ 2632, %if.then14 ], [ 2648, %if.end15 ], [ 2648, %if.then34 ], [ 2648, %land.lhs.true31 ], [ 2648, %lor.lhs.false ]
  %retval.0.ph = phi i32 [ 0, %if.then14 ], [ 1, %if.end15 ], [ 1, %if.then34 ], [ 1, %land.lhs.true31 ], [ 1, %lor.lhs.false ]
  call void @CRYPTO_free(i8* noundef %call2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef %.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

declare dso_local %struct.ossl_param_st* @EVP_KDF_settable_ctx_params(%struct.evp_kdf_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_kdf_st* @EVP_KDF_CTX_kdf(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_allocate_from_text(%struct.ossl_param_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_KDF_CTX_set_params(%struct.evp_kdf_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_kdf_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %name) #1 {
entry:
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2728) #13
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2728, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.229, i64 0, i64 0), i8* noundef %call1) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end5

if.end5:                                          ; preds = %entry
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call6 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %name, i8* noundef null) #13
  %ctx = bitcast i8* %call1 to %struct.evp_pkey_ctx_st**
  store %struct.evp_pkey_ctx_st* %call6, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !155
  %cmp = icmp eq %struct.evp_pkey_ctx_st* %call6, null
  br i1 %cmp, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %call9 = tail call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef nonnull %call6) #13
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %lor.lhs.false.err_crit_edge, label %if.end12

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  %.pre = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !155
  br label %err

if.end12:                                         ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call1, i8** %data, align 8, !tbaa !44
  br label %cleanup

err:                                              ; preds = %lor.lhs.false.err_crit_edge, %if.end5
  %1 = phi %struct.evp_pkey_ctx_st* [ %.pre, %lor.lhs.false.err_crit_edge ], [ null, %if.end5 ]
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %1) #13
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2740) #13
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end12
  %retval.0 = phi i32 [ 0, %err ], [ 1, %if.end12 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @pkey_kdf_test_cleanup(%struct.evp_test_st* nocapture noundef readonly %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pkey_kdf_data_st**
  %1 = load %struct.pkey_kdf_data_st*, %struct.pkey_kdf_data_st** %0, align 8, !tbaa !44
  %output = getelementptr inbounds %struct.pkey_kdf_data_st, %struct.pkey_kdf_data_st* %1, i64 0, i32 1
  %2 = load i8*, i8** %output, align 8, !tbaa !157
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2748) #13
  %ctx = getelementptr inbounds %struct.pkey_kdf_data_st, %struct.pkey_kdf_data_st* %1, i64 0, i32 0
  %3 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !155
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %3) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_kdf_test_parse(%struct.evp_test_st* nocapture noundef %t, i8* noundef readonly %keyword, i8* noundef %value) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pkey_kdf_data_st**
  %1 = load %struct.pkey_kdf_data_st*, %struct.pkey_kdf_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %output = getelementptr inbounds %struct.pkey_kdf_data_st, %struct.pkey_kdf_data_st* %1, i64 0, i32 1
  %output_len = getelementptr inbounds %struct.pkey_kdf_data_st, %struct.pkey_kdf_data_st* %1, i64 0, i32 2
  %call1 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %output, i64* noundef nonnull %output_len) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strncmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.202, i64 0, i64 0), i64 noundef 4) #15
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  %ctx = getelementptr inbounds %struct.pkey_kdf_data_st, %struct.pkey_kdf_data_st* %1, i64 0, i32 0
  %2 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !155
  %call5 = tail call fastcc i32 @pkey_test_ctrl(%struct.evp_test_st* noundef nonnull %t, %struct.evp_pkey_ctx_st* noundef %2, i8* noundef %value) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.then4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_kdf_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %got_len = alloca i64, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pkey_kdf_data_st**
  %1 = load %struct.pkey_kdf_data_st*, %struct.pkey_kdf_data_st** %0, align 8, !tbaa !44
  %2 = bitcast i64* %got_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  %output_len = getelementptr inbounds %struct.pkey_kdf_data_st, %struct.pkey_kdf_data_st* %1, i64 0, i32 2
  %3 = load i64, i64* %output_len, align 8, !tbaa !158
  store i64 %3, i64* %got_len, align 8, !tbaa !24
  %cmp = icmp eq i64 %3, 0
  %cond = select i1 %cmp, i64 1, i64 %3
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %cond, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2770) #13
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2770, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.234, i64 0, i64 0), i8* noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.221, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err14

if.end:                                           ; preds = %entry
  %ctx = getelementptr inbounds %struct.pkey_kdf_data_st, %struct.pkey_kdf_data_st* %1, i64 0, i32 0
  %4 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !155
  %call2 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %4, i8* noundef %call, i64* noundef nonnull %got_len) #13
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %err5 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.235, i64 0, i64 0), i8** %err5, align 8, !tbaa !41
  br label %err14

if.end6:                                          ; preds = %if.end
  %output = getelementptr inbounds %struct.pkey_kdf_data_st, %struct.pkey_kdf_data_st* %1, i64 0, i32 1
  %5 = load i8*, i8** %output, align 8, !tbaa !157
  %6 = load i64, i64* %output_len, align 8, !tbaa !158
  %7 = load i64, i64* %got_len, align 8, !tbaa !24
  %call8 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2778, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.196, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef %5, i64 noundef %6, i8* noundef %call, i64 noundef %7) #13
  %tobool9.not = icmp eq i32 %call8, 0
  %err11 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.236, i64 0, i64 0), i8** %err11, align 8, !tbaa !41
  br label %err14

if.end12:                                         ; preds = %if.end6
  store i8* null, i8** %err11, align 8, !tbaa !41
  br label %err14

err14:                                            ; preds = %if.end12, %if.then10, %if.then4, %if.then
  call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2785) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  ret i32 1
}

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef) #3

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @keypair_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %pair) #1 {
entry:
  %pk = alloca %struct.evp_pkey_st*, align 8
  %pubk = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pk, align 8, !tbaa !16
  %1 = bitcast %struct.evp_pkey_st** %pubk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pubk, align 8, !tbaa !16
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %pair, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2814) #13
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2814, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.239, i64 0, i64 0), i8* noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i8* @strchr(i8* noundef %call, i32 noundef 58) #15
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2815, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.240, i64 0, i64 0), i8* noundef %call2) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.241, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %incdec.ptr = getelementptr inbounds i8, i8* %call2, i64 1
  store i8 0, i8* %call2, align 1, !tbaa !23
  %2 = load %struct.key_list_st*, %struct.key_list_st** @private_keys, align 8, !tbaa !16
  %call5 = call fastcc i32 @find_key(%struct.evp_pkey_st** noundef nonnull %pk, i8* noundef %call, %struct.key_list_st* noundef %2) #14
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2821, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.242, i64 0, i64 0), i32 noundef %conv) #13
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2822, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.243, i64 0, i64 0), i8* noundef %call) #13
  %err9 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.244, i64 0, i64 0), i8** %err9, align 8, !tbaa !41
  br label %end

if.end10:                                         ; preds = %if.end
  %3 = load %struct.key_list_st*, %struct.key_list_st** @public_keys, align 8, !tbaa !16
  %call11 = call fastcc i32 @find_key(%struct.evp_pkey_st** noundef nonnull %pubk, i8* noundef nonnull %incdec.ptr, %struct.key_list_st* noundef %3) #14
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2826, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.245, i64 0, i64 0), i32 noundef %conv13) #13
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end10
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2827, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.246, i64 0, i64 0), i8* noundef nonnull %incdec.ptr) #13
  %err17 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.247, i64 0, i64 0), i8** %err17, align 8, !tbaa !41
  br label %end

if.end18:                                         ; preds = %if.end10
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !16
  %cmp19 = icmp eq %struct.evp_pkey_st* %4, null
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pubk, align 8
  %cmp21 = icmp eq %struct.evp_pkey_st* %5, null
  %or.cond = select i1 %cmp19, i1 %cmp21, i1 false
  br i1 %or.cond, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip, align 8, !tbaa !12
  br label %end

if.end24:                                         ; preds = %if.end18
  %call25 = call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2839) #13
  %call26 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2839, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.248, i64 0, i64 0), i8* noundef %call25) #13
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %end, label %if.end29

if.end29:                                         ; preds = %if.end24
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !16
  %privk = bitcast i8* %call25 to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %6, %struct.evp_pkey_st** %privk, align 8, !tbaa !159
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pubk, align 8, !tbaa !16
  %pubk30 = getelementptr inbounds i8, i8* %call25, i64 8
  %8 = bitcast i8* %pubk30 to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %7, %struct.evp_pkey_st** %8, align 8, !tbaa !161
  %data31 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call25, i8** %data31, align 8, !tbaa !44
  %err32 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* null, i8** %err32, align 8, !tbaa !41
  br label %end

end:                                              ; preds = %if.end24, %if.end29, %if.then23, %if.then16, %if.then8, %if.then
  %rv.0 = phi i32 [ 1, %if.then23 ], [ 1, %if.end29 ], [ 0, %if.end24 ], [ 0, %if.then16 ], [ 0, %if.then8 ], [ 0, %if.then ]
  call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2848) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %rv.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @keypair_test_cleanup(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = load i8*, i8** %data, align 8, !tbaa !44
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2854) #13
  store i8* null, i8** %data, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @void_test_parse(%struct.evp_test_st* nocapture noundef readnone %t, i8* nocapture noundef readnone %keyword, i8* nocapture noundef readnone %value) #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @keypair_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.keypair_test_data_st**
  %1 = load %struct.keypair_test_data_st*, %struct.keypair_test_data_st** %0, align 8, !tbaa !44
  %privk = getelementptr inbounds %struct.keypair_test_data_st, %struct.keypair_test_data_st* %1, i64 0, i32 0
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %privk, align 8, !tbaa !159
  %cmp = icmp eq %struct.evp_pkey_st* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %pubk = getelementptr inbounds %struct.keypair_test_data_st, %struct.keypair_test_data_st* %1, i64 0, i32 1
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pubk, align 8, !tbaa !161
  %cmp1 = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.249, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef nonnull %2, %struct.evp_pkey_st* noundef nonnull %3) #13
  switch i32 %call, label %if.else16 [
    i32 1, label %if.end20
    i32 0, label %if.then7
    i32 -1, label %if.then10
    i32 -2, label %if.then14
  ]

if.then7:                                         ; preds = %if.end
  %err8 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.250, i64 0, i64 0), i8** %err8, align 8, !tbaa !41
  br label %end

if.then10:                                        ; preds = %if.end
  %err11 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.249, i64 0, i64 0), i8** %err11, align 8, !tbaa !41
  br label %end

if.then14:                                        ; preds = %if.end
  %err15 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.251, i64 0, i64 0), i8** %err15, align 8, !tbaa !41
  br label %end

if.else16:                                        ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2890, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.252, i64 0, i64 0)) #13
  br label %end

if.end20:                                         ; preds = %if.end
  %err21 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* null, i8** %err21, align 8, !tbaa !41
  br label %end

end:                                              ; preds = %if.then7, %if.then14, %if.then10, %if.end20, %if.else16, %if.then
  %rv.0 = phi i32 [ 1, %if.then ], [ 0, %if.else16 ], [ 1, %if.end20 ], [ 1, %if.then10 ], [ 1, %if.then14 ], [ 1, %if.then7 ]
  ret i32 %rv.0
}

declare dso_local i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @keygen_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %alg) #1 {
entry:
  %call = tail call i32 @OBJ_sn2nid(i8* noundef %alg) #13
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @OBJ_ln2nid(i8* noundef %alg) #13
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.then, %entry
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call8 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %alg, i8* noundef null) #13
  %1 = bitcast %struct.evp_pkey_ctx_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2938, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.254, i64 0, i64 0), i8* noundef %1) #13
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err25, label %if.end12

if.end12:                                         ; preds = %if.end4
  %call13 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call8) #13
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.255, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err25

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2946) #13
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2946, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.248, i64 0, i64 0), i8* noundef %call17) #13
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err25, label %if.end21

if.end21:                                         ; preds = %if.end16
  %genctx22 = bitcast i8* %call17 to %struct.evp_pkey_ctx_st**
  store %struct.evp_pkey_ctx_st* %call8, %struct.evp_pkey_ctx_st** %genctx22, align 8, !tbaa !162
  %keyname = getelementptr inbounds i8, i8* %call17, i64 8
  %2 = bitcast i8* %keyname to i8**
  store i8* null, i8** %2, align 8, !tbaa !164
  %data23 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call17, i8** %data23, align 8, !tbaa !44
  %err24 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* null, i8** %err24, align 8, !tbaa !41
  br label %cleanup

err25:                                            ; preds = %if.end16, %if.end4, %if.then15
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call8) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %err25, %if.end21
  %retval.0 = phi i32 [ 0, %err25 ], [ 1, %if.end21 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @keygen_test_cleanup(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.keygen_test_data_st**
  %1 = load %struct.keygen_test_data_st*, %struct.keygen_test_data_st** %0, align 8, !tbaa !44
  %genctx = getelementptr inbounds %struct.keygen_test_data_st, %struct.keygen_test_data_st* %1, i64 0, i32 0
  %2 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %genctx, align 8, !tbaa !162
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %2) #13
  %keyname = getelementptr inbounds %struct.keygen_test_data_st, %struct.keygen_test_data_st* %1, i64 0, i32 1
  %3 = load i8*, i8** %keyname, align 8, !tbaa !164
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2964) #13
  %4 = load i8*, i8** %data, align 8, !tbaa !44
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2965) #13
  store i8* null, i8** %data, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @keygen_test_parse(%struct.evp_test_st* nocapture noundef %t, i8* noundef readonly %keyword, i8* noundef %value) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.keygen_test_data_st**
  %1 = load %struct.keygen_test_data_st*, %struct.keygen_test_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.256, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2975) #13
  %keyname = getelementptr inbounds %struct.keygen_test_data_st, %struct.keygen_test_data_st* %1, i64 0, i32 1
  store i8* %call1, i8** %keyname, align 8, !tbaa !164
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2975, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.257, i64 0, i64 0), i8* noundef %call1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.202, i64 0, i64 0)) #15
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end
  %genctx = getelementptr inbounds %struct.keygen_test_data_st, %struct.keygen_test_data_st* %1, i64 0, i32 0
  %2 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %genctx, align 8, !tbaa !162
  %call6 = tail call fastcc i32 @pkey_test_ctrl(%struct.evp_test_st* noundef nonnull %t, %struct.evp_pkey_ctx_st* noundef %2, i8* noundef %value) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then5, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call6, %if.then5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @keygen_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.keygen_test_data_st**
  %1 = load %struct.keygen_test_data_st*, %struct.keygen_test_data_st** %0, align 8, !tbaa !44
  %2 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !16
  %genctx = getelementptr inbounds %struct.keygen_test_data_st, %struct.keygen_test_data_st* %1, i64 0, i32 0
  %3 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %genctx, align 8, !tbaa !162
  %call = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %3, %struct.evp_pkey_st** noundef nonnull %pkey) #13
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.258, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %cleanup23

if.end:                                           ; preds = %entry
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !16
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %4, i64 0, i32 13
  %5 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !165
  %cmp1.not = icmp eq %struct.evp_keymgmt_st* %5, null
  %keyname = getelementptr inbounds %struct.keygen_test_data_st, %struct.keygen_test_data_st* %1, i64 0, i32 1
  %6 = load i8*, i8** %keyname, align 8, !tbaa !164
  br i1 %cmp1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2993, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.259, i64 0, i64 0), i8* noundef %6) #13
  br label %cleanup23

if.end3:                                          ; preds = %if.end
  %cmp5.not = icmp eq i8* %6, null
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  %7 = load %struct.key_list_st*, %struct.key_list_st** @private_keys, align 8, !tbaa !16
  %call8 = call fastcc i32 @find_key(%struct.evp_pkey_st** noundef null, i8* noundef nonnull %6, %struct.key_list_st* noundef %7) #14
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.then6
  %8 = load i8*, i8** %keyname, align 8, !tbaa !164
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3001, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* noundef %8) #13
  br label %cleanup23

if.end11:                                         ; preds = %if.then6
  %call12 = call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3005) #13
  %call13 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3005, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0), i8* noundef %call12) #13
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup23, label %cleanup

cleanup:                                          ; preds = %if.end11
  %9 = load i8*, i8** %keyname, align 8, !tbaa !164
  %name = bitcast i8* %call12 to i8**
  store i8* %9, i8** %name, align 8, !tbaa !28
  store i8* null, i8** %keyname, align 8, !tbaa !164
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !16
  %key19 = getelementptr inbounds i8, i8* %call12, i64 8
  %11 = bitcast i8* %key19 to %struct.evp_pkey_st**
  store %struct.evp_pkey_st* %10, %struct.evp_pkey_st** %11, align 8, !tbaa !30
  %12 = load %struct.key_list_st*, %struct.key_list_st** @private_keys, align 8, !tbaa !16
  %next = getelementptr inbounds i8, i8* %call12, i64 16
  %13 = bitcast i8* %next to %struct.key_list_st**
  store %struct.key_list_st* %12, %struct.key_list_st** %13, align 8, !tbaa !31
  store i8* %call12, i8** bitcast (%struct.key_list_st** @private_keys to i8**), align 8, !tbaa !16
  br label %if.end20

if.else:                                          ; preds = %if.end3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %4) #13
  br label %if.end20

if.end20:                                         ; preds = %cleanup, %if.else
  %err21 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* null, i8** %err21, align 8, !tbaa !41
  br label %cleanup23

cleanup23:                                        ; preds = %if.end11, %if.then9, %if.then, %if.then2, %if.end20
  %rv.2 = phi i32 [ 1, %if.then ], [ 1, %if.end20 ], [ 1, %if.then2 ], [ 0, %if.then9 ], [ 0, %if.end11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  ret i32 %rv.2
}

declare dso_local i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OBJ_ln2nid(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @mac_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %alg) #1 {
entry:
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call1 = tail call %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef %alg, i8* noundef null) #13
  %cmp = icmp eq %struct.evp_mac_st* %call1, null
  br i1 %cmp, label %if.then2, label %if.end29

if.then2:                                         ; preds = %entry
  %call3 = tail call i64 @strlen(i8* noundef %alg) #15
  %cmp4 = icmp ugt i64 %call3, 12
  br i1 %cmp4, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.then2
  %add.ptr = getelementptr inbounds i8, i8* %alg, i64 %call3
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 -12
  %call6 = tail call i32 @strcmp(i8* noundef nonnull %add.ptr5, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @mac_test_init.epilogue, i64 0, i64 0)) #15
  %cmp7 = icmp eq i32 %call6, 0
  %sub = add i64 %call3, -12
  %spec.select = select i1 %cmp7, i64 %sub, i64 %call3
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.then2
  %sz.0 = phi i64 [ %call3, %if.then2 ], [ %spec.select, %land.lhs.true ]
  %call10 = tail call i32 @strncmp(i8* noundef %alg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i64 0, i64 0), i64 noundef %sz.0) #15
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.end29, label %if.else

if.else:                                          ; preds = %if.end9
  %call13 = tail call i32 @strncmp(i8* noundef %alg, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.261, i64 0, i64 0), i64 noundef %sz.0) #15
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end29, label %if.else16

if.else16:                                        ; preds = %if.else
  %call17 = tail call i32 @strncmp(i8* noundef %alg, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.262, i64 0, i64 0), i64 noundef %sz.0) #15
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.end29, label %if.else20

if.else20:                                        ; preds = %if.else16
  %call21 = tail call i32 @strncmp(i8* noundef %alg, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.263, i64 0, i64 0), i64 noundef %sz.0) #15
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.end29, label %cleanup35

if.end29:                                         ; preds = %if.else20, %if.else16, %if.else, %if.end9, %entry
  %type.2 = phi i32 [ 0, %entry ], [ 855, %if.end9 ], [ 894, %if.else ], [ 1061, %if.else16 ], [ 1062, %if.else20 ]
  %call30 = tail call i8* @CRYPTO_zalloc(i64 noundef 152, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1178) #13
  %type31 = getelementptr inbounds i8, i8* %call30, i64 16
  %1 = bitcast i8* %type31 to i32*
  store i32 %type.2, i32* %1, align 8, !tbaa !169
  %call32 = tail call i8* @CRYPTO_strdup(i8* noundef %alg, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1180) #13
  %mac_name = bitcast i8* %call30 to i8**
  store i8* %call32, i8** %mac_name, align 8, !tbaa !171
  %mac33 = getelementptr inbounds i8, i8* %call30, i64 8
  %2 = bitcast i8* %mac33 to %struct.evp_mac_st**
  store %struct.evp_mac_st* %call1, %struct.evp_mac_st** %2, align 8, !tbaa !172
  %call34 = tail call %struct.stack_st* @OPENSSL_sk_new_null() #13
  %controls = getelementptr inbounds i8, i8* %call30, i64 136
  %3 = bitcast i8* %controls to %struct.stack_st**
  store %struct.stack_st* %call34, %struct.stack_st** %3, align 8, !tbaa !173
  %block_size = getelementptr inbounds i8, i8* %call30, i64 148
  %4 = bitcast i8* %block_size to i32*
  store i32 -1, i32* %4, align 4, !tbaa !174
  %output_size = getelementptr inbounds i8, i8* %call30, i64 144
  %5 = bitcast i8* %output_size to i32*
  store i32 -1, i32* %5, align 8, !tbaa !175
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call30, i8** %data, align 8, !tbaa !44
  br label %cleanup35

cleanup35:                                        ; preds = %if.else20, %if.end29
  %retval.1 = phi i32 [ 1, %if.end29 ], [ 0, %if.else20 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal void @mac_test_cleanup(%struct.evp_test_st* nocapture noundef readonly %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.mac_data_st**
  %1 = load %struct.mac_data_st*, %struct.mac_data_st** %0, align 8, !tbaa !44
  %mac = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 1
  %2 = load %struct.evp_mac_st*, %struct.evp_mac_st** %mac, align 8, !tbaa !172
  tail call void @EVP_MAC_free(%struct.evp_mac_st* noundef %2) #13
  %mac_name = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 0
  %3 = load i8*, i8** %mac_name, align 8, !tbaa !171
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1199) #13
  %controls = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 17
  %4 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %controls, align 8, !tbaa !173
  %call = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %4) #14
  tail call void @OPENSSL_sk_pop_free(%struct.stack_st* noundef %call, void (i8*)* noundef nonnull @openssl_free) #13
  %alg = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 3
  %5 = load i8*, i8** %alg, align 8, !tbaa !176
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1201) #13
  %key = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 4
  %6 = load i8*, i8** %key, align 8, !tbaa !177
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1202) #13
  %iv = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 6
  %7 = load i8*, i8** %iv, align 8, !tbaa !178
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1203) #13
  %custom = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 12
  %8 = load i8*, i8** %custom, align 8, !tbaa !179
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1204) #13
  %salt = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 14
  %9 = load i8*, i8** %salt, align 8, !tbaa !180
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1205) #13
  %input = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 8
  %10 = load i8*, i8** %input, align 8, !tbaa !181
  tail call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1206) #13
  %output = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 10
  %11 = load i8*, i8** %output, align 8, !tbaa !182
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1207) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mac_test_parse(%struct.evp_test_st* nocapture noundef readonly %t, i8* noundef readonly %keyword, i8* noundef %value) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.mac_data_st**
  %1 = load %struct.mac_data_st*, %struct.mac_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %key = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 4
  %key_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 5
  %call1 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %key, i64* noundef nonnull %key_len) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0)) #15
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %iv = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 6
  %iv_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 7
  %call5 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %iv, i64* noundef nonnull %iv_len) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.264, i64 0, i64 0)) #15
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %custom = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 12
  %custom_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 13
  %call10 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %custom, i64* noundef nonnull %custom_len) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.265, i64 0, i64 0)) #15
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %salt = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 14
  %salt_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 15
  %call15 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %salt, i64* noundef nonnull %salt_len) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call17 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.266, i64 0, i64 0)) #15
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end16
  %call20 = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1224) #13
  %alg = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 3
  store i8* %call20, i8** %alg, align 8, !tbaa !176
  %tobool.not = icmp eq i8* %call20, null
  %. = select i1 %tobool.not, i32 -1, i32 1
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call25 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i64 0, i64 0)) #15
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %input = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 8
  %input_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 9
  %call28 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %input, i64* noundef nonnull %input_len) #14
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call30 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i64 0, i64 0)) #15
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %output = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 10
  %output_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 11
  %call33 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %output, i64* noundef nonnull %output_len) #14
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %call35 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.267, i64 0, i64 0)) #15
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  %xof = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 16
  store i32 1, i32* %xof, align 8, !tbaa !183
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %call39 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.202, i64 0, i64 0)) #15
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end38
  %controls = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 17
  %2 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %controls, align 8, !tbaa !173
  %call42 = tail call fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %2) #14
  %call43 = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1237) #13
  %call45 = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %call42, i8* noundef %call43) #13
  %cmp46 = icmp ne i32 %call45, 0
  %conv = zext i1 %cmp46 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %call48 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.268, i64 0, i64 0)) #15
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end58

if.then51:                                        ; preds = %if.end47
  %call52 = tail call i32 @atoi(i8* noundef %value) #15
  %output_size = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 18
  store i32 %call52, i32* %output_size, align 8, !tbaa !175
  %cmp54.inv = icmp sgt i32 %call52, -1
  %.109 = select i1 %cmp54.inv, i32 1, i32 -1
  br label %cleanup

if.end58:                                         ; preds = %if.end47
  %call59 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.269, i64 0, i64 0)) #15
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %cleanup

if.then62:                                        ; preds = %if.end58
  %call63 = tail call i32 @atoi(i8* noundef %value) #15
  %block_size = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 19
  store i32 %call63, i32* %block_size, align 4, !tbaa !174
  %cmp65.inv = icmp sgt i32 %call63, -1
  %.110 = select i1 %cmp65.inv, i32 1, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then62, %if.then51, %if.then19, %if.then41, %if.then37, %if.then32, %if.then27, %if.then14, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.then4 ], [ %call10, %if.then9 ], [ %call15, %if.then14 ], [ %call28, %if.then27 ], [ %call33, %if.then32 ], [ 1, %if.then37 ], [ %conv, %if.then41 ], [ %., %if.then19 ], [ %.109, %if.then51 ], [ %.110, %if.then62 ], [ 0, %if.end58 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mac_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.mac_data_st**
  %1 = load %struct.mac_data_st*, %struct.mac_data_st** %0, align 8, !tbaa !44
  %mac = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 1
  %2 = load %struct.evp_mac_st*, %struct.evp_mac_st** %mac, align 8, !tbaa !172
  %cmp.not = icmp eq %struct.evp_mac_st* %2, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @mac_test_run_mac(%struct.evp_test_st* noundef nonnull %t) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @mac_test_run_pkey(%struct.evp_test_st* noundef nonnull %t) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 1
}

declare dso_local %struct.evp_mac_st* @EVP_MAC_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MAC_free(%struct.evp_mac_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

; Function Attrs: noinline nounwind uwtable
define internal void @openssl_free(i8* noundef %m) #1 {
entry:
  tail call void @CRYPTO_free(i8* noundef %m, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1191) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @mac_test_run_mac(%struct.evp_test_st* nocapture noundef %t) unnamed_addr #1 {
entry:
  %got_len = alloca i64, align 8
  %size = alloca i64, align 8
  %block_size = alloca i32, align 4
  %output_size = alloca i32, align 4
  %params = alloca [21 x %struct.ossl_param_st], align 16
  %sizes = alloca [3 x %struct.ossl_param_st], align 16
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp16 = alloca %struct.ossl_param_st, align 8
  %tmp26 = alloca %struct.ossl_param_st, align 8
  %tmp33 = alloca %struct.ossl_param_st, align 8
  %tmp40 = alloca %struct.ossl_param_st, align 8
  %tmp82 = alloca %struct.ossl_param_st, align 8
  %tmp101 = alloca %struct.ossl_param_st, align 8
  %tmp108 = alloca %struct.ossl_param_st, align 8
  %tmp114 = alloca %struct.ossl_param_st, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.mac_data_st**
  %1 = load %struct.mac_data_st*, %struct.mac_data_st** %0, align 8, !tbaa !44
  %2 = bitcast i64* %got_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  store i64 0, i64* %got_len, align 8, !tbaa !24
  %3 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #16
  store i64 0, i64* %size, align 8, !tbaa !24
  %4 = bitcast i32* %block_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #16
  store i32 -1, i32* %block_size, align 4, !tbaa !54
  %5 = bitcast i32* %output_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16
  store i32 -1, i32* %output_size, align 4, !tbaa !54
  %6 = bitcast [21 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 840, i8* nonnull %6) #16
  %7 = bitcast [3 x %struct.ossl_param_st]* %sizes to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %7) #16
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %sizes, i64 0, i64 0
  %mac = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 1
  %8 = load %struct.evp_mac_st*, %struct.evp_mac_st** %mac, align 8, !tbaa !172
  %call = tail call %struct.ossl_param_st* @EVP_MAC_settable_ctx_params(%struct.evp_mac_st* noundef %8) #13
  %alg = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 3
  %9 = load i8*, i8** %alg, align 8, !tbaa !176
  %cmp = icmp eq i8* %9, null
  %mac_name = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 0
  %10 = load i8*, i8** %mac_name, align 8, !tbaa !171
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1400, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.270, i64 0, i64 0), i8* noundef %10) #13
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1403, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.271, i64 0, i64 0), i8* noundef %10, i8* noundef nonnull %9) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i8*, i8** %alg, align 8, !tbaa !176
  %cmp4.not = icmp eq i8* %11, null
  br i1 %cmp4.not, label %if.end21, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #13
  %cmp7.not = icmp eq %struct.ossl_param_st* %call6, null
  br i1 %cmp7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.then5
  %12 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %12) #16
  %13 = load i8*, i8** %alg, align 8, !tbaa !176
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), i8* noundef %13, i64 noundef 0) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %12) #16
  br label %if.end21

if.else10:                                        ; preds = %if.then5
  %call11 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0)) #13
  %cmp12.not = icmp eq %struct.ossl_param_st* %call11, null
  br i1 %cmp12.not, label %err216.thread, label %if.then13

if.then13:                                        ; preds = %if.else10
  %14 = bitcast %struct.ossl_param_st* %tmp16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %14) #16
  %15 = load i8*, i8** %alg, align 8, !tbaa !176
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i64 0, i64 0), i8* noundef %15, i64 noundef 0) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %14) #16
  br label %if.end21

err216.thread:                                    ; preds = %if.else10
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.272, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %while.end

if.end21:                                         ; preds = %if.then8, %if.then13, %if.end
  %params_n.0 = phi i64 [ 1, %if.then8 ], [ 1, %if.then13 ], [ 0, %if.end ]
  %custom = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 12
  %16 = load i8*, i8** %custom, align 8, !tbaa !179
  %cmp22.not = icmp eq i8* %16, null
  br i1 %cmp22.not, label %if.end28, label %if.then23

if.then23:                                        ; preds = %if.end21
  %inc24 = add nuw nsw i64 %params_n.0, 1
  %arrayidx25 = getelementptr inbounds [21 x %struct.ossl_param_st], [21 x %struct.ossl_param_st]* %params, i64 0, i64 %params_n.0
  %17 = bitcast %struct.ossl_param_st* %tmp26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %17) #16
  %custom_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 13
  %18 = load i64, i64* %custom_len, align 8, !tbaa !184
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.273, i64 0, i64 0), i8* noundef nonnull %16, i64 noundef %18) #13
  %19 = bitcast %struct.ossl_param_st* %arrayidx25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %19, i8* noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %17) #16
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end21
  %params_n.1 = phi i64 [ %inc24, %if.then23 ], [ %params_n.0, %if.end21 ]
  %salt = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 14
  %20 = load i8*, i8** %salt, align 8, !tbaa !180
  %cmp29.not = icmp eq i8* %20, null
  br i1 %cmp29.not, label %if.end35, label %if.then30

if.then30:                                        ; preds = %if.end28
  %inc31 = add nuw nsw i64 %params_n.1, 1
  %arrayidx32 = getelementptr inbounds [21 x %struct.ossl_param_st], [21 x %struct.ossl_param_st]* %params, i64 0, i64 %params_n.1
  %21 = bitcast %struct.ossl_param_st* %tmp33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %21) #16
  %salt_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 15
  %22 = load i64, i64* %salt_len, align 8, !tbaa !185
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp33, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.274, i64 0, i64 0), i8* noundef nonnull %20, i64 noundef %22) #13
  %23 = bitcast %struct.ossl_param_st* %arrayidx32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %23, i8* noundef nonnull align 8 dereferenceable(40) %21, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %21) #16
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end28
  %params_n.2 = phi i64 [ %inc31, %if.then30 ], [ %params_n.1, %if.end28 ]
  %iv = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 6
  %24 = load i8*, i8** %iv, align 8, !tbaa !178
  %cmp36.not = icmp eq i8* %24, null
  br i1 %cmp36.not, label %if.end42, label %if.then37

if.then37:                                        ; preds = %if.end35
  %inc38 = add nuw nsw i64 %params_n.2, 1
  %arrayidx39 = getelementptr inbounds [21 x %struct.ossl_param_st], [21 x %struct.ossl_param_st]* %params, i64 0, i64 %params_n.2
  %25 = bitcast %struct.ossl_param_st* %tmp40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %25) #16
  %iv_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 7
  %26 = load i64, i64* %iv_len, align 8, !tbaa !186
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp40, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144, i64 0, i64 0), i8* noundef nonnull %24, i64 noundef %26) #13
  %27 = bitcast %struct.ossl_param_st* %arrayidx39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %27, i8* noundef nonnull align 8 dereferenceable(40) %25, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %25) #16
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.end35
  %params_n.3 = phi i64 [ %inc38, %if.then37 ], [ %params_n.2, %if.end35 ]
  %controls = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 17
  %28 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %controls, align 8, !tbaa !173
  %call43 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %28) #14
  %call44 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call43) #13
  %conv = sext i32 %call44 to i64
  %add = add nsw i64 %params_n.3, %conv
  %cmp45 = icmp ugt i64 %add, 20
  br i1 %cmp45, label %if.then47, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end42
  %29 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %controls, align 8, !tbaa !173
  %call5117 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %29) #14
  %call5218 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call5117) #13
  %cmp5319 = icmp sgt i32 %call5218, 0
  br i1 %cmp5319, label %for.body, label %for.end

if.then47:                                        ; preds = %if.end42
  %err48 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.275, i64 0, i64 0), i8** %err48, align 8, !tbaa !41
  br label %err216

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.021 = phi i32 [ %inc80, %for.inc ], [ 0, %for.cond.preheader ]
  %params_n.420 = phi i64 [ %inc77, %for.inc ], [ %params_n.3, %for.cond.preheader ]
  %30 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %controls, align 8, !tbaa !173
  %call56 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %30) #14
  %call57 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call56, i32 noundef %i.021) #13
  %call58 = call i8* @CRYPTO_strdup(i8* noundef %call57, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1453) #13
  %call59 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1453, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.276, i64 0, i64 0), i8* noundef %call58) #13
  %tobool.not = icmp eq i32 %call59, 0
  br i1 %tobool.not, label %if.then60, label %if.end62

if.then60:                                        ; preds = %for.body
  %err61 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.277, i64 0, i64 0), i8** %err61, align 8, !tbaa !41
  br label %err216

if.end62:                                         ; preds = %for.body
  %call63 = call i8* @strchr(i8* noundef %call58, i32 noundef 58) #15
  %cmp64.not = icmp eq i8* %call63, null
  br i1 %cmp64.not, label %if.then74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end62
  %incdec.ptr = getelementptr inbounds i8, i8* %call63, i64 1
  store i8 0, i8* %call63, align 1, !tbaa !23
  %arrayidx70 = getelementptr inbounds [21 x %struct.ossl_param_st], [21 x %struct.ossl_param_st]* %params, i64 0, i64 %params_n.420
  %call71 = call i64 @strlen(i8* noundef nonnull %incdec.ptr) #15
  %call72 = call i32 @OSSL_PARAM_allocate_from_text(%struct.ossl_param_st* noundef nonnull %arrayidx70, %struct.ossl_param_st* noundef %call, i8* noundef %call58, i8* noundef nonnull %incdec.ptr, i64 noundef %call71, i32* noundef null) #13
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %for.inc

if.then74:                                        ; preds = %if.end62, %lor.lhs.false
  call void @CRYPTO_free(i8* noundef %call58, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1466) #13
  %err75 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.277, i64 0, i64 0), i8** %err75, align 8, !tbaa !41
  br label %err216

for.inc:                                          ; preds = %lor.lhs.false
  %inc77 = add nuw nsw i64 %params_n.420, 1
  call void @CRYPTO_free(i8* noundef %call58, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1472) #13
  %inc80 = add nuw nsw i32 %i.021, 1
  %31 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %controls, align 8, !tbaa !173
  %call51 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %31) #14
  %call52 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call51) #13
  %cmp53 = icmp slt i32 %inc80, %call52
  br i1 %cmp53, label %for.body, label %for.end, !llvm.loop !187

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %params_n.4.lcssa = phi i64 [ %params_n.3, %for.cond.preheader ], [ %inc77, %for.inc ]
  %arrayidx81 = getelementptr inbounds [21 x %struct.ossl_param_st], [21 x %struct.ossl_param_st]* %params, i64 0, i64 %params_n.4.lcssa
  %32 = bitcast %struct.ossl_param_st* %tmp82 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %32) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp82) #13
  %33 = bitcast %struct.ossl_param_st* %arrayidx81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %33, i8* noundef nonnull align 8 dereferenceable(40) %32, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %32) #16
  %34 = load %struct.evp_mac_st*, %struct.evp_mac_st** %mac, align 8, !tbaa !172
  %call84 = call %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef %34) #13
  %cmp85 = icmp eq %struct.evp_mac_ctx_st* %call84, null
  br i1 %cmp85, label %if.then87, label %if.end89

if.then87:                                        ; preds = %for.end
  %err88 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.278, i64 0, i64 0), i8** %err88, align 8, !tbaa !41
  br label %err216

if.end89:                                         ; preds = %for.end
  %key = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 4
  %35 = load i8*, i8** %key, align 8, !tbaa !177
  %key_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 5
  %36 = load i64, i64* %key_len, align 8, !tbaa !188
  %arraydecay90 = getelementptr inbounds [21 x %struct.ossl_param_st], [21 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call91 = call i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef nonnull %call84, i8* noundef %35, i64 noundef %36, %struct.ossl_param_st* noundef nonnull %arraydecay90) #13
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.end89
  %err94 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.279, i64 0, i64 0), i8** %err94, align 8, !tbaa !41
  br label %err216

if.end95:                                         ; preds = %if.end89
  %output_size96 = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 18
  %37 = load i32, i32* %output_size96, align 8, !tbaa !175
  %cmp97 = icmp sgt i32 %37, -1
  br i1 %cmp97, label %if.then99, label %if.end102

if.then99:                                        ; preds = %if.end95
  %incdec.ptr100 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %sizes, i64 0, i64 1
  %38 = bitcast %struct.ossl_param_st* %tmp101 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %38) #16
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp101, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.280, i64 0, i64 0), i32* noundef nonnull %output_size) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %38, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %38) #16
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end95
  %psizes.0 = phi %struct.ossl_param_st* [ %incdec.ptr100, %if.then99 ], [ %arraydecay, %if.end95 ]
  %block_size103 = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 19
  %39 = load i32, i32* %block_size103, align 4, !tbaa !174
  %cmp104 = icmp sgt i32 %39, -1
  br i1 %cmp104, label %if.then106, label %if.end109

if.then106:                                       ; preds = %if.end102
  %incdec.ptr107 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %psizes.0, i64 1
  %40 = bitcast %struct.ossl_param_st* %tmp108 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %40) #16
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp108, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.281, i64 0, i64 0), i32* noundef nonnull %block_size) #13
  %41 = bitcast %struct.ossl_param_st* %psizes.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %41, i8* noundef nonnull align 8 dereferenceable(40) %40, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %40) #16
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.end102
  %psizes.1 = phi %struct.ossl_param_st* [ %incdec.ptr107, %if.then106 ], [ %psizes.0, %if.end102 ]
  %cmp111.not = icmp eq %struct.ossl_param_st* %psizes.1, %arraydecay
  br i1 %cmp111.not, label %if.end143, label %if.then113

if.then113:                                       ; preds = %if.end109
  %42 = bitcast %struct.ossl_param_st* %tmp114 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %42) #16
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp114) #13
  %43 = bitcast %struct.ossl_param_st* %psizes.1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %43, i8* noundef nonnull align 8 dereferenceable(40) %42, i64 40, i1 false), !tbaa.struct !76
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %42) #16
  %call116 = call i32 @EVP_MAC_CTX_get_params(%struct.evp_mac_ctx_st* noundef nonnull %call84, %struct.ossl_param_st* noundef nonnull %arraydecay) #13
  %cmp117 = icmp ne i32 %call116, 0
  %conv118 = zext i1 %cmp117 to i32
  %call119 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1493, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.282, i64 0, i64 0), i32 noundef %conv118) #13
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.then113
  %err122 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.221, i64 0, i64 0), i8** %err122, align 8, !tbaa !41
  br label %err216

if.end123:                                        ; preds = %if.then113
  %44 = load i32, i32* %output_size96, align 8, !tbaa !175
  %cmp125 = icmp sgt i32 %44, -1
  br i1 %cmp125, label %land.lhs.true, label %if.end132

land.lhs.true:                                    ; preds = %if.end123
  %45 = load i32, i32* %output_size, align 4, !tbaa !54
  %call128 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1498, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.283, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.284, i64 0, i64 0), i32 noundef %45, i32 noundef %44) #13
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then130, label %if.end132

if.then130:                                       ; preds = %land.lhs.true
  %err131 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i64 0, i64 0), i8** %err131, align 8, !tbaa !41
  br label %err216

if.end132:                                        ; preds = %land.lhs.true, %if.end123
  %46 = load i32, i32* %block_size103, align 4, !tbaa !174
  %cmp134 = icmp sgt i32 %46, -1
  br i1 %cmp134, label %land.lhs.true136, label %if.end143

land.lhs.true136:                                 ; preds = %if.end132
  %47 = load i32, i32* %block_size, align 4, !tbaa !54
  %call138 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1503, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.285, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.286, i64 0, i64 0), i32 noundef %47, i32 noundef %46) #13
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.then140, label %if.end143

if.then140:                                       ; preds = %land.lhs.true136
  %err141 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i64 0, i64 0), i8** %err141, align 8, !tbaa !41
  br label %err216

if.end143:                                        ; preds = %if.end132, %land.lhs.true136, %if.end109
  %input = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 8
  %48 = load i8*, i8** %input, align 8, !tbaa !181
  %input_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 9
  %49 = load i64, i64* %input_len, align 8, !tbaa !189
  %call144 = call i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef nonnull %call84, i8* noundef %48, i64 noundef %49) #13
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then146, label %if.end148

if.then146:                                       ; preds = %if.end143
  %err147 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.287, i64 0, i64 0), i8** %err147, align 8, !tbaa !41
  br label %err216

if.end148:                                        ; preds = %if.end143
  %xof149 = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 16
  %50 = load i32, i32* %xof149, align 8, !tbaa !183
  %tobool150.not = icmp eq i32 %50, 0
  br i1 %tobool150.not, label %if.else169, label %if.then151

if.then151:                                       ; preds = %if.end148
  %output_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 11
  %51 = load i64, i64* %output_len, align 8, !tbaa !190
  %call152 = call i8* @CRYPTO_malloc(i64 noundef %51, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1514) #13
  %call153 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1514, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.288, i64 0, i64 0), i8* noundef %call152) #13
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.then155, label %if.end157

if.then155:                                       ; preds = %if.then151
  %err156 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i64 0, i64 0), i8** %err156, align 8, !tbaa !41
  br label %err216

if.end157:                                        ; preds = %if.then151
  %52 = load i64, i64* %output_len, align 8, !tbaa !190
  %call159 = call i32 @EVP_MAC_finalXOF(%struct.evp_mac_ctx_st* noundef nonnull %call84, i8* noundef %call152, i64 noundef %52) #13
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.then166, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %if.end157
  %output = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 10
  %53 = load i8*, i8** %output, align 8, !tbaa !182
  %54 = load i64, i64* %output_len, align 8, !tbaa !190
  %call164 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef %t, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.289, i64 0, i64 0), i8* noundef %53, i64 noundef %54, i8* noundef %call152, i64 noundef %54) #14
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.then166, label %if.end191

if.then166:                                       ; preds = %lor.lhs.false161, %if.end157
  %err167 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.290, i64 0, i64 0), i8** %err167, align 8, !tbaa !41
  br label %err216

if.else169:                                       ; preds = %if.end148
  %call170 = call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef nonnull %call84, i8* noundef null, i64* noundef nonnull %got_len, i64 noundef 0) #13
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.then172, label %if.end174

if.then172:                                       ; preds = %if.else169
  %err173 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.291, i64 0, i64 0), i8** %err173, align 8, !tbaa !41
  br label %err216

if.end174:                                        ; preds = %if.else169
  %55 = load i64, i64* %got_len, align 8, !tbaa !24
  %call175 = call i8* @CRYPTO_malloc(i64 noundef %55, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1530) #13
  %call176 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1530, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call175) #13
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then178, label %if.end180

if.then178:                                       ; preds = %if.end174
  %err179 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i64 0, i64 0), i8** %err179, align 8, !tbaa !41
  br label %err216

if.end180:                                        ; preds = %if.end174
  %56 = load i64, i64* %got_len, align 8, !tbaa !24
  %call181 = call i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef nonnull %call84, i8* noundef %call175, i64* noundef nonnull %got_len, i64 noundef %56) #13
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.then188, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %if.end180
  %output184 = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 10
  %57 = load i8*, i8** %output184, align 8, !tbaa !182
  %output_len185 = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 11
  %58 = load i64, i64* %output_len185, align 8, !tbaa !190
  %59 = load i64, i64* %got_len, align 8, !tbaa !24
  %call186 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef %t, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.289, i64 0, i64 0), i8* noundef %57, i64 noundef %58, i8* noundef %call175, i64 noundef %59) #14
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.then188, label %if.then194

if.then188:                                       ; preds = %lor.lhs.false183, %if.end180
  %err189 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.289, i64 0, i64 0), i8** %err189, align 8, !tbaa !41
  br label %err216

if.end191:                                        ; preds = %lor.lhs.false161
  %err192 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* null, i8** %err192, align 8, !tbaa !41
  br label %err216

if.then194:                                       ; preds = %lor.lhs.false183
  %err1928 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* null, i8** %err1928, align 8, !tbaa !41
  %60 = load i64, i64* %got_len, align 8, !tbaa !24
  call void @OPENSSL_cleanse(i8* noundef %call175, i64 noundef %60) #13
  %61 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %mac_name195 = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 0
  %62 = load i8*, i8** %mac_name195, align 8, !tbaa !171
  %63 = load i8*, i8** %alg, align 8, !tbaa !176
  %64 = load i8*, i8** %key, align 8, !tbaa !177
  %65 = load i64, i64* %key_len, align 8, !tbaa !188
  %66 = load i8*, i8** %input, align 8, !tbaa !181
  %67 = load i64, i64* %input_len, align 8, !tbaa !189
  %68 = load i64, i64* %got_len, align 8, !tbaa !24
  %call202 = call i8* @EVP_Q_mac(%struct.ossl_lib_ctx_st* noundef %61, i8* noundef %62, i8* noundef null, i8* noundef %63, %struct.ossl_param_st* noundef nonnull %arraydecay90, i8* noundef %64, i64 noundef %65, i8* noundef %66, i64 noundef %67, i8* noundef %call175, i64 noundef %68, i64* noundef nonnull %size) #13
  %cmp203 = icmp ne i8* %call202, null
  %conv204 = zext i1 %cmp203 to i32
  %call205 = call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1551, i8* noundef getelementptr inbounds ([160 x i8], [160 x i8]* @.str.292, i64 0, i64 0), i32 noundef %conv204) #13
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.then212, label %lor.lhs.false207

lor.lhs.false207:                                 ; preds = %if.then194
  %69 = load i64, i64* %size, align 8, !tbaa !24
  %70 = load i8*, i8** %output184, align 8, !tbaa !182
  %71 = load i64, i64* %output_len185, align 8, !tbaa !190
  %call210 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1553, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.196, i64 0, i64 0), i8* noundef %call175, i64 noundef %69, i8* noundef %70, i64 noundef %71) #13
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.then212, label %err216

if.then212:                                       ; preds = %lor.lhs.false207, %if.then194
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.293, i64 0, i64 0), i8** %err1928, align 8, !tbaa !41
  br label %err216

err216:                                           ; preds = %if.then60, %if.then74, %if.end191, %lor.lhs.false207, %if.then212, %if.then188, %if.then178, %if.then172, %if.then166, %if.then155, %if.then146, %if.then140, %if.then130, %if.then121, %if.then93, %if.then87, %if.then47
  %params_n.6 = phi i64 [ %params_n.3, %if.then47 ], [ %params_n.4.lcssa, %if.then87 ], [ %params_n.4.lcssa, %if.end191 ], [ %params_n.4.lcssa, %lor.lhs.false207 ], [ %params_n.4.lcssa, %if.then212 ], [ %params_n.4.lcssa, %if.then166 ], [ %params_n.4.lcssa, %if.then155 ], [ %params_n.4.lcssa, %if.then188 ], [ %params_n.4.lcssa, %if.then178 ], [ %params_n.4.lcssa, %if.then172 ], [ %params_n.4.lcssa, %if.then146 ], [ %params_n.4.lcssa, %if.then140 ], [ %params_n.4.lcssa, %if.then130 ], [ %params_n.4.lcssa, %if.then121 ], [ %params_n.4.lcssa, %if.then93 ], [ %params_n.420, %if.then74 ], [ %params_n.420, %if.then60 ]
  %params_n_allocstart.0 = phi i64 [ 0, %if.then47 ], [ %params_n.3, %if.then87 ], [ %params_n.3, %if.end191 ], [ %params_n.3, %lor.lhs.false207 ], [ %params_n.3, %if.then212 ], [ %params_n.3, %if.then166 ], [ %params_n.3, %if.then155 ], [ %params_n.3, %if.then188 ], [ %params_n.3, %if.then178 ], [ %params_n.3, %if.then172 ], [ %params_n.3, %if.then146 ], [ %params_n.3, %if.then140 ], [ %params_n.3, %if.then130 ], [ %params_n.3, %if.then121 ], [ %params_n.3, %if.then93 ], [ %params_n.3, %if.then74 ], [ %params_n.3, %if.then60 ]
  %got.1 = phi i8* [ null, %if.then47 ], [ null, %if.then87 ], [ %call152, %if.end191 ], [ %call175, %lor.lhs.false207 ], [ %call175, %if.then212 ], [ %call152, %if.then166 ], [ %call152, %if.then155 ], [ %call175, %if.then188 ], [ %call175, %if.then178 ], [ null, %if.then172 ], [ null, %if.then146 ], [ null, %if.then140 ], [ null, %if.then130 ], [ null, %if.then121 ], [ null, %if.then93 ], [ null, %if.then74 ], [ null, %if.then60 ]
  %ctx.0 = phi %struct.evp_mac_ctx_st* [ null, %if.then47 ], [ null, %if.then87 ], [ %call84, %if.end191 ], [ %call84, %lor.lhs.false207 ], [ %call84, %if.then212 ], [ %call84, %if.then166 ], [ %call84, %if.then155 ], [ %call84, %if.then188 ], [ %call84, %if.then178 ], [ %call84, %if.then172 ], [ %call84, %if.then146 ], [ %call84, %if.then140 ], [ %call84, %if.then130 ], [ %call84, %if.then121 ], [ %call84, %if.then93 ], [ null, %if.then74 ], [ null, %if.then60 ]
  %cmp21723 = icmp ugt i64 %params_n.6, %params_n_allocstart.0
  br i1 %cmp21723, label %while.body, label %while.end

while.body:                                       ; preds = %err216, %while.body
  %dec24.in = phi i64 [ %dec24, %while.body ], [ %params_n.6, %err216 ]
  %dec24 = add i64 %dec24.in, -1
  %data220 = getelementptr inbounds [21 x %struct.ossl_param_st], [21 x %struct.ossl_param_st]* %params, i64 0, i64 %dec24, i32 2
  %72 = load i8*, i8** %data220, align 8, !tbaa !151
  call void @CRYPTO_free(i8* noundef %72, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1560) #13
  %cmp217 = icmp ugt i64 %dec24, %params_n_allocstart.0
  br i1 %cmp217, label %while.body, label %while.end, !llvm.loop !191

while.end:                                        ; preds = %while.body, %err216.thread, %err216
  %ctx.035 = phi %struct.evp_mac_ctx_st* [ null, %err216.thread ], [ %ctx.0, %err216 ], [ %ctx.0, %while.body ]
  %got.134 = phi i8* [ null, %err216.thread ], [ %got.1, %err216 ], [ %got.1, %while.body ]
  call void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef %ctx.035) #13
  call void @CRYPTO_free(i8* noundef %got.134, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1563) #13
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %7) #16
  call void @llvm.lifetime.end.p0i8(i64 840, i8* nonnull %6) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @mac_test_run_pkey(%struct.evp_test_st* nocapture noundef %t) unnamed_addr #1 {
entry:
  %pctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %got_len = alloca i64, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.mac_data_st**
  %1 = load %struct.mac_data_st*, %struct.mac_data_st** %0, align 8, !tbaa !44
  %2 = bitcast %struct.evp_pkey_ctx_st** %pctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !16
  %3 = bitcast i64* %got_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #16
  %xof = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 16
  %4 = load i32, i32* %xof, align 8, !tbaa !183
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %cleanup102

if.end:                                           ; preds = %entry
  %alg = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 3
  %5 = load i8*, i8** %alg, align 8, !tbaa !176
  %cmp = icmp eq i8* %5, null
  %type = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 2
  %6 = load i32, i32* %type, align 8, !tbaa !169
  %call = tail call i8* @OBJ_nid2sn(i32 noundef %6) #13
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1293, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.294, i64 0, i64 0), i8* noundef %call) #13
  br label %if.end5

if.else:                                          ; preds = %if.end
  %7 = load i8*, i8** %alg, align 8, !tbaa !176
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1296, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.295, i64 0, i64 0), i8* noundef %call, i8* noundef %7) #13
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1
  %type6 = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 2
  %8 = load i32, i32* %type6, align 8, !tbaa !169
  %cmp7 = icmp eq i32 %8, 894
  br i1 %cmp7, label %if.then8, label %if.else28

if.then8:                                         ; preds = %if.end5
  %9 = load i8*, i8** %alg, align 8, !tbaa !176
  %cmp10.not = icmp eq i8* %9, null
  br i1 %cmp10.not, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then8
  %call12 = tail call fastcc i32 @is_cipher_disabled(i8* noundef nonnull %9) #14
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1308, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.296, i64 0, i64 0), i8* noundef nonnull %9) #13
  br label %err101.sink.split

if.end16:                                         ; preds = %land.lhs.true, %if.then8
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call18 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %10, i8* noundef %9, i8* noundef null) #13
  %11 = bitcast %struct.evp_cipher_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1313, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.297, i64 0, i64 0), i8* noundef %11) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err101, label %cleanup

cleanup:                                          ; preds = %if.end16
  %12 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call24 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %12) #13
  %key25 = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 4
  %13 = load i8*, i8** %key25, align 8, !tbaa !177
  %key_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 5
  %14 = load i64, i64* %key_len, align 8, !tbaa !188
  %call26 = tail call %struct.evp_pkey_st* @EVP_PKEY_new_CMAC_key(%struct.engine_st* noundef null, i8* noundef %13, i64 noundef %14, %struct.evp_cipher_st* noundef %call18) #13
  %call27 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call24) #13
  br label %if.end34

if.else28:                                        ; preds = %if.end5
  %15 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call30 = tail call i8* @OBJ_nid2sn(i32 noundef %8) #13
  %key31 = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 4
  %16 = load i8*, i8** %key31, align 8, !tbaa !177
  %key_len32 = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 5
  %17 = load i64, i64* %key_len32, align 8, !tbaa !188
  %call33 = tail call %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef %15, i8* noundef %call30, i8* noundef null, i8* noundef %16, i64 noundef %17) #13
  br label %if.end34

if.end34:                                         ; preds = %cleanup, %if.else28
  %key.1 = phi %struct.evp_pkey_st* [ %call26, %cleanup ], [ %call33, %if.else28 ]
  %cipher.1 = phi %struct.evp_cipher_st* [ %call18, %cleanup ], [ null, %if.else28 ]
  %cmp35 = icmp eq %struct.evp_pkey_st* %key.1, null
  br i1 %cmp35, label %err101, label %if.end38

if.end38:                                         ; preds = %if.end34
  %18 = load i32, i32* %type6, align 8, !tbaa !169
  %cmp40 = icmp eq i32 %18, 855
  br i1 %cmp40, label %land.lhs.true41, label %if.end54

land.lhs.true41:                                  ; preds = %if.end38
  %19 = load i8*, i8** %alg, align 8, !tbaa !176
  %cmp43.not = icmp eq i8* %19, null
  br i1 %cmp43.not, label %if.end54, label %if.then44

if.then44:                                        ; preds = %land.lhs.true41
  %call46 = tail call fastcc i32 @is_digest_disabled(i8* noundef nonnull %19) #14
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end54, label %if.then48

if.then48:                                        ; preds = %if.then44
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1334, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.299, i64 0, i64 0), i8* noundef nonnull %19) #13
  br label %err101.sink.split

if.end54:                                         ; preds = %if.then44, %land.lhs.true41, %if.end38
  %mdname.0 = phi i8* [ null, %land.lhs.true41 ], [ null, %if.end38 ], [ %19, %if.then44 ]
  %call55 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #13
  %20 = bitcast %struct.evp_md_ctx_st* %call55 to i8*
  %call56 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1341, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.177, i64 0, i64 0), i8* noundef %20) #13
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err101, label %if.end60

if.end60:                                         ; preds = %if.end54
  %21 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call61 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef %call55, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, i8* noundef %mdname.0, %struct.ossl_lib_ctx_st* noundef %21, i8* noundef null, %struct.evp_pkey_st* noundef nonnull %key.1, %struct.ossl_param_st* noundef null) #13
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err101, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end60
  %controls = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 17
  %22 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %controls, align 8, !tbaa !173
  %call666 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %22) #14
  %call677 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call666) #13
  %cmp688 = icmp sgt i32 %call677, 0
  br i1 %cmp688, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %23 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %controls, align 8, !tbaa !173
  %call66 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %23) #14
  %call67 = call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call66) #13
  %cmp68 = icmp slt i32 %inc, %call67
  br i1 %cmp68, label %for.body, label %for.end, !llvm.loop !192

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.09 = phi i32 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  %24 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !16
  %25 = load %struct.stack_st_OPENSSL_STRING*, %struct.stack_st_OPENSSL_STRING** %controls, align 8, !tbaa !173
  %call70 = call fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef %25) #14
  %call71 = call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call70, i32 noundef %i.09) #13
  %call72 = call fastcc i32 @mac_test_ctrl_pkey(%struct.evp_test_st* noundef %t, %struct.evp_pkey_ctx_st* noundef %24, i8* noundef %call71) #14
  %tobool73.not = icmp eq i32 %call72, 0
  %inc = add nuw nsw i32 %i.09, 1
  br i1 %tobool73.not, label %err101, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %input = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 8
  %26 = load i8*, i8** %input, align 8, !tbaa !181
  %input_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 9
  %27 = load i64, i64* %input_len, align 8, !tbaa !189
  %call77 = call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef %call55, i8* noundef %26, i64 noundef %27) #13
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err101, label %if.end81

if.end81:                                         ; preds = %for.end
  %call82 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %call55, i8* noundef null, i64* noundef nonnull %got_len) #13
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err101, label %if.end86

if.end86:                                         ; preds = %if.end81
  %28 = load i64, i64* %got_len, align 8, !tbaa !24
  %call87 = call i8* @CRYPTO_malloc(i64 noundef %28, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1364) #13
  %call88 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1364, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call87) #13
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err101, label %if.end92

if.end92:                                         ; preds = %if.end86
  %call93 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %call55, i8* noundef %call87, i64* noundef nonnull %got_len) #13
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end92
  %output = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 10
  %29 = load i8*, i8** %output, align 8, !tbaa !182
  %output_len = getelementptr inbounds %struct.mac_data_st, %struct.mac_data_st* %1, i64 0, i32 11
  %30 = load i64, i64* %output_len, align 8, !tbaa !190
  %31 = load i64, i64* %got_len, align 8, !tbaa !24
  %call95 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef %t, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.289, i64 0, i64 0), i8* noundef %29, i64 noundef %30, i8* noundef %call87, i64 noundef %31) #14
  %tobool96.not = icmp eq i32 %call95, 0
  %spec.select = select i1 %tobool96.not, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.289, i64 0, i64 0), i8* null
  br label %err101

err101.sink.split:                                ; preds = %if.then48, %if.then14
  %key.2.ph = phi %struct.evp_pkey_st* [ null, %if.then14 ], [ %key.1, %if.then48 ]
  %cipher.2.ph = phi %struct.evp_cipher_st* [ null, %if.then14 ], [ %cipher.1, %if.then48 ]
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip, align 8, !tbaa !12
  br label %err101

err101:                                           ; preds = %for.body, %lor.lhs.false, %err101.sink.split, %if.end92, %if.end86, %if.end81, %for.end, %if.end60, %if.end54, %if.end34, %if.end16
  %.sink = phi i8* [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.298, i64 0, i64 0), %if.end16 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.298, i64 0, i64 0), %if.end34 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.221, i64 0, i64 0), %if.end54 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.201, i64 0, i64 0), %if.end60 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.301, i64 0, i64 0), %for.end ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.206, i64 0, i64 0), %if.end81 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i64 0, i64 0), %if.end86 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.289, i64 0, i64 0), %if.end92 ], [ %spec.select, %lor.lhs.false ], [ null, %err101.sink.split ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.300, i64 0, i64 0), %for.body ]
  %mctx.0 = phi %struct.evp_md_ctx_st* [ null, %if.end16 ], [ null, %if.end34 ], [ %call55, %if.end54 ], [ %call55, %if.end60 ], [ %call55, %for.end ], [ %call55, %if.end81 ], [ %call55, %if.end86 ], [ %call55, %if.end92 ], [ %call55, %lor.lhs.false ], [ null, %err101.sink.split ], [ %call55, %for.body ]
  %key.2 = phi %struct.evp_pkey_st* [ null, %if.end16 ], [ null, %if.end34 ], [ %key.1, %if.end54 ], [ %key.1, %if.end60 ], [ %key.1, %for.end ], [ %key.1, %if.end81 ], [ %key.1, %if.end86 ], [ %key.1, %if.end92 ], [ %key.1, %lor.lhs.false ], [ %key.2.ph, %err101.sink.split ], [ %key.1, %for.body ]
  %cipher.2 = phi %struct.evp_cipher_st* [ %call18, %if.end16 ], [ %cipher.1, %if.end34 ], [ %cipher.1, %if.end54 ], [ %cipher.1, %if.end60 ], [ %cipher.1, %for.end ], [ %cipher.1, %if.end81 ], [ %cipher.1, %if.end86 ], [ %cipher.1, %if.end92 ], [ %cipher.1, %lor.lhs.false ], [ %cipher.2.ph, %err101.sink.split ], [ %cipher.1, %for.body ]
  %got.0 = phi i8* [ null, %if.end16 ], [ null, %if.end34 ], [ null, %if.end54 ], [ null, %if.end60 ], [ null, %for.end ], [ null, %if.end81 ], [ %call87, %if.end86 ], [ %call87, %if.end92 ], [ %call87, %lor.lhs.false ], [ null, %err101.sink.split ], [ null, %for.body ]
  %err22 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* %.sink, i8** %err22, align 8, !tbaa !41
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %cipher.2) #13
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %mctx.0) #13
  call void @CRYPTO_free(i8* noundef %got.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1379) #13
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef null) #13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %key.2) #13
  br label %cleanup102

cleanup102:                                       ; preds = %entry, %err101
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #16
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  ret void
}

declare dso_local %struct.ossl_param_st* @EVP_MAC_settable_ctx_params(%struct.evp_mac_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_OPENSSL_STRING_sk_type(%struct.stack_st_OPENSSL_STRING* noundef readnone %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare dso_local %struct.evp_mac_ctx_st* @EVP_MAC_CTX_new(%struct.evp_mac_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MAC_init(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MAC_CTX_get_params(%struct.evp_mac_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MAC_update(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MAC_finalXOF(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MAC_final(%struct.evp_mac_ctx_st* noundef, i8* noundef, i64* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_Q_mac(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, %struct.ossl_param_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MAC_CTX_free(%struct.evp_mac_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new_CMAC_key(%struct.engine_st* noundef, i8* noundef, i64 noundef, %struct.evp_cipher_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @mac_test_ctrl_pkey(%struct.evp_test_st* nocapture noundef writeonly %t, %struct.evp_pkey_ctx_st* noundef %pctx, i8* noundef %value) unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_strdup(i8* noundef %value, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1259) #13
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1259, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.203, i64 0, i64 0), i8* noundef %call) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @strchr(i8* noundef %call, i32 noundef 58) #15
  %cmp.not = icmp eq i8* %call2, null
  br i1 %cmp.not, label %if.end13.sink.split, label %if.end5

if.end5:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %call2, i64 1
  store i8 0, i8* %call2, align 1, !tbaa !23
  %call4 = tail call i32 @EVP_PKEY_CTX_ctrl_str(%struct.evp_pkey_ctx_st* noundef %pctx, i8* noundef %call, i8* noundef nonnull %incdec.ptr) #13
  %cmp6 = icmp eq i32 %call4, -2
  br i1 %cmp6, label %if.end13.sink.split, label %if.else

if.else:                                          ; preds = %if.end5
  %cmp8 = icmp slt i32 %call4, 1
  br i1 %cmp8, label %if.end13.sink.split, label %if.end13

if.end13.sink.split:                              ; preds = %if.else, %if.end, %if.end5
  %.sink = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.204, i64 0, i64 0), %if.end5 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.205, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.205, i64 0, i64 0), %if.else ]
  %rv.1.ph = phi i32 [ -2, %if.end5 ], [ 0, %if.end ], [ %call4, %if.else ]
  %err10 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* %.sink, i8** %err10, align 8, !tbaa !41
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.else
  %rv.1 = phi i32 [ 1, %if.else ], [ %rv.1.ph, %if.end13.sink.split ]
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1272) #13
  %cmp14 = icmp sgt i32 %rv.1, 0
  %conv = zext i1 %cmp14 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end13
  %retval.0 = phi i32 [ %conv, %if.end13 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @oneshot_digestsign_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %alg) #1 {
entry:
  %call = tail call fastcc i32 @digestsigver_test_init(%struct.evp_test_st* noundef %t, i8* noundef %alg, i32 noundef 0, i32 noundef 1) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @oneshot_digestsign_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %got_len = alloca i64, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.DIGESTSIGN_DATA**
  %1 = load %struct.DIGESTSIGN_DATA*, %struct.DIGESTSIGN_DATA** %0, align 8, !tbaa !44
  %2 = bitcast i64* %got_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  %ctx = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 3
  %3 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %ctx, align 8, !tbaa !130
  %osin = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 6
  %4 = load i8*, i8** %osin, align 8, !tbaa !133
  %osin_len = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 7
  %5 = load i64, i64* %osin_len, align 8, !tbaa !193
  %call = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %3, i8* noundef null, i64* noundef nonnull %got_len, i8* noundef %4, i64 noundef %5) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %err20.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %got_len, align 8, !tbaa !24
  %call1 = call i8* @CRYPTO_malloc(i64 noundef %6, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3244) #13
  %call2 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3244, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call1) #13
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err20.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end
  %7 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %ctx, align 8, !tbaa !130
  %8 = load i8*, i8** %osin, align 8, !tbaa !133
  %9 = load i64, i64* %osin_len, align 8, !tbaa !193
  %call10 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %7, i8* noundef %call1, i64* noundef nonnull %got_len, i8* noundef %8, i64 noundef %9) #13
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err20.sink.split, label %if.end14

if.end14:                                         ; preds = %if.end6
  %output = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 8
  %10 = load i8*, i8** %output, align 8, !tbaa !134
  %output_len = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 9
  %11 = load i64, i64* %output_len, align 8, !tbaa !139
  %12 = load i64, i64* %got_len, align 8, !tbaa !24
  %call15 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.209, i64 0, i64 0), i8* noundef %10, i64 noundef %11, i8* noundef %call1, i64 noundef %12) #14
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err20, label %err20.sink.split

err20.sink.split:                                 ; preds = %if.end14, %if.end6, %if.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.303, i64 0, i64 0), %entry ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.207, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.304, i64 0, i64 0), %if.end6 ], [ null, %if.end14 ]
  %got.0.ph = phi i8* [ null, %entry ], [ %call1, %if.end ], [ %call1, %if.end6 ], [ %call1, %if.end14 ]
  %err19 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* %.sink, i8** %err19, align 8, !tbaa !41
  br label %err20

err20:                                            ; preds = %err20.sink.split, %if.end14
  %got.0 = phi i8* [ %call1, %if.end14 ], [ %got.0.ph, %err20.sink.split ]
  call void @CRYPTO_free(i8* noundef %got.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3260) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  ret i32 1
}

declare dso_local i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @oneshot_digestverify_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %alg) #1 {
entry:
  %call = tail call fastcc i32 @digestsigver_test_init(%struct.evp_test_st* noundef %t, i8* noundef %alg, i32 noundef 1, i32 noundef 1) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @oneshot_digestverify_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.DIGESTSIGN_DATA**
  %1 = load %struct.DIGESTSIGN_DATA*, %struct.DIGESTSIGN_DATA** %0, align 8, !tbaa !44
  %ctx = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 3
  %2 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %ctx, align 8, !tbaa !130
  %output = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 8
  %3 = load i8*, i8** %output, align 8, !tbaa !134
  %output_len = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 9
  %4 = load i64, i64* %output_len, align 8, !tbaa !139
  %osin = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 6
  %5 = load i8*, i8** %osin, align 8, !tbaa !133
  %osin_len = getelementptr inbounds %struct.DIGESTSIGN_DATA, %struct.DIGESTSIGN_DATA* %1, i64 0, i32 7
  %6 = load i64, i64* %osin_len, align 8, !tbaa !193
  %call = tail call i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6) #13
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.211, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare dso_local i32 @EVP_DigestVerify(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @pbe_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %alg) #1 {
entry:
  %call1 = tail call i32 @strcmp(i8* noundef %alg, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.307, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.end13, label %if.else

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strcmp(i8* noundef %alg, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.308, i64 0, i64 0)) #15
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.end13, label %if.else6

if.else6:                                         ; preds = %if.else
  %call7 = tail call i32 @strcmp(i8* noundef %alg, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.309, i64 0, i64 0)) #15
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.end13, label %if.else10

if.else10:                                        ; preds = %if.else6
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2015, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.310, i64 0, i64 0), i8* noundef %alg) #13
  br label %cleanup

if.end13:                                         ; preds = %if.else6, %if.else, %entry
  %pbe_type.0 = phi i32 [ 1, %entry ], [ 2, %if.else ], [ 3, %if.else6 ]
  %call14 = tail call i8* @CRYPTO_zalloc(i64 noundef 104, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2018) #13
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2018, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.311, i64 0, i64 0), i8* noundef %call14) #13
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.end13
  %pbe_type19 = bitcast i8* %call14 to i32*
  store i32 %pbe_type.0, i32* %pbe_type19, align 8, !tbaa !194
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call14, i8** %data, align 8, !tbaa !44
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end18, %if.else10
  %retval.0 = phi i32 [ 1, %if.end18 ], [ 0, %if.else10 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @pbe_test_cleanup(%struct.evp_test_st* nocapture noundef readonly %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pbe_data_st**
  %1 = load %struct.pbe_data_st*, %struct.pbe_data_st** %0, align 8, !tbaa !44
  %pass = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 8
  %2 = load i8*, i8** %pass, align 8, !tbaa !196
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2029) #13
  %salt = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 10
  %3 = load i8*, i8** %salt, align 8, !tbaa !197
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2030) #13
  %key = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 12
  %4 = load i8*, i8** %key, align 8, !tbaa !198
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2031) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pbe_test_parse(%struct.evp_test_st* nocapture noundef readonly %t, i8* noundef %keyword, i8* noundef %value) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pbe_data_st**
  %1 = load %struct.pbe_data_st*, %struct.pbe_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.312, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pass = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 8
  %pass_len = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 9
  %call1 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %pass, i64* noundef nonnull %pass_len) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.265, i64 0, i64 0)) #15
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %salt = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 10
  %salt_len = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 11
  %call5 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %salt, i64* noundef nonnull %salt_len) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0)) #15
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %key = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 12
  %key_len = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 13
  %call10 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %key, i64* noundef nonnull %key_len) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %pbe_type = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 0
  %2 = load i32, i32* %pbe_type, align 8, !tbaa !194
  switch i32 %2, label %cleanup [
    i32 2, label %if.then13
    i32 3, label %if.then17
    i32 1, label %if.then22
  ]

if.then13:                                        ; preds = %if.end11
  %call14 = tail call fastcc i32 @pbkdf2_test_parse(%struct.evp_test_st* noundef nonnull %t, i8* noundef %keyword, i8* noundef %value) #14
  br label %cleanup

if.then17:                                        ; preds = %if.end11
  %call18 = tail call fastcc i32 @pkcs12_test_parse(%struct.evp_test_st* noundef nonnull %t, i8* noundef %keyword, i8* noundef %value) #14
  br label %cleanup

if.then22:                                        ; preds = %if.end11
  %call23 = tail call fastcc i32 @scrypt_test_parse(%struct.evp_test_st* noundef nonnull %t, i8* noundef %keyword, i8* noundef %value) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then22, %if.then17, %if.then13, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.then4 ], [ %call10, %if.then9 ], [ %call14, %if.then13 ], [ %call18, %if.then17 ], [ %call23, %if.then22 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pbe_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pbe_data_st**
  %1 = load %struct.pbe_data_st*, %struct.pbe_data_st** %0, align 8, !tbaa !44
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %2) #13
  %key_len = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 13
  %3 = load i64, i64* %key_len, align 8, !tbaa !199
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2065) #13
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2065, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.324, i64 0, i64 0), i8* noundef %call1) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err67.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %pbe_type = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 0
  %4 = load i32, i32* %pbe_type, align 8, !tbaa !194
  switch i32 %4, label %if.end58 [
    i32 2, label %if.then3
    i32 1, label %if.then16
    i32 3, label %if.then32
  ]

if.then3:                                         ; preds = %if.end
  %pass = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 8
  %5 = load i8*, i8** %pass, align 8, !tbaa !196
  %pass_len = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 9
  %6 = load i64, i64* %pass_len, align 8, !tbaa !200
  %conv = trunc i64 %6 to i32
  %salt = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 10
  %7 = load i8*, i8** %salt, align 8, !tbaa !197
  %salt_len = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 11
  %8 = load i64, i64* %salt_len, align 8, !tbaa !201
  %conv4 = trunc i64 %8 to i32
  %iter = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 6
  %9 = load i32, i32* %iter, align 4, !tbaa !202
  %md = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 7
  %10 = load %struct.evp_md_st*, %struct.evp_md_st** %md, align 8, !tbaa !203
  %11 = load i64, i64* %key_len, align 8, !tbaa !199
  %conv6 = trunc i64 %11 to i32
  %call7 = tail call i32 @PKCS5_PBKDF2_HMAC(i8* noundef %5, i32 noundef %conv, i8* noundef %7, i32 noundef %conv4, i32 noundef %9, %struct.evp_md_st* noundef %10, i32 noundef %conv6, i8* noundef %call1) #13
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %err67.sink.split, label %if.end58

if.then16:                                        ; preds = %if.end
  %pass17 = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 8
  %12 = load i8*, i8** %pass17, align 8, !tbaa !196
  %pass_len18 = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 9
  %13 = load i64, i64* %pass_len18, align 8, !tbaa !200
  %salt19 = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 10
  %14 = load i8*, i8** %salt19, align 8, !tbaa !197
  %salt_len20 = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 11
  %15 = load i64, i64* %salt_len20, align 8, !tbaa !201
  %N = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 1
  %16 = load i64, i64* %N, align 8, !tbaa !204
  %r = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 2
  %17 = load i64, i64* %r, align 8, !tbaa !205
  %p = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 3
  %18 = load i64, i64* %p, align 8, !tbaa !206
  %maxmem = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 4
  %19 = load i64, i64* %maxmem, align 8, !tbaa !207
  %20 = load i64, i64* %key_len, align 8, !tbaa !199
  %call22 = tail call i32 @EVP_PBE_scrypt(i8* noundef %12, i64 noundef %13, i8* noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, i8* noundef %call1, i64 noundef %20) #13
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %err67.sink.split, label %if.end58

if.then32:                                        ; preds = %if.end
  %21 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %md33 = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 7
  %22 = load %struct.evp_md_st*, %struct.evp_md_st** %md33, align 8, !tbaa !203
  %call34 = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %22) #13
  %call35 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %21, i8* noundef %call34, i8* noundef null) #13
  %cmp36 = icmp eq %struct.evp_md_st* %call35, null
  br i1 %cmp36, label %err67.sink.split, label %if.end40

if.end40:                                         ; preds = %if.then32
  %pass41 = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 8
  %23 = load i8*, i8** %pass41, align 8, !tbaa !196
  %pass_len42 = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 9
  %24 = load i64, i64* %pass_len42, align 8, !tbaa !200
  %conv43 = trunc i64 %24 to i32
  %salt44 = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 10
  %25 = load i8*, i8** %salt44, align 8, !tbaa !197
  %salt_len45 = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 11
  %26 = load i64, i64* %salt_len45, align 8, !tbaa !201
  %conv46 = trunc i64 %26 to i32
  %id = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 5
  %27 = load i32, i32* %id, align 8, !tbaa !208
  %iter47 = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 6
  %28 = load i32, i32* %iter47, align 4, !tbaa !202
  %29 = load i64, i64* %key_len, align 8, !tbaa !199
  %conv49 = trunc i64 %29 to i32
  %call50 = tail call i32 @PKCS12_key_gen_uni(i8* noundef %23, i32 noundef %conv43, i8* noundef %25, i32 noundef %conv46, i32 noundef %27, i32 noundef %28, i32 noundef %conv49, i8* noundef %call1, %struct.evp_md_st* noundef nonnull %call35) #13
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %err67.sink.split, label %if.end58

if.end58:                                         ; preds = %if.end, %if.then16, %if.end40, %if.then3
  %fetched_digest.0 = phi %struct.evp_md_st* [ null, %if.then3 ], [ null, %if.then16 ], [ %call35, %if.end40 ], [ null, %if.end ]
  %key59 = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 12
  %30 = load i8*, i8** %key59, align 8, !tbaa !198
  %31 = load i64, i64* %key_len, align 8, !tbaa !199
  %call62 = tail call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.328, i64 0, i64 0), i8* noundef %30, i64 noundef %31, i8* noundef %call1, i64 noundef %31) #14
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err67, label %err67.sink.split

err67.sink.split:                                 ; preds = %if.end58, %if.end40, %if.then32, %if.then16, %if.then3, %entry
  %.sink = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.221, i64 0, i64 0), %entry ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.325, i64 0, i64 0), %if.then3 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.326, i64 0, i64 0), %if.then16 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.327, i64 0, i64 0), %if.then32 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.327, i64 0, i64 0), %if.end40 ], [ null, %if.end58 ]
  %fetched_digest.1.ph = phi %struct.evp_md_st* [ null, %entry ], [ null, %if.then3 ], [ null, %if.then16 ], [ null, %if.then32 ], [ %call35, %if.end40 ], [ %fetched_digest.0, %if.end58 ]
  %err66 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* %.sink, i8** %err66, align 8, !tbaa !41
  br label %err67

err67:                                            ; preds = %err67.sink.split, %if.end58
  %fetched_digest.1 = phi %struct.evp_md_st* [ %fetched_digest.0, %if.end58 ], [ %fetched_digest.1.ph, %err67.sink.split ]
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %fetched_digest.1) #13
  tail call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 2109) #13
  %call68 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_set0_default(%struct.ossl_lib_ctx_st* noundef %call) #13
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pbkdf2_test_parse(%struct.evp_test_st* nocapture noundef readonly %t, i8* noundef readonly %keyword, i8* noundef %value) unnamed_addr #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pbe_data_st**
  %1 = load %struct.pbe_data_st*, %struct.pbe_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @atoi(i8* noundef %value) #15
  %iter = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 6
  store i32 %call1, i32* %iter, align 4, !tbaa !202
  %cmp3 = icmp slt i32 %call1, 1
  %. = select i1 %cmp3, i32 -1, i32 1
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.313, i64 0, i64 0)) #15
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end5
  %call9 = tail call %struct.evp_md_st* @EVP_get_digestbyname(i8* noundef %value) #13
  %md = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 7
  store %struct.evp_md_st* %call9, %struct.evp_md_st** %md, align 8, !tbaa !203
  %cmp11 = icmp eq %struct.evp_md_st* %call9, null
  %.21 = select i1 %cmp11, i32 -1, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then8, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ %.21, %if.then8 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkcs12_test_parse(%struct.evp_test_st* nocapture noundef readonly %t, i8* noundef %keyword, i8* noundef %value) unnamed_addr #1 {
entry:
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.314, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pbe_data_st**
  %1 = load %struct.pbe_data_st*, %struct.pbe_data_st** %0, align 8, !tbaa !44
  %call1 = tail call i32 @atoi(i8* noundef %value) #15
  %id = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 5
  store i32 %call1, i32* %id, align 8, !tbaa !208
  %cmp3 = icmp slt i32 %call1, 1
  %. = select i1 %cmp3, i32 -1, i32 1
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = tail call fastcc i32 @pbkdf2_test_parse(%struct.evp_test_st* noundef %t, i8* noundef %keyword, i8* noundef %value) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.end5
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %., %if.then ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @scrypt_test_parse(%struct.evp_test_st* nocapture noundef readonly %t, i8* noundef readonly %keyword, i8* noundef %value) unnamed_addr #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pbe_data_st**
  %1 = load %struct.pbe_data_st*, %struct.pbe_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.315, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %N = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 1
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.316, i64 0, i64 0)) #15
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %p = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 3
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.317, i64 0, i64 0)) #15
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %r = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 2
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.318, i64 0, i64 0)) #15
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end11
  %maxmem = getelementptr inbounds %struct.pbe_data_st, %struct.pbe_data_st* %1, i64 0, i32 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then, %if.then4, %if.then9, %if.then14
  %maxmem.sink = phi i64* [ %maxmem, %if.then14 ], [ %r, %if.then9 ], [ %p, %if.then4 ], [ %N, %if.then ]
  %call15 = tail call fastcc i32 @parse_uint64(i8* noundef %value, i64* noundef nonnull %maxmem.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call15, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parse_uint64(i8* noundef %value, i64* nocapture noundef %pr) unnamed_addr #1 {
entry:
  %0 = load i8, i8* %value, align 1, !tbaa !23
  %cmp = icmp ne i8 %0, 0
  %conv1 = zext i1 %cmp to i32
  %call = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1927, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.319, i64 0, i64 0), i32 noundef %conv1) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1928, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.320, i64 0, i64 0)) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  store i64 0, i64* %pr, align 8, !tbaa !24
  %1 = load i8, i8* %value, align 1, !tbaa !23
  %tobool2.not28 = icmp eq i8 %1, 0
  br i1 %tobool2.not28, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %call7 = tail call i16** @__ctype_b_loc() #17
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end15
  %2 = phi i64 [ %add, %if.end15 ], [ 0, %for.body.preheader ]
  %p.029 = phi i8* [ %incdec.ptr, %if.end15 ], [ %value, %for.body.preheader ]
  %cmp3 = icmp ugt i64 %2, 1844674407370955161
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1933, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.321, i64 0, i64 0), i8* noundef nonnull %value) #13
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %mul = mul nuw i64 %2, 10
  store i64 %mul, i64* %pr, align 8, !tbaa !24
  %3 = load i16*, i16** %call7, align 8, !tbaa !16
  %4 = load i8, i8* %p.029, align 1, !tbaa !23
  %5 = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %5
  %6 = load i16, i16* %arrayidx, align 2, !tbaa !47
  %7 = lshr i16 %6, 11
  %.lobit = and i16 %7, 1
  %8 = zext i16 %.lobit to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1937, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.322, i64 0, i64 0), i32 noundef %8) #13
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end6
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1938, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.323, i64 0, i64 0), i8* noundef nonnull %value) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %9 = load i8, i8* %p.029, align 1, !tbaa !23
  %conv16 = sext i8 %9 to i64
  %sub = add nsw i64 %conv16, -48
  %10 = load i64, i64* %pr, align 8, !tbaa !24
  %add = add i64 %sub, %10
  store i64 %add, i64* %pr, align 8, !tbaa !24
  %incdec.ptr = getelementptr inbounds i8, i8* %p.029, i64 1
  %11 = load i8, i8* %incdec.ptr, align 1, !tbaa !23
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %cleanup, label %for.body, !llvm.loop !209

cleanup:                                          ; preds = %if.end15, %if.end, %if.then14, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then5 ], [ -1, %if.then14 ], [ -1, %if.then ], [ 1, %if.end ], [ 1, %if.end15 ]
  ret i32 %retval.0
}

declare dso_local i32 @PKCS5_PBKDF2_HMAC(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, %struct.evp_md_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PBE_scrypt(i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @PKCS12_key_gen_uni(i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @decrypt_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %name) #1 {
entry:
  %call = tail call fastcc i32 @pkey_test_init(%struct.evp_test_st* noundef %t, i8* noundef %name, i32 noundef 0, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @EVP_PKEY_decrypt_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef nonnull @EVP_PKEY_decrypt) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @pkey_test_cleanup(%struct.evp_test_st* nocapture noundef readonly %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pkey_data_st**
  %1 = load %struct.pkey_data_st*, %struct.pkey_data_st** %0, align 8, !tbaa !44
  %input = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 2
  %2 = load i8*, i8** %input, align 8, !tbaa !210
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1651) #13
  %output = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 4
  %3 = load i8*, i8** %output, align 8, !tbaa !212
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1652) #13
  %ctx = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 0
  %4 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !213
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %4) #13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_test_parse(%struct.evp_test_st* nocapture noundef %t, i8* noundef readonly %keyword, i8* noundef %value) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pkey_data_st**
  %1 = load %struct.pkey_data_st*, %struct.pkey_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %input = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 2
  %input_len = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 3
  %call1 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %input, i64* noundef nonnull %input_len) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.170, i64 0, i64 0)) #15
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %output = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 4
  %output_len = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 5
  %call5 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %output, i64* noundef nonnull %output_len) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.202, i64 0, i64 0)) #15
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end6
  %ctx = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 0
  %2 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !213
  %call10 = tail call fastcc i32 @pkey_test_ctrl(%struct.evp_test_st* noundef nonnull %t, %struct.evp_pkey_ctx_st* noundef %2, i8* noundef %value) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call5, %if.then4 ], [ %call10, %if.then9 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pkey_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %got_len = alloca i64, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pkey_data_st**
  %1 = load %struct.pkey_data_st*, %struct.pkey_data_st** %0, align 8, !tbaa !44
  %2 = bitcast i64* %got_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  %keyop = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 1
  %3 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %keyop, align 8, !tbaa !214
  %ctx = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 0
  %4 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !213
  %input = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 2
  %5 = load i8*, i8** %input, align 8, !tbaa !210
  %input_len = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 3
  %6 = load i64, i64* %input_len, align 8, !tbaa !215
  %call = call i32 %3(%struct.evp_pkey_ctx_st* noundef %4, i8* noundef null, i64* noundef nonnull %got_len, i8* noundef %5, i64 noundef %6) #13
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64, i64* %got_len, align 8, !tbaa !24
  %call1 = call i8* @CRYPTO_malloc(i64 noundef %7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1708) #13
  %call2 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1708, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call1) #13
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %got.0 = phi i8* [ null, %entry ], [ %call1, %lor.lhs.false ]
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.333, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %err50

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %keyop, align 8, !tbaa !214
  %9 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !213
  %10 = load i8*, i8** %input, align 8, !tbaa !210
  %11 = load i64, i64* %input_len, align 8, !tbaa !215
  %call7 = call i32 %8(%struct.evp_pkey_ctx_st* noundef %9, i8* noundef %call1, i64* noundef nonnull %got_len, i8* noundef %10, i64 noundef %11) #13
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %err10 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.334, i64 0, i64 0), i8** %err10, align 8, !tbaa !41
  br label %err50

if.end11:                                         ; preds = %if.end
  %output = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 4
  %12 = load i8*, i8** %output, align 8, !tbaa !212
  %output_len = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 5
  %13 = load i64, i64* %output_len, align 8, !tbaa !216
  %14 = load i64, i64* %got_len, align 8, !tbaa !24
  %call12 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.335, i64 0, i64 0), i8* noundef %12, i64 noundef %13, i8* noundef %call1, i64 noundef %14) #14
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err50, label %if.end15

if.end15:                                         ; preds = %if.end11
  %err16 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* null, i8** %err16, align 8, !tbaa !41
  call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1723) #13
  %15 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !213
  %call18 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef %15) #13
  %16 = bitcast %struct.evp_pkey_ctx_st* %call18 to i8*
  %call19 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1727, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.336, i64 0, i64 0), i8* noundef %16) #13
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end15
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.221, i64 0, i64 0), i8** %err16, align 8, !tbaa !41
  br label %err50

if.end23:                                         ; preds = %if.end15
  %17 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %keyop, align 8, !tbaa !214
  %18 = load i8*, i8** %input, align 8, !tbaa !210
  %19 = load i64, i64* %input_len, align 8, !tbaa !215
  %call27 = call i32 %17(%struct.evp_pkey_ctx_st* noundef %call18, i8* noundef null, i64* noundef nonnull %got_len, i8* noundef %18, i64 noundef %19) #13
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end23
  %20 = load i64, i64* %got_len, align 8, !tbaa !24
  %call30 = call i8* @CRYPTO_malloc(i64 noundef %20, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1733) #13
  %call31 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1733, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call30) #13
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end35

if.then33:                                        ; preds = %lor.lhs.false29, %if.end23
  %got.1 = phi i8* [ null, %if.end23 ], [ %call30, %lor.lhs.false29 ]
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.333, i64 0, i64 0), i8** %err16, align 8, !tbaa !41
  br label %err50

if.end35:                                         ; preds = %lor.lhs.false29
  %21 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %keyop, align 8, !tbaa !214
  %22 = load i8*, i8** %input, align 8, !tbaa !210
  %23 = load i64, i64* %input_len, align 8, !tbaa !215
  %call39 = call i32 %21(%struct.evp_pkey_ctx_st* noundef %call18, i8* noundef %call30, i64* noundef nonnull %got_len, i8* noundef %22, i64 noundef %23) #13
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end35
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.334, i64 0, i64 0), i8** %err16, align 8, !tbaa !41
  br label %err50

if.end43:                                         ; preds = %if.end35
  %24 = load i8*, i8** %output, align 8, !tbaa !212
  %25 = load i64, i64* %output_len, align 8, !tbaa !216
  %26 = load i64, i64* %got_len, align 8, !tbaa !24
  %call46 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.335, i64 0, i64 0), i8* noundef %24, i64 noundef %25, i8* noundef %call30, i64 noundef %26) #14
  br label %err50

err50:                                            ; preds = %if.end43, %if.end11, %if.then41, %if.then33, %if.then21, %if.then9, %if.then
  %got.2 = phi i8* [ %got.0, %if.then ], [ %call1, %if.then9 ], [ %got.1, %if.then33 ], [ %call30, %if.then41 ], [ %call30, %if.end43 ], [ null, %if.then21 ], [ %call1, %if.end11 ]
  %copy.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.then ], [ null, %if.then9 ], [ %call18, %if.then33 ], [ %call18, %if.then41 ], [ %call18, %if.end43 ], [ %call18, %if.then21 ], [ null, %if.end11 ]
  call void @CRYPTO_free(i8* noundef %got.2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1748) #13
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %copy.0) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @pkey_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %name, i32 noundef %use_public, i32 (%struct.evp_pkey_ctx_st*)* nocapture noundef readonly %keyopinit, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef %keyop) unnamed_addr #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #16
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !16
  %tobool.not = icmp eq i32 %use_public, 0
  br i1 %tobool.not, label %if.then1, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.key_list_st*, %struct.key_list_st** @public_keys, align 8, !tbaa !16
  %call = call fastcc i32 @find_key(%struct.evp_pkey_st** noundef nonnull %pkey, i8* noundef %name, %struct.key_list_st* noundef %1) #14
  %phi.cmp = icmp eq i32 %call, 0
  br i1 %phi.cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %entry, %if.then
  %2 = load %struct.key_list_st*, %struct.key_list_st** @private_keys, align 8, !tbaa !16
  %call2 = call fastcc i32 @find_key(%struct.evp_pkey_st** noundef nonnull %pkey, i8* noundef %name, %struct.key_list_st* noundef %2) #14
  %phi.cmp37 = icmp eq i32 %call2, 0
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.then
  %rv.1 = phi i1 [ %phi.cmp37, %if.then1 ], [ false, %if.then ]
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8
  %cmp5 = icmp eq %struct.evp_pkey_st* %3, null
  %or.cond = select i1 %rv.1, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1626, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.330, i64 0, i64 0), i8* noundef %name) #13
  %skip = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 2
  store i32 1, i32* %skip, align 8, !tbaa !12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1631) #13
  %call9 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1631, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.229, i64 0, i64 0), i8* noundef %call8) #13
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !16
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %4) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %keyop13 = getelementptr inbounds i8, i8* %call8, i64 8
  %5 = bitcast i8* %keyop13 to i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)**
  store i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* %keyop, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %5, align 8, !tbaa !214
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @libctx, align 8, !tbaa !16
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !16
  %call14 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %6, %struct.evp_pkey_st* noundef %7, i8* noundef null) #13
  %ctx = bitcast i8* %call8 to %struct.evp_pkey_ctx_st**
  store %struct.evp_pkey_ctx_st* %call14, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !213
  %8 = bitcast %struct.evp_pkey_ctx_st* %call14 to i8*
  %call15 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1636, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.331, i64 0, i64 0), i8* noundef %8) #13
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !16
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %9) #13
  call void @CRYPTO_free(i8* noundef nonnull %call8, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1638) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %10 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !213
  %call20 = call i32 %keyopinit(%struct.evp_pkey_ctx_st* noundef %10) #13
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.332, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  store i8* %call8, i8** %data, align 8, !tbaa !44
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then17, %if.then11, %if.then6
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 1, %if.end23 ], [ 0, %if.then17 ], [ 0, %if.then11 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #16
  ret i32 %retval.0
}

declare dso_local i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef) #3

declare dso_local i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @pderive_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %name) #1 {
entry:
  %call = tail call fastcc i32 @pkey_test_init(%struct.evp_test_st* noundef %t, i8* noundef %name, i32 noundef 0, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @EVP_PKEY_derive_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef null) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pderive_test_parse(%struct.evp_test_st* nocapture noundef %t, i8* noundef readonly %keyword, i8* noundef %value) #1 {
entry:
  %peer = alloca %struct.evp_pkey_st*, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pkey_data_st**
  %1 = load %struct.pkey_data_st*, %struct.pkey_data_st** %0, align 8, !tbaa !44
  %call = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.338, i64 0, i64 0)) #15
  %cmp = icmp eq i32 %call, 0
  %spec.store.select = zext i1 %cmp to i32
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.339, i64 0, i64 0)) #15
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end13

if.then3:                                         ; preds = %lor.lhs.false, %entry
  %2 = bitcast %struct.evp_pkey_st** %peer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  %3 = load %struct.key_list_st*, %struct.key_list_st** @public_keys, align 8, !tbaa !16
  %call4 = call fastcc i32 @find_key(%struct.evp_pkey_st** noundef nonnull %peer, i8* noundef %value, %struct.key_list_st* noundef %3) #14
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.then3
  %ctx = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 0
  %4 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !213
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %peer, align 8, !tbaa !16
  %call8 = call i32 @EVP_PKEY_derive_set_peer_ex(%struct.evp_pkey_ctx_st* noundef %4, %struct.evp_pkey_st* noundef %5, i32 noundef %spec.store.select) #13
  %cmp9 = icmp slt i32 %call8, 1
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  %. = select i1 %cmp9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.340, i64 0, i64 0), i8* null
  store i8* %., i8** %err, align 8, !tbaa !41
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ 1, %if.end7 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  br label %cleanup25

if.end13:                                         ; preds = %lor.lhs.false
  %call14 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.341, i64 0, i64 0)) #15
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %output = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 4
  %output_len = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 5
  %call17 = tail call fastcc i32 @parse_bin(i8* noundef %value, i8** noundef nonnull %output, i64* noundef nonnull %output_len) #14
  br label %cleanup25

if.end18:                                         ; preds = %if.end13
  %call19 = tail call i32 @strcmp(i8* noundef %keyword, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.202, i64 0, i64 0)) #15
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %cleanup25

if.then21:                                        ; preds = %if.end18
  %ctx22 = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 0
  %6 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx22, align 8, !tbaa !213
  %call23 = tail call fastcc i32 @pkey_test_ctrl(%struct.evp_test_st* noundef nonnull %t, %struct.evp_pkey_ctx_st* noundef %6, i8* noundef %value) #14
  br label %cleanup25

cleanup25:                                        ; preds = %if.end18, %if.then21, %if.then16, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call17, %if.then16 ], [ %call23, %if.then21 ], [ 0, %if.end18 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pderive_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %got_len = alloca i64, align 8
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pkey_data_st**
  %1 = load %struct.pkey_data_st*, %struct.pkey_data_st** %0, align 8, !tbaa !44
  %2 = bitcast i64* %got_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16
  %ctx = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 0
  %3 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !213
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef %3) #13
  %4 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1856, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.342, i64 0, i64 0), i8* noundef %4) #13
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err22.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef null, i64* noundef nonnull %got_len) #13
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %err22.sink.split, label %if.end5

if.end5:                                          ; preds = %if.end
  %5 = load i64, i64* %got_len, align 8, !tbaa !24
  %call6 = call i8* @CRYPTO_malloc(i64 noundef %5, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1865) #13
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1865, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.74, i64 0, i64 0), i8* noundef %call6) #13
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err22.sink.split, label %if.end11

if.end11:                                         ; preds = %if.end5
  %call12 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef %call6, i64* noundef nonnull %got_len) #13
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %err22.sink.split, label %if.end16

if.end16:                                         ; preds = %if.end11
  %output = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 4
  %6 = load i8*, i8** %output, align 8, !tbaa !212
  %output_len = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 5
  %7 = load i64, i64* %output_len, align 8, !tbaa !216
  %8 = load i64, i64* %got_len, align 8, !tbaa !24
  %call17 = call fastcc i32 @memory_err_compare(%struct.evp_test_st* noundef nonnull %t, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.344, i64 0, i64 0), i8* noundef %6, i64 noundef %7, i8* noundef %call6, i64 noundef %8) #14
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err22, label %err22.sink.split

err22.sink.split:                                 ; preds = %if.end16, %if.end11, %if.end5, %if.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.343, i64 0, i64 0), %entry ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.343, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.343, i64 0, i64 0), %if.end5 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.343, i64 0, i64 0), %if.end11 ], [ null, %if.end16 ]
  %got.0.ph = phi i8* [ null, %entry ], [ null, %if.end ], [ %call6, %if.end5 ], [ %call6, %if.end11 ], [ %call6, %if.end16 ]
  %err21 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* %.sink, i8** %err21, align 8, !tbaa !41
  br label %err22

err22:                                            ; preds = %err22.sink.split, %if.end16
  %got.0 = phi i8* [ %call6, %if.end16 ], [ %got.0.ph, %err22.sink.split ]
  call void @CRYPTO_free(i8* noundef %got.0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1880) #13
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16
  ret i32 1
}

declare dso_local i32 @EVP_PKEY_derive_set_peer_ex(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @sign_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %name) #1 {
entry:
  %call = tail call fastcc i32 @pkey_test_init(%struct.evp_test_st* noundef %t, i8* noundef %name, i32 noundef 0, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @EVP_PKEY_sign_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef nonnull @EVP_PKEY_sign) #14
  ret i32 %call
}

declare dso_local i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef) #3

declare dso_local i32 @EVP_PKEY_sign(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @verify_recover_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %name) #1 {
entry:
  %call = tail call fastcc i32 @pkey_test_init(%struct.evp_test_st* noundef %t, i8* noundef %name, i32 noundef 1, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @EVP_PKEY_verify_recover_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef nonnull @EVP_PKEY_verify_recover) #14
  ret i32 %call
}

declare dso_local i32 @EVP_PKEY_verify_recover_init(%struct.evp_pkey_ctx_st* noundef) #3

declare dso_local i32 @EVP_PKEY_verify_recover(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @verify_test_init(%struct.evp_test_st* nocapture noundef writeonly %t, i8* noundef %name) #1 {
entry:
  %call = tail call fastcc i32 @pkey_test_init(%struct.evp_test_st* noundef %t, i8* noundef %name, i32 noundef 1, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @EVP_PKEY_verify_init, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef null) #14
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @verify_test_run(%struct.evp_test_st* nocapture noundef %t) #1 {
entry:
  %data = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 8
  %0 = bitcast i8** %data to %struct.pkey_data_st**
  %1 = load %struct.pkey_data_st*, %struct.pkey_data_st** %0, align 8, !tbaa !44
  %ctx = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 0
  %2 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %ctx, align 8, !tbaa !213
  %output = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 4
  %3 = load i8*, i8** %output, align 8, !tbaa !212
  %output_len = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 5
  %4 = load i64, i64* %output_len, align 8, !tbaa !216
  %input = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 2
  %5 = load i8*, i8** %input, align 8, !tbaa !210
  %input_len = getelementptr inbounds %struct.pkey_data_st, %struct.pkey_data_st* %1, i64 0, i32 3
  %6 = load i64, i64* %input_len, align 8, !tbaa !215
  %call = tail call i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6) #13
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.211, i64 0, i64 0), i8** %err, align 8, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 1
}

declare dso_local i32 @EVP_PKEY_verify_init(%struct.evp_pkey_ctx_st* noundef) #3

declare dso_local i32 @EVP_PKEY_verify(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @check_test_error(%struct.evp_test_st* noundef readonly %t) unnamed_addr #1 {
entry:
  %err1 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 4
  %0 = load i8*, i8** %err1, align 8, !tbaa !41
  %cmp = icmp eq i8* %0, null
  %expected_err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 6
  %1 = load i8*, i8** %expected_err, align 8, !tbaa !36
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true5

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp2, label %cleanup, label %if.then26

land.lhs.true5:                                   ; preds = %entry
  br i1 %cmp2, label %if.then8, label %if.end32

if.then8:                                         ; preds = %land.lhs.true5
  %aux_err = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 5
  %2 = load i8*, i8** %aux_err, align 8, !tbaa !106
  %cmp9.not = icmp eq i8* %2, null
  %test_file15 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 0
  %3 = load i8*, i8** %test_file15, align 8, !tbaa !26
  %start17 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 3
  %4 = load i32, i32* %start17, align 4, !tbaa !27
  br i1 %cmp9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3366, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.349, i64 0, i64 0), i8* noundef %3, i32 noundef %4, i8* noundef nonnull %2, i8* noundef nonnull %0) #13
  br label %cleanup

if.else:                                          ; preds = %if.then8
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3369, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.350, i64 0, i64 0), i8* noundef %3, i32 noundef %4, i8* noundef nonnull %0) #13
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true
  %test_file28 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 0
  %5 = load i8*, i8** %test_file28, align 8, !tbaa !26
  %start30 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 3
  %6 = load i32, i32* %start30, align 4, !tbaa !27
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3375, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.351, i64 0, i64 0), i8* noundef %5, i32 noundef %6, i8* noundef nonnull %1) #13
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true5
  %call = tail call i32 @strcmp(i8* noundef nonnull %0, i8* noundef nonnull %1) #15
  %cmp35.not = icmp eq i32 %call, 0
  br i1 %cmp35.not, label %if.end43, label %if.then36

if.then36:                                        ; preds = %if.end32
  %test_file38 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %test_file38, align 8, !tbaa !26
  %start40 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 3
  %8 = load i32, i32* %start40, align 4, !tbaa !27
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3381, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.352, i64 0, i64 0), i8* noundef %7, i32 noundef %8, i8* noundef nonnull %1, i8* noundef nonnull %0) #13
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %reason44 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 7
  %9 = load i8*, i8** %reason44, align 8, !tbaa !37
  %cmp45 = icmp eq i8* %9, null
  br i1 %cmp45, label %cleanup, label %if.end55

if.end55:                                         ; preds = %if.end43
  %call56 = tail call i64 @ERR_peek_error() #13
  %cmp57 = icmp eq i64 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.end64

if.then58:                                        ; preds = %if.end55
  %test_file60 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 0
  %10 = load i8*, i8** %test_file60, align 8, !tbaa !26
  %start62 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 3
  %11 = load i32, i32* %start62, align 4, !tbaa !27
  %12 = load i8*, i8** %reason44, align 8, !tbaa !37
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3397, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.354, i64 0, i64 0), i8* noundef %10, i32 noundef %11, i8* noundef %12) #13
  br label %cleanup

if.end64:                                         ; preds = %if.end55
  %call65 = tail call i8* @ERR_reason_error_string(i64 noundef %call56) #13
  %cmp66 = icmp eq i8* %call65, null
  br i1 %cmp66, label %if.then67, label %if.end73

if.then67:                                        ; preds = %if.end64
  %test_file69 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %test_file69, align 8, !tbaa !26
  %start71 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 3
  %14 = load i32, i32* %start71, align 4, !tbaa !27
  %15 = load i8*, i8** %reason44, align 8, !tbaa !37
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3405, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.355, i64 0, i64 0), i8* noundef %13, i32 noundef %14, i8* noundef %15) #13
  br label %cleanup

if.end73:                                         ; preds = %if.end64
  %16 = load i8*, i8** %reason44, align 8, !tbaa !37
  %call75 = tail call i32 @strcmp(i8* noundef nonnull %call65, i8* noundef %16) #15
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %cleanup, label %if.end78

if.end78:                                         ; preds = %if.end73
  %test_file80 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 0
  %17 = load i8*, i8** %test_file80, align 8, !tbaa !26
  %start82 = getelementptr inbounds %struct.evp_test_st, %struct.evp_test_st* %t, i64 0, i32 0, i32 3
  %18 = load i32, i32* %start82, align 4, !tbaa !27
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 noundef 3413, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.356, i64 0, i64 0), i8* noundef %17, i32 noundef %18, i8* noundef %16, i8* noundef nonnull %call65) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end43, %if.then10, %if.else, %land.lhs.true, %if.end78, %if.then67, %if.then58, %if.then36, %if.then26
  %retval.0 = phi i32 [ 0, %if.then26 ], [ 0, %if.then36 ], [ 0, %if.then58 ], [ 1, %if.then67 ], [ 0, %if.end78 ], [ 1, %land.lhs.true ], [ 0, %if.else ], [ 0, %if.then10 ], [ 1, %if.end43 ], [ 1, %if.end73 ]
  ret i32 %retval.0
}

declare dso_local i64 @ERR_peek_error() local_unnamed_addr #3

declare dso_local i8* @ERR_reason_error_string(i64 noundef) local_unnamed_addr #3

declare dso_local void @test_clearstanza(%struct.stanza_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !8, i64 8}
!6 = !{!"evp_test_st", !7, i64 0, !8, i64 6544, !11, i64 6552, !8, i64 6560, !8, i64 6568, !8, i64 6576, !8, i64 6584, !8, i64 6592, !8, i64 6600}
!7 = !{!"stanza_st", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !9, i64 40, !8, i64 2440, !9, i64 2448}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!6, !11, i64 6552}
!13 = !{!6, !11, i64 32}
!14 = distinct !{!14, !4}
!15 = !{!6, !11, i64 24}
!16 = !{!8, !8, i64 0}
!17 = !{!6, !8, i64 2440}
!18 = !{!6, !11, i64 36}
!19 = distinct !{!19, !4}
!20 = !{!21, !8, i64 0}
!21 = !{!"pair_st", !8, i64 0, !8, i64 8}
!22 = !{!21, !8, i64 8}
!23 = !{!9, !9, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !9, i64 0}
!26 = !{!6, !8, i64 0}
!27 = !{!6, !11, i64 20}
!28 = !{!29, !8, i64 0}
!29 = !{!"key_list_st", !8, i64 0, !8, i64 8, !8, i64 16}
!30 = !{!29, !8, i64 8}
!31 = !{!29, !8, i64 16}
!32 = !{!6, !11, i64 16}
!33 = !{!6, !8, i64 6560}
!34 = !{!35, !8, i64 8}
!35 = !{!"evp_test_method_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!36 = !{!6, !8, i64 6584}
!37 = !{!6, !8, i64 6592}
!38 = !{!35, !8, i64 24}
!39 = distinct !{!39, !4}
!40 = !{!6, !11, i64 28}
!41 = !{!6, !8, i64 6568}
!42 = !{!35, !8, i64 32}
!43 = !{!35, !8, i64 0}
!44 = !{!6, !8, i64 6600}
!45 = !{!35, !8, i64 16}
!46 = distinct !{!46, !4}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !9, i64 0}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = distinct !{!52, !4}
!53 = distinct !{!53, !4}
!54 = !{!11, !11, i64 0}
!55 = !{!56, !8, i64 8}
!56 = !{!"rand_data_st", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !8, i64 32, !8, i64 40, !9, i64 48}
!57 = !{!56, !8, i64 0}
!58 = !{!56, !11, i64 16}
!59 = !{!56, !8, i64 32}
!60 = !{!56, !8, i64 40}
!61 = !{!62, !8, i64 0}
!62 = !{!"rand_data_pass_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !25, i64 80, !25, i64 88, !25, i64 96, !25, i64 104, !25, i64 112, !25, i64 120, !25, i64 128, !25, i64 136, !25, i64 144, !25, i64 152}
!63 = !{!62, !8, i64 8}
!64 = !{!62, !8, i64 16}
!65 = !{!62, !8, i64 24}
!66 = !{!62, !8, i64 32}
!67 = !{!62, !8, i64 40}
!68 = !{!62, !8, i64 48}
!69 = !{!62, !8, i64 56}
!70 = !{!62, !8, i64 64}
!71 = !{!62, !8, i64 72}
!72 = distinct !{!72, !4}
!73 = !{!56, !11, i64 24}
!74 = !{!56, !11, i64 28}
!75 = !{!56, !11, i64 20}
!76 = !{i64 0, i64 8, !16, i64 8, i64 4, !54, i64 16, i64 8, !16, i64 24, i64 8, !24, i64 32, i64 8, !24}
!77 = !{!62, !25, i64 80}
!78 = !{!62, !25, i64 88}
!79 = !{!62, !25, i64 96}
!80 = !{!62, !25, i64 144}
!81 = !{!62, !25, i64 152}
!82 = !{!62, !25, i64 120}
!83 = !{!62, !25, i64 104}
!84 = !{!62, !25, i64 128}
!85 = !{!62, !25, i64 112}
!86 = !{!62, !25, i64 136}
!87 = distinct !{!87, !4}
!88 = !{!89, !8, i64 0}
!89 = !{!"cipher_data_st", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 20, !8, i64 24, !25, i64 32, !25, i64 40, !8, i64 48, !8, i64 56, !11, i64 64, !25, i64 72, !8, i64 80, !25, i64 88, !8, i64 96, !25, i64 104, !9, i64 112, !9, i64 144, !11, i64 176, !11, i64 180, !8, i64 184, !8, i64 192, !25, i64 200, !11, i64 208, !8, i64 216, !25, i64 224}
!90 = !{!89, !8, i64 8}
!91 = !{!89, !11, i64 16}
!92 = !{!89, !11, i64 20}
!93 = !{!89, !8, i64 24}
!94 = !{!89, !8, i64 48}
!95 = !{!89, !8, i64 56}
!96 = !{!89, !8, i64 96}
!97 = !{!89, !8, i64 80}
!98 = !{!89, !8, i64 184}
!99 = !{!89, !8, i64 216}
!100 = !{!89, !11, i64 64}
!101 = !{!89, !25, i64 40}
!102 = !{!89, !11, i64 176}
!103 = !{!89, !11, i64 208}
!104 = !{!89, !11, i64 180}
!105 = !{!89, !8, i64 192}
!106 = !{!6, !8, i64 6576}
!107 = distinct !{!107, !4}
!108 = !{!89, !25, i64 72}
!109 = !{!89, !25, i64 200}
!110 = !{!89, !25, i64 32}
!111 = !{!89, !25, i64 224}
!112 = distinct !{!112, !4}
!113 = distinct !{!113, !4}
!114 = !{!115, !8, i64 0}
!115 = !{!"digest_data_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !25, i64 32, !11, i64 40}
!116 = !{!115, !8, i64 8}
!117 = !{!115, !11, i64 40}
!118 = !{!115, !8, i64 16}
!119 = !{!115, !8, i64 24}
!120 = !{!115, !25, i64 32}
!121 = !{!122, !11, i64 24}
!122 = !{!"evp_test_buffer_st", !8, i64 0, !25, i64 8, !25, i64 16, !11, i64 24}
!123 = !{!122, !8, i64 0}
!124 = !{!122, !25, i64 8}
!125 = !{!122, !25, i64 16}
!126 = distinct !{!126, !4}
!127 = distinct !{!127, !4}
!128 = !{i32 (i8*, i8*, i64)* @digest_update_fn, i32 (i8*, i8*, i64)* @digestsign_update_fn, i32 (i8*, i8*, i64)* @digestverify_update_fn}
!129 = distinct !{!129, !4}
!130 = !{!131, !8, i64 16}
!131 = !{!"", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !25, i64 48, !8, i64 56, !25, i64 64}
!132 = !{!131, !8, i64 32}
!133 = !{!131, !8, i64 40}
!134 = !{!131, !8, i64 56}
!135 = !{!131, !8, i64 8}
!136 = !{!131, !11, i64 0}
!137 = !{!131, !11, i64 4}
!138 = !{!131, !8, i64 24}
!139 = !{!131, !25, i64 64}
!140 = !{!141, !9, i64 32}
!141 = !{!"encode_data_st", !8, i64 0, !25, i64 8, !8, i64 16, !25, i64 24, !9, i64 32}
!142 = !{!141, !8, i64 0}
!143 = !{!141, !8, i64 16}
!144 = !{!141, !25, i64 8}
!145 = !{!141, !25, i64 24}
!146 = !{!147, !8, i64 824}
!147 = !{!"kdf_data_st", !8, i64 0, !8, i64 8, !25, i64 16, !9, i64 24, !8, i64 824}
!148 = !{!147, !8, i64 0}
!149 = !{!150, !8, i64 0}
!150 = !{!"ossl_param_st", !8, i64 0, !11, i64 8, !8, i64 16, !25, i64 24, !25, i64 32}
!151 = !{!150, !8, i64 16}
!152 = distinct !{!152, !4}
!153 = !{!147, !8, i64 8}
!154 = !{!147, !25, i64 16}
!155 = !{!156, !8, i64 0}
!156 = !{!"pkey_kdf_data_st", !8, i64 0, !8, i64 8, !25, i64 16}
!157 = !{!156, !8, i64 8}
!158 = !{!156, !25, i64 16}
!159 = !{!160, !8, i64 0}
!160 = !{!"keypair_test_data_st", !8, i64 0, !8, i64 8}
!161 = !{!160, !8, i64 8}
!162 = !{!163, !8, i64 0}
!163 = !{!"keygen_test_data_st", !8, i64 0, !8, i64 8}
!164 = !{!163, !8, i64 8}
!165 = !{!166, !8, i64 96}
!166 = !{!"evp_pkey_st", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !8, i64 56, !8, i64 64, !11, i64 72, !11, i64 76, !167, i64 80, !8, i64 96, !8, i64 104, !25, i64 112, !8, i64 120, !25, i64 128, !168, i64 136}
!167 = !{!"crypto_ex_data_st", !8, i64 0, !8, i64 8}
!168 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8}
!169 = !{!170, !11, i64 16}
!170 = !{!"mac_data_st", !8, i64 0, !8, i64 8, !11, i64 16, !8, i64 24, !8, i64 32, !25, i64 40, !8, i64 48, !25, i64 56, !8, i64 64, !25, i64 72, !8, i64 80, !25, i64 88, !8, i64 96, !25, i64 104, !8, i64 112, !25, i64 120, !11, i64 128, !8, i64 136, !11, i64 144, !11, i64 148}
!171 = !{!170, !8, i64 0}
!172 = !{!170, !8, i64 8}
!173 = !{!170, !8, i64 136}
!174 = !{!170, !11, i64 148}
!175 = !{!170, !11, i64 144}
!176 = !{!170, !8, i64 24}
!177 = !{!170, !8, i64 32}
!178 = !{!170, !8, i64 48}
!179 = !{!170, !8, i64 96}
!180 = !{!170, !8, i64 112}
!181 = !{!170, !8, i64 64}
!182 = !{!170, !8, i64 80}
!183 = !{!170, !11, i64 128}
!184 = !{!170, !25, i64 104}
!185 = !{!170, !25, i64 120}
!186 = !{!170, !25, i64 56}
!187 = distinct !{!187, !4}
!188 = !{!170, !25, i64 40}
!189 = !{!170, !25, i64 72}
!190 = !{!170, !25, i64 88}
!191 = distinct !{!191, !4}
!192 = distinct !{!192, !4}
!193 = !{!131, !25, i64 48}
!194 = !{!195, !9, i64 0}
!195 = !{!"pbe_data_st", !9, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !11, i64 40, !11, i64 44, !8, i64 48, !8, i64 56, !25, i64 64, !8, i64 72, !25, i64 80, !8, i64 88, !25, i64 96}
!196 = !{!195, !8, i64 56}
!197 = !{!195, !8, i64 72}
!198 = !{!195, !8, i64 88}
!199 = !{!195, !25, i64 96}
!200 = !{!195, !25, i64 64}
!201 = !{!195, !25, i64 80}
!202 = !{!195, !11, i64 44}
!203 = !{!195, !8, i64 48}
!204 = !{!195, !25, i64 8}
!205 = !{!195, !25, i64 16}
!206 = !{!195, !25, i64 24}
!207 = !{!195, !25, i64 32}
!208 = !{!195, !11, i64 40}
!209 = distinct !{!209, !4}
!210 = !{!211, !8, i64 16}
!211 = !{!"pkey_data_st", !8, i64 0, !8, i64 8, !8, i64 16, !25, i64 24, !8, i64 32, !25, i64 40}
!212 = !{!211, !8, i64 32}
!213 = !{!211, !8, i64 0}
!214 = !{!211, !8, i64 8}
!215 = !{!211, !25, i64 24}
!216 = !{!211, !25, i64 40}
