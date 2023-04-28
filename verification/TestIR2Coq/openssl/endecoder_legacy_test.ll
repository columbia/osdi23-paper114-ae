; ModuleID = 'test/endecoder_legacy_test.c'
source_filename = "test/endecoder_legacy_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.key_st = type { i8*, i32, %struct.ossl_param_st*, %struct.evp_pkey_st* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.ossl_lib_ctx_st = type opaque
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.test_stanza_st = type { i8*, [2 x i8*], i32, i32 (i8*, i8**)*, i32 (i8*, i8**)*, i32 (i8*, i8**)*, i32 (i8*, i8**)*, i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)*, i8* (i8**, i8**, i64)*, i8* (i8**, i8**, i64)*, i8* (i8**, i8**, i64)*, i8* (i8**, i8**, i64)*, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* }
%struct.bio_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.6 }
%union.anon.6 = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.5, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.5 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_md_ctx_st = type opaque
%struct.bignum_st = type opaque
%struct.bio_method_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque
%struct.ossl_decoder_ctx_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.dh_st = type opaque
%struct.dsa_st = type opaque
%struct.ec_key_st = type opaque
%struct.rsa_st = type opaque

@test_get_options.options = internal constant [9 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
@OPT_HELP_STR = external dso_local constant [0 x i8], align 1
@.str = private unnamed_addr constant [44 x i8] c"Usage: %s [options] rsa-key.pem dh-key.pem\0A\00", align 1
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
@.str.14 = private unnamed_addr constant [29 x i8] c"test/endecoder_legacy_test.c\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"usage: endecoder_legacy_test %s\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"rsa-key.pem dh-key.pem\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Generating keys...\00", align 1
@keys = internal global [5 x %struct.key_st] [%struct.key_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 28, %struct.ossl_param_st* getelementptr inbounds ([1 x %struct.ossl_param_st], [1 x %struct.ossl_param_st]* @DH_params, i32 0, i32 0), %struct.evp_pkey_st* null }, %struct.key_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 920, %struct.ossl_param_st* getelementptr inbounds ([1 x %struct.ossl_param_st], [1 x %struct.ossl_param_st]* @DHX_params, i32 0, i32 0), %struct.evp_pkey_st* null }, %struct.key_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 116, %struct.ossl_param_st* getelementptr inbounds ([3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* @DSA_params, i32 0, i32 0), %struct.evp_pkey_st* null }, %struct.key_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i32 408, %struct.ossl_param_st* getelementptr inbounds ([2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* @EC_params, i32 0, i32 0), %struct.evp_pkey_st* null }, %struct.key_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 6, %struct.ossl_param_st* null, %struct.evp_pkey_st* null }], align 16
@.str.19 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"keys[i].key = load_pkey_pem(test_get_argument(1), NULL)\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"keys[i].key = load_pkey_pem(test_get_argument(0), NULL)\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Generating %s key...\00", align 1
@.str.24 = private unnamed_addr constant [65 x i8] c"keys[i].key = make_key(keys[i].keytype, keys[i].template_params)\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Generating keys done\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"test_key\00", align 1
@DH_params = internal constant [1 x %struct.ossl_param_st] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [4 x i8] c"DHX\00", align 1
@DHX_params = internal constant [1 x %struct.ossl_param_st] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@DSA_params = internal constant [3 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 2, i8* bitcast (i64* @pbits to i8*), i64 8, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 2, i8* bitcast (i64* @qbits to i8*), i64 8, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@EC_params = internal constant [2 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @groupname, i32 0, i32 0), i64 10, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.30 = private unnamed_addr constant [6 x i8] c"pbits\00", align 1
@pbits = internal global i64 1024, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"qbits\00", align 1
@qbits = internal global i64 160, align 8
@.str.32 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@groupname = internal global [11 x i8] c"prime256v1\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"test_stanza = &test_stanzas[idx]\00", align 1
@test_stanzas = internal global [5 x %struct.test_stanza_st] [%struct.test_stanza_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0)], i32 28, i32 (i8*, i8**)* null, i32 (i8*, i8**)* null, i32 (i8*, i8**)* bitcast (i32 (%struct.dh_st*, i8**)* @i2d_DHparams to i32 (i8*, i8**)*), i32 (i8*, i8**)* null, i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* null, i32 (%struct.bio_st*, i8*)* null, i32 (%struct.bio_st*, i8*)* bitcast (i32 (%struct.bio_st*, %struct.dh_st*)* @PEM_write_bio_DHparams to i32 (%struct.bio_st*, i8*)*), i32 (%struct.bio_st*, i8*)* null, i8* (i8**, i8**, i64)* null, i8* (i8**, i8**, i64)* null, i8* (i8**, i8**, i64)* bitcast (%struct.dh_st* (%struct.dh_st**, i8**, i64)* @d2i_DHparams to i8* (i8**, i8**, i64)*), i8* (i8**, i8**, i64)* null, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* null, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* null, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (%struct.dh_st* (%struct.bio_st*, %struct.dh_st**, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_read_bio_DHparams to i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*), i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* null }, %struct.test_stanza_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0)], i32 920, i32 (i8*, i8**)* null, i32 (i8*, i8**)* null, i32 (i8*, i8**)* bitcast (i32 (%struct.dh_st*, i8**)* @i2d_DHxparams to i32 (i8*, i8**)*), i32 (i8*, i8**)* null, i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* null, i32 (%struct.bio_st*, i8*)* null, i32 (%struct.bio_st*, i8*)* bitcast (i32 (%struct.bio_st*, %struct.dh_st*)* @PEM_write_bio_DHxparams to i32 (%struct.bio_st*, i8*)*), i32 (%struct.bio_st*, i8*)* null, i8* (i8**, i8**, i64)* null, i8* (i8**, i8**, i64)* null, i8* (i8**, i8**, i64)* bitcast (%struct.dh_st* (%struct.dh_st**, i8**, i64)* @d2i_DHxparams to i8* (i8**, i8**, i64)*), i8* (i8**, i8**, i64)* null, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* null, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* null, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* null, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* null }, %struct.test_stanza_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0)], i32 116, i32 (i8*, i8**)* bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSAPrivateKey to i32 (i8*, i8**)*), i32 (i8*, i8**)* bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSAPublicKey to i32 (i8*, i8**)*), i32 (i8*, i8**)* bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSAparams to i32 (i8*, i8**)*), i32 (i8*, i8**)* bitcast (i32 (%struct.dsa_st*, i8**)* @i2d_DSA_PUBKEY to i32 (i8*, i8**)*), i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (i32 (%struct.bio_st*, %struct.dsa_st*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_write_bio_DSAPrivateKey to i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)*), i32 (%struct.bio_st*, i8*)* null, i32 (%struct.bio_st*, i8*)* bitcast (i32 (%struct.bio_st*, %struct.dsa_st*)* @PEM_write_bio_DSAparams to i32 (%struct.bio_st*, i8*)*), i32 (%struct.bio_st*, i8*)* bitcast (i32 (%struct.bio_st*, %struct.dsa_st*)* @PEM_write_bio_DSA_PUBKEY to i32 (%struct.bio_st*, i8*)*), i8* (i8**, i8**, i64)* bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSAPrivateKey to i8* (i8**, i8**, i64)*), i8* (i8**, i8**, i64)* bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSAPublicKey to i8* (i8**, i8**, i64)*), i8* (i8**, i8**, i64)* bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSAparams to i8* (i8**, i8**, i64)*), i8* (i8**, i8**, i64)* bitcast (%struct.dsa_st* (%struct.dsa_st**, i8**, i64)* @d2i_DSA_PUBKEY to i8* (i8**, i8**, i64)*), i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (%struct.dsa_st* (%struct.bio_st*, %struct.dsa_st**, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_read_bio_DSAPrivateKey to i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*), i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* null, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (%struct.dsa_st* (%struct.bio_st*, %struct.dsa_st**, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_read_bio_DSAparams to i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*), i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (%struct.dsa_st* (%struct.bio_st*, %struct.dsa_st**, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_read_bio_DSA_PUBKEY to i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*) }, %struct.test_stanza_st { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0)], i32 408, i32 (i8*, i8**)* bitcast (i32 (%struct.ec_key_st*, i8**)* @i2d_ECPrivateKey to i32 (i8*, i8**)*), i32 (i8*, i8**)* null, i32 (i8*, i8**)* bitcast (i32 (%struct.ec_key_st*, i8**)* @i2d_ECParameters to i32 (i8*, i8**)*), i32 (i8*, i8**)* bitcast (i32 (%struct.ec_key_st*, i8**)* @i2d_EC_PUBKEY to i32 (i8*, i8**)*), i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (i32 (%struct.bio_st*, %struct.ec_key_st*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_write_bio_ECPrivateKey to i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)*), i32 (%struct.bio_st*, i8*)* null, i32 (%struct.bio_st*, i8*)* null, i32 (%struct.bio_st*, i8*)* bitcast (i32 (%struct.bio_st*, %struct.ec_key_st*)* @PEM_write_bio_EC_PUBKEY to i32 (%struct.bio_st*, i8*)*), i8* (i8**, i8**, i64)* bitcast (%struct.ec_key_st* (%struct.ec_key_st**, i8**, i64)* @d2i_ECPrivateKey to i8* (i8**, i8**, i64)*), i8* (i8**, i8**, i64)* null, i8* (i8**, i8**, i64)* bitcast (%struct.ec_key_st* (%struct.ec_key_st**, i8**, i64)* @d2i_ECParameters to i8* (i8**, i8**, i64)*), i8* (i8**, i8**, i64)* bitcast (%struct.ec_key_st* (%struct.ec_key_st**, i8**, i64)* @d2i_EC_PUBKEY to i8* (i8**, i8**, i64)*), i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (%struct.ec_key_st* (%struct.bio_st*, %struct.ec_key_st**, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_read_bio_ECPrivateKey to i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*), i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* null, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* null, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (%struct.ec_key_st* (%struct.bio_st*, %struct.ec_key_st**, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_read_bio_EC_PUBKEY to i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*) }, %struct.test_stanza_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0)], i32 6, i32 (i8*, i8**)* bitcast (i32 (%struct.rsa_st*, i8**)* @i2d_RSAPrivateKey to i32 (i8*, i8**)*), i32 (i8*, i8**)* bitcast (i32 (%struct.rsa_st*, i8**)* @i2d_RSAPublicKey to i32 (i8*, i8**)*), i32 (i8*, i8**)* null, i32 (i8*, i8**)* bitcast (i32 (%struct.rsa_st*, i8**)* @i2d_RSA_PUBKEY to i32 (i8*, i8**)*), i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (i32 (%struct.bio_st*, %struct.rsa_st*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_write_bio_RSAPrivateKey to i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)*), i32 (%struct.bio_st*, i8*)* bitcast (i32 (%struct.bio_st*, %struct.rsa_st*)* @PEM_write_bio_RSAPublicKey to i32 (%struct.bio_st*, i8*)*), i32 (%struct.bio_st*, i8*)* null, i32 (%struct.bio_st*, i8*)* bitcast (i32 (%struct.bio_st*, %struct.rsa_st*)* @PEM_write_bio_RSA_PUBKEY to i32 (%struct.bio_st*, i8*)*), i8* (i8**, i8**, i64)* bitcast (%struct.rsa_st* (%struct.rsa_st**, i8**, i64)* @d2i_RSAPrivateKey to i8* (i8**, i8**, i64)*), i8* (i8**, i8**, i64)* bitcast (%struct.rsa_st* (%struct.rsa_st**, i8**, i64)* @d2i_RSAPublicKey to i8* (i8**, i8**, i64)*), i8* (i8**, i8**, i64)* null, i8* (i8**, i8**, i64)* bitcast (%struct.rsa_st* (%struct.rsa_st**, i8**, i64)* @d2i_RSA_PUBKEY to i8* (i8**, i8**, i64)*), i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (%struct.rsa_st* (%struct.bio_st*, %struct.rsa_st**, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_read_bio_RSAPrivateKey to i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*), i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (%struct.rsa_st* (%struct.bio_st*, %struct.rsa_st**, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_read_bio_RSAPublicKey to i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*), i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* null, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* bitcast (%struct.rsa_st* (%struct.bio_st*, %struct.rsa_st**, i32 (i8*, i32, i32, i8*)*, i8*)* @PEM_read_bio_RSA_PUBKEY to i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*) }], align 16
@.str.34 = private unnamed_addr constant [39 x i8] c"key = lookup_key(test_stanza->keytype)\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"pkey = key->key\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"evp_pkey_copy_downgraded(&downgraded_pkey, pkey)\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"downgraded_pkey\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"EVP_PKEY_get_id(downgraded_pkey)\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"key->evp_type\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"legacy_obj = EVP_PKEY_get0(downgraded_pkey)\00", align 1
@.str.41 = private unnamed_addr constant [68 x i8] c"Test OSSL_ENCODER against PEM_write_bio_{TYPE}PrivateKey for %s, %s\00", align 1
@.str.42 = private unnamed_addr constant [67 x i8] c"Test OSSL_ENCODER against PEM_write_bio_{TYPE}PublicKey for %s, %s\00", align 1
@.str.43 = private unnamed_addr constant [64 x i8] c"Test OSSL_ENCODER against PEM_write_bio_{TYPE}params for %s, %s\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"SubjectPublicKeyInfo\00", align 1
@.str.45 = private unnamed_addr constant [65 x i8] c"Test OSSL_ENCODER against PEM_write_bio_{TYPE}_PUBKEY for %s, %s\00", align 1
@.str.46 = private unnamed_addr constant [58 x i8] c"Test OSSL_ENCODER against i2d_{TYPE}PrivateKey for %s, %s\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"Test OSSL_ENCODER against i2d_{TYPE}PublicKey for %s, %s\00", align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"Test OSSL_ENCODER against i2d_{TYPE}params for %s, %s\00", align 1
@.str.49 = private unnamed_addr constant [55 x i8] c"Test OSSL_ENCODER against i2d_{TYPE}_PUBKEY for %s, %s\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"type-specific\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"membio_legacy = BIO_new(BIO_s_mem())\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"membio_provided = BIO_new(BIO_s_mem())\00", align 1
@.str.53 = private unnamed_addr constant [87 x i8] c"ectx = OSSL_ENCODER_CTX_new_for_pkey(provided_pkey, selection, \22PEM\22, structure, NULL)\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"OSSL_ENCODER_to_bio(ectx, membio_provided)\00", align 1
@.str.56 = private unnamed_addr constant [68 x i8] c"pem_write_bio(membio_legacy, legacy_key, NULL, NULL, 0, NULL, NULL)\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"decoded_legacy_pkey = EVP_PKEY_new()\00", align 1
@.str.58 = private unnamed_addr constant [111 x i8] c"dctx = OSSL_DECODER_CTX_new_for_pkey(&decoded_provided_pkey, \22PEM\22, structure, keytype, selection, NULL, NULL)\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"OSSL_DECODER_from_bio(dctx, membio_provided)\00", align 1
@.str.60 = private unnamed_addr constant [67 x i8] c"decoded_legacy_key = pem_read_bio(membio_legacy, NULL, NULL, NULL)\00", align 1
@.str.61 = private unnamed_addr constant [67 x i8] c"EVP_PKEY_assign(decoded_legacy_pkey, evp_type, decoded_legacy_key)\00", align 1
@.str.62 = private unnamed_addr constant [56 x i8] c"evp_pkey_eq(decoded_provided_pkey, decoded_legacy_pkey)\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"decoded_provided_pkey:\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.65 = private unnamed_addr constant [21 x i8] c"decoded_legacy_pkey:\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"len_legacy\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"len_provided\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"str_provided\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"str_legacy\00", align 1
@.str.70 = private unnamed_addr constant [41 x i8] c"pem_write_bio(membio_legacy, legacy_key)\00", align 1
@.str.71 = private unnamed_addr constant [87 x i8] c"ectx = OSSL_ENCODER_CTX_new_for_pkey(provided_pkey, selection, \22DER\22, structure, NULL)\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.73 = private unnamed_addr constant [61 x i8] c"OSSL_ENCODER_to_data(ectx, &der_provided, &der_provided_len)\00", align 1
@.str.74 = private unnamed_addr constant [46 x i8] c"der_legacy_len = i2d(legacy_key, &der_legacy)\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"der_provided\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"der_legacy\00", align 1
@.str.77 = private unnamed_addr constant [111 x i8] c"dctx = OSSL_DECODER_CTX_new_for_pkey(&decoded_provided_pkey, \22DER\22, structure, keytype, selection, NULL, NULL)\00", align 1
@.str.78 = private unnamed_addr constant [117 x i8] c"(pder_provided = der_provided, tmp_size = der_provided_len, OSSL_DECODER_from_data(dctx, &pder_provided, &tmp_size))\00", align 1
@.str.79 = private unnamed_addr constant [95 x i8] c"(pder_legacy = der_legacy, decoded_legacy_key = d2i(NULL, &pder_legacy, (long)der_legacy_len))\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([9 x %struct.options_st], [9 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test_skip_common_options() #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 686, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @test_get_argument_count() #6
  %cmp.not = icmp eq i64 %call1, 2
  br i1 %cmp.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 690, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 694, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0)) #6
  br label %for.body

for.body:                                         ; preds = %if.end3, %for.inc
  %i.052 = phi i64 [ 0, %if.end3 ], [ %inc, %for.inc ]
  %keytype = getelementptr inbounds [5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 %i.052, i32 0
  %0 = load i8*, i8** %keytype, align 16, !tbaa !3
  %call5 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #7
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end15

if.then7:                                         ; preds = %for.body
  %call8 = tail call i8* @test_get_argument(i64 noundef 1) #6
  %call9 = tail call %struct.evp_pkey_st* @load_pkey_pem(i8* noundef %call8, %struct.ossl_lib_ctx_st* noundef null) #6
  %key = getelementptr inbounds [5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 %i.052, i32 3
  store %struct.evp_pkey_st* %call9, %struct.evp_pkey_st** %key, align 8, !tbaa !9
  %1 = bitcast %struct.evp_pkey_st* %call9 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 700, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %for.inc

if.end15:                                         ; preds = %for.body
  %call18 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end29

if.then20:                                        ; preds = %if.end15
  %call21 = tail call i8* @test_get_argument(i64 noundef 0) #6
  %call22 = tail call %struct.evp_pkey_st* @load_pkey_pem(i8* noundef %call21, %struct.ossl_lib_ctx_st* noundef null) #6
  %key24 = getelementptr inbounds [5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 %i.052, i32 3
  store %struct.evp_pkey_st* %call22, %struct.evp_pkey_st** %key24, align 8, !tbaa !9
  %2 = bitcast %struct.evp_pkey_st* %call22 to i8*
  %call25 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 708, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i64 0, i64 0), i8* noundef %2) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup, label %for.inc

if.end29:                                         ; preds = %if.end15
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 713, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* noundef %0) #6
  %3 = load i8*, i8** %keytype, align 16, !tbaa !3
  %template_params = getelementptr inbounds [5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 %i.052, i32 2
  %4 = load %struct.ossl_param_st*, %struct.ossl_param_st** %template_params, align 16, !tbaa !10
  %call35 = tail call fastcc %struct.evp_pkey_st* @make_key(i8* noundef %3, %struct.ossl_param_st* noundef %4) #8
  %key37 = getelementptr inbounds [5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 %i.052, i32 3
  store %struct.evp_pkey_st* %call35, %struct.evp_pkey_st** %key37, align 8, !tbaa !9
  %5 = bitcast %struct.evp_pkey_st* %call35 to i8*
  %call38 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 715, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i64 0, i64 0), i8* noundef %5) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %cleanup, label %for.inc

for.inc:                                          ; preds = %if.end29, %if.then20, %if.then7
  %inc = add nuw nsw i64 %i.052, 1
  %exitcond.not = icmp eq i64 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.inc
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 719, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0)) #6
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 (i32)* noundef nonnull @test_key, i32 noundef 5, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then20, %if.then7, %for.end, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %for.end ], [ 0, %if.then ], [ 0, %if.then7 ], [ 0, %if.then20 ], [ 0, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i64 @test_get_argument_count() local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #4

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @load_pkey_pem(i8* noundef, %struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @make_key(i8* noundef %type, %struct.ossl_param_st* noundef %gen_template_params) unnamed_addr #1 {
entry:
  %template = alloca %struct.evp_pkey_st*, align 8
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %template to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %template, align 8, !tbaa !13
  %1 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !13
  %cmp.not = icmp eq %struct.ossl_param_st* %gen_template_params, null
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %type, i8* noundef null) #6
  %cmp1 = icmp eq %struct.evp_pkey_ctx_st* %call, null
  br i1 %cmp1, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef nonnull %call) #6
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %gen_template_params, i64 0, i32 0
  %2 = load i8*, i8** %key, align 8, !tbaa !14
  %cmp5.not = icmp eq i8* %2, null
  br i1 %cmp5.not, label %lor.lhs.false9, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %lor.lhs.false4
  %call7 = tail call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.ossl_param_st* noundef nonnull %gen_template_params) #6
  %cmp8 = icmp slt i32 %call7, 1
  br i1 %cmp8, label %end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true6, %lor.lhs.false4
  %call10 = call i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef nonnull %call, %struct.evp_pkey_st** noundef nonnull %template) #6
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false9, %entry
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call, %lor.lhs.false9 ], [ null, %entry ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #6
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %template, align 8, !tbaa !13
  %cmp12.not = icmp eq %struct.evp_pkey_st* %3, null
  br i1 %cmp12.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %call13 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef nonnull %3, %struct.engine_st* noundef null) #6
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call14 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %type, i8* noundef null) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.evp_pkey_ctx_st* [ %call13, %cond.true ], [ %call14, %cond.false ]
  %cmp15.not = icmp eq %struct.evp_pkey_ctx_st* %cond, null
  br i1 %cmp15.not, label %end, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %cond.end
  %call17 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef nonnull %cond) #6
  %cmp18 = icmp sgt i32 %call17, 0
  br i1 %cmp18, label %land.rhs, label %end

land.rhs:                                         ; preds = %land.lhs.true16
  %call19 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef nonnull %cond, %struct.evp_pkey_st** noundef nonnull %pkey) #6
  br label %end

end:                                              ; preds = %cond.end, %land.lhs.true16, %land.rhs, %land.lhs.true, %lor.lhs.false, %land.lhs.true6, %lor.lhs.false9
  %ctx.1 = phi %struct.evp_pkey_ctx_st* [ null, %land.lhs.true ], [ %call, %lor.lhs.false ], [ %call, %land.lhs.true6 ], [ %call, %lor.lhs.false9 ], [ %cond, %land.rhs ], [ %cond, %land.lhs.true16 ], [ null, %cond.end ]
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %template, align 8, !tbaa !13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %4) #6
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.1) #6
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret %struct.evp_pkey_st* %5
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_key(i32 noundef %idx) #1 {
entry:
  %downgraded_pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %downgraded_pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %downgraded_pkey, align 8, !tbaa !13
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom
  %1 = bitcast %struct.test_stanza_st* %arrayidx to i8*
  %call = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 514, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0), i8* noundef nonnull %1) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %keytype = getelementptr inbounds %struct.test_stanza_st, %struct.test_stanza_st* %arrayidx, i64 0, i32 0
  %2 = load i8*, i8** %keytype, align 16, !tbaa !17
  %call1 = tail call fastcc %struct.key_st* @lookup_key(i8* noundef %2) #8
  %3 = bitcast %struct.key_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 515, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0), i8* noundef %3) #6
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %key4 = getelementptr inbounds %struct.key_st, %struct.key_st* %call1, i64 0, i32 3
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key4, align 8, !tbaa !9
  %5 = bitcast %struct.evp_pkey_st* %4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 519, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8* noundef %5) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %end, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %call8 = call i32 @evp_pkey_copy_downgraded(%struct.evp_pkey_st** noundef nonnull %downgraded_pkey, %struct.evp_pkey_st* noundef %4) #6
  %cmp = icmp ne i32 %call8, 0
  %conv = zext i1 %cmp to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 520, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %end, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %6 = bitcast %struct.evp_pkey_st** %downgraded_pkey to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !13
  %call12 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 521, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0), i8* noundef %7) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %downgraded_pkey, align 8, !tbaa !13
  %call15 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %8) #6
  %evp_type = getelementptr inbounds %struct.key_st, %struct.key_st* %call1, i64 0, i32 1
  %9 = load i32, i32* %evp_type, align 8, !tbaa !19
  %call16 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 522, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i32 noundef %call15, i32 noundef %9) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %downgraded_pkey, align 8, !tbaa !13
  %call19 = call i8* @EVP_PKEY_get0(%struct.evp_pkey_st* noundef %10) #6
  %call20 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 523, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i64 0, i64 0), i8* noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %end, label %if.end23

if.end23:                                         ; preds = %lor.lhs.false18
  %pem_write_bio_PrivateKey = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 7
  %11 = load i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)*, i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)** %pem_write_bio_PrivateKey, align 16, !tbaa !20
  %cmp24.not = icmp eq i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* %11, null
  br i1 %cmp24.not, label %if.end39, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end23
  %keytype32 = getelementptr inbounds %struct.key_st, %struct.key_st* %call1, i64 0, i32 0
  %pem_read_bio_PrivateKey = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 15
  %arrayidx30 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 0
  %12 = load i8*, i8** %arrayidx30, align 8, !tbaa !13
  %13 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 536, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.41, i64 0, i64 0), i8* noundef %13, i8* noundef %12) #6
  %14 = load i8*, i8** %keytype32, align 8, !tbaa !3
  %15 = load i32, i32* %evp_type, align 8, !tbaa !19
  %16 = load i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)*, i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)** %pem_write_bio_PrivateKey, align 16, !tbaa !20
  %17 = load i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)** %pem_read_bio_PrivateKey, align 16, !tbaa !21
  %call35 = call fastcc i32 @test_protected_PEM(i8* noundef %14, i32 noundef %15, i8* noundef %call19, i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* noundef %16, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* noundef %17, %struct.evp_pkey_st* noundef %4, i8* noundef %12) #8
  %tobool36.not = icmp ne i32 %call35, 0
  %arrayidx30.1 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 1
  %18 = load i8*, i8** %arrayidx30.1, align 16, !tbaa !13
  %19 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 536, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.41, i64 0, i64 0), i8* noundef %19, i8* noundef %18) #6
  %20 = load i8*, i8** %keytype32, align 8, !tbaa !3
  %21 = load i32, i32* %evp_type, align 8, !tbaa !19
  %22 = load i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)*, i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)** %pem_write_bio_PrivateKey, align 16, !tbaa !20
  %23 = load i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)** %pem_read_bio_PrivateKey, align 16, !tbaa !21
  %call35.1 = call fastcc i32 @test_protected_PEM(i8* noundef %20, i32 noundef %21, i8* noundef %call19, i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* noundef %22, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* noundef %23, %struct.evp_pkey_st* noundef %4, i8* noundef %18) #8
  %tobool36.not.1 = icmp ne i32 %call35.1, 0
  %narrow = select i1 %tobool36.not.1, i1 %tobool36.not, i1 false
  %spec.select.1 = zext i1 %narrow to i32
  br label %if.end39

if.end39:                                         ; preds = %for.cond.preheader, %if.end23
  %ok.2 = phi i32 [ 1, %if.end23 ], [ %spec.select.1, %for.cond.preheader ]
  %pem_write_bio_PublicKey = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 8
  %24 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %pem_write_bio_PublicKey, align 8, !tbaa !22
  %cmp40.not = icmp eq i32 (%struct.bio_st*, i8*)* %24, null
  br i1 %cmp40.not, label %if.end62, label %for.cond44.preheader

for.cond44.preheader:                             ; preds = %if.end39
  %keytype52 = getelementptr inbounds %struct.key_st, %struct.key_st* %call1, i64 0, i32 0
  %pem_read_bio_PublicKey = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 16
  %arrayidx50 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 0
  %25 = load i8*, i8** %arrayidx50, align 8, !tbaa !13
  %26 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 556, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.42, i64 0, i64 0), i8* noundef %26, i8* noundef %25) #6
  %27 = load i8*, i8** %keytype52, align 8, !tbaa !3
  %28 = load i32, i32* %evp_type, align 8, !tbaa !19
  %29 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %pem_write_bio_PublicKey, align 8, !tbaa !22
  %30 = load i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)** %pem_read_bio_PublicKey, align 8, !tbaa !23
  %call55 = call fastcc i32 @test_unprotected_PEM(i8* noundef %27, i32 noundef %28, i8* noundef %call19, i32 (%struct.bio_st*, i8*)* noundef %29, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* noundef %30, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_public, %struct.evp_pkey_st* noundef %4, i32 noundef 134, i8* noundef %25) #8
  %tobool56.not = icmp eq i32 %call55, 0
  %arrayidx50.1 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 1
  %31 = load i8*, i8** %arrayidx50.1, align 16, !tbaa !13
  %32 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 556, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.42, i64 0, i64 0), i8* noundef %32, i8* noundef %31) #6
  %33 = load i8*, i8** %keytype52, align 8, !tbaa !3
  %34 = load i32, i32* %evp_type, align 8, !tbaa !19
  %35 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %pem_write_bio_PublicKey, align 8, !tbaa !22
  %36 = load i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)** %pem_read_bio_PublicKey, align 8, !tbaa !23
  %call55.1 = call fastcc i32 @test_unprotected_PEM(i8* noundef %33, i32 noundef %34, i8* noundef %call19, i32 (%struct.bio_st*, i8*)* noundef %35, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* noundef %36, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_public, %struct.evp_pkey_st* noundef %4, i32 noundef 134, i8* noundef %31) #8
  %tobool56.not.1 = icmp eq i32 %call55.1, 0
  %37 = select i1 %tobool56.not.1, i1 true, i1 %tobool56.not
  %spec.select300.1 = select i1 %37, i32 0, i32 %ok.2
  br label %if.end62

if.end62:                                         ; preds = %for.cond44.preheader, %if.end39
  %ok.5 = phi i32 [ %ok.2, %if.end39 ], [ %spec.select300.1, %for.cond44.preheader ]
  %pem_write_bio_params = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 9
  %38 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %pem_write_bio_params, align 16, !tbaa !24
  %cmp63.not = icmp eq i32 (%struct.bio_st*, i8*)* %38, null
  br i1 %cmp63.not, label %if.end85, label %for.cond67.preheader

for.cond67.preheader:                             ; preds = %if.end62
  %keytype75 = getelementptr inbounds %struct.key_st, %struct.key_st* %call1, i64 0, i32 0
  %pem_read_bio_params = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 17
  %arrayidx73 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 0
  %39 = load i8*, i8** %arrayidx73, align 8, !tbaa !13
  %40 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 574, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.43, i64 0, i64 0), i8* noundef %40, i8* noundef %39) #6
  %41 = load i8*, i8** %keytype75, align 8, !tbaa !3
  %42 = load i32, i32* %evp_type, align 8, !tbaa !19
  %43 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %pem_write_bio_params, align 16, !tbaa !24
  %44 = load i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)** %pem_read_bio_params, align 16, !tbaa !25
  %call78 = call fastcc i32 @test_unprotected_PEM(i8* noundef %41, i32 noundef %42, i8* noundef %call19, i32 (%struct.bio_st*, i8*)* noundef %43, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* noundef %44, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_parameters_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_params, %struct.evp_pkey_st* noundef %4, i32 noundef 132, i8* noundef %39) #8
  %tobool79.not = icmp eq i32 %call78, 0
  %arrayidx73.1 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 1
  %45 = load i8*, i8** %arrayidx73.1, align 16, !tbaa !13
  %46 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 574, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.43, i64 0, i64 0), i8* noundef %46, i8* noundef %45) #6
  %47 = load i8*, i8** %keytype75, align 8, !tbaa !3
  %48 = load i32, i32* %evp_type, align 8, !tbaa !19
  %49 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %pem_write_bio_params, align 16, !tbaa !24
  %50 = load i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)** %pem_read_bio_params, align 16, !tbaa !25
  %call78.1 = call fastcc i32 @test_unprotected_PEM(i8* noundef %47, i32 noundef %48, i8* noundef %call19, i32 (%struct.bio_st*, i8*)* noundef %49, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* noundef %50, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_parameters_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_params, %struct.evp_pkey_st* noundef %4, i32 noundef 132, i8* noundef %45) #8
  %tobool79.not.1 = icmp eq i32 %call78.1, 0
  %51 = select i1 %tobool79.not.1, i1 true, i1 %tobool79.not
  %spec.select301.1 = select i1 %51, i32 0, i32 %ok.5
  br label %if.end85

if.end85:                                         ; preds = %for.cond67.preheader, %if.end62
  %ok.8 = phi i32 [ %ok.5, %if.end62 ], [ %spec.select301.1, %for.cond67.preheader ]
  %pem_write_bio_PUBKEY = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 10
  %52 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %pem_write_bio_PUBKEY, align 8, !tbaa !26
  %cmp86.not = icmp eq i32 (%struct.bio_st*, i8*)* %52, null
  br i1 %cmp86.not, label %if.end99, label %if.then88

if.then88:                                        ; preds = %if.end85
  %53 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 593, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.45, i64 0, i64 0), i8* noundef %53, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0)) #6
  %keytype92 = getelementptr inbounds %struct.key_st, %struct.key_st* %call1, i64 0, i32 0
  %54 = load i8*, i8** %keytype92, align 8, !tbaa !3
  %55 = load i32, i32* %evp_type, align 8, !tbaa !19
  %56 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %pem_write_bio_PUBKEY, align 8, !tbaa !26
  %pem_read_bio_PUBKEY = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 18
  %57 = load i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)*, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)** %pem_read_bio_PUBKEY, align 8, !tbaa !27
  %call95 = call fastcc i32 @test_unprotected_PEM(i8* noundef %54, i32 noundef %55, i8* noundef %call19, i32 (%struct.bio_st*, i8*)* noundef %56, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* noundef %57, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_public, %struct.evp_pkey_st* noundef %4, i32 noundef 134, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0)) #8
  %tobool96.not = icmp eq i32 %call95, 0
  %spec.select302 = select i1 %tobool96.not, i32 0, i32 %ok.8
  br label %if.end99

if.end99:                                         ; preds = %if.then88, %if.end85
  %ok.10 = phi i32 [ %spec.select302, %if.then88 ], [ %ok.8, %if.end85 ]
  %i2d_PrivateKey = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 3
  %58 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d_PrivateKey, align 16, !tbaa !28
  %cmp100.not = icmp eq i32 (i8*, i8**)* %58, null
  br i1 %cmp100.not, label %if.end122, label %for.cond104.preheader

for.cond104.preheader:                            ; preds = %if.end99
  %keytype112 = getelementptr inbounds %struct.key_st, %struct.key_st* %call1, i64 0, i32 0
  %d2i_PrivateKey = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 11
  %arrayidx110 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 0
  %59 = load i8*, i8** %arrayidx110, align 8, !tbaa !13
  %60 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 611, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.46, i64 0, i64 0), i8* noundef %60, i8* noundef %59) #6
  %61 = load i8*, i8** %keytype112, align 8, !tbaa !3
  %62 = load i32, i32* %evp_type, align 8, !tbaa !19
  %63 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d_PrivateKey, align 16, !tbaa !28
  %64 = load i8* (i8**, i8**, i64)*, i8* (i8**, i8**, i64)** %d2i_PrivateKey, align 16, !tbaa !29
  %call115 = call fastcc i32 @test_DER(i8* noundef %61, i32 noundef %62, i8* noundef %call19, i32 (i8*, i8**)* noundef %63, i8* (i8**, i8**, i64)* noundef %64, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_private, %struct.evp_pkey_st* noundef %4, i32 noundef 135, i8* noundef %59) #8
  %tobool116.not = icmp eq i32 %call115, 0
  %arrayidx110.1 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 1
  %65 = load i8*, i8** %arrayidx110.1, align 16, !tbaa !13
  %66 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 611, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.46, i64 0, i64 0), i8* noundef %66, i8* noundef %65) #6
  %67 = load i8*, i8** %keytype112, align 8, !tbaa !3
  %68 = load i32, i32* %evp_type, align 8, !tbaa !19
  %69 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d_PrivateKey, align 16, !tbaa !28
  %70 = load i8* (i8**, i8**, i64)*, i8* (i8**, i8**, i64)** %d2i_PrivateKey, align 16, !tbaa !29
  %call115.1 = call fastcc i32 @test_DER(i8* noundef %67, i32 noundef %68, i8* noundef %call19, i32 (i8*, i8**)* noundef %69, i8* (i8**, i8**, i64)* noundef %70, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_private, %struct.evp_pkey_st* noundef %4, i32 noundef 135, i8* noundef %65) #8
  %tobool116.not.1 = icmp eq i32 %call115.1, 0
  %71 = select i1 %tobool116.not.1, i1 true, i1 %tobool116.not
  %spec.select303.1 = select i1 %71, i32 0, i32 %ok.10
  br label %if.end122

if.end122:                                        ; preds = %for.cond104.preheader, %if.end99
  %ok.13 = phi i32 [ %ok.10, %if.end99 ], [ %spec.select303.1, %for.cond104.preheader ]
  %i2d_PublicKey = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 4
  %72 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d_PublicKey, align 8, !tbaa !30
  %cmp123.not = icmp eq i32 (i8*, i8**)* %72, null
  br i1 %cmp123.not, label %if.end145, label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %if.end122
  %keytype135 = getelementptr inbounds %struct.key_st, %struct.key_st* %call1, i64 0, i32 0
  %d2i_PublicKey = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 12
  %arrayidx133 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 0
  %73 = load i8*, i8** %arrayidx133, align 8, !tbaa !13
  %74 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 631, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.47, i64 0, i64 0), i8* noundef %74, i8* noundef %73) #6
  %75 = load i8*, i8** %keytype135, align 8, !tbaa !3
  %76 = load i32, i32* %evp_type, align 8, !tbaa !19
  %77 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d_PublicKey, align 8, !tbaa !30
  %78 = load i8* (i8**, i8**, i64)*, i8* (i8**, i8**, i64)** %d2i_PublicKey, align 8, !tbaa !31
  %call138 = call fastcc i32 @test_DER(i8* noundef %75, i32 noundef %76, i8* noundef %call19, i32 (i8*, i8**)* noundef %77, i8* (i8**, i8**, i64)* noundef %78, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_public, %struct.evp_pkey_st* noundef %4, i32 noundef 134, i8* noundef %73) #8
  %tobool139.not = icmp eq i32 %call138, 0
  %arrayidx133.1 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 1
  %79 = load i8*, i8** %arrayidx133.1, align 16, !tbaa !13
  %80 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 631, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.47, i64 0, i64 0), i8* noundef %80, i8* noundef %79) #6
  %81 = load i8*, i8** %keytype135, align 8, !tbaa !3
  %82 = load i32, i32* %evp_type, align 8, !tbaa !19
  %83 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d_PublicKey, align 8, !tbaa !30
  %84 = load i8* (i8**, i8**, i64)*, i8* (i8**, i8**, i64)** %d2i_PublicKey, align 8, !tbaa !31
  %call138.1 = call fastcc i32 @test_DER(i8* noundef %81, i32 noundef %82, i8* noundef %call19, i32 (i8*, i8**)* noundef %83, i8* (i8**, i8**, i64)* noundef %84, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_public, %struct.evp_pkey_st* noundef %4, i32 noundef 134, i8* noundef %79) #8
  %tobool139.not.1 = icmp eq i32 %call138.1, 0
  %85 = select i1 %tobool139.not.1, i1 true, i1 %tobool139.not
  %spec.select304.1 = select i1 %85, i32 0, i32 %ok.13
  br label %if.end145

if.end145:                                        ; preds = %for.cond127.preheader, %if.end122
  %ok.16 = phi i32 [ %ok.13, %if.end122 ], [ %spec.select304.1, %for.cond127.preheader ]
  %i2d_params = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 5
  %86 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d_params, align 16, !tbaa !32
  %cmp146.not = icmp eq i32 (i8*, i8**)* %86, null
  br i1 %cmp146.not, label %if.end168, label %for.cond150.preheader

for.cond150.preheader:                            ; preds = %if.end145
  %keytype158 = getelementptr inbounds %struct.key_st, %struct.key_st* %call1, i64 0, i32 0
  %d2i_params = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 13
  %arrayidx156 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 0
  %87 = load i8*, i8** %arrayidx156, align 8, !tbaa !13
  %88 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 649, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.48, i64 0, i64 0), i8* noundef %88, i8* noundef %87) #6
  %89 = load i8*, i8** %keytype158, align 8, !tbaa !3
  %90 = load i32, i32* %evp_type, align 8, !tbaa !19
  %91 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d_params, align 16, !tbaa !32
  %92 = load i8* (i8**, i8**, i64)*, i8* (i8**, i8**, i64)** %d2i_params, align 16, !tbaa !33
  %call161 = call fastcc i32 @test_DER(i8* noundef %89, i32 noundef %90, i8* noundef %call19, i32 (i8*, i8**)* noundef %91, i8* (i8**, i8**, i64)* noundef %92, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_parameters_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_params, %struct.evp_pkey_st* noundef %4, i32 noundef 132, i8* noundef %87) #8
  %tobool162.not = icmp eq i32 %call161, 0
  %arrayidx156.1 = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 1, i64 1
  %93 = load i8*, i8** %arrayidx156.1, align 16, !tbaa !13
  %94 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 649, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.48, i64 0, i64 0), i8* noundef %94, i8* noundef %93) #6
  %95 = load i8*, i8** %keytype158, align 8, !tbaa !3
  %96 = load i32, i32* %evp_type, align 8, !tbaa !19
  %97 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d_params, align 16, !tbaa !32
  %98 = load i8* (i8**, i8**, i64)*, i8* (i8**, i8**, i64)** %d2i_params, align 16, !tbaa !33
  %call161.1 = call fastcc i32 @test_DER(i8* noundef %95, i32 noundef %96, i8* noundef %call19, i32 (i8*, i8**)* noundef %97, i8* (i8**, i8**, i64)* noundef %98, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_parameters_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_params, %struct.evp_pkey_st* noundef %4, i32 noundef 132, i8* noundef %93) #8
  %tobool162.not.1 = icmp eq i32 %call161.1, 0
  %99 = select i1 %tobool162.not.1, i1 true, i1 %tobool162.not
  %spec.select305.1 = select i1 %99, i32 0, i32 %ok.16
  br label %if.end168

if.end168:                                        ; preds = %for.cond150.preheader, %if.end145
  %ok.19 = phi i32 [ %ok.16, %if.end145 ], [ %spec.select305.1, %for.cond150.preheader ]
  %i2d_PUBKEY = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 6
  %100 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d_PUBKEY, align 8, !tbaa !34
  %cmp169.not = icmp eq i32 (i8*, i8**)* %100, null
  br i1 %cmp169.not, label %end, label %if.then171

if.then171:                                       ; preds = %if.end168
  %101 = load i8*, i8** %keytype, align 16, !tbaa !17
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 666, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.49, i64 0, i64 0), i8* noundef %101, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0)) #6
  %keytype175 = getelementptr inbounds %struct.key_st, %struct.key_st* %call1, i64 0, i32 0
  %102 = load i8*, i8** %keytype175, align 8, !tbaa !3
  %103 = load i32, i32* %evp_type, align 8, !tbaa !19
  %104 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d_PUBKEY, align 8, !tbaa !34
  %d2i_PUBKEY = getelementptr inbounds [5 x %struct.test_stanza_st], [5 x %struct.test_stanza_st]* @test_stanzas, i64 0, i64 %idxprom, i32 14
  %105 = load i8* (i8**, i8**, i64)*, i8* (i8**, i8**, i64)** %d2i_PUBKEY, align 8, !tbaa !35
  %call178 = call fastcc i32 @test_DER(i8* noundef %102, i32 noundef %103, i8* noundef %call19, i32 (i8*, i8**)* noundef %104, i8* (i8**, i8**, i64)* noundef %105, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* noundef nonnull @EVP_PKEY_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* noundef nonnull @EVP_PKEY_print_public, %struct.evp_pkey_st* noundef %4, i32 noundef 134, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.44, i64 0, i64 0)) #8
  %tobool179.not = icmp eq i32 %call178, 0
  %spec.select306 = select i1 %tobool179.not, i32 0, i32 %ok.19
  br label %end

end:                                              ; preds = %if.end168, %if.then171, %if.end, %lor.lhs.false7, %lor.lhs.false11, %lor.lhs.false14, %lor.lhs.false18, %entry, %lor.lhs.false
  %ok.21 = phi i32 [ %spec.select306, %if.then171 ], [ %ok.19, %if.end168 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false7 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %106 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %downgraded_pkey, align 8, !tbaa !13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %106) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ok.21
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 0, i32 3), align 8, !tbaa !9
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %0) #6
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 1, i32 3), align 8, !tbaa !9
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %1) #6
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 2, i32 3), align 8, !tbaa !9
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %2) #6
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 3, i32 3), align 8, !tbaa !9
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %3) #6
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 4, i32 3), align 8, !tbaa !9
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %4) #6
  ret void
}

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_generate(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal fastcc %struct.key_st* @lookup_key(i8* noundef readonly %type) unnamed_addr #5 {
entry:
  %0 = load i8*, i8** getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 0, i32 0), align 16, !tbaa !3
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef %type) #7
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %cleanup, label %for.cond

for.cond:                                         ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 1, i32 0), align 16, !tbaa !3
  %call.1 = tail call i32 @strcmp(i8* noundef %1, i8* noundef %type) #7
  %cmp1.1 = icmp eq i32 %call.1, 0
  br i1 %cmp1.1, label %cleanup, label %for.cond.1

for.cond.1:                                       ; preds = %for.cond
  %2 = load i8*, i8** getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 2, i32 0), align 16, !tbaa !3
  %call.2 = tail call i32 @strcmp(i8* noundef %2, i8* noundef %type) #7
  %cmp1.2 = icmp eq i32 %call.2, 0
  br i1 %cmp1.2, label %cleanup, label %for.cond.2

for.cond.2:                                       ; preds = %for.cond.1
  %3 = load i8*, i8** getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 3, i32 0), align 16, !tbaa !3
  %call.3 = tail call i32 @strcmp(i8* noundef %3, i8* noundef %type) #7
  %cmp1.3 = icmp eq i32 %call.3, 0
  br i1 %cmp1.3, label %cleanup, label %for.cond.3

for.cond.3:                                       ; preds = %for.cond.2
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 4, i32 0), align 16, !tbaa !3
  %call.4 = tail call i32 @strcmp(i8* noundef %4, i8* noundef %type) #7
  %cmp1.4 = icmp eq i32 %call.4, 0
  %spec.select = select i1 %cmp1.4, %struct.key_st* getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 4), %struct.key_st* null
  br label %cleanup

cleanup:                                          ; preds = %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %entry
  %retval.0 = phi %struct.key_st* [ getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 0), %entry ], [ getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 1), %for.cond ], [ getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 2), %for.cond.1 ], [ getelementptr inbounds ([5 x %struct.key_st], [5 x %struct.key_st]* @keys, i64 0, i64 3), %for.cond.2 ], [ %spec.select, %for.cond.3 ]
  ret %struct.key_st* %retval.0
}

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @evp_pkey_copy_downgraded(%struct.evp_pkey_st** noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i8* @EVP_PKEY_get0(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_protected_PEM(i8* noundef %keytype, i32 noundef %evp_type, i8* noundef %legacy_key, i32 (%struct.bio_st*, i8*, %struct.evp_cipher_st*, i8*, i32, i32 (i8*, i32, i32, i8*)*, i8*)* nocapture noundef readonly %pem_write_bio, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* noundef readonly %pem_read_bio, %struct.evp_pkey_st* noundef %provided_pkey, i8* noundef %structure) unnamed_addr #1 {
entry:
  %decoded_provided_pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %decoded_provided_pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #6
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call4 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call3) #6
  %2 = bitcast %struct.bio_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i8* noundef %2) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call7 = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %provided_pkey, i32 noundef 135, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* noundef %structure, i8* noundef null) #6
  %3 = bitcast %struct.ossl_encoder_ctx_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.53, i64 0, i64 0), i8* noundef %3) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %call11 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call7, %struct.bio_st* noundef %call4) #6
  %cmp = icmp ne i32 %call11, 0
  %conv = zext i1 %cmp to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call i32 %pem_write_bio(%struct.bio_st* noundef %call1, i8* noundef %legacy_key, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 327, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv17) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %end, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %call21 = tail call fastcc i32 @test_membio_str_eq(%struct.bio_st* noundef %call4, %struct.bio_st* noundef %call1) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %end, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false20
  %cmp25.not = icmp eq i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* %pem_read_bio, null
  br i1 %cmp25.not, label %end, label %if.then27

if.then27:                                        ; preds = %if.end24
  %call28 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #6
  %4 = bitcast %struct.evp_pkey_st* %call28 to i8*
  %call29 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i8* noundef %4) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %end, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.then27
  %call32 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %decoded_provided_pkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* noundef %structure, i8* noundef %keytype, i32 noundef 135, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  %5 = bitcast %struct.ossl_decoder_ctx_st* %call32 to i8*
  %call33 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([111 x i8], [111 x i8]* @.str.58, i64 0, i64 0), i8* noundef %5) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %end, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %call36 = call i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef %call32, %struct.bio_st* noundef %call4) #6
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv38) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %end, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false35
  %call42 = call i8* %pem_read_bio(%struct.bio_st* noundef %call1, i8** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  %call43 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.60, i64 0, i64 0), i8* noundef %call42) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %end, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %call46 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call28, i32 noundef %evp_type, i8* noundef %call42) #6
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv48) #6
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %end, label %if.end52

if.end52:                                         ; preds = %lor.lhs.false45
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  %call53 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %6, %struct.evp_pkey_st* noundef %call28) #6
  %call54 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i32 noundef %call53, i32 noundef 0) #6
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %end

if.then56:                                        ; preds = %if.end52
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0)) #6
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !13
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  %call57 = call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef %7, %struct.evp_pkey_st* noundef %8, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #6
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i64 0, i64 0)) #6
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !13
  %call58 = call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef %9, %struct.evp_pkey_st* noundef %call28, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #6
  br label %end

end:                                              ; preds = %if.end24, %if.then56, %if.end52, %if.then27, %lor.lhs.false31, %lor.lhs.false35, %lor.lhs.false41, %lor.lhs.false45, %if.end, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false20, %entry, %lor.lhs.false
  %ok.0 = phi i32 [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false35 ], [ 0, %lor.lhs.false31 ], [ 0, %if.then27 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.end52 ], [ 1, %if.then56 ], [ 1, %if.end24 ]
  %membio_provided.0 = phi %struct.bio_st* [ %call4, %lor.lhs.false45 ], [ %call4, %lor.lhs.false41 ], [ %call4, %lor.lhs.false35 ], [ %call4, %lor.lhs.false31 ], [ %call4, %if.then27 ], [ %call4, %lor.lhs.false20 ], [ %call4, %lor.lhs.false14 ], [ %call4, %lor.lhs.false10 ], [ %call4, %if.end ], [ %call4, %lor.lhs.false ], [ null, %entry ], [ %call4, %if.end52 ], [ %call4, %if.then56 ], [ %call4, %if.end24 ]
  %ectx.0 = phi %struct.ossl_encoder_ctx_st* [ %call7, %lor.lhs.false45 ], [ %call7, %lor.lhs.false41 ], [ %call7, %lor.lhs.false35 ], [ %call7, %lor.lhs.false31 ], [ %call7, %if.then27 ], [ %call7, %lor.lhs.false20 ], [ %call7, %lor.lhs.false14 ], [ %call7, %lor.lhs.false10 ], [ %call7, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call7, %if.end52 ], [ %call7, %if.then56 ], [ %call7, %if.end24 ]
  %dctx.1 = phi %struct.ossl_decoder_ctx_st* [ %call32, %lor.lhs.false45 ], [ %call32, %lor.lhs.false41 ], [ %call32, %lor.lhs.false35 ], [ %call32, %lor.lhs.false31 ], [ null, %if.then27 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call32, %if.end52 ], [ %call32, %if.then56 ], [ null, %if.end24 ]
  %decoded_legacy_pkey.1 = phi %struct.evp_pkey_st* [ %call28, %lor.lhs.false45 ], [ %call28, %lor.lhs.false41 ], [ %call28, %lor.lhs.false35 ], [ %call28, %lor.lhs.false31 ], [ %call28, %if.then27 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call28, %if.end52 ], [ %call28, %if.then56 ], [ null, %if.end24 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %decoded_legacy_pkey.1) #6
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %10) #6
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %ectx.0) #6
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %dctx.1) #6
  %call61 = call i32 @BIO_free(%struct.bio_st* noundef %membio_provided.0) #6
  %call62 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ok.0
}

declare dso_local i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) #3

declare dso_local i32 @EVP_PKEY_print_private(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_unprotected_PEM(i8* noundef %keytype, i32 noundef %evp_type, i8* noundef %legacy_key, i32 (%struct.bio_st*, i8*)* nocapture noundef readonly %pem_write_bio, i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* noundef readonly %pem_read_bio, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* nocapture noundef readonly %evp_pkey_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* nocapture noundef readonly %evp_pkey_print, %struct.evp_pkey_st* noundef %provided_pkey, i32 noundef %selection, i8* noundef %structure) unnamed_addr #1 {
entry:
  %decoded_provided_pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %decoded_provided_pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #6
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 385, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call %struct.bio_method_st* @BIO_s_mem() #6
  %call4 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call3) #6
  %2 = bitcast %struct.bio_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.52, i64 0, i64 0), i8* noundef %2) #6
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call7 = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %provided_pkey, i32 noundef %selection, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* noundef %structure, i8* noundef null) #6
  %3 = bitcast %struct.ossl_encoder_ctx_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 392, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.53, i64 0, i64 0), i8* noundef %3) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %call11 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call7, %struct.bio_st* noundef %call4) #6
  %cmp = icmp ne i32 %call11, 0
  %conv = zext i1 %cmp to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call i32 %pem_write_bio(%struct.bio_st* noundef %call1, i8* noundef %legacy_key) #6
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 394, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv17) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %end, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false14
  %call21 = tail call fastcc i32 @test_membio_str_eq(%struct.bio_st* noundef %call4, %struct.bio_st* noundef %call1) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %end, label %if.end24

if.end24:                                         ; preds = %lor.lhs.false20
  %cmp25.not = icmp eq i8* (%struct.bio_st*, i8**, i32 (i8*, i32, i32, i8*)*, i8*)* %pem_read_bio, null
  br i1 %cmp25.not, label %end, label %if.then27

if.then27:                                        ; preds = %if.end24
  %call28 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #6
  %4 = bitcast %struct.evp_pkey_st* %call28 to i8*
  %call29 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 401, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i8* noundef %4) #6
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %end, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.then27
  %call32 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %decoded_provided_pkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8* noundef %structure, i8* noundef %keytype, i32 noundef %selection, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  %5 = bitcast %struct.ossl_decoder_ctx_st* %call32 to i8*
  %call33 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([111 x i8], [111 x i8]* @.str.58, i64 0, i64 0), i8* noundef %5) #6
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %end, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false31
  %call36 = call i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef %call32, %struct.bio_st* noundef %call4) #6
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 407, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv38) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %end, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false35
  %call42 = call i8* %pem_read_bio(%struct.bio_st* noundef %call1, i8** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #6
  %call43 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 409, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.60, i64 0, i64 0), i8* noundef %call42) #6
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %end, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %call46 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call28, i32 noundef %evp_type, i8* noundef %call42) #6
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 411, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv48) #6
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %end, label %if.end52

if.end52:                                         ; preds = %lor.lhs.false45
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  %call53 = call i32 %evp_pkey_eq(%struct.evp_pkey_st* noundef %6, %struct.evp_pkey_st* noundef %call28) #6, !callees !36
  %call54 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i32 noundef %call53, i32 noundef 0) #6
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %end

if.then56:                                        ; preds = %if.end52
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 416, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0)) #6
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !13
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  %call57 = call i32 %evp_pkey_print(%struct.bio_st* noundef %7, %struct.evp_pkey_st* noundef %8, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #6, !callees !37
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i64 0, i64 0)) #6
  %9 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !13
  %call58 = call i32 %evp_pkey_print(%struct.bio_st* noundef %9, %struct.evp_pkey_st* noundef %call28, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #6, !callees !37
  br label %end

end:                                              ; preds = %if.end24, %if.then56, %if.end52, %if.then27, %lor.lhs.false31, %lor.lhs.false35, %lor.lhs.false41, %lor.lhs.false45, %if.end, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false20, %entry, %lor.lhs.false
  %ok.0 = phi i32 [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false35 ], [ 0, %lor.lhs.false31 ], [ 0, %if.then27 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.end52 ], [ 1, %if.then56 ], [ 1, %if.end24 ]
  %membio_provided.0 = phi %struct.bio_st* [ %call4, %lor.lhs.false45 ], [ %call4, %lor.lhs.false41 ], [ %call4, %lor.lhs.false35 ], [ %call4, %lor.lhs.false31 ], [ %call4, %if.then27 ], [ %call4, %lor.lhs.false20 ], [ %call4, %lor.lhs.false14 ], [ %call4, %lor.lhs.false10 ], [ %call4, %if.end ], [ %call4, %lor.lhs.false ], [ null, %entry ], [ %call4, %if.end52 ], [ %call4, %if.then56 ], [ %call4, %if.end24 ]
  %ectx.0 = phi %struct.ossl_encoder_ctx_st* [ %call7, %lor.lhs.false45 ], [ %call7, %lor.lhs.false41 ], [ %call7, %lor.lhs.false35 ], [ %call7, %lor.lhs.false31 ], [ %call7, %if.then27 ], [ %call7, %lor.lhs.false20 ], [ %call7, %lor.lhs.false14 ], [ %call7, %lor.lhs.false10 ], [ %call7, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call7, %if.end52 ], [ %call7, %if.then56 ], [ %call7, %if.end24 ]
  %dctx.1 = phi %struct.ossl_decoder_ctx_st* [ %call32, %lor.lhs.false45 ], [ %call32, %lor.lhs.false41 ], [ %call32, %lor.lhs.false35 ], [ %call32, %lor.lhs.false31 ], [ null, %if.then27 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call32, %if.end52 ], [ %call32, %if.then56 ], [ null, %if.end24 ]
  %decoded_legacy_pkey.1 = phi %struct.evp_pkey_st* [ %call28, %lor.lhs.false45 ], [ %call28, %lor.lhs.false41 ], [ %call28, %lor.lhs.false35 ], [ %call28, %lor.lhs.false31 ], [ %call28, %if.then27 ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call28, %if.end52 ], [ %call28, %if.then56 ], [ null, %if.end24 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %decoded_legacy_pkey.1) #6
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %10) #6
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %ectx.0) #6
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %dctx.1) #6
  %call61 = call i32 @BIO_free(%struct.bio_st* noundef %membio_provided.0) #6
  %call62 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ok.0
}

declare dso_local i32 @EVP_PKEY_print_public(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) #3

declare dso_local i32 @EVP_PKEY_parameters_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) #3

declare dso_local i32 @EVP_PKEY_print_params(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_DER(i8* noundef %keytype, i32 noundef %evp_type, i8* noundef %legacy_key, i32 (i8*, i8**)* nocapture noundef readonly %i2d, i8* (i8**, i8**, i64)* noundef readonly %d2i, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* nocapture noundef readonly %evp_pkey_eq, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* nocapture noundef readonly %evp_pkey_print, %struct.evp_pkey_st* noundef %provided_pkey, i32 noundef %selection, i8* noundef %structure) unnamed_addr #1 {
entry:
  %der_legacy = alloca i8*, align 8
  %pder_legacy = alloca i8*, align 8
  %der_provided = alloca i8*, align 8
  %pder_provided = alloca i8*, align 8
  %der_provided_len = alloca i64, align 8
  %tmp_size = alloca i64, align 8
  %decoded_provided_pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast i8** %der_legacy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %der_legacy, align 8, !tbaa !13
  %1 = bitcast i8** %pder_legacy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* null, i8** %pder_legacy, align 8, !tbaa !13
  %2 = bitcast i8** %der_provided to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i8* null, i8** %der_provided, align 8, !tbaa !13
  %3 = bitcast i8** %pder_provided to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store i8* null, i8** %pder_provided, align 8, !tbaa !13
  %4 = bitcast i64* %der_provided_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store i64 0, i64* %der_provided_len, align 8, !tbaa !38
  %5 = bitcast i64* %tmp_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  %6 = bitcast %struct.evp_pkey_st** %decoded_provided_pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  %call = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %provided_pkey, i32 noundef %selection, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef %structure, i8* noundef null) #6
  %7 = bitcast %struct.ossl_encoder_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 457, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.71, i64 0, i64 0), i8* noundef %7) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @OSSL_ENCODER_to_data(%struct.ossl_encoder_ctx_st* noundef %call, i8** noundef nonnull %der_provided, i64* noundef nonnull %der_provided_len) #6
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 459, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.73, i64 0, i64 0), i32 noundef %conv) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %end, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 %i2d(i8* noundef %legacy_key, i8** noundef nonnull %der_legacy) #6
  %conv7 = sext i32 %call6 to i64
  %call8 = call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 noundef %conv7, i64 noundef 0) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %8 = load i8*, i8** %der_provided, align 8, !tbaa !13
  %9 = load i64, i64* %der_provided_len, align 8, !tbaa !38
  %10 = load i8*, i8** %der_legacy, align 8, !tbaa !13
  %call11 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 462, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0), i8* noundef %8, i64 noundef %9, i8* noundef %10, i64 noundef %conv7) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %end, label %if.end

if.end:                                           ; preds = %lor.lhs.false10
  %cmp13.not = icmp eq i8* (i8**, i8**, i64)* %d2i, null
  br i1 %cmp13.not, label %end, label %if.then15

if.then15:                                        ; preds = %if.end
  %call16 = call %struct.evp_pkey_st* @EVP_PKEY_new() #6
  %11 = bitcast %struct.evp_pkey_st* %call16 to i8*
  %call17 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.57, i64 0, i64 0), i8* noundef %11) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %end, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.then15
  %call20 = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %decoded_provided_pkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef %structure, i8* noundef %keytype, i32 noundef %selection, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  %12 = bitcast %struct.ossl_decoder_ctx_st* %call20 to i8*
  %call21 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 473, i8* noundef getelementptr inbounds ([111 x i8], [111 x i8]* @.str.77, i64 0, i64 0), i8* noundef %12) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %end, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %13 = load i8*, i8** %der_provided, align 8, !tbaa !13
  store i8* %13, i8** %pder_provided, align 8, !tbaa !13
  %14 = load i64, i64* %der_provided_len, align 8, !tbaa !38
  store i64 %14, i64* %tmp_size, align 8, !tbaa !38
  %call24 = call i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef %call20, i8** noundef nonnull %pder_provided, i64* noundef nonnull %tmp_size) #6
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 477, i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv26) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %end, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false23
  %15 = load i8*, i8** %der_legacy, align 8, !tbaa !13
  store i8* %15, i8** %pder_legacy, align 8, !tbaa !13
  %call30 = call i8* %d2i(i8** noundef null, i8** noundef nonnull %pder_legacy, i64 noundef %conv7) #6
  %call31 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 480, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.79, i64 0, i64 0), i8* noundef %call30) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %end, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %call34 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call16, i32 noundef %evp_type, i8* noundef %call30) #6
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 482, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv36) #6
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %end, label %if.end40

if.end40:                                         ; preds = %lor.lhs.false33
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  %call41 = call i32 %evp_pkey_eq(%struct.evp_pkey_st* noundef %16, %struct.evp_pkey_st* noundef %call16) #6, !callees !36
  %call42 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 486, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i32 noundef %call41, i32 noundef 0) #6
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %end

if.then44:                                        ; preds = %if.end40
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 487, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0)) #6
  %17 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !13
  %18 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  %call45 = call i32 %evp_pkey_print(%struct.bio_st* noundef %17, %struct.evp_pkey_st* noundef %18, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #6, !callees !39
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i64 0, i64 0)) #6
  %19 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !13
  %call46 = call i32 %evp_pkey_print(%struct.bio_st* noundef %19, %struct.evp_pkey_st* noundef %call16, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #6, !callees !39
  br label %end

end:                                              ; preds = %if.end, %if.then44, %if.end40, %if.then15, %lor.lhs.false19, %lor.lhs.false23, %lor.lhs.false29, %lor.lhs.false33, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false10
  %ok.0 = phi i32 [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false19 ], [ 0, %if.then15 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %if.end40 ], [ 1, %if.then44 ], [ 1, %if.end ]
  %dctx.1 = phi %struct.ossl_decoder_ctx_st* [ %call20, %lor.lhs.false33 ], [ %call20, %lor.lhs.false29 ], [ %call20, %lor.lhs.false23 ], [ %call20, %lor.lhs.false19 ], [ null, %if.then15 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call20, %if.end40 ], [ %call20, %if.then44 ], [ null, %if.end ]
  %decoded_legacy_pkey.1 = phi %struct.evp_pkey_st* [ %call16, %lor.lhs.false33 ], [ %call16, %lor.lhs.false29 ], [ %call16, %lor.lhs.false23 ], [ %call16, %lor.lhs.false19 ], [ %call16, %if.then15 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call16, %if.end40 ], [ %call16, %if.then44 ], [ null, %if.end ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %decoded_legacy_pkey.1) #6
  %20 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %decoded_provided_pkey, align 8, !tbaa !13
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %20) #6
  call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %call) #6
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %dctx.1) #6
  %21 = load i8*, i8** %der_provided, align 8, !tbaa !13
  call void @CRYPTO_free(i8* noundef %21, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 499) #6
  %22 = load i8*, i8** %der_legacy, align 8, !tbaa !13
  call void @CRYPTO_free(i8* noundef %22, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 500) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ok.0
}

declare dso_local i32 @i2d_DHparams(%struct.dh_st* noundef, i8** noundef) #3

declare dso_local i32 @PEM_write_bio_DHparams(%struct.bio_st* noundef, %struct.dh_st* noundef) #3

declare dso_local %struct.dh_st* @d2i_DHparams(%struct.dh_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local %struct.dh_st* @PEM_read_bio_DHparams(%struct.bio_st* noundef, %struct.dh_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local i32 @i2d_DHxparams(%struct.dh_st* noundef, i8** noundef) #3

declare dso_local i32 @PEM_write_bio_DHxparams(%struct.bio_st* noundef, %struct.dh_st* noundef) #3

declare dso_local %struct.dh_st* @d2i_DHxparams(%struct.dh_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local i32 @i2d_DSAPrivateKey(%struct.dsa_st* noundef, i8** noundef) #3

declare dso_local i32 @i2d_DSAPublicKey(%struct.dsa_st* noundef, i8** noundef) #3

declare dso_local i32 @i2d_DSAparams(%struct.dsa_st* noundef, i8** noundef) #3

declare dso_local i32 @i2d_DSA_PUBKEY(%struct.dsa_st* noundef, i8** noundef) #3

declare dso_local i32 @PEM_write_bio_DSAPrivateKey(%struct.bio_st* noundef, %struct.dsa_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local i32 @PEM_write_bio_DSAparams(%struct.bio_st* noundef, %struct.dsa_st* noundef) #3

declare dso_local i32 @PEM_write_bio_DSA_PUBKEY(%struct.bio_st* noundef, %struct.dsa_st* noundef) #3

declare dso_local %struct.dsa_st* @d2i_DSAPrivateKey(%struct.dsa_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local %struct.dsa_st* @d2i_DSAPublicKey(%struct.dsa_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local %struct.dsa_st* @d2i_DSAparams(%struct.dsa_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local %struct.dsa_st* @d2i_DSA_PUBKEY(%struct.dsa_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local %struct.dsa_st* @PEM_read_bio_DSAPrivateKey(%struct.bio_st* noundef, %struct.dsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local %struct.dsa_st* @PEM_read_bio_DSAparams(%struct.bio_st* noundef, %struct.dsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local %struct.dsa_st* @PEM_read_bio_DSA_PUBKEY(%struct.bio_st* noundef, %struct.dsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local i32 @i2d_ECPrivateKey(%struct.ec_key_st* noundef, i8** noundef) #3

declare dso_local i32 @i2d_ECParameters(%struct.ec_key_st* noundef, i8** noundef) #3

declare dso_local i32 @i2d_EC_PUBKEY(%struct.ec_key_st* noundef, i8** noundef) #3

declare dso_local i32 @PEM_write_bio_ECPrivateKey(%struct.bio_st* noundef, %struct.ec_key_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local i32 @PEM_write_bio_EC_PUBKEY(%struct.bio_st* noundef, %struct.ec_key_st* noundef) #3

declare dso_local %struct.ec_key_st* @d2i_ECPrivateKey(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local %struct.ec_key_st* @d2i_ECParameters(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local %struct.ec_key_st* @d2i_EC_PUBKEY(%struct.ec_key_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local %struct.ec_key_st* @PEM_read_bio_ECPrivateKey(%struct.bio_st* noundef, %struct.ec_key_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local %struct.ec_key_st* @PEM_read_bio_EC_PUBKEY(%struct.bio_st* noundef, %struct.ec_key_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local i32 @i2d_RSAPrivateKey(%struct.rsa_st* noundef, i8** noundef) #3

declare dso_local i32 @i2d_RSAPublicKey(%struct.rsa_st* noundef, i8** noundef) #3

declare dso_local i32 @i2d_RSA_PUBKEY(%struct.rsa_st* noundef, i8** noundef) #3

declare dso_local i32 @PEM_write_bio_RSAPrivateKey(%struct.bio_st* noundef, %struct.rsa_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local i32 @PEM_write_bio_RSAPublicKey(%struct.bio_st* noundef, %struct.rsa_st* noundef) #3

declare dso_local i32 @PEM_write_bio_RSA_PUBKEY(%struct.bio_st* noundef, %struct.rsa_st* noundef) #3

declare dso_local %struct.rsa_st* @d2i_RSAPrivateKey(%struct.rsa_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local %struct.rsa_st* @d2i_RSAPublicKey(%struct.rsa_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local %struct.rsa_st* @d2i_RSA_PUBKEY(%struct.rsa_st** noundef, i8** noundef, i64 noundef) #3

declare dso_local %struct.rsa_st* @PEM_read_bio_RSAPrivateKey(%struct.bio_st* noundef, %struct.rsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local %struct.rsa_st* @PEM_read_bio_RSAPublicKey(%struct.bio_st* noundef, %struct.rsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local %struct.rsa_st* @PEM_read_bio_RSA_PUBKEY(%struct.bio_st* noundef, %struct.rsa_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) #3

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #3

declare dso_local %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_membio_str_eq(%struct.bio_st* noundef %bio_provided, %struct.bio_st* noundef %bio_legacy) unnamed_addr #1 {
entry:
  %str_provided = alloca i8*, align 8
  %str_legacy = alloca i8*, align 8
  %0 = bitcast i8** %str_provided to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %str_provided, align 8, !tbaa !13
  %1 = bitcast i8** %str_legacy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* null, i8** %str_legacy, align 8, !tbaa !13
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %bio_provided, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #6
  %call1 = call i64 @BIO_ctrl(%struct.bio_st* noundef %bio_legacy, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %1) #6
  %call2 = call i32 @test_long_ge(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 noundef %call1, i64 noundef 0) #6
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call3 = call i32 @test_long_ge(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), i64 noundef %call, i64 noundef 0) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i8*, i8** %str_provided, align 8, !tbaa !13
  %3 = load i8*, i8** %str_legacy, align 8, !tbaa !13
  %call5 = call i32 @test_strn_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i64 0, i64 0), i8* noundef %2, i64 noundef %call, i8* noundef %3, i64 noundef %call1) #6
  %tobool6 = icmp ne i32 %call5, 0
  %phi.cast = zext i1 %tobool6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %4 = phi i32 [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %4
}

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #3

declare dso_local %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_DECODER_from_bio(%struct.ossl_decoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_long_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_strn_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_ENCODER_to_data(%struct.ossl_encoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @test_size_t_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"key_st", !5, i64 0, !8, i64 8, !5, i64 16, !5, i64 24}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !5, i64 24}
!10 = !{!4, !5, i64 16}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !5, i64 0}
!15 = !{!"ossl_param_st", !5, i64 0, !8, i64 8, !5, i64 16, !16, i64 24, !16, i64 32}
!16 = !{!"long", !6, i64 0}
!17 = !{!18, !5, i64 0}
!18 = !{!"test_stanza_st", !5, i64 0, !6, i64 8, !8, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152}
!19 = !{!4, !8, i64 8}
!20 = !{!18, !5, i64 64}
!21 = !{!18, !5, i64 128}
!22 = !{!18, !5, i64 72}
!23 = !{!18, !5, i64 136}
!24 = !{!18, !5, i64 80}
!25 = !{!18, !5, i64 144}
!26 = !{!18, !5, i64 88}
!27 = !{!18, !5, i64 152}
!28 = !{!18, !5, i64 32}
!29 = !{!18, !5, i64 96}
!30 = !{!18, !5, i64 40}
!31 = !{!18, !5, i64 104}
!32 = !{!18, !5, i64 48}
!33 = !{!18, !5, i64 112}
!34 = !{!18, !5, i64 56}
!35 = !{!18, !5, i64 120}
!36 = !{i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @EVP_PKEY_eq, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)* @EVP_PKEY_parameters_eq}
!37 = !{i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @EVP_PKEY_print_params, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @EVP_PKEY_print_public}
!38 = !{!16, !16, i64 0}
!39 = !{i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @EVP_PKEY_print_params, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @EVP_PKEY_print_private, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)* @EVP_PKEY_print_public}
