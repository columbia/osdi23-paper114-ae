; ModuleID = 'test/evp_extra_test.c'
source_filename = "test/evp_extra_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_st = type { i8*, i32, i32, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, {}*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.evp_keymgmt_st = type opaque
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.engine_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.5 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.APK_DATA_st = type { i8*, i64, i8*, i32, i32, i32, i32, i32 }
%struct.anon.7 = type { i32, i8* }
%struct.keys_st = type { i32, i8*, i8* }
%struct.ec_der_pub_keys_st = type { i8*, i64, i32 }
%struct.EVP_INIT_TEST_st = type { i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i32, i32, i32 }
%struct.EVP_RESET_TEST_st = type { i8*, i8*, i64, i64, i32 }
%struct.TEST_GCM_IV_REINIT_st = type { i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64 }
%struct.EVP_UPDATED_IV_TEST_st = type { i8*, i32 }
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.6 }
%union.anon.6 = type { i8* }
%struct.pkcs8_priv_key_info_st = type opaque
%struct.X509_pubkey_st = type opaque
%struct.ossl_param_bld_st = type opaque
%struct.dh_st = type opaque
%struct.ec_key_st = type opaque
%struct.evp_rand_st = type opaque
%struct.evp_rand_ctx_st = type opaque
%struct.ossl_decoder_ctx_st = type opaque

@test_get_options.options = internal constant [10 x %struct.options_st] [%struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @OPT_HELP_STR, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 500, i32 45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 501, i32 45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 502, i32 115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 503, i32 110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 504, i32 112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 505, i32 110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i32 0, i32 0) }, %struct.options_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0) }, %struct.options_st zeroinitializer], align 16
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
@testctx = internal unnamed_addr global %struct.ossl_lib_ctx_st* null, align 8
@.str.16 = private unnamed_addr constant [22 x i8] c"test/evp_extra_test.c\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"testctx\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@nullprov = internal unnamed_addr global %struct.ossl_provider_st* null, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@deflprov = internal unnamed_addr global %struct.ossl_provider_st* null, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@lgcyprov = internal unnamed_addr global %struct.ossl_provider_st* null, align 8
@.str.21 = private unnamed_addr constant [32 x i8] c"test_EVP_set_default_properties\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"test_EVP_DigestSignInit\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"test_EVP_DigestVerifyInit\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"test_EVP_Digest\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"test_EVP_Enveloped\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"test_d2i_AutoPrivateKey\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"test_privatekey_to_pkcs8\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"test_EVP_PKCS82PKEY_wrong_tag\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"test_EVP_PKCS82PKEY\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"test_EC_keygen_with_enc\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"test_EVP_SM2\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"test_EVP_SM2_verify\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"test_set_get_raw_keys\00", align 1
@custom_pmeth = internal unnamed_addr global %struct.evp_pkey_method_st* null, align 8
@.str.34 = private unnamed_addr constant [13 x i8] c"custom_pmeth\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"EVP_PKEY_meth_add0(custom_pmeth)\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"test_EVP_PKEY_check\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"test_CMAC_keygen\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"test_HKDF\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"test_emptyikm_HKDF\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"test_X509_PUBKEY_inplace\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"test_X509_PUBKEY_dup\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"test_invalide_ec_char2_pub_range_decode\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"test_DSA_get_set_params\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"test_DSA_priv_pub\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"test_RSA_get_set_params\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"test_decrypt_null_chunks\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"test_DH_priv_pub\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"test_EVP_PKEY_set1_DH\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"test_EC_priv_pub\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"test_EC_priv_only_legacy\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"test_keygen_with_empty_template\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"test_pkey_ctx_fail_without_provider\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"test_rand_agglomeration\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"test_evp_iv_aes\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"test_evp_iv_des\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"test_EVP_rsa_pss_with_keygen_bits\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"test_ecpub\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"test_names_do_all\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"test_evp_init_seq\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"test_evp_reset\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"test_gcm_reinit\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"test_evp_updated_iv\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"test_custom_pmeth\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"test_evp_md_cipher_meth\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"ctx = OSSL_LIB_CTX_new()\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"md = EVP_MD_fetch(ctx, \22sha256\22, NULL)\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.69 = private unnamed_addr constant [53 x i8] c"EVP_set_default_properties(ctx, \22provider=fizzbang\22)\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"provider=fizzbang\00", align 1
@.str.71 = private unnamed_addr constant [46 x i8] c"md = EVP_MD_fetch(ctx, \22sha256\22, \22-provider\22)\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"-provider\00", align 1
@.str.73 = private unnamed_addr constant [38 x i8] c"EVP_set_default_properties(ctx, NULL)\00", align 1
@.str.74 = private unnamed_addr constant [52 x i8] c"Test does not support a non-default library context\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"membio\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"mdbio\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"BIO_get_md_ctx(mdbio, &md_ctx)\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.79 = private unnamed_addr constant [37 x i8] c"a_md_ctx = md_ctx = EVP_MD_CTX_new()\00", align 1
@.str.80 = private unnamed_addr constant [51 x i8] c"a_md_ctx_verify = md_ctx_verify = EVP_MD_CTX_new()\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"pkey = load_example_rsa_key()\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"pkey = load_example_dsa_key()\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"pkey = load_example_hmac_key()\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.85 = private unnamed_addr constant [49 x i8] c"EVP_DigestSignInit(md_ctx, NULL, md, NULL, pkey)\00", align 1
@kMsg = internal constant [4 x i8] c"\01\02\03\04", align 1
@.str.86 = private unnamed_addr constant [49 x i8] c"EVP_DigestSignUpdate(md_ctx, kMsg, sizeof(kMsg))\00", align 1
@.str.87 = private unnamed_addr constant [44 x i8] c"EVP_DigestSignFinal(md_ctx, NULL, &sig_len)\00", align 1
@.str.88 = private unnamed_addr constant [30 x i8] c"sig = OPENSSL_malloc(sig_len)\00", align 1
@.str.89 = private unnamed_addr constant [43 x i8] c"EVP_DigestSignFinal(md_ctx, sig, &sig_len)\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"BIO_reset(mdbio)\00", align 1
@.str.91 = private unnamed_addr constant [38 x i8] c"BIO_get_md_ctx(mdbio, &md_ctx_verify)\00", align 1
@.str.92 = private unnamed_addr constant [58 x i8] c"EVP_DigestVerifyInit(md_ctx_verify, NULL, md, NULL, pkey)\00", align 1
@.str.93 = private unnamed_addr constant [50 x i8] c"BIO_write_ex(mdbio, kMsg, sizeof(kMsg), &written)\00", align 1
@.str.94 = private unnamed_addr constant [58 x i8] c"EVP_DigestVerifyUpdate(md_ctx_verify, kMsg, sizeof(kMsg))\00", align 1
@.str.95 = private unnamed_addr constant [51 x i8] c"EVP_DigestVerifyFinal(md_ctx_verify, sig, sig_len)\00", align 1
@.str.96 = private unnamed_addr constant [45 x i8] c"EVP_DigestSignFinal(md_ctx, NULL, &sig2_len)\00", align 1
@.str.97 = private unnamed_addr constant [32 x i8] c"sig2 = OPENSSL_malloc(sig2_len)\00", align 1
@.str.98 = private unnamed_addr constant [45 x i8] c"EVP_DigestSignFinal(md_ctx, sig2, &sig2_len)\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"sig2\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@kExampleRSAKeyDER = internal constant [608 x i8] c"0\82\02\\\02\01\00\02\81\81\00\F8\B8l\83\B4\BC\D9\A8W\C0\A5\B4Yv\8CT\1Dy\EB\22R\04~\D37\EBA\FD\83\F9\F0\A6\85\154uqZ\84\A8<\D2\EFZN\D3\DE\97\8A\DD\FF\BB\CF\0A\AA\86\92\BE\B8P\E4\CDo\8030v\13\8F\CA{\DC\ECZ\CAc\C7\03%\EF\A8\8A\83Xv \FA\16w\D7y\92c\01H\1A\D8{g\F1RUIN\D6nJ\\\D7z76\0C\DE\DD\8FD\E8\C2\A7,+\B5\AFdKa\07\02\03\01\00\01\02\81\80t\88d?iE:m\C7\7F\B9\A3\C0n\EC\DC\D4Z\B52\85_\19\D4\F8\D4?<\FA\C2\F6_\EE\E6\BA\87t.\C7\0C\D4B\B8f\85\9C{$a\AA\16\11\F6\B5\B6\A4\0A\C9U.\81\A5Ga\CB%\8F\C2\15{\0E|6\9F:\DAX\86\1C[\83y\E6+\CC\E6\FA,a\F2x\80\1B\E2\F3\9D9+eW\91=q\99s\A5\C2y \8C\07O\E5\B4`\1F\99\A2\B1O\0C\EF\BCYS\00}\B1\02A\00\FC~#ep\F8\CE\D3@A\80j\1D\01\D6\01\FF\B6\1B==Y\093y\C0O\DE\96'K\18\C6\D9x\F1\F45F\E9|Bz]\9F\EFT\B8\F7\9F\C43l\F3\8C2F\87g0{\A7\AC\E3\02A\00\FC,\DF\0C\0D\88\F5\B1\92\A8\93GcU\F5\CAXC\BA\1C\E5\9E\B6\95\05\CD\B5\82\DF\EB\04S\9D\BD\C28\16\B3b\DD\A1F\DBm\97\93\9F\8A\C3\9Bd~B\E32W\19\1B\D5n\85\FA\B8\8D\02A\00\BC=\DEm\D6\97\E8\BA\9E\817\17\E5\A0d\C9\00\B7\E7\FE\F4)\D9.Ck\19 \BD\99u\E7v\F8\D3\AE\AF~\B8\EB\81\F4\9D\FE\07+\0Bc\0BZU\90q}\F1\DB\D9\B1AAh/N9\02@Z4f\D8\F5\E2\7F\18\B5\00n&\84'\14\93\FB\FC\C6\0F^'\E6\E1\E9\C0\8A\E44\DA\E9\A2Ks\BC\8C\B9\BA\13lz+Q\84\A3J\E00\10\06~\ED\17Z\14\00\C9\EF\85\EAR,\BCe\02@Q\E3\F2\83\19\9B\C4\1E/P=\DFZ\A2\18\CA_.I\AFo\CC\FAew\94\B5\A1\0A\A9\D1\8A97\F4\0B\A0\D7\82'^\AE\17\17\A1\1ET4\BFn\C4\8E\99]\08\F1-\86\9D\A5 \1B\E5\DF", align 16
@.str.102 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@kExampleDSAKeyDER = internal constant [446 x i8] c"0\82\01\BA\02\01\00\02\81\81\00\9A\05m3\CD]x\A1\BB\CB}[\8D\B4\CC\BF\03\99d\DE8x\06\15/\86&w\F3\B1\85\00\ED\FC(:BM\AB\AB\DF\BC\9C\16\D0\22P\D18\DD?d\05\9Ehz\1E\F1V\BF\1E,\C5\97*\FEz\22\DClh\B8.\06\DBA\CA\98\D8T\C7dH$\04 \BCY\E3k\EA~\FC~\C5N\D4\D8:\ED\CD]\99\B8\\\A2\8B\BB\0B\AC\E6\8E%V\22:-:VA\14\1F\1C\8FSF\13\85\02\15\00\98~\92\81\88\C7?pIT\F6v\B4\A3\9E\1DE\982\7F\02\81\80iM\EFU\FFMY,\01\FAj8\E0p\9F\9Ef\8E>\8CR\22\9D\15~<\EFLza&\E0+\81?\EB\AF58\8D\FE\EDF\FF_\03\9B\81\92\E7ovO\1D\D9\BB\89\C9>\D9\0B\F9\F4x\11Y\C0\1D\CD\0E\A1o\15\F1M\C1\C9\22\ED\8D\ADg\C5K\95\93\86\A6\AF\8A\EE\06\89/7~d\AA\F6\E7\B1Z\0A\93\95]>S\9A\DE\8A\C2\95E\81\BE\\/\C2\B2\92X\19r\80\E9y\A1\02\81\80\07\D7b\FF\DF\1A?\ED2\D4\D4\88{,c\7F\97\DCD\D4\84\A2\DD\17\16\85\13\E0\ACQ\8D)\1Bu\9A\E4\E3\8A\92i\09\03\C5h\AE^\94\FE\C9\92l\07\B4\1Edb\87\C6\A4\FD\0D_\E5\F9\1BO\85_\AE\F3\11\E5\18\D4My\9F\C4y&\04'\F0\0B\EE+\86\9F\86a\E6Q\CE\04\9B]k4C\8C\85<\F1Q\9B\08#\1B\F5~3\12\EA\AB\1F\B7-\E2_\E6\97\99\B5E\16[\C3A\02\14a\BFQ`\CF\C8\F1\8C\82\97\F2\F4\19\BA+\F3\16\BE@H", align 16
@__const.load_example_hmac_key.key = private unnamed_addr constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@.str.104 = private unnamed_addr constant [5 x i8] c"HMAC\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"pkey\00", align 1
@.str.106 = private unnamed_addr constant [26 x i8] c"md_ctx = EVP_MD_CTX_new()\00", align 1
@.str.107 = private unnamed_addr constant [61 x i8] c"EVP_DigestVerifyInit(md_ctx, NULL, EVP_sha256(), NULL, pkey)\00", align 1
@.str.108 = private unnamed_addr constant [51 x i8] c"EVP_DigestVerifyUpdate(md_ctx, kMsg, sizeof(kMsg))\00", align 1
@.str.109 = private unnamed_addr constant [62 x i8] c"EVP_DigestVerifyFinal(md_ctx, kSignature, sizeof(kSignature))\00", align 1
@kSignature = internal constant [128 x i8] c"\A5\F0\8AG]<\B3\CC\A9y\AFM\8C\AEL\14\EF\C2\0B46\DE\F4>=\BBJ`\\\C8\91(\DA\FB~\04\96~c\13\90\CE\B9\B4bz\FD\09=\C7gxT\04\EBRbn$g\B4@\FCWb\C6\F1g\C1\97\8Fj\A8\AEDF^\ABg\17S\19:\DAZ\C8\16>\86\D5\C5q/\FC#H\D9\0B\13\DD{Z%y\EF\A5{\04\EDD\F6\18U\E4\0A\E9Wy]\D7U\A7\ABE\02\97`B", align 16
@.str.110 = private unnamed_addr constant [52 x i8] c"sha256 = EVP_MD_fetch(testctx, \22sha256\22, testpropq)\00", align 1
@.str.111 = private unnamed_addr constant [56 x i8] c"shake256 = EVP_MD_fetch(testctx, \22shake256\22, testpropq)\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"shake256\00", align 1
@.str.113 = private unnamed_addr constant [40 x i8] c"EVP_DigestInit_ex(md_ctx, sha256, NULL)\00", align 1
@.str.114 = private unnamed_addr constant [45 x i8] c"EVP_DigestUpdate(md_ctx, kMsg, sizeof(kMsg))\00", align 1
@.str.115 = private unnamed_addr constant [34 x i8] c"EVP_DigestFinal(md_ctx, md, NULL)\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"EVP_MD_CTX_get0_md(md_ctx)\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.118 = private unnamed_addr constant [37 x i8] c"EVP_DigestFinal_ex(md_ctx, md, NULL)\00", align 1
@.str.119 = private unnamed_addr constant [38 x i8] c"EVP_DigestInit_ex(md_ctx, NULL, NULL)\00", align 1
@.str.120 = private unnamed_addr constant [42 x i8] c"EVP_DigestInit_ex(md_ctx, shake256, NULL)\00", align 1
@.str.121 = private unnamed_addr constant [43 x i8] c"EVP_DigestFinalXOF(md_ctx, md, sizeof(md))\00", align 1
@test_EVP_Enveloped.msg = internal constant [8 x i8] c"\01\02\03\04\05\06\07\08", align 1
@.str.122 = private unnamed_addr constant [59 x i8] c"type = EVP_CIPHER_fetch(testctx, \22AES-256-CBC\22, testpropq)\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"AES-256-CBC\00", align 1
@.str.124 = private unnamed_addr constant [33 x i8] c"keypair = load_example_rsa_key()\00", align 1
@.str.125 = private unnamed_addr constant [49 x i8] c"kek = OPENSSL_zalloc(EVP_PKEY_get_size(keypair))\00", align 1
@.str.126 = private unnamed_addr constant [27 x i8] c"ctx = EVP_CIPHER_CTX_new()\00", align 1
@.str.127 = private unnamed_addr constant [57 x i8] c"EVP_SealInit(ctx, type, &kek, &kek_len, iv, &keypair, 1)\00", align 1
@.str.128 = private unnamed_addr constant [67 x i8] c"EVP_SealUpdate(ctx, ciphertext, &ciphertext_len, msg, sizeof(msg))\00", align 1
@.str.129 = private unnamed_addr constant [54 x i8] c"EVP_SealFinal(ctx, ciphertext + ciphertext_len, &len)\00", align 1
@.str.130 = private unnamed_addr constant [51 x i8] c"EVP_OpenInit(ctx, type, kek, kek_len, iv, keypair)\00", align 1
@.str.131 = private unnamed_addr constant [75 x i8] c"EVP_OpenUpdate(ctx, plaintext, &plaintext_len, ciphertext, ciphertext_len)\00", align 1
@.str.132 = private unnamed_addr constant [52 x i8] c"EVP_OpenFinal(ctx, plaintext + plaintext_len, &len)\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"plaintext\00", align 1
@keydata = internal unnamed_addr constant [3 x %struct.APK_DATA_st] [%struct.APK_DATA_st { i8* getelementptr inbounds ([608 x i8], [608 x i8]* @kExampleRSAKeyDER, i32 0, i32 0), i64 608, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i32 6, i32 0, i32 0, i32 0, i32 0 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([634 x i8], [634 x i8]* @kExampleRSAKeyPKCS8, i32 0, i32 0), i64 634, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i32 6, i32 0, i32 0, i32 0, i32 0 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([121 x i8], [121 x i8]* @kExampleECKeyDER, i32 0, i32 0), i64 121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i32 0, i32 0), i32 408, i32 0, i32 0, i32 0, i32 0 }], align 16
@.str.135 = private unnamed_addr constant [47 x i8] c"pkey = d2i_AutoPrivateKey(NULL, &p, input_len)\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"input + input_len\00", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"EVP_PKEY_get_id(pkey)\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"expected_id\00", align 1
@kExampleRSAKeyPKCS8 = internal constant [634 x i8] c"0\82\02v\02\01\000\0D\06\09*\86H\86\F7\0D\01\01\01\05\00\04\82\02`0\82\02\\\02\01\00\02\81\81\00\F8\B8l\83\B4\BC\D9\A8W\C0\A5\B4Yv\8CT\1Dy\EB\22R\04~\D37\EBA\FD\83\F9\F0\A6\85\154uqZ\84\A8<\D2\EFZN\D3\DE\97\8A\DD\FF\BB\CF\0A\AA\86\92\BE\B8P\E4\CDo\8030v\13\8F\CA{\DC\ECZ\CAc\C7\03%\EF\A8\8A\83Xv \FA\16w\D7y\92c\01H\1A\D8{g\F1RUIN\D6nJ\\\D7z76\0C\DE\DD\8FD\E8\C2\A7,+\B5\AFdKa\07\02\03\01\00\01\02\81\80t\88d?iE:m\C7\7F\B9\A3\C0n\EC\DC\D4Z\B52\85_\19\D4\F8\D4?<\FA\C2\F6_\EE\E6\BA\87t.\C7\0C\D4B\B8f\85\9C{$a\AA\16\11\F6\B5\B6\A4\0A\C9U.\81\A5Ga\CB%\8F\C2\15{\0E|6\9F:\DAX\86\1C[\83y\E6+\CC\E6\FA,a\F2x\80\1B\E2\F3\9D9+eW\91=q\99s\A5\C2y \8C\07O\E5\B4`\1F\99\A2\B1O\0C\EF\BCYS\00}\B1\02A\00\FC~#ep\F8\CE\D3@A\80j\1D\01\D6\01\FF\B6\1B==Y\093y\C0O\DE\96'K\18\C6\D9x\F1\F45F\E9|Bz]\9F\EFT\B8\F7\9F\C43l\F3\8C2F\87g0{\A7\AC\E3\02A\00\FC,\DF\0C\0D\88\F5\B1\92\A8\93GcU\F5\CAXC\BA\1C\E5\9E\B6\95\05\CD\B5\82\DF\EB\04S\9D\BD\C28\16\B3b\DD\A1F\DBm\97\93\9F\8A\C3\9Bd~B\E32W\19\1B\D5n\85\FA\B8\8D\02A\00\BC=\DEm\D6\97\E8\BA\9E\817\17\E5\A0d\C9\00\B7\E7\FE\F4)\D9.Ck\19 \BD\99u\E7v\F8\D3\AE\AF~\B8\EB\81\F4\9D\FE\07+\0Bc\0BZU\90q}\F1\DB\D9\B1AAh/N9\02@Z4f\D8\F5\E2\7F\18\B5\00n&\84'\14\93\FB\FC\C6\0F^'\E6\E1\E9\C0\8A\E44\DA\E9\A2Ks\BC\8C\B9\BA\13lz+Q\84\A3J\E00\10\06~\ED\17Z\14\00\C9\EF\85\EAR,\BCe\02@Q\E3\F2\83\19\9B\C4\1E/P=\DFZ\A2\18\CA_.I\AFo\CC\FAew\94\B5\A1\0A\A9\D1\8A97\F4\0B\A0\D7\82'^\AE\17\17\A1\1ET4\BFn\C4\8E\99]\08\F1-\86\9D\A5 \1B\E5\DF", align 16
@kExampleECKeyDER = internal constant [121 x i8] c"0w\02\01\01\04 \07\0F\08rz\D4\A0J\9C\DDY\C9M\89hw\08\B5o\C9]0w\0E\E8\D1\C9\CE\0A\8B\B4j\A0\0A\06\08*\86H\CE=\03\01\07\A1D\03B\00\04\E6+i\E2\BFe\9F\97\BE/\1E\0D\94\8AL\D5\97k\B7\A9\1E\0DF\FB\DD\A9\A9\1E\9D\DC\BAZ\01\E7\D6\97\A8\0A\18\F9\C3\C4\A3\1EV\E2|\83H\DB\16\1A\1C\F5\1D~\F1\94-K\CFr\22\C1", align 16
@.str.140 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"membio = BIO_new(BIO_s_mem())\00", align 1
@.str.142 = private unnamed_addr constant [65 x i8] c"i2d_PKCS8PrivateKey_bio(membio, pkey, NULL, NULL, 0, NULL, NULL)\00", align 1
@.str.143 = private unnamed_addr constant [47 x i8] c"membuf_len = BIO_get_mem_data(membio, &membuf)\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"membuf\00", align 1
@.str.145 = private unnamed_addr constant [20 x i8] c"kExampleRSAKeyPKCS8\00", align 1
@.str.146 = private unnamed_addr constant [71 x i8] c"PEM_write_bio_PKCS8PrivateKey(membio, pkey, NULL, NULL, 0, NULL, NULL)\00", align 1
@.str.147 = private unnamed_addr constant [34 x i8] c"BIO_get_mem_data(membio, &membuf)\00", align 1
@.str.148 = private unnamed_addr constant [50 x i8] c"p8inf = d2i_PKCS8_PRIV_KEY_INFO_bio(membio, NULL)\00", align 1
@.str.149 = private unnamed_addr constant [30 x i8] c"pkey2 = EVP_PKCS82PKEY(p8inf)\00", align 1
@.str.150 = private unnamed_addr constant [22 x i8] c"ERR_peek_last_error()\00", align 1
@kExampleBadECKeyDER = internal constant [104 x i8] c"0f\02\01\000\13\06\07*\86H\CE=\02\01\06\08*\86H\CE=\03\01\07\04L0J\02\01\01\04 \FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\BC\E6\FA\AD\A7\17\9E\84\F3\B9\CA\C2\FCc%Q\A1#\03!\00\00\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\BC\E6\FA\AD\A7\17\9E\84\F3\B9\CA\C2\FCc%Q", align 16
@.str.151 = private unnamed_addr constant [74 x i8] c"p8inf = d2i_PKCS8_PRIV_KEY_INFO(NULL, &derp, sizeof(kExampleBadECKeyDER))\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"derp\00", align 1
@.str.153 = private unnamed_addr constant [50 x i8] c"kExampleBadECKeyDER + sizeof(kExampleBadECKeyDER)\00", align 1
@.str.154 = private unnamed_addr constant [29 x i8] c"pkey = EVP_PKCS82PKEY(p8inf)\00", align 1
@ec_encodings = internal unnamed_addr constant [2 x %struct.anon.7] [%struct.anon.7 { i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.169, i32 0, i32 0) }, %struct.anon.7 { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.170, i32 0, i32 0) }], align 16
@.str.155 = private unnamed_addr constant [55 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, \22EC\22, NULL)\00", align 1
@.str.156 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_paramgen_init(pctx)\00", align 1
@.str.157 = private unnamed_addr constant [43 x i8] c"EVP_PKEY_CTX_set_group_name(pctx, \22P-256\22)\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"P-256\00", align 1
@.str.159 = private unnamed_addr constant [41 x i8] c"EVP_PKEY_CTX_set_ec_param_enc(pctx, enc)\00", align 1
@.str.160 = private unnamed_addr constant [33 x i8] c"EVP_PKEY_paramgen(pctx, &params)\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.162 = private unnamed_addr constant [57 x i8] c"kctx = EVP_PKEY_CTX_new_from_pkey(testctx, params, NULL)\00", align 1
@.str.163 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_keygen_init(kctx)\00", align 1
@.str.164 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_keygen(kctx, &key)\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.166 = private unnamed_addr constant [87 x i8] c"evp_keymgmt_util_export(key, OSSL_KEYMGMT_SELECT_ALL, ec_export_get_encoding_cb, &enc)\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"enc\00", align 1
@.str.168 = private unnamed_addr constant [27 x i8] c"ec_encodings[idx].encoding\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@.str.171 = private unnamed_addr constant [65 x i8] c"p = OSSL_PARAM_locate_const(params, OSSL_PKEY_PARAM_EC_ENCODING)\00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.173 = private unnamed_addr constant [45 x i8] c"OSSL_PARAM_get_utf8_string_ptr(p, &enc_name)\00", align 1
@__const.test_EVP_SM2.sm2_id = private unnamed_addr constant [10 x i8] c"\01\02\03\04letter", align 1
@.str.174 = private unnamed_addr constant [61 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, \22SM2\22, testpropq)\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"SM2\00", align 1
@.str.176 = private unnamed_addr constant [34 x i8] c"EVP_PKEY_paramgen_init(pctx) == 1\00", align 1
@.str.177 = private unnamed_addr constant [54 x i8] c"EVP_PKEY_CTX_set_ec_paramgen_curve_nid(pctx, NID_sm2)\00", align 1
@.str.178 = private unnamed_addr constant [37 x i8] c"EVP_PKEY_paramgen(pctx, &pkeyparams)\00", align 1
@.str.179 = private unnamed_addr constant [66 x i8] c"kctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkeyparams, testpropq)\00", align 1
@.str.180 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_keygen(kctx, &pkey)\00", align 1
@.str.181 = private unnamed_addr constant [33 x i8] c"md_ctx_verify = EVP_MD_CTX_new()\00", align 1
@.str.182 = private unnamed_addr constant [60 x i8] c"sctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)\00", align 1
@.str.183 = private unnamed_addr constant [51 x i8] c"check_md = EVP_MD_fetch(testctx, \22sm3\22, testpropq)\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"sm3\00", align 1
@.str.185 = private unnamed_addr constant [55 x i8] c"EVP_DigestSignInit(md_ctx, NULL, check_md, NULL, pkey)\00", align 1
@.str.186 = private unnamed_addr constant [51 x i8] c"EVP_PKEY_CTX_set1_id(sctx, sm2_id, sizeof(sm2_id))\00", align 1
@.str.187 = private unnamed_addr constant [64 x i8] c"EVP_DigestVerifyInit(md_ctx_verify, NULL, check_md, NULL, pkey)\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"SM3\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"SHA2-256\00", align 1
@__const.test_EVP_SM2.mdnames = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.190, i32 0, i32 0)], align 16
@.str.191 = private unnamed_addr constant [60 x i8] c"cctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)\00", align 1
@.str.192 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_encrypt_init(cctx)\00", align 1
@.str.193 = private unnamed_addr constant [39 x i8] c"EVP_PKEY_CTX_set_params(cctx, sparams)\00", align 1
@.str.194 = private unnamed_addr constant [67 x i8] c"EVP_PKEY_encrypt(cctx, ciphertext, &ctext_len, kMsg, sizeof(kMsg))\00", align 1
@.str.195 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_decrypt_init(cctx)\00", align 1
@.str.196 = private unnamed_addr constant [69 x i8] c"EVP_PKEY_decrypt(cctx, plaintext, &ptext_len, ciphertext, ctext_len)\00", align 1
@.str.197 = private unnamed_addr constant [39 x i8] c"EVP_PKEY_CTX_get_params(cctx, gparams)\00", align 1
@.str.198 = private unnamed_addr constant [52 x i8] c"check_md = EVP_MD_fetch(testctx, mdname, testpropq)\00", align 1
@.str.199 = private unnamed_addr constant [34 x i8] c"EVP_MD_is_a(check_md, mdnames[i])\00", align 1
@.str.200 = private unnamed_addr constant [23 x i8] c"Fetched md %s isn't %s\00", align 1
@.str.201 = private unnamed_addr constant [26 x i8] c"ptext_len == sizeof(kMsg)\00", align 1
@.str.202 = private unnamed_addr constant [43 x i8] c"memcmp(plaintext, kMsg, sizeof(kMsg)) == 0\00", align 1
@.str.203 = private unnamed_addr constant [179 x i8] c"-----BEGIN PUBLIC KEY-----\0AMFkwEwYHKoZIzj0CAQYIKoEcz1UBgi0DQgAEp1KLWq1ZE2jmoAnnBJE1LBGxVr18\0AYvvqECWCpXfAQ9qUJ+UmthnUPf0iM3SaXKHe6PlLIDyNlWMWb9RUh/yU3g==\0A-----END PUBLIC KEY-----\0A\00", align 1
@.str.204 = private unnamed_addr constant [15 x i8] c"message digest\00", align 1
@.str.205 = private unnamed_addr constant [19 x i8] c"ALICE123@YAHOO.COM\00", align 1
@__const.test_EVP_SM2_verify.signature = private unnamed_addr constant [70 x i8] c"0D\02 [\DB\AB\81O\BB\8Bi\B1\05\9C\99;\B2E\06J0\15Y\84\CD\EE0`6W\87\EF\\\D0\BE\02 C\8D\1F\C7wr9\BBr\E1\FD\07X\D5\82\C8-\BA;,F$\E3P\FF\04\C7\A0q\9F\A4p", align 16
@.str.206 = private unnamed_addr constant [12 x i8] c"bio != NULL\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"pkey != NULL\00", align 1
@.str.208 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_is_a(pkey, \22SM2\22)\00", align 1
@.str.209 = private unnamed_addr constant [24 x i8] c"mctx = EVP_MD_CTX_new()\00", align 1
@.str.210 = private unnamed_addr constant [60 x i8] c"pctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)\00", align 1
@.str.211 = private unnamed_addr constant [46 x i8] c"sm3 = EVP_MD_fetch(testctx, \22sm3\22, testpropq)\00", align 1
@.str.212 = private unnamed_addr constant [50 x i8] c"EVP_DigestVerifyInit(mctx, NULL, sm3, NULL, pkey)\00", align 1
@.str.213 = private unnamed_addr constant [43 x i8] c"EVP_PKEY_CTX_set1_id(pctx, id, strlen(id))\00", align 1
@.str.214 = private unnamed_addr constant [47 x i8] c"EVP_DigestVerifyUpdate(mctx, msg, strlen(msg))\00", align 1
@.str.215 = private unnamed_addr constant [58 x i8] c"EVP_DigestVerifyFinal(mctx, signature, sizeof(signature))\00", align 1
@keys = internal unnamed_addr constant [8 x %struct.keys_st] [%struct.keys_st { i32 855, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_HKDF.salt, i32 0, i32 0), i8* null }, %struct.keys_st { i32 855, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.225, i32 0, i32 0), i8* null }, %struct.keys_st { i32 1061, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.226, i32 0, i32 0), i8* null }, %struct.keys_st { i32 1062, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.227, i32 0, i32 0), i8* null }, %struct.keys_st { i32 1034, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.228, i32 0, i32 0) }, %struct.keys_st { i32 1087, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.228, i32 0, i32 0) }, %struct.keys_st { i32 1035, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.230, i32 0, i32 0) }, %struct.keys_st { i32 1088, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.232, i32 0, i32 0) }], align 16
@.str.216 = private unnamed_addr constant [24 x i8] c"EVP_PKEY_eq(pkey, pkey)\00", align 1
@.str.217 = private unnamed_addr constant [47 x i8] c"EVP_PKEY_get_raw_private_key(pkey, NULL, &len)\00", align 1
@.str.218 = private unnamed_addr constant [46 x i8] c"EVP_PKEY_get_raw_public_key(pkey, NULL, &len)\00", align 1
@.str.219 = private unnamed_addr constant [13 x i8] c"len == inlen\00", align 1
@.str.220 = private unnamed_addr constant [46 x i8] c"EVP_PKEY_get_raw_private_key(pkey, buf, &len)\00", align 1
@.str.221 = private unnamed_addr constant [45 x i8] c"EVP_PKEY_get_raw_public_key(pkey, buf, &len)\00", align 1
@.str.222 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.225 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.226 = private unnamed_addr constant [33 x i8] c"01234567890123456789012345678901\00", align 1
@.str.227 = private unnamed_addr constant [17 x i8] c"0123456789012345\00", align 1
@.str.228 = private unnamed_addr constant [33 x i8] c"abcdefghijklmnopqrstuvwxyzabcdef\00", align 1
@.str.229 = private unnamed_addr constant [57 x i8] c"01234567890123456789012345678901234567890123456789012345\00", align 1
@.str.230 = private unnamed_addr constant [57 x i8] c"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd\00", align 1
@.str.231 = private unnamed_addr constant [58 x i8] c"012345678901234567890123456789012345678901234567890123456\00", align 1
@.str.232 = private unnamed_addr constant [58 x i8] c"abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcde\00", align 1
@keycheckdata = internal unnamed_addr constant [7 x %struct.APK_DATA_st] [%struct.APK_DATA_st { i8* getelementptr inbounds ([608 x i8], [608 x i8]* @kExampleRSAKeyDER, i32 0, i32 0), i64 608, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i32 6, i32 1, i32 1, i32 1, i32 0 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([1067 x i8], [1067 x i8]* @kExampleBadRSAKeyDER, i32 0, i32 0), i64 1067, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i32 6, i32 0, i32 1, i32 1, i32 0 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([121 x i8], [121 x i8]* @kExampleECKeyDER, i32 0, i32 0), i64 121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i32 0, i32 0), i32 408, i32 1, i32 1, i32 1, i32 0 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([91 x i8], [91 x i8]* @kExampleECPubKeyDER, i32 0, i32 0), i64 91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i32 0, i32 0), i32 408, i32 0, i32 1, i32 1, i32 1 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @pExampleECParamDER, i32 0, i32 0), i64 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i32 0, i32 0), i32 408, i32 0, i32 0, i32 1, i32 2 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([48 x i8], [48 x i8]* @kExampleED25519KeyDER, i32 0, i32 0), i64 48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.245, i32 0, i32 0), i32 1087, i32 1, i32 1, i32 1, i32 0 }, %struct.APK_DATA_st { i8* getelementptr inbounds ([44 x i8], [44 x i8]* @kExampleED25519PubKeyDER, i32 0, i32 0), i64 44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.245, i32 0, i32 0), i32 1087, i32 0, i32 1, i32 1, i32 1 }], align 16
@.str.233 = private unnamed_addr constant [55 x i8] c"pkey = load_example_key(ak->keytype, input, input_len)\00", align 1
@.str.234 = private unnamed_addr constant [59 x i8] c"ctx = EVP_PKEY_CTX_new_from_pkey(testctx, pkey, testpropq)\00", align 1
@.str.235 = private unnamed_addr constant [20 x i8] c"EVP_PKEY_check(ctx)\00", align 1
@.str.236 = private unnamed_addr constant [15 x i8] c"expected_check\00", align 1
@.str.237 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_public_check(ctx)\00", align 1
@.str.238 = private unnamed_addr constant [19 x i8] c"expected_pub_check\00", align 1
@.str.239 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_param_check(ctx)\00", align 1
@.str.240 = private unnamed_addr constant [21 x i8] c"expected_param_check\00", align 1
@.str.241 = private unnamed_addr constant [21 x i8] c"EVP_PKEY_check(ctx2)\00", align 1
@.str.242 = private unnamed_addr constant [7 x i8] c"0xbeef\00", align 1
@.str.243 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_public_check(ctx2)\00", align 1
@.str.244 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_param_check(ctx2)\00", align 1
@kExampleBadRSAKeyDER = internal constant [1067 x i8] c"0\82\04'\02\01\00\02\82\01\01\00\A6\1A\1En{\EE\C6\89f\E7\93\EFT\12h\EA\BF\86/\DD\D2y\B8\A9n\03\C2\A3\B9\A3\E1K*\B3\F8\B4\CD\EA\BE$\A6W[\83\1F\0F\F2\D3\B7\AC~\D6\8En\1E\BF\B8s\8C\05V\E65\1F\E9\04\0B\09\86}\F1&\08\99\AD{\C8M\94\B0\0B\8B8\A0\\b\A0\AB\D3\8F\D4\09`r\1E3P\80n\22\A6wWk\9A3!f\87n!{\C7$\0E\D8\13\DF\83\DE\CD@X\1D\84\86\EB\B8\12N\D2\FA\80\1F\E4\E7\96)\B8\CC\CEfmS\CA\B9Z\D7\F6\84l-\9A\1A\14\1CN\939\BAt\ED\ED\87\87^Hu6\F0\BC4\FB)\F9\9F\96[\0B\A7T0Q)\18[}\AC\0F\D6_|\F8\98\8C\D8\86b\B3\DC\FF\0F\FFz\AF\\LaI.\C8\95\86\C4\0E\87\FC\1D\CF\8B|a\F6\D8\D0i\F6\CD\8A\8C\F6b\A2V\A9\E3\D1\CFM\A0\F6- \0A\04\B7\A2\F7\B5\99G\18V\85\87\C7\02\03\01\00\01\02\82\01\01\00\99A8\1A\D0\96z\F0\83\D5\DF\94\CE\89=\ECzR!\10\16\06\E0\EE\D2\E6\FDK{\19M\E1\C0\C0\D5\14]y\DD~\8BK\C6\CF\B0uR\A3-\B1&Fh\9C\0A\1A\F2\E1\09\ACS\85\8C6\A9\14e\EA\A0\00\CB\E3?\C4+a.k\06iw\FD8~\1D?\92\E7w\08\19\A7\9D)-\DCB\C6|\D7\D3\A8\01,\F2\D5\82W\CBU=\E7\AA\D2\0600\05\E6\F2G\86\BA\C6ad\EBO*^\07)\E0\96\B2C\FF_\1AT\16\CF\B5V\\\A0\9B\0C\FD\B3\D2\E3y\1D!\E2\D6\13\C4t\A6\F5\8E\8E\81\BB\B4\AD\8A\F0\93\0A\D8\0AB6\BC\E5&*\0D]W\13\C5N/\12\0E\EF\A7\81\1E\C3\A5\DB\C9$\EB\1A\A1\F9\F6\A1x\98\93wBE\03\E2\C9\A2\FE-w\C8\C6\AC\9B\98\89m\9A\E7ac\B7\F2\EC\D6\B1\A1n\0A\1A\FF\FDC(\C3\0C\DC\F2GO'\AA\99\04\8E\AC\E8|\01\02\04\124Vx\02\81\81\00\CAi\E5\BB:\90\82\CB\82P/)\E2vjWUEN5\18a\E0\12p\C0\AB\C7\80\A2\D4F4\03\A0\19&#\9E\EF\1A\CBu\D6\BA\81\F4~R\E5*\E8\F1Il\0F\1A\A0\F9\C6\E7\EC`\E4\CB*\B5V\E9\9C\CD\19u\92\B1f\CE\C3\D9=\11\CB\C4\09\CE\1E0\BA/``U\8D\02\DC]\AF\F7R1\17\07S 3\AD\8C\D5/Z\D0W\D7\D1\80\D6:\9B\04O5\BF\E7\D5\BC\8F\D4\81\02\81\81\00\C0\9F\F8\CD\F7?&\8A=M+\0C\01\D0\A2\B4\18\FE\F7^/\06\13\CDc\AA\12\A9$\86\E3\F3{\DA\1A<\B18\80\80\EFdd\A1\9B\FEvc\8E\83\D2\D9\B9\86\B0\E6\A6\0C~\A8\84\90\98\0C\1E\F3\14w\E0_\81\08\11\8F\A6#\C4\BA\C0\8A\E4\C6\E3\\\BE\C5\EC,\B9\D8\8CM\1A\9D\E7|\85L\0DqNr3\1B\FE\A9\17rvV\9Dt~Rg\9A\87\9A\DB0\DE\E4I(;\D2g\AF\02\81\81\00\89t\9A\8E\A7\B9\A5(\C0h\E5nc\1C\99 \8F\86\8E\12\9Ei0\FA4\D9\92\8D\DB|7\FD(\ABa\98R\7F\14\1A9\AE\FBj\03\A3\E6\BD\B6[k\E5^\9D\C6\A5\07'T\17\D0=\84\9B:\A0\D9\1E\99lc\17\AB\F1\1FI\BA\95\E3;\86\8FB\A4\89\F5\94\8F\8BF\BE\84\BAJ\BC\0D_F\EB\E8\ECC\8C\1E\AD\19i/\08\86z?}\0F\07\97\F3\9A{\B5\B2\C1\8C\95h\04\A0\81\02\81\80N\BF~\1B\CB\13au;\DBY_\B1\D4\B8\EB\9Es\B5\E7\F6\89=\1C\DA\F06\FF5\BD\1E\0Bt\E3\9E\F0\F2\F7\D7\82\B7{j\1B\0E0J\98\0E\B4\F9\81\07\E4u9\E9S\CA\BB\\\AA\93\07\0E\A8/\BA\98I0\A7\CC\1A<h\0C\E1\A4\B1\05\E6\E0%xX\147\F5\1F\E3\22\EF\A8\0E\22\A0\94:\F6\C9\13\E6\06\BF\7F\99\C6\CC\D8\C6\BE\D9.$\C7i\8C\95\BA\F6\04\B3\0A\F4\CB\F0\CE", align 16
@kExampleECPubKeyDER = internal constant [91 x i8] c"0Y0\13\06\07*\86H\CE=\02\01\06\08*\86H\CE=\03\01\07\03B\00\04\BA\EB\83\FB;\B2\FF0S\DB\CE2\F2\AC\AED\0D=\13S\B8\D1hU\DEDF\05\A6\C9\D2\04\B7\E3\A2\96\C8\B2^\22\03\D7\03z\8B\13\\BI\C2\AB\86\D6\ACk\93 Vj\C6\C8\A5\0B\E5", align 16
@pExampleECParamDER = internal constant [10 x i8] c"\06\08*\86H\CE=\03\01\07", align 1
@kExampleED25519KeyDER = internal constant [48 x i8] c"0.\02\01\000\05\06\03+ep\04\22\04 \BA{\BA \1B\02u:\E8\88\FE\00\CD\8B\C6\F4\\G\09Ff\E4r\85%&^\123H\F6P", align 16
@.str.245 = private unnamed_addr constant [8 x i8] c"ED25519\00", align 1
@kExampleED25519PubKeyDER = internal constant [44 x i8] c"0*0\05\06\03+ep\03!\00\F5\C5\EBR>}\07\86\B2U\07E\EF[| \E8f(0<\8A\82@\97\A3\08\DCe\809)", align 16
@test_CMAC_keygen.key = internal global [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@.str.246 = private unnamed_addr constant [100 x i8] c"EVP_PKEY_CTX_ctrl(kctx, -1, EVP_PKEY_OP_KEYGEN, EVP_PKEY_CTRL_CIPHER, 0, (void *)EVP_aes_256_ecb())\00", align 1
@.str.247 = private unnamed_addr constant [101 x i8] c"EVP_PKEY_CTX_ctrl(kctx, -1, EVP_PKEY_OP_KEYGEN, EVP_PKEY_CTRL_SET_MAC_KEY, sizeof(key), (void *)key)\00", align 1
@.str.248 = private unnamed_addr constant [24 x i8] c"get_cmac_val(pkey, mac)\00", align 1
@.str.249 = private unnamed_addr constant [25 x i8] c"get_cmac_val(pkey, mac2)\00", align 1
@.str.250 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.251 = private unnamed_addr constant [5 x i8] c"mac2\00", align 1
@__const.get_cmac_val.msg = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@.str.252 = private unnamed_addr constant [6 x i8] c"mdctx\00", align 1
@.str.253 = private unnamed_addr constant [73 x i8] c"EVP_DigestSignInit_ex(mdctx, NULL, NULL, testctx, testpropq, pkey, NULL)\00", align 1
@.str.254 = private unnamed_addr constant [46 x i8] c"EVP_DigestSignUpdate(mdctx, msg, sizeof(msg))\00", align 1
@.str.255 = private unnamed_addr constant [41 x i8] c"EVP_DigestSignFinal(mdctx, mac, &maclen)\00", align 1
@.str.256 = private unnamed_addr constant [7 x i8] c"maclen\00", align 1
@.str.257 = private unnamed_addr constant [15 x i8] c"AES_BLOCK_SIZE\00", align 1
@__const.test_HKDF.salt = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@__const.test_HKDF.key = private unnamed_addr constant [31 x i8] c"012345678901234567890123456789\00", align 16
@__const.test_HKDF.info = private unnamed_addr constant [11 x i8] c"infostring\00", align 1
@__const.test_HKDF.expected = private unnamed_addr constant [20 x i8] c"\E5\07p\7F\C6x\D6T2_~\C5{Y>\D8\03k\ED\CA", align 16
@.str.258 = private unnamed_addr constant [62 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, \22HKDF\22, testpropq)\00", align 1
@.str.259 = private unnamed_addr constant [5 x i8] c"HKDF\00", align 1
@.str.260 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_derive_init(pctx)\00", align 1
@.str.261 = private unnamed_addr constant [45 x i8] c"EVP_PKEY_CTX_set_hkdf_md(pctx, EVP_sha256())\00", align 1
@.str.262 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_CTX_set1_hkdf_salt(pctx, salt, sizeof(salt) - 1)\00", align 1
@.str.263 = private unnamed_addr constant [55 x i8] c"EVP_PKEY_CTX_set1_hkdf_key(pctx, key, sizeof(key) - 1)\00", align 1
@.str.264 = private unnamed_addr constant [58 x i8] c"EVP_PKEY_CTX_add1_hkdf_info(pctx, info, sizeof(info) - 1)\00", align 1
@.str.265 = private unnamed_addr constant [36 x i8] c"EVP_PKEY_derive(pctx, out, &outlen)\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.267 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@__const.test_emptyikm_HKDF.salt = private unnamed_addr constant [11 x i8] c"9876543210\00", align 1
@__const.test_emptyikm_HKDF.info = private unnamed_addr constant [11 x i8] c"stringinfo\00", align 1
@__const.test_emptyikm_HKDF.expected = private unnamed_addr constant [20 x i8] c"h\81\A5>[\9C{o.\EC\C8G|\FAG5f\82\150", align 16
@.str.268 = private unnamed_addr constant [3 x i8] c"xp\00", align 1
@.str.269 = private unnamed_addr constant [36 x i8] c"d2i_X509_PUBKEY(&xp, &p, input_len)\00", align 1
@.str.270 = private unnamed_addr constant [21 x i8] c"X509_PUBKEY_get0(xp)\00", align 1
@kExampleBadECPubKeyDER = internal constant [91 x i8] c"0Y0\13\06\07*\86H\CE=\02\02\06\08*\86H\CE=\03\01\07\03B\00\04\BA\EB\83\FB;\B2\FF0S\DB\CE2\F2\AC\AED\0D=\13S\B8\D1hU\DEDF\05\A6\C9\D2\04\B7\E3\A2\96\C8\B2^\22\03\D7\03z\8B\13\\BI\C2\AB\86\D6\ACk\93 Vj\C6\C8\A5\0B\E5", align 16
@.str.271 = private unnamed_addr constant [41 x i8] c"xp = d2i_X509_PUBKEY(&xp, &p, input_len)\00", align 1
@.str.272 = private unnamed_addr constant [29 x i8] c"X509_PUBKEY_get0(xp) == NULL\00", align 1
@.str.273 = private unnamed_addr constant [25 x i8] c"xq = X509_PUBKEY_dup(xp)\00", align 1
@.str.274 = private unnamed_addr constant [3 x i8] c"xq\00", align 1
@.str.275 = private unnamed_addr constant [21 x i8] c"X509_PUBKEY_get0(xq)\00", align 1
@.str.276 = private unnamed_addr constant [29 x i8] c"X509_PUBKEY_get0(xq) == NULL\00", align 1
@ec_der_pub_keys = internal unnamed_addr constant [3 x %struct.ec_der_pub_keys_st] [%struct.ec_der_pub_keys_st { i8* getelementptr inbounds ([66 x i8], [66 x i8]* @ec_public_sect163k1_validxy, i32 0, i32 0), i64 66, i32 1 }, %struct.ec_der_pub_keys_st { i8* getelementptr inbounds ([66 x i8], [66 x i8]* @ec_public_sect163k1_badx, i32 0, i32 0), i64 66, i32 0 }, %struct.ec_der_pub_keys_st { i8* getelementptr inbounds ([66 x i8], [66 x i8]* @ec_public_sect163k1_bady, i32 0, i32 0), i64 66, i32 0 }], align 16
@ec_public_sect163k1_validxy = internal constant [66 x i8] c"0@0\10\06\07*\86H\CE=\02\01\06\05+\81\04\00\01\03,\00\04\02\84X\A6\D4\A05+\AE\F0\C0i\05\CF*P3\F9\E3\92y\02\D1{\9F\22\00\F0;\0E].\B7#$\F3j\D8\17eA/", align 16
@ec_public_sect163k1_badx = internal constant [66 x i8] c"0@0\10\06\07*\86H\CE=\02\01\06\05+\81\04\00\01\03,\00\04\0A\84X\A6\D4\A05+\AE\F0\C0i\05\CF*P3\F9\E3\92\B0\02\D1{\9F\22\00\F0;\0E].\B7#$\F3j\D8\17eA/", align 16
@ec_public_sect163k1_bady = internal constant [66 x i8] c"0@0\10\06\07*\86H\CE=\02\01\06\05+\81\04\00\01\03,\00\04\02\84X\A6\D4\A05+\AE\F0\C0i\05\CF*P3\F9\E3\92y\0A\D1{\9F\22\00\F0;\0E].\B7#$\F3j\D8\17eA\E6", align 16
@.str.277 = private unnamed_addr constant [56 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, \22DSA\22, NULL)\00", align 1
@.str.278 = private unnamed_addr constant [27 x i8] c"bld = OSSL_PARAM_BLD_new()\00", align 1
@.str.279 = private unnamed_addr constant [13 x i8] c"p = BN_new()\00", align 1
@.str.280 = private unnamed_addr constant [13 x i8] c"q = BN_new()\00", align 1
@.str.281 = private unnamed_addr constant [13 x i8] c"g = BN_new()\00", align 1
@.str.282 = private unnamed_addr constant [15 x i8] c"pub = BN_new()\00", align 1
@.str.283 = private unnamed_addr constant [16 x i8] c"priv = BN_new()\00", align 1
@.str.284 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_P, p)\00", align 1
@.str.285 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_Q, q)\00", align 1
@.str.286 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.287 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_G, g)\00", align 1
@.str.288 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.289 = private unnamed_addr constant [58 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_PUB_KEY, pub)\00", align 1
@.str.290 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.291 = private unnamed_addr constant [60 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_PRIV_KEY, priv)\00", align 1
@.str.292 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.293 = private unnamed_addr constant [38 x i8] c"params = OSSL_PARAM_BLD_to_param(bld)\00", align 1
@.str.294 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_fromdata_init(pctx)\00", align 1
@.str.295 = private unnamed_addr constant [57 x i8] c"EVP_PKEY_fromdata(pctx, &pkey, EVP_PKEY_KEYPAIR, params)\00", align 1
@.str.296 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.297 = private unnamed_addr constant [24 x i8] c"EVP_PKEY_sign_init(ctx)\00", align 1
@.str.298 = private unnamed_addr constant [61 x i8] c"OSSL_PARAM_locate_const(params, OSSL_SIGNATURE_PARAM_DIGEST)\00", align 1
@.str.299 = private unnamed_addr constant [67 x i8] c"OSSL_PARAM_locate_const(params, OSSL_SIGNATURE_PARAM_ALGORITHM_ID)\00", align 1
@.str.300 = private unnamed_addr constant [13 x i8] c"algorithm-id\00", align 1
@.str.301 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1
@.str.302 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_CTX_set_params(ctx, ourparams)\00", align 1
@.str.303 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_CTX_get_params(ctx, ourparams)\00", align 1
@.str.304 = private unnamed_addr constant [7 x i8] c"mdname\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"\22SHA512\22\00", align 1
@.str.306 = private unnamed_addr constant [49 x i8] c"EVP_PKEY_CTX_set_signature_md(ctx, EVP_sha256())\00", align 1
@.str.307 = private unnamed_addr constant [40 x i8] c"EVP_PKEY_CTX_get_signature_md(ctx, &md)\00", align 1
@.str.308 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.309 = private unnamed_addr constant [13 x i8] c"EVP_sha256()\00", align 1
@.str.310 = private unnamed_addr constant [75 x i8] c"EVP_DigestSignInit_ex(mdctx, NULL, \22SHA1\22, testctx, testpropq, pkey, NULL)\00", align 1
@.str.311 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@.str.312 = private unnamed_addr constant [49 x i8] c"strcmp(params[0].key, OSSL_DIGEST_PARAM_SSL3_MS)\00", align 1
@.str.313 = private unnamed_addr constant [8 x i8] c"ssl3-ms\00", align 1
@.str.314 = private unnamed_addr constant [14 x i8] c"params[1].key\00", align 1
@.str.315 = private unnamed_addr constant [40 x i8] c"EVP_MD_CTX_set_params(mdctx, ourparams)\00", align 1
@.str.316 = private unnamed_addr constant [63 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, keytype, testpropq)\00", align 1
@.str.317 = private unnamed_addr constant [56 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(testctx, \22RSA\22, NULL)\00", align 1
@.str.318 = private unnamed_addr constant [13 x i8] c"n = BN_new()\00", align 1
@.str.319 = private unnamed_addr constant [13 x i8] c"e = BN_new()\00", align 1
@.str.320 = private unnamed_addr constant [13 x i8] c"d = BN_new()\00", align 1
@.str.321 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_N, n)\00", align 1
@.str.322 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.323 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_E, e)\00", align 1
@.str.324 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.325 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_D, d)\00", align 1
@.str.326 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@__const.test_decrypt_null_chunks.key = private unnamed_addr constant [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\01", align 16
@__const.test_decrypt_null_chunks.iv = private unnamed_addr constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@__const.test_decrypt_null_chunks.msg = private unnamed_addr constant [52 x i8] c"It was the best of times, it was the worst of times\00", align 16
@.str.327 = private unnamed_addr constant [67 x i8] c"cipher = EVP_CIPHER_fetch(testctx, \22ChaCha20-Poly1305\22, testpropq)\00", align 1
@.str.328 = private unnamed_addr constant [18 x i8] c"ChaCha20-Poly1305\00", align 1
@.str.329 = private unnamed_addr constant [47 x i8] c"EVP_EncryptInit_ex(ctx, cipher, NULL, key, iv)\00", align 1
@.str.330 = private unnamed_addr constant [60 x i8] c"EVP_EncryptUpdate(ctx, ciphertext, &ctlen, msg, enc_offset)\00", align 1
@.str.331 = private unnamed_addr constant [58 x i8] c"EVP_EncryptUpdate(ctx, ciphertext + ctlen, &tmp, NULL, 0)\00", align 1
@.str.332 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.333 = private unnamed_addr constant [93 x i8] c"EVP_EncryptUpdate(ctx, ciphertext + ctlen, &tmp, msg + enc_offset, sizeof(msg) - enc_offset)\00", align 1
@.str.334 = private unnamed_addr constant [13 x i8] c"ctlen += tmp\00", align 1
@.str.335 = private unnamed_addr constant [12 x i8] c"sizeof(msg)\00", align 1
@.str.336 = private unnamed_addr constant [48 x i8] c"EVP_EncryptFinal(ctx, ciphertext + ctlen, &tmp)\00", align 1
@.str.337 = private unnamed_addr constant [47 x i8] c"EVP_DecryptInit_ex(ctx, cipher, NULL, key, iv)\00", align 1
@.str.338 = private unnamed_addr constant [66 x i8] c"EVP_DecryptUpdate(ctx, plaintext, &ptlen, ciphertext, dec_offset)\00", align 1
@.str.339 = private unnamed_addr constant [57 x i8] c"EVP_DecryptUpdate(ctx, plaintext + ptlen, &tmp, NULL, 0)\00", align 1
@.str.340 = private unnamed_addr constant [93 x i8] c"EVP_DecryptUpdate(ctx, plaintext + ptlen, &tmp, ciphertext + dec_offset, ctlen - dec_offset)\00", align 1
@.str.341 = private unnamed_addr constant [13 x i8] c"ptlen += tmp\00", align 1
@.str.342 = private unnamed_addr constant [47 x i8] c"EVP_DecryptFinal(ctx, plaintext + ptlen, &tmp)\00", align 1
@.str.343 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.344 = private unnamed_addr constant [18 x i8] c"pubkey = BN_new()\00", align 1
@.str.345 = private unnamed_addr constant [21 x i8] c"BN_set_word(p, 9999)\00", align 1
@.str.346 = private unnamed_addr constant [18 x i8] c"BN_set_word(g, 2)\00", align 1
@.str.347 = private unnamed_addr constant [26 x i8] c"BN_set_word(pubkey, 4321)\00", align 1
@.str.348 = private unnamed_addr constant [17 x i8] c"noqdh = DH_new()\00", align 1
@.str.349 = private unnamed_addr constant [31 x i8] c"DH_set0_pqg(noqdh, p, NULL, g)\00", align 1
@.str.350 = private unnamed_addr constant [33 x i8] c"DH_set0_key(noqdh, pubkey, NULL)\00", align 1
@.str.351 = private unnamed_addr constant [7 x i8] c"x942dh\00", align 1
@.str.352 = private unnamed_addr constant [6 x i8] c"noqdh\00", align 1
@.str.353 = private unnamed_addr constant [6 x i8] c"pkey1\00", align 1
@.str.354 = private unnamed_addr constant [6 x i8] c"pkey2\00", align 1
@.str.355 = private unnamed_addr constant [34 x i8] c"DH_set0_key(x942dh, pubkey, NULL)\00", align 1
@.str.356 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_set1_DH(pkey1, x942dh)\00", align 1
@.str.357 = private unnamed_addr constant [23 x i8] c"EVP_PKEY_get_id(pkey1)\00", align 1
@.str.358 = private unnamed_addr constant [13 x i8] c"EVP_PKEY_DHX\00", align 1
@.str.359 = private unnamed_addr constant [63 x i8] c"EVP_PKEY_get_bn_param(pkey1, OSSL_PKEY_PARAM_PUB_KEY, &pubkey)\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"pubkey\00", align 1
@.str.361 = private unnamed_addr constant [31 x i8] c"EVP_PKEY_set1_DH(pkey2, noqdh)\00", align 1
@.str.362 = private unnamed_addr constant [23 x i8] c"EVP_PKEY_get_id(pkey2)\00", align 1
@.str.363 = private unnamed_addr constant [12 x i8] c"EVP_PKEY_DH\00", align 1
@.str.364 = private unnamed_addr constant [88 x i8] c"EVP_PKEY_get_octet_string_param(pkey2, OSSL_PKEY_PARAM_PUB_KEY, pub, sizeof(pub), &len)\00", align 1
@.str.365 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.366 = private unnamed_addr constant [49 x i8] c"priv = BN_bin2bn(ec_priv, sizeof(ec_priv), NULL)\00", align 1
@ec_priv = internal global [32 x i8] c"\E9%\F7fX\A4\DD\99a\E7\E8#\85\C2\E83'\C5\\\EB\DBC\9F\D5\F2ZuU\D0.m\16", align 16
@.str.367 = private unnamed_addr constant [77 x i8] c"OSSL_PARAM_BLD_push_utf8_string(bld, OSSL_PKEY_PARAM_GROUP_NAME, \22P-256\22, 0)\00", align 1
@.str.368 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.369 = private unnamed_addr constant [87 x i8] c"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_PUB_KEY, ec_pub, sizeof(ec_pub))\00", align 1
@ec_pub = internal global [65 x i8] c"\04\AD\11\90wKF\EErQ\15\97Jj\A7\AFY\FAK\F2A\C8:\81#\B6\90\04lgf\D0\DC\F2\15\1DAa\B7\95\858Z\84V\E8\B3\0E\F5\C6]\A4T&\B0\F7\A5J3\F1\08\09\B8\DB\03", align 16
@.str.370 = private unnamed_addr constant [6 x i8] c"eckey\00", align 1
@.str.371 = private unnamed_addr constant [36 x i8] c"EC_KEY_set_private_key(eckey, priv)\00", align 1
@.str.372 = private unnamed_addr constant [36 x i8] c"EVP_PKEY_assign_EC_KEY(pkey, eckey)\00", align 1
@.str.373 = private unnamed_addr constant [71 x i8] c"EVP_DigestSignInit_ex(ctx, NULL, NULL, testctx, testpropq, pkey, NULL)\00", align 1
@.str.374 = private unnamed_addr constant [28 x i8] c"dup_pk = EVP_PKEY_dup(pkey)\00", align 1
@.str.375 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_eq(pkey, dup_pk)\00", align 1
@.str.376 = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@.str.377 = private unnamed_addr constant [46 x i8] c"ctx = EVP_PKEY_CTX_new_id(EVP_PKEY_RSA, NULL)\00", align 1
@.str.378 = private unnamed_addr constant [22 x i8] c"tkey = EVP_PKEY_new()\00", align 1
@.str.379 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_set_type(tkey, EVP_PKEY_RSA)\00", align 1
@.str.380 = private unnamed_addr constant [35 x i8] c"ctx = EVP_PKEY_CTX_new(tkey, NULL)\00", align 1
@.str.381 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_keygen_init(ctx)\00", align 1
@.str.382 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_keygen(ctx, &pkey)\00", align 1
@.str.383 = private unnamed_addr constant [7 x i8] c"tmpctx\00", align 1
@.str.384 = private unnamed_addr constant [12 x i8] c"tmpnullprov\00", align 1
@.str.385 = private unnamed_addr constant [20 x i8] c"No test for case %d\00", align 1
@.str.386 = private unnamed_addr constant [5 x i8] c"pctx\00", align 1
@test_rand_agglomeration.seed = internal global [65 x i8] c"It does not matter how slowly you go as long as you do not stop.\00", align 16
@.str.387 = private unnamed_addr constant [20 x i8] c"sizeof(seed) % step\00", align 1
@.str.388 = private unnamed_addr constant [55 x i8] c"rand = EVP_RAND_fetch(testctx, \22TEST-RAND\22, testpropq)\00", align 1
@.str.389 = private unnamed_addr constant [10 x i8] c"TEST-RAND\00", align 1
@.str.390 = private unnamed_addr constant [13 x i8] c"test_entropy\00", align 1
@.str.391 = private unnamed_addr constant [12 x i8] c"max_request\00", align 1
@.str.392 = private unnamed_addr constant [37 x i8] c"EVP_RAND_CTX_set_params(ctx, params)\00", align 1
@.str.393 = private unnamed_addr constant [56 x i8] c"EVP_RAND_generate(ctx, out, sizeof(out), 0, 1, NULL, 0)\00", align 1
@__const.test_evp_iv_aes.key = private unnamed_addr constant [16 x i8] c"LC\DB\DDBsG\D1\E5b}\CDMvMW", align 16
@__const.test_evp_iv_aes.init_iv = private unnamed_addr constant [16 x i8] c"Wq}\AD\DB\9B\98\82ZU\91\81B\A8\894", align 16
@test_evp_iv_aes.msg = internal constant [16 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@__const.test_evp_iv_aes.cbc_state = private unnamed_addr constant [16 x i8] c"\10/\05\CC\C2Ur\B9\88\E6J\17\10t\22^", align 16
@__const.test_evp_iv_aes.ofb_state = private unnamed_addr constant [16 x i8] c"v\E6fa\D0\8A\E4d\DDf\BF\00\F0\E3o\FD", align 16
@__const.test_evp_iv_aes.cfb_state = private unnamed_addr constant [16 x i8] c"w\E4ee\D5\8C\E3l\D4l\B4\0C\FD\ED`\ED", align 16
@__const.test_evp_iv_aes.ccm_state = private unnamed_addr constant [7 x i8] c"Wq}\AD\DB\9B\98", align 1
@__const.test_evp_iv_aes.ocb_state = private unnamed_addr constant [12 x i8] c"Wq}\AD\DB\9B\98\82ZU\91\81", align 1
@.str.394 = private unnamed_addr constant [12 x i8] c"aes-128-cbc\00", align 1
@.str.395 = private unnamed_addr constant [12 x i8] c"aes-128-ofb\00", align 1
@.str.396 = private unnamed_addr constant [12 x i8] c"aes-128-cfb\00", align 1
@.str.397 = private unnamed_addr constant [12 x i8] c"aes-128-gcm\00", align 1
@.str.398 = private unnamed_addr constant [12 x i8] c"aes-128-ccm\00", align 1
@.str.399 = private unnamed_addr constant [12 x i8] c"aes-128-ocb\00", align 1
@.str.400 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.401 = private unnamed_addr constant [29 x i8] c"(ctx = EVP_CIPHER_CTX_new())\00", align 1
@.str.402 = private unnamed_addr constant [50 x i8] c"EVP_EncryptInit_ex(ctx, type, NULL, key, init_iv)\00", align 1
@.str.403 = private unnamed_addr constant [64 x i8] c"EVP_EncryptUpdate(ctx, ciphertext, &len, msg, (int)sizeof(msg))\00", align 1
@.str.404 = private unnamed_addr constant [54 x i8] c"EVP_CIPHER_CTX_get_original_iv(ctx, oiv, sizeof(oiv))\00", align 1
@.str.405 = private unnamed_addr constant [51 x i8] c"EVP_CIPHER_CTX_get_updated_iv(ctx, iv, sizeof(iv))\00", align 1
@.str.406 = private unnamed_addr constant [43 x i8] c"EVP_EncryptFinal_ex(ctx, ciphertext, &len)\00", align 1
@.str.407 = private unnamed_addr constant [8 x i8] c"init_iv\00", align 1
@.str.408 = private unnamed_addr constant [4 x i8] c"oiv\00", align 1
@.str.409 = private unnamed_addr constant [7 x i8] c"ref_iv\00", align 1
@.str.410 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.411 = private unnamed_addr constant [48 x i8] c"EVP_EncryptInit_ex(ctx, NULL, NULL, NULL, NULL)\00", align 1
@test_evp_iv_des.key = internal constant [24 x i8] c"\01#Eg\89\AB\CD\EF\F1\E0\D3\C2\B5\A4\97\86\FE\DC\BA\98vT2\10", align 16
@test_evp_iv_des.init_iv = internal constant [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@test_evp_iv_des.msg = internal constant [16 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@test_evp_iv_des.cbc_state_des = internal constant [8 x i8] c"O\A3\85\CD\8B\F3\06*", align 1
@test_evp_iv_des.cbc_state_3des = internal constant [8 x i8] c"5'}el\FBP\D9", align 1
@test_evp_iv_des.ofb_state_des = internal constant [8 x i8] c"\A7\0D\1DE\F9\96?,", align 1
@test_evp_iv_des.ofb_state_3des = internal constant [8 x i8] c"\AB\16$\BB[\AC\ED^", align 1
@test_evp_iv_des.cfb_state_des = internal constant [8 x i8] c"\91\EBm)K\08\BDs", align 1
@test_evp_iv_des.cfb_state_3des = internal constant [8 x i8] c"4\DD\FBG3\1Ca\F7", align 1
@.str.412 = private unnamed_addr constant [43 x i8] c"Test requires legacy provider to be loaded\00", align 1
@.str.413 = private unnamed_addr constant [8 x i8] c"des-cbc\00", align 1
@.str.414 = private unnamed_addr constant [8 x i8] c"des-ofb\00", align 1
@.str.415 = private unnamed_addr constant [8 x i8] c"des-cfb\00", align 1
@.str.416 = private unnamed_addr constant [13 x i8] c"des-ede3-cbc\00", align 1
@.str.417 = private unnamed_addr constant [13 x i8] c"des-ede3-ofb\00", align 1
@.str.418 = private unnamed_addr constant [13 x i8] c"des-ede3-cfb\00", align 1
@.str.419 = private unnamed_addr constant [62 x i8] c"(ctx = EVP_PKEY_CTX_new_from_name(testctx, \22RSA\22, testpropq))\00", align 1
@.str.420 = private unnamed_addr constant [43 x i8] c"EVP_PKEY_CTX_set_rsa_keygen_bits(ctx, 512)\00", align 1
@.str.421 = private unnamed_addr constant [44 x i8] c"EVP_PKEY_CTX_set_rsa_pss_keygen_md(ctx, md)\00", align 1
@ecpub_nids = internal unnamed_addr constant [13 x i32] [i32 927, i32 415, i32 715, i32 716, i32 726, i32 727, i32 730, i32 731, i32 732, i32 733, i32 734, i32 931, i32 933], align 16
@.str.422 = private unnamed_addr constant [49 x i8] c"EVP_PKEY_CTX_set_ec_paramgen_curve_nid(ctx, nid)\00", align 1
@.str.423 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@.str.424 = private unnamed_addr constant [8 x i8] c"savelen\00", align 1
@.str.425 = private unnamed_addr constant [25 x i8] c"(pkey2 = EVP_PKEY_new())\00", align 1
@.str.426 = private unnamed_addr constant [37 x i8] c"(ec = EC_KEY_new_by_curve_name(nid))\00", align 1
@.str.427 = private unnamed_addr constant [34 x i8] c"EVP_PKEY_assign_EC_KEY(pkey2, ec)\00", align 1
@.str.428 = private unnamed_addr constant [48 x i8] c"d2i_PublicKey(EVP_PKEY_EC, &pkey2, &q, savelen)\00", align 1
@.str.429 = private unnamed_addr constant [25 x i8] c"EVP_PKEY_eq(pkey, pkey2)\00", align 1
@.str.430 = private unnamed_addr constant [43 x i8] c"EVP_MD_names_do_all(sha256, md_names, ctx)\00", align 1
@.str.431 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@success = internal unnamed_addr global i1 false, align 4
@.str.432 = private unnamed_addr constant [12 x i8] c"AES-128-CBC\00", align 1
@.str.433 = private unnamed_addr constant [7 x i8] c"aes128\00", align 1
@evp_init_tests = internal constant [8 x %struct.EVP_INIT_TEST_st] [%struct.EVP_INIT_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @kCFBDefaultKey, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @iCFBIV, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbPlaintext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbCiphertext, i32 0, i32 0), i8* null, i64 0, i64 16, i64 16, i64 0, i32 1, i32 0, i32 1 }, %struct.EVP_INIT_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @kGCMDefaultKey, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @iGCMDefaultIV, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultPlaintext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultCiphertext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultTag, i32 0, i32 0), i64 12, i64 16, i64 16, i64 16, i32 1, i32 0, i32 1 }, %struct.EVP_INIT_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @kCFBDefaultKey, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @iCFBIV, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbPlaintext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbCiphertext, i32 0, i32 0), i8* null, i64 0, i64 16, i64 16, i64 0, i32 0, i32 0, i32 1 }, %struct.EVP_INIT_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @kGCMDefaultKey, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @iGCMDefaultIV, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultPlaintext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultCiphertext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultTag, i32 0, i32 0), i64 12, i64 16, i64 16, i64 16, i32 0, i32 0, i32 1 }, %struct.EVP_INIT_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @kCFBDefaultKey, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @iCFBIV, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbCiphertext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbPlaintext, i32 0, i32 0), i8* null, i64 0, i64 16, i64 16, i64 0, i32 1, i32 1, i32 0 }, %struct.EVP_INIT_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @kGCMDefaultKey, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @iGCMDefaultIV, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultCiphertext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultPlaintext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultTag, i32 0, i32 0), i64 12, i64 16, i64 16, i64 16, i32 1, i32 1, i32 0 }, %struct.EVP_INIT_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.396, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @kCFBDefaultKey, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @iCFBIV, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbCiphertext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbPlaintext, i32 0, i32 0), i8* null, i64 0, i64 16, i64 16, i64 0, i32 0, i32 1, i32 0 }, %struct.EVP_INIT_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.462, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @kGCMDefaultKey, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @iGCMDefaultIV, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultCiphertext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultPlaintext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmDefaultTag, i32 0, i32 0), i64 12, i64 16, i64 16, i64 16, i32 0, i32 1, i32 0 }], align 16
@.str.434 = private unnamed_addr constant [10 x i8] c"CTX_ALLOC\00", align 1
@.str.435 = private unnamed_addr constant [55 x i8] c"type = EVP_CIPHER_fetch(testctx, t->cipher, testpropq)\00", align 1
@.str.436 = private unnamed_addr constant [13 x i8] c"CIPHER_FETCH\00", align 1
@.str.437 = private unnamed_addr constant [59 x i8] c"EVP_CipherInit_ex(ctx, type, NULL, NULL, NULL, t->initenc)\00", align 1
@.str.438 = private unnamed_addr constant [15 x i8] c"EMPTY_ENC_INIT\00", align 1
@.str.439 = private unnamed_addr constant [35 x i8] c"EVP_CIPHER_CTX_set_padding(ctx, 0)\00", align 1
@.str.440 = private unnamed_addr constant [8 x i8] c"PADDING\00", align 1
@.str.441 = private unnamed_addr constant [53 x i8] c"EVP_CipherInit_ex(ctx, NULL, NULL, t->key, NULL, -1)\00", align 1
@.str.442 = private unnamed_addr constant [21 x i8] c"KEY_INIT (before iv)\00", align 1
@.str.443 = private unnamed_addr constant [8 x i8] c"IV_INIT\00", align 1
@.str.444 = private unnamed_addr constant [20 x i8] c"KEY_INIT (after iv)\00", align 1
@.str.445 = private unnamed_addr constant [60 x i8] c"EVP_CipherInit_ex(ctx, NULL, NULL, NULL, NULL, t->finalenc)\00", align 1
@.str.446 = private unnamed_addr constant [15 x i8] c"FINAL_ENC_INIT\00", align 1
@.str.447 = private unnamed_addr constant [60 x i8] c"EVP_CipherUpdate(ctx, outbuf, &outlen1, t->input, t->inlen)\00", align 1
@.str.448 = private unnamed_addr constant [14 x i8] c"CIPHER_UPDATE\00", align 1
@.str.449 = private unnamed_addr constant [75 x i8] c"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG, t->taglen, (void *)t->tag)\00", align 1
@.str.450 = private unnamed_addr constant [8 x i8] c"SET_TAG\00", align 1
@.str.451 = private unnamed_addr constant [52 x i8] c"EVP_CipherFinal_ex(ctx, outbuf + outlen1, &outlen2)\00", align 1
@.str.452 = private unnamed_addr constant [13 x i8] c"CIPHER_FINAL\00", align 1
@.str.453 = private unnamed_addr constant [12 x i8] c"t->expected\00", align 1
@.str.454 = private unnamed_addr constant [7 x i8] c"outbuf\00", align 1
@.str.455 = private unnamed_addr constant [13 x i8] c"WRONG_RESULT\00", align 1
@.str.456 = private unnamed_addr constant [61 x i8] c"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_GET_TAG, taglen, tag)\00", align 1
@.str.457 = private unnamed_addr constant [8 x i8] c"GET_TAG\00", align 1
@.str.458 = private unnamed_addr constant [7 x i8] c"t->tag\00", align 1
@.str.459 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.460 = private unnamed_addr constant [10 x i8] c"TAG_ERROR\00", align 1
@.str.461 = private unnamed_addr constant [21 x i8] c"evp_init_test %d: %s\00", align 1
@kCFBDefaultKey = internal constant [16 x i8] c"+~\15\16(\AE\D2\A6\AB\F7\15\88\09\CFO<", align 16
@iCFBIV = internal constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@cfbPlaintext = internal constant [16 x i8] c"k\C1\BE\E2.@\9F\96\E9=~\11s\93\17*", align 16
@cfbCiphertext = internal constant [16 x i8] c";?\D9.\B7-\AD 34I\F8\E8<\FBJ", align 16
@.str.462 = private unnamed_addr constant [12 x i8] c"aes-256-gcm\00", align 1
@kGCMDefaultKey = internal constant [32 x i8] zeroinitializer, align 16
@iGCMDefaultIV = internal constant [12 x i8] zeroinitializer, align 1
@gcmDefaultPlaintext = internal constant [16 x i8] zeroinitializer, align 16
@gcmDefaultCiphertext = internal constant [16 x i8] c"\CE\A7@=M`kn\07N\C5\D3\BA\F3\9D\18", align 16
@gcmDefaultTag = internal constant [16 x i8] c"\D0\D1\C8\A7\99\99k\F0&[\98\B5\D4\8A\B9\19", align 16
@.str.463 = private unnamed_addr constant [65 x i8] c"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_SET_IVLEN, t->ivlen, NULL)\00", align 1
@.str.464 = private unnamed_addr constant [52 x i8] c"EVP_CipherInit_ex(ctx, NULL, NULL, NULL, t->iv, -1)\00", align 1
@evp_reset_tests = internal unnamed_addr constant [2 x %struct.EVP_RESET_TEST_st] [%struct.EVP_RESET_TEST_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbPlaintext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbCiphertext, i32 0, i32 0), i64 16, i64 16, i32 1 }, %struct.EVP_RESET_TEST_st { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbCiphertext, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @cfbPlaintext, i32 0, i32 0), i64 16, i64 16, i32 0 }], align 16
@.str.465 = private unnamed_addr constant [59 x i8] c"type = EVP_CIPHER_fetch(testctx, \22aes-128-cfb\22, testpropq)\00", align 1
@.str.466 = private unnamed_addr constant [67 x i8] c"EVP_CipherInit_ex(ctx, type, NULL, kCFBDefaultKey, iCFBIV, t->enc)\00", align 1
@.str.467 = private unnamed_addr constant [12 x i8] c"CIPHER_INIT\00", align 1
@.str.468 = private unnamed_addr constant [51 x i8] c"EVP_CipherInit_ex(ctx, NULL, NULL, NULL, NULL, -1)\00", align 1
@.str.469 = private unnamed_addr constant [14 x i8] c"CIPHER_REINIT\00", align 1
@.str.470 = private unnamed_addr constant [23 x i8] c"CIPHER_UPDATE (reinit)\00", align 1
@.str.471 = private unnamed_addr constant [22 x i8] c"CIPHER_FINAL (reinit)\00", align 1
@.str.472 = private unnamed_addr constant [22 x i8] c"WRONG_RESULT (reinit)\00", align 1
@.str.473 = private unnamed_addr constant [22 x i8] c"test_evp_reset %d: %s\00", align 1
@gcm_reinit_tests = internal unnamed_addr constant [2 x %struct.TEST_GCM_IV_REINIT_st] [%struct.TEST_GCM_IV_REINIT_st { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @iGCMResetIV1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @iGCMResetIV2, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @gcmResetCiphertext1, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @gcmResetCiphertext2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmResetTag1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmResetTag2, i32 0, i32 0), i64 8, i64 12, i64 60, i64 60 }, %struct.TEST_GCM_IV_REINIT_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @iGCMResetIV2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @iGCMResetIV1, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @gcmResetCiphertext2, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @gcmResetCiphertext1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmResetTag2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @gcmResetTag1, i32 0, i32 0), i64 12, i64 8, i64 60, i64 60 }], align 16
@.str.474 = private unnamed_addr constant [59 x i8] c"type = EVP_CIPHER_fetch(testctx, \22aes-256-gcm\22, testpropq)\00", align 1
@.str.475 = private unnamed_addr constant [50 x i8] c"EVP_CipherInit_ex(ctx, type, NULL, NULL, NULL, 1)\00", align 1
@.str.476 = private unnamed_addr constant [9 x i8] c"ENC_INIT\00", align 1
@.str.477 = private unnamed_addr constant [66 x i8] c"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_SET_IVLEN, t->ivlen1, NULL)\00", align 1
@.str.478 = private unnamed_addr constant [11 x i8] c"SET_IVLEN1\00", align 1
@.str.479 = private unnamed_addr constant [60 x i8] c"EVP_CipherInit_ex(ctx, NULL, NULL, kGCMResetKey, t->iv1, 1)\00", align 1
@kGCMResetKey = internal constant [32 x i8] c"\FE\FF\E9\92\86es\1Cmj\8F\94g0\83\08\FE\FF\E9\92\86es\1Cmj\8F\94g0\83\08", align 16
@.str.480 = private unnamed_addr constant [8 x i8] c"SET_IV1\00", align 1
@.str.481 = private unnamed_addr constant [62 x i8] c"EVP_CipherUpdate(ctx, NULL, &outlen3, gcmAAD, sizeof(gcmAAD))\00", align 1
@gcmAAD = internal constant [20 x i8] c"\FE\ED\FA\CE\DE\AD\BE\EF\FE\ED\FA\CE\DE\AD\BE\EF\AB\AD\DA\D2", align 16
@.str.482 = private unnamed_addr constant [5 x i8] c"AAD1\00", align 1
@.str.483 = private unnamed_addr constant [86 x i8] c"EVP_CipherUpdate(ctx, outbuf, &outlen1, gcmResetPlaintext, sizeof(gcmResetPlaintext))\00", align 1
@gcmResetPlaintext = internal constant [60 x i8] c"\D912%\F8\84\06\E5\A5Y\09\C5\AF\F5&\9A\86\A7\A9S\154\F7\DA.L0=\8A1\8Ar\1C<\0C\95\95h\09S/\CF\0E$I\A6\B5%\B1j\ED\F5\AA\0D\E6W\BAc{9", align 16
@.str.484 = private unnamed_addr constant [15 x i8] c"CIPHER_UPDATE1\00", align 1
@.str.485 = private unnamed_addr constant [14 x i8] c"CIPHER_FINAL1\00", align 1
@.str.486 = private unnamed_addr constant [13 x i8] c"t->expected1\00", align 1
@.str.487 = private unnamed_addr constant [14 x i8] c"WRONG_RESULT1\00", align 1
@.str.488 = private unnamed_addr constant [9 x i8] c"GET_TAG1\00", align 1
@.str.489 = private unnamed_addr constant [8 x i8] c"t->tag1\00", align 1
@.str.490 = private unnamed_addr constant [11 x i8] c"TAG_ERROR1\00", align 1
@.str.491 = private unnamed_addr constant [66 x i8] c"EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_GCM_SET_IVLEN, t->ivlen2, NULL)\00", align 1
@.str.492 = private unnamed_addr constant [11 x i8] c"SET_IVLEN2\00", align 1
@.str.493 = private unnamed_addr constant [53 x i8] c"EVP_CipherInit_ex(ctx, NULL, NULL, NULL, t->iv2, -1)\00", align 1
@.str.494 = private unnamed_addr constant [8 x i8] c"SET_IV2\00", align 1
@.str.495 = private unnamed_addr constant [5 x i8] c"AAD2\00", align 1
@.str.496 = private unnamed_addr constant [15 x i8] c"CIPHER_UPDATE2\00", align 1
@.str.497 = private unnamed_addr constant [14 x i8] c"CIPHER_FINAL2\00", align 1
@.str.498 = private unnamed_addr constant [13 x i8] c"t->expected2\00", align 1
@.str.499 = private unnamed_addr constant [14 x i8] c"WRONG_RESULT2\00", align 1
@.str.500 = private unnamed_addr constant [9 x i8] c"GET_TAG2\00", align 1
@.str.501 = private unnamed_addr constant [8 x i8] c"t->tag2\00", align 1
@.str.502 = private unnamed_addr constant [11 x i8] c"TAG_ERROR2\00", align 1
@iGCMResetIV1 = internal constant [8 x i8] c"\CA\FE\BA\BE\FA\CE\DB\AD", align 1
@iGCMResetIV2 = internal constant [12 x i8] c"\CA\FE\BA\BE\FA\CE\DB\AD\DE\CA\F8\88", align 1
@gcmResetCiphertext1 = internal constant [60 x i8] c"\C3v-\F1\CAx}2\AEG\C1;\F1\98D\CB\AF\1A\E1M\0B\97j\FA\C5/\F7\D7\9B\BA\9D\E0\FE\B5\82\D394\A4\F0\95L\C26;\C7?xb\ACC\0Ed\AB\E4\99\F4|\9B\1F", align 16
@gcmResetCiphertext2 = internal constant [60 x i8] c"R-\C1\F0\99V}\07\F4\7F7\A3*\84B}d:\8C\DC\BF\E5\C0\C9u\98\A2\BD%U\D1\AA\8C\B0\8EHY\0D\BB=\A7\B0\8B\10V\82\888\C5\F6\1Ec\93\BAz\0A\BC\C9\F6b", align 16
@gcmResetTag1 = internal constant [16 x i8] c":3}\BFF\A7\92\C4^EI\13\FE.\A8\F2", align 16
@gcmResetTag2 = internal constant [16 x i8] c"v\FCn\CE\0FN\17h\CD\DF\88S\BB-U\1B", align 16
@evp_updated_iv_tests = internal unnamed_addr constant [12 x %struct.EVP_UPDATED_IV_TEST_st] [%struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.396, i32 0, i32 0), i32 1 }, %struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.396, i32 0, i32 0), i32 0 }, %struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.513, i32 0, i32 0), i32 1 }, %struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.513, i32 0, i32 0), i32 0 }, %struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.514, i32 0, i32 0), i32 1 }, %struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.514, i32 0, i32 0), i32 0 }, %struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.395, i32 0, i32 0), i32 1 }, %struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.395, i32 0, i32 0), i32 0 }, %struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.515, i32 0, i32 0), i32 1 }, %struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.515, i32 0, i32 0), i32 0 }, %struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.394, i32 0, i32 0), i32 1 }, %struct.EVP_UPDATED_IV_TEST_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.394, i32 0, i32 0), i32 0 }], align 16
@.str.503 = private unnamed_addr constant [34 x i8] c"cipher %s not supported, skipping\00", align 1
@.str.504 = private unnamed_addr constant [76 x i8] c"EVP_CipherUpdate(ctx, outbuf, &outlen1, cfbPlaintext, sizeof(cfbPlaintext))\00", align 1
@.str.505 = private unnamed_addr constant [67 x i8] c"EVP_CIPHER_CTX_get_updated_iv(ctx, updated_iv, sizeof(updated_iv))\00", align 1
@.str.506 = private unnamed_addr constant [26 x i8] c"CIPHER_CTX_GET_UPDATED_IV\00", align 1
@.str.507 = private unnamed_addr constant [43 x i8] c"iv_len = EVP_CIPHER_CTX_get_iv_length(ctx)\00", align 1
@.str.508 = private unnamed_addr constant [22 x i8] c"CIPHER_CTX_GET_IV_LEN\00", align 1
@.str.509 = private unnamed_addr constant [7 x i8] c"iCFBIV\00", align 1
@.str.510 = private unnamed_addr constant [11 x i8] c"updated_iv\00", align 1
@.str.511 = private unnamed_addr constant [15 x i8] c"IV_NOT_UPDATED\00", align 1
@.str.512 = private unnamed_addr constant [27 x i8] c"test_evp_updated_iv %d: %s\00", align 1
@.str.513 = private unnamed_addr constant [13 x i8] c"aes-128-cfb1\00", align 1
@.str.514 = private unnamed_addr constant [13 x i8] c"aes-128-cfb8\00", align 1
@.str.515 = private unnamed_addr constant [12 x i8] c"aes-128-ctr\00", align 1
@__const.test_custom_pmeth.msg = private unnamed_addr constant [5 x i8] c"Hello", align 1
@ctrl_called = internal unnamed_addr global i1 false, align 4
@.str.516 = private unnamed_addr constant [18 x i8] c"Should not happen\00", align 1
@.str.517 = private unnamed_addr constant [27 x i8] c"evp_pkey_is_provided(pkey)\00", align 1
@.str.518 = private unnamed_addr constant [37 x i8] c"evp_pkey_copy_downgraded(&pkey, tmp)\00", align 1
@.str.519 = private unnamed_addr constant [25 x i8] c"evp_pkey_is_legacy(pkey)\00", align 1
@.str.520 = private unnamed_addr constant [36 x i8] c"orig_pmeth = EVP_PKEY_meth_find(id)\00", align 1
@orig_pmeth = internal unnamed_addr global %struct.evp_pkey_method_st* null, align 8
@.str.521 = private unnamed_addr constant [8 x i8] c"orig_id\00", align 1
@.str.522 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.523 = private unnamed_addr constant [49 x i8] c"custom_pmeth = EVP_PKEY_meth_new(id, orig_flags)\00", align 1
@.str.524 = private unnamed_addr constant [67 x i8] c"EVP_PKEY_CTX_ctrl(pctx, -1, -1, EVP_PKEY_CTRL_MY_COMMAND, 0, NULL)\00", align 1
@.str.525 = private unnamed_addr constant [12 x i8] c"ctrl_called\00", align 1
@.str.526 = private unnamed_addr constant [37 x i8] c"EVP_PKEY_derive_set_peer(pctx, pkey)\00", align 1
@.str.527 = private unnamed_addr constant [37 x i8] c"EVP_PKEY_derive(pctx, NULL, &reslen)\00", align 1
@.str.528 = private unnamed_addr constant [29 x i8] c"res = OPENSSL_malloc(reslen)\00", align 1
@.str.529 = private unnamed_addr constant [36 x i8] c"EVP_PKEY_derive(pctx, res, &reslen)\00", align 1
@.str.530 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@.str.531 = private unnamed_addr constant [47 x i8] c"EVP_DigestSignInit(ctx, &pctx, md, NULL, pkey)\00", align 1
@.str.532 = private unnamed_addr constant [52 x i8] c"EVP_DigestSign(ctx, res, &reslen, msg, sizeof(msg))\00", align 1
@.str.533 = private unnamed_addr constant [40 x i8] c"EVP_DigestUpdate(ctx, msg, sizeof(msg))\00", align 1
@.str.534 = private unnamed_addr constant [39 x i8] c"EVP_DigestSignFinal(ctx, res, &reslen)\00", align 1
@kExampleDHKeyDER = internal constant [293 x i8] c"0\82\01!\02\01\000\81\95\06\09*\86H\86\F7\0D\01\03\010\81\87\02\81\81\00\F7R\C2h\CCf\C4\8D\03?\FA\9CR\D0\D83\F2\E1\C9\9E\B7\E7n\90\97\EB\92\91j\9A\85c\92y\AB\B6=#XZ\E8E\06\81\97w\E1\CC4N\AE6\80\F2\C4\7F\8AR\B8\DBX\C8K\12L\F1LS\C1\899\8D\B6\06\D8\EA\7F-6S\96)\BE\B6u\FC\E7\F36\D6\F4\8F\16\A6\C7\EC{\CEB\8DH.\B7t\00\11Ra\B4\195\EC\\\E4\BE4\C6Yd^BapT\F4\E9kS\02\01\02\04\81\83\02\81\80d\C2\E3\09i7<\D2J\BA\C3xj\9B\8A*\DB\E7\E6\C0\FA:\BE9g\C0\A9*\F0\0A\C1S\1C\DB\FA\1A&\98\B0\8C\C6\06J\A2H\D3\A4;\BD\05H\EAY\DB\18\A4\CAf\D9]\B8\95\D1\EB\97=f\97\\\86\8F~\90\D3C\D1\A2\0D\CB\E7\EB\90\EA\09@\B1o\F7L\F2A\83\1D\D0v\EF\AFUo]\A9\A3U\81*\D1]\9D\22w\97\83\DE\AD\B6]\19\C1S\EC\FB\AF\06.\87*\0Bz", align 16
@.str.535 = private unnamed_addr constant [7 x i8] c"X25519\00", align 1
@kExampleX25519KeyDER = internal constant [48 x i8] c"0.\02\01\000\05\06\03+en\04\22\04 \A0$:1$\C3?\F6{\96\0B\D4\8F\D1\EEg\F2\9B\88\ACP\CE\976\DD\AF%\F6\104\96n", align 16
@.str.536 = private unnamed_addr constant [5 x i8] c"ciph\00", align 1
@switch.table.test_evp_iv_des = private unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.413, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.414, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.415, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.416, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.417, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.418, i64 0, i64 0)], align 8
@switch.table.test_evp_iv_des.537 = private unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_evp_iv_des.cbc_state_des, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_evp_iv_des.ofb_state_des, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_evp_iv_des.cfb_state_des, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_evp_iv_des.cbc_state_3des, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_evp_iv_des.ofb_state_3des, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_evp_iv_des.cfb_state_3des, i64 0, i64 0)], align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local %struct.options_st* @test_get_options() local_unnamed_addr #0 {
entry:
  ret %struct.options_st* getelementptr inbounds ([10 x %struct.options_st], [10 x %struct.options_st]* @test_get_options.options, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %call = tail call i32 @opt_next() #8
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

while.cond.backedge:                              ; preds = %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %while.cond, %if.end
  br label %while.cond, !llvm.loop !3

sw.bb:                                            ; preds = %while.cond
  %call1 = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #8
  store %struct.ossl_lib_ctx_st* %call1, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %0 = bitcast %struct.ossl_lib_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3885, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb
  %call3 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #8
  store %struct.ossl_provider_st* %call3, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call4 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0)) #8
  store %struct.ossl_provider_st* %call4, %struct.ossl_provider_st** @deflprov, align 8, !tbaa !5
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call5 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #8
  store %struct.ossl_provider_st* %call5, %struct.ossl_provider_st** @lgcyprov, align 8, !tbaa !5
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  tail call void @add_test(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @test_EVP_set_default_properties) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 (i32)* noundef nonnull @test_EVP_DigestSignInit, i32 noundef 9, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i32 ()* noundef nonnull @test_EVP_DigestVerifyInit) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 ()* noundef nonnull @test_EVP_Digest) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 (i32)* noundef nonnull @test_EVP_Enveloped, i32 noundef 2, i32 noundef 1) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 (i32)* noundef nonnull @test_d2i_AutoPrivateKey, i32 noundef 3, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i32 ()* noundef nonnull @test_privatekey_to_pkcs8) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i32 ()* noundef nonnull @test_EVP_PKCS82PKEY_wrong_tag) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 ()* noundef nonnull @test_EVP_PKCS82PKEY) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i32 (i32)* noundef nonnull @test_EC_keygen_with_enc, i32 noundef 2, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i32 ()* noundef nonnull @test_EVP_SM2) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0), i32 ()* noundef nonnull @test_EVP_SM2_verify) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i32 (i32)* noundef nonnull @test_set_get_raw_keys, i32 noundef 8, i32 noundef 1) #8
  %call7 = tail call %struct.evp_pkey_method_st* @EVP_PKEY_meth_new(i32 noundef 233811181, i32 noundef 0) #8
  store %struct.evp_pkey_method_st* %call7, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  %3 = bitcast %struct.evp_pkey_method_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3920, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* noundef %3) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %while.end
  %4 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  tail call void @EVP_PKEY_meth_set_check(%struct.evp_pkey_method_st* noundef %4, i32 (%struct.evp_pkey_st*)* noundef nonnull @pkey_custom_check) #8
  %5 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  tail call void @EVP_PKEY_meth_set_public_check(%struct.evp_pkey_method_st* noundef %5, i32 (%struct.evp_pkey_st*)* noundef nonnull @pkey_custom_pub_check) #8
  %6 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  tail call void @EVP_PKEY_meth_set_param_check(%struct.evp_pkey_method_st* noundef %6, i32 (%struct.evp_pkey_st*)* noundef nonnull @pkey_custom_param_check) #8
  %7 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  %call12 = tail call i32 @EVP_PKEY_meth_add0(%struct.evp_pkey_method_st* noundef %7) #8
  %call13 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3925, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call12, i32 noundef 1) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end11
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i32 (i32)* noundef nonnull @test_EVP_PKEY_check, i32 noundef 7, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i32 ()* noundef nonnull @test_CMAC_keygen) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i32 ()* noundef nonnull @test_HKDF) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0), i32 ()* noundef nonnull @test_emptyikm_HKDF) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0), i32 ()* noundef nonnull @test_X509_PUBKEY_inplace) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i32 ()* noundef nonnull @test_X509_PUBKEY_dup) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i32 (i32)* noundef nonnull @test_invalide_ec_char2_pub_range_decode, i32 noundef 3, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i32 ()* noundef nonnull @test_DSA_get_set_params) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i32 ()* noundef nonnull @test_DSA_priv_pub) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0), i32 ()* noundef nonnull @test_RSA_get_set_params) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0), i32 ()* noundef nonnull @test_decrypt_null_chunks) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i32 ()* noundef nonnull @test_DH_priv_pub) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i32 ()* noundef nonnull @test_EVP_PKEY_set1_DH) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i32 ()* noundef nonnull @test_EC_priv_pub) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i32 ()* noundef nonnull @test_EC_priv_only_legacy) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 (i32)* noundef nonnull @test_keygen_with_empty_template, i32 noundef 2, i32 noundef 1) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.53, i64 0, i64 0), i32 (i32)* noundef nonnull @test_pkey_ctx_fail_without_provider, i32 noundef 2, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i64 0, i64 0), i32 ()* noundef nonnull @test_rand_agglomeration) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0), i32 (i32)* noundef nonnull @test_evp_iv_aes, i32 noundef 12, i32 noundef 1) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0), i32 (i32)* noundef nonnull @test_evp_iv_des, i32 noundef 6, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i64 0, i64 0), i32 ()* noundef nonnull @test_EVP_rsa_pss_with_keygen_bits) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0), i32 (i32)* noundef nonnull @test_ecpub, i32 noundef 13, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0), i32 ()* noundef nonnull @test_names_do_all) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i64 0, i64 0), i32 (i32)* noundef nonnull @test_evp_init_seq, i32 noundef 8, i32 noundef 1) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i64 0, i64 0), i32 (i32)* noundef nonnull @test_evp_reset, i32 noundef 2, i32 noundef 1) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i64 0, i64 0), i32 (i32)* noundef nonnull @test_gcm_reinit, i32 noundef 2, i32 noundef 1) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), i32 (i32)* noundef nonnull @test_evp_updated_iv, i32 noundef 12, i32 noundef 1) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i64 0, i64 0), i32 (i32)* noundef nonnull @test_custom_pmeth, i32 noundef 12, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.65, i64 0, i64 0), i32 ()* noundef nonnull @test_evp_md_cipher_meth) #8
  br label %cleanup

cleanup:                                          ; preds = %while.cond, %sw.bb, %if.end11, %while.end, %if.end16
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %while.end ], [ 0, %if.end11 ], [ 0, %sw.bb ], [ 0, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @opt_next() local_unnamed_addr #3

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_set_default_properties() #1 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #8
  %0 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 655, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i8* noundef null) #8
  %1 = bitcast %struct.evp_md_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 656, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i64 0, i64 0), i8* noundef %1) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call2) #8
  %call5 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0)) #8
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 661, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %call9 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i8* noundef null) #8
  %2 = bitcast %struct.evp_md_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 662, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i64 0, i64 0), i8* noundef %2) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %call13 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0)) #8
  %3 = bitcast %struct.evp_md_st* %call13 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 663, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.71, i64 0, i64 0), i8* noundef %3) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end17

if.end17:                                         ; preds = %lor.lhs.false12
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %call13) #8
  %call18 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef null) #8
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 668, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.73, i64 0, i64 0), i32 noundef %conv20) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end17
  %call24 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i8* noundef null) #8
  %4 = bitcast %struct.evp_md_st* %call24 to i8*
  %call25 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 669, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i64 0, i64 0), i8* noundef %4) #8
  %tobool26.not = icmp ne i32 %call25, 0
  %spec.select = zext i1 %tobool26.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false23, %if.end17, %if.end, %lor.lhs.false8, %lor.lhs.false12, %entry, %lor.lhs.false
  %md.0 = phi %struct.evp_md_st* [ null, %if.end17 ], [ %call13, %lor.lhs.false12 ], [ %call9, %lor.lhs.false8 ], [ null, %if.end ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call24, %lor.lhs.false23 ]
  %res.0 = phi i32 [ 0, %if.end17 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false8 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false23 ]
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %md.0) #8
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #8
  ret i32 %res.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_DigestSignInit(i32 noundef %tst) #1 {
entry:
  %sig_len = alloca i64, align 8
  %sig2_len = alloca i64, align 8
  %md_ctx = alloca %struct.evp_md_ctx_st*, align 8
  %md_ctx_verify = alloca %struct.evp_md_ctx_st*, align 8
  %written = alloca i64, align 8
  %0 = bitcast i64* %sig_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %sig_len, align 8, !tbaa !9
  %1 = bitcast i64* %sig2_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i64 0, i64* %sig2_len, align 8, !tbaa !9
  %2 = bitcast %struct.evp_md_ctx_st** %md_ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store %struct.evp_md_ctx_st* null, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !5
  %3 = bitcast %struct.evp_md_ctx_st** %md_ctx_verify to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store %struct.evp_md_ctx_st* null, %struct.evp_md_ctx_st** %md_ctx_verify, align 8, !tbaa !5
  %4 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %cmp.not = icmp eq %struct.ossl_provider_st* %5, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1064, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.74, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %tst, 5
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.bio_method_st* @BIO_s_mem() #8
  %call4 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call3) #8
  %call5 = tail call %struct.bio_method_st* @BIO_f_md() #8
  %call6 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call5) #8
  %6 = bitcast %struct.bio_st* %call4 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1069, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i64 0, i64 0), i8* noundef %6) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %7 = bitcast %struct.bio_st* %call6 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1069, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i8* noundef %7) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %out, label %if.end11

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %call6, %struct.bio_st* noundef %call4) #8
  %call13 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call6, i32 noundef 120, i64 noundef 0, i8* noundef nonnull %2) #8
  %conv = trunc i64 %call13 to i32
  %call14 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1072, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %out, label %if.end27

if.else:                                          ; preds = %if.end
  %call18 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  store %struct.evp_md_ctx_st* %call18, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !5
  %8 = bitcast %struct.evp_md_ctx_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1075, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.79, i64 0, i64 0), i8* noundef %8) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %out, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.else
  %call22 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  store %struct.evp_md_ctx_st* %call22, %struct.evp_md_ctx_st** %md_ctx_verify, align 8, !tbaa !5
  %9 = bitcast %struct.evp_md_ctx_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1076, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.80, i64 0, i64 0), i8* noundef %9) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %out, label %if.end27

if.end27:                                         ; preds = %lor.lhs.false21, %if.end11
  %a_md_ctx.0 = phi %struct.evp_md_ctx_st* [ null, %if.end11 ], [ %call18, %lor.lhs.false21 ]
  %a_md_ctx_verify.0 = phi %struct.evp_md_ctx_st* [ null, %if.end11 ], [ %call22, %lor.lhs.false21 ]
  %mdbio.0 = phi %struct.bio_st* [ %call6, %if.end11 ], [ null, %lor.lhs.false21 ]
  %membio.0 = phi %struct.bio_st* [ %call4, %if.end11 ], [ null, %lor.lhs.false21 ]
  switch i32 %tst, label %if.else57 [
    i32 6, label %if.then36
    i32 3, label %if.then36
    i32 0, label %if.then36
    i32 7, label %if.then51
    i32 4, label %if.then51
    i32 1, label %if.then51
  ]

if.then36:                                        ; preds = %if.end27, %if.end27, %if.end27
  %call37 = call fastcc %struct.evp_pkey_st* @load_example_rsa_key() #10
  %10 = bitcast %struct.evp_pkey_st* %call37 to i8*
  %call38 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1081, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i64 0, i64 0), i8* noundef %10) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %out, label %if.end64

if.then51:                                        ; preds = %if.end27, %if.end27, %if.end27
  %call52 = call fastcc %struct.evp_pkey_st* @load_example_dsa_key() #10
  %11 = bitcast %struct.evp_pkey_st* %call52 to i8*
  %call53 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1085, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.82, i64 0, i64 0), i8* noundef %11) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %out, label %if.end64

if.else57:                                        ; preds = %if.end27
  %call58 = call fastcc %struct.evp_pkey_st* @load_example_hmac_key() #10
  %12 = bitcast %struct.evp_pkey_st* %call58 to i8*
  %call59 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1092, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.83, i64 0, i64 0), i8* noundef %12) #8
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %out, label %if.end64

if.end64:                                         ; preds = %if.then51, %if.else57, %if.then36
  %pkey.0 = phi %struct.evp_pkey_st* [ %call37, %if.then36 ], [ %call52, %if.then51 ], [ %call58, %if.else57 ]
  %13 = add i32 %tst, -3
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.end64
  %call70 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i8* noundef null) #8
  br label %if.end73

if.else71:                                        ; preds = %if.end64
  %call72 = call %struct.evp_md_st* @EVP_sha256() #8
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then69
  %md.0 = phi %struct.evp_md_st* [ %call70, %if.then69 ], [ %call72, %if.else71 ]
  %mdexp.0 = phi %struct.evp_md_st* [ %call70, %if.then69 ], [ null, %if.else71 ]
  %15 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !5
  %call74 = call i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef %15, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %md.0, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %pkey.0) #8
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %call77 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1101, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.85, i64 0, i64 0), i32 noundef %conv76) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %out, label %if.end80

if.end80:                                         ; preds = %if.end73
  br i1 %cmp1, label %if.then83, label %if.else88

if.then83:                                        ; preds = %if.end80
  %call84 = call i32 @BIO_write_ex(%struct.bio_st* noundef %mdbio.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4, i64* noundef nonnull %written) #8
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %out, label %if.end96

if.else88:                                        ; preds = %if.end80
  %16 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !5
  %call89 = call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4) #8
  %cmp90 = icmp ne i32 %call89, 0
  %conv91 = zext i1 %cmp90 to i32
  %call92 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1108, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv91) #8
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %out, label %if.end96

if.end96:                                         ; preds = %if.else88, %if.then83
  %17 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !5
  %call97 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %17, i8* noundef null, i64* noundef nonnull %sig_len) #8
  %cmp98 = icmp ne i32 %call97, 0
  %conv99 = zext i1 %cmp98 to i32
  %call100 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1113, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv99) #8
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %out, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %if.end96
  %18 = load i64, i64* %sig_len, align 8, !tbaa !9
  %call103 = call i8* @CRYPTO_malloc(i64 noundef %18, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1114) #8
  %call104 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1114, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.88, i64 0, i64 0), i8* noundef %call103) #8
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %out, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false102
  %19 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !5
  %call107 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %19, i8* noundef %call103, i64* noundef nonnull %sig_len) #8
  %cmp108 = icmp ne i32 %call107, 0
  %conv109 = zext i1 %cmp108 to i32
  %call110 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1115, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv109) #8
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %out, label %if.end113

if.end113:                                        ; preds = %lor.lhs.false106
  switch i32 %tst, label %if.then122 [
    i32 8, label %if.else178
    i32 5, label %if.else178
    i32 2, label %if.else178
  ]

if.then122:                                       ; preds = %if.end113
  br i1 %cmp1, label %if.then125, label %if.end137

if.then125:                                       ; preds = %if.then122
  %call126 = call i64 @BIO_ctrl(%struct.bio_st* noundef %mdbio.0, i32 noundef 1, i64 noundef 0, i8* noundef null) #8
  %conv127 = trunc i64 %call126 to i32
  %call128 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1124, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv127, i32 noundef 0) #8
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %out, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %if.then125
  %call131 = call i64 @BIO_ctrl(%struct.bio_st* noundef %mdbio.0, i32 noundef 120, i64 noundef 0, i8* noundef nonnull %3) #8
  %conv132 = trunc i64 %call131 to i32
  %call133 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1125, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.91, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv132, i32 noundef 0) #8
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %out, label %lor.lhs.false130.if.end137_crit_edge

lor.lhs.false130.if.end137_crit_edge:             ; preds = %lor.lhs.false130
  %.pre = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx_verify, align 8, !tbaa !5
  br label %if.end137

if.end137:                                        ; preds = %lor.lhs.false130.if.end137_crit_edge, %if.then122
  %20 = phi %struct.evp_md_ctx_st* [ %.pre, %lor.lhs.false130.if.end137_crit_edge ], [ %a_md_ctx_verify.0, %if.then122 ]
  %call138 = call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %20, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %md.0, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %pkey.0) #8
  %cmp139 = icmp ne i32 %call138, 0
  %conv140 = zext i1 %cmp139 to i32
  %call141 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1130, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv140) #8
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %out, label %if.end144

if.end144:                                        ; preds = %if.end137
  br i1 %cmp1, label %if.then147, label %if.else155

if.then147:                                       ; preds = %if.end144
  %call148 = call i32 @BIO_write_ex(%struct.bio_st* noundef %mdbio.0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4, i64* noundef nonnull %written) #8
  %cmp149 = icmp ne i32 %call148, 0
  %conv150 = zext i1 %cmp149 to i32
  %call151 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1134, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv150) #8
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %out, label %if.end163

if.else155:                                       ; preds = %if.end144
  %21 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx_verify, align 8, !tbaa !5
  %call156 = call i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef %21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4) #8
  %cmp157 = icmp ne i32 %call156, 0
  %conv158 = zext i1 %cmp157 to i32
  %call159 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1138, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv158) #8
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %out, label %if.end163

if.end163:                                        ; preds = %if.else155, %if.then147
  %22 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx_verify, align 8, !tbaa !5
  %23 = load i64, i64* %sig_len, align 8, !tbaa !9
  %call164 = call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef %22, i8* noundef %call103, i64 noundef %23) #8
  %cmp165 = icmp ne i32 %call164, 0
  %conv166 = zext i1 %cmp165 to i32
  %call167 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1141, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv166) #8
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %out, label %if.end170

if.end170:                                        ; preds = %if.end163
  %24 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx_verify, align 8, !tbaa !5
  %25 = load i64, i64* %sig_len, align 8, !tbaa !9
  %call171 = call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef %24, i8* noundef %call103, i64 noundef %25) #8
  %cmp172 = icmp ne i32 %call171, 0
  %conv173 = zext i1 %cmp172 to i32
  %call174 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1145, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv173) #8
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %out, label %if.end200

if.else178:                                       ; preds = %if.end113, %if.end113, %if.end113
  %26 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !5
  %call179 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %26, i8* noundef null, i64* noundef nonnull %sig2_len) #8
  %cmp180 = icmp ne i32 %call179, 0
  %conv181 = zext i1 %cmp180 to i32
  %call182 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1152, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.96, i64 0, i64 0), i32 noundef %conv181) #8
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %out, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %if.else178
  %27 = load i64, i64* %sig2_len, align 8, !tbaa !9
  %call185 = call i8* @CRYPTO_malloc(i64 noundef %27, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1153) #8
  %call186 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1153, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.97, i64 0, i64 0), i8* noundef %call185) #8
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %out, label %lor.lhs.false188

lor.lhs.false188:                                 ; preds = %lor.lhs.false184
  %28 = load %struct.evp_md_ctx_st*, %struct.evp_md_ctx_st** %md_ctx, align 8, !tbaa !5
  %call189 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %28, i8* noundef %call185, i64* noundef nonnull %sig2_len) #8
  %cmp190 = icmp ne i32 %call189, 0
  %conv191 = zext i1 %cmp190 to i32
  %call192 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1154, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv191) #8
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %out, label %if.end195

if.end195:                                        ; preds = %lor.lhs.false188
  %29 = load i64, i64* %sig_len, align 8, !tbaa !9
  %30 = load i64, i64* %sig2_len, align 8, !tbaa !9
  %call196 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1157, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i64 0, i64 0), i8* noundef %call103, i64 noundef %29, i8* noundef %call185, i64 noundef %30) #8
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %out, label %if.end200

if.end200:                                        ; preds = %if.end195, %if.end170
  %sig2.0 = phi i8* [ null, %if.end170 ], [ %call185, %if.end195 ]
  br label %out

out:                                              ; preds = %if.end195, %if.else178, %lor.lhs.false184, %lor.lhs.false188, %if.end170, %if.end163, %if.else155, %if.then147, %if.end137, %if.then125, %lor.lhs.false130, %if.end96, %lor.lhs.false102, %lor.lhs.false106, %if.else88, %if.then83, %if.end73, %if.else57, %if.then51, %if.then36, %if.else, %lor.lhs.false21, %if.end11, %if.then2, %lor.lhs.false, %if.end200
  %ret.0 = phi i32 [ 1, %if.end200 ], [ 0, %if.end170 ], [ 0, %if.end163 ], [ 0, %if.then147 ], [ 0, %if.else155 ], [ 0, %if.end137 ], [ 0, %lor.lhs.false130 ], [ 0, %if.then125 ], [ 0, %if.end195 ], [ 0, %lor.lhs.false188 ], [ 0, %lor.lhs.false184 ], [ 0, %if.else178 ], [ 0, %lor.lhs.false106 ], [ 0, %lor.lhs.false102 ], [ 0, %if.end96 ], [ 0, %if.then83 ], [ 0, %if.else88 ], [ 0, %if.end73 ], [ 0, %if.then36 ], [ 0, %if.then51 ], [ 0, %if.else57 ], [ 0, %if.end11 ], [ 0, %lor.lhs.false ], [ 0, %if.then2 ], [ 0, %lor.lhs.false21 ], [ 0, %if.else ]
  %pkey.1 = phi %struct.evp_pkey_st* [ %pkey.0, %if.end200 ], [ %pkey.0, %if.end170 ], [ %pkey.0, %if.end163 ], [ %pkey.0, %if.then147 ], [ %pkey.0, %if.else155 ], [ %pkey.0, %if.end137 ], [ %pkey.0, %lor.lhs.false130 ], [ %pkey.0, %if.then125 ], [ %pkey.0, %if.end195 ], [ %pkey.0, %lor.lhs.false188 ], [ %pkey.0, %lor.lhs.false184 ], [ %pkey.0, %if.else178 ], [ %pkey.0, %lor.lhs.false106 ], [ %pkey.0, %lor.lhs.false102 ], [ %pkey.0, %if.end96 ], [ %pkey.0, %if.then83 ], [ %pkey.0, %if.else88 ], [ %pkey.0, %if.end73 ], [ %call37, %if.then36 ], [ %call52, %if.then51 ], [ %call58, %if.else57 ], [ null, %if.end11 ], [ null, %lor.lhs.false ], [ null, %if.then2 ], [ null, %lor.lhs.false21 ], [ null, %if.else ]
  %sig.0 = phi i8* [ %call103, %if.end200 ], [ %call103, %if.end170 ], [ %call103, %if.end163 ], [ %call103, %if.then147 ], [ %call103, %if.else155 ], [ %call103, %if.end137 ], [ %call103, %lor.lhs.false130 ], [ %call103, %if.then125 ], [ %call103, %if.end195 ], [ %call103, %lor.lhs.false188 ], [ %call103, %lor.lhs.false184 ], [ %call103, %if.else178 ], [ %call103, %lor.lhs.false106 ], [ %call103, %lor.lhs.false102 ], [ null, %if.end96 ], [ null, %if.then83 ], [ null, %if.else88 ], [ null, %if.end73 ], [ null, %if.then36 ], [ null, %if.then51 ], [ null, %if.else57 ], [ null, %if.end11 ], [ null, %lor.lhs.false ], [ null, %if.then2 ], [ null, %lor.lhs.false21 ], [ null, %if.else ]
  %sig2.1 = phi i8* [ %sig2.0, %if.end200 ], [ null, %if.end170 ], [ null, %if.end163 ], [ null, %if.then147 ], [ null, %if.else155 ], [ null, %if.end137 ], [ null, %lor.lhs.false130 ], [ null, %if.then125 ], [ %call185, %if.end195 ], [ %call185, %lor.lhs.false188 ], [ %call185, %lor.lhs.false184 ], [ null, %if.else178 ], [ null, %lor.lhs.false106 ], [ null, %lor.lhs.false102 ], [ null, %if.end96 ], [ null, %if.then83 ], [ null, %if.else88 ], [ null, %if.end73 ], [ null, %if.then36 ], [ null, %if.then51 ], [ null, %if.else57 ], [ null, %if.end11 ], [ null, %lor.lhs.false ], [ null, %if.then2 ], [ null, %lor.lhs.false21 ], [ null, %if.else ]
  %a_md_ctx.1 = phi %struct.evp_md_ctx_st* [ %a_md_ctx.0, %if.end200 ], [ %a_md_ctx.0, %if.end170 ], [ %a_md_ctx.0, %if.end163 ], [ %a_md_ctx.0, %if.then147 ], [ %a_md_ctx.0, %if.else155 ], [ %a_md_ctx.0, %if.end137 ], [ %a_md_ctx.0, %lor.lhs.false130 ], [ %a_md_ctx.0, %if.then125 ], [ %a_md_ctx.0, %if.end195 ], [ %a_md_ctx.0, %lor.lhs.false188 ], [ %a_md_ctx.0, %lor.lhs.false184 ], [ %a_md_ctx.0, %if.else178 ], [ %a_md_ctx.0, %lor.lhs.false106 ], [ %a_md_ctx.0, %lor.lhs.false102 ], [ %a_md_ctx.0, %if.end96 ], [ %a_md_ctx.0, %if.then83 ], [ %a_md_ctx.0, %if.else88 ], [ %a_md_ctx.0, %if.end73 ], [ %a_md_ctx.0, %if.then36 ], [ %a_md_ctx.0, %if.then51 ], [ %a_md_ctx.0, %if.else57 ], [ null, %if.end11 ], [ null, %lor.lhs.false ], [ null, %if.then2 ], [ %call18, %lor.lhs.false21 ], [ %call18, %if.else ]
  %a_md_ctx_verify.1 = phi %struct.evp_md_ctx_st* [ %a_md_ctx_verify.0, %if.end200 ], [ %a_md_ctx_verify.0, %if.end170 ], [ %a_md_ctx_verify.0, %if.end163 ], [ %a_md_ctx_verify.0, %if.then147 ], [ %a_md_ctx_verify.0, %if.else155 ], [ %a_md_ctx_verify.0, %if.end137 ], [ %a_md_ctx_verify.0, %lor.lhs.false130 ], [ %a_md_ctx_verify.0, %if.then125 ], [ %a_md_ctx_verify.0, %if.end195 ], [ %a_md_ctx_verify.0, %lor.lhs.false188 ], [ %a_md_ctx_verify.0, %lor.lhs.false184 ], [ %a_md_ctx_verify.0, %if.else178 ], [ %a_md_ctx_verify.0, %lor.lhs.false106 ], [ %a_md_ctx_verify.0, %lor.lhs.false102 ], [ %a_md_ctx_verify.0, %if.end96 ], [ %a_md_ctx_verify.0, %if.then83 ], [ %a_md_ctx_verify.0, %if.else88 ], [ %a_md_ctx_verify.0, %if.end73 ], [ %a_md_ctx_verify.0, %if.then36 ], [ %a_md_ctx_verify.0, %if.then51 ], [ %a_md_ctx_verify.0, %if.else57 ], [ null, %if.end11 ], [ null, %lor.lhs.false ], [ null, %if.then2 ], [ %call22, %lor.lhs.false21 ], [ null, %if.else ]
  %mdbio.1 = phi %struct.bio_st* [ %mdbio.0, %if.end200 ], [ %mdbio.0, %if.end170 ], [ %mdbio.0, %if.end163 ], [ %mdbio.0, %if.then147 ], [ %mdbio.0, %if.else155 ], [ %mdbio.0, %if.end137 ], [ %mdbio.0, %lor.lhs.false130 ], [ %mdbio.0, %if.then125 ], [ %mdbio.0, %if.end195 ], [ %mdbio.0, %lor.lhs.false188 ], [ %mdbio.0, %lor.lhs.false184 ], [ %mdbio.0, %if.else178 ], [ %mdbio.0, %lor.lhs.false106 ], [ %mdbio.0, %lor.lhs.false102 ], [ %mdbio.0, %if.end96 ], [ %mdbio.0, %if.then83 ], [ %mdbio.0, %if.else88 ], [ %mdbio.0, %if.end73 ], [ %mdbio.0, %if.then36 ], [ %mdbio.0, %if.then51 ], [ %mdbio.0, %if.else57 ], [ %call6, %if.end11 ], [ %call6, %lor.lhs.false ], [ %call6, %if.then2 ], [ null, %lor.lhs.false21 ], [ null, %if.else ]
  %membio.1 = phi %struct.bio_st* [ %membio.0, %if.end200 ], [ %membio.0, %if.end170 ], [ %membio.0, %if.end163 ], [ %membio.0, %if.then147 ], [ %membio.0, %if.else155 ], [ %membio.0, %if.end137 ], [ %membio.0, %lor.lhs.false130 ], [ %membio.0, %if.then125 ], [ %membio.0, %if.end195 ], [ %membio.0, %lor.lhs.false188 ], [ %membio.0, %lor.lhs.false184 ], [ %membio.0, %if.else178 ], [ %membio.0, %lor.lhs.false106 ], [ %membio.0, %lor.lhs.false102 ], [ %membio.0, %if.end96 ], [ %membio.0, %if.then83 ], [ %membio.0, %if.else88 ], [ %membio.0, %if.end73 ], [ %membio.0, %if.then36 ], [ %membio.0, %if.then51 ], [ %membio.0, %if.else57 ], [ %call4, %if.end11 ], [ %call4, %lor.lhs.false ], [ %call4, %if.then2 ], [ null, %lor.lhs.false21 ], [ null, %if.else ]
  %mdexp.1 = phi %struct.evp_md_st* [ %mdexp.0, %if.end200 ], [ %mdexp.0, %if.end170 ], [ %mdexp.0, %if.end163 ], [ %mdexp.0, %if.then147 ], [ %mdexp.0, %if.else155 ], [ %mdexp.0, %if.end137 ], [ %mdexp.0, %lor.lhs.false130 ], [ %mdexp.0, %if.then125 ], [ %mdexp.0, %if.end195 ], [ %mdexp.0, %lor.lhs.false188 ], [ %mdexp.0, %lor.lhs.false184 ], [ %mdexp.0, %if.else178 ], [ %mdexp.0, %lor.lhs.false106 ], [ %mdexp.0, %lor.lhs.false102 ], [ %mdexp.0, %if.end96 ], [ %mdexp.0, %if.then83 ], [ %mdexp.0, %if.else88 ], [ %mdexp.0, %if.end73 ], [ null, %if.then36 ], [ null, %if.then51 ], [ null, %if.else57 ], [ null, %if.end11 ], [ null, %lor.lhs.false ], [ null, %if.then2 ], [ null, %lor.lhs.false21 ], [ null, %if.else ]
  %call201 = call i32 @BIO_free(%struct.bio_st* noundef %membio.1) #8
  %call202 = call i32 @BIO_free(%struct.bio_st* noundef %mdbio.1) #8
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %a_md_ctx.1) #8
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %a_md_ctx_verify.1) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.1) #8
  call void @CRYPTO_free(i8* noundef %sig.0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1169) #8
  call void @CRYPTO_free(i8* noundef %sig2.1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1170) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %mdexp.1) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_DigestVerifyInit() #1 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1183, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.74, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %1 = bitcast %struct.evp_md_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1185, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.106, i64 0, i64 0), i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call fastcc %struct.evp_pkey_st* @load_example_rsa_key() #10
  %2 = bitcast %struct.evp_pkey_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1186, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i64 0, i64 0), i8* noundef %2) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %out, label %if.end7

if.end7:                                          ; preds = %lor.lhs.false
  %call8 = tail call %struct.evp_md_st* @EVP_sha256() #8
  %call9 = tail call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %call1, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %call8, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %call3) #8
  %cmp10 = icmp ne i32 %call9, 0
  %conv = zext i1 %cmp10 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1189, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.107, i64 0, i64 0), i32 noundef %conv) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %out, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end7
  %call14 = tail call i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef %call1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4) #8
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1190, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.108, i64 0, i64 0), i32 noundef %conv16) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %out, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %call20 = tail call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef %call1, i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @kSignature, i64 0, i64 0), i64 noundef 128) #8
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1192, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv22) #8
  %tobool24.not = icmp ne i32 %call23, 0
  %spec.select = zext i1 %tobool24.not to i32
  br label %out

out:                                              ; preds = %lor.lhs.false19, %if.end7, %lor.lhs.false13, %if.end, %lor.lhs.false
  %ret.0 = phi i32 [ 0, %lor.lhs.false13 ], [ 0, %if.end7 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false19 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ %call3, %lor.lhs.false13 ], [ %call3, %if.end7 ], [ %call3, %lor.lhs.false ], [ null, %if.end ], [ %call3, %lor.lhs.false19 ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call1) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_Digest() #1 {
entry:
  %md = alloca [64 x i8], align 16
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %1 = bitcast %struct.evp_md_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1213, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.106, i64 0, i64 0), i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call2 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i8* noundef null) #8
  %3 = bitcast %struct.evp_md_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1216, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.110, i64 0, i64 0), i8* noundef %3) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %out, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call5 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i64 0, i64 0), i8* noundef null) #8
  %5 = bitcast %struct.evp_md_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1217, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.111, i64 0, i64 0), i8* noundef %5) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %out, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call, %struct.evp_md_st* noundef %call2, %struct.engine_st* noundef null) #8
  %cmp = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1220, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0), i32 noundef %conv) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %out, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end9
  %call14 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4) #8
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1221, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.114, i64 0, i64 0), i32 noundef %conv16) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %out, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %call20 = call i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef %call, i8* noundef nonnull %0, i32* noundef null) #8
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1222, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.115, i64 0, i64 0), i32 noundef %conv22) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %out, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %call) #8
  %6 = bitcast %struct.evp_md_st* %call26 to i8*
  %call27 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1224, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i64 0, i64 0), i8* noundef %6, i8* noundef null) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %out, label %if.end30

if.end30:                                         ; preds = %lor.lhs.false25
  %call31 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call, %struct.evp_md_st* noundef %call2, %struct.engine_st* noundef null) #8
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1227, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.113, i64 0, i64 0), i32 noundef %conv33) #8
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %out, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end30
  %call37 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4) #8
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1228, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.114, i64 0, i64 0), i32 noundef %conv39) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %out, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false36
  %call44 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %call, i8* noundef nonnull %0, i32* noundef null) #8
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1229, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv46) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %out, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false42
  %call50 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %call) #8
  %7 = bitcast %struct.evp_md_st* %call50 to i8*
  %call51 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1231, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), i8* noundef %7) #8
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %out, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false49
  %call54 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call, %struct.evp_md_st* noundef null, %struct.engine_st* noundef null) #8
  %cmp55 = icmp ne i32 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1236, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.119, i64 0, i64 0), i32 noundef %conv56) #8
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %out, label %if.end60

if.end60:                                         ; preds = %lor.lhs.false53
  %call61 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call, %struct.evp_md_st* noundef %call5, %struct.engine_st* noundef null) #8
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1239, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.120, i64 0, i64 0), i32 noundef %conv63) #8
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %out, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.end60
  %call67 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4) #8
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1240, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.114, i64 0, i64 0), i32 noundef %conv69) #8
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %out, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false66
  %call74 = call i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef %call, i8* noundef nonnull %0, i64 noundef 64) #8
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %call77 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1241, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.121, i64 0, i64 0), i32 noundef %conv76) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %out, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false72
  %call80 = call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %call) #8
  %8 = bitcast %struct.evp_md_st* %call80 to i8*
  %call81 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1243, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), i8* noundef %8) #8
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %out, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false79
  %call84 = call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %call, %struct.evp_md_st* noundef null, %struct.engine_st* noundef null) #8
  %cmp85 = icmp ne i32 %call84, 0
  %conv86 = zext i1 %cmp85 to i32
  %call87 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1244, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.119, i64 0, i64 0), i32 noundef %conv86) #8
  %tobool88.not = icmp ne i32 %call87, 0
  %spec.select = zext i1 %tobool88.not to i32
  br label %out

out:                                              ; preds = %lor.lhs.false83, %if.end60, %lor.lhs.false66, %lor.lhs.false72, %lor.lhs.false79, %if.end30, %lor.lhs.false36, %lor.lhs.false42, %lor.lhs.false49, %lor.lhs.false53, %if.end9, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false25, %if.end, %lor.lhs.false, %entry
  %ret.0 = phi i32 [ 0, %lor.lhs.false79 ], [ 0, %lor.lhs.false72 ], [ 0, %lor.lhs.false66 ], [ 0, %if.end60 ], [ 0, %lor.lhs.false53 ], [ 0, %lor.lhs.false49 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false36 ], [ 0, %if.end30 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false13 ], [ 0, %if.end9 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %lor.lhs.false83 ]
  %sha256.0 = phi %struct.evp_md_st* [ %call2, %lor.lhs.false79 ], [ %call2, %lor.lhs.false72 ], [ %call2, %lor.lhs.false66 ], [ %call2, %if.end60 ], [ %call2, %lor.lhs.false53 ], [ %call2, %lor.lhs.false49 ], [ %call2, %lor.lhs.false42 ], [ %call2, %lor.lhs.false36 ], [ %call2, %if.end30 ], [ %call2, %lor.lhs.false25 ], [ %call2, %lor.lhs.false19 ], [ %call2, %lor.lhs.false13 ], [ %call2, %if.end9 ], [ %call2, %lor.lhs.false ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %lor.lhs.false83 ]
  %shake256.0 = phi %struct.evp_md_st* [ %call5, %lor.lhs.false79 ], [ %call5, %lor.lhs.false72 ], [ %call5, %lor.lhs.false66 ], [ %call5, %if.end60 ], [ %call5, %lor.lhs.false53 ], [ %call5, %lor.lhs.false49 ], [ %call5, %lor.lhs.false42 ], [ %call5, %lor.lhs.false36 ], [ %call5, %if.end30 ], [ %call5, %lor.lhs.false25 ], [ %call5, %lor.lhs.false19 ], [ %call5, %lor.lhs.false13 ], [ %call5, %if.end9 ], [ %call5, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call5, %lor.lhs.false83 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %sha256.0) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %shake256.0) #8
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_Enveloped(i32 noundef %n) #1 {
entry:
  %keypair = alloca %struct.evp_pkey_st*, align 8
  %kek = alloca i8*, align 8
  %iv = alloca [16 x i8], align 16
  %len = alloca i32, align 4
  %kek_len = alloca i32, align 4
  %ciphertext_len = alloca i32, align 4
  %plaintext_len = alloca i32, align 4
  %ciphertext = alloca [32 x i8], align 16
  %plaintext = alloca [16 x i8], align 16
  %0 = bitcast %struct.evp_pkey_st** %keypair to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %keypair, align 8, !tbaa !5
  %1 = bitcast i8** %kek to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* null, i8** %kek, align 8, !tbaa !5
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  %4 = bitcast i32* %kek_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #9
  %5 = bitcast i32* %ciphertext_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %6 = bitcast i32* %plaintext_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #9
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %plaintext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #9
  %9 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %cmp.not = icmp eq %struct.ossl_provider_st* %9, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 998, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.74, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call3 = tail call %struct.evp_cipher_st* @EVP_aes_256_cbc() #8
  br label %if.end8

if.else:                                          ; preds = %if.end
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call4 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i64 0, i64 0), i8* noundef null) #8
  %11 = bitcast %struct.evp_cipher_st* %call4 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1003, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.122, i64 0, i64 0), i8* noundef %11) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then76, label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  %type.0 = phi %struct.evp_cipher_st* [ %call3, %if.then2 ], [ %call4, %if.else ]
  %call9 = tail call fastcc %struct.evp_pkey_st* @load_example_rsa_key() #10
  store %struct.evp_pkey_st* %call9, %struct.evp_pkey_st** %keypair, align 8, !tbaa !5
  %12 = bitcast %struct.evp_pkey_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1006, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.124, i64 0, i64 0), i8* noundef %12) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %call12 = tail call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %call9) #8
  %conv = sext i32 %call12 to i64
  %call13 = tail call i8* @CRYPTO_zalloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1007) #8
  store i8* %call13, i8** %kek, align 8, !tbaa !5
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1007, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.125, i64 0, i64 0), i8* noundef %call13) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %call17 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %13 = bitcast %struct.evp_cipher_ctx_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1008, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.126, i64 0, i64 0), i8* noundef %13) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %call21 = call i32 @EVP_SealInit(%struct.evp_cipher_ctx_st* noundef %call17, %struct.evp_cipher_st* noundef %type.0, i8** noundef nonnull %kek, i32* noundef nonnull %kek_len, i8* noundef nonnull %2, %struct.evp_pkey_st** noundef nonnull %keypair, i32 noundef 1) #8
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1010, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.127, i64 0, i64 0), i32 noundef %conv23) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %call28 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call17, i8* noundef nonnull %7, i32* noundef nonnull %ciphertext_len, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @test_EVP_Enveloped.msg, i64 0, i64 0), i32 noundef 8) #8
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1012, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.128, i64 0, i64 0), i32 noundef %conv30) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false26
  %14 = load i32, i32* %ciphertext_len, align 4, !tbaa !11
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds [32 x i8], [32 x i8]* %ciphertext, i64 0, i64 %idx.ext
  %call35 = call i32 @EVP_SealFinal(%struct.evp_cipher_ctx_st* noundef %call17, i8* noundef nonnull %add.ptr, i32* noundef nonnull %len) #8
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1014, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.129, i64 0, i64 0), i32 noundef %conv37) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %if.end41

if.end41:                                         ; preds = %lor.lhs.false33
  %15 = load i32, i32* %len, align 4, !tbaa !11
  %16 = load i32, i32* %ciphertext_len, align 4, !tbaa !11
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %ciphertext_len, align 4, !tbaa !11
  %17 = load i8*, i8** %kek, align 8, !tbaa !5
  %18 = load i32, i32* %kek_len, align 4, !tbaa !11
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %keypair, align 8, !tbaa !5
  %call43 = call i32 @EVP_OpenInit(%struct.evp_cipher_ctx_st* noundef %call17, %struct.evp_cipher_st* noundef %type.0, i8* noundef %17, i32 noundef %18, i8* noundef nonnull %2, %struct.evp_pkey_st* noundef %19) #8
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1019, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.130, i64 0, i64 0), i32 noundef %conv45) #8
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end41
  %20 = load i32, i32* %ciphertext_len, align 4, !tbaa !11
  %call51 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %call17, i8* noundef nonnull %8, i32* noundef nonnull %plaintext_len, i8* noundef nonnull %7, i32 noundef %20) #8
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1021, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.131, i64 0, i64 0), i32 noundef %conv53) #8
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false48
  %21 = load i32, i32* %plaintext_len, align 4, !tbaa !11
  %idx.ext58 = sext i32 %21 to i64
  %add.ptr59 = getelementptr inbounds [16 x i8], [16 x i8]* %plaintext, i64 0, i64 %idx.ext58
  %call60 = call i32 @EVP_OpenFinal(%struct.evp_cipher_ctx_st* noundef %call17, i8* noundef nonnull %add.ptr59, i32* noundef nonnull %len) #8
  %cmp61 = icmp ne i32 %call60, 0
  %conv62 = zext i1 %cmp61 to i32
  %call63 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1022, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.132, i64 0, i64 0), i32 noundef %conv62) #8
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %if.end66

if.end66:                                         ; preds = %lor.lhs.false56
  %22 = load i32, i32* %len, align 4, !tbaa !11
  %23 = load i32, i32* %plaintext_len, align 4, !tbaa !11
  %add67 = add nsw i32 %23, %22
  store i32 %add67, i32* %plaintext_len, align 4, !tbaa !11
  %conv69 = sext i32 %add67 to i64
  %call70 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1026, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @test_EVP_Enveloped.msg, i64 0, i64 0), i64 noundef 8, i8* noundef nonnull %8, i64 noundef %conv69) #8
  %tobool71.not = icmp ne i32 %call70, 0
  %spec.select = zext i1 %tobool71.not to i32
  br label %err

err:                                              ; preds = %if.end66, %if.end41, %lor.lhs.false48, %lor.lhs.false56, %if.end8, %lor.lhs.false, %lor.lhs.false16, %lor.lhs.false20, %lor.lhs.false26, %lor.lhs.false33
  %ret.0 = phi i32 [ 0, %lor.lhs.false56 ], [ 0, %lor.lhs.false48 ], [ 0, %if.end41 ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false ], [ 0, %if.end8 ], [ %spec.select, %if.end66 ]
  %ctx.0 = phi %struct.evp_cipher_ctx_st* [ %call17, %lor.lhs.false56 ], [ %call17, %lor.lhs.false48 ], [ %call17, %if.end41 ], [ %call17, %lor.lhs.false33 ], [ %call17, %lor.lhs.false26 ], [ %call17, %lor.lhs.false20 ], [ %call17, %lor.lhs.false16 ], [ null, %lor.lhs.false ], [ null, %if.end8 ], [ %call17, %if.end66 ]
  br i1 %cmp1, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.else, %err
  %type.1108 = phi %struct.evp_cipher_st* [ %type.0, %err ], [ %call4, %if.else ]
  %ctx.0106 = phi %struct.evp_cipher_ctx_st* [ %ctx.0, %err ], [ null, %if.else ]
  %ret.0104 = phi i32 [ %ret.0, %err ], [ 0, %if.else ]
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %type.1108) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %err
  %ctx.0107 = phi %struct.evp_cipher_ctx_st* [ %ctx.0106, %if.then76 ], [ %ctx.0, %err ]
  %ret.0105 = phi i32 [ %ret.0104, %if.then76 ], [ %ret.0, %err ]
  %24 = load i8*, i8** %kek, align 8, !tbaa !5
  call void @CRYPTO_free(i8* noundef %24, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1033) #8
  %25 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %keypair, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %25) #8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.0107) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0105, %if.end77 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_d2i_AutoPrivateKey(i32 noundef %i) #1 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %idxprom = sext i32 %i to i64
  %kder = getelementptr inbounds [3 x %struct.APK_DATA_st], [3 x %struct.APK_DATA_st]* @keydata, i64 0, i64 %idxprom, i32 0
  %1 = load i8*, i8** %kder, align 16, !tbaa !13
  %size = getelementptr inbounds [3 x %struct.APK_DATA_st], [3 x %struct.APK_DATA_st]* @keydata, i64 0, i64 %idxprom, i32 1
  %2 = load i64, i64* %size, align 8, !tbaa !15
  %evptype = getelementptr inbounds [3 x %struct.APK_DATA_st], [3 x %struct.APK_DATA_st]* @keydata, i64 0, i64 %idxprom, i32 3
  %3 = load i32, i32* %evptype, align 8, !tbaa !16
  store i8* %1, i8** %p, align 8, !tbaa !5
  %call = call %struct.evp_pkey_st* @d2i_AutoPrivateKey(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %p, i64 noundef %2) #8
  %4 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1266, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.135, i64 0, i64 0), i8* noundef %4) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8*, i8** %p, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  %call2 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1267, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.137, i64 0, i64 0), i8* noundef %5, i8* noundef %add.ptr) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %done, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %call) #8
  %call6 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1268, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i64 0, i64 0), i32 noundef %call5, i32 noundef %3) #8
  %tobool7.not = icmp ne i32 %call6, 0
  %spec.select = zext i1 %tobool7.not to i32
  br label %done

done:                                             ; preds = %lor.lhs.false4, %entry, %lor.lhs.false
  %ret.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false4 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_privatekey_to_pkcs8() #1 {
entry:
  %membuf = alloca i8*, align 8
  %0 = bitcast i8** %membuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %membuf, align 8, !tbaa !5
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #8
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #8
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1407, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i64 0, i64 0), i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call fastcc %struct.evp_pkey_st* @load_example_rsa_key() #10
  %2 = bitcast %struct.evp_pkey_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1408, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i64 0, i64 0), i8* noundef %2) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %done, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @i2d_PKCS8PrivateKey_bio(%struct.bio_st* noundef %call1, %struct.evp_pkey_st* noundef %call3, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #8
  %call8 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1411, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call7, i32 noundef 0) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %done, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #8
  %conv = trunc i64 %call11 to i32
  %call12 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1412, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.143, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %done, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %3 = load i8*, i8** %membuf, align 8, !tbaa !5
  %call15 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1413, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i64 0, i64 0), i8* noundef %3) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %done, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false14
  %4 = load i8*, i8** %membuf, align 8, !tbaa !5
  %call18 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1415, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.145, i64 0, i64 0), i8* noundef %4, i64 noundef %call11, i8* noundef getelementptr inbounds ([634 x i8], [634 x i8]* @kExampleRSAKeyPKCS8, i64 0, i64 0), i64 noundef 634) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %done, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %call21 = call i32 @PEM_write_bio_PKCS8PrivateKey(%struct.bio_st* noundef %call1, %struct.evp_pkey_st* noundef %call3, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #8
  %call22 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1422, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.146, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call21, i32 noundef 0) #8
  %tobool23.not = icmp ne i32 %call22, 0
  %spec.select = zext i1 %tobool23.not to i32
  br label %done

done:                                             ; preds = %lor.lhs.false20, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false17
  %pkey.0 = phi %struct.evp_pkey_st* [ %call3, %lor.lhs.false17 ], [ %call3, %lor.lhs.false14 ], [ %call3, %lor.lhs.false10 ], [ %call3, %lor.lhs.false6 ], [ %call3, %lor.lhs.false ], [ null, %entry ], [ %call3, %lor.lhs.false20 ]
  %ok.0 = phi i32 [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false20 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #8
  call void @BIO_free_all(%struct.bio_st* noundef %call1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ok.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_PKCS82PKEY_wrong_tag() #1 {
entry:
  %membuf = alloca i8*, align 8
  %0 = bitcast i8** %membuf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %membuf, align 8, !tbaa !5
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %cmp.not = icmp eq %struct.ossl_lib_ctx_st* %1, null
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #8
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #8
  %2 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1377, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call fastcc %struct.evp_pkey_st* @load_example_rsa_key() #10
  %3 = bitcast %struct.evp_pkey_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1378, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.81, i64 0, i64 0), i8* noundef %3) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %done, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @i2d_PKCS8PrivateKey_bio(%struct.bio_st* noundef %call1, %struct.evp_pkey_st* noundef %call3, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #8
  %call8 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1381, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call7, i32 noundef 0) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %done, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #8
  %conv = trunc i64 %call11 to i32
  %call12 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1382, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %done, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = call %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO_bio(%struct.bio_st* noundef %call1, %struct.pkcs8_priv_key_info_st** noundef null) #8
  %4 = bitcast %struct.pkcs8_priv_key_info_st* %call15 to i8*
  %call16 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1383, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.148, i64 0, i64 0), i8* noundef %4) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %done, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = call %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef %call15) #8
  %5 = bitcast %struct.evp_pkey_st* %call19 to i8*
  %call20 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1384, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.149, i64 0, i64 0), i8* noundef %5) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %done, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %call23 = call i64 @ERR_peek_last_error() #8
  %conv24 = trunc i64 %call23 to i32
  %call25 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1385, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.150, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv24, i32 noundef 0) #8
  %tobool26.not = icmp ne i32 %call25, 0
  %spec.select = zext i1 %tobool26.not to i32
  br label %done

done:                                             ; preds = %lor.lhs.false22, %if.end, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18
  %pkey.0 = phi %struct.evp_pkey_st* [ %call3, %lor.lhs.false18 ], [ %call3, %lor.lhs.false14 ], [ %call3, %lor.lhs.false10 ], [ %call3, %lor.lhs.false6 ], [ %call3, %lor.lhs.false ], [ null, %if.end ], [ %call3, %lor.lhs.false22 ]
  %pkey2.0 = phi %struct.evp_pkey_st* [ %call19, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ %call19, %lor.lhs.false22 ]
  %p8inf.0 = phi %struct.pkcs8_priv_key_info_st* [ %call15, %lor.lhs.false18 ], [ %call15, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ %call15, %lor.lhs.false22 ]
  %ok.0 = phi i32 [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false22 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey2.0) #8
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef %p8inf.0) #8
  call void @BIO_free_all(%struct.bio_st* noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %done
  %retval.0 = phi i32 [ %ok.0, %done ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_PKCS82PKEY() #1 {
entry:
  %derp = alloca i8*, align 8
  %0 = bitcast i8** %derp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* getelementptr inbounds ([104 x i8], [104 x i8]* @kExampleBadECKeyDER, i64 0, i64 0), i8** %derp, align 8, !tbaa !5
  %call = call %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef null, i8** noundef nonnull %derp, i64 noundef 104) #8
  %1 = bitcast %struct.pkcs8_priv_key_info_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1344, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.151, i64 0, i64 0), i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %derp, align 8, !tbaa !5
  %call2 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1348, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.153, i64 0, i64 0), i8* noundef %2, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @kExampleBadECKeyDER, i64 1, i64 0)) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %done, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = call %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef %call) #8
  %3 = bitcast %struct.evp_pkey_st* %call6 to i8*
  %call7 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1351, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.154, i64 0, i64 0), i8* noundef %3) #8
  %tobool8.not = icmp ne i32 %call7, 0
  %spec.select = zext i1 %tobool8.not to i32
  br label %done

done:                                             ; preds = %if.end5, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end5 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ null, %if.end ], [ null, %entry ], [ %call6, %if.end5 ]
  call void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef %call) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EC_keygen_with_enc(i32 noundef %idx) #1 {
entry:
  %params = alloca %struct.evp_pkey_st*, align 8
  %key = alloca %struct.evp_pkey_st*, align 8
  %enc = alloca i32, align 4
  %0 = bitcast %struct.evp_pkey_st** %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %params, align 8, !tbaa !5
  %1 = bitcast %struct.evp_pkey_st** %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %key, align 8, !tbaa !5
  %2 = bitcast i32* %enc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  %idxprom = sext i32 %idx to i64
  %encoding = getelementptr inbounds [2 x %struct.anon.7], [2 x %struct.anon.7]* @ec_encodings, i64 0, i64 %idxprom, i32 0
  %3 = load i32, i32* %encoding, align 16, !tbaa !17
  store i32 %3, i32* %enc, align 4, !tbaa !11
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* noundef null) #8
  %5 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1475, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.155, i64 0, i64 0), i8* noundef %5) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1476, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.156, i64 0, i64 0), i32 noundef %conv) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %done, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @EVP_PKEY_CTX_set_group_name(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i64 0, i64 0)) #8
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1477, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.157, i64 0, i64 0), i32 noundef %conv8) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %done, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false5
  %call12 = tail call i32 @EVP_PKEY_CTX_set_ec_param_enc(%struct.evp_pkey_ctx_st* noundef %call, i32 noundef %3) #8
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1478, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.159, i64 0, i64 0), i32 noundef %conv14) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %done, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %call18 = call i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %params) #8
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1479, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.160, i64 0, i64 0), i32 noundef %conv20) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %done, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false17
  %6 = bitcast %struct.evp_pkey_st** %params to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !5
  %call24 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1480, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i64 0, i64 0), i8* noundef %7) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %done, label %if.end

if.end:                                           ; preds = %lor.lhs.false23
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !5
  %call26 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %8, %struct.evp_pkey_st* noundef %9, i8* noundef null) #8
  %10 = bitcast %struct.evp_pkey_ctx_st* %call26 to i8*
  %call27 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1484, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.162, i64 0, i64 0), i8* noundef %10) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %done, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end
  %call30 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call26) #8
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1485, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.163, i64 0, i64 0), i32 noundef %conv32) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %done, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false29
  %call36 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %call26, %struct.evp_pkey_st** noundef nonnull %key) #8
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1486, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.164, i64 0, i64 0), i32 noundef %conv38) #8
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %done, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false35
  %11 = bitcast %struct.evp_pkey_st** %key to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !5
  %call42 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1487, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.165, i64 0, i64 0), i8* noundef %12) #8
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %done, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false41
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !5
  %call46 = call i32 @evp_keymgmt_util_export(%struct.evp_pkey_st* noundef %13, i32 noundef 135, i32 (%struct.ossl_param_st*, i8*)* noundef nonnull @ec_export_get_encoding_cb, i8* noundef nonnull %2) #8
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1492, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.166, i64 0, i64 0), i32 noundef %conv48) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %done, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.end45
  %14 = load i32, i32* %enc, align 4, !tbaa !11
  %call55 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1493, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.167, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.168, i64 0, i64 0), i32 noundef %14, i32 noundef %3) #8
  %tobool56.not = icmp ne i32 %call55, 0
  %spec.select = zext i1 %tobool56.not to i32
  br label %done

done:                                             ; preds = %lor.lhs.false51, %if.end45, %if.end, %lor.lhs.false29, %lor.lhs.false35, %lor.lhs.false41, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false11, %lor.lhs.false17, %lor.lhs.false23
  %kctx.0 = phi %struct.evp_pkey_ctx_st* [ %call26, %if.end45 ], [ %call26, %lor.lhs.false41 ], [ %call26, %lor.lhs.false35 ], [ %call26, %lor.lhs.false29 ], [ %call26, %if.end ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false11 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call26, %lor.lhs.false51 ]
  %ret.0 = phi i32 [ 0, %if.end45 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false35 ], [ 0, %lor.lhs.false29 ], [ 0, %if.end ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false51 ]
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %key, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %15) #8
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %params, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %16) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %kctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_SM2() #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %pkeyparams = alloca %struct.evp_pkey_st*, align 8
  %sig_len = alloca i64, align 8
  %ciphertext = alloca [128 x i8], align 16
  %ctext_len = alloca i64, align 8
  %plaintext = alloca [8 x i8], align 1
  %ptext_len = alloca i64, align 8
  %sm2_id = alloca [10 x i8], align 1
  %sparams = alloca [2 x %struct.ossl_param_st], align 16
  %gparams = alloca [2 x %struct.ossl_param_st], align 16
  %mdname = alloca [50 x i8], align 16
  %tmp136 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %1 = bitcast %struct.evp_pkey_st** %pkeyparams to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkeyparams, align 8, !tbaa !5
  %2 = bitcast i64* %sig_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i64 0, i64* %sig_len, align 8, !tbaa !9
  %3 = getelementptr inbounds [128 x i8], [128 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #9
  %4 = bitcast i64* %ctext_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store i64 128, i64* %ctext_len, align 8, !tbaa !9
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %plaintext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  %6 = bitcast i64* %ptext_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store i64 8, i64* %ptext_len, align 8, !tbaa !9
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %sm2_id, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %7) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %7, i8* noundef nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_EVP_SM2.sm2_id, i64 0, i64 0), i64 10, i1 false)
  %8 = bitcast [2 x %struct.ossl_param_st]* %sparams to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %8) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %8, i8 0, i64 80, i1 false)
  %9 = bitcast [2 x %struct.ossl_param_st]* %gparams to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %9) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %9, i8 0, i64 80, i1 false)
  %10 = getelementptr inbounds [50 x i8], [50 x i8]* %mdname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %10) #9
  %11 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.175, i64 0, i64 0), i8* noundef null) #8
  %12 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1609, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.174, i64 0, i64 0), i8* noundef %12) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %cmp = icmp eq i32 %call2, 1
  %conv = zext i1 %cmp to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1612, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.176, i64 0, i64 0), i32 noundef %conv) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %done, label %if.end8

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef %call, i32 noundef 1172) #8
  %cmp10 = icmp ne i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  %call12 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1615, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.177, i64 0, i64 0), i32 noundef %conv11) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %done, label %if.end15

if.end15:                                         ; preds = %if.end8
  %call16 = call i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %pkeyparams) #8
  %cmp17 = icmp ne i32 %call16, 0
  %conv18 = zext i1 %cmp17 to i32
  %call19 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1618, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.178, i64 0, i64 0), i32 noundef %conv18) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %done, label %if.end22

if.end22:                                         ; preds = %if.end15
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparams, align 8, !tbaa !5
  %call23 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %13, %struct.evp_pkey_st* noundef %14, i8* noundef null) #8
  %15 = bitcast %struct.evp_pkey_ctx_st* %call23 to i8*
  %call24 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1622, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.179, i64 0, i64 0), i8* noundef %15) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %done, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call28 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call23) #8
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1625, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.163, i64 0, i64 0), i32 noundef %conv30) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %done, label %if.end34

if.end34:                                         ; preds = %if.end27
  %call35 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %call23, %struct.evp_pkey_st** noundef nonnull %pkey) #8
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1628, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.180, i64 0, i64 0), i32 noundef %conv37) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %done, label %if.end41

if.end41:                                         ; preds = %if.end34
  %call42 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %16 = bitcast %struct.evp_md_ctx_st* %call42 to i8*
  %call43 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1631, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.106, i64 0, i64 0), i8* noundef %16) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %done, label %if.end46

if.end46:                                         ; preds = %if.end41
  %call47 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %17 = bitcast %struct.evp_md_ctx_st* %call47 to i8*
  %call48 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1634, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.181, i64 0, i64 0), i8* noundef %17) #8
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %done, label %if.end51

if.end51:                                         ; preds = %if.end46
  %18 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call52 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %18, %struct.evp_pkey_st* noundef %19, i8* noundef null) #8
  %20 = bitcast %struct.evp_pkey_ctx_st* %call52 to i8*
  %call53 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1637, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.182, i64 0, i64 0), i8* noundef %20) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %done, label %if.end56

if.end56:                                         ; preds = %if.end51
  call void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* noundef %call42, %struct.evp_pkey_ctx_st* noundef %call52) #8
  call void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* noundef %call47, %struct.evp_pkey_ctx_st* noundef %call52) #8
  %21 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call57 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.184, i64 0, i64 0), i8* noundef null) #8
  %22 = bitcast %struct.evp_md_st* %call57 to i8*
  %call58 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1643, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.183, i64 0, i64 0), i8* noundef %22) #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %done, label %if.end61

if.end61:                                         ; preds = %if.end56
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call62 = call i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef %call42, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %call57, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %23) #8
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1646, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.185, i64 0, i64 0), i32 noundef %conv64) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %done, label %if.end68

if.end68:                                         ; preds = %if.end61
  %call69 = call i32 @EVP_PKEY_CTX_set1_id(%struct.evp_pkey_ctx_st* noundef %call52, i8* noundef nonnull %7, i32 noundef 10) #8
  %call70 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1649, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.186, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call69, i32 noundef 0) #8
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %done, label %if.end73

if.end73:                                         ; preds = %if.end68
  %call74 = call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef %call42, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4) #8
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %call77 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1652, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.86, i64 0, i64 0), i32 noundef %conv76) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %done, label %if.end80

if.end80:                                         ; preds = %if.end73
  %call81 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %call42, i8* noundef null, i64* noundef nonnull %sig_len) #8
  %cmp82 = icmp ne i32 %call81, 0
  %conv83 = zext i1 %cmp82 to i32
  %call84 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1656, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv83) #8
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %done, label %if.end87

if.end87:                                         ; preds = %if.end80
  %24 = load i64, i64* %sig_len, align 8, !tbaa !9
  %call88 = call i8* @CRYPTO_malloc(i64 noundef %24, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1659) #8
  %call89 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1659, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.88, i64 0, i64 0), i8* noundef %call88) #8
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %done, label %if.end92

if.end92:                                         ; preds = %if.end87
  %call93 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %call42, i8* noundef %call88, i64* noundef nonnull %sig_len) #8
  %cmp94 = icmp ne i32 %call93, 0
  %conv95 = zext i1 %cmp94 to i32
  %call96 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1662, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv95) #8
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %done, label %if.end99

if.end99:                                         ; preds = %if.end92
  %25 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call100 = call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %call47, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %call57, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %25) #8
  %cmp101 = icmp ne i32 %call100, 0
  %conv102 = zext i1 %cmp101 to i32
  %call103 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1668, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.187, i64 0, i64 0), i32 noundef %conv102) #8
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %done, label %if.end106

if.end106:                                        ; preds = %if.end99
  %call108 = call i32 @EVP_PKEY_CTX_set1_id(%struct.evp_pkey_ctx_st* noundef %call52, i8* noundef nonnull %7, i32 noundef 10) #8
  %call109 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1671, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.186, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call108, i32 noundef 0) #8
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %done, label %if.end112

if.end112:                                        ; preds = %if.end106
  %call113 = call i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef %call47, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4) #8
  %cmp114 = icmp ne i32 %call113, 0
  %conv115 = zext i1 %cmp114 to i32
  %call116 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1674, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv115) #8
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %done, label %if.end119

if.end119:                                        ; preds = %if.end112
  %26 = load i64, i64* %sig_len, align 8, !tbaa !9
  %call120 = call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef %call47, i8* noundef %call88, i64 noundef %26) #8
  %cmp121 = icmp ne i32 %call120, 0
  %conv122 = zext i1 %cmp121 to i32
  %call123 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1677, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv122) #8
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %done, label %if.end126

if.end126:                                        ; preds = %if.end119
  %arrayidx = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %gparams, i64 0, i64 0
  %gparams313 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %gparams, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %gparams313, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i64 0, i64 0), i8* noundef nonnull %10, i64 noundef 50) #8
  %arrayidx135 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %sparams, i64 0, i64 0
  %27 = bitcast %struct.ossl_param_st* %tmp136 to i8*
  br label %for.body

for.body:                                         ; preds = %if.end224, %if.end126
  %cmp128 = phi i1 [ false, %if.end126 ], [ true, %if.end224 ]
  %indvars.iv = phi i64 [ 0, %if.end126 ], [ 1, %if.end224 ]
  %check_md.0308 = phi %struct.evp_md_st* [ %call57, %if.end126 ], [ %call200, %if.end224 ]
  %cctx.0307 = phi %struct.evp_pkey_ctx_st* [ null, %if.end126 ], [ %call139, %if.end224 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %cctx.0307) #8
  %arrayidx130 = getelementptr inbounds [2 x i8*], [2 x i8*]* @__const.test_EVP_SM2.mdnames, i64 0, i64 %indvars.iv
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %27) #9
  %28 = load i8*, i8** %arrayidx130, align 8, !tbaa !5
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp136, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i64 0, i64 0), i8* noundef %28, i64 noundef 0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %27, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %27) #9
  %29 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %30 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call139 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %29, %struct.evp_pkey_st* noundef %30, i8* noundef null) #8
  %31 = bitcast %struct.evp_pkey_ctx_st* %call139 to i8*
  %call140 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1702, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.191, i64 0, i64 0), i8* noundef %31) #8
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %done, label %if.end143

if.end143:                                        ; preds = %for.body
  %call144 = call i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef %call139) #8
  %cmp145 = icmp ne i32 %call144, 0
  %conv146 = zext i1 %cmp145 to i32
  %call147 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1705, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.192, i64 0, i64 0), i32 noundef %conv146) #8
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %done, label %if.end150

if.end150:                                        ; preds = %if.end143
  %call152 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef %call139, %struct.ossl_param_st* noundef nonnull %arrayidx135) #8
  %cmp153 = icmp ne i32 %call152, 0
  %conv154 = zext i1 %cmp153 to i32
  %call155 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1708, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.193, i64 0, i64 0), i32 noundef %conv154) #8
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %done, label %if.end158

if.end158:                                        ; preds = %if.end150
  %call160 = call i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef %call139, i8* noundef nonnull %3, i64* noundef nonnull %ctext_len, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4) #8
  %cmp161 = icmp ne i32 %call160, 0
  %conv162 = zext i1 %cmp161 to i32
  %call163 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1712, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.194, i64 0, i64 0), i32 noundef %conv162) #8
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %done, label %if.end166

if.end166:                                        ; preds = %if.end158
  %call167 = call i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef %call139) #8
  %cmp168 = icmp ne i32 %call167, 0
  %conv169 = zext i1 %cmp168 to i32
  %call170 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1715, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.195, i64 0, i64 0), i32 noundef %conv169) #8
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %done, label %if.end173

if.end173:                                        ; preds = %if.end166
  %call175 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef %call139, %struct.ossl_param_st* noundef nonnull %arrayidx135) #8
  %cmp176 = icmp ne i32 %call175, 0
  %conv177 = zext i1 %cmp176 to i32
  %call178 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1718, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.193, i64 0, i64 0), i32 noundef %conv177) #8
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %done, label %if.end181

if.end181:                                        ; preds = %if.end173
  %32 = load i64, i64* %ctext_len, align 8, !tbaa !9
  %call184 = call i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef %call139, i8* noundef nonnull %5, i64* noundef nonnull %ptext_len, i8* noundef nonnull %3, i64 noundef %32) #8
  %cmp185 = icmp ne i32 %call184, 0
  %conv186 = zext i1 %cmp185 to i32
  %call187 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1722, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.196, i64 0, i64 0), i32 noundef %conv186) #8
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %done, label %if.end190

if.end190:                                        ; preds = %if.end181
  %call192 = call i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef %call139, %struct.ossl_param_st* noundef nonnull %arrayidx) #8
  %cmp193 = icmp ne i32 %call192, 0
  %conv194 = zext i1 %cmp193 to i32
  %call195 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1725, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.197, i64 0, i64 0), i32 noundef %conv194) #8
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %done, label %if.end198

if.end198:                                        ; preds = %if.end190
  call void @EVP_MD_free(%struct.evp_md_st* noundef %check_md.0308) #8
  %33 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call200 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %33, i8* noundef nonnull %10, i8* noundef null) #8
  %34 = bitcast %struct.evp_md_st* %call200 to i8*
  %call201 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1734, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.198, i64 0, i64 0), i8* noundef %34) #8
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %done, label %if.end204

if.end204:                                        ; preds = %if.end198
  %call207 = call i32 @EVP_MD_is_a(%struct.evp_md_st* noundef %call200, i8* noundef %28) #8
  %cmp208 = icmp ne i32 %call207, 0
  %conv209 = zext i1 %cmp208 to i32
  %call210 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1736, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.199, i64 0, i64 0), i32 noundef %conv209) #8
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.then212, label %if.end216

if.then212:                                       ; preds = %if.end204
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1737, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.200, i64 0, i64 0), i8* noundef nonnull %10, i8* noundef %28) #8
  br label %done

if.end216:                                        ; preds = %if.end204
  %35 = load i64, i64* %ptext_len, align 8, !tbaa !9
  %cmp217 = icmp eq i64 %35, 4
  %conv218 = zext i1 %cmp217 to i32
  %call221 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1741, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.201, i64 0, i64 0), i32 noundef %conv218) #8
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %done, label %if.end224

if.end224:                                        ; preds = %if.end216
  %call226 = call i32 @memcmp(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @kMsg, i64 0, i64 0), i64 noundef 4) #11
  %cmp227 = icmp eq i32 %call226, 0
  %conv228 = zext i1 %cmp227 to i32
  %call231 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1744, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.202, i64 0, i64 0), i32 noundef %conv228) #8
  %tobool232.not = icmp eq i32 %call231, 0
  %brmerge = or i1 %tobool232.not, %cmp128
  br i1 %brmerge, label %done.loopexit.split.loop.exit, label %for.body

done.loopexit.split.loop.exit:                    ; preds = %if.end224
  %not.tobool232.not.le = xor i1 %tobool232.not, true
  %.mux.le = zext i1 %not.tobool232.not.le to i32
  br label %done

done:                                             ; preds = %done.loopexit.split.loop.exit, %for.body, %if.end143, %if.end150, %if.end158, %if.end166, %if.end173, %if.end181, %if.end190, %if.end198, %if.end216, %if.then212, %if.end119, %if.end112, %if.end106, %if.end99, %if.end92, %if.end87, %if.end80, %if.end73, %if.end68, %if.end61, %if.end56, %if.end51, %if.end46, %if.end41, %if.end34, %if.end27, %if.end22, %if.end15, %if.end8, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end119 ], [ 0, %if.end112 ], [ 0, %if.end106 ], [ 0, %if.end99 ], [ 0, %if.end92 ], [ 0, %if.end87 ], [ 0, %if.end80 ], [ 0, %if.end73 ], [ 0, %if.end68 ], [ 0, %if.end61 ], [ 0, %if.end56 ], [ 0, %if.end51 ], [ 0, %if.end46 ], [ 0, %if.end41 ], [ 0, %if.end34 ], [ 0, %if.end27 ], [ 0, %if.end22 ], [ 0, %if.end15 ], [ 0, %if.end8 ], [ 0, %if.end ], [ 0, %entry ], [ 0, %if.then212 ], [ %.mux.le, %done.loopexit.split.loop.exit ], [ 0, %for.body ], [ 0, %if.end143 ], [ 0, %if.end150 ], [ 0, %if.end158 ], [ 0, %if.end166 ], [ 0, %if.end173 ], [ 0, %if.end181 ], [ 0, %if.end190 ], [ 0, %if.end198 ], [ 0, %if.end216 ]
  %kctx.0 = phi %struct.evp_pkey_ctx_st* [ %call23, %if.end119 ], [ %call23, %if.end112 ], [ %call23, %if.end106 ], [ %call23, %if.end99 ], [ %call23, %if.end92 ], [ %call23, %if.end87 ], [ %call23, %if.end80 ], [ %call23, %if.end73 ], [ %call23, %if.end68 ], [ %call23, %if.end61 ], [ %call23, %if.end56 ], [ %call23, %if.end51 ], [ %call23, %if.end46 ], [ %call23, %if.end41 ], [ %call23, %if.end34 ], [ %call23, %if.end27 ], [ %call23, %if.end22 ], [ null, %if.end15 ], [ null, %if.end8 ], [ null, %if.end ], [ null, %entry ], [ %call23, %if.then212 ], [ %call23, %if.end216 ], [ %call23, %if.end198 ], [ %call23, %if.end190 ], [ %call23, %if.end181 ], [ %call23, %if.end173 ], [ %call23, %if.end166 ], [ %call23, %if.end158 ], [ %call23, %if.end150 ], [ %call23, %if.end143 ], [ %call23, %for.body ], [ %call23, %done.loopexit.split.loop.exit ]
  %sctx.0 = phi %struct.evp_pkey_ctx_st* [ %call52, %if.end119 ], [ %call52, %if.end112 ], [ %call52, %if.end106 ], [ %call52, %if.end99 ], [ %call52, %if.end92 ], [ %call52, %if.end87 ], [ %call52, %if.end80 ], [ %call52, %if.end73 ], [ %call52, %if.end68 ], [ %call52, %if.end61 ], [ %call52, %if.end56 ], [ %call52, %if.end51 ], [ null, %if.end46 ], [ null, %if.end41 ], [ null, %if.end34 ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %if.end15 ], [ null, %if.end8 ], [ null, %if.end ], [ null, %entry ], [ %call52, %if.then212 ], [ %call52, %if.end216 ], [ %call52, %if.end198 ], [ %call52, %if.end190 ], [ %call52, %if.end181 ], [ %call52, %if.end173 ], [ %call52, %if.end166 ], [ %call52, %if.end158 ], [ %call52, %if.end150 ], [ %call52, %if.end143 ], [ %call52, %for.body ], [ %call52, %done.loopexit.split.loop.exit ]
  %sig.0 = phi i8* [ %call88, %if.end119 ], [ %call88, %if.end112 ], [ %call88, %if.end106 ], [ %call88, %if.end99 ], [ %call88, %if.end92 ], [ %call88, %if.end87 ], [ null, %if.end80 ], [ null, %if.end73 ], [ null, %if.end68 ], [ null, %if.end61 ], [ null, %if.end56 ], [ null, %if.end51 ], [ null, %if.end46 ], [ null, %if.end41 ], [ null, %if.end34 ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %if.end15 ], [ null, %if.end8 ], [ null, %if.end ], [ null, %entry ], [ %call88, %if.then212 ], [ %call88, %if.end216 ], [ %call88, %if.end198 ], [ %call88, %if.end190 ], [ %call88, %if.end181 ], [ %call88, %if.end173 ], [ %call88, %if.end166 ], [ %call88, %if.end158 ], [ %call88, %if.end150 ], [ %call88, %if.end143 ], [ %call88, %for.body ], [ %call88, %done.loopexit.split.loop.exit ]
  %md_ctx.0 = phi %struct.evp_md_ctx_st* [ %call42, %if.end119 ], [ %call42, %if.end112 ], [ %call42, %if.end106 ], [ %call42, %if.end99 ], [ %call42, %if.end92 ], [ %call42, %if.end87 ], [ %call42, %if.end80 ], [ %call42, %if.end73 ], [ %call42, %if.end68 ], [ %call42, %if.end61 ], [ %call42, %if.end56 ], [ %call42, %if.end51 ], [ %call42, %if.end46 ], [ %call42, %if.end41 ], [ null, %if.end34 ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %if.end15 ], [ null, %if.end8 ], [ null, %if.end ], [ null, %entry ], [ %call42, %if.then212 ], [ %call42, %if.end216 ], [ %call42, %if.end198 ], [ %call42, %if.end190 ], [ %call42, %if.end181 ], [ %call42, %if.end173 ], [ %call42, %if.end166 ], [ %call42, %if.end158 ], [ %call42, %if.end150 ], [ %call42, %if.end143 ], [ %call42, %for.body ], [ %call42, %done.loopexit.split.loop.exit ]
  %md_ctx_verify.0 = phi %struct.evp_md_ctx_st* [ %call47, %if.end119 ], [ %call47, %if.end112 ], [ %call47, %if.end106 ], [ %call47, %if.end99 ], [ %call47, %if.end92 ], [ %call47, %if.end87 ], [ %call47, %if.end80 ], [ %call47, %if.end73 ], [ %call47, %if.end68 ], [ %call47, %if.end61 ], [ %call47, %if.end56 ], [ %call47, %if.end51 ], [ %call47, %if.end46 ], [ null, %if.end41 ], [ null, %if.end34 ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %if.end15 ], [ null, %if.end8 ], [ null, %if.end ], [ null, %entry ], [ %call47, %if.then212 ], [ %call47, %if.end216 ], [ %call47, %if.end198 ], [ %call47, %if.end190 ], [ %call47, %if.end181 ], [ %call47, %if.end173 ], [ %call47, %if.end166 ], [ %call47, %if.end158 ], [ %call47, %if.end150 ], [ %call47, %if.end143 ], [ %call47, %for.body ], [ %call47, %done.loopexit.split.loop.exit ]
  %cctx.2 = phi %struct.evp_pkey_ctx_st* [ null, %if.end119 ], [ null, %if.end112 ], [ null, %if.end106 ], [ null, %if.end99 ], [ null, %if.end92 ], [ null, %if.end87 ], [ null, %if.end80 ], [ null, %if.end73 ], [ null, %if.end68 ], [ null, %if.end61 ], [ null, %if.end56 ], [ null, %if.end51 ], [ null, %if.end46 ], [ null, %if.end41 ], [ null, %if.end34 ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %if.end15 ], [ null, %if.end8 ], [ null, %if.end ], [ null, %entry ], [ %call139, %if.then212 ], [ %call139, %if.end216 ], [ %call139, %if.end198 ], [ %call139, %if.end190 ], [ %call139, %if.end181 ], [ %call139, %if.end173 ], [ %call139, %if.end166 ], [ %call139, %if.end158 ], [ %call139, %if.end150 ], [ %call139, %if.end143 ], [ %call139, %for.body ], [ %call139, %done.loopexit.split.loop.exit ]
  %check_md.2 = phi %struct.evp_md_st* [ %call57, %if.end119 ], [ %call57, %if.end112 ], [ %call57, %if.end106 ], [ %call57, %if.end99 ], [ %call57, %if.end92 ], [ %call57, %if.end87 ], [ %call57, %if.end80 ], [ %call57, %if.end73 ], [ %call57, %if.end68 ], [ %call57, %if.end61 ], [ %call57, %if.end56 ], [ null, %if.end51 ], [ null, %if.end46 ], [ null, %if.end41 ], [ null, %if.end34 ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %if.end15 ], [ null, %if.end8 ], [ null, %if.end ], [ null, %entry ], [ %call200, %if.then212 ], [ %call200, %done.loopexit.split.loop.exit ], [ %check_md.0308, %for.body ], [ %check_md.0308, %if.end143 ], [ %check_md.0308, %if.end150 ], [ %check_md.0308, %if.end158 ], [ %check_md.0308, %if.end166 ], [ %check_md.0308, %if.end173 ], [ %check_md.0308, %if.end181 ], [ %check_md.0308, %if.end190 ], [ %call200, %if.end198 ], [ %call200, %if.end216 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %kctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %sctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %cctx.2) #8
  %36 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %36) #8
  %37 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkeyparams, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %37) #8
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %md_ctx.0) #8
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %md_ctx_verify.0) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %check_md.2) #8
  call void @CRYPTO_free(i8* noundef %sig.0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1759) #8
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_SM2_verify() #1 {
entry:
  %signature = alloca [70 x i8], align 16
  %0 = getelementptr inbounds [70 x i8], [70 x i8]* %signature, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 70, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(70) %0, i8* noundef nonnull align 16 dereferenceable(70) getelementptr inbounds ([70 x i8], [70 x i8]* @__const.test_EVP_SM2_verify.signature, i64 0, i64 0), i64 70, i1 false)
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([179 x i8], [179 x i8]* @.str.203, i64 0, i64 0)) #11
  %conv = trunc i64 %call to i32
  %call1 = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef getelementptr inbounds ([179 x i8], [179 x i8]* @.str.203, i64 0, i64 0), i32 noundef %conv) #8
  %cmp = icmp ne %struct.bio_st* %call1, null
  %conv2 = zext i1 %cmp to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1537, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.206, i64 0, i64 0), i32 noundef %conv2) #8
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call6 = tail call %struct.evp_pkey_st* @PEM_read_bio_PUBKEY_ex(%struct.bio_st* noundef %call1, %struct.evp_pkey_st** noundef null, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef null) #8
  %cmp7 = icmp ne %struct.evp_pkey_st* %call6, null
  %conv8 = zext i1 %cmp7 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1541, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.207, i64 0, i64 0), i32 noundef %conv8) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %done, label %if.end14

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef %call6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.175, i64 0, i64 0)) #8
  %cmp16 = icmp ne i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1544, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.208, i64 0, i64 0), i32 noundef %conv17) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %done, label %if.end21

if.end21:                                         ; preds = %if.end14
  %call22 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %2 = bitcast %struct.evp_md_ctx_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1547, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.209, i64 0, i64 0), i8* noundef %2) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %done, label %if.end26

if.end26:                                         ; preds = %if.end21
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call27 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %3, %struct.evp_pkey_st* noundef %call6, i8* noundef null) #8
  %4 = bitcast %struct.evp_pkey_ctx_st* %call27 to i8*
  %call28 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1550, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.210, i64 0, i64 0), i8* noundef %4) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %done, label %if.end31

if.end31:                                         ; preds = %if.end26
  tail call void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* noundef %call22, %struct.evp_pkey_ctx_st* noundef %call27) #8
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call32 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.184, i64 0, i64 0), i8* noundef null) #8
  %6 = bitcast %struct.evp_md_st* %call32 to i8*
  %call33 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1555, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.211, i64 0, i64 0), i8* noundef %6) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %done, label %if.end36

if.end36:                                         ; preds = %if.end31
  %call37 = tail call i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef %call22, %struct.evp_pkey_ctx_st** noundef null, %struct.evp_md_st* noundef %call32, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %call6) #8
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1558, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.212, i64 0, i64 0), i32 noundef %conv39) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %done, label %if.end43

if.end43:                                         ; preds = %if.end36
  %call44 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.205, i64 0, i64 0)) #11
  %conv45 = trunc i64 %call44 to i32
  %call46 = tail call i32 @EVP_PKEY_CTX_set1_id(%struct.evp_pkey_ctx_st* noundef %call27, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.205, i64 0, i64 0), i32 noundef %conv45) #8
  %call47 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1561, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.213, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call46, i32 noundef 0) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %done, label %if.end50

if.end50:                                         ; preds = %if.end43
  %call51 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i64 0, i64 0)) #11
  %call52 = tail call i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef %call22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.204, i64 0, i64 0), i64 noundef %call51) #8
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1564, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.214, i64 0, i64 0), i32 noundef %conv54) #8
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %done, label %if.end58

if.end58:                                         ; preds = %if.end50
  %call59 = call i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef %call22, i8* noundef nonnull %0, i64 noundef 70) #8
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1567, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.215, i64 0, i64 0), i32 noundef %conv61) #8
  %tobool63.not = icmp ne i32 %call62, 0
  %spec.select = zext i1 %tobool63.not to i32
  br label %done

done:                                             ; preds = %if.end58, %if.end50, %if.end43, %if.end36, %if.end31, %if.end26, %if.end21, %if.end14, %if.end, %entry
  %rc.0 = phi i32 [ 0, %if.end50 ], [ 0, %if.end43 ], [ 0, %if.end36 ], [ 0, %if.end31 ], [ 0, %if.end26 ], [ 0, %if.end21 ], [ 0, %if.end14 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end58 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ %call6, %if.end50 ], [ %call6, %if.end43 ], [ %call6, %if.end36 ], [ %call6, %if.end31 ], [ %call6, %if.end26 ], [ %call6, %if.end21 ], [ %call6, %if.end14 ], [ %call6, %if.end ], [ null, %entry ], [ %call6, %if.end58 ]
  %mctx.0 = phi %struct.evp_md_ctx_st* [ %call22, %if.end50 ], [ %call22, %if.end43 ], [ %call22, %if.end36 ], [ %call22, %if.end31 ], [ %call22, %if.end26 ], [ %call22, %if.end21 ], [ null, %if.end14 ], [ null, %if.end ], [ null, %entry ], [ %call22, %if.end58 ]
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ %call27, %if.end50 ], [ %call27, %if.end43 ], [ %call27, %if.end36 ], [ %call27, %if.end31 ], [ %call27, %if.end26 ], [ null, %if.end21 ], [ null, %if.end14 ], [ null, %if.end ], [ null, %entry ], [ %call27, %if.end58 ]
  %sm3.0 = phi %struct.evp_md_st* [ %call32, %if.end50 ], [ %call32, %if.end43 ], [ %call32, %if.end36 ], [ %call32, %if.end31 ], [ null, %if.end26 ], [ null, %if.end21 ], [ null, %if.end14 ], [ null, %if.end ], [ null, %entry ], [ %call32, %if.end58 ]
  %call66 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #8
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %mctx.0) #8
  call void @EVP_MD_free(%struct.evp_md_st* noundef %sm3.0) #8
  call void @llvm.lifetime.end.p0i8(i64 70, i8* nonnull %0) #9
  ret i32 %rc.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_set_get_raw_keys(i32 noundef %tst) #1 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %cmp.not = icmp eq %struct.ossl_provider_st* %0, null
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %call = tail call fastcc i32 @test_set_get_raw_keys_int(i32 noundef %tst, i32 noundef 0, i32 noundef 0) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %call1 = tail call fastcc i32 @test_set_get_raw_keys_int(i32 noundef %tst, i32 noundef 0, i32 noundef 1) #10
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %cmp4.not = icmp eq %struct.ossl_provider_st* %1, null
  br i1 %cmp4.not, label %lor.lhs.false5, label %land.rhs

lor.lhs.false5:                                   ; preds = %land.lhs.true3
  %call6 = tail call fastcc i32 @test_set_get_raw_keys_int(i32 noundef %tst, i32 noundef 1, i32 noundef 0) #10
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false5, %land.lhs.true3
  %call8 = tail call fastcc i32 @test_set_get_raw_keys_int(i32 noundef %tst, i32 noundef 1, i32 noundef 1) #10
  %tobool9 = icmp ne i32 %call8, 0
  %phi.cast = zext i1 %tobool9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false5, %land.lhs.true, %lor.lhs.false
  %2 = phi i32 [ 0, %lor.lhs.false5 ], [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

declare dso_local %struct.evp_pkey_method_st* @EVP_PKEY_meth_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_set_check(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_st*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @pkey_custom_check(%struct.evp_pkey_st* nocapture noundef readnone %pkey) #0 {
entry:
  ret i32 48879
}

declare dso_local void @EVP_PKEY_meth_set_public_check(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_st*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @pkey_custom_pub_check(%struct.evp_pkey_st* nocapture noundef readnone %pkey) #0 {
entry:
  ret i32 48879
}

declare dso_local void @EVP_PKEY_meth_set_param_check(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_st*)* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @pkey_custom_param_check(%struct.evp_pkey_st* nocapture noundef readnone %pkey) #0 {
entry:
  ret i32 48879
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_meth_add0(%struct.evp_pkey_method_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_PKEY_check(i32 noundef %i) #1 {
entry:
  %idxprom = sext i32 %i to i64
  %kder = getelementptr inbounds [7 x %struct.APK_DATA_st], [7 x %struct.APK_DATA_st]* @keycheckdata, i64 0, i64 %idxprom, i32 0
  %0 = load i8*, i8** %kder, align 16, !tbaa !13
  %size = getelementptr inbounds [7 x %struct.APK_DATA_st], [7 x %struct.APK_DATA_st]* @keycheckdata, i64 0, i64 %idxprom, i32 1
  %1 = load i64, i64* %size, align 8, !tbaa !15
  %evptype = getelementptr inbounds [7 x %struct.APK_DATA_st], [7 x %struct.APK_DATA_st]* @keycheckdata, i64 0, i64 %idxprom, i32 3
  %2 = load i32, i32* %evptype, align 8, !tbaa !16
  %check = getelementptr inbounds [7 x %struct.APK_DATA_st], [7 x %struct.APK_DATA_st]* @keycheckdata, i64 0, i64 %idxprom, i32 4
  %3 = load i32, i32* %check, align 4, !tbaa !20
  %pub_check = getelementptr inbounds [7 x %struct.APK_DATA_st], [7 x %struct.APK_DATA_st]* @keycheckdata, i64 0, i64 %idxprom, i32 5
  %4 = load i32, i32* %pub_check, align 16, !tbaa !21
  %param_check = getelementptr inbounds [7 x %struct.APK_DATA_st], [7 x %struct.APK_DATA_st]* @keycheckdata, i64 0, i64 %idxprom, i32 6
  %5 = load i32, i32* %param_check, align 4, !tbaa !22
  %keytype = getelementptr inbounds [7 x %struct.APK_DATA_st], [7 x %struct.APK_DATA_st]* @keycheckdata, i64 0, i64 %idxprom, i32 2
  %6 = load i8*, i8** %keytype, align 16, !tbaa !23
  %call = tail call fastcc %struct.evp_pkey_st* @load_example_key(i8* noundef %6, i8* noundef %0, i64 noundef %1) #10
  %7 = bitcast %struct.evp_pkey_st* %call to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1914, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.233, i64 0, i64 0), i8* noundef %7) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %8 = lshr i64 39, %idxprom
  %9 = and i64 %8, 1
  %cmp.not = icmp eq i64 %9, 0
  br i1 %cmp.not, label %if.end7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %call) #8
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1917, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.139, i64 0, i64 0), i32 noundef %call3, i32 noundef %2) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %done, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %10 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call8 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %10, %struct.evp_pkey_st* noundef %call, i8* noundef null) #8
  %11 = bitcast %struct.evp_pkey_ctx_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1920, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.234, i64 0, i64 0), i8* noundef %11) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %done, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call13 = tail call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef %call8) #8
  %call14 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1923, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.236, i64 0, i64 0), i32 noundef %call13, i32 noundef %3) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %done, label %if.end17

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef %call8) #8
  %call19 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1926, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.237, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.238, i64 0, i64 0), i32 noundef %call18, i32 noundef %4) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %done, label %if.end22

if.end22:                                         ; preds = %if.end17
  %call23 = tail call i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef %call8) #8
  %call24 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1929, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.239, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.240, i64 0, i64 0), i32 noundef %call23, i32 noundef %5) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %done, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call28 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 233811181, %struct.engine_st* noundef null) #8
  %call29 = tail call i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef %call) #8
  %pkey30 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %call28, i64 0, i32 14
  store %struct.evp_pkey_st* %call, %struct.evp_pkey_st** %pkey30, align 8, !tbaa !24
  %call31 = tail call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef %call28) #8
  %call32 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1938, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.241, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.242, i64 0, i64 0), i32 noundef %call31, i32 noundef 48879) #8
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %done, label %if.end35

if.end35:                                         ; preds = %if.end27
  %call36 = tail call i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef nonnull %call28) #8
  %call37 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1941, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.243, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.242, i64 0, i64 0), i32 noundef %call36, i32 noundef 48879) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %done, label %if.end40

if.end40:                                         ; preds = %if.end35
  %call41 = tail call i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef nonnull %call28) #8
  %call42 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1944, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.244, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.242, i64 0, i64 0), i32 noundef %call41, i32 noundef 48879) #8
  %tobool43.not = icmp ne i32 %call42, 0
  %spec.select = zext i1 %tobool43.not to i32
  br label %done

done:                                             ; preds = %if.end40, %if.end35, %if.end27, %if.end22, %if.end17, %if.end12, %if.end7, %land.lhs.true, %entry
  %ctx2.0 = phi %struct.evp_pkey_ctx_st* [ %call28, %if.end35 ], [ %call28, %if.end27 ], [ null, %if.end22 ], [ null, %if.end17 ], [ null, %if.end12 ], [ null, %if.end7 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call28, %if.end40 ]
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call8, %if.end35 ], [ %call8, %if.end27 ], [ %call8, %if.end22 ], [ %call8, %if.end17 ], [ %call8, %if.end12 ], [ %call8, %if.end7 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call8, %if.end40 ]
  %ret.0 = phi i32 [ 0, %if.end35 ], [ 0, %if.end27 ], [ 0, %if.end22 ], [ 0, %if.end17 ], [ 0, %if.end12 ], [ 0, %if.end7 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %spec.select, %if.end40 ]
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #8
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx2.0) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_CMAC_keygen() #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %mac = alloca [16 x i8], align 16
  %mac2 = alloca [16 x i8], align 16
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %mac, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #9
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %mac2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9
  %3 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %cmp.not = icmp eq %struct.ossl_provider_st* %3, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1995, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.74, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 894, %struct.engine_st* noundef null) #8
  %call2 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call1) #8
  %call3 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2004, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.163, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call %struct.evp_cipher_st* @EVP_aes_256_ecb() #8
  %4 = bitcast %struct.evp_cipher_st* %call4 to i8*
  %call5 = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %call1, i32 noundef -1, i32 noundef 4, i32 noundef 12, i32 noundef 0, i8* noundef %4) #8
  %call6 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2007, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @.str.246, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %done, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call9 = tail call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %call1, i32 noundef -1, i32 noundef 4, i32 noundef 6, i32 noundef 32, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_CMAC_keygen.key, i64 0, i64 0)) #8
  %call10 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2010, i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.247, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call9, i32 noundef 0) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %done, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %call13 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %call1, %struct.evp_pkey_st** noundef nonnull %pkey) #8
  %call14 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2011, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.180, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call13, i32 noundef 0) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %done, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %5 = bitcast %struct.evp_pkey_st** %pkey to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !5
  %call17 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2012, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %6) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %done, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call20 = call fastcc i32 @get_cmac_val(%struct.evp_pkey_st* noundef %7, i8* noundef nonnull %1) #10
  %cmp21 = icmp ne i32 %call20, 0
  %conv = zext i1 %cmp21 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2013, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.248, i64 0, i64 0), i32 noundef %conv) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %done, label %if.end25

if.end25:                                         ; preds = %lor.lhs.false19
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %8) #8
  %call26 = call %struct.evp_cipher_st* @EVP_aes_256_ecb() #8
  %call27 = call %struct.evp_pkey_st* @EVP_PKEY_new_CMAC_key(%struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_CMAC_keygen.key, i64 0, i64 0), i64 noundef 32, %struct.evp_cipher_st* noundef %call26) #8
  store %struct.evp_pkey_st* %call27, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %9 = bitcast %struct.evp_pkey_st* %call27 to i8*
  %call28 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2024, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %9) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %done, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.end25
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call32 = call fastcc i32 @get_cmac_val(%struct.evp_pkey_st* noundef %10, i8* noundef nonnull %2) #10
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2025, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.249, i64 0, i64 0), i32 noundef %conv34) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %done, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false30
  %call40 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2026, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.250, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.251, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 16, i8* noundef nonnull %2, i64 noundef 16) #8
  %tobool41.not = icmp ne i32 %call40, 0
  %spec.select = zext i1 %tobool41.not to i32
  br label %done

done:                                             ; preds = %lor.lhs.false37, %if.end25, %lor.lhs.false30, %if.end, %lor.lhs.false, %lor.lhs.false8, %lor.lhs.false12, %lor.lhs.false16, %lor.lhs.false19
  %ret.0 = phi i32 [ 0, %lor.lhs.false30 ], [ 0, %if.end25 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false8 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %lor.lhs.false37 ]
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %11) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %done ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_HKDF() #1 {
entry:
  %out = alloca [20 x i8], align 16
  %outlen = alloca i64, align 8
  %salt = alloca [11 x i8], align 1
  %key = alloca [31 x i8], align 16
  %info = alloca [11 x i8], align 1
  %expected = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #9
  %1 = bitcast i64* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = getelementptr inbounds [11 x i8], [11 x i8]* %salt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %2) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %2, i8* noundef nonnull align 1 dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_HKDF.salt, i64 0, i64 0), i64 11, i1 false)
  %3 = getelementptr inbounds [31 x i8], [31 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 31, i8* nonnull %3) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(31) %3, i8* noundef nonnull align 16 dereferenceable(31) getelementptr inbounds ([31 x i8], [31 x i8]* @__const.test_HKDF.key, i64 0, i64 0), i64 31, i1 false)
  %4 = getelementptr inbounds [11 x i8], [11 x i8]* %info, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %4) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %4, i8* noundef nonnull align 1 dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_HKDF.info, i64 0, i64 0), i64 11, i1 false)
  %5 = getelementptr inbounds [20 x i8], [20 x i8]* %expected, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %5, i8* noundef nonnull align 16 dereferenceable(20) getelementptr inbounds ([20 x i8], [20 x i8]* @__const.test_HKDF.expected, i64 0, i64 0), i64 20, i1 false)
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.259, i64 0, i64 0), i8* noundef null) #8
  %7 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2054, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.258, i64 0, i64 0), i8* noundef %7) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %for.body

for.body:                                         ; preds = %entry, %lor.lhs.false30
  %cmp = phi i1 [ true, %lor.lhs.false30 ], [ false, %entry ]
  store i64 20, i64* %outlen, align 8, !tbaa !9
  %call2 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 20) #8
  %call3 = call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %call4 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2062, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.260, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call3, i32 noundef 0) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call6 = call %struct.evp_md_st* @EVP_sha256() #8
  %call7 = call i32 @EVP_PKEY_CTX_set_hkdf_md(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_md_st* noundef %call6) #8
  %call8 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2063, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.261, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call7, i32 noundef 0) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %done, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call12 = call i32 @EVP_PKEY_CTX_set1_hkdf_salt(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %2, i32 noundef 10) #8
  %call13 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2065, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.262, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call12, i32 noundef 0) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %done, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false10
  %call17 = call i32 @EVP_PKEY_CTX_set1_hkdf_key(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %3, i32 noundef 30) #8
  %call18 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2067, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call17, i32 noundef 0) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %done, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %call22 = call i32 @EVP_PKEY_CTX_add1_hkdf_info(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %4, i32 noundef 10) #8
  %call23 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2069, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.264, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call22, i32 noundef 0) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %done, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false20
  %call27 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %0, i64* noundef nonnull %outlen) #8
  %call28 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2070, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.265, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call27, i32 noundef 0) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %done, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %8 = load i64, i64* %outlen, align 8, !tbaa !9
  %call33 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2071, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.266, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.267, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %8, i8* noundef nonnull %5, i64 noundef 20) #8
  %tobool34.not = icmp eq i32 %call33, 0
  %brmerge = or i1 %tobool34.not, %cmp
  br i1 %brmerge, label %done.loopexit.split.loop.exit, label %for.body

done.loopexit.split.loop.exit:                    ; preds = %lor.lhs.false30
  %not.tobool34.not.le = xor i1 %tobool34.not, true
  %.mux.le = zext i1 %not.tobool34.not.le to i32
  br label %done

done:                                             ; preds = %done.loopexit.split.loop.exit, %lor.lhs.false25, %lor.lhs.false20, %lor.lhs.false15, %lor.lhs.false10, %lor.lhs.false, %for.body, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ %.mux.le, %done.loopexit.split.loop.exit ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %for.body ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 31, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_emptyikm_HKDF() #1 {
entry:
  %out = alloca [20 x i8], align 16
  %outlen = alloca i64, align 8
  %salt = alloca [11 x i8], align 1
  %key = alloca [1 x i8], align 1
  %info = alloca [11 x i8], align 1
  %expected = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #9
  %1 = bitcast i64* %outlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = getelementptr inbounds [11 x i8], [11 x i8]* %salt, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %2) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %2, i8* noundef nonnull align 1 dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_emptyikm_HKDF.salt, i64 0, i64 0), i64 11, i1 false)
  %3 = getelementptr inbounds [1 x i8], [1 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #9
  store i8 0, i8* %3, align 1
  %4 = getelementptr inbounds [11 x i8], [11 x i8]* %info, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 11, i8* nonnull %4) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(11) %4, i8* noundef nonnull align 1 dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @__const.test_emptyikm_HKDF.info, i64 0, i64 0), i64 11, i1 false)
  %5 = getelementptr inbounds [20 x i8], [20 x i8]* %expected, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %5) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %5, i8* noundef nonnull align 16 dereferenceable(20) getelementptr inbounds ([20 x i8], [20 x i8]* @__const.test_emptyikm_HKDF.expected, i64 0, i64 0), i64 20, i1 false)
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.259, i64 0, i64 0), i8* noundef null) #8
  %7 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2098, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.258, i64 0, i64 0), i8* noundef %7) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  store i64 20, i64* %outlen, align 8, !tbaa !9
  %call2 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 20) #8
  %call3 = call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %call4 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2104, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.260, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call3, i32 noundef 0) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call6 = call %struct.evp_md_st* @EVP_sha256() #8
  %call7 = call i32 @EVP_PKEY_CTX_set_hkdf_md(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_md_st* noundef %call6) #8
  %call8 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2105, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.261, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call7, i32 noundef 0) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %done, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %call12 = call i32 @EVP_PKEY_CTX_set1_hkdf_salt(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %2, i32 noundef 10) #8
  %call13 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2107, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.262, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call12, i32 noundef 0) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %done, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false10
  %call17 = call i32 @EVP_PKEY_CTX_set1_hkdf_key(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %3, i32 noundef 0) #8
  %call18 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2109, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.263, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call17, i32 noundef 0) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %done, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %call22 = call i32 @EVP_PKEY_CTX_add1_hkdf_info(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %4, i32 noundef 10) #8
  %call23 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2111, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.264, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call22, i32 noundef 0) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %done, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false20
  %call27 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call, i8* noundef nonnull %0, i64* noundef nonnull %outlen) #8
  %call28 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2112, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.265, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call27, i32 noundef 0) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %done, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %8 = load i64, i64* %outlen, align 8, !tbaa !9
  %call33 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2113, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.266, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.267, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %8, i8* noundef nonnull %5, i64 noundef 20) #8
  %tobool34.not = icmp ne i32 %call33, 0
  %spec.select = zext i1 %tobool34.not to i32
  br label %done

done:                                             ; preds = %lor.lhs.false30, %if.end, %lor.lhs.false, %lor.lhs.false10, %lor.lhs.false15, %lor.lhs.false20, %lor.lhs.false25, %entry
  %ret.0 = phi i32 [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false20 ], [ 0, %lor.lhs.false15 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %lor.lhs.false30 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 11, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_X509_PUBKEY_inplace() #1 {
entry:
  %xp = alloca %struct.X509_pubkey_st*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.X509_pubkey_st** %xp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.X509_pubkey_st* @X509_PUBKEY_new_ex(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef null) #8
  store %struct.X509_pubkey_st* %call, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  %2 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @kExampleECPubKeyDER, i64 0, i64 0), i8** %p, align 8, !tbaa !5
  %.cast = bitcast %struct.X509_pubkey_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2132, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.268, i64 0, i64 0), i8* noundef %.cast) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call %struct.X509_pubkey_st* @d2i_X509_PUBKEY(%struct.X509_pubkey_st** noundef nonnull %xp, i8** noundef nonnull %p, i64 noundef 91) #8
  %3 = bitcast %struct.X509_pubkey_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2134, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.269, i64 0, i64 0), i8* noundef %3) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %done, label %if.end6

if.end6:                                          ; preds = %if.end
  %4 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  %call7 = call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef %4) #8
  %5 = bitcast %struct.evp_pkey_st* %call7 to i8*
  %call8 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2137, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.270, i64 0, i64 0), i8* noundef %5) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %done, label %if.end11

if.end11:                                         ; preds = %if.end6
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @kExampleBadECPubKeyDER, i64 0, i64 0), i8** %p, align 8, !tbaa !5
  %call12 = call %struct.X509_pubkey_st* @d2i_X509_PUBKEY(%struct.X509_pubkey_st** noundef nonnull %xp, i8** noundef nonnull %p, i64 noundef 91) #8
  store %struct.X509_pubkey_st* %call12, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  %6 = bitcast %struct.X509_pubkey_st* %call12 to i8*
  %call13 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2143, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.271, i64 0, i64 0), i8* noundef %6) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %done, label %if.end16

if.end16:                                         ; preds = %if.end11
  %7 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  %call17 = call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef %7) #8
  %cmp = icmp eq %struct.evp_pkey_st* %call17, null
  %conv = zext i1 %cmp to i32
  %call20 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2146, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.272, i64 0, i64 0), i32 noundef %conv) #8
  %tobool21.not = icmp ne i32 %call20, 0
  %spec.select = zext i1 %tobool21.not to i32
  br label %done

done:                                             ; preds = %if.end16, %if.end11, %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end11 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end16 ]
  %8 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %8) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_X509_PUBKEY_dup() #1 {
entry:
  %xp = alloca %struct.X509_pubkey_st*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.X509_pubkey_st** %xp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @kExampleECPubKeyDER, i64 0, i64 0), i8** %p, align 8, !tbaa !5
  %2 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.X509_pubkey_st* @X509_PUBKEY_new_ex(%struct.ossl_lib_ctx_st* noundef %2, i8* noundef null) #8
  store %struct.X509_pubkey_st* %call, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  %3 = bitcast %struct.X509_pubkey_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2164, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.268, i64 0, i64 0), i8* noundef %3) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call %struct.X509_pubkey_st* @d2i_X509_PUBKEY(%struct.X509_pubkey_st** noundef nonnull %xp, i8** noundef nonnull %p, i64 noundef 91) #8
  %4 = bitcast %struct.X509_pubkey_st* %call2 to i8*
  %call3 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2165, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.269, i64 0, i64 0), i8* noundef %4) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %done, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  %call6 = call %struct.X509_pubkey_st* @X509_PUBKEY_dup(%struct.X509_pubkey_st* noundef %5) #8
  %6 = bitcast %struct.X509_pubkey_st* %call6 to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2166, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.273, i64 0, i64 0), i8* noundef %6) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %done, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %7 = bitcast %struct.X509_pubkey_st** %xp to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !5
  %call10 = call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2167, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.268, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.274, i64 0, i64 0), i8* noundef %8, i8* noundef %6) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %done, label %if.end

if.end:                                           ; preds = %lor.lhs.false9
  %call12 = call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef %call6) #8
  %9 = bitcast %struct.evp_pkey_st* %call12 to i8*
  %call13 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2170, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.275, i64 0, i64 0), i8* noundef %9) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %done, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %if.end
  %10 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  %call16 = call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef %10) #8
  %11 = bitcast %struct.evp_pkey_st* %call16 to i8*
  %call17 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2171, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.270, i64 0, i64 0), i8* noundef %11) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %done, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %call20 = call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef %call6) #8
  %12 = bitcast %struct.evp_pkey_st* %call20 to i8*
  %13 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  %call21 = call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef %13) #8
  %14 = bitcast %struct.evp_pkey_st* %call21 to i8*
  %call22 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2172, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.275, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.270, i64 0, i64 0), i8* noundef %12, i8* noundef %14) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %done, label %if.end25

if.end25:                                         ; preds = %lor.lhs.false19
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %call6) #8
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @kExampleBadECPubKeyDER, i64 0, i64 0), i8** %p, align 8, !tbaa !5
  %call26 = call %struct.X509_pubkey_st* @d2i_X509_PUBKEY(%struct.X509_pubkey_st** noundef nonnull %xp, i8** noundef nonnull %p, i64 noundef 91) #8
  store %struct.X509_pubkey_st* %call26, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  %15 = bitcast %struct.X509_pubkey_st* %call26 to i8*
  %call27 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2180, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.271, i64 0, i64 0), i8* noundef %15) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %done, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end25
  %16 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  %call30 = call %struct.X509_pubkey_st* @X509_PUBKEY_dup(%struct.X509_pubkey_st* noundef %16) #8
  %17 = bitcast %struct.X509_pubkey_st* %call30 to i8*
  %call31 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2181, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.273, i64 0, i64 0), i8* noundef %17) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %done, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false29
  %18 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %18) #8
  store %struct.X509_pubkey_st* null, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  %call35 = call %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef %call30) #8
  %cmp = icmp eq %struct.evp_pkey_st* %call35, null
  %conv = zext i1 %cmp to i32
  %call38 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2186, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.276, i64 0, i64 0), i32 noundef %conv) #8
  %tobool39.not = icmp ne i32 %call38, 0
  %spec.select = zext i1 %tobool39.not to i32
  br label %done

done:                                             ; preds = %if.end34, %if.end25, %lor.lhs.false29, %if.end, %lor.lhs.false15, %lor.lhs.false19, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9
  %ret.0 = phi i32 [ 0, %lor.lhs.false29 ], [ 0, %if.end25 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false15 ], [ 0, %if.end ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end34 ]
  %xq.0 = phi %struct.X509_pubkey_st* [ %call30, %lor.lhs.false29 ], [ null, %if.end25 ], [ %call6, %lor.lhs.false19 ], [ %call6, %lor.lhs.false15 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call30, %if.end34 ]
  %19 = load %struct.X509_pubkey_st*, %struct.X509_pubkey_st** %xp, align 8, !tbaa !5
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %19) #8
  call void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef %xq.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_invalide_ec_char2_pub_range_decode(i32 noundef %id) #1 {
entry:
  %idxprom = sext i32 %id to i64
  %der = getelementptr inbounds [3 x %struct.ec_der_pub_keys_st], [3 x %struct.ec_der_pub_keys_st]* @ec_der_pub_keys, i64 0, i64 %idxprom, i32 0
  %0 = load i8*, i8** %der, align 8, !tbaa !27
  %len = getelementptr inbounds [3 x %struct.ec_der_pub_keys_st], [3 x %struct.ec_der_pub_keys_st]* @ec_der_pub_keys, i64 0, i64 %idxprom, i32 1
  %1 = load i64, i64* %len, align 8, !tbaa !29
  %call = tail call fastcc %struct.evp_pkey_st* @load_example_key(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* noundef %0, i64 noundef %1) #10
  %2 = add i32 %id, -1
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %lor.rhs, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = bitcast %struct.evp_pkey_st* %call to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1329, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %4) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry, %land.lhs.true
  %.pre-phi = bitcast %struct.evp_pkey_st* %call to i8*
  %call7 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1330, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %.pre-phi) #8
  %tobool8 = icmp ne i32 %call7, 0
  %phi.cast = zext i1 %tobool8 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %5 = phi i32 [ 1, %land.lhs.true ], [ %phi.cast, %lor.rhs ]
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call) #8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_DSA_get_set_params() #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0), i8* noundef null) #8
  %2 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2314, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.277, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %3 = bitcast %struct.ossl_param_bld_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2315, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i64 0, i64 0), i8* noundef %3) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #8
  %4 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2316, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.279, i64 0, i64 0), i8* noundef %4) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #8
  %5 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2317, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.280, i64 0, i64 0), i8* noundef %5) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #8
  %6 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2318, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.281, i64 0, i64 0), i8* noundef %6) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.bignum_st* @BN_new() #8
  %7 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2319, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.282, i64 0, i64 0), i8* noundef %7) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = tail call %struct.bignum_st* @BN_new() #8
  %8 = bitcast %struct.bignum_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2320, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.283, i64 0, i64 0), i8* noundef %8) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false21
  %call25 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), %struct.bignum_st* noundef %call6) #8
  %cmp = icmp ne i32 %call25, 0
  %conv = zext i1 %cmp to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2322, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.284, i64 0, i64 0), i32 noundef %conv) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end
  %call29 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.286, i64 0, i64 0), %struct.bignum_st* noundef %call10) #8
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2323, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.285, i64 0, i64 0), i32 noundef %conv31) #8
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  %call35 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.288, i64 0, i64 0), %struct.bignum_st* noundef %call14) #8
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2324, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.287, i64 0, i64 0), i32 noundef %conv37) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false34
  %call41 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %call18) #8
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2326, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.289, i64 0, i64 0), i32 noundef %conv43) #8
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false40
  %call47 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.292, i64 0, i64 0), %struct.bignum_st* noundef %call22) #8
  %cmp48 = icmp ne i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call50 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2328, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.291, i64 0, i64 0), i32 noundef %conv49) #8
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %if.end53

if.end53:                                         ; preds = %lor.lhs.false46
  %call54 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call2) #8
  %9 = bitcast %struct.ossl_param_st* %call54 to i8*
  %call55 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2330, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.293, i64 0, i64 0), i8* noundef %9) #8
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %if.end58

if.end58:                                         ; preds = %if.end53
  %call59 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %call60 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2333, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.294, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call59, i32 noundef 0) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %if.end58
  %call63 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %pkey, i32 noundef 135, %struct.ossl_param_st* noundef %call54) #8
  %call64 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2335, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.295, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call63, i32 noundef 0) #8
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %if.end67

if.end67:                                         ; preds = %lor.lhs.false62
  %10 = bitcast %struct.evp_pkey_st** %pkey to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !5
  %call68 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2338, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %11) #8
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %if.end71

if.end71:                                         ; preds = %if.end67
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call72 = call fastcc i32 @test_EVP_PKEY_CTX_get_set_params(%struct.evp_pkey_st* noundef %12) #10
  br label %err

err:                                              ; preds = %if.end67, %if.end58, %lor.lhs.false62, %if.end53, %if.end, %lor.lhs.false28, %lor.lhs.false34, %lor.lhs.false40, %lor.lhs.false46, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false21, %if.end71
  %bld.0 = phi %struct.ossl_param_bld_st* [ %call2, %if.end71 ], [ %call2, %if.end67 ], [ %call2, %lor.lhs.false62 ], [ %call2, %if.end58 ], [ %call2, %if.end53 ], [ %call2, %lor.lhs.false46 ], [ %call2, %lor.lhs.false40 ], [ %call2, %lor.lhs.false34 ], [ %call2, %lor.lhs.false28 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false21 ], [ %call2, %lor.lhs.false17 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ]
  %params.0 = phi %struct.ossl_param_st* [ %call54, %if.end71 ], [ %call54, %if.end67 ], [ %call54, %lor.lhs.false62 ], [ %call54, %if.end58 ], [ %call54, %if.end53 ], [ null, %lor.lhs.false46 ], [ null, %lor.lhs.false40 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false28 ], [ null, %if.end ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %p.0 = phi %struct.bignum_st* [ %call6, %if.end71 ], [ %call6, %if.end67 ], [ %call6, %lor.lhs.false62 ], [ %call6, %if.end58 ], [ %call6, %if.end53 ], [ %call6, %lor.lhs.false46 ], [ %call6, %lor.lhs.false40 ], [ %call6, %lor.lhs.false34 ], [ %call6, %lor.lhs.false28 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false21 ], [ %call6, %lor.lhs.false17 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %q.0 = phi %struct.bignum_st* [ %call10, %if.end71 ], [ %call10, %if.end67 ], [ %call10, %lor.lhs.false62 ], [ %call10, %if.end58 ], [ %call10, %if.end53 ], [ %call10, %lor.lhs.false46 ], [ %call10, %lor.lhs.false40 ], [ %call10, %lor.lhs.false34 ], [ %call10, %lor.lhs.false28 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false21 ], [ %call10, %lor.lhs.false17 ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %g.0 = phi %struct.bignum_st* [ %call14, %if.end71 ], [ %call14, %if.end67 ], [ %call14, %lor.lhs.false62 ], [ %call14, %if.end58 ], [ %call14, %if.end53 ], [ %call14, %lor.lhs.false46 ], [ %call14, %lor.lhs.false40 ], [ %call14, %lor.lhs.false34 ], [ %call14, %lor.lhs.false28 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false21 ], [ %call14, %lor.lhs.false17 ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %pub.0 = phi %struct.bignum_st* [ %call18, %if.end71 ], [ %call18, %if.end67 ], [ %call18, %lor.lhs.false62 ], [ %call18, %if.end58 ], [ %call18, %if.end53 ], [ %call18, %lor.lhs.false46 ], [ %call18, %lor.lhs.false40 ], [ %call18, %lor.lhs.false34 ], [ %call18, %lor.lhs.false28 ], [ %call18, %if.end ], [ %call18, %lor.lhs.false21 ], [ %call18, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %priv.0 = phi %struct.bignum_st* [ %call22, %if.end71 ], [ %call22, %if.end67 ], [ %call22, %lor.lhs.false62 ], [ %call22, %if.end58 ], [ %call22, %if.end53 ], [ %call22, %lor.lhs.false46 ], [ %call22, %lor.lhs.false40 ], [ %call22, %lor.lhs.false34 ], [ %call22, %lor.lhs.false28 ], [ %call22, %if.end ], [ %call22, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %ret.0 = phi i32 [ %call72, %if.end71 ], [ 0, %if.end67 ], [ 0, %lor.lhs.false62 ], [ 0, %if.end58 ], [ 0, %if.end53 ], [ 0, %lor.lhs.false46 ], [ 0, %lor.lhs.false40 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false28 ], [ 0, %if.end ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %13) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #8
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %bld.0) #8
  call void @BN_free(%struct.bignum_st* noundef %p.0) #8
  call void @BN_free(%struct.bignum_st* noundef %q.0) #8
  call void @BN_free(%struct.bignum_st* noundef %g.0) #8
  call void @BN_free(%struct.bignum_st* noundef %pub.0) #8
  call void @BN_free(%struct.bignum_st* noundef %priv.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_DSA_priv_pub() #1 {
entry:
  %call = tail call fastcc i32 @test_EVP_PKEY_ffc_priv_pub(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_RSA_get_set_params() #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0), i8* noundef null) #8
  %2 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2381, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.317, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %3 = bitcast %struct.ossl_param_bld_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2382, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i64 0, i64 0), i8* noundef %3) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #8
  %4 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2383, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.318, i64 0, i64 0), i8* noundef %4) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #8
  %5 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2384, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.319, i64 0, i64 0), i8* noundef %5) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #8
  %6 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2385, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.320, i64 0, i64 0), i8* noundef %6) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  %call17 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.322, i64 0, i64 0), %struct.bignum_st* noundef %call6) #8
  %cmp = icmp ne i32 %call17, 0
  %conv = zext i1 %cmp to i32
  %call18 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2387, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.321, i64 0, i64 0), i32 noundef %conv) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end
  %call21 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.324, i64 0, i64 0), %struct.bignum_st* noundef %call10) #8
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2388, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.323, i64 0, i64 0), i32 noundef %conv23) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false20
  %call27 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.326, i64 0, i64 0), %struct.bignum_st* noundef %call14) #8
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2389, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.325, i64 0, i64 0), i32 noundef %conv29) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %if.end33

if.end33:                                         ; preds = %lor.lhs.false26
  %call34 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call2) #8
  %7 = bitcast %struct.ossl_param_st* %call34 to i8*
  %call35 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2391, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.293, i64 0, i64 0), i8* noundef %7) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %if.end38

if.end38:                                         ; preds = %if.end33
  %call39 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %call40 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2394, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.294, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call39, i32 noundef 0) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end38
  %call43 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %pkey, i32 noundef 135, %struct.ossl_param_st* noundef %call34) #8
  %call44 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2396, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.295, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call43, i32 noundef 0) #8
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %if.end47

if.end47:                                         ; preds = %lor.lhs.false42
  %8 = bitcast %struct.evp_pkey_st** %pkey to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !5
  %call48 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2399, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %9) #8
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end51

if.end51:                                         ; preds = %if.end47
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call52 = call fastcc i32 @test_EVP_PKEY_CTX_get_set_params(%struct.evp_pkey_st* noundef %10) #10
  br label %err

err:                                              ; preds = %if.end47, %if.end38, %lor.lhs.false42, %if.end33, %if.end, %lor.lhs.false20, %lor.lhs.false26, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %if.end51
  %bld.0 = phi %struct.ossl_param_bld_st* [ %call2, %if.end51 ], [ %call2, %if.end47 ], [ %call2, %lor.lhs.false42 ], [ %call2, %if.end38 ], [ %call2, %if.end33 ], [ %call2, %lor.lhs.false26 ], [ %call2, %lor.lhs.false20 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ]
  %params.0 = phi %struct.ossl_param_st* [ %call34, %if.end51 ], [ %call34, %if.end47 ], [ %call34, %lor.lhs.false42 ], [ %call34, %if.end38 ], [ %call34, %if.end33 ], [ null, %lor.lhs.false26 ], [ null, %lor.lhs.false20 ], [ null, %if.end ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %n.0 = phi %struct.bignum_st* [ %call6, %if.end51 ], [ %call6, %if.end47 ], [ %call6, %lor.lhs.false42 ], [ %call6, %if.end38 ], [ %call6, %if.end33 ], [ %call6, %lor.lhs.false26 ], [ %call6, %lor.lhs.false20 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %e.0 = phi %struct.bignum_st* [ %call10, %if.end51 ], [ %call10, %if.end47 ], [ %call10, %lor.lhs.false42 ], [ %call10, %if.end38 ], [ %call10, %if.end33 ], [ %call10, %lor.lhs.false26 ], [ %call10, %lor.lhs.false20 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %d.0 = phi %struct.bignum_st* [ %call14, %if.end51 ], [ %call14, %if.end47 ], [ %call14, %lor.lhs.false42 ], [ %call14, %if.end38 ], [ %call14, %if.end33 ], [ %call14, %lor.lhs.false26 ], [ %call14, %lor.lhs.false20 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ]
  %ret.0 = phi i32 [ %call52, %if.end51 ], [ 0, %if.end47 ], [ 0, %lor.lhs.false42 ], [ 0, %if.end38 ], [ 0, %if.end33 ], [ 0, %lor.lhs.false26 ], [ 0, %lor.lhs.false20 ], [ 0, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %11) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #8
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %bld.0) #8
  call void @BN_free(%struct.bignum_st* noundef %n.0) #8
  call void @BN_free(%struct.bignum_st* noundef %e.0) #8
  call void @BN_free(%struct.bignum_st* noundef %d.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_decrypt_null_chunks() #1 {
entry:
  %key = alloca [32 x i8], align 16
  %iv = alloca [12 x i8], align 1
  %msg = alloca [52 x i8], align 16
  %ciphertext = alloca [80 x i8], align 16
  %plaintext = alloca [80 x i8], align 16
  %ctlen = alloca i32, align 4
  %ptlen = alloca i32, align 4
  %tmp = alloca i32, align 4
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %0, i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @__const.test_decrypt_null_chunks.key, i64 0, i64 0), i64 32, i1 false)
  %1 = getelementptr inbounds [12 x i8], [12 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %1) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %1, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_decrypt_null_chunks.iv, i64 0, i64 0), i64 12, i1 false)
  %2 = getelementptr inbounds [52 x i8], [52 x i8]* %msg, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %2) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(52) %2, i8* noundef nonnull align 16 dereferenceable(52) getelementptr inbounds ([52 x i8], [52 x i8]* @__const.test_decrypt_null_chunks.msg, i64 0, i64 0), i64 52, i1 false)
  %3 = getelementptr inbounds [80 x i8], [80 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #9
  %4 = getelementptr inbounds [80 x i8], [80 x i8]* %plaintext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #9
  %5 = bitcast i32* %ctlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #9
  %6 = bitcast i32* %ptlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9
  %7 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  store i32 99, i32* %tmp, align 4, !tbaa !11
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.328, i64 0, i64 0), i8* noundef null) #8
  %9 = bitcast %struct.evp_cipher_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2437, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.327, i64 0, i64 0), i8* noundef %9) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %10 = bitcast %struct.evp_cipher_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2438, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.126, i64 0, i64 0), i8* noundef %10) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call7 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call2, %struct.evp_cipher_st* noundef %call, %struct.engine_st* noundef null, i8* noundef nonnull %0, i8* noundef nonnull %1) #8
  %cmp = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp to i32
  %call8 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2440, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.329, i64 0, i64 0), i32 noundef %conv) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %call13 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %3, i32* noundef nonnull %ctlen, i8* noundef nonnull %2, i32 noundef 10) #8
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2442, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.330, i64 0, i64 0), i32 noundef %conv15) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false10
  %11 = load i32, i32* %ctlen, align 4, !tbaa !11
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds [80 x i8], [80 x i8]* %ciphertext, i64 0, i64 %idx.ext
  %call20 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %add.ptr, i32* noundef nonnull %tmp, i8* noundef null, i32 noundef 0) #8
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2445, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.331, i64 0, i64 0), i32 noundef %conv22) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false18
  %12 = load i32, i32* %tmp, align 4, !tbaa !11
  %call26 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2446, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.332, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %12, i32 noundef 0) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %13 = load i32, i32* %ctlen, align 4, !tbaa !11
  %idx.ext30 = sext i32 %13 to i64
  %add.ptr31 = getelementptr inbounds [80 x i8], [80 x i8]* %ciphertext, i64 0, i64 %idx.ext30
  %add.ptr33 = getelementptr inbounds [52 x i8], [52 x i8]* %msg, i64 0, i64 10
  %call34 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %add.ptr31, i32* noundef nonnull %tmp, i8* noundef nonnull %add.ptr33, i32 noundef 42) #8
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2449, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.333, i64 0, i64 0), i32 noundef %conv36) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false28
  %14 = load i32, i32* %tmp, align 4, !tbaa !11
  %15 = load i32, i32* %ctlen, align 4, !tbaa !11
  %add = add nsw i32 %15, %14
  store i32 %add, i32* %ctlen, align 4, !tbaa !11
  %call40 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2450, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.334, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.335, i64 0, i64 0), i32 noundef %add, i32 noundef 52) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false39
  %16 = load i32, i32* %ctlen, align 4, !tbaa !11
  %idx.ext44 = sext i32 %16 to i64
  %add.ptr45 = getelementptr inbounds [80 x i8], [80 x i8]* %ciphertext, i64 0, i64 %idx.ext44
  %call46 = call i32 @EVP_EncryptFinal(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %add.ptr45, i32* noundef nonnull %tmp) #8
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2451, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.336, i64 0, i64 0), i32 noundef %conv48) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false42
  %17 = load i32, i32* %tmp, align 4, !tbaa !11
  %call52 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2452, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.332, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %17, i32 noundef 0) #8
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false51
  store i32 99, i32* %tmp, align 4, !tbaa !11
  %call56 = call i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call2, %struct.evp_cipher_st* noundef %call, %struct.engine_st* noundef null, i8* noundef nonnull %0, i8* noundef nonnull %1) #8
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2457, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.337, i64 0, i64 0), i32 noundef %conv58) #8
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.end
  %call64 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %4, i32* noundef nonnull %ptlen, i8* noundef nonnull %3, i32 noundef 20) #8
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2459, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.338, i64 0, i64 0), i32 noundef %conv66) #8
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false61
  %18 = load i32, i32* %ptlen, align 4, !tbaa !11
  %idx.ext71 = sext i32 %18 to i64
  %add.ptr72 = getelementptr inbounds [80 x i8], [80 x i8]* %plaintext, i64 0, i64 %idx.ext71
  %call73 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %add.ptr72, i32* noundef nonnull %tmp, i8* noundef null, i32 noundef 0) #8
  %cmp74 = icmp ne i32 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  %call76 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2465, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.339, i64 0, i64 0), i32 noundef %conv75) #8
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false69
  %19 = load i32, i32* %tmp, align 4, !tbaa !11
  %call79 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2466, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.332, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %19, i32 noundef 0) #8
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false78
  %20 = load i32, i32* %ptlen, align 4, !tbaa !11
  %idx.ext83 = sext i32 %20 to i64
  %add.ptr84 = getelementptr inbounds [80 x i8], [80 x i8]* %plaintext, i64 0, i64 %idx.ext83
  %add.ptr86 = getelementptr inbounds [80 x i8], [80 x i8]* %ciphertext, i64 0, i64 20
  %21 = load i32, i32* %ctlen, align 4, !tbaa !11
  %sub = add nsw i32 %21, -20
  %call87 = call i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %add.ptr84, i32* noundef nonnull %tmp, i8* noundef nonnull %add.ptr86, i32 noundef %sub) #8
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2469, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.340, i64 0, i64 0), i32 noundef %conv89) #8
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false81
  %22 = load i32, i32* %tmp, align 4, !tbaa !11
  %23 = load i32, i32* %ptlen, align 4, !tbaa !11
  %add93 = add nsw i32 %23, %22
  store i32 %add93, i32* %ptlen, align 4, !tbaa !11
  %call94 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2470, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.341, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.335, i64 0, i64 0), i32 noundef %add93, i32 noundef 52) #8
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false92
  %24 = load i32, i32* %ptlen, align 4, !tbaa !11
  %idx.ext98 = sext i32 %24 to i64
  %add.ptr99 = getelementptr inbounds [80 x i8], [80 x i8]* %plaintext, i64 0, i64 %idx.ext98
  %call100 = call i32 @EVP_DecryptFinal(%struct.evp_cipher_ctx_st* noundef %call2, i8* noundef nonnull %add.ptr99, i32* noundef nonnull %tmp) #8
  %cmp101 = icmp ne i32 %call100, 0
  %conv102 = zext i1 %cmp101 to i32
  %call103 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2471, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.342, i64 0, i64 0), i32 noundef %conv102) #8
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %lor.lhs.false96
  %25 = load i32, i32* %tmp, align 4, !tbaa !11
  %call106 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2472, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.332, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %25, i32 noundef 0) #8
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false105
  %26 = load i32, i32* %ptlen, align 4, !tbaa !11
  %conv111 = sext i32 %26 to i64
  %call112 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2473, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 52, i8* noundef nonnull %4, i64 noundef %conv111) #8
  %tobool113.not = icmp ne i32 %call112, 0
  %spec.select = zext i1 %tobool113.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false108, %if.end, %lor.lhs.false61, %lor.lhs.false69, %lor.lhs.false78, %lor.lhs.false81, %lor.lhs.false92, %lor.lhs.false96, %lor.lhs.false105, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false10, %lor.lhs.false18, %lor.lhs.false25, %lor.lhs.false28, %lor.lhs.false39, %lor.lhs.false42, %lor.lhs.false51
  %ret.0 = phi i32 [ 0, %lor.lhs.false105 ], [ 0, %lor.lhs.false96 ], [ 0, %lor.lhs.false92 ], [ 0, %lor.lhs.false81 ], [ 0, %lor.lhs.false78 ], [ 0, %lor.lhs.false69 ], [ 0, %lor.lhs.false61 ], [ 0, %if.end ], [ 0, %lor.lhs.false51 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false39 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false108 ]
  %ctx.0 = phi %struct.evp_cipher_ctx_st* [ %call2, %lor.lhs.false105 ], [ %call2, %lor.lhs.false96 ], [ %call2, %lor.lhs.false92 ], [ %call2, %lor.lhs.false81 ], [ %call2, %lor.lhs.false78 ], [ %call2, %lor.lhs.false69 ], [ %call2, %lor.lhs.false61 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false51 ], [ %call2, %lor.lhs.false42 ], [ %call2, %lor.lhs.false39 ], [ %call2, %lor.lhs.false28 ], [ %call2, %lor.lhs.false25 ], [ %call2, %lor.lhs.false18 ], [ %call2, %lor.lhs.false10 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false108 ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.0) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_DH_priv_pub() #1 {
entry:
  %call = tail call fastcc i32 @test_EVP_PKEY_ffc_priv_pub(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.343, i64 0, i64 0)) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_PKEY_set1_DH() #1 {
entry:
  %pubkey = alloca %struct.bignum_st*, align 8
  %pub = alloca [256 x i8], align 16
  %len = alloca i64, align 8
  %0 = bitcast %struct.bignum_st** %pubkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.bignum_st* null, %struct.bignum_st** %pubkey, align 8, !tbaa !5
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %pub, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #9
  %2 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i64 0, i64* %len, align 8, !tbaa !9
  %call = tail call %struct.bignum_st* @BN_new() #8
  %3 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2505, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.279, i64 0, i64 0), i8* noundef %3) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #8
  %4 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2506, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.281, i64 0, i64 0), i8* noundef %4) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #8
  store %struct.bignum_st* %call6, %struct.bignum_st** %pubkey, align 8, !tbaa !5
  %5 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2507, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.344, i64 0, i64 0), i8* noundef %5) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 9999) #8
  %cmp = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2508, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.345, i64 0, i64 0), i32 noundef %conv) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call2, i64 noundef 2) #8
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2509, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.346, i64 0, i64 0), i32 noundef %conv16) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %call20 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call6, i64 noundef 4321) #8
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2510, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.347, i64 0, i64 0), i32 noundef %conv22) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = tail call %struct.dh_st* @DH_new() #8
  %6 = bitcast %struct.dh_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2511, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.348, i64 0, i64 0), i8* noundef %6) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %call30 = tail call i32 @DH_set0_pqg(%struct.dh_st* noundef %call26, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef null, %struct.bignum_st* noundef %call2) #8
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2512, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.349, i64 0, i64 0), i32 noundef %conv32) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false29
  %call36 = tail call i32 @DH_set0_key(%struct.dh_st* noundef %call26, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef null) #8
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2513, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.350, i64 0, i64 0), i32 noundef %conv38) #8
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false35
  %call42 = tail call %struct.bignum_st* @BN_new() #8
  store %struct.bignum_st* %call42, %struct.bignum_st** %pubkey, align 8, !tbaa !5
  %7 = bitcast %struct.bignum_st* %call42 to i8*
  %call43 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2514, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.344, i64 0, i64 0), i8* noundef %7) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %call46 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call42, i64 noundef 4321) #8
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2515, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.347, i64 0, i64 0), i32 noundef %conv48) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false45
  %call51 = tail call %struct.dh_st* @DH_get_2048_256() #8
  %call52 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %call53 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %8 = bitcast %struct.dh_st* %call51 to i8*
  %call54 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2522, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.351, i64 0, i64 0), i8* noundef %8) #8
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end
  %call57 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2523, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.352, i64 0, i64 0), i8* noundef %6) #8
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %lor.lhs.false56
  %9 = bitcast %struct.evp_pkey_st* %call52 to i8*
  %call60 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2524, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.353, i64 0, i64 0), i8* noundef %9) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %10 = bitcast %struct.evp_pkey_st* %call53 to i8*
  %call63 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2525, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.354, i64 0, i64 0), i8* noundef %10) #8
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %call66 = tail call i32 @DH_set0_key(%struct.dh_st* noundef %call51, %struct.bignum_st* noundef %call42, %struct.bignum_st* noundef null) #8
  %cmp67 = icmp ne i32 %call66, 0
  %conv68 = zext i1 %cmp67 to i32
  %call69 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2526, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.355, i64 0, i64 0), i32 noundef %conv68) #8
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %if.end72

if.end72:                                         ; preds = %lor.lhs.false65
  store %struct.bignum_st* null, %struct.bignum_st** %pubkey, align 8, !tbaa !5
  %call73 = tail call i32 @EVP_PKEY_set1_DH(%struct.evp_pkey_st* noundef %call52, %struct.dh_st* noundef %call51) #8
  %cmp74 = icmp ne i32 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  %call76 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2530, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.356, i64 0, i64 0), i32 noundef %conv75) #8
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %if.end72
  %call79 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %call52) #8
  %call80 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2531, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.357, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.358, i64 0, i64 0), i32 noundef %call79, i32 noundef 920) #8
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %if.end83

if.end83:                                         ; preds = %lor.lhs.false78
  %call84 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %call52, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st** noundef nonnull %pubkey) #8
  %cmp85 = icmp ne i32 %call84, 0
  %conv86 = zext i1 %cmp85 to i32
  %call87 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2535, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.359, i64 0, i64 0), i32 noundef %conv86) #8
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %if.end83
  %11 = bitcast %struct.bignum_st** %pubkey to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !5
  %call90 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2536, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.360, i64 0, i64 0), i8* noundef %12) #8
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %if.end93

if.end93:                                         ; preds = %lor.lhs.false89
  %call94 = call i32 @EVP_PKEY_set1_DH(%struct.evp_pkey_st* noundef %call53, %struct.dh_st* noundef %call26) #8
  %cmp95 = icmp ne i32 %call94, 0
  %conv96 = zext i1 %cmp95 to i32
  %call97 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2539, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.361, i64 0, i64 0), i32 noundef %conv96) #8
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %if.end93
  %call100 = call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef %call53) #8
  %call101 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2540, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.362, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.363, i64 0, i64 0), i32 noundef %call100, i32 noundef 28) #8
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %err, label %if.end104

if.end104:                                        ; preds = %lor.lhs.false99
  %call105 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %call53, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.290, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef 256, i64* noundef nonnull %len) #8
  %cmp106 = icmp ne i32 %call105, 0
  %conv107 = zext i1 %cmp106 to i32
  %call108 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2545, i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.364, i64 0, i64 0), i32 noundef %conv107) #8
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %if.end104
  %13 = load i64, i64* %len, align 8, !tbaa !9
  %call111 = call i32 @test_size_t_ne(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2546, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.365, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i64 noundef %13, i64 noundef 0) #8
  %tobool112.not = icmp ne i32 %call111, 0
  %spec.select = zext i1 %tobool112.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false110, %if.end104, %if.end93, %lor.lhs.false99, %if.end83, %lor.lhs.false89, %if.end72, %lor.lhs.false78, %if.end, %lor.lhs.false56, %lor.lhs.false59, %lor.lhs.false62, %lor.lhs.false65, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false25, %lor.lhs.false29, %lor.lhs.false35, %lor.lhs.false41, %lor.lhs.false45
  %x942dh.0 = phi %struct.dh_st* [ %call51, %if.end104 ], [ %call51, %lor.lhs.false99 ], [ %call51, %if.end93 ], [ %call51, %lor.lhs.false89 ], [ %call51, %if.end83 ], [ %call51, %lor.lhs.false78 ], [ %call51, %if.end72 ], [ %call51, %lor.lhs.false65 ], [ %call51, %lor.lhs.false62 ], [ %call51, %lor.lhs.false59 ], [ %call51, %lor.lhs.false56 ], [ %call51, %if.end ], [ null, %lor.lhs.false45 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false35 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call51, %lor.lhs.false110 ]
  %noqdh.0 = phi %struct.dh_st* [ %call26, %if.end104 ], [ %call26, %lor.lhs.false99 ], [ %call26, %if.end93 ], [ %call26, %lor.lhs.false89 ], [ %call26, %if.end83 ], [ %call26, %lor.lhs.false78 ], [ %call26, %if.end72 ], [ %call26, %lor.lhs.false65 ], [ %call26, %lor.lhs.false62 ], [ %call26, %lor.lhs.false59 ], [ %call26, %lor.lhs.false56 ], [ %call26, %if.end ], [ %call26, %lor.lhs.false45 ], [ %call26, %lor.lhs.false41 ], [ %call26, %lor.lhs.false35 ], [ %call26, %lor.lhs.false29 ], [ %call26, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call26, %lor.lhs.false110 ]
  %pkey1.0 = phi %struct.evp_pkey_st* [ %call52, %if.end104 ], [ %call52, %lor.lhs.false99 ], [ %call52, %if.end93 ], [ %call52, %lor.lhs.false89 ], [ %call52, %if.end83 ], [ %call52, %lor.lhs.false78 ], [ %call52, %if.end72 ], [ %call52, %lor.lhs.false65 ], [ %call52, %lor.lhs.false62 ], [ %call52, %lor.lhs.false59 ], [ %call52, %lor.lhs.false56 ], [ %call52, %if.end ], [ null, %lor.lhs.false45 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false35 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call52, %lor.lhs.false110 ]
  %pkey2.0 = phi %struct.evp_pkey_st* [ %call53, %if.end104 ], [ %call53, %lor.lhs.false99 ], [ %call53, %if.end93 ], [ %call53, %lor.lhs.false89 ], [ %call53, %if.end83 ], [ %call53, %lor.lhs.false78 ], [ %call53, %if.end72 ], [ %call53, %lor.lhs.false65 ], [ %call53, %lor.lhs.false62 ], [ %call53, %lor.lhs.false59 ], [ %call53, %lor.lhs.false56 ], [ %call53, %if.end ], [ null, %lor.lhs.false45 ], [ null, %lor.lhs.false41 ], [ null, %lor.lhs.false35 ], [ null, %lor.lhs.false29 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call53, %lor.lhs.false110 ]
  %ret.0 = phi i32 [ 0, %if.end104 ], [ 0, %lor.lhs.false99 ], [ 0, %if.end93 ], [ 0, %lor.lhs.false89 ], [ 0, %if.end83 ], [ 0, %lor.lhs.false78 ], [ 0, %if.end72 ], [ 0, %lor.lhs.false65 ], [ 0, %lor.lhs.false62 ], [ 0, %lor.lhs.false59 ], [ 0, %lor.lhs.false56 ], [ 0, %if.end ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false41 ], [ 0, %lor.lhs.false35 ], [ 0, %lor.lhs.false29 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false110 ]
  %p.0 = phi %struct.bignum_st* [ null, %if.end104 ], [ null, %lor.lhs.false99 ], [ null, %if.end93 ], [ null, %lor.lhs.false89 ], [ null, %if.end83 ], [ null, %lor.lhs.false78 ], [ null, %if.end72 ], [ null, %lor.lhs.false65 ], [ null, %lor.lhs.false62 ], [ null, %lor.lhs.false59 ], [ null, %lor.lhs.false56 ], [ null, %if.end ], [ %call, %lor.lhs.false45 ], [ %call, %lor.lhs.false41 ], [ %call, %lor.lhs.false35 ], [ %call, %lor.lhs.false29 ], [ %call, %lor.lhs.false25 ], [ %call, %lor.lhs.false19 ], [ %call, %lor.lhs.false13 ], [ %call, %lor.lhs.false9 ], [ %call, %lor.lhs.false5 ], [ %call, %lor.lhs.false ], [ %call, %entry ], [ null, %lor.lhs.false110 ]
  %g.0 = phi %struct.bignum_st* [ null, %if.end104 ], [ null, %lor.lhs.false99 ], [ null, %if.end93 ], [ null, %lor.lhs.false89 ], [ null, %if.end83 ], [ null, %lor.lhs.false78 ], [ null, %if.end72 ], [ null, %lor.lhs.false65 ], [ null, %lor.lhs.false62 ], [ null, %lor.lhs.false59 ], [ null, %lor.lhs.false56 ], [ null, %if.end ], [ %call2, %lor.lhs.false45 ], [ %call2, %lor.lhs.false41 ], [ %call2, %lor.lhs.false35 ], [ %call2, %lor.lhs.false29 ], [ %call2, %lor.lhs.false25 ], [ %call2, %lor.lhs.false19 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false110 ]
  call void @BN_free(%struct.bignum_st* noundef %p.0) #8
  call void @BN_free(%struct.bignum_st* noundef %g.0) #8
  %14 = load %struct.bignum_st*, %struct.bignum_st** %pubkey, align 8, !tbaa !5
  call void @BN_free(%struct.bignum_st* noundef %14) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey1.0) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey2.0) #8
  call void @DH_free(%struct.dh_st* noundef %x942dh.0) #8
  call void @DH_free(%struct.dh_st* noundef %noqdh.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EC_priv_pub() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @ec_priv, i64 0, i64 0), i32 noundef 32, %struct.bignum_st* noundef null) #8
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 836, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.366, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %1 = bitcast %struct.ossl_param_bld_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 840, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i64 0, i64 0), i8* noundef %1) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %call2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.368, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i64 0, i64 0), i64 noundef 0) #8
  %cmp = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp to i32
  %call6 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 843, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.367, i64 0, i64 0), i32 noundef %conv) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call2) #8
  %2 = bitcast %struct.ossl_param_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 845, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.293, i64 0, i64 0), i8* noundef %2) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %if.end14

if.end14:                                         ; preds = %if.end9
  %call15 = tail call fastcc i32 @test_fromdata(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), %struct.ossl_param_st* noundef %call10) #10
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %if.end14
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %call10) #8
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call2) #8
  %call19 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %3 = bitcast %struct.ossl_param_bld_st* %call19 to i8*
  %call20 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 855, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i64 0, i64 0), i8* noundef %3) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end18
  %call23 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %call19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.368, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i64 0, i64 0), i64 noundef 0) #8
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 858, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.367, i64 0, i64 0), i32 noundef %conv25) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %call29 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.292, i64 0, i64 0), %struct.bignum_st* noundef %call) #8
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 860, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.291, i64 0, i64 0), i32 noundef %conv31) #8
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %lor.lhs.false28
  %call36 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call19) #8
  %4 = bitcast %struct.ossl_param_st* %call36 to i8*
  %call37 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 862, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.293, i64 0, i64 0), i8* noundef %4) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %err, label %if.end40

if.end40:                                         ; preds = %if.end35
  %call41 = tail call fastcc i32 @test_fromdata(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), %struct.ossl_param_st* noundef %call36) #10
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %if.end44

if.end44:                                         ; preds = %if.end40
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %call36) #8
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call19) #8
  %call45 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %5 = bitcast %struct.ossl_param_bld_st* %call45 to i8*
  %call46 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 872, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i64 0, i64 0), i8* noundef %5) #8
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end44
  %call49 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %call45, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.368, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i64 0, i64 0), i64 noundef 0) #8
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 875, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.367, i64 0, i64 0), i32 noundef %conv51) #8
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false48
  %call55 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %call45, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @ec_pub, i64 0, i64 0), i64 noundef 65) #8
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 878, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.369, i64 0, i64 0), i32 noundef %conv57) #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %if.end61

if.end61:                                         ; preds = %lor.lhs.false54
  %call62 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call45) #8
  %6 = bitcast %struct.ossl_param_st* %call62 to i8*
  %call63 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 880, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.293, i64 0, i64 0), i8* noundef %6) #8
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %err, label %if.end66

if.end66:                                         ; preds = %if.end61
  %call67 = tail call fastcc i32 @test_fromdata(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), %struct.ossl_param_st* noundef %call62) #10
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %if.end70

if.end70:                                         ; preds = %if.end66
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %call62) #8
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call45) #8
  %call71 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %7 = bitcast %struct.ossl_param_bld_st* %call71 to i8*
  %call72 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 890, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i64 0, i64 0), i8* noundef %7) #8
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %if.end70
  %call75 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %call71, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.368, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.158, i64 0, i64 0), i64 noundef 0) #8
  %cmp76 = icmp ne i32 %call75, 0
  %conv77 = zext i1 %cmp76 to i32
  %call78 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 893, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.367, i64 0, i64 0), i32 noundef %conv77) #8
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false74
  %call81 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %call71, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @ec_pub, i64 0, i64 0), i64 noundef 65) #8
  %cmp82 = icmp ne i32 %call81, 0
  %conv83 = zext i1 %cmp82 to i32
  %call84 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 896, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.369, i64 0, i64 0), i32 noundef %conv83) #8
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false80
  %call87 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call71, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.292, i64 0, i64 0), %struct.bignum_st* noundef %call) #8
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 898, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.291, i64 0, i64 0), i32 noundef %conv89) #8
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %if.end93

if.end93:                                         ; preds = %lor.lhs.false86
  %call94 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call71) #8
  %8 = bitcast %struct.ossl_param_st* %call94 to i8*
  %call95 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 900, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.293, i64 0, i64 0), i8* noundef %8) #8
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %if.end98

if.end98:                                         ; preds = %if.end93
  %call99 = tail call fastcc i32 @test_fromdata(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), %struct.ossl_param_st* noundef %call94) #10
  %tobool100.not = icmp ne i32 %call99, 0
  %spec.select = zext i1 %tobool100.not to i32
  br label %err

err:                                              ; preds = %if.end98, %if.end93, %if.end70, %lor.lhs.false74, %lor.lhs.false80, %lor.lhs.false86, %if.end66, %if.end61, %if.end44, %lor.lhs.false48, %lor.lhs.false54, %if.end40, %if.end35, %if.end18, %lor.lhs.false22, %lor.lhs.false28, %if.end14, %if.end9, %if.end, %lor.lhs.false, %entry
  %bld.0 = phi %struct.ossl_param_bld_st* [ %call71, %if.end93 ], [ %call71, %lor.lhs.false86 ], [ %call71, %lor.lhs.false80 ], [ %call71, %lor.lhs.false74 ], [ %call71, %if.end70 ], [ %call45, %if.end66 ], [ %call45, %if.end61 ], [ %call45, %lor.lhs.false54 ], [ %call45, %lor.lhs.false48 ], [ %call45, %if.end44 ], [ %call19, %if.end40 ], [ %call19, %if.end35 ], [ %call19, %lor.lhs.false28 ], [ %call19, %lor.lhs.false22 ], [ %call19, %if.end18 ], [ %call2, %if.end14 ], [ %call2, %if.end9 ], [ %call2, %lor.lhs.false ], [ %call2, %if.end ], [ null, %entry ], [ %call71, %if.end98 ]
  %params.0 = phi %struct.ossl_param_st* [ %call94, %if.end93 ], [ null, %lor.lhs.false86 ], [ null, %lor.lhs.false80 ], [ null, %lor.lhs.false74 ], [ null, %if.end70 ], [ %call62, %if.end66 ], [ %call62, %if.end61 ], [ null, %lor.lhs.false54 ], [ null, %lor.lhs.false48 ], [ null, %if.end44 ], [ %call36, %if.end40 ], [ %call36, %if.end35 ], [ null, %lor.lhs.false28 ], [ null, %lor.lhs.false22 ], [ null, %if.end18 ], [ %call10, %if.end14 ], [ %call10, %if.end9 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call94, %if.end98 ]
  %ret.0 = phi i32 [ 0, %if.end93 ], [ 0, %lor.lhs.false86 ], [ 0, %lor.lhs.false80 ], [ 0, %lor.lhs.false74 ], [ 0, %if.end70 ], [ 0, %if.end66 ], [ 0, %if.end61 ], [ 0, %lor.lhs.false54 ], [ 0, %lor.lhs.false48 ], [ 0, %if.end44 ], [ 0, %if.end40 ], [ 0, %if.end35 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %if.end18 ], [ 0, %if.end14 ], [ 0, %if.end9 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end98 ]
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #8
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %bld.0) #8
  tail call void @BN_free(%struct.bignum_st* noundef %call) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EC_priv_only_legacy() #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @ec_priv, i64 0, i64 0), i32 noundef 32, %struct.bignum_st* noundef null) #8
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 926, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.366, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ec_key_st* @EC_KEY_new_by_curve_name(i32 noundef 415) #8
  %1 = bitcast %struct.ec_key_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 930, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.370, i64 0, i64 0), i8* noundef %1) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @EC_KEY_set_private_key(%struct.ec_key_st* noundef %call2, %struct.bignum_st* noundef %call) #8
  %cmp = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 933, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.371, i64 0, i64 0), i32 noundef %conv) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %2 = bitcast %struct.evp_pkey_st* %call12 to i8*
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 937, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %2) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %if.end16

if.end16:                                         ; preds = %if.end11
  %call17 = tail call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call12, i32 noundef 408, i8* noundef %1) #8
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 940, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.372, i64 0, i64 0), i32 noundef %conv19) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %while.body

while.body:                                       ; preds = %if.end16, %if.end42
  %pkey.0 = phi %struct.evp_pkey_st* [ null, %if.end42 ], [ %call12, %if.end16 ]
  %call26 = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %3 = bitcast %struct.evp_md_ctx_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 947, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.296, i64 0, i64 0), i8* noundef %3) #8
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %err, label %if.end30

if.end30:                                         ; preds = %while.body
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call31 = tail call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef %call26, %struct.evp_pkey_ctx_st** noundef null, i8* noundef null, %struct.ossl_lib_ctx_st* noundef %4, i8* noundef null, %struct.evp_pkey_st* noundef %pkey.0, %struct.ossl_param_st* noundef null) #8
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 955, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.373, i64 0, i64 0), i32 noundef %conv33) #8
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end30
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call26) #8
  %call38 = tail call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef %pkey.0) #8
  %5 = bitcast %struct.evp_pkey_st* %call38 to i8*
  %call39 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 960, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.374, i64 0, i64 0), i8* noundef %5) #8
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %if.end42

if.end42:                                         ; preds = %if.end37
  %call43 = tail call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %pkey.0, %struct.evp_pkey_st* noundef %call38) #8
  %call44 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 963, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.375, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.376, i64 0, i64 0), i32 noundef %call43, i32 noundef -2) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #8
  %tobool45 = icmp ne i32 %call44, 0
  %cmp24 = icmp eq %struct.evp_pkey_st* %call38, null
  %or.cond = select i1 %tobool45, i1 %cmp24, i1 false
  br i1 %or.cond, label %while.body, label %err, !llvm.loop !30

err:                                              ; preds = %if.end42, %if.end37, %if.end30, %while.body, %if.end16, %if.end11, %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %if.end16 ], [ 0, %if.end11 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ 0, %while.body ], [ 0, %if.end30 ], [ 0, %if.end37 ], [ %call44, %if.end42 ]
  %eckey.0 = phi %struct.ec_key_st* [ %call2, %if.end16 ], [ %call2, %if.end11 ], [ %call2, %if.end6 ], [ %call2, %if.end ], [ null, %entry ], [ null, %while.body ], [ null, %if.end30 ], [ null, %if.end37 ], [ null, %if.end42 ]
  %pkey.1 = phi %struct.evp_pkey_st* [ %call12, %if.end16 ], [ %call12, %if.end11 ], [ null, %if.end6 ], [ null, %if.end ], [ null, %entry ], [ %pkey.0, %while.body ], [ %pkey.0, %if.end30 ], [ %pkey.0, %if.end37 ], [ %call38, %if.end42 ]
  %ctx.0 = phi %struct.evp_md_ctx_st* [ null, %if.end16 ], [ null, %if.end11 ], [ null, %if.end6 ], [ null, %if.end ], [ null, %entry ], [ %call26, %while.body ], [ %call26, %if.end30 ], [ null, %if.end37 ], [ null, %if.end42 ]
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %ctx.0) #8
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.1) #8
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef %eckey.0) #8
  tail call void @BN_free(%struct.bignum_st* noundef %call) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_keygen_with_empty_template(i32 noundef %n) #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %cmp.not = icmp eq %struct.ossl_provider_st* %1, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2579, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.74, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %n, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %call1 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 6, %struct.engine_st* noundef null) #8
  %2 = bitcast %struct.evp_pkey_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2584, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.377, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %call6 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %3 = bitcast %struct.evp_pkey_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2589, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.378, i64 0, i64 0), i8* noundef %3) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb5
  %call9 = tail call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef %call6, i32 noundef 6) #8
  %cmp10 = icmp ne i32 %call9, 0
  %conv = zext i1 %cmp10 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2590, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.379, i64 0, i64 0), i32 noundef %conv) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %call14 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %call6, %struct.engine_st* noundef null) #8
  %4 = bitcast %struct.evp_pkey_ctx_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2591, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.380, i64 0, i64 0), i8* noundef %4) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false13, %sw.bb, %if.end
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.end ], [ %call14, %lor.lhs.false13 ], [ %call1, %sw.bb ]
  %tkey.0 = phi %struct.evp_pkey_st* [ null, %if.end ], [ %call6, %lor.lhs.false13 ], [ null, %sw.bb ]
  %call19 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %ctx.0) #8
  %call20 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2596, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.381, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call19, i32 noundef 0) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %sw.epilog
  %call23 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %ctx.0, %struct.evp_pkey_st** noundef nonnull %pkey) #8
  %call24 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2597, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.382, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call23, i32 noundef 0) #8
  %tobool25.not = icmp ne i32 %call24, 0
  %spec.select = zext i1 %tobool25.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false22, %sw.epilog, %sw.bb5, %lor.lhs.false, %lor.lhs.false13, %sw.bb
  %ctx.1 = phi %struct.evp_pkey_ctx_st* [ %ctx.0, %sw.epilog ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false ], [ null, %sw.bb5 ], [ %call1, %sw.bb ], [ %ctx.0, %lor.lhs.false22 ]
  %tkey.1 = phi %struct.evp_pkey_st* [ %tkey.0, %sw.epilog ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false ], [ %call6, %sw.bb5 ], [ null, %sw.bb ], [ %tkey.0, %lor.lhs.false22 ]
  %ret.0 = phi i32 [ 0, %sw.epilog ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false ], [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ %spec.select, %lor.lhs.false22 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.1) #8
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %5) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %tkey.1) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pkey_ctx_fail_without_provider(i32 noundef %tst) #1 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #8
  %0 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2625, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.383, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.ossl_provider_st* @OSSL_PROVIDER_load(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #8
  %1 = bitcast %struct.ossl_provider_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2629, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.384, i64 0, i64 0), i8* noundef %1) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  switch i32 %tst, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb7
  ]

sw.bb7:                                           ; preds = %if.end6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2657, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.385, i64 0, i64 0), i32 noundef %tst) #8
  br label %err

sw.epilog:                                        ; preds = %if.end6, %sw.bb7
  %keytype.0 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.175, i64 0, i64 0), %sw.bb7 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0), %if.end6 ]
  %call8 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef nonnull %keytype.0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.225, i64 0, i64 0)) #8
  %2 = bitcast %struct.evp_pkey_ctx_st* %call8 to i8*
  %call10 = tail call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2662, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.386, i64 0, i64 0), i8* noundef %2) #8
  %tobool11.not = icmp ne i32 %call10, 0
  %spec.select = zext i1 %tobool11.not to i32
  br label %err

err:                                              ; preds = %sw.epilog, %if.end, %entry, %sw.default
  %tmpnullprov.0 = phi %struct.ossl_provider_st* [ %call2, %sw.default ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %sw.epilog ]
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %sw.default ], [ null, %if.end ], [ null, %entry ], [ %call8, %sw.epilog ]
  %ret.0 = phi i32 [ 0, %sw.default ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %sw.epilog ]
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #8
  %call16 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %tmpnullprov.0) #8
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_rand_agglomeration() #1 {
entry:
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %step = alloca i32, align 4
  %out = alloca [65 x i8], align 16
  %tmp13 = alloca %struct.ossl_param_st, align 8
  %tmp14 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #9
  %arraydecay = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %1 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 7, i32* %step, align 4, !tbaa !11
  %2 = getelementptr inbounds [65 x i8], [65 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 65, i8* nonnull %2) #9
  %call = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2688, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.387, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef 2, i32 noundef 0) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call2 = tail call %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef %3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.389, i64 0, i64 0), i8* noundef null) #8
  %4 = bitcast %struct.evp_rand_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2689, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.388, i64 0, i64 0), i8* noundef %4) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call %struct.evp_rand_ctx_st* @EVP_RAND_CTX_new(%struct.evp_rand_st* noundef %call2, %struct.evp_rand_ctx_st* noundef null) #8
  tail call void @EVP_RAND_free(%struct.evp_rand_st* noundef %call2) #8
  %5 = bitcast %struct.evp_rand_ctx_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2693, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.296, i64 0, i64 0), i8* noundef %5) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup, label %if.end9

if.end9:                                          ; preds = %if.end
  %call11 = call i8* @memset(i8* noundef nonnull %2, i32 noundef 0, i64 noundef 65) #8
  %incdec.ptr = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params45 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params45, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.390, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @test_rand_agglomeration.seed, i64 0, i64 0), i64 noundef 65) #8
  %incdec.ptr12 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %6 = bitcast %struct.ossl_param_st* %tmp13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %6) #9
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp13, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.391, i64 0, i64 0), i32* noundef nonnull %step) #8
  %7 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %7, i8* noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %6) #9
  %8 = bitcast %struct.ossl_param_st* %tmp14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #9
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp14) #8
  %9 = bitcast %struct.ossl_param_st* %incdec.ptr12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %9, i8* noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #9
  %call16 = call i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* noundef %call5, %struct.ossl_param_st* noundef nonnull %arraydecay) #8
  %cmp = icmp ne i32 %call16, 0
  %conv17 = zext i1 %cmp to i32
  %call18 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2701, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.392, i64 0, i64 0), i32 noundef %conv17) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  %call21 = call i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef %call5, i8* noundef nonnull %2, i64 noundef 65, i32 noundef 0, i32 noundef 1, i8* noundef null, i64 noundef 0) #8
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2702, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.393, i64 0, i64 0), i32 noundef %conv23) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %call27 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2703, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.266, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @test_rand_agglomeration.seed, i64 0, i64 0), i64 noundef 65, i8* noundef nonnull %2, i64 noundef 65) #8
  %tobool28 = icmp ne i32 %call27, 0
  %phi.cast = zext i1 %tobool28 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end9
  %10 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end9 ], [ %phi.cast, %land.rhs ]
  call void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %lor.lhs.false, %land.end
  %retval.0 = phi i32 [ %10, %land.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 65, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_evp_iv_aes(i32 noundef %idx) #1 {
entry:
  %key = alloca [16 x i8], align 16
  %init_iv = alloca [16 x i8], align 16
  %ciphertext = alloca [32 x i8], align 16
  %oiv = alloca [16 x i8], align 16
  %iv = alloca [16 x i8], align 16
  %cbc_state = alloca [16 x i8], align 16
  %ofb_state = alloca [16 x i8], align 16
  %cfb_state = alloca [16 x i8], align 16
  %gcm_state = alloca [12 x i8], align 1
  %ccm_state = alloca [7 x i8], align 1
  %ocb_state = alloca [12 x i8], align 1
  %len = alloca i32, align 4
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %0, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_evp_iv_aes.key, i64 0, i64 0), i64 16, i1 false)
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %init_iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %1, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_evp_iv_aes.init_iv, i64 0, i64 0), i64 16, i1 false)
  %2 = getelementptr inbounds [32 x i8], [32 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #9
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %oiv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #9
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %cbc_state, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %5, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_evp_iv_aes.cbc_state, i64 0, i64 0), i64 16, i1 false)
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %ofb_state, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %6, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_evp_iv_aes.ofb_state, i64 0, i64 0), i64 16, i1 false)
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %cfb_state, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) %7, i8* noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_evp_iv_aes.cfb_state, i64 0, i64 0), i64 16, i1 false)
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %gcm_state, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %8) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %8, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_evp_iv_aes.ocb_state, i64 0, i64 0), i64 12, i1 false)
  %9 = getelementptr inbounds [7 x i8], [7 x i8]* %ccm_state, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 7, i8* nonnull %9) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(7) %9, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @__const.test_evp_iv_aes.ccm_state, i64 0, i64 0), i64 7, i1 false)
  %10 = getelementptr inbounds [12 x i8], [12 x i8]* %ocb_state, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %10) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %10, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_evp_iv_aes.ocb_state, i64 0, i64 0), i64 12, i1 false)
  %11 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #9
  store i32 32, i32* %len, align 4, !tbaa !11
  %12 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %cmp = icmp ne %struct.ossl_provider_st* %12, null
  %cmp1 = icmp slt i32 %idx, 6
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2746, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.74, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  switch i32 %idx, label %cleanup [
    i32 0, label %sw.bb3
    i32 6, label %sw.epilog.sink.split
    i32 1, label %sw.bb8
    i32 7, label %cond.false11
    i32 2, label %sw.bb18
    i32 8, label %cond.false21
    i32 3, label %sw.bb28
    i32 9, label %cond.false31
    i32 4, label %sw.bb38
    i32 10, label %cond.false41
    i32 5, label %sw.bb48
    i32 11, label %cond.false51
  ]

sw.bb3:                                           ; preds = %if.end
  %call2 = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #8
  %cmp4.not = icmp eq %struct.evp_cipher_st* %call2, null
  br i1 %cmp4.not, label %sw.epilog.sink.split, label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %call7 = tail call %struct.evp_cipher_st* @EVP_aes_128_ofb() #8
  %cmp9.not = icmp eq %struct.evp_cipher_st* %call7, null
  br i1 %cmp9.not, label %cond.false11, label %sw.epilog

cond.false11:                                     ; preds = %if.end, %sw.bb8
  br label %sw.epilog.sink.split

sw.bb18:                                          ; preds = %if.end
  %call17 = tail call %struct.evp_cipher_st* @EVP_aes_128_cfb128() #8
  %cmp19.not = icmp eq %struct.evp_cipher_st* %call17, null
  br i1 %cmp19.not, label %cond.false21, label %sw.epilog

cond.false21:                                     ; preds = %if.end, %sw.bb18
  br label %sw.epilog.sink.split

sw.bb28:                                          ; preds = %if.end
  %call27 = tail call %struct.evp_cipher_st* @EVP_aes_128_gcm() #8
  %cmp29.not = icmp eq %struct.evp_cipher_st* %call27, null
  br i1 %cmp29.not, label %cond.false31, label %sw.epilog

cond.false31:                                     ; preds = %if.end, %sw.bb28
  br label %sw.epilog.sink.split

sw.bb38:                                          ; preds = %if.end
  %call37 = tail call %struct.evp_cipher_st* @EVP_aes_128_ccm() #8
  %cmp39.not = icmp eq %struct.evp_cipher_st* %call37, null
  br i1 %cmp39.not, label %cond.false41, label %sw.epilog

cond.false41:                                     ; preds = %if.end, %sw.bb38
  br label %sw.epilog.sink.split

sw.bb48:                                          ; preds = %if.end
  %call47 = tail call %struct.evp_cipher_st* @EVP_aes_128_ocb() #8
  %cmp49.not = icmp eq %struct.evp_cipher_st* %call47, null
  br i1 %cmp49.not, label %cond.false51, label %sw.epilog

cond.false51:                                     ; preds = %if.end, %sw.bb48
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %if.end, %cond.false11, %cond.false21, %cond.false31, %cond.false41, %cond.false51
  %.sink209 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.399, i64 0, i64 0), %cond.false51 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.398, i64 0, i64 0), %cond.false41 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.397, i64 0, i64 0), %cond.false31 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.396, i64 0, i64 0), %cond.false21 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.395, i64 0, i64 0), %cond.false11 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.394, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.394, i64 0, i64 0), %sw.bb3 ]
  %ref_iv.0.ph = phi i8* [ %10, %cond.false51 ], [ %9, %cond.false41 ], [ %8, %cond.false31 ], [ %7, %cond.false21 ], [ %6, %cond.false11 ], [ %5, %if.end ], [ %5, %sw.bb3 ]
  %ref_len.0.ph = phi i64 [ 12, %cond.false51 ], [ 7, %cond.false41 ], [ 12, %cond.false31 ], [ 16, %cond.false21 ], [ 16, %cond.false11 ], [ 16, %if.end ], [ 16, %sw.bb3 ]
  %tobool123.not.ph = phi i1 [ true, %cond.false51 ], [ true, %cond.false41 ], [ true, %cond.false31 ], [ false, %cond.false21 ], [ false, %cond.false11 ], [ false, %if.end ], [ false, %sw.bb3 ]
  %13 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call52 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %13, i8* noundef %.sink209, i8* noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb48, %sw.bb38, %sw.bb28, %sw.bb18, %sw.bb8, %sw.bb3
  %ref_iv.0 = phi i8* [ %5, %sw.bb3 ], [ %6, %sw.bb8 ], [ %7, %sw.bb18 ], [ %8, %sw.bb28 ], [ %9, %sw.bb38 ], [ %10, %sw.bb48 ], [ %ref_iv.0.ph, %sw.epilog.sink.split ]
  %ref_len.0 = phi i64 [ 16, %sw.bb3 ], [ 16, %sw.bb8 ], [ 16, %sw.bb18 ], [ 12, %sw.bb28 ], [ 7, %sw.bb38 ], [ 12, %sw.bb48 ], [ %ref_len.0.ph, %sw.epilog.sink.split ]
  %type.6 = phi %struct.evp_cipher_st* [ %call2, %sw.bb3 ], [ %call7, %sw.bb8 ], [ %call17, %sw.bb18 ], [ %call27, %sw.bb28 ], [ %call37, %sw.bb38 ], [ %call47, %sw.bb48 ], [ %call52, %sw.epilog.sink.split ]
  %tobool123.not = phi i1 [ false, %sw.bb3 ], [ false, %sw.bb8 ], [ false, %sw.bb18 ], [ true, %sw.bb28 ], [ true, %sw.bb38 ], [ true, %sw.bb48 ], [ %tobool123.not.ph, %sw.epilog.sink.split ]
  %14 = bitcast %struct.evp_cipher_st* %type.6 to i8*
  %call56 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2816, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.400, i64 0, i64 0), i8* noundef %14) #8
  %tobool.not = icmp eq i32 %call56, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %call57 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %15 = bitcast %struct.evp_cipher_ctx_st* %call57 to i8*
  %call58 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2817, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.401, i64 0, i64 0), i8* noundef %15) #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false
  %call63 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call57, %struct.evp_cipher_st* noundef %type.6, %struct.engine_st* noundef null, i8* noundef nonnull %0, i8* noundef nonnull %1) #8
  %cmp64 = icmp ne i32 %call63, 0
  %conv = zext i1 %cmp64 to i32
  %call65 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2818, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.402, i64 0, i64 0), i32 noundef %conv) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false60
  %call69 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call57, i8* noundef nonnull %2, i32* noundef nonnull %len, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_evp_iv_aes.msg, i64 0, i64 0), i32 noundef 16) #8
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2820, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.403, i64 0, i64 0), i32 noundef %conv71) #8
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false67
  %call76 = call i32 @EVP_CIPHER_CTX_get_original_iv(%struct.evp_cipher_ctx_st* noundef %call57, i8* noundef nonnull %3, i64 noundef 16) #8
  %cmp77 = icmp ne i32 %call76, 0
  %conv78 = zext i1 %cmp77 to i32
  %call79 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2821, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.404, i64 0, i64 0), i32 noundef %conv78) #8
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false74
  %call83 = call i32 @EVP_CIPHER_CTX_get_updated_iv(%struct.evp_cipher_ctx_st* noundef %call57, i8* noundef nonnull %4, i64 noundef 16) #8
  %cmp84 = icmp ne i32 %call83, 0
  %conv85 = zext i1 %cmp84 to i32
  %call86 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2822, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.405, i64 0, i64 0), i32 noundef %conv85) #8
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false81
  %call90 = call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %call57, i8* noundef nonnull %2, i32* noundef nonnull %len) #8
  %cmp91 = icmp ne i32 %call90, 0
  %conv92 = zext i1 %cmp91 to i32
  %call93 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2823, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.406, i64 0, i64 0), i32 noundef %conv92) #8
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %if.end96

if.end96:                                         ; preds = %lor.lhs.false88
  %call97 = call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %call57) #8
  %conv98 = sext i32 %call97 to i64
  %call101 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2826, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.407, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.408, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv98, i8* noundef nonnull %3, i64 noundef %conv98) #8
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %err, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %if.end96
  %call105 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2827, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.409, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.410, i64 0, i64 0), i8* noundef nonnull %ref_iv.0, i64 noundef %ref_len.0, i8* noundef nonnull %4, i64 noundef %conv98) #8
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %err, label %if.end108

if.end108:                                        ; preds = %lor.lhs.false103
  %call109 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call57, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #8
  %cmp110 = icmp ne i32 %call109, 0
  %conv111 = zext i1 %cmp110 to i32
  %call112 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2831, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.411, i64 0, i64 0), i32 noundef %conv111) #8
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %err, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %if.end108
  %call116 = call i32 @EVP_CIPHER_CTX_get_updated_iv(%struct.evp_cipher_ctx_st* noundef %call57, i8* noundef nonnull %4, i64 noundef 16) #8
  %cmp117 = icmp ne i32 %call116, 0
  %conv118 = zext i1 %cmp117 to i32
  %call119 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2832, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.405, i64 0, i64 0), i32 noundef %conv118) #8
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %err, label %if.end122

if.end122:                                        ; preds = %lor.lhs.false114
  br i1 %tobool123.not, label %if.else, label %if.then124

if.then124:                                       ; preds = %if.end122
  %call127 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2835, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.407, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.410, i64 0, i64 0), i8* noundef nonnull %1, i64 noundef %conv98, i8* noundef nonnull %4, i64 noundef %conv98) #8
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %err, label %if.end136

if.else:                                          ; preds = %if.end122
  %call132 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2838, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.409, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.410, i64 0, i64 0), i8* noundef nonnull %ref_iv.0, i64 noundef %conv98, i8* noundef nonnull %4, i64 noundef %conv98) #8
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %err, label %if.end136

if.end136:                                        ; preds = %if.else, %if.then124
  br label %err

err:                                              ; preds = %if.else, %if.then124, %if.end108, %lor.lhs.false114, %if.end96, %lor.lhs.false103, %sw.epilog, %lor.lhs.false, %lor.lhs.false60, %lor.lhs.false67, %lor.lhs.false74, %lor.lhs.false81, %lor.lhs.false88, %if.end136
  %ret.0 = phi i32 [ 1, %if.end136 ], [ 0, %if.then124 ], [ 0, %if.else ], [ 0, %lor.lhs.false114 ], [ 0, %if.end108 ], [ 0, %lor.lhs.false103 ], [ 0, %if.end96 ], [ 0, %lor.lhs.false88 ], [ 0, %lor.lhs.false81 ], [ 0, %lor.lhs.false74 ], [ 0, %lor.lhs.false67 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false ], [ 0, %sw.epilog ]
  %ctx.0 = phi %struct.evp_cipher_ctx_st* [ %call57, %if.end136 ], [ %call57, %if.then124 ], [ %call57, %if.else ], [ %call57, %lor.lhs.false114 ], [ %call57, %if.end108 ], [ %call57, %lor.lhs.false103 ], [ %call57, %if.end96 ], [ %call57, %lor.lhs.false88 ], [ %call57, %lor.lhs.false81 ], [ %call57, %lor.lhs.false74 ], [ %call57, %lor.lhs.false67 ], [ %call57, %lor.lhs.false60 ], [ %call57, %lor.lhs.false ], [ null, %sw.epilog ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.0) #8
  %cmp137 = icmp ugt i32 %idx, 5
  br i1 %cmp137, label %if.then139, label %cleanup

if.then139:                                       ; preds = %err
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %type.6) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then139, %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ], [ %ret.0, %if.then139 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 7, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_evp_iv_des(i32 noundef %idx) #1 {
entry:
  %ciphertext = alloca [32 x i8], align 16
  %oiv = alloca [8 x i8], align 1
  %iv = alloca [8 x i8], align 1
  %len = alloca i32, align 4
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #9
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %oiv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  store i32 32, i32* %len, align 4, !tbaa !11
  %4 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @lgcyprov, align 8, !tbaa !5
  %cmp = icmp eq %struct.ossl_provider_st* %4, null
  %cmp1 = icmp slt i32 %idx, 3
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2890, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.412, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = icmp ult i32 %idx, 6
  br i1 %5, label %switch.lookup, label %cleanup

switch.lookup:                                    ; preds = %if.end
  %6 = sext i32 %idx to i64
  %switch.gep = getelementptr inbounds [6 x i8*], [6 x i8*]* @switch.table.test_evp_iv_des, i64 0, i64 %6
  %switch.load = load i8*, i8** %switch.gep, align 8
  %7 = sext i32 %idx to i64
  %switch.gep112 = getelementptr inbounds [6 x i8*], [6 x i8*]* @switch.table.test_evp_iv_des.537, i64 0, i64 %7
  %switch.load113 = load i8*, i8** %switch.gep112, align 8
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call12 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef %switch.load, i8* noundef null) #8
  %9 = bitcast %struct.evp_cipher_st* %call12 to i8*
  %call13 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2927, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.400, i64 0, i64 0), i8* noundef %9) #8
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %switch.lookup
  %call14 = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %10 = bitcast %struct.evp_cipher_ctx_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2928, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.401, i64 0, i64 0), i8* noundef %10) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %call18 = tail call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call14, %struct.evp_cipher_st* noundef %call12, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @test_evp_iv_des.key, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @test_evp_iv_des.init_iv, i64 0, i64 0)) #8
  %cmp19 = icmp ne i32 %call18, 0
  %conv = zext i1 %cmp19 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2929, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.402, i64 0, i64 0), i32 noundef %conv) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false17
  %call23 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef %call14, i8* noundef nonnull %0, i32* noundef nonnull %len, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @test_evp_iv_des.msg, i64 0, i64 0), i32 noundef 16) #8
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2931, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.403, i64 0, i64 0), i32 noundef %conv25) #8
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false22
  %call30 = call i32 @EVP_CIPHER_CTX_get_original_iv(%struct.evp_cipher_ctx_st* noundef %call14, i8* noundef nonnull %1, i64 noundef 8) #8
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2932, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.404, i64 0, i64 0), i32 noundef %conv32) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false28
  %call37 = call i32 @EVP_CIPHER_CTX_get_updated_iv(%struct.evp_cipher_ctx_st* noundef %call14, i8* noundef nonnull %2, i64 noundef 8) #8
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2933, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.405, i64 0, i64 0), i32 noundef %conv39) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false35
  %call44 = call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef %call14, i8* noundef nonnull %0, i32* noundef nonnull %len) #8
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2934, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.406, i64 0, i64 0), i32 noundef %conv46) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %if.end50

if.end50:                                         ; preds = %lor.lhs.false42
  %call51 = call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %call14) #8
  %conv52 = sext i32 %call51 to i64
  %call54 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2937, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.407, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.408, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @test_evp_iv_des.init_iv, i64 0, i64 0), i64 noundef %conv52, i8* noundef nonnull %1, i64 noundef %conv52) #8
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end50
  %call58 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2938, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.409, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.410, i64 0, i64 0), i8* noundef %switch.load113, i64 noundef 8, i8* noundef nonnull %2, i64 noundef %conv52) #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %if.end61

if.end61:                                         ; preds = %lor.lhs.false56
  %call62 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef %call14, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null) #8
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2941, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.411, i64 0, i64 0), i32 noundef %conv64) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.end61
  %call69 = call i32 @EVP_CIPHER_CTX_get_updated_iv(%struct.evp_cipher_ctx_st* noundef %call14, i8* noundef nonnull %2, i64 noundef 8) #8
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2942, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.405, i64 0, i64 0), i32 noundef %conv71) #8
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end75

if.end75:                                         ; preds = %lor.lhs.false67
  %call77 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2944, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.407, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.410, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @test_evp_iv_des.init_iv, i64 0, i64 0), i64 noundef %conv52, i8* noundef nonnull %2, i64 noundef %conv52) #8
  %tobool78.not = icmp ne i32 %call77, 0
  %spec.select = zext i1 %tobool78.not to i32
  br label %err

err:                                              ; preds = %if.end75, %if.end61, %lor.lhs.false67, %if.end50, %lor.lhs.false56, %switch.lookup, %lor.lhs.false, %lor.lhs.false17, %lor.lhs.false22, %lor.lhs.false28, %lor.lhs.false35, %lor.lhs.false42
  %ret.0 = phi i32 [ 0, %lor.lhs.false67 ], [ 0, %if.end61 ], [ 0, %lor.lhs.false56 ], [ 0, %if.end50 ], [ 0, %lor.lhs.false42 ], [ 0, %lor.lhs.false35 ], [ 0, %lor.lhs.false28 ], [ 0, %lor.lhs.false22 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false ], [ 0, %switch.lookup ], [ %spec.select, %if.end75 ]
  %ctx.0 = phi %struct.evp_cipher_ctx_st* [ %call14, %lor.lhs.false67 ], [ %call14, %if.end61 ], [ %call14, %lor.lhs.false56 ], [ %call14, %if.end50 ], [ %call14, %lor.lhs.false42 ], [ %call14, %lor.lhs.false35 ], [ %call14, %lor.lhs.false28 ], [ %call14, %lor.lhs.false22 ], [ %call14, %lor.lhs.false17 ], [ %call14, %lor.lhs.false ], [ null, %switch.lookup ], [ %call14, %if.end75 ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %ctx.0) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %err, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %err ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_EVP_rsa_pss_with_keygen_bits() #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i8* noundef null) #8
  %2 = bitcast %struct.evp_md_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3039, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.308, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call2 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0), i8* noundef null) #8
  %4 = bitcast %struct.evp_pkey_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3040, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.419, i64 0, i64 0), i8* noundef %4) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call2) #8
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3041, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.381, i64 0, i64 0), i32 noundef %conv) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call i32 @EVP_PKEY_CTX_set_rsa_keygen_bits(%struct.evp_pkey_ctx_st* noundef %call2, i32 noundef 512) #8
  %call11 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3042, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.420, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call i32 @EVP_PKEY_CTX_set_rsa_pss_keygen_md(%struct.evp_pkey_ctx_st* noundef %call2, %struct.evp_md_st* noundef %call) #8
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3043, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.421, i64 0, i64 0), i32 noundef %conv16) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true13
  %call19 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %call2, %struct.evp_pkey_st** noundef nonnull %pkey) #8
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3044, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.382, i64 0, i64 0), i32 noundef %conv21) #8
  %tobool23 = icmp ne i32 %call22, 0
  %phi.cast = zext i1 %tobool23 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true13, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true13 ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %5 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  call void @EVP_MD_free(%struct.evp_md_st* noundef %call) #8
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %6) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ecpub(i32 noundef %idx) #1 {
entry:
  %buf = alloca [1024 x i8], align 16
  %p = alloca i8*, align 8
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %q = alloca i8*, align 8
  %pkey2 = alloca %struct.evp_pkey_st*, align 8
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #9
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %3 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  %4 = bitcast %struct.evp_pkey_st** %pkey2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !5
  %5 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %cmp.not = icmp eq %struct.ossl_provider_st* %5, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2981, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.74, i64 0, i64 0)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds [13 x i32], [13 x i32]* @ecpub_nids, i64 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4, !tbaa !11
  %call1 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 408, %struct.engine_st* noundef null) #8
  %7 = bitcast %struct.evp_pkey_ctx_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2986, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.296, i64 0, i64 0), i8* noundef %7) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call1) #8
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2987, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.381, i64 0, i64 0), i32 noundef %conv) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %done, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef %call1, i32 noundef %6) #8
  %cmp9 = icmp ne i32 %call8, 0
  %conv10 = zext i1 %cmp9 to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2988, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.422, i64 0, i64 0), i32 noundef %conv10) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %done, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %call14 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %call1, %struct.evp_pkey_st** noundef nonnull %pkey) #8
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2989, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.382, i64 0, i64 0), i32 noundef %conv16) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %done, label %if.end20

if.end20:                                         ; preds = %lor.lhs.false13
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call21 = call i32 @i2d_PublicKey(%struct.evp_pkey_st* noundef %8, i8** noundef null) #8
  %call22 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2993, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.365, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call21, i32 noundef 1) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %done, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end20
  %call25 = call i32 @test_int_lt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2994, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.365, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.423, i64 0, i64 0), i32 noundef %call21, i32 noundef 1024) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %done, label %if.end28

if.end28:                                         ; preds = %lor.lhs.false24
  store i8* %0, i8** %p, align 8, !tbaa !5
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call29 = call i32 @i2d_PublicKey(%struct.evp_pkey_st* noundef %9, i8** noundef nonnull %p) #8
  %call30 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2998, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.365, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call29, i32 noundef 1) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %done, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.end28
  %call33 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2999, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.365, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.424, i64 0, i64 0), i32 noundef %call29, i32 noundef %call21) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %done, label %if.end36

if.end36:                                         ; preds = %lor.lhs.false32
  store i8* %0, i8** %q, align 8, !tbaa !5
  %call38 = call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  store %struct.evp_pkey_st* %call38, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !5
  %10 = bitcast %struct.evp_pkey_st* %call38 to i8*
  %call39 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3005, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.425, i64 0, i64 0), i8* noundef %10) #8
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %done, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end36
  %call42 = call %struct.ec_key_st* @EC_KEY_new_by_curve_name(i32 noundef %6) #8
  %11 = bitcast %struct.ec_key_st* %call42 to i8*
  %call43 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3006, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.426, i64 0, i64 0), i8* noundef %11) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %done, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false41
  %call46 = call i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef %call38, i32 noundef 408, i8* noundef %11) #8
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3007, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.427, i64 0, i64 0), i32 noundef %conv48) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %done, label %if.end52

if.end52:                                         ; preds = %lor.lhs.false45
  %conv53 = sext i32 %call21 to i64
  %call54 = call %struct.evp_pkey_st* @d2i_PublicKey(i32 noundef 408, %struct.evp_pkey_st** noundef nonnull %pkey2, i8** noundef nonnull %q, i64 noundef %conv53) #8
  %12 = bitcast %struct.evp_pkey_st* %call54 to i8*
  %call55 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3011, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.428, i64 0, i64 0), i8* noundef %12) #8
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %done, label %if.end58

if.end58:                                         ; preds = %if.end52
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !5
  %call59 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %13, %struct.evp_pkey_st* noundef %14) #8
  %call60 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3014, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.429, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call59, i32 noundef 1) #8
  %tobool61.not = icmp ne i32 %call60, 0
  %spec.select = zext i1 %tobool61.not to i32
  br label %done

done:                                             ; preds = %if.end58, %if.end52, %if.end36, %lor.lhs.false41, %lor.lhs.false45, %if.end28, %lor.lhs.false32, %if.end20, %lor.lhs.false24, %if.end, %lor.lhs.false, %lor.lhs.false7, %lor.lhs.false13
  %ret.0 = phi i32 [ 0, %if.end52 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false41 ], [ 0, %if.end36 ], [ 0, %lor.lhs.false32 ], [ 0, %if.end28 ], [ 0, %lor.lhs.false24 ], [ 0, %if.end20 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false7 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %spec.select, %if.end58 ]
  %ec.0 = phi %struct.ec_key_st* [ null, %if.end52 ], [ %call42, %lor.lhs.false45 ], [ %call42, %lor.lhs.false41 ], [ null, %if.end36 ], [ null, %lor.lhs.false32 ], [ null, %if.end28 ], [ null, %lor.lhs.false24 ], [ null, %if.end20 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false7 ], [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %if.end58 ]
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call1) #8
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %15) #8
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey2, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %16) #8
  call void @EC_KEY_free(%struct.ec_key_st* noundef %ec.0) #8
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %ret.0, %done ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_names_do_all() #1 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #8
  %0 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3076, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.296, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.190, i64 0, i64 0), i8* noundef null) #8
  %1 = bitcast %struct.evp_md_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3080, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i8* noundef %1) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @EVP_MD_names_do_all(%struct.evp_md_st* noundef %call2, void (i8*, i8*)* noundef nonnull @md_names, i8* noundef %0) #8
  %cmp = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3087, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.430, i64 0, i64 0), i32 noundef %conv) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  %.b = load i1, i1* @success, align 4
  %not..b = xor i1 %.b, true
  %conv13 = zext i1 %not..b to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3090, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.431, i64 0, i64 0), i32 noundef %conv13) #8
  %tobool15.not = icmp ne i32 %call14, 0
  %spec.select = zext i1 %tobool15.not to i32
  br label %err

err:                                              ; preds = %if.end11, %if.end6, %if.end, %entry
  %sha256.0 = phi %struct.evp_md_st* [ %call2, %if.end6 ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %if.end11 ]
  %testresult.0 = phi i32 [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end11 ]
  tail call void @EVP_MD_free(%struct.evp_md_st* noundef %sha256.0) #8
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #8
  ret i32 %testresult.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_evp_init_seq(i32 noundef %idx) #1 {
entry:
  %outlen1 = alloca i32, align 4
  %outlen2 = alloca i32, align 4
  %outbuf = alloca [1024 x i8], align 16
  %tag = alloca [16 x i8], align 16
  %0 = bitcast i32* %outlen1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i32* %outlen2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %outbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #9
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %tag, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #9
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %cmp = icmp eq %struct.evp_cipher_ctx_st* %call, null
  br i1 %cmp, label %if.then117, label %if.end

if.end:                                           ; preds = %entry
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %cipher = getelementptr inbounds %struct.EVP_INIT_TEST_st, %struct.EVP_INIT_TEST_st* %arrayidx, i64 0, i32 0
  %5 = load i8*, i8** %cipher, align 16, !tbaa !31
  %call1 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef %5, i8* noundef null) #8
  %6 = bitcast %struct.evp_cipher_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3200, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.435, i64 0, i64 0), i8* noundef %6) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then117, label %if.end4

if.end4:                                          ; preds = %if.end
  %initenc = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 11
  %7 = load i32, i32* %initenc, align 4, !tbaa !33
  %call5 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call, %struct.evp_cipher_st* noundef %call1, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef %7) #8
  %cmp6 = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp6 to i32
  %call7 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3204, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.437, i64 0, i64 0), i32 noundef %conv) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then117, label %if.end10

if.end10:                                         ; preds = %if.end4
  %call11 = tail call i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef nonnull %call, i32 noundef 0) #8
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3208, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.439, i64 0, i64 0), i32 noundef %conv13) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then117, label %if.end17

if.end17:                                         ; preds = %if.end10
  %8 = lshr i64 204, %idxprom
  %9 = and i64 %8, 1
  %tobool18.not.not = icmp eq i64 %9, 0
  br i1 %tobool18.not.not, label %land.lhs.true, label %if.end25.thread

land.lhs.true:                                    ; preds = %if.end17
  %key = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 1
  %10 = load i8*, i8** %key, align 8, !tbaa !34
  %call19 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef %10, i8* noundef null, i32 noundef -1) #8
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3212, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.441, i64 0, i64 0), i32 noundef %conv21) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then117, label %if.end25

if.end25:                                         ; preds = %land.lhs.true
  %call26 = tail call fastcc i32 @evp_init_seq_set_iv(%struct.evp_cipher_ctx_st* noundef nonnull %call, %struct.EVP_INIT_TEST_st* noundef nonnull %arrayidx) #10
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then117, label %if.end41

if.end25.thread:                                  ; preds = %if.end17
  %call26159 = tail call fastcc i32 @evp_init_seq_set_iv(%struct.evp_cipher_ctx_st* noundef nonnull %call, %struct.EVP_INIT_TEST_st* noundef nonnull %arrayidx) #10
  %tobool27.not160 = icmp eq i32 %call26159, 0
  br i1 %tobool27.not160, label %if.then117, label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.end25.thread
  %key34 = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 1
  %11 = load i8*, i8** %key34, align 8, !tbaa !34
  %call35 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef %11, i8* noundef null, i32 noundef -1) #8
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3220, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.441, i64 0, i64 0), i32 noundef %conv37) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then117, label %if.end41

if.end41:                                         ; preds = %if.end25, %land.lhs.true33
  %finalenc = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 12
  %12 = load i32, i32* %finalenc, align 8, !tbaa !35
  %call42 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef %12) #8
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3224, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.445, i64 0, i64 0), i32 noundef %conv44) #8
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then117, label %if.end48

if.end48:                                         ; preds = %if.end41
  %input = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 3
  %13 = load i8*, i8** %input, align 8, !tbaa !36
  %inlen = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 7
  %14 = load i64, i64* %inlen, align 8, !tbaa !37
  %conv49 = trunc i64 %14 to i32
  %call50 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef nonnull %call, i8* noundef nonnull %2, i32* noundef nonnull %outlen1, i8* noundef %13, i32 noundef %conv49) #8
  %cmp51 = icmp ne i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %call53 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3228, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.447, i64 0, i64 0), i32 noundef %conv52) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then117, label %if.end56

if.end56:                                         ; preds = %if.end48
  %15 = and i64 %idxprom, -4
  %cmp58 = icmp eq i64 %15, 4
  br i1 %cmp58, label %land.lhs.true60, label %if.end75

land.lhs.true60:                                  ; preds = %if.end56
  %16 = lshr i64 85, %idxprom
  %17 = and i64 %16, 1
  %cmp62.not.not = icmp eq i64 %17, 0
  br i1 %cmp62.not.not, label %if.then64, label %if.end75

if.then64:                                        ; preds = %land.lhs.true60
  %tag61 = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 5
  %18 = load i8*, i8** %tag61, align 8, !tbaa !38
  %taglen65 = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 9
  %19 = load i64, i64* %taglen65, align 8, !tbaa !39
  %conv66 = trunc i64 %19 to i32
  %call68 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %call, i32 noundef 17, i32 noundef %conv66, i8* noundef %18) #8
  %cmp69 = icmp ne i32 %call68, 0
  %conv70 = zext i1 %cmp69 to i32
  %call71 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3235, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.449, i64 0, i64 0), i32 noundef %conv70) #8
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then117, label %if.end75

if.end75:                                         ; preds = %if.then64, %land.lhs.true60, %if.end56
  %20 = load i32, i32* %outlen1, align 4, !tbaa !11
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds [1024 x i8], [1024 x i8]* %outbuf, i64 0, i64 %idx.ext
  %call77 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef nonnull %call, i8* noundef nonnull %add.ptr, i32* noundef nonnull %outlen2) #8
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3240, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.451, i64 0, i64 0), i32 noundef %conv79) #8
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then117, label %if.end83

if.end83:                                         ; preds = %if.end75
  %expected = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 4
  %21 = load i8*, i8** %expected, align 16, !tbaa !40
  %expectedlen = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 8
  %22 = load i64, i64* %expectedlen, align 16, !tbaa !41
  %23 = load i32, i32* %outlen1, align 4, !tbaa !11
  %24 = load i32, i32* %outlen2, align 4, !tbaa !11
  %add = add nsw i32 %24, %23
  %conv85 = sext i32 %add to i64
  %call86 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3244, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.453, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.454, i64 0, i64 0), i8* noundef %21, i64 noundef %22, i8* noundef nonnull %2, i64 noundef %conv85) #8
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then117, label %if.end89

if.end89:                                         ; preds = %if.end83
  br i1 %cmp58, label %if.end118, label %land.lhs.true93

land.lhs.true93:                                  ; preds = %if.end89
  %tag94 = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 5
  %25 = lshr i64 85, %idxprom
  %26 = and i64 %25, 1
  %cmp95.not.not = icmp eq i64 %26, 0
  br i1 %cmp95.not.not, label %if.then97, label %if.end118

if.then97:                                        ; preds = %land.lhs.true93
  %call100 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef nonnull %call, i32 noundef 16, i32 noundef 16, i8* noundef nonnull %3) #8
  %cmp101 = icmp ne i32 %call100, 0
  %conv102 = zext i1 %cmp101 to i32
  %call103 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3249, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.456, i64 0, i64 0), i32 noundef %conv102) #8
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then117, label %if.end106

if.end106:                                        ; preds = %if.then97
  %27 = load i8*, i8** %tag94, align 8, !tbaa !38
  %taglen108 = getelementptr inbounds [8 x %struct.EVP_INIT_TEST_st], [8 x %struct.EVP_INIT_TEST_st]* @evp_init_tests, i64 0, i64 %idxprom, i32 9
  %28 = load i64, i64* %taglen108, align 8, !tbaa !39
  %call110 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3253, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.458, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.459, i64 0, i64 0), i8* noundef %27, i64 noundef %28, i8* noundef nonnull %3, i64 noundef 16) #8
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then117, label %if.end118

if.then117:                                       ; preds = %entry, %if.end, %if.end4, %if.end10, %land.lhs.true, %if.end25, %land.lhs.true33, %if.end41, %if.end48, %if.then64, %if.end75, %if.end83, %if.then97, %if.end106, %if.end25.thread
  %type.0.ph = phi %struct.evp_cipher_st* [ %call1, %if.end25.thread ], [ %call1, %if.end106 ], [ %call1, %if.then97 ], [ %call1, %if.end83 ], [ %call1, %if.end75 ], [ %call1, %if.then64 ], [ %call1, %if.end48 ], [ %call1, %if.end41 ], [ %call1, %land.lhs.true33 ], [ %call1, %if.end25 ], [ %call1, %land.lhs.true ], [ %call1, %if.end10 ], [ %call1, %if.end4 ], [ %call1, %if.end ], [ null, %entry ]
  %errmsg.0.ph = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i64 0, i64 0), %if.end25.thread ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.460, i64 0, i64 0), %if.end106 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.457, i64 0, i64 0), %if.then97 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.455, i64 0, i64 0), %if.end83 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.452, i64 0, i64 0), %if.end75 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.450, i64 0, i64 0), %if.then64 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.448, i64 0, i64 0), %if.end48 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.446, i64 0, i64 0), %if.end41 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.444, i64 0, i64 0), %land.lhs.true33 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.443, i64 0, i64 0), %if.end25 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.442, i64 0, i64 0), %land.lhs.true ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.440, i64 0, i64 0), %if.end10 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.438, i64 0, i64 0), %if.end4 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.436, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.434, i64 0, i64 0), %entry ]
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3261, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.461, i64 0, i64 0), i32 noundef %idx, i8* noundef nonnull %errmsg.0.ph) #8
  br label %if.end118

if.end118:                                        ; preds = %if.end106, %land.lhs.true93, %if.end89, %if.then117
  %testresult.0168 = phi i32 [ 0, %if.then117 ], [ 1, %if.end89 ], [ 1, %land.lhs.true93 ], [ 1, %if.end106 ]
  %type.0166 = phi %struct.evp_cipher_st* [ %type.0.ph, %if.then117 ], [ %call1, %if.end89 ], [ %call1, %land.lhs.true93 ], [ %call1, %if.end106 ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %type.0166) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %testresult.0168
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_evp_reset(i32 noundef %idx) #1 {
entry:
  %outlen1 = alloca i32, align 4
  %outlen2 = alloca i32, align 4
  %outbuf = alloca [1024 x i8], align 16
  %idxprom = sext i32 %idx to i64
  %0 = bitcast i32* %outlen1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i32* %outlen2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %outbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #9
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %3 = bitcast %struct.evp_cipher_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3300, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.126, i64 0, i64 0), i8* noundef %3) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then80, label %if.end

if.end:                                           ; preds = %entry
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call2 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.396, i64 0, i64 0), i8* noundef null) #8
  %5 = bitcast %struct.evp_cipher_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3304, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.465, i64 0, i64 0), i8* noundef %5) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then80, label %if.end6

if.end6:                                          ; preds = %if.end
  %enc = getelementptr inbounds [2 x %struct.EVP_RESET_TEST_st], [2 x %struct.EVP_RESET_TEST_st]* @evp_reset_tests, i64 0, i64 %idxprom, i32 4
  %6 = load i32, i32* %enc, align 8, !tbaa !42
  %call7 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef %call2, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @kCFBDefaultKey, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @iCFBIV, i64 0, i64 0), i32 noundef %6) #8
  %cmp = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3308, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.466, i64 0, i64 0), i32 noundef %conv) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then80, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 0) #8
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3312, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.439, i64 0, i64 0), i32 noundef %conv14) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then80, label %if.end18

if.end18:                                         ; preds = %if.end11
  %input = getelementptr inbounds [2 x %struct.EVP_RESET_TEST_st], [2 x %struct.EVP_RESET_TEST_st]* @evp_reset_tests, i64 0, i64 %idxprom, i32 0
  %7 = load i8*, i8** %input, align 8, !tbaa !44
  %inlen = getelementptr inbounds [2 x %struct.EVP_RESET_TEST_st], [2 x %struct.EVP_RESET_TEST_st]* @evp_reset_tests, i64 0, i64 %idxprom, i32 2
  %8 = load i64, i64* %inlen, align 8, !tbaa !45
  %conv19 = trunc i64 %8 to i32
  %call20 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %2, i32* noundef nonnull %outlen1, i8* noundef %7, i32 noundef %conv19) #8
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3316, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.447, i64 0, i64 0), i32 noundef %conv22) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then80, label %if.end26

if.end26:                                         ; preds = %if.end18
  %9 = load i32, i32* %outlen1, align 4, !tbaa !11
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds [1024 x i8], [1024 x i8]* %outbuf, i64 0, i64 %idx.ext
  %call28 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %add.ptr, i32* noundef nonnull %outlen2) #8
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3320, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.451, i64 0, i64 0), i32 noundef %conv30) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then80, label %if.end34

if.end34:                                         ; preds = %if.end26
  %expected = getelementptr inbounds [2 x %struct.EVP_RESET_TEST_st], [2 x %struct.EVP_RESET_TEST_st]* @evp_reset_tests, i64 0, i64 %idxprom, i32 1
  %10 = load i8*, i8** %expected, align 8, !tbaa !46
  %expectedlen = getelementptr inbounds [2 x %struct.EVP_RESET_TEST_st], [2 x %struct.EVP_RESET_TEST_st]* @evp_reset_tests, i64 0, i64 %idxprom, i32 3
  %11 = load i64, i64* %expectedlen, align 8, !tbaa !47
  %12 = load i32, i32* %outlen1, align 4, !tbaa !11
  %13 = load i32, i32* %outlen2, align 4, !tbaa !11
  %add = add nsw i32 %13, %12
  %conv36 = sext i32 %add to i64
  %call37 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3324, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.453, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.454, i64 0, i64 0), i8* noundef %10, i64 noundef %11, i8* noundef nonnull %2, i64 noundef %conv36) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then80, label %if.end40

if.end40:                                         ; preds = %if.end34
  %call41 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef -1) #8
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3328, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.468, i64 0, i64 0), i32 noundef %conv43) #8
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then80, label %if.end47

if.end47:                                         ; preds = %if.end40
  %call52 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %2, i32* noundef nonnull %outlen1, i8* noundef %7, i32 noundef %conv19) #8
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3332, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.447, i64 0, i64 0), i32 noundef %conv54) #8
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then80, label %if.end58

if.end58:                                         ; preds = %if.end47
  %14 = load i32, i32* %outlen1, align 4, !tbaa !11
  %idx.ext60 = sext i32 %14 to i64
  %add.ptr61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %outbuf, i64 0, i64 %idx.ext60
  %call62 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %add.ptr61, i32* noundef nonnull %outlen2) #8
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3336, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.451, i64 0, i64 0), i32 noundef %conv64) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then80, label %err

err:                                              ; preds = %if.end58
  %15 = load i32, i32* %outlen1, align 4, !tbaa !11
  %16 = load i32, i32* %outlen2, align 4, !tbaa !11
  %add72 = add nsw i32 %16, %15
  %conv73 = sext i32 %add72 to i64
  %call74 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3340, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.453, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.454, i64 0, i64 0), i8* noundef %10, i64 noundef %11, i8* noundef nonnull %2, i64 noundef %conv73) #8
  %tobool75.not = icmp eq i32 %call74, 0
  %not.tobool75.not = xor i1 %tobool75.not, true
  %. = zext i1 %not.tobool75.not to i32
  br i1 %tobool75.not, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end58, %if.end47, %if.end40, %if.end34, %if.end26, %if.end18, %if.end11, %if.end6, %if.end, %entry, %err
  %errmsg.0115 = phi i8* [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.472, i64 0, i64 0), %err ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.471, i64 0, i64 0), %if.end58 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.470, i64 0, i64 0), %if.end47 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.469, i64 0, i64 0), %if.end40 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.455, i64 0, i64 0), %if.end34 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.452, i64 0, i64 0), %if.end26 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.448, i64 0, i64 0), %if.end18 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.440, i64 0, i64 0), %if.end11 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.467, i64 0, i64 0), %if.end6 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.436, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.434, i64 0, i64 0), %entry ]
  %type.0113 = phi %struct.evp_cipher_st* [ %call2, %err ], [ %call2, %if.end58 ], [ %call2, %if.end47 ], [ %call2, %if.end40 ], [ %call2, %if.end34 ], [ %call2, %if.end26 ], [ %call2, %if.end18 ], [ %call2, %if.end11 ], [ %call2, %if.end6 ], [ %call2, %if.end ], [ null, %entry ]
  %testresult.0111 = phi i32 [ %., %err ], [ 0, %if.end58 ], [ 0, %if.end47 ], [ 0, %if.end40 ], [ 0, %if.end34 ], [ 0, %if.end26 ], [ 0, %if.end18 ], [ 0, %if.end11 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ]
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3347, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.473, i64 0, i64 0), i32 noundef %idx, i8* noundef nonnull %errmsg.0115) #8
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %err
  %type.0114 = phi %struct.evp_cipher_st* [ %type.0113, %if.then80 ], [ %call2, %err ]
  %testresult.0112 = phi i32 [ %testresult.0111, %if.then80 ], [ %., %err ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %type.0114) #8
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %testresult.0112
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gcm_reinit(i32 noundef %idx) #1 {
entry:
  %outlen1 = alloca i32, align 4
  %outlen2 = alloca i32, align 4
  %outlen3 = alloca i32, align 4
  %outbuf = alloca [1024 x i8], align 16
  %tag = alloca [16 x i8], align 16
  %0 = bitcast i32* %outlen1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i32* %outlen2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %2 = bitcast i32* %outlen3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %outbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #9
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %tag, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #9
  %idxprom = sext i32 %idx to i64
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %5 = bitcast %struct.evp_cipher_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3498, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.126, i64 0, i64 0), i8* noundef %5) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then133, label %if.end

if.end:                                           ; preds = %entry
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call2 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.462, i64 0, i64 0), i8* noundef null) #8
  %7 = bitcast %struct.evp_cipher_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3502, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.474, i64 0, i64 0), i8* noundef %7) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then133, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef %call2, %struct.engine_st* noundef null, i8* noundef null, i8* noundef null, i32 noundef 1) #8
  %cmp = icmp ne i32 %call7, 0
  %conv = zext i1 %cmp to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3506, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.475, i64 0, i64 0), i32 noundef %conv) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then133, label %if.end11

if.end11:                                         ; preds = %if.end6
  %ivlen1 = getelementptr inbounds [2 x %struct.TEST_GCM_IV_REINIT_st], [2 x %struct.TEST_GCM_IV_REINIT_st]* @gcm_reinit_tests, i64 0, i64 %idxprom, i32 6
  %8 = load i64, i64* %ivlen1, align 16, !tbaa !48
  %conv12 = trunc i64 %8 to i32
  %call13 = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 9, i32 noundef %conv12, i8* noundef null) #8
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3510, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.477, i64 0, i64 0), i32 noundef %conv15) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then133, label %if.end19

if.end19:                                         ; preds = %if.end11
  %iv1 = getelementptr inbounds [2 x %struct.TEST_GCM_IV_REINIT_st], [2 x %struct.TEST_GCM_IV_REINIT_st]* @gcm_reinit_tests, i64 0, i64 %idxprom, i32 0
  %9 = load i8*, i8** %iv1, align 16, !tbaa !50
  %call20 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @kGCMResetKey, i64 0, i64 0), i8* noundef %9, i32 noundef 1) #8
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3514, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.479, i64 0, i64 0), i32 noundef %conv22) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then133, label %if.end26

if.end26:                                         ; preds = %if.end19
  %call27 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef null, i32* noundef nonnull %outlen3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @gcmAAD, i64 0, i64 0), i32 noundef 20) #8
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3518, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.481, i64 0, i64 0), i32 noundef %conv29) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then133, label %if.end33

if.end33:                                         ; preds = %if.end26
  %call34 = call i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 0) #8
  %call35 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %3, i32* noundef nonnull %outlen1, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @gcmResetPlaintext, i64 0, i64 0), i32 noundef 60) #8
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3524, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.483, i64 0, i64 0), i32 noundef %conv37) #8
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then133, label %if.end41

if.end41:                                         ; preds = %if.end33
  %10 = load i32, i32* %outlen1, align 4, !tbaa !11
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds [1024 x i8], [1024 x i8]* %outbuf, i64 0, i64 %idx.ext
  %call43 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %add.ptr, i32* noundef nonnull %outlen2) #8
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3528, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.451, i64 0, i64 0), i32 noundef %conv45) #8
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then133, label %if.end49

if.end49:                                         ; preds = %if.end41
  %expected1 = getelementptr inbounds [2 x %struct.TEST_GCM_IV_REINIT_st], [2 x %struct.TEST_GCM_IV_REINIT_st]* @gcm_reinit_tests, i64 0, i64 %idxprom, i32 2
  %11 = load i8*, i8** %expected1, align 16, !tbaa !51
  %expectedlen1 = getelementptr inbounds [2 x %struct.TEST_GCM_IV_REINIT_st], [2 x %struct.TEST_GCM_IV_REINIT_st]* @gcm_reinit_tests, i64 0, i64 %idxprom, i32 8
  %12 = load i64, i64* %expectedlen1, align 16, !tbaa !52
  %13 = load i32, i32* %outlen1, align 4, !tbaa !11
  %14 = load i32, i32* %outlen2, align 4, !tbaa !11
  %add = add nsw i32 %14, %13
  %conv51 = sext i32 %add to i64
  %call52 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3532, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.486, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.454, i64 0, i64 0), i8* noundef %11, i64 noundef %12, i8* noundef nonnull %3, i64 noundef %conv51) #8
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then133, label %if.end55

if.end55:                                         ; preds = %if.end49
  %call58 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 16, i32 noundef 16, i8* noundef nonnull %4) #8
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3536, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.456, i64 0, i64 0), i32 noundef %conv60) #8
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then133, label %if.end64

if.end64:                                         ; preds = %if.end55
  %tag1 = getelementptr inbounds [2 x %struct.TEST_GCM_IV_REINIT_st], [2 x %struct.TEST_GCM_IV_REINIT_st]* @gcm_reinit_tests, i64 0, i64 %idxprom, i32 4
  %15 = load i8*, i8** %tag1, align 16, !tbaa !53
  %call66 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3540, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.489, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.459, i64 0, i64 0), i8* noundef %15, i64 noundef 16, i8* noundef nonnull %4, i64 noundef 16) #8
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then133, label %if.end69

if.end69:                                         ; preds = %if.end64
  %ivlen2 = getelementptr inbounds [2 x %struct.TEST_GCM_IV_REINIT_st], [2 x %struct.TEST_GCM_IV_REINIT_st]* @gcm_reinit_tests, i64 0, i64 %idxprom, i32 7
  %16 = load i64, i64* %ivlen2, align 8, !tbaa !54
  %conv70 = trunc i64 %16 to i32
  %call71 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 9, i32 noundef %conv70, i8* noundef null) #8
  %cmp72 = icmp ne i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3545, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.491, i64 0, i64 0), i32 noundef %conv73) #8
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then133, label %if.end77

if.end77:                                         ; preds = %if.end69
  %iv2 = getelementptr inbounds [2 x %struct.TEST_GCM_IV_REINIT_st], [2 x %struct.TEST_GCM_IV_REINIT_st]* @gcm_reinit_tests, i64 0, i64 %idxprom, i32 1
  %17 = load i8*, i8** %iv2, align 8, !tbaa !55
  %call78 = call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef %17, i32 noundef -1) #8
  %cmp79 = icmp ne i32 %call78, 0
  %conv80 = zext i1 %cmp79 to i32
  %call81 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3549, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.493, i64 0, i64 0), i32 noundef %conv80) #8
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then133, label %if.end84

if.end84:                                         ; preds = %if.end77
  %call85 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef null, i32* noundef nonnull %outlen3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @gcmAAD, i64 0, i64 0), i32 noundef 20) #8
  %cmp86 = icmp ne i32 %call85, 0
  %conv87 = zext i1 %cmp86 to i32
  %call88 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3553, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.481, i64 0, i64 0), i32 noundef %conv87) #8
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then133, label %if.end91

if.end91:                                         ; preds = %if.end84
  %call93 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %3, i32* noundef nonnull %outlen1, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @gcmResetPlaintext, i64 0, i64 0), i32 noundef 60) #8
  %cmp94 = icmp ne i32 %call93, 0
  %conv95 = zext i1 %cmp94 to i32
  %call96 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3558, i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.483, i64 0, i64 0), i32 noundef %conv95) #8
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then133, label %if.end99

if.end99:                                         ; preds = %if.end91
  %18 = load i32, i32* %outlen1, align 4, !tbaa !11
  %idx.ext101 = sext i32 %18 to i64
  %add.ptr102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %outbuf, i64 0, i64 %idx.ext101
  %call103 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %add.ptr102, i32* noundef nonnull %outlen2) #8
  %cmp104 = icmp ne i32 %call103, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3562, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.451, i64 0, i64 0), i32 noundef %conv105) #8
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then133, label %if.end109

if.end109:                                        ; preds = %if.end99
  %expected2 = getelementptr inbounds [2 x %struct.TEST_GCM_IV_REINIT_st], [2 x %struct.TEST_GCM_IV_REINIT_st]* @gcm_reinit_tests, i64 0, i64 %idxprom, i32 3
  %19 = load i8*, i8** %expected2, align 8, !tbaa !56
  %expectedlen2 = getelementptr inbounds [2 x %struct.TEST_GCM_IV_REINIT_st], [2 x %struct.TEST_GCM_IV_REINIT_st]* @gcm_reinit_tests, i64 0, i64 %idxprom, i32 9
  %20 = load i64, i64* %expectedlen2, align 8, !tbaa !57
  %21 = load i32, i32* %outlen1, align 4, !tbaa !11
  %22 = load i32, i32* %outlen2, align 4, !tbaa !11
  %add111 = add nsw i32 %22, %21
  %conv112 = sext i32 %add111 to i64
  %call113 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3566, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.498, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.454, i64 0, i64 0), i8* noundef %19, i64 noundef %20, i8* noundef nonnull %3, i64 noundef %conv112) #8
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then133, label %if.end116

if.end116:                                        ; preds = %if.end109
  %call119 = call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 16, i32 noundef 16, i8* noundef nonnull %4) #8
  %cmp120 = icmp ne i32 %call119, 0
  %conv121 = zext i1 %cmp120 to i32
  %call122 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3570, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.456, i64 0, i64 0), i32 noundef %conv121) #8
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then133, label %err

err:                                              ; preds = %if.end116
  %tag2 = getelementptr inbounds [2 x %struct.TEST_GCM_IV_REINIT_st], [2 x %struct.TEST_GCM_IV_REINIT_st]* @gcm_reinit_tests, i64 0, i64 %idxprom, i32 5
  %23 = load i8*, i8** %tag2, align 8, !tbaa !58
  %call127 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3574, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.501, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.459, i64 0, i64 0), i8* noundef %23, i64 noundef 16, i8* noundef nonnull %4, i64 noundef 16) #8
  %tobool128.not = icmp eq i32 %call127, 0
  %not.tobool128.not = xor i1 %tobool128.not, true
  %. = zext i1 %not.tobool128.not to i32
  br i1 %tobool128.not, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end116, %if.end109, %if.end99, %if.end91, %if.end84, %if.end77, %if.end69, %if.end64, %if.end55, %if.end49, %if.end41, %if.end33, %if.end26, %if.end19, %if.end11, %if.end6, %if.end, %entry, %err
  %errmsg.0182 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.502, i64 0, i64 0), %err ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.500, i64 0, i64 0), %if.end116 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.499, i64 0, i64 0), %if.end109 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.497, i64 0, i64 0), %if.end99 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.496, i64 0, i64 0), %if.end91 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.495, i64 0, i64 0), %if.end84 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.494, i64 0, i64 0), %if.end77 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.492, i64 0, i64 0), %if.end69 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.490, i64 0, i64 0), %if.end64 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.488, i64 0, i64 0), %if.end55 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.487, i64 0, i64 0), %if.end49 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.485, i64 0, i64 0), %if.end41 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.484, i64 0, i64 0), %if.end33 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.482, i64 0, i64 0), %if.end26 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.480, i64 0, i64 0), %if.end19 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.478, i64 0, i64 0), %if.end11 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.476, i64 0, i64 0), %if.end6 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.436, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.434, i64 0, i64 0), %entry ]
  %testresult.0180 = phi i32 [ %., %err ], [ 0, %if.end116 ], [ 0, %if.end109 ], [ 0, %if.end99 ], [ 0, %if.end91 ], [ 0, %if.end84 ], [ 0, %if.end77 ], [ 0, %if.end69 ], [ 0, %if.end64 ], [ 0, %if.end55 ], [ 0, %if.end49 ], [ 0, %if.end41 ], [ 0, %if.end33 ], [ 0, %if.end26 ], [ 0, %if.end19 ], [ 0, %if.end11 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ]
  %type.0178 = phi %struct.evp_cipher_st* [ %call2, %err ], [ %call2, %if.end116 ], [ %call2, %if.end109 ], [ %call2, %if.end99 ], [ %call2, %if.end91 ], [ %call2, %if.end84 ], [ %call2, %if.end77 ], [ %call2, %if.end69 ], [ %call2, %if.end64 ], [ %call2, %if.end55 ], [ %call2, %if.end49 ], [ %call2, %if.end41 ], [ %call2, %if.end33 ], [ %call2, %if.end26 ], [ %call2, %if.end19 ], [ %call2, %if.end11 ], [ %call2, %if.end6 ], [ %call2, %if.end ], [ null, %entry ]
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3581, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.461, i64 0, i64 0), i32 noundef %idx, i8* noundef nonnull %errmsg.0182) #8
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %err
  %testresult.0181 = phi i32 [ %testresult.0180, %if.then133 ], [ %., %err ]
  %type.0179 = phi %struct.evp_cipher_st* [ %type.0178, %if.then133 ], [ %call2, %err ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %type.0179) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %testresult.0181
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_evp_updated_iv(i32 noundef %idx) #1 {
entry:
  %outlen1 = alloca i32, align 4
  %outlen2 = alloca i32, align 4
  %outbuf = alloca [1024 x i8], align 16
  %updated_iv = alloca [16 x i8], align 16
  %idxprom = sext i32 %idx to i64
  %0 = bitcast i32* %outlen1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  %1 = bitcast i32* %outlen2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %outbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %2) #9
  %3 = getelementptr inbounds [16 x i8], [16 x i8]* %updated_iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #9
  %call = tail call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #8
  %4 = bitcast %struct.evp_cipher_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3413, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.126, i64 0, i64 0), i8* noundef %4) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then57, label %if.end

if.end:                                           ; preds = %entry
  %5 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %cipher = getelementptr inbounds [12 x %struct.EVP_UPDATED_IV_TEST_st], [12 x %struct.EVP_UPDATED_IV_TEST_st]* @evp_updated_iv_tests, i64 0, i64 %idxprom, i32 0
  %6 = load i8*, i8** %cipher, align 16, !tbaa !59
  %call2 = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %5, i8* noundef %6, i8* noundef null) #8
  %cmp = icmp eq %struct.evp_cipher_st* %call2, null
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3418, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.503, i64 0, i64 0), i8* noundef %6) #8
  br label %if.end58

if.end5:                                          ; preds = %if.end
  %enc = getelementptr inbounds [12 x %struct.EVP_UPDATED_IV_TEST_st], [12 x %struct.EVP_UPDATED_IV_TEST_st]* @evp_updated_iv_tests, i64 0, i64 %idxprom, i32 1
  %7 = load i32, i32* %enc, align 8, !tbaa !61
  %call6 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %call, %struct.evp_cipher_st* noundef nonnull %call2, %struct.engine_st* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @kCFBDefaultKey, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @iCFBIV, i64 0, i64 0), i32 noundef %7) #8
  %cmp7 = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp7 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3422, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.466, i64 0, i64 0), i32 noundef %conv) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then57, label %if.end11

if.end11:                                         ; preds = %if.end5
  %call12 = tail call i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef %call, i32 noundef 0) #8
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3426, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.439, i64 0, i64 0), i32 noundef %conv14) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then57, label %if.end18

if.end18:                                         ; preds = %if.end11
  %call19 = call i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %2, i32* noundef nonnull %outlen1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cfbPlaintext, i64 0, i64 0), i32 noundef 16) #8
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3430, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.504, i64 0, i64 0), i32 noundef %conv21) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then57, label %if.end25

if.end25:                                         ; preds = %if.end18
  %call27 = call i32 @EVP_CIPHER_CTX_get_updated_iv(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %3, i64 noundef 16) #8
  %cmp28 = icmp ne i32 %call27, 0
  %conv29 = zext i1 %cmp28 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3434, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.505, i64 0, i64 0), i32 noundef %conv29) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then57, label %if.end33

if.end33:                                         ; preds = %if.end25
  %call34 = call i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef %call) #8
  %cmp35 = icmp ne i32 %call34, 0
  %conv36 = zext i1 %cmp35 to i32
  %call37 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3438, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.507, i64 0, i64 0), i32 noundef %conv36) #8
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then57, label %if.end40

if.end40:                                         ; preds = %if.end33
  %conv42 = sext i32 %call34 to i64
  %call43 = call i32 @test_mem_ne(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3442, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.509, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.510, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @iCFBIV, i64 0, i64 0), i64 noundef 16, i8* noundef nonnull %3, i64 noundef %conv42) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then57, label %if.end46

if.end46:                                         ; preds = %if.end40
  %8 = load i32, i32* %outlen1, align 4, !tbaa !11
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds [1024 x i8], [1024 x i8]* %outbuf, i64 0, i64 %idx.ext
  %call48 = call i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef %call, i8* noundef nonnull %add.ptr, i32* noundef nonnull %outlen2) #8
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3446, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.451, i64 0, i64 0), i32 noundef %conv50) #8
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then57, label %if.end58

if.then57:                                        ; preds = %entry, %if.end5, %if.end11, %if.end18, %if.end25, %if.end33, %if.end40, %if.end46
  %type.0.ph = phi %struct.evp_cipher_st* [ %call2, %if.end46 ], [ %call2, %if.end40 ], [ %call2, %if.end33 ], [ %call2, %if.end25 ], [ %call2, %if.end18 ], [ %call2, %if.end11 ], [ %call2, %if.end5 ], [ null, %entry ]
  %errmsg.0.ph = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.452, i64 0, i64 0), %if.end46 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.511, i64 0, i64 0), %if.end40 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.508, i64 0, i64 0), %if.end33 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.506, i64 0, i64 0), %if.end25 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.448, i64 0, i64 0), %if.end18 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.440, i64 0, i64 0), %if.end11 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.467, i64 0, i64 0), %if.end5 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.434, i64 0, i64 0), %entry ]
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3454, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.512, i64 0, i64 0), i32 noundef %idx, i8* noundef nonnull %errmsg.0.ph) #8
  br label %if.end58

if.end58:                                         ; preds = %if.end46, %if.then3, %if.then57
  %testresult.083 = phi i32 [ 0, %if.then57 ], [ 1, %if.then3 ], [ 1, %if.end46 ]
  %type.081 = phi %struct.evp_cipher_st* [ %type.0.ph, %if.then57 ], [ null, %if.then3 ], [ %call2, %if.end46 ]
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef %call) #8
  call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %type.081) #8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %testresult.083
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_custom_pmeth(i32 noundef %idx) #1 {
entry:
  %pctx = alloca %struct.evp_pkey_ctx_st*, align 8
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %orig_id = alloca i32, align 4
  %orig_flags = alloca i32, align 4
  %reslen = alloca i64, align 8
  %msg = alloca [5 x i8], align 1
  %0 = bitcast %struct.evp_pkey_ctx_st** %pctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_ctx_st* null, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !5
  %1 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %2 = bitcast i32* %orig_id to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  %3 = bitcast i32* %orig_flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9
  %4 = bitcast i64* %reslen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %msg, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %5) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(5) %5, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_custom_pmeth.msg, i64 0, i64 0), i64 5, i1 false)
  %call = tail call %struct.evp_md_st* @EVP_sha256() #8
  store i1 false, i1* @ctrl_called, align 4
  %6 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %cmp.not = icmp eq %struct.ossl_lib_ctx_st* %6, null
  br i1 %cmp.not, label %if.end, label %cleanup178

if.end:                                           ; preds = %entry
  switch i32 %idx, label %sw.default [
    i32 0, label %sw.bb
    i32 6, label %sw.bb
    i32 1, label %sw.bb2
    i32 7, label %sw.bb2
    i32 2, label %sw.bb4
    i32 8, label %sw.bb4
    i32 3, label %sw.bb6
    i32 9, label %sw.bb6
    i32 4, label %sw.bb8
    i32 10, label %sw.bb8
    i32 5, label %sw.bb10
    i32 11, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %call1 = tail call fastcc %struct.evp_pkey_st* @load_example_rsa_key() #10
  store %struct.evp_pkey_st* %call1, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end, %if.end
  %call3 = tail call fastcc %struct.evp_pkey_st* @load_example_dsa_key() #10
  store %struct.evp_pkey_st* %call3, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end, %if.end
  %call5 = tail call fastcc %struct.evp_pkey_st* @load_example_ec_key() #10
  store %struct.evp_pkey_st* %call5, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end, %if.end
  %call7 = tail call fastcc %struct.evp_pkey_st* @load_example_ed25519_key() #10
  store %struct.evp_pkey_st* %call7, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end, %if.end
  %call9 = tail call fastcc %struct.evp_pkey_st* @load_example_dh_key() #10
  store %struct.evp_pkey_st* %call9, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end, %if.end
  %call11 = tail call fastcc %struct.evp_pkey_st* @load_example_x25519_key() #10
  store %struct.evp_pkey_st* %call11, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3738, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.516, i64 0, i64 0)) #8
  br label %err

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %7 = phi %struct.evp_pkey_st* [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  %cmp63 = phi i1 [ false, %sw.bb10 ], [ false, %sw.bb8 ], [ true, %sw.bb6 ], [ false, %sw.bb4 ], [ false, %sw.bb2 ], [ false, %sw.bb ]
  %cmp67 = phi i1 [ false, %sw.bb10 ], [ true, %sw.bb8 ], [ false, %sw.bb6 ], [ false, %sw.bb4 ], [ false, %sw.bb2 ], [ false, %sw.bb ]
  %cmp70 = phi i1 [ true, %sw.bb10 ], [ false, %sw.bb8 ], [ false, %sw.bb6 ], [ false, %sw.bb4 ], [ false, %sw.bb2 ], [ false, %sw.bb ]
  %cmp75 = phi i1 [ true, %sw.bb10 ], [ true, %sw.bb8 ], [ false, %sw.bb6 ], [ true, %sw.bb4 ], [ true, %sw.bb2 ], [ true, %sw.bb ]
  %cmp77 = phi i1 [ false, %sw.bb10 ], [ true, %sw.bb8 ], [ true, %sw.bb6 ], [ true, %sw.bb4 ], [ true, %sw.bb2 ], [ true, %sw.bb ]
  %id.0 = phi i32 [ 1034, %sw.bb10 ], [ 28, %sw.bb8 ], [ 1087, %sw.bb6 ], [ 408, %sw.bb4 ], [ 116, %sw.bb2 ], [ 6, %sw.bb ]
  %md.0 = phi %struct.evp_md_st* [ %call, %sw.bb10 ], [ %call, %sw.bb8 ], [ null, %sw.bb6 ], [ %call, %sw.bb4 ], [ %call, %sw.bb2 ], [ %call, %sw.bb ]
  %tobool88.not = phi i1 [ false, %sw.bb10 ], [ false, %sw.bb8 ], [ true, %sw.bb6 ], [ true, %sw.bb4 ], [ true, %sw.bb2 ], [ true, %sw.bb ]
  %doderive.0 = phi i32 [ 1, %sw.bb10 ], [ 1, %sw.bb8 ], [ 0, %sw.bb6 ], [ 0, %sw.bb4 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  %8 = bitcast %struct.evp_pkey_st* %7 to i8*
  %9 = bitcast %struct.evp_pkey_st** %pkey to i8**
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3742, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %8) #8
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %err, label %if.end14

if.end14:                                         ; preds = %sw.epilog
  %cmp15 = icmp ult i32 %idx, 6
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  %keymgmt = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %7, i64 0, i32 13
  %10 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt, align 8, !tbaa !62
  %cmp17 = icmp ne %struct.evp_keymgmt_st* %10, null
  %conv = zext i1 %cmp17 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3746, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.517, i64 0, i64 0), i32 noundef %conv) #8
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %if.end47

if.else:                                          ; preds = %if.end14
  %call24 = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  store %struct.evp_pkey_st* %call24, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %11 = bitcast %struct.evp_pkey_st* %call24 to i8*
  %call25 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3753, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %11) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.else
  store %struct.evp_pkey_st* %7, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  br label %err

if.end28:                                         ; preds = %if.else
  %call29 = call i32 @evp_pkey_copy_downgraded(%struct.evp_pkey_st** noundef nonnull %pkey, %struct.evp_pkey_st* noundef %7) #8
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3757, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.518, i64 0, i64 0), i32 noundef %conv31) #8
  %tobool33.not = icmp eq i32 %call32, 0
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %7) #8
  br i1 %tobool33.not, label %err, label %if.end35

if.end35:                                         ; preds = %if.end28
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %12, i64 0, i32 0
  %13 = load i32, i32* %type, align 8, !tbaa !66
  %cmp36.not = icmp eq i32 %13, 0
  br i1 %cmp36.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end35
  %keymgmt38 = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %12, i64 0, i32 13
  %14 = load %struct.evp_keymgmt_st*, %struct.evp_keymgmt_st** %keymgmt38, align 8, !tbaa !62
  %cmp39 = icmp eq %struct.evp_keymgmt_st* %14, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end35
  %15 = phi i1 [ false, %if.end35 ], [ %cmp39, %land.rhs ]
  %land.ext = zext i1 %15 to i32
  %call43 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3762, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.519, i64 0, i64 0), i32 noundef %land.ext) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end47

if.end47:                                         ; preds = %land.end, %if.then16
  %call48 = call %struct.evp_pkey_method_st* @EVP_PKEY_meth_find(i32 noundef %id.0) #8
  store %struct.evp_pkey_method_st* %call48, %struct.evp_pkey_method_st** @orig_pmeth, align 8, !tbaa !5
  %16 = bitcast %struct.evp_pkey_method_st* %call48 to i8*
  %call49 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3766, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.520, i64 0, i64 0), i8* noundef %16) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end47
  %17 = load i8*, i8** %9, align 8, !tbaa !5
  %call51 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3767, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %17) #8
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %err, label %if.end54

if.end54:                                         ; preds = %lor.lhs.false
  %18 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @orig_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_get0_info(i32* noundef nonnull %orig_id, i32* noundef nonnull %orig_flags, %struct.evp_pkey_method_st* noundef %18) #8
  %19 = load i32, i32* %orig_id, align 4, !tbaa !11
  %call55 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3771, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.521, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.522, i64 0, i64 0), i32 noundef %19, i32 noundef %id.0) #8
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end54
  %20 = load i32, i32* %orig_flags, align 4, !tbaa !11
  %call58 = call %struct.evp_pkey_method_st* @EVP_PKEY_meth_new(i32 noundef %id.0, i32 noundef %20) #8
  store %struct.evp_pkey_method_st* %call58, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  %21 = bitcast %struct.evp_pkey_method_st* %call58 to i8*
  %call59 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3772, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.523, i64 0, i64 0), i8* noundef %21) #8
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %if.end62

if.end62:                                         ; preds = %lor.lhs.false57
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end62
  %22 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_set_digestsign(%struct.evp_pkey_method_st* noundef %22, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* noundef nonnull @custom_pmeth_digestsign) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end62
  %or.cond = or i1 %cmp67, %cmp70
  %23 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  br i1 %or.cond, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.end66
  call void @EVP_PKEY_meth_set_derive(%struct.evp_pkey_method_st* noundef %23, i32 (%struct.evp_pkey_ctx_st*)* noundef null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* noundef nonnull @custom_pmeth_derive) #8
  br label %if.end74

if.else73:                                        ; preds = %if.end66
  call void @EVP_PKEY_meth_set_sign(%struct.evp_pkey_method_st* noundef %23, i32 (%struct.evp_pkey_ctx_st*)* noundef null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef nonnull @custom_pmeth_sign) #8
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %if.then72
  %or.cond190 = and i1 %cmp75, %cmp77
  br i1 %or.cond190, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end74
  %24 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_set_init(%struct.evp_pkey_method_st* noundef %24, i32 (%struct.evp_pkey_ctx_st*)* noundef nonnull @custom_pmeth_init) #8
  %25 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_set_cleanup(%struct.evp_pkey_method_st* noundef %25, void (%struct.evp_pkey_ctx_st*)* noundef nonnull @custom_pmeth_cleanup) #8
  %26 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_set_copy(%struct.evp_pkey_method_st* noundef %26, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* noundef nonnull @custom_pmeth_copy) #8
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end74
  %27 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_set_ctrl(%struct.evp_pkey_method_st* noundef %27, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* noundef nonnull @custom_pmeth_ctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* noundef null) #8
  %28 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  %call81 = call i32 @EVP_PKEY_meth_add0(%struct.evp_pkey_method_st* noundef %28) #8
  %cmp82 = icmp ne i32 %call81, 0
  %conv83 = zext i1 %cmp82 to i32
  %call84 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3788, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv83) #8
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %if.end87

if.end87:                                         ; preds = %if.end80
  br i1 %tobool88.not, label %if.else122, label %if.then89

if.then89:                                        ; preds = %if.end87
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call90 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef %29, %struct.engine_st* noundef null) #8
  store %struct.evp_pkey_ctx_st* %call90, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !5
  %30 = bitcast %struct.evp_pkey_ctx_st* %call90 to i8*
  %call91 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3793, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.386, i64 0, i64 0), i8* noundef %30) #8
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %err, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.then89
  %call94 = call i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef %call90) #8
  %call95 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3794, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.260, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call94, i32 noundef 1) #8
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %err, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false93
  %call98 = call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %call90, i32 noundef -1, i32 noundef -1, i32 noundef 9999, i32 noundef 0, i8* noundef null) #8
  %call99 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3797, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.524, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call98, i32 noundef 1) #8
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false97
  %.b220 = load i1, i1* @ctrl_called, align 4
  %31 = zext i1 %.b220 to i32
  %call102 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3798, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.525, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %31, i32 noundef 1) #8
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false101
  %32 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call105 = call i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef %call90, %struct.evp_pkey_st* noundef %32) #8
  %call106 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3799, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.526, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call105, i32 noundef 1) #8
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false104
  %call109 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call90, i8* noundef null, i64* noundef nonnull %reslen) #8
  %call110 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3800, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.527, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call109, i32 noundef 1) #8
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false108
  %33 = load i64, i64* %reslen, align 8, !tbaa !9
  %call113 = call i8* @CRYPTO_malloc(i64 noundef %33, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3801) #8
  %call114 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3801, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.528, i64 0, i64 0), i8* noundef %call113) #8
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false112
  %call117 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call90, i8* noundef %call113, i64* noundef nonnull %reslen) #8
  %call118 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3802, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.529, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call117, i32 noundef 1) #8
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %if.end173

if.else122:                                       ; preds = %if.end87
  %call123 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %34 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call124 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %34) #8
  %conv125 = sext i32 %call124 to i64
  store i64 %conv125, i64* %reslen, align 8, !tbaa !9
  %call126 = call i8* @CRYPTO_malloc(i64 noundef %conv125, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3807) #8
  %35 = bitcast %struct.evp_md_ctx_st* %call123 to i8*
  %call127 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3808, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.296, i64 0, i64 0), i8* noundef %35) #8
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %err, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %if.else122
  %call130 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3809, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.530, i64 0, i64 0), i8* noundef %call126) #8
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %err, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false129
  %36 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %call133 = call i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef %call123, %struct.evp_pkey_ctx_st** noundef nonnull %pctx, %struct.evp_md_st* noundef %md.0, %struct.engine_st* noundef null, %struct.evp_pkey_st* noundef %36) #8
  %cmp134 = icmp ne i32 %call133, 0
  %conv135 = zext i1 %cmp134 to i32
  %call136 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3810, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.531, i64 0, i64 0), i32 noundef %conv135) #8
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %err, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %lor.lhs.false132
  %37 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !5
  %call139 = call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %37, i32 noundef -1, i32 noundef -1, i32 noundef 9999, i32 noundef 0, i8* noundef null) #8
  %call140 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3813, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.524, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call139, i32 noundef 1) #8
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %err, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false138
  %.b = load i1, i1* @ctrl_called, align 4
  %38 = zext i1 %.b to i32
  %call143 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3814, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.525, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %38, i32 noundef 1) #8
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %err, label %if.end146

if.end146:                                        ; preds = %lor.lhs.false142
  br i1 %cmp63, label %if.then149, label %if.else157

if.then149:                                       ; preds = %if.end146
  %call150 = call i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef %call123, i8* noundef %call126, i64* noundef nonnull %reslen, i8* noundef nonnull %5, i64 noundef 5) #8
  %cmp151 = icmp ne i32 %call150, 0
  %conv152 = zext i1 %cmp151 to i32
  %call153 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3818, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.532, i64 0, i64 0), i32 noundef %conv152) #8
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %err, label %if.end173

if.else157:                                       ; preds = %if.end146
  %call159 = call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %call123, i8* noundef nonnull %5, i64 noundef 5) #8
  %cmp160 = icmp ne i32 %call159, 0
  %conv161 = zext i1 %cmp160 to i32
  %call162 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3821, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.533, i64 0, i64 0), i32 noundef %conv161) #8
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %err, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %if.else157
  %call165 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %call123, i8* noundef %call126, i64* noundef nonnull %reslen) #8
  %cmp166 = icmp ne i32 %call165, 0
  %conv167 = zext i1 %cmp166 to i32
  %call168 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3822, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.534, i64 0, i64 0), i32 noundef %conv167) #8
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %err, label %if.end173

if.end173:                                        ; preds = %if.then149, %lor.lhs.false164, %lor.lhs.false116
  %ctx.0 = phi %struct.evp_md_ctx_st* [ null, %lor.lhs.false116 ], [ %call123, %if.then149 ], [ %call123, %lor.lhs.false164 ]
  %res.0 = phi i8* [ %call113, %lor.lhs.false116 ], [ %call126, %if.then149 ], [ %call126, %lor.lhs.false164 ]
  br label %err

err:                                              ; preds = %if.end28, %land.end, %if.then27, %if.else157, %lor.lhs.false164, %if.then149, %if.else122, %lor.lhs.false129, %lor.lhs.false132, %lor.lhs.false138, %lor.lhs.false142, %if.then89, %lor.lhs.false93, %lor.lhs.false97, %lor.lhs.false101, %lor.lhs.false104, %lor.lhs.false108, %lor.lhs.false112, %lor.lhs.false116, %if.end80, %if.end54, %lor.lhs.false57, %if.end47, %lor.lhs.false, %if.then16, %sw.epilog, %if.end173, %sw.default
  %ctx.1 = phi %struct.evp_md_ctx_st* [ null, %sw.default ], [ %ctx.0, %if.end173 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false112 ], [ null, %lor.lhs.false108 ], [ null, %lor.lhs.false104 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false93 ], [ null, %if.then89 ], [ %call123, %if.then149 ], [ %call123, %lor.lhs.false164 ], [ %call123, %if.else157 ], [ %call123, %lor.lhs.false142 ], [ %call123, %lor.lhs.false138 ], [ %call123, %lor.lhs.false132 ], [ %call123, %lor.lhs.false129 ], [ %call123, %if.else122 ], [ null, %if.end80 ], [ null, %lor.lhs.false57 ], [ null, %if.end54 ], [ null, %lor.lhs.false ], [ null, %if.end47 ], [ null, %if.then16 ], [ null, %sw.epilog ], [ null, %if.then27 ], [ null, %land.end ], [ null, %if.end28 ]
  %testresult.0 = phi i32 [ 0, %sw.default ], [ 1, %if.end173 ], [ 0, %lor.lhs.false116 ], [ 0, %lor.lhs.false112 ], [ 0, %lor.lhs.false108 ], [ 0, %lor.lhs.false104 ], [ 0, %lor.lhs.false101 ], [ 0, %lor.lhs.false97 ], [ 0, %lor.lhs.false93 ], [ 0, %if.then89 ], [ 0, %if.then149 ], [ 0, %lor.lhs.false164 ], [ 0, %if.else157 ], [ 0, %lor.lhs.false142 ], [ 0, %lor.lhs.false138 ], [ 0, %lor.lhs.false132 ], [ 0, %lor.lhs.false129 ], [ 0, %if.else122 ], [ 0, %if.end80 ], [ 0, %lor.lhs.false57 ], [ 0, %if.end54 ], [ 0, %lor.lhs.false ], [ 0, %if.end47 ], [ 0, %if.then16 ], [ 0, %sw.epilog ], [ 0, %if.then27 ], [ 0, %land.end ], [ 0, %if.end28 ]
  %res.1 = phi i8* [ null, %sw.default ], [ %res.0, %if.end173 ], [ %call113, %lor.lhs.false116 ], [ %call113, %lor.lhs.false112 ], [ null, %lor.lhs.false108 ], [ null, %lor.lhs.false104 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false97 ], [ null, %lor.lhs.false93 ], [ null, %if.then89 ], [ %call126, %if.then149 ], [ %call126, %lor.lhs.false164 ], [ %call126, %if.else157 ], [ %call126, %lor.lhs.false142 ], [ %call126, %lor.lhs.false138 ], [ %call126, %lor.lhs.false132 ], [ %call126, %lor.lhs.false129 ], [ %call126, %if.else122 ], [ null, %if.end80 ], [ null, %lor.lhs.false57 ], [ null, %if.end54 ], [ null, %lor.lhs.false ], [ null, %if.end47 ], [ null, %if.then16 ], [ null, %sw.epilog ], [ null, %if.then27 ], [ null, %land.end ], [ null, %if.end28 ]
  %doderive.1 = phi i32 [ 0, %sw.default ], [ %doderive.0, %if.end173 ], [ 1, %lor.lhs.false116 ], [ 1, %lor.lhs.false112 ], [ 1, %lor.lhs.false108 ], [ 1, %lor.lhs.false104 ], [ 1, %lor.lhs.false101 ], [ 1, %lor.lhs.false97 ], [ 1, %lor.lhs.false93 ], [ 1, %if.then89 ], [ 0, %if.then149 ], [ 0, %lor.lhs.false164 ], [ 0, %if.else157 ], [ 0, %lor.lhs.false142 ], [ 0, %lor.lhs.false138 ], [ 0, %lor.lhs.false132 ], [ 0, %lor.lhs.false129 ], [ 0, %if.else122 ], [ %doderive.0, %if.end80 ], [ %doderive.0, %lor.lhs.false57 ], [ %doderive.0, %if.end54 ], [ %doderive.0, %lor.lhs.false ], [ %doderive.0, %if.end47 ], [ %doderive.0, %if.then16 ], [ %doderive.0, %sw.epilog ], [ %doderive.0, %if.then27 ], [ %doderive.0, %land.end ], [ %doderive.0, %if.end28 ]
  call void @CRYPTO_free(i8* noundef %res.1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3829) #8
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %ctx.1) #8
  %tobool174.not = icmp eq i32 %doderive.1, 0
  br i1 %tobool174.not, label %if.end176, label %if.then175

if.then175:                                       ; preds = %err
  %39 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !5
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %39) #8
  br label %if.end176

if.end176:                                        ; preds = %if.then175, %err
  %40 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %40) #8
  %41 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  %call177 = call i32 @EVP_PKEY_meth_remove(%struct.evp_pkey_method_st* noundef %41) #8
  %42 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_free(%struct.evp_pkey_method_st* noundef %42) #8
  store %struct.evp_pkey_method_st* null, %struct.evp_pkey_method_st** @custom_pmeth, align 8, !tbaa !5
  br label %cleanup178

cleanup178:                                       ; preds = %entry, %if.end176
  %retval.0 = phi i32 [ %testresult.0, %if.end176 ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_evp_md_cipher_meth() #1 {
entry:
  %call = tail call %struct.evp_md_st* @EVP_sha256() #8
  %call1 = tail call %struct.evp_md_st* @EVP_MD_meth_dup(%struct.evp_md_st* noundef %call) #8
  %call2 = tail call %struct.evp_cipher_st* @EVP_aes_128_cbc() #8
  %call3 = tail call %struct.evp_cipher_st* @EVP_CIPHER_meth_dup(%struct.evp_cipher_st* noundef %call2) #8
  %0 = bitcast %struct.evp_md_st* %call1 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3846, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.308, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = bitcast %struct.evp_cipher_st* %call3 to i8*
  %call5 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3846, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.536, i64 0, i64 0), i8* noundef %1) #8
  %tobool6.not = icmp ne i32 %call5, 0
  %spec.select = zext i1 %tobool6.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false, %entry
  %testresult.0 = phi i32 [ 0, %entry ], [ %spec.select, %lor.lhs.false ]
  tail call void @EVP_MD_meth_free(%struct.evp_md_st* noundef %call1) #8
  tail call void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef %call3) #8
  ret i32 %testresult.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cleanup_tests() local_unnamed_addr #1 {
entry:
  %0 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @nullprov, align 8, !tbaa !5
  %call = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %0) #8
  %1 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @deflprov, align 8, !tbaa !5
  %call1 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %1) #8
  %2 = load %struct.ossl_provider_st*, %struct.ossl_provider_st** @lgcyprov, align 8, !tbaa !5
  %call2 = tail call i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef %2) #8
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %3) #8
  ret void
}

declare dso_local i32 @OSSL_PROVIDER_unload(%struct.ossl_provider_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @test_skip(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #3

declare dso_local %struct.bio_method_st* @BIO_f_md() local_unnamed_addr #3

declare dso_local %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @load_example_rsa_key() unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @load_example_key(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([608 x i8], [608 x i8]* @kExampleRSAKeyDER, i64 0, i64 0), i64 noundef 608) #10
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @load_example_dsa_key() unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @load_example_key(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([446 x i8], [446 x i8]* @kExampleDSAKeyDER, i64 0, i64 0), i64 noundef 446) #10
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @load_example_hmac_key() unnamed_addr #1 {
entry:
  %key = alloca [32 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %0, i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @__const.load_example_hmac_key.key, i64 0, i64 0), i64 32, i1 false)
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = call %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i8* noundef null, i8* noundef nonnull %0, i64 noundef 32) #8
  %2 = bitcast %struct.evp_pkey_st* %call to i8*
  %call1 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 643, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call1, 0
  %.call = select i1 %tobool.not, %struct.evp_pkey_st* null, %struct.evp_pkey_st* %call
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #9
  ret %struct.evp_pkey_st* %.call
}

declare dso_local %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #3

declare dso_local i32 @EVP_DigestSignInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_write_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestVerifyInit(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestVerifyUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestVerifyFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @load_example_key(i8* noundef %keytype, i8* noundef %data, i64 noundef %data_len) unnamed_addr #1 {
entry:
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i64, align 8
  %pkey = alloca %struct.evp_pkey_st*, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !5
  store i64 %data_len, i64* %data_len.addr, align 8, !tbaa !9
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = call %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef nonnull %pkey, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0), i8* noundef null, i8* noundef %keytype, i32 noundef 0, %struct.ossl_lib_ctx_st* noundef %1, i8* noundef null) #8
  %call1 = call i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef %call, i8** noundef nonnull %data.addr, i64* noundef nonnull %data_len.addr) #8
  call void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef %call) #8
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret %struct.evp_pkey_st* %2
}

declare dso_local %struct.ossl_decoder_ctx_st* @OSSL_DECODER_CTX_new_for_pkey(%struct.evp_pkey_st** noundef, i8* noundef, i8* noundef, i8* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_DECODER_from_data(%struct.ossl_decoder_ctx_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_DECODER_CTX_free(%struct.ossl_decoder_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestFinalXOF(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_aes_256_cbc() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() local_unnamed_addr #3

declare dso_local i32 @EVP_SealInit(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, i8** noundef, i32* noundef, i8* noundef, %struct.evp_pkey_st** noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_SealFinal(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_OpenInit(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i8* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DecryptUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_OpenFinal(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @d2i_AutoPrivateKey(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @i2d_PKCS8PrivateKey_bio(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @PEM_write_bio_PKCS8PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @BIO_free_all(%struct.bio_st* noundef) local_unnamed_addr #3

declare dso_local %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO_bio(%struct.bio_st* noundef, %struct.pkcs8_priv_key_info_st** noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKCS82PKEY(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #3

declare dso_local i64 @ERR_peek_last_error() local_unnamed_addr #3

declare dso_local void @PKCS8_PRIV_KEY_INFO_free(%struct.pkcs8_priv_key_info_st* noundef) local_unnamed_addr #3

declare dso_local %struct.pkcs8_priv_key_info_st* @d2i_PKCS8_PRIV_KEY_INFO(%struct.pkcs8_priv_key_info_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set_group_name(%struct.evp_pkey_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set_ec_param_enc(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #3

declare dso_local i32 @evp_keymgmt_util_export(%struct.evp_pkey_st* noundef, i32 noundef, i32 (%struct.ossl_param_st*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @ec_export_get_encoding_cb(%struct.ossl_param_st* noundef %params, i8* nocapture noundef %arg) #1 {
entry:
  %enc_name = alloca i8*, align 8
  %0 = bitcast i8** %enc_name to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %enc_name, align 8, !tbaa !5
  %1 = bitcast i8* %arg to i32*
  store i32 -1, i32* %1, align 4, !tbaa !11
  %call = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %params, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i64 0, i64 0)) #8
  %2 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1451, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.171, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @OSSL_PARAM_get_utf8_string_ptr(%struct.ossl_param_st* noundef %call, i8** noundef nonnull %enc_name) #8
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1452, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.173, i64 0, i64 0), i32 noundef %conv) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false
  %3 = load i8*, i8** %enc_name, align 8, !tbaa !5
  %call7 = call i32 @strcasecmp(i8* noundef %3, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.169, i64 0, i64 0)) #11
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.inc, %for.cond.preheader
  %i.027.lcssa = phi i64 [ 0, %for.cond.preheader ], [ 1, %for.inc ]
  %encoding = getelementptr inbounds [2 x %struct.anon.7], [2 x %struct.anon.7]* @ec_encodings, i64 0, i64 %i.027.lcssa, i32 0
  %4 = load i32, i32* %encoding, align 16, !tbaa !17
  store i32 %4, i32* %1, align 4, !tbaa !11
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  %call7.1 = call i32 @strcasecmp(i8* noundef %3, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.170, i64 0, i64 0)) #11
  %cmp8.1 = icmp eq i32 %call7.1, 0
  br i1 %cmp8.1, label %if.then10, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %.pre = load i32, i32* %1, align 4, !tbaa !11
  br label %for.end

for.end:                                          ; preds = %for.inc.1, %if.then10
  %5 = phi i32 [ %.pre, %for.inc.1 ], [ %4, %if.then10 ]
  %cmp13 = icmp ne i32 %5, -1
  %conv14 = zext i1 %cmp13 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %for.end
  %retval.0 = phi i32 [ %conv14, %for.end ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_get_utf8_string_ptr(%struct.ossl_param_st* noundef, i8** noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

declare dso_local i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_CTX_set_pkey_ctx(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set1_id(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_encrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_encrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_decrypt_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_decrypt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MD_is_a(%struct.evp_md_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare dso_local %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare dso_local %struct.evp_pkey_st* @PEM_read_bio_PUBKEY_ex(%struct.bio_st* noundef, %struct.evp_pkey_st** noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_is_a(%struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_set_get_raw_keys_int(i32 noundef %tst, i32 noundef %pub, i32 noundef %uselibctx) unnamed_addr #1 {
entry:
  %buf = alloca [80 x i8], align 16
  %len = alloca i64, align 8
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #9
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i64 0, i64* %len, align 8, !tbaa !9
  %tobool.not = icmp eq i32 %pub, 0
  %cmp = icmp ugt i32 %tst, 3
  %2 = or i1 %cmp, %tobool.not
  br i1 %2, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 80) #8
  %idxprom23 = sext i32 %tst to i64
  %arrayidx24 = getelementptr inbounds [8 x %struct.keys_st], [8 x %struct.keys_st]* @keys, i64 0, i64 %idxprom23
  br i1 %tobool.not, label %if.else22, label %if.then3

if.then3:                                         ; preds = %if.end
  %pub6 = getelementptr inbounds [8 x %struct.keys_st], [8 x %struct.keys_st]* @keys, i64 0, i64 %idxprom23, i32 2
  %3 = load i8*, i8** %pub6, align 8, !tbaa !67
  %call7 = call i64 @strlen(i8* noundef %3) #11
  %tobool11.not = icmp eq i32 %uselibctx, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then3
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.keys_st, %struct.keys_st* %arrayidx24, i64 0, i32 0
  %5 = load i32, i32* %type, align 8, !tbaa !69
  %call15 = call i8* @OBJ_nid2sn(i32 noundef %5) #8
  %call16 = call %struct.evp_pkey_st* @EVP_PKEY_new_raw_public_key_ex(%struct.ossl_lib_ctx_st* noundef %4, i8* noundef %call15, i8* noundef null, i8* noundef %3, i64 noundef %call7) #8
  br label %if.end42

if.else:                                          ; preds = %if.then3
  %type19 = getelementptr inbounds %struct.keys_st, %struct.keys_st* %arrayidx24, i64 0, i32 0
  %6 = load i32, i32* %type19, align 8, !tbaa !69
  %call20 = call %struct.evp_pkey_st* @EVP_PKEY_new_raw_public_key(i32 noundef %6, %struct.engine_st* noundef null, i8* noundef %3, i64 noundef %call7) #8
  br label %if.end42

if.else22:                                        ; preds = %if.end
  %priv = getelementptr inbounds [8 x %struct.keys_st], [8 x %struct.keys_st]* @keys, i64 0, i64 %idxprom23, i32 1
  %7 = load i8*, i8** %priv, align 8, !tbaa !70
  %call25 = call i64 @strlen(i8* noundef %7) #11
  %tobool29.not = icmp eq i32 %uselibctx, 0
  br i1 %tobool29.not, label %if.else36, label %if.then30

if.then30:                                        ; preds = %if.else22
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %type33 = getelementptr inbounds %struct.keys_st, %struct.keys_st* %arrayidx24, i64 0, i32 0
  %9 = load i32, i32* %type33, align 8, !tbaa !69
  %call34 = call i8* @OBJ_nid2sn(i32 noundef %9) #8
  %call35 = call %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key_ex(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef %call34, i8* noundef null, i8* noundef %7, i64 noundef %call25) #8
  br label %if.end42

if.else36:                                        ; preds = %if.else22
  %type39 = getelementptr inbounds %struct.keys_st, %struct.keys_st* %arrayidx24, i64 0, i32 0
  %10 = load i32, i32* %type39, align 8, !tbaa !69
  %call40 = call %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key(i32 noundef %10, %struct.engine_st* noundef null, i8* noundef %7, i64 noundef %call25) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then30, %if.else36, %if.then12, %if.else
  %in.0 = phi i8* [ %3, %if.then12 ], [ %3, %if.else ], [ %7, %if.then30 ], [ %7, %if.else36 ]
  %inlen.0 = phi i64 [ %call7, %if.then12 ], [ %call7, %if.else ], [ %call25, %if.then30 ], [ %call25, %if.else36 ]
  %pkey.0 = phi %struct.evp_pkey_st* [ %call16, %if.then12 ], [ %call20, %if.else ], [ %call35, %if.then30 ], [ %call40, %if.else36 ]
  %11 = bitcast %struct.evp_pkey_st* %pkey.0 to i8*
  %call43 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1854, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %11) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %done, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end42
  %call45 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %pkey.0, %struct.evp_pkey_st* noundef %pkey.0) #8
  %call46 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1855, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.216, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call45, i32 noundef 1) #8
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %done, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  br i1 %tobool.not, label %land.lhs.true50, label %land.lhs.true57

land.lhs.true50:                                  ; preds = %lor.lhs.false48
  %call51 = call i32 @EVP_PKEY_get_raw_private_key(%struct.evp_pkey_st* noundef %pkey.0, i8* noundef null, i64* noundef nonnull %len) #8
  %cmp52 = icmp ne i32 %call51, 0
  %conv = zext i1 %cmp52 to i32
  %call53 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1856, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.217, i64 0, i64 0), i32 noundef %conv) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %done, label %lor.lhs.false63

land.lhs.true57:                                  ; preds = %lor.lhs.false48
  %call58 = call i32 @EVP_PKEY_get_raw_public_key(%struct.evp_pkey_st* noundef %pkey.0, i8* noundef null, i64* noundef nonnull %len) #8
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1857, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.218, i64 0, i64 0), i32 noundef %conv60) #8
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %done, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %land.lhs.true50, %land.lhs.true57
  %12 = load i64, i64* %len, align 8, !tbaa !9
  %cmp64 = icmp eq i64 %12, %inlen.0
  %conv65 = zext i1 %cmp64 to i32
  %call68 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1858, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.219, i64 0, i64 0), i32 noundef %conv65) #8
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %done, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false63
  br i1 %tobool.not, label %land.lhs.true72, label %land.lhs.true81

land.lhs.true72:                                  ; preds = %lor.lhs.false70
  %call74 = call i32 @EVP_PKEY_get_raw_private_key(%struct.evp_pkey_st* noundef %pkey.0, i8* noundef nonnull %0, i64* noundef nonnull %len) #8
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %call77 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1859, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.220, i64 0, i64 0), i32 noundef %conv76) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %done, label %lor.lhs.false88

land.lhs.true81:                                  ; preds = %lor.lhs.false70
  %call83 = call i32 @EVP_PKEY_get_raw_public_key(%struct.evp_pkey_st* noundef %pkey.0, i8* noundef nonnull %0, i64* noundef nonnull %len) #8
  %cmp84 = icmp ne i32 %call83, 0
  %conv85 = zext i1 %cmp84 to i32
  %call86 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1860, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.221, i64 0, i64 0), i32 noundef %conv85) #8
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %done, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %land.lhs.true72, %land.lhs.true81
  %13 = load i64, i64* %len, align 8, !tbaa !9
  %call90 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1861, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.222, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.223, i64 0, i64 0), i8* noundef %in.0, i64 noundef %inlen.0, i8* noundef nonnull %0, i64 noundef %13) #8
  %tobool91.not = icmp ne i32 %call90, 0
  %spec.select = zext i1 %tobool91.not to i32
  br label %done

done:                                             ; preds = %lor.lhs.false88, %if.end42, %lor.lhs.false, %land.lhs.true50, %land.lhs.true57, %lor.lhs.false63, %land.lhs.true72, %land.lhs.true81
  %ret.0 = phi i32 [ 0, %land.lhs.true81 ], [ 0, %land.lhs.true72 ], [ 0, %lor.lhs.false63 ], [ 0, %land.lhs.true57 ], [ 0, %land.lhs.true50 ], [ 0, %lor.lhs.false ], [ 0, %if.end42 ], [ %spec.select, %lor.lhs.false88 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %pkey.0) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %done
  %retval.0 = phi i32 [ %ret.0, %done ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new_raw_public_key_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new_raw_public_key(i32 noundef, %struct.engine_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new_raw_private_key(i32 noundef, %struct.engine_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_get_raw_private_key(%struct.evp_pkey_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_get_raw_public_key(%struct.evp_pkey_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_param_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef, %struct.engine_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_up_ref(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_aes_256_ecb() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_cmac_val(%struct.evp_pkey_st* noundef %pkey, i8* noundef %mac) unnamed_addr #1 {
entry:
  %msg = alloca [12 x i8], align 1
  %maclen = alloca i64, align 8
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %0 = getelementptr inbounds [12 x i8], [12 x i8]* %msg, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %0) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(12) %0, i8* noundef nonnull align 1 dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @__const.get_cmac_val.msg, i64 0, i64 0), i64 12, i1 false)
  %1 = bitcast i64* %maclen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = bitcast %struct.evp_md_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1967, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.252, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call2 = tail call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef %call, %struct.evp_pkey_ctx_st** noundef null, i8* noundef null, %struct.ossl_lib_ctx_st* noundef %3, i8* noundef null, %struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef null) #8
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1969, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.253, i64 0, i64 0), i32 noundef %conv) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = call i32 @EVP_DigestSignUpdate(%struct.evp_md_ctx_st* noundef %call, i8* noundef nonnull %0, i64 noundef 12) #8
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1970, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.254, i64 0, i64 0), i32 noundef %conv8) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false5
  %call12 = call i32 @EVP_DigestSignFinal(%struct.evp_md_ctx_st* noundef %call, i8* noundef %mac, i64* noundef nonnull %maclen) #8
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1971, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.255, i64 0, i64 0), i32 noundef %conv14) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %4 = load i64, i64* %maclen, align 8, !tbaa !9
  %call18 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1972, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.256, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.257, i64 0, i64 0), i64 noundef %4, i64 noundef 16) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false17, %lor.lhs.false11, %lor.lhs.false5, %lor.lhs.false, %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false17
  %ret.0 = phi i32 [ 1, %lor.lhs.false17 ], [ 0, %if.then ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %0) #9
  ret i32 %ret.0
}

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new_CMAC_key(%struct.engine_st* noundef, i8* noundef, i64 noundef, %struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_pkey_ctx_st** noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.evp_pkey_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_derive_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set_hkdf_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set1_hkdf_salt(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set1_hkdf_key(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_add1_hkdf_info(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_pubkey_st* @X509_PUBKEY_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_pubkey_st* @d2i_X509_PUBKEY(%struct.X509_pubkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @X509_PUBKEY_get0(%struct.X509_pubkey_st* noundef) local_unnamed_addr #3

declare dso_local void @X509_PUBKEY_free(%struct.X509_pubkey_st* noundef) local_unnamed_addr #3

declare dso_local %struct.X509_pubkey_st* @X509_PUBKEY_dup(%struct.X509_pubkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #3

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_EVP_PKEY_CTX_get_set_params(%struct.evp_pkey_st* noundef %pkey) unnamed_addr #1 {
entry:
  %ourparams = alloca [2 x %struct.ossl_param_st], align 16
  %md = alloca %struct.evp_md_st*, align 8
  %mdname = alloca [50 x i8], align 16
  %ssl3ms = alloca [48 x i8], align 16
  %tmp31 = alloca %struct.ossl_param_st, align 8
  %tmp38 = alloca %struct.ossl_param_st, align 8
  %tmp96 = alloca %struct.ossl_param_st, align 8
  %tmp99 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [2 x %struct.ossl_param_st]* %ourparams to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #9
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %ourparams, i64 0, i64 0
  %1 = bitcast %struct.evp_md_st** %md to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = getelementptr inbounds [50 x i8], [50 x i8]* %mdname, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %2) #9
  %3 = getelementptr inbounds [48 x i8], [48 x i8]* %ssl3ms, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #9
  %4 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef %4, %struct.evp_pkey_st* noundef %pkey, i8* noundef null) #8
  %5 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2212, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.296, i64 0, i64 0), i8* noundef %5) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %call3 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2213, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.297, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call %struct.ossl_param_st* @EVP_PKEY_CTX_settable_params(%struct.evp_pkey_ctx_st* noundef %call) #8
  %6 = bitcast %struct.ossl_param_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2220, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i64 0, i64 0), i8* noundef %6) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %call9 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i64 0, i64 0)) #8
  %7 = bitcast %struct.ossl_param_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2222, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.298, i64 0, i64 0), i8* noundef %7) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %lor.lhs.false8
  %call14 = tail call %struct.ossl_param_st* @EVP_PKEY_CTX_gettable_params(%struct.evp_pkey_ctx_st* noundef %call) #8
  %8 = bitcast %struct.ossl_param_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2226, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i64 0, i64 0), i8* noundef %8) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end13
  %call18 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call14, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.300, i64 0, i64 0)) #8
  %9 = bitcast %struct.ossl_param_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2228, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.299, i64 0, i64 0), i8* noundef %9) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = tail call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i64 0, i64 0)) #8
  %10 = bitcast %struct.ossl_param_st* %call22 to i8*
  %call23 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2230, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.298, i64 0, i64 0), i8* noundef %10) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false21
  %call28 = call i8* @strcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.301, i64 0, i64 0)) #8
  %incdec.ptr = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %ourparams, i64 0, i64 1
  %ourparams138 = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %ourparams, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %ourparams138, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 0) #8
  %11 = bitcast %struct.ossl_param_st* %tmp31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %11) #9
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp31) #8
  %12 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %11) #9
  %call33 = call i32 @EVP_PKEY_CTX_set_params(%struct.evp_pkey_ctx_st* noundef %call, %struct.ossl_param_st* noundef nonnull %arraydecay) #8
  %cmp = icmp ne i32 %call33, 0
  %conv = zext i1 %cmp to i32
  %call34 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2243, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.302, i64 0, i64 0), i32 noundef %conv) #8
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %if.end26
  store i8 0, i8* %2, align 16, !tbaa !71
  %13 = bitcast %struct.ossl_param_st* %tmp38 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #9
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp38, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.188, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 50) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %0, i8* noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #9
  %call41 = call i32 @EVP_PKEY_CTX_get_params(%struct.evp_pkey_ctx_st* noundef %call, %struct.ossl_param_st* noundef nonnull %arraydecay) #8
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2249, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.303, i64 0, i64 0), i32 noundef %conv43) #8
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end37
  %call48 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2250, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.304, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.305, i64 0, i64 0), i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.301, i64 0, i64 0)) #8
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %if.end51

if.end51:                                         ; preds = %lor.lhs.false46
  %call52 = call %struct.evp_md_st* @EVP_sha256() #8
  %call53 = call i32 @EVP_PKEY_CTX_set_signature_md(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_md_st* noundef %call52) #8
  %call54 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2257, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.306, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call53, i32 noundef 0) #8
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.end51
  %call57 = call i32 @EVP_PKEY_CTX_get_signature_md(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_md_st** noundef nonnull %md) #8
  %call58 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2258, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.307, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call57, i32 noundef 0) #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %14 = bitcast %struct.evp_md_st** %md to i8**
  %15 = load i8*, i8** %14, align 8, !tbaa !5
  %call61 = call %struct.evp_md_st* @EVP_sha256() #8
  %16 = bitcast %struct.evp_md_st* %call61 to i8*
  %call62 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2259, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.308, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.309, i64 0, i64 0), i8* noundef %15, i8* noundef %16) #8
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %if.end65

if.end65:                                         ; preds = %lor.lhs.false60
  %call66 = call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #8
  %17 = bitcast %struct.evp_md_ctx_st* %call66 to i8*
  %call67 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2266, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.252, i64 0, i64 0), i8* noundef %17) #8
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.end65
  %18 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call70 = call i32 @EVP_DigestSignInit_ex(%struct.evp_md_ctx_st* noundef %call66, %struct.evp_pkey_ctx_st** noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.311, i64 0, i64 0), %struct.ossl_lib_ctx_st* noundef %18, i8* noundef null, %struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef null) #8
  %cmp71 = icmp ne i32 %call70, 0
  %conv72 = zext i1 %cmp71 to i32
  %call73 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2268, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.310, i64 0, i64 0), i32 noundef %conv72) #8
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %err, label %if.end76

if.end76:                                         ; preds = %lor.lhs.false69
  %call77 = call %struct.ossl_param_st* @EVP_MD_CTX_settable_params(%struct.evp_md_ctx_st* noundef %call66) #8
  %19 = bitcast %struct.ossl_param_st* %call77 to i8*
  %call78 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2276, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.161, i64 0, i64 0), i8* noundef %19) #8
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %if.end76
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call77, i64 0, i32 0
  %20 = load i8*, i8** %key, align 8, !tbaa !72
  %call82 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.313, i64 0, i64 0)) #11
  %call83 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2277, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.312, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call82, i32 noundef 0) #8
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %lor.lhs.false80
  %key87 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %call77, i64 1, i32 0
  %21 = load i8*, i8** %key87, align 8, !tbaa !72
  %call88 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2279, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.314, i64 0, i64 0), i8* noundef %21) #8
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %err, label %if.end91

if.end91:                                         ; preds = %lor.lhs.false85
  %call94 = call i8* @memset(i8* noundef nonnull %3, i32 noundef 0, i64 noundef 48) #8
  %22 = bitcast %struct.ossl_param_st* %tmp96 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %22) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp96, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.313, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 48) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %0, i8* noundef nonnull align 8 dereferenceable(40) %22, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %22) #9
  %23 = bitcast %struct.ossl_param_st* %tmp99 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %23) #9
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp99) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %12, i8* noundef nonnull align 8 dereferenceable(40) %23, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %23) #9
  %call101 = call i32 @EVP_MD_CTX_set_params(%struct.evp_md_ctx_st* noundef %call66, %struct.ossl_param_st* noundef nonnull %arraydecay) #8
  %cmp102 = icmp ne i32 %call101, 0
  %conv103 = zext i1 %cmp102 to i32
  %call104 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2288, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.315, i64 0, i64 0), i32 noundef %conv103) #8
  %tobool105.not = icmp ne i32 %call104, 0
  %spec.select = zext i1 %tobool105.not to i32
  br label %err

err:                                              ; preds = %if.end91, %if.end76, %lor.lhs.false80, %lor.lhs.false85, %if.end65, %lor.lhs.false69, %if.end51, %lor.lhs.false56, %lor.lhs.false60, %if.end37, %lor.lhs.false46, %if.end26, %if.end13, %lor.lhs.false17, %lor.lhs.false21, %if.end, %lor.lhs.false8, %entry, %lor.lhs.false
  %mdctx.0 = phi %struct.evp_md_ctx_st* [ %call66, %lor.lhs.false85 ], [ %call66, %lor.lhs.false80 ], [ %call66, %if.end76 ], [ %call66, %lor.lhs.false69 ], [ %call66, %if.end65 ], [ null, %lor.lhs.false60 ], [ null, %lor.lhs.false56 ], [ null, %if.end51 ], [ null, %lor.lhs.false46 ], [ null, %if.end37 ], [ null, %if.end26 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %if.end13 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call66, %if.end91 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false85 ], [ 0, %lor.lhs.false80 ], [ 0, %if.end76 ], [ 0, %lor.lhs.false69 ], [ 0, %if.end65 ], [ 0, %lor.lhs.false60 ], [ 0, %lor.lhs.false56 ], [ 0, %if.end51 ], [ 0, %lor.lhs.false46 ], [ 0, %if.end37 ], [ 0, %if.end26 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %if.end13 ], [ 0, %lor.lhs.false8 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end91 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %mdctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #9
  ret i32 %ret.0
}

declare dso_local void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #3

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_sign_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_PKEY_CTX_settable_params(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_PKEY_CTX_gettable_params(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #7

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #3

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set_signature_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_get_signature_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st** noundef) local_unnamed_addr #3

declare dso_local %struct.ossl_param_st* @EVP_MD_CTX_settable_params(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare dso_local void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MD_CTX_set_params(%struct.evp_md_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_EVP_PKEY_ffc_priv_pub(i8* noundef %keytype) unnamed_addr #1 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #8
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 720, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.279, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #8
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 721, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.280, i64 0, i64 0), i8* noundef %1) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_new() #8
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 722, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.281, i64 0, i64 0), i8* noundef %2) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_new() #8
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 723, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.282, i64 0, i64 0), i8* noundef %3) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_new() #8
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 724, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.283, i64 0, i64 0), i8* noundef %4) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  %call17 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %5 = bitcast %struct.ossl_param_bld_st* %call17 to i8*
  %call18 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 728, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i64 0, i64 0), i8* noundef %5) #8
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end
  %call21 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), %struct.bignum_st* noundef %call) #8
  %cmp = icmp ne i32 %call21, 0
  %conv = zext i1 %cmp to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.284, i64 0, i64 0), i32 noundef %conv) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %call25 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.286, i64 0, i64 0), %struct.bignum_st* noundef %call2) #8
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 730, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.285, i64 0, i64 0), i32 noundef %conv27) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false24
  %call31 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.288, i64 0, i64 0), %struct.bignum_st* noundef %call6) #8
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.287, i64 0, i64 0), i32 noundef %conv33) #8
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %if.end37

if.end37:                                         ; preds = %lor.lhs.false30
  %call38 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call17) #8
  %6 = bitcast %struct.ossl_param_st* %call38 to i8*
  %call39 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 733, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.293, i64 0, i64 0), i8* noundef %6) #8
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %if.end42

if.end42:                                         ; preds = %if.end37
  %call43 = tail call fastcc i32 @test_fromdata(i8* noundef %keytype, %struct.ossl_param_st* noundef %call38) #10
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %if.end46

if.end46:                                         ; preds = %if.end42
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %call38) #8
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call17) #8
  %call47 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %7 = bitcast %struct.ossl_param_bld_st* %call47 to i8*
  %call48 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 743, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i64 0, i64 0), i8* noundef %7) #8
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.end46
  %call51 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call47, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), %struct.bignum_st* noundef %call) #8
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 744, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.284, i64 0, i64 0), i32 noundef %conv53) #8
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %err, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false50
  %call57 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call47, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.286, i64 0, i64 0), %struct.bignum_st* noundef %call2) #8
  %cmp58 = icmp ne i32 %call57, 0
  %conv59 = zext i1 %cmp58 to i32
  %call60 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 745, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.285, i64 0, i64 0), i32 noundef %conv59) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false56
  %call63 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call47, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.288, i64 0, i64 0), %struct.bignum_st* noundef %call6) #8
  %cmp64 = icmp ne i32 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %call66 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.287, i64 0, i64 0), i32 noundef %conv65) #8
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false62
  %call69 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call47, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.292, i64 0, i64 0), %struct.bignum_st* noundef %call14) #8
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 748, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.291, i64 0, i64 0), i32 noundef %conv71) #8
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end75

if.end75:                                         ; preds = %lor.lhs.false68
  %call76 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call47) #8
  %8 = bitcast %struct.ossl_param_st* %call76 to i8*
  %call77 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 750, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.293, i64 0, i64 0), i8* noundef %8) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %if.end80

if.end80:                                         ; preds = %if.end75
  %call81 = tail call fastcc i32 @test_fromdata(i8* noundef %keytype, %struct.ossl_param_st* noundef %call76) #10
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %if.end84

if.end84:                                         ; preds = %if.end80
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %call76) #8
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call47) #8
  %call85 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %9 = bitcast %struct.ossl_param_bld_st* %call85 to i8*
  %call86 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 760, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i64 0, i64 0), i8* noundef %9) #8
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %err, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %if.end84
  %call89 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call85, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), %struct.bignum_st* noundef %call) #8
  %cmp90 = icmp ne i32 %call89, 0
  %conv91 = zext i1 %cmp90 to i32
  %call92 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.284, i64 0, i64 0), i32 noundef %conv91) #8
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false88
  %call95 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call85, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.286, i64 0, i64 0), %struct.bignum_st* noundef %call2) #8
  %cmp96 = icmp ne i32 %call95, 0
  %conv97 = zext i1 %cmp96 to i32
  %call98 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 762, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.285, i64 0, i64 0), i32 noundef %conv97) #8
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %err, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false94
  %call101 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call85, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.288, i64 0, i64 0), %struct.bignum_st* noundef %call6) #8
  %cmp102 = icmp ne i32 %call101, 0
  %conv103 = zext i1 %cmp102 to i32
  %call104 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.287, i64 0, i64 0), i32 noundef %conv103) #8
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %err, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %lor.lhs.false100
  %call107 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call85, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %call10) #8
  %cmp108 = icmp ne i32 %call107, 0
  %conv109 = zext i1 %cmp108 to i32
  %call110 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.289, i64 0, i64 0), i32 noundef %conv109) #8
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %err, label %if.end113

if.end113:                                        ; preds = %lor.lhs.false106
  %call114 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call85) #8
  %10 = bitcast %struct.ossl_param_st* %call114 to i8*
  %call115 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 767, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.293, i64 0, i64 0), i8* noundef %10) #8
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %err, label %if.end118

if.end118:                                        ; preds = %if.end113
  %call119 = tail call fastcc i32 @test_fromdata(i8* noundef %keytype, %struct.ossl_param_st* noundef %call114) #10
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %err, label %if.end122

if.end122:                                        ; preds = %if.end118
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %call114) #8
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call85) #8
  %call123 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %11 = bitcast %struct.ossl_param_bld_st* %call123 to i8*
  %call124 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 777, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.278, i64 0, i64 0), i8* noundef %11) #8
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %err, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %if.end122
  %call127 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call123, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), %struct.bignum_st* noundef %call) #8
  %cmp128 = icmp ne i32 %call127, 0
  %conv129 = zext i1 %cmp128 to i32
  %call130 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 778, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.284, i64 0, i64 0), i32 noundef %conv129) #8
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %err, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false126
  %call133 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call123, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.286, i64 0, i64 0), %struct.bignum_st* noundef %call2) #8
  %cmp134 = icmp ne i32 %call133, 0
  %conv135 = zext i1 %cmp134 to i32
  %call136 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.285, i64 0, i64 0), i32 noundef %conv135) #8
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %err, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %lor.lhs.false132
  %call139 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call123, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.288, i64 0, i64 0), %struct.bignum_st* noundef %call6) #8
  %cmp140 = icmp ne i32 %call139, 0
  %conv141 = zext i1 %cmp140 to i32
  %call142 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.287, i64 0, i64 0), i32 noundef %conv141) #8
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %err, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false138
  %call145 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call123, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %call10) #8
  %cmp146 = icmp ne i32 %call145, 0
  %conv147 = zext i1 %cmp146 to i32
  %call148 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.289, i64 0, i64 0), i32 noundef %conv147) #8
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %err, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false144
  %call151 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call123, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.292, i64 0, i64 0), %struct.bignum_st* noundef %call14) #8
  %cmp152 = icmp ne i32 %call151, 0
  %conv153 = zext i1 %cmp152 to i32
  %call154 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 784, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.291, i64 0, i64 0), i32 noundef %conv153) #8
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %err, label %if.end157

if.end157:                                        ; preds = %lor.lhs.false150
  %call158 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call123) #8
  %12 = bitcast %struct.ossl_param_st* %call158 to i8*
  %call159 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 786, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.293, i64 0, i64 0), i8* noundef %12) #8
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %err, label %if.end162

if.end162:                                        ; preds = %if.end157
  %call163 = tail call fastcc i32 @test_fromdata(i8* noundef %keytype, %struct.ossl_param_st* noundef %call158) #10
  %tobool164.not = icmp ne i32 %call163, 0
  %spec.select = zext i1 %tobool164.not to i32
  br label %err

err:                                              ; preds = %if.end162, %if.end157, %if.end122, %lor.lhs.false126, %lor.lhs.false132, %lor.lhs.false138, %lor.lhs.false144, %lor.lhs.false150, %if.end118, %if.end113, %if.end84, %lor.lhs.false88, %lor.lhs.false94, %lor.lhs.false100, %lor.lhs.false106, %if.end80, %if.end75, %if.end46, %lor.lhs.false50, %lor.lhs.false56, %lor.lhs.false62, %lor.lhs.false68, %if.end42, %if.end37, %if.end, %lor.lhs.false20, %lor.lhs.false24, %lor.lhs.false30, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13
  %bld.0 = phi %struct.ossl_param_bld_st* [ %call123, %if.end157 ], [ %call123, %lor.lhs.false150 ], [ %call123, %lor.lhs.false144 ], [ %call123, %lor.lhs.false138 ], [ %call123, %lor.lhs.false132 ], [ %call123, %lor.lhs.false126 ], [ %call123, %if.end122 ], [ %call85, %if.end118 ], [ %call85, %if.end113 ], [ %call85, %lor.lhs.false106 ], [ %call85, %lor.lhs.false100 ], [ %call85, %lor.lhs.false94 ], [ %call85, %lor.lhs.false88 ], [ %call85, %if.end84 ], [ %call47, %if.end80 ], [ %call47, %if.end75 ], [ %call47, %lor.lhs.false68 ], [ %call47, %lor.lhs.false62 ], [ %call47, %lor.lhs.false56 ], [ %call47, %lor.lhs.false50 ], [ %call47, %if.end46 ], [ %call17, %if.end42 ], [ %call17, %if.end37 ], [ %call17, %lor.lhs.false30 ], [ %call17, %lor.lhs.false24 ], [ %call17, %lor.lhs.false20 ], [ %call17, %if.end ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call123, %if.end162 ]
  %params.0 = phi %struct.ossl_param_st* [ %call158, %if.end157 ], [ null, %lor.lhs.false150 ], [ null, %lor.lhs.false144 ], [ null, %lor.lhs.false138 ], [ null, %lor.lhs.false132 ], [ null, %lor.lhs.false126 ], [ null, %if.end122 ], [ %call114, %if.end118 ], [ %call114, %if.end113 ], [ null, %lor.lhs.false106 ], [ null, %lor.lhs.false100 ], [ null, %lor.lhs.false94 ], [ null, %lor.lhs.false88 ], [ null, %if.end84 ], [ %call76, %if.end80 ], [ %call76, %if.end75 ], [ null, %lor.lhs.false68 ], [ null, %lor.lhs.false62 ], [ null, %lor.lhs.false56 ], [ null, %lor.lhs.false50 ], [ null, %if.end46 ], [ %call38, %if.end42 ], [ %call38, %if.end37 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false20 ], [ null, %if.end ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call158, %if.end162 ]
  %q.0 = phi %struct.bignum_st* [ %call2, %if.end157 ], [ %call2, %lor.lhs.false150 ], [ %call2, %lor.lhs.false144 ], [ %call2, %lor.lhs.false138 ], [ %call2, %lor.lhs.false132 ], [ %call2, %lor.lhs.false126 ], [ %call2, %if.end122 ], [ %call2, %if.end118 ], [ %call2, %if.end113 ], [ %call2, %lor.lhs.false106 ], [ %call2, %lor.lhs.false100 ], [ %call2, %lor.lhs.false94 ], [ %call2, %lor.lhs.false88 ], [ %call2, %if.end84 ], [ %call2, %if.end80 ], [ %call2, %if.end75 ], [ %call2, %lor.lhs.false68 ], [ %call2, %lor.lhs.false62 ], [ %call2, %lor.lhs.false56 ], [ %call2, %lor.lhs.false50 ], [ %call2, %if.end46 ], [ %call2, %if.end42 ], [ %call2, %if.end37 ], [ %call2, %lor.lhs.false30 ], [ %call2, %lor.lhs.false24 ], [ %call2, %lor.lhs.false20 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %if.end162 ]
  %g.0 = phi %struct.bignum_st* [ %call6, %if.end157 ], [ %call6, %lor.lhs.false150 ], [ %call6, %lor.lhs.false144 ], [ %call6, %lor.lhs.false138 ], [ %call6, %lor.lhs.false132 ], [ %call6, %lor.lhs.false126 ], [ %call6, %if.end122 ], [ %call6, %if.end118 ], [ %call6, %if.end113 ], [ %call6, %lor.lhs.false106 ], [ %call6, %lor.lhs.false100 ], [ %call6, %lor.lhs.false94 ], [ %call6, %lor.lhs.false88 ], [ %call6, %if.end84 ], [ %call6, %if.end80 ], [ %call6, %if.end75 ], [ %call6, %lor.lhs.false68 ], [ %call6, %lor.lhs.false62 ], [ %call6, %lor.lhs.false56 ], [ %call6, %lor.lhs.false50 ], [ %call6, %if.end46 ], [ %call6, %if.end42 ], [ %call6, %if.end37 ], [ %call6, %lor.lhs.false30 ], [ %call6, %lor.lhs.false24 ], [ %call6, %lor.lhs.false20 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %if.end162 ]
  %pub.0 = phi %struct.bignum_st* [ %call10, %if.end157 ], [ %call10, %lor.lhs.false150 ], [ %call10, %lor.lhs.false144 ], [ %call10, %lor.lhs.false138 ], [ %call10, %lor.lhs.false132 ], [ %call10, %lor.lhs.false126 ], [ %call10, %if.end122 ], [ %call10, %if.end118 ], [ %call10, %if.end113 ], [ %call10, %lor.lhs.false106 ], [ %call10, %lor.lhs.false100 ], [ %call10, %lor.lhs.false94 ], [ %call10, %lor.lhs.false88 ], [ %call10, %if.end84 ], [ %call10, %if.end80 ], [ %call10, %if.end75 ], [ %call10, %lor.lhs.false68 ], [ %call10, %lor.lhs.false62 ], [ %call10, %lor.lhs.false56 ], [ %call10, %lor.lhs.false50 ], [ %call10, %if.end46 ], [ %call10, %if.end42 ], [ %call10, %if.end37 ], [ %call10, %lor.lhs.false30 ], [ %call10, %lor.lhs.false24 ], [ %call10, %lor.lhs.false20 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call10, %if.end162 ]
  %priv.0 = phi %struct.bignum_st* [ %call14, %if.end157 ], [ %call14, %lor.lhs.false150 ], [ %call14, %lor.lhs.false144 ], [ %call14, %lor.lhs.false138 ], [ %call14, %lor.lhs.false132 ], [ %call14, %lor.lhs.false126 ], [ %call14, %if.end122 ], [ %call14, %if.end118 ], [ %call14, %if.end113 ], [ %call14, %lor.lhs.false106 ], [ %call14, %lor.lhs.false100 ], [ %call14, %lor.lhs.false94 ], [ %call14, %lor.lhs.false88 ], [ %call14, %if.end84 ], [ %call14, %if.end80 ], [ %call14, %if.end75 ], [ %call14, %lor.lhs.false68 ], [ %call14, %lor.lhs.false62 ], [ %call14, %lor.lhs.false56 ], [ %call14, %lor.lhs.false50 ], [ %call14, %if.end46 ], [ %call14, %if.end42 ], [ %call14, %if.end37 ], [ %call14, %lor.lhs.false30 ], [ %call14, %lor.lhs.false24 ], [ %call14, %lor.lhs.false20 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call14, %if.end162 ]
  %ret.0 = phi i32 [ 0, %if.end157 ], [ 0, %lor.lhs.false150 ], [ 0, %lor.lhs.false144 ], [ 0, %lor.lhs.false138 ], [ 0, %lor.lhs.false132 ], [ 0, %lor.lhs.false126 ], [ 0, %if.end122 ], [ 0, %if.end118 ], [ 0, %if.end113 ], [ 0, %lor.lhs.false106 ], [ 0, %lor.lhs.false100 ], [ 0, %lor.lhs.false94 ], [ 0, %lor.lhs.false88 ], [ 0, %if.end84 ], [ 0, %if.end80 ], [ 0, %if.end75 ], [ 0, %lor.lhs.false68 ], [ 0, %lor.lhs.false62 ], [ 0, %lor.lhs.false56 ], [ 0, %lor.lhs.false50 ], [ 0, %if.end46 ], [ 0, %if.end42 ], [ 0, %if.end37 ], [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false20 ], [ 0, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %if.end162 ]
  tail call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params.0) #8
  tail call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %bld.0) #8
  tail call void @BN_free(%struct.bignum_st* noundef %call) #8
  tail call void @BN_free(%struct.bignum_st* noundef %q.0) #8
  tail call void @BN_free(%struct.bignum_st* noundef %g.0) #8
  tail call void @BN_free(%struct.bignum_st* noundef %pub.0) #8
  tail call void @BN_free(%struct.bignum_st* noundef %priv.0) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_fromdata(i8* noundef %keytype, %struct.ossl_param_st* noundef %params) unnamed_addr #1 {
entry:
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  %1 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** @testctx, align 8, !tbaa !5
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef %1, i8* noundef %keytype, i8* noundef null) #8
  %2 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 685, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.316, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %call3 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 687, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.294, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call5 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %pkey, i32 noundef 135, %struct.ossl_param_st* noundef %params) #8
  %call6 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 689, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.295, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i64 0, i64 0), i32 noundef %call5, i32 noundef 0) #8
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  %3 = bitcast %struct.evp_pkey_st** %pkey to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !5
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 692, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), i8* noundef %4) #8
  %tobool11.not = icmp ne i32 %call10, 0
  %spec.select = zext i1 %tobool11.not to i32
  br label %err

err:                                              ; preds = %if.end9, %if.end, %lor.lhs.false, %entry
  %testresult.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end9 ]
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !5
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %5) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %testresult.0
}

declare dso_local i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_EncryptFinal(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DecryptInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DecryptFinal(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.dh_st* @DH_new() local_unnamed_addr #3

declare dso_local i32 @DH_set0_pqg(%struct.dh_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @DH_set0_key(%struct.dh_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local %struct.dh_st* @DH_get_2048_256() local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_set1_DH(%struct.evp_pkey_st* noundef, %struct.dh_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef, i8* noundef, %struct.bignum_st** noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare dso_local i32 @test_size_t_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @DH_free(%struct.dh_st* noundef) local_unnamed_addr #3

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local %struct.ec_key_st* @EC_KEY_new_by_curve_name(i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EC_KEY_set_private_key(%struct.ec_key_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_assign(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new(%struct.evp_pkey_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_rand_st* @EVP_RAND_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_rand_ctx_st* @EVP_RAND_CTX_new(%struct.evp_rand_st* noundef, %struct.evp_rand_ctx_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_RAND_free(%struct.evp_rand_st* noundef) local_unnamed_addr #3

declare dso_local void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_RAND_CTX_set_params(%struct.evp_rand_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_RAND_generate(%struct.evp_rand_ctx_st* noundef, i8* noundef, i64 noundef, i32 noundef, i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local void @EVP_RAND_CTX_free(%struct.evp_rand_ctx_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_cbc() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_ofb() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_cfb128() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_gcm() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_ccm() local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_aes_128_ocb() local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_get_original_iv(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_get_updated_iv(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_get_iv_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_keygen_bits(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_pss_keygen_md(%struct.evp_pkey_ctx_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local i32 @i2d_PublicKey(%struct.evp_pkey_st* noundef, i8** noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @test_int_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_st* @d2i_PublicKey(i32 noundef, %struct.evp_pkey_st** noundef, i8** noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_MD_names_do_all(%struct.evp_md_st* noundef, void (i8*, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @md_names(i8* nocapture noundef readnone %name, i8* noundef %vctx) #1 {
entry:
  %0 = bitcast i8* %vctx to %struct.ossl_lib_ctx_st*
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_fetch(%struct.ossl_lib_ctx_st* noundef %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.432, i64 0, i64 0), i8* noundef null) #8
  %1 = bitcast %struct.evp_cipher_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3059, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.433, i64 0, i64 0), i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* @success, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @EVP_CIPHER_free(%struct.evp_cipher_st* noundef %call) #8
  ret void
}

declare dso_local i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef, %struct.evp_cipher_st* noundef, %struct.engine_st* noundef, i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_init_seq_set_iv(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.EVP_INIT_TEST_st* nocapture noundef readonly %t) unnamed_addr #1 {
entry:
  %ivlen = getelementptr inbounds %struct.EVP_INIT_TEST_st, %struct.EVP_INIT_TEST_st* %t, i64 0, i32 6
  %0 = load i64, i64* %ivlen, align 8, !tbaa !74
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %conv = trunc i64 %0 to i32
  %call = tail call i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef 9, i32 noundef %conv, i8* noundef null) #8
  %cmp2 = icmp ne i32 %call, 0
  %conv3 = zext i1 %cmp2 to i32
  %call4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3168, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.463, i64 0, i64 0), i32 noundef %conv3) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.then, %entry
  %iv = getelementptr inbounds %struct.EVP_INIT_TEST_st, %struct.EVP_INIT_TEST_st* %t, i64 0, i32 2
  %1 = load i8*, i8** %iv, align 8, !tbaa !75
  %call7 = tail call i32 @EVP_CipherInit_ex(%struct.evp_cipher_ctx_st* noundef %ctx, %struct.evp_cipher_st* noundef null, %struct.engine_st* noundef null, i8* noundef null, i8* noundef %1, i32 noundef -1) #8
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 noundef 3171, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.464, i64 0, i64 0), i32 noundef %conv9) #8
  %tobool11.not = icmp ne i32 %call10, 0
  %spec.select = zext i1 %tobool11.not to i32
  br label %err

err:                                              ; preds = %if.end6, %if.then
  %res.0 = phi i32 [ 0, %if.then ], [ %spec.select, %if.end6 ]
  ret i32 %res.0
}

declare dso_local i32 @EVP_CipherUpdate(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(%struct.evp_cipher_ctx_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_CipherFinal_ex(%struct.evp_cipher_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare dso_local i32 @test_mem_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @load_example_ec_key() unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @load_example_key(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* noundef getelementptr inbounds ([121 x i8], [121 x i8]* @kExampleECKeyDER, i64 0, i64 0), i64 noundef 121) #10
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @load_example_ed25519_key() unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @load_example_key(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.245, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @kExampleED25519KeyDER, i64 0, i64 0), i64 noundef 48) #10
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @load_example_dh_key() unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @load_example_key(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.343, i64 0, i64 0), i8* noundef getelementptr inbounds ([293 x i8], [293 x i8]* @kExampleDHKeyDER, i64 0, i64 0), i64 noundef 293) #10
  ret %struct.evp_pkey_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.evp_pkey_st* @load_example_x25519_key() unnamed_addr #1 {
entry:
  %call = tail call fastcc %struct.evp_pkey_st* @load_example_key(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.535, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @kExampleX25519KeyDER, i64 0, i64 0), i64 noundef 48) #10
  ret %struct.evp_pkey_st* %call
}

declare dso_local i32 @evp_pkey_copy_downgraded(%struct.evp_pkey_st** noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_pkey_method_st* @EVP_PKEY_meth_find(i32 noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_get0_info(i32* noundef, i32* noundef, %struct.evp_pkey_method_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_set_digestsign(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @custom_pmeth_digestsign(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sig, i64* noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #1 {
entry:
  %pdigestsign = alloca i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, align 8
  %0 = bitcast i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)** %pdigestsign to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @orig_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_get_digestsign(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)** noundef nonnull %pdigestsign) #8
  %2 = load i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)** %pdigestsign, align 8, !tbaa !5
  %call = call i32 %2(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sig, i64* noundef %siglen, i8* noundef %tbs, i64 noundef %tbslen) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %call
}

declare dso_local void @EVP_PKEY_meth_set_derive(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @custom_pmeth_derive(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %key, i64* noundef %keylen) #1 {
entry:
  %pderive = alloca i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, align 8
  %0 = bitcast i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** %pderive to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @orig_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_get_derive(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** noundef nonnull %pderive) #8
  %2 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** %pderive, align 8, !tbaa !5
  %call = call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %key, i64* noundef %keylen) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %call
}

declare dso_local void @EVP_PKEY_meth_set_sign(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @custom_pmeth_sign(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %outlen, i8* noundef %in, i64 noundef %inlen) #1 {
entry:
  %psign = alloca i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, align 8
  %0 = bitcast i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %psign to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @orig_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_get_sign(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef null, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef nonnull %psign) #8
  %2 = load i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** %psign, align 8, !tbaa !5
  %call = call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx, i8* noundef %out, i64* noundef %outlen, i8* noundef %in, i64 noundef %inlen) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %call
}

declare dso_local void @EVP_PKEY_meth_set_init(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @custom_pmeth_init(%struct.evp_pkey_ctx_st* noundef %ctx) #1 {
entry:
  %pinit = alloca i32 (%struct.evp_pkey_ctx_st*)*, align 8
  %0 = bitcast i32 (%struct.evp_pkey_ctx_st*)** %pinit to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @orig_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_get_init(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*)** noundef nonnull %pinit) #8
  %2 = load i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)** %pinit, align 8, !tbaa !5
  %call = call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %call
}

declare dso_local void @EVP_PKEY_meth_set_cleanup(%struct.evp_pkey_method_st* noundef, void (%struct.evp_pkey_ctx_st*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @custom_pmeth_cleanup(%struct.evp_pkey_ctx_st* noundef %ctx) #1 {
entry:
  %pcleanup = alloca void (%struct.evp_pkey_ctx_st*)*, align 8
  %0 = bitcast void (%struct.evp_pkey_ctx_st*)** %pcleanup to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @orig_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_get_cleanup(%struct.evp_pkey_method_st* noundef %1, void (%struct.evp_pkey_ctx_st*)** noundef nonnull %pcleanup) #8
  %2 = load void (%struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)** %pcleanup, align 8, !tbaa !5
  call void %2(%struct.evp_pkey_ctx_st* noundef %ctx) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret void
}

declare dso_local void @EVP_PKEY_meth_set_copy(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @custom_pmeth_copy(%struct.evp_pkey_ctx_st* noundef %dst, %struct.evp_pkey_ctx_st* noundef %src) #1 {
entry:
  %pcopy = alloca i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, align 8
  %0 = bitcast i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)** %pcopy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @orig_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_get_copy(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)** noundef nonnull %pcopy) #8
  %2 = load i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)** %pcopy, align 8, !tbaa !5
  %call = call i32 %2(%struct.evp_pkey_ctx_st* noundef %dst, %struct.evp_pkey_ctx_st* noundef %src) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %call
}

declare dso_local void @EVP_PKEY_meth_set_ctrl(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)* noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @custom_pmeth_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %p1, i8* noundef %p2) #1 {
entry:
  %pctrl = alloca i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, align 8
  %0 = bitcast i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** %pctrl to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  %1 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** @orig_pmeth, align 8, !tbaa !5
  call void @EVP_PKEY_meth_get_ctrl(%struct.evp_pkey_method_st* noundef %1, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** noundef nonnull %pctrl, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** noundef null) #8
  %cmp = icmp eq i32 %type, 9999
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* @ctrl_called, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** %pctrl, align 8, !tbaa !5
  %call = call i32 %2(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %p1, i8* noundef %p2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %call, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare dso_local i32 @EVP_PKEY_derive_set_peer(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_DigestSign(%struct.evp_md_ctx_st* noundef, i8* noundef, i64* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @EVP_PKEY_meth_remove(%struct.evp_pkey_method_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_free(%struct.evp_pkey_method_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_get_digestsign(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)** noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_get_derive(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)** noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)** noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_get_sign(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)** noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)** noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_get_init(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*)** noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_get_cleanup(%struct.evp_pkey_method_st* noundef, void (%struct.evp_pkey_ctx_st*)** noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_get_copy(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)** noundef) local_unnamed_addr #3

declare dso_local void @EVP_PKEY_meth_get_ctrl(%struct.evp_pkey_method_st* noundef, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)** noundef, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)** noundef) local_unnamed_addr #3

declare dso_local %struct.evp_md_st* @EVP_MD_meth_dup(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local %struct.evp_cipher_st* @EVP_CIPHER_meth_dup(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_MD_meth_free(%struct.evp_md_st* noundef) local_unnamed_addr #3

declare dso_local void @EVP_CIPHER_meth_free(%struct.evp_cipher_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!14, !6, i64 0}
!14 = !{!"APK_DATA_st", !6, i64 0, !10, i64 8, !6, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40}
!15 = !{!14, !10, i64 8}
!16 = !{!14, !12, i64 24}
!17 = !{!18, !12, i64 0}
!18 = !{!"", !12, i64 0, !6, i64 8}
!19 = !{i64 0, i64 8, !5, i64 8, i64 4, !11, i64 16, i64 8, !5, i64 24, i64 8, !9, i64 32, i64 8, !9}
!20 = !{!14, !12, i64 28}
!21 = !{!14, !12, i64 32}
!22 = !{!14, !12, i64 36}
!23 = !{!14, !6, i64 16}
!24 = !{!25, !6, i64 136}
!25 = !{!"evp_pkey_ctx_st", !12, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !26, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !12, i64 112, !12, i64 116, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !12, i64 160, !6, i64 168}
!26 = !{!"", !6, i64 0, !6, i64 8, !10, i64 16, !12, i64 24}
!27 = !{!28, !6, i64 0}
!28 = !{!"ec_der_pub_keys_st", !6, i64 0, !10, i64 8, !12, i64 16}
!29 = !{!28, !10, i64 8}
!30 = distinct !{!30, !4}
!31 = !{!32, !6, i64 0}
!32 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !12, i64 80, !12, i64 84, !12, i64 88}
!33 = !{!32, !12, i64 84}
!34 = !{!32, !6, i64 8}
!35 = !{!32, !12, i64 88}
!36 = !{!32, !6, i64 24}
!37 = !{!32, !10, i64 56}
!38 = !{!32, !6, i64 40}
!39 = !{!32, !10, i64 72}
!40 = !{!32, !6, i64 32}
!41 = !{!32, !10, i64 64}
!42 = !{!43, !12, i64 32}
!43 = !{!"", !6, i64 0, !6, i64 8, !10, i64 16, !10, i64 24, !12, i64 32}
!44 = !{!43, !6, i64 0}
!45 = !{!43, !10, i64 16}
!46 = !{!43, !6, i64 8}
!47 = !{!43, !10, i64 24}
!48 = !{!49, !10, i64 48}
!49 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!50 = !{!49, !6, i64 0}
!51 = !{!49, !6, i64 16}
!52 = !{!49, !10, i64 64}
!53 = !{!49, !6, i64 32}
!54 = !{!49, !10, i64 56}
!55 = !{!49, !6, i64 8}
!56 = !{!49, !6, i64 24}
!57 = !{!49, !10, i64 72}
!58 = !{!49, !6, i64 40}
!59 = !{!60, !6, i64 0}
!60 = !{!"", !6, i64 0, !12, i64 8}
!61 = !{!60, !12, i64 8}
!62 = !{!63, !6, i64 96}
!63 = !{!"evp_pkey_st", !12, i64 0, !12, i64 4, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !6, i64 56, !6, i64 64, !12, i64 72, !12, i64 76, !64, i64 80, !6, i64 96, !6, i64 104, !10, i64 112, !6, i64 120, !10, i64 128, !65, i64 136}
!64 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!65 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8}
!66 = !{!63, !12, i64 0}
!67 = !{!68, !6, i64 16}
!68 = !{!"keys_st", !12, i64 0, !6, i64 8, !6, i64 16}
!69 = !{!68, !12, i64 0}
!70 = !{!68, !6, i64 8}
!71 = !{!7, !7, i64 0}
!72 = !{!73, !6, i64 0}
!73 = !{!"ossl_param_st", !6, i64 0, !12, i64 8, !6, i64 16, !10, i64 24, !10, i64 32}
!74 = !{!32, !10, i64 48}
!75 = !{!32, !6, i64 16}
