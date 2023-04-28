; ModuleID = 'test/evp_pkey_provided_test.c'
source_filename = "test/evp_pkey_provided_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.bio_st = type opaque
%struct.bignum_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type opaque
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_md_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.5 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.ossl_param_bld_st = type opaque
%struct.ec_group_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bio_method_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.6 }
%union.anon.6 = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.asn1_pctx_st = type opaque
%struct.ossl_encoder_ctx_st = type opaque

@.str = private unnamed_addr constant [30 x i8] c"test/evp_pkey_provided_test.c\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error parsing test options\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"datadir = test_get_argument(0)\00", align 1
@datadir = internal unnamed_addr global i8* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"test_evp_pkey_ctx_dup_kdf_fail\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"test_evp_pkey_get_bn_param_large\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"test_fromdata_rsa\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"test_fromdata_dh_fips186_4\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"test_fromdata_dh_named_group\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"test_check_dsa\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"test_fromdata_dsa_fips186_4\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"test_fromdata_ecx\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"test_fromdata_ec\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"test_ec_dup_no_operation\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"test_ec_dup_keygen_operation\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"params = do_construct_hkdf_params(\22sha256\22, \22secret\22, 6, \22salt\22)\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"pctx = EVP_PKEY_CTX_new_from_name(NULL, \22HKDF\22, NULL)\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"HKDF\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_derive_init_ex(pctx, params)\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"EVP_PKEY_derive(pctx, NULL, &len)\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"SHA256_DIGEST_LENGTH\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"dctx = EVP_PKEY_CTX_dup(pctx)\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"EXTRACT_ONLY\00", align 1
@test_evp_pkey_get_bn_param_large.n_data = internal global [2050 x i8] zeroinitializer, align 16
@test_evp_pkey_get_bn_param_large.e_data = internal constant [3 x i8] c"\01\00\01", align 1
@test_evp_pkey_get_bn_param_large.d_data = internal constant [4 x i8] c"\993\13{", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"bld = OSSL_PARAM_BLD_new()\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"n = BN_bin2bn(n_data, sizeof(n_data), NULL)\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"e = BN_bin2bn(e_data, sizeof(e_data), NULL)\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"d = BN_bin2bn(d_data, sizeof(d_data), NULL)\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_N, n)\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_E, e)\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.38 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_RSA_D, d)\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"fromdata_params = OSSL_PARAM_BLD_to_param(bld)\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"ctx = EVP_PKEY_CTX_new_from_name(NULL, \22RSA\22, NULL)\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_fromdata_init(ctx)\00", align 1
@.str.44 = private unnamed_addr constant [63 x i8] c"EVP_PKEY_fromdata(ctx, &pk, EVP_PKEY_KEYPAIR, fromdata_params)\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"key_ctx = EVP_PKEY_CTX_new_from_pkey(NULL, pk, \22\22)\00", align 1
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_RSA_N, &n_out)\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"n_out\00", align 1
@test_fromdata_rsa.key_numbers = internal global [8 x i64] [i64 3161751493, i64 65537, i64 2064855961, i64 59747, i64 52919, i64 34201, i64 48519, i64 52283], align 16
@.str.49 = private unnamed_addr constant [12 x i8] c"rsa-factor1\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"rsa-factor2\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"rsa-exponent1\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"rsa-exponent2\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"rsa-coefficient1\00", align 1
@__const.test_fromdata_rsa.fromdata_params = private unnamed_addr constant [9 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i32 2, i8* bitcast ([8 x i64]* @test_fromdata_rsa.key_numbers to i8*), i64 8, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i32 2, i8* getelementptr (i8, i8* bitcast ([8 x i64]* @test_fromdata_rsa.key_numbers to i8*), i64 8), i64 8, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i32 2, i8* getelementptr (i8, i8* bitcast ([8 x i64]* @test_fromdata_rsa.key_numbers to i8*), i64 16), i64 8, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32 2, i8* getelementptr (i8, i8* bitcast ([8 x i64]* @test_fromdata_rsa.key_numbers to i8*), i64 24), i64 8, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i32 2, i8* getelementptr (i8, i8* bitcast ([8 x i64]* @test_fromdata_rsa.key_numbers to i8*), i64 32), i64 8, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i32 0, i32 0), i32 2, i8* getelementptr (i8, i8* bitcast ([8 x i64]* @test_fromdata_rsa.key_numbers to i8*), i64 40), i64 8, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i32 2, i8* getelementptr (i8, i8* bitcast ([8 x i64]* @test_fromdata_rsa.key_numbers to i8*), i64 48), i64 8, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0), i32 2, i8* getelementptr (i8, i8* bitcast ([8 x i64]* @test_fromdata_rsa.key_numbers to i8*), i64 56), i64 8, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.54 = private unnamed_addr constant [22 x i8] c"EVP_PKEY_get_bits(pk)\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"EVP_PKEY_get_security_bits(pk)\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"EVP_PKEY_get_size(pk)\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_missing_parameters(pk)\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"EVP_PKEY_check(key_ctx)\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"EVP_PKEY_public_check(key_ctx)\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_private_check(key_ctx)\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"EVP_PKEY_pairwise_check(key_ctx)\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"copy_pk = EVP_PKEY_new()\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"EVP_PKEY_copy_parameters(copy_pk, pk)\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"dup_pk = EVP_PKEY_dup(pk)\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"EVP_PKEY_eq(pk, dup_pk)\00", align 1
@.str.69 = private unnamed_addr constant [37 x i8] c"BN_set_word(bn_from, key_numbers[i])\00", align 1
@.str.70 = private unnamed_addr constant [55 x i8] c"EVP_PKEY_get_bn_param(pk, fromdata_params[i].key, &bn)\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"bn\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"bn_from\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"membio\00", align 1
@.str.74 = private unnamed_addr constant [97 x i8] c"PEM_write_bio_PrivateKey(bio_out, pk, EVP_aes_256_cbc(), (unsigned char *)\22pass\22, 4, NULL, NULL)\00", align 1
@bio_out = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.75 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"EVP_PKEY_print_private(membio, pk, 0, NULL)\00", align 1
@.str.77 = private unnamed_addr constant [42 x i8] c"compare_with_file(alg, PRIV_TEXT, membio)\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"PEM_write_bio_PUBKEY(membio, pk)\00", align 1
@.str.79 = private unnamed_addr constant [40 x i8] c"compare_with_file(alg, PUB_PEM, membio)\00", align 1
@.str.80 = private unnamed_addr constant [64 x i8] c"PEM_write_bio_PrivateKey(membio, pk, NULL, NULL, 0, NULL, NULL)\00", align 1
@.str.81 = private unnamed_addr constant [41 x i8] c"compare_with_file(alg, PRIV_PEM, membio)\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"priv.txt\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"priv.pem\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"priv.der\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"pub.txt\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"pub.pem\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"pub.der\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"Invalid file type\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"fullfile\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.93 = private unnamed_addr constant [48 x i8] c"BIO_read_ex(file, buf, sizeof(buf), &readbytes)\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"BIO_eof(file)\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"readbytes\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"sizeof(buf)\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"memdata\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"PrivateKeyInfo\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.104 = private unnamed_addr constant [21 x i8] c"SubjectPublicKeyInfo\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"Invalid encoding type\00", align 1
@.str.106 = private unnamed_addr constant [50 x i8] c"Setting up a OSSL_ENCODER context with passphrase\00", align 1
@.str.107 = private unnamed_addr constant [88 x i8] c"ctx = OSSL_ENCODER_CTX_new_for_pkey(pk, selection, output_type, output_structure, NULL)\00", align 1
@.str.108 = private unnamed_addr constant [39 x i8] c"OSSL_ENCODER_CTX_get_num_encoders(ctx)\00", align 1
@.str.109 = private unnamed_addr constant [27 x i8] c"Testing with no encryption\00", align 1
@.str.110 = private unnamed_addr constant [33 x i8] c"OSSL_ENCODER_to_bio(ctx, membio)\00", align 1
@.str.111 = private unnamed_addr constant [37 x i8] c"compare_with_file(alg, type, membio)\00", align 1
@.str.112 = private unnamed_addr constant [65 x i8] c"OSSL_ENCODER_CTX_set_passphrase(ctx, (unsigned char *)\22pass\22, 4)\00", align 1
@.str.113 = private unnamed_addr constant [42 x i8] c"Displaying PEM encrypted with AES-256-CBC\00", align 1
@.str.114 = private unnamed_addr constant [54 x i8] c"OSSL_ENCODER_CTX_set_cipher(ctx, \22AES-256-CBC\22, NULL)\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"AES-256-CBC\00", align 1
@.str.116 = private unnamed_addr constant [34 x i8] c"OSSL_ENCODER_to_bio(ctx, bio_out)\00", align 1
@.str.117 = private unnamed_addr constant [48 x i8] c"NOT Displaying PEM encrypted with (invalid) FOO\00", align 1
@.str.118 = private unnamed_addr constant [46 x i8] c"OSSL_ENCODER_CTX_set_cipher(ctx, \22FOO\22, NULL)\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"FOO\00", align 1
@.str.120 = private unnamed_addr constant [48 x i8] c"Testing with encryption cleared (no encryption)\00", align 1
@.str.121 = private unnamed_addr constant [45 x i8] c"OSSL_ENCODER_CTX_set_cipher(ctx, NULL, NULL)\00", align 1
@test_fromdata_dh_fips186_4.priv_data = internal constant [28 x i8] c"\88\85\E7\9F\EEm\C5|x\AFc]8*\D0\EDVKG!+\FAU\FA\87\E8\A9{", align 16
@test_fromdata_dh_fips186_4.pub_data = internal constant [256 x i8] c"\D6-w\E0\D3}\F8\EB\98P\A1\82\22e\D5\D9\FE\C9?\BE\16\83\BD3\E9\C6\93\CF\08\AF\83\FA\80\8Ald\DFpd\D5\0A|Zr\DAf\E6\F9\F51!\92\B0`\1A\B5\D3\F0\A5\FAH\95.8\D9\C5\E6\DA\FBl\03\9DKi\B7\95\E4\\\C0\93OH\D9~\06\22\B2\DE\F3y$\ED\E1\D1JW\F1@\86pB%\C5'h\C9\FA\E5\8Eb~\FFIl[\B5\BA\F9\EF\9A\1A\10\D4\81S\CF\83\04\18\1C\E1\DB\E1e\A9\7F\E13\EB\C3O\E3\B7\22\F7\1C\09O\ED\C6\07\8Ex\05\8F|\96\D9\12\E0\81t\1A\E9\13\C0 \82e\BBB;\ED\08j\84O\EAw\142\F9\ED\C2\12\D6\C5\C6\B3\E5\F2n\F6\16\7F7\DE\BC\09\C7\06k\12\BC\AD-I%\D5\DC\F4\18\14\D2\F0\F1\1D\1F:\AA\15U\BB\0D\7F\BEg\A1\A7\F0\AA\B3\FBA\829I\93\BC\A8\EEr\13Ee\15B\17\AA\D8\AB\CF3B\83B", align 16
@test_fromdata_dh_fips186_4.group_name = internal constant [10 x i8] c"ffdhe2048\00", align 1
@.str.122 = private unnamed_addr constant [50 x i8] c"pub = BN_bin2bn(pub_data, sizeof(pub_data), NULL)\00", align 1
@.str.123 = private unnamed_addr constant [53 x i8] c"priv = BN_bin2bn(priv_data, sizeof(priv_data), NULL)\00", align 1
@.str.124 = private unnamed_addr constant [80 x i8] c"OSSL_PARAM_BLD_push_utf8_string(bld, OSSL_PKEY_PARAM_GROUP_NAME, group_name, 0)\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.126 = private unnamed_addr constant [69 x i8] c"OSSL_PARAM_BLD_push_long(bld, OSSL_PKEY_PARAM_DH_PRIV_LEN, priv_len)\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"priv_len\00", align 1
@.str.128 = private unnamed_addr constant [58 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_PUB_KEY, pub)\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.130 = private unnamed_addr constant [60 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_PRIV_KEY, priv)\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.132 = private unnamed_addr constant [51 x i8] c"ctx = EVP_PKEY_CTX_new_from_name(NULL, \22DH\22, NULL)\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"2048\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"112\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"256\00", align 1
@.str.137 = private unnamed_addr constant [97 x i8] c"EVP_PKEY_get_utf8_string_param(pk, OSSL_PKEY_PARAM_GROUP_NAME, name_out, sizeof(name_out), &len)\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"name_out\00", align 1
@.str.139 = private unnamed_addr constant [11 x i8] c"group_name\00", align 1
@.str.140 = private unnamed_addr constant [61 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_PUB_KEY, &pub_out)\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"pub_out\00", align 1
@.str.142 = private unnamed_addr constant [63 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_PRIV_KEY, &priv_out)\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"priv_out\00", align 1
@.str.144 = private unnamed_addr constant [53 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_P, &p)\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.146 = private unnamed_addr constant [25 x i8] c"&ossl_bignum_ffdhe2048_p\00", align 1
@ossl_bignum_ffdhe2048_p = external dso_local constant %struct.bignum_st, align 1
@.str.147 = private unnamed_addr constant [53 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_Q, &q)\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.149 = private unnamed_addr constant [53 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_G, &g)\00", align 1
@.str.150 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.151 = private unnamed_addr constant [21 x i8] c"&ossl_bignum_const_2\00", align 1
@ossl_bignum_const_2 = external dso_local constant %struct.bignum_st, align 1
@.str.152 = private unnamed_addr constant [60 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_COFACTOR, &j)\00", align 1
@.str.153 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.154 = private unnamed_addr constant [96 x i8] c"EVP_PKEY_get_octet_string_param(pk, OSSL_PKEY_PARAM_FFC_SEED, seed_out, sizeof(seed_out), &len)\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.156 = private unnamed_addr constant [64 x i8] c"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_GINDEX, &gindex)\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"gindex\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.159 = private unnamed_addr constant [59 x i8] c"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_H, &hindex)\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"hindex\00", align 1
@.str.161 = private unnamed_addr constant [68 x i8] c"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_PCOUNTER, &pcounter)\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"pcounter\00", align 1
@test_fromdata_dh_named_group.priv_data = internal constant [28 x i8] c"\88\85\E7\9F\EEm\C5|x\AFc]8*\D0\EDVKG!+\FAU\FA\87\E8\A9{", align 16
@test_fromdata_dh_named_group.pub_data = internal constant [257 x i8] c"\00\D6-w\E0\D3}\F8\EB\98P\A1\82\22e\D5\D9\FE\C9?\BE\16\83\BD3\E9\C6\93\CF\08\AF\83\FA\80\8Ald\DFpd\D5\0A|Zr\DAf\E6\F9\F51!\92\B0`\1A\B5\D3\F0\A5\FAH\95.8\D9\C5\E6\DA\FBl\03\9DKi\B7\95\E4\\\C0\93OH\D9~\06\22\B2\DE\F3y$\ED\E1\D1JW\F1@\86pB%\C5'h\C9\FA\E5\8Eb~\FFIl[\B5\BA\F9\EF\9A\1A\10\D4\81S\CF\83\04\18\1C\E1\DB\E1e\A9\7F\E13\EB\C3O\E3\B7\22\F7\1C\09O\ED\C6\07\8Ex\05\8F|\96\D9\12\E0\81t\1A\E9\13\C0 \82e\BBB;\ED\08j\84O\EAw\142\F9\ED\C2\12\D6\C5\C6\B3\E5\F2n\F6\16\7F7\DE\BC\09\C7\06k\12\BC\AD-I%\D5\DC\F4\18\14\D2\F0\F1\1D\1F:\AA\15U\BB\0D\7F\BEg\A1\A7\F0\AA\B3\FBA\829I\93\BC\A8\EEr\13Ee\15B\17\AA\D8\AB\CF3B\83B", align 16
@test_fromdata_dh_named_group.group_name = internal constant [10 x i8] c"ffdhe2048\00", align 1
@.str.163 = private unnamed_addr constant [93 x i8] c"EVP_PKEY_get_utf8_string_param(pk, OSSL_PKEY_PARAM_GROUP_NAME, NULL, sizeof(name_out), &len)\00", align 1
@.str.164 = private unnamed_addr constant [23 x i8] c"sizeof(group_name) - 1\00", align 1
@.str.165 = private unnamed_addr constant [99 x i8] c"EVP_PKEY_get_utf8_string_param(pk, OSSL_PKEY_PARAM_GROUP_NAME, name_out, sizeof(group_name), &len)\00", align 1
@.str.166 = private unnamed_addr constant [103 x i8] c"EVP_PKEY_get_utf8_string_param(pk, OSSL_PKEY_PARAM_GROUP_NAME, name_out, sizeof(group_name) - 1, &len)\00", align 1
@.str.167 = private unnamed_addr constant [103 x i8] c"EVP_PKEY_get_utf8_string_param(pk, OSSL_PKEY_PARAM_GROUP_NAME, name_out, sizeof(group_name) - 2, &len)\00", align 1
@.str.168 = private unnamed_addr constant [52 x i8] c"ctx = EVP_PKEY_CTX_new_from_name(NULL, \22DSA\22, NULL)\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.170 = private unnamed_addr constant [20 x i8] c"EVP_PKEY_check(ctx)\00", align 1
@.str.171 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_public_check(ctx)\00", align 1
@.str.172 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_private_check(ctx)\00", align 1
@.str.173 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_pairwise_check(ctx)\00", align 1
@test_fromdata_dsa_fips186_4.p_data = internal constant [257 x i8] c"\00\A0\B7\02\C4\AC\A6B\AB\F24\0B\22G\1F3\CF\D5\04\E4>\EC\A1!\C8A+\EF\B8\1F\0B[\88\8Bg\F8hm|M\96_<f\EFX4\D7\F6\A2\1B\AD\C8\12R\B8\E8*c\CC\EA\E7N\C84LXY\0A\C2J\E4\B4d \F4\F6\0A\CF\86\01l\7F#JQ\07\99B(z\FF\18gRd\F2\9Ab0\C3\00\DE#\E9\11\95~\D1=\8D\B4\0E\9F\9E\B10\03\F0s\A8@HB{`\A0\C4\F2;-\0A\0C\B8\19\FB\B4\F8\E0*\C7\F1\C0\C6\86\14`\12\0F\C0\DEJg\EC\C7\DEv!\1AU\7F\86\C3\97\98\CE\F5\CD\F0\E7\12\D6\93\EE\1B\9Ba\EF\05\8CEF\D9do\BE'\AAg\01\CCq\B1`\CE!\D8Q\17'\0D\90=\18|\87\15\8EHLl\C5r\EB\B7V\F5k`\8F\C2\FD?F\\\00\91\85yE[\1C\82\C4\87Py\BA\CC\1C2~.\B8.\C5N\D1\9B\DBfy|\FE\AFj\05", align 16
@test_fromdata_dsa_fips186_4.q_data = internal constant [32 x i8] c"\A8\CD\F43{\13\0A$\C1\DEJ\04{KqQ2\E9Gt\BD\0C!@\84\12\0A\17s\DB)\C7", align 16
@test_fromdata_dsa_fips186_4.g_data = internal constant [256 x i8] c"l\C6\A4>a\84\C1\FFoJ\1Ak\B0$K\D2\92[)\\a\B8\C9+\D6\F7Y\FD\D8pfw\FC\C1\A4\D4\B0\1E\D5\BFY\98\B3f\8B\F4.\E6\12>\CC\F8\02\B8\C6\C3G\D2\F5\AA\0C_Q\F5\D0LU=\07s\A6W\CEZ\ADB\0C\13\0F\E21%\8Er\12s\10\DB\7Fy\EBY\FC\FE\F7\0C\1A\81S\96\22\B8\E7X\D8g\80`\AD\8BU\1C\91\F0r\9A~\AD7\F1w\18\96\8Ahp\FCq\A9\A2\E85'x\F2\EFY6m|\B6\98\D8\1E\FA%s\97EX\E3\AE\BDRT\05\D8&&\BA\BA\05\B5\E9\E5v\AE%\DD\FC\10\89Z\A9\EEY\C5y\8B\EB\1E,a\AB\0D\D1\10\04\912wJ\A6dS\DAL\D7:)\D4\F3\82%\1DoJ\7F\D3\08;B0\10\D8\D0\97:\EB\92c\EC\93+o2\D8\CD\80\D3\C0L\03\D5\CA\BC\8F\C7CSdf\1C\82-\FB\FF9\BA\D6Bb\02o\966", align 16
@test_fromdata_dsa_fips186_4.seed_data = internal constant [32 x i8] c"dF\072\8Dp\9C\B3\8A5\DEb\00\F2mR7M\B3\84\E1\9DA\04\DA{\DC\0D\8B^\E0\84", align 16
@test_fromdata_dsa_fips186_4.priv_data = internal constant [33 x i8] c"\00\8F\C5\9E\D0\F7*\0Bf\F12s\AE\F6\D9\D4\DB-\96U\89\FF\EF\A8_G\8F\CA\02\8A\E15\90", align 16
@test_fromdata_dsa_fips186_4.pub_data = internal constant [256 x i8] c"D\19\C9FEW\C1\A9\D80\99)jKcqi\965\17\B2b\9B\80\0A\95\9Dj\C02\0D\07_\19D\02\F1\BD\CE\DF\10\F8\02]}\98\8As\89\00\B6$\D63\E7\CF\8BI*\AF\13\1C\B2R\15\FD\9B\D5@J\1A\DA)L\92~f\06\DBa\86\AC\B5\DA<}s~T2h\A5\02\BCYG\84\D3\87q_\EBCE$\D3\EC\08R\C2\89-\9C\1A\CC\91e]\A3\A151\10\1C:\A8M\18\D5\06\AF\B2\EC\\\89\9E\90\86\10\01\EBQ\D5\1B\9C\CBf\07?\C4n\0A\1Bs\A0K_M\AB5(\FA\DA:\0C\08\E8\F3\EFBg\BC!\F2\C2\B8\FF\1A\81\05hsb\DF\D7\AB\0F\22\89W\96\D4\93\AF\A1!\A3H\E9\F0\97G\A0'\BA\87\B8\15_\FF,PA\F1~\C6\81\C4Q\F1\FD\D6\86\F7i\97\F1I\C9\F9\F4\9B\F4\E8\85\A7\BD6UJ=\E8e\09{\B7\12d\D2\0AS`H\D1\8A\BD", align 16
@.str.174 = private unnamed_addr constant [44 x i8] c"p = BN_bin2bn(p_data, sizeof(p_data), NULL)\00", align 1
@.str.175 = private unnamed_addr constant [44 x i8] c"q = BN_bin2bn(q_data, sizeof(q_data), NULL)\00", align 1
@.str.176 = private unnamed_addr constant [44 x i8] c"g = BN_bin2bn(g_data, sizeof(g_data), NULL)\00", align 1
@.str.177 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_P, p)\00", align 1
@.str.178 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_Q, q)\00", align 1
@.str.179 = private unnamed_addr constant [54 x i8] c"OSSL_PARAM_BLD_push_BN(bld, OSSL_PKEY_PARAM_FFC_G, g)\00", align 1
@.str.180 = private unnamed_addr constant [94 x i8] c"OSSL_PARAM_BLD_push_octet_string(bld, OSSL_PKEY_PARAM_FFC_SEED, seed_data, sizeof(seed_data))\00", align 1
@.str.181 = private unnamed_addr constant [65 x i8] c"OSSL_PARAM_BLD_push_int(bld, OSSL_PKEY_PARAM_FFC_GINDEX, gindex)\00", align 1
@.str.182 = private unnamed_addr constant [69 x i8] c"OSSL_PARAM_BLD_push_int(bld, OSSL_PKEY_PARAM_FFC_PCOUNTER, pcounter)\00", align 1
@.str.183 = private unnamed_addr constant [29 x i8] c"2 + 2 * (3 + sizeof(q_data))\00", align 1
@.str.184 = private unnamed_addr constant [57 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_P, &p_out)\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"p_out\00", align 1
@.str.186 = private unnamed_addr constant [57 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_Q, &q_out)\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"q_out\00", align 1
@.str.188 = private unnamed_addr constant [57 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_G, &g_out)\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"g_out\00", align 1
@.str.190 = private unnamed_addr constant [64 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_FFC_COFACTOR, &j_out)\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"j_out\00", align 1
@.str.192 = private unnamed_addr constant [68 x i8] c"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_GINDEX, &gindex_out)\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"gindex_out\00", align 1
@.str.194 = private unnamed_addr constant [63 x i8] c"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_H, &hindex_out)\00", align 1
@.str.195 = private unnamed_addr constant [11 x i8] c"hindex_out\00", align 1
@.str.196 = private unnamed_addr constant [72 x i8] c"EVP_PKEY_get_int_param(pk, OSSL_PKEY_PARAM_FFC_PCOUNTER, &pcounter_out)\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"pcounter_out\00", align 1
@test_fromdata_ecx.key_numbers = internal global <{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }> <{ [2 x <{ [32 x i8], [25 x i8] }>] [<{ [32 x i8], [25 x i8] }> <{ [32 x i8] c"w\07m\0As\18\A5}<\16\C1rQ\B2fE\DFL/\87\EB\C0\99*\B1w\FB\A5\1D\B9,*", [25 x i8] zeroinitializer }>, <{ [32 x i8], [25 x i8] }> <{ [32 x i8] c"\85 \F0\09\890\A7Tt\8B}\DC\B4>\F7Z\0D\BF:\0D&8\1A\F4\EB\A4\A9\8E\AA\9BNj", [25 x i8] zeroinitializer }>], [2 x [57 x i8]] [[57 x i8] c"\9A\8FI%\D1Q\9FWu\CFF\B0KX\00\D4\EE\9E\E8\BA\E8\BCUe\D4\98\C2\8D\D9\C9\BA\F5t\A9A\97D\89s\91\00c\82\A6\F1'\AB\1D\9A\C2\D8\C0\A5\98rk\00", [57 x i8] c"\9B\08\F7\CC1\B7\E3\E6}\22\D5\AE\A1!\07J';\D2\B8=\E0\9Cc\FA\A7=,\22\C5\D9\BB\C86drA\D9S\D4\0C[\12\DA\88\12\0DS\17\7F\80\E52\C4\1F\A0\00"], [2 x <{ [32 x i8], [25 x i8] }>] [<{ [32 x i8], [25 x i8] }> <{ [32 x i8] c"\9Da\B1\9D\EF\FDZ`\BA\84J\F4\92\EC,\C4DI\C5i{2i\19p;\AC\03\1C\AE\7F`", [25 x i8] zeroinitializer }>, <{ [32 x i8], [25 x i8] }> <{ [32 x i8] c"\D7Z\98\01\82\B1\0A\B7\D5K\FE\D3\C9d\07:\0E\E1r\F3\DA\A6#%\AF\02\1Ah\F7\07Q\1A", [25 x i8] zeroinitializer }>], [2 x [57 x i8]] [[57 x i8] c"l\82\A5b\CB\80\8D\10\D62\BE\89\C8Q>\BFl\92\9F4\DD\FA\8C\9Fc\C9\96\0E\F6\E3H\A3R\8C\8A?\CC/\04N9\A3\FC[\94I/\8F\03.uI\A2\00\98\F9[", [57 x i8] c"_\D7D\9BY\B4a\FD,\E7\87\ECaj\D4j\1D\A14$\85\A7\0E\1F\8A\0E\A7]\80\E9gx\ED\F1$v\9BF\C7\06\1B\D6x=\F1\E5\0Fl\D1\FA\1A\BE\AF\E8%a\80"] }>, align 16
@__const.test_fromdata_ecx.x25519_fromdata_params = private unnamed_addr constant [3 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), i32 5, i8* getelementptr inbounds (<{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>, <{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>* @test_fromdata_ecx.key_numbers, i32 0, i32 0, i32 0, i32 0, i32 0), i64 32, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i32 5, i8* getelementptr (<{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>, <{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>* @test_fromdata_ecx.key_numbers, i32 0, i32 0, i32 0, i32 0, i64 57), i64 32, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@__const.test_fromdata_ecx.x448_fromdata_params = private unnamed_addr constant [3 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), i32 5, i8* getelementptr (<{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>, <{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>* @test_fromdata_ecx.key_numbers, i32 0, i32 0, i32 0, i32 0, i64 114), i64 56, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i32 5, i8* getelementptr (<{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>, <{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>* @test_fromdata_ecx.key_numbers, i32 0, i32 0, i32 0, i32 0, i64 171), i64 56, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@__const.test_fromdata_ecx.ed25519_fromdata_params = private unnamed_addr constant [3 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), i32 5, i8* getelementptr (<{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>, <{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>* @test_fromdata_ecx.key_numbers, i32 0, i32 0, i32 0, i32 0, i64 228), i64 32, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i32 5, i8* getelementptr (<{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>, <{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>* @test_fromdata_ecx.key_numbers, i32 0, i32 0, i32 0, i32 0, i64 285), i64 32, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@__const.test_fromdata_ecx.ed448_fromdata_params = private unnamed_addr constant [3 x %struct.ossl_param_st] [%struct.ossl_param_st { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i32 0, i32 0), i32 5, i8* getelementptr (<{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>, <{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>* @test_fromdata_ecx.key_numbers, i32 0, i32 0, i32 0, i32 0, i64 342), i64 57, i64 -1 }, %struct.ossl_param_st { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i32 5, i8* getelementptr (<{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>, <{ [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]], [2 x <{ [32 x i8], [25 x i8] }>], [2 x [57 x i8]] }>* @test_fromdata_ecx.key_numbers, i32 0, i32 0, i32 0, i32 0, i64 399), i64 57, i64 -1 }, %struct.ossl_param_st zeroinitializer], align 16
@.str.198 = private unnamed_addr constant [7 x i8] c"X25519\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"X448\00", align 1
@.str.200 = private unnamed_addr constant [8 x i8] c"ED25519\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"ED448\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.204 = private unnamed_addr constant [14 x i8] c"security_bits\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.206 = private unnamed_addr constant [50 x i8] c"ctx2 = EVP_PKEY_CTX_new_from_pkey(NULL, pk, NULL)\00", align 1
@.str.207 = private unnamed_addr constant [21 x i8] c"EVP_PKEY_check(ctx2)\00", align 1
@.str.208 = private unnamed_addr constant [107 x i8] c"EVP_PKEY_get_octet_string_param( pk, orig_fromdata_params[PRIV_KEY].key, out_priv, sizeof(out_priv), &len)\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"out_priv\00", align 1
@.str.210 = private unnamed_addr constant [36 x i8] c"orig_fromdata_params[PRIV_KEY].data\00", align 1
@.str.211 = private unnamed_addr constant [104 x i8] c"EVP_PKEY_get_octet_string_param( pk, orig_fromdata_params[PUB_KEY].key, out_pub, sizeof(out_pub), &len)\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"out_pub\00", align 1
@.str.213 = private unnamed_addr constant [35 x i8] c"orig_fromdata_params[PUB_KEY].data\00", align 1
@.str.214 = private unnamed_addr constant [28 x i8] c"EVP_PKEY_public_check(ctx2)\00", align 1
@.str.215 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_private_check(ctx2)\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"prime256v1\00", align 1
@test_fromdata_ec.ec_pub_keydata = internal constant [65 x i8] c"\04\1B\93gU\1CU\9Fc\D1\22\A4\D8\D1\0A`m\02\A5wW\C8\A3Gs:j\08(9\BD\C9\D2\80\EC\E9\A7\08)q/\C9V\82\EE\9A\85\0Fm\7FY_\8C\D1\96\0B\DF)>I\07\88?\9A)", align 16
@test_fromdata_ec.ec_priv_keydata = internal constant [32 x i8] c"3\D0C\83\A9\89V\03\D2\D7\FEk\01o\E4Y\CC\0D\9A$l\86\1B.\DCKM5C\E1\1B\AD", align 16
@.str.218 = private unnamed_addr constant [71 x i8] c"ec_priv_bn = BN_bin2bn(ec_priv_keydata, sizeof(ec_priv_keydata), NULL)\00", align 1
@.str.219 = private unnamed_addr constant [4 x i8] c"128\00", align 1
@.str.220 = private unnamed_addr constant [11 x i8] c"2 + 35 * 2\00", align 1
@.str.221 = private unnamed_addr constant [40 x i8] c"gettable = EVP_PKEY_gettable_params(pk)\00", align 1
@.str.222 = private unnamed_addr constant [62 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_GROUP_NAME)\00", align 1
@.str.223 = private unnamed_addr constant [59 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_PUB_KEY)\00", align 1
@.str.224 = private unnamed_addr constant [60 x i8] c"OSSL_PARAM_locate_const(gettable, OSSL_PKEY_PARAM_PRIV_KEY)\00", align 1
@.str.225 = private unnamed_addr constant [54 x i8] c"group = EC_GROUP_new_by_curve_name(OBJ_sn2nid(curve))\00", align 1
@.str.226 = private unnamed_addr constant [19 x i8] c"group_p = BN_new()\00", align 1
@.str.227 = private unnamed_addr constant [19 x i8] c"group_a = BN_new()\00", align 1
@.str.228 = private unnamed_addr constant [19 x i8] c"group_b = BN_new()\00", align 1
@.str.229 = private unnamed_addr constant [59 x i8] c"EC_GROUP_get_curve(group, group_p, group_a, group_b, NULL)\00", align 1
@.str.230 = private unnamed_addr constant [52 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_EC_A, &a)\00", align 1
@.str.231 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.232 = private unnamed_addr constant [52 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_EC_B, &b)\00", align 1
@.str.233 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.234 = private unnamed_addr constant [52 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_EC_P, &p)\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"group_p\00", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c"group_a\00", align 1
@.str.237 = private unnamed_addr constant [8 x i8] c"group_b\00", align 1
@.str.238 = private unnamed_addr constant [15 x i8] c"out_curve_name\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.240 = private unnamed_addr constant [48 x i8] c"out_pub[0] == (POINT_CONVERSION_COMPRESSED + 1)\00", align 1
@.str.241 = private unnamed_addr constant [12 x i8] c"out_pub + 1\00", align 1
@.str.242 = private unnamed_addr constant [19 x i8] c"ec_pub_keydata + 1\00", align 1
@.str.243 = private unnamed_addr constant [62 x i8] c"EVP_PKEY_get_bn_param(pk, OSSL_PKEY_PARAM_PRIV_KEY, &bn_priv)\00", align 1
@.str.244 = private unnamed_addr constant [11 x i8] c"ec_priv_bn\00", align 1
@.str.245 = private unnamed_addr constant [8 x i8] c"bn_priv\00", align 1
@.str.246 = private unnamed_addr constant [46 x i8] c"pctx = EVP_PKEY_CTX_new_id(EVP_PKEY_EC, NULL)\00", align 1
@.str.247 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_paramgen_init(pctx)\00", align 1
@.str.248 = private unnamed_addr constant [67 x i8] c"EVP_PKEY_CTX_set_ec_paramgen_curve_nid(pctx, NID_X9_62_prime256v1)\00", align 1
@.str.249 = private unnamed_addr constant [32 x i8] c"EVP_PKEY_paramgen(pctx, &param)\00", align 1
@.str.250 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.251 = private unnamed_addr constant [52 x i8] c"ctx = EVP_PKEY_CTX_new_from_pkey(NULL, param, NULL)\00", align 1
@.str.252 = private unnamed_addr constant [29 x i8] c"kctx = EVP_PKEY_CTX_dup(ctx)\00", align 1
@.str.253 = private unnamed_addr constant [27 x i8] c"EVP_PKEY_keygen_init(kctx)\00", align 1
@.str.254 = private unnamed_addr constant [29 x i8] c"EVP_PKEY_keygen(kctx, &pkey)\00", align 1
@.str.255 = private unnamed_addr constant [26 x i8] c"EVP_PKEY_keygen_init(ctx)\00", align 1
@switch.table.compare_with_file = private unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0)], align 8
@switch.table.test_print_key_type_using_encoder = private unnamed_addr constant [6 x i8*] [i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.102, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.104, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.104, i64 0, i64 0)], align 8
@switch.table.test_print_key_type_using_encoder.256 = private unnamed_addr constant [6 x i32] [i32 7, i32 7, i32 7, i32 6, i32 6, i32 6], align 4
@switch.table.test_print_key_type_using_encoder.257 = private unnamed_addr constant [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @test_skip_common_options() #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1675, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)) #8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @test_get_argument(i64 noundef 0) #8
  store i8* %call1, i8** @datadir, align 8, !tbaa !3
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1679, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call1) #8
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  tail call void @add_test(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_evp_pkey_ctx_dup_kdf_fail) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_evp_pkey_get_bn_param_large) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_fromdata_rsa) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_fromdata_dh_fips186_4) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_fromdata_dh_named_group) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_check_dsa) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 ()* noundef nonnull @test_fromdata_dsa_fips186_4) #8
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 (i32)* noundef nonnull @test_fromdata_ecx, i32 noundef 12, i32 noundef 1) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 ()* noundef nonnull @test_fromdata_ec) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 ()* noundef nonnull @test_ec_dup_no_operation) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 ()* noundef nonnull @test_ec_dup_keygen_operation) #8
  br label %return

return:                                           ; preds = %if.end, %if.end5, %if.then
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare dso_local i32 @test_skip_common_options() local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i8* @test_get_argument(i64 noundef) local_unnamed_addr #1

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_evp_pkey_ctx_dup_kdf_fail() #0 {
entry:
  %len = alloca i64, align 8
  %0 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i64 0, i64* %len, align 8, !tbaa !7
  %call = tail call fastcc %struct.ossl_param_st* @do_construct_hkdf_params() #10
  %1 = bitcast %struct.ossl_param_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1653, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i64 0, i64 0), i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef null) #8
  %2 = bitcast %struct.evp_pkey_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1655, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i8* noundef %2) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @EVP_PKEY_derive_init_ex(%struct.evp_pkey_ctx_st* noundef %call2, %struct.ossl_param_st* noundef %call) #8
  %call8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1657, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call7, i32 noundef 1) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %if.end11

if.end11:                                         ; preds = %if.end6
  %call12 = call i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef %call2, i8* noundef null, i64* noundef nonnull %len) #8
  %call13 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1659, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call12, i32 noundef 1) #8
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %3 = load i64, i64* %len, align 8, !tbaa !7
  %call15 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1660, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i64 noundef %3, i64 noundef 32) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.end18

if.end18:                                         ; preds = %lor.lhs.false
  %call19 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef %call2) #8
  %4 = bitcast %struct.evp_pkey_ctx_st* %call19 to i8*
  %call20 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1662, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), i8* noundef %4) #8
  %tobool21.not = icmp ne i32 %call20, 0
  %spec.select = zext i1 %tobool21.not to i32
  br label %err

err:                                              ; preds = %if.end18, %if.end11, %lor.lhs.false, %if.end6, %if.end, %entry
  %ret.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.end11 ], [ 0, %if.end6 ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %if.end18 ]
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ %call2, %lor.lhs.false ], [ %call2, %if.end11 ], [ %call2, %if.end6 ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %if.end18 ]
  %dctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end6 ], [ null, %if.end ], [ null, %entry ], [ %call19, %if.end18 ]
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1666) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %dctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_evp_pkey_get_bn_param_large() #0 {
entry:
  %pk = alloca %struct.evp_pkey_st*, align 8
  %n_out = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %1 = bitcast %struct.bignum_st** %n_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.bignum_st* null, %struct.bignum_st** %n_out, align 8, !tbaa !3
  %call = tail call i8* @memset(i8* noundef getelementptr inbounds ([2050 x i8], [2050 x i8]* @test_evp_pkey_get_bn_param_large.n_data, i64 0, i64 0), i32 noundef 206, i64 noundef 2050) #8
  %call1 = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %2 = bitcast %struct.ossl_param_bld_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([2050 x i8], [2050 x i8]* @test_evp_pkey_get_bn_param_large.n_data, i64 0, i64 0), i32 noundef 2050, %struct.bignum_st* noundef null) #8
  %3 = bitcast %struct.bignum_st* %call3 to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 426, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0), i8* noundef %3) #8
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %err, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @test_evp_pkey_get_bn_param_large.e_data, i64 0, i64 0), i32 noundef 3, %struct.bignum_st* noundef null) #8
  %4 = bitcast %struct.bignum_st* %call7 to i8*
  %call8 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.32, i64 0, i64 0), i8* noundef %4) #8
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %call11 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @test_evp_pkey_get_bn_param_large.d_data, i64 0, i64 0), i32 noundef 4, %struct.bignum_st* noundef null) #8
  %5 = bitcast %struct.bignum_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i64 0, i64 0), i8* noundef %5) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %call15 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), %struct.bignum_st* noundef %call3) #8
  %cmp = icmp ne i32 %call15, 0
  %conv = zext i1 %cmp to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 429, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %struct.bignum_st* noundef %call7) #8
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 430, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv21) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %call25 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), %struct.bignum_st* noundef %call11) #8
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv27) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false24
  %call31 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call1) #8
  %6 = bitcast %struct.ossl_param_st* %call31 to i8*
  %call32 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i64 0, i64 0), i8* noundef %6) #8
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %call35 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i8* noundef null) #8
  %7 = bitcast %struct.evp_pkey_ctx_st* %call35 to i8*
  %call36 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.41, i64 0, i64 0), i8* noundef %7) #8
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %call39 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call35) #8
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 434, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv41) #8
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false38
  %call45 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call35, %struct.evp_pkey_st** noundef nonnull %pk, i32 noundef 135, %struct.ossl_param_st* noundef %call31) #8
  %cmp46 = icmp ne i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 436, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv47) #8
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %err, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false44
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call51 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %8, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0)) #8
  %9 = bitcast %struct.evp_pkey_ctx_st* %call51 to i8*
  %call52 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 437, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i8* noundef %9) #8
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %err, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %10 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call55 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %10, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), %struct.bignum_st** noundef nonnull %n_out) #8
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 438, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.47, i64 0, i64 0), i32 noundef %conv57) #8
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %err, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false54
  %11 = load %struct.bignum_st*, %struct.bignum_st** %n_out, align 8, !tbaa !3
  %call61 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), %struct.bignum_st* noundef %call3, %struct.bignum_st* noundef %11) #8
  %tobool62.not = icmp ne i32 %call61, 0
  %spec.select = zext i1 %tobool62.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false60, %entry, %lor.lhs.false, %lor.lhs.false6, %lor.lhs.false10, %lor.lhs.false14, %lor.lhs.false18, %lor.lhs.false24, %lor.lhs.false30, %lor.lhs.false34, %lor.lhs.false38, %lor.lhs.false44, %lor.lhs.false50, %lor.lhs.false54
  %ret.0 = phi i32 [ 0, %lor.lhs.false54 ], [ 0, %lor.lhs.false50 ], [ 0, %lor.lhs.false44 ], [ 0, %lor.lhs.false38 ], [ 0, %lor.lhs.false34 ], [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false14 ], [ 0, %lor.lhs.false10 ], [ 0, %lor.lhs.false6 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false60 ]
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call35, %lor.lhs.false54 ], [ %call35, %lor.lhs.false50 ], [ %call35, %lor.lhs.false44 ], [ %call35, %lor.lhs.false38 ], [ %call35, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call35, %lor.lhs.false60 ]
  %key_ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call51, %lor.lhs.false54 ], [ %call51, %lor.lhs.false50 ], [ null, %lor.lhs.false44 ], [ null, %lor.lhs.false38 ], [ null, %lor.lhs.false34 ], [ null, %lor.lhs.false30 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call51, %lor.lhs.false60 ]
  %fromdata_params.0 = phi %struct.ossl_param_st* [ %call31, %lor.lhs.false54 ], [ %call31, %lor.lhs.false50 ], [ %call31, %lor.lhs.false44 ], [ %call31, %lor.lhs.false38 ], [ %call31, %lor.lhs.false34 ], [ %call31, %lor.lhs.false30 ], [ null, %lor.lhs.false24 ], [ null, %lor.lhs.false18 ], [ null, %lor.lhs.false14 ], [ null, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call31, %lor.lhs.false60 ]
  %n.0 = phi %struct.bignum_st* [ %call3, %lor.lhs.false54 ], [ %call3, %lor.lhs.false50 ], [ %call3, %lor.lhs.false44 ], [ %call3, %lor.lhs.false38 ], [ %call3, %lor.lhs.false34 ], [ %call3, %lor.lhs.false30 ], [ %call3, %lor.lhs.false24 ], [ %call3, %lor.lhs.false18 ], [ %call3, %lor.lhs.false14 ], [ %call3, %lor.lhs.false10 ], [ %call3, %lor.lhs.false6 ], [ %call3, %lor.lhs.false ], [ null, %entry ], [ %call3, %lor.lhs.false60 ]
  %e.0 = phi %struct.bignum_st* [ %call7, %lor.lhs.false54 ], [ %call7, %lor.lhs.false50 ], [ %call7, %lor.lhs.false44 ], [ %call7, %lor.lhs.false38 ], [ %call7, %lor.lhs.false34 ], [ %call7, %lor.lhs.false30 ], [ %call7, %lor.lhs.false24 ], [ %call7, %lor.lhs.false18 ], [ %call7, %lor.lhs.false14 ], [ %call7, %lor.lhs.false10 ], [ %call7, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call7, %lor.lhs.false60 ]
  %d.0 = phi %struct.bignum_st* [ %call11, %lor.lhs.false54 ], [ %call11, %lor.lhs.false50 ], [ %call11, %lor.lhs.false44 ], [ %call11, %lor.lhs.false38 ], [ %call11, %lor.lhs.false34 ], [ %call11, %lor.lhs.false30 ], [ %call11, %lor.lhs.false24 ], [ %call11, %lor.lhs.false18 ], [ %call11, %lor.lhs.false14 ], [ %call11, %lor.lhs.false10 ], [ null, %lor.lhs.false6 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call11, %lor.lhs.false60 ]
  %12 = load %struct.bignum_st*, %struct.bignum_st** %n_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %12) #8
  call void @BN_free(%struct.bignum_st* noundef %n.0) #8
  call void @BN_free(%struct.bignum_st* noundef %e.0) #8
  call void @BN_free(%struct.bignum_st* noundef %d.0) #8
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %13) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %key_ctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #8
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %fromdata_params.0) #8
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_fromdata_rsa() #0 {
entry:
  %pk = alloca %struct.evp_pkey_st*, align 8
  %fromdata_params = alloca [9 x %struct.ossl_param_st], align 16
  %bn = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %1 = bitcast [9 x %struct.ossl_param_st]* %fromdata_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 360, i8* nonnull %1) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(360) %1, i8* noundef nonnull align 16 dereferenceable(360) bitcast ([9 x %struct.ossl_param_st]* @__const.test_fromdata_rsa.fromdata_params to i8*), i64 360, i1 false)
  %2 = bitcast %struct.bignum_st** %bn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %call = tail call %struct.bignum_st* @BN_new() #8
  store %struct.bignum_st* %call, %struct.bignum_st** %bn, align 8, !tbaa !3
  %call1 = tail call %struct.bignum_st* @BN_new() #8
  %call2 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i8* noundef null) #8
  %3 = bitcast %struct.evp_pkey_ctx_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.41, i64 0, i64 0), i8* noundef %3) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call2) #8
  %cmp = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arraydecay = getelementptr inbounds [9 x %struct.ossl_param_st], [9 x %struct.ossl_param_st]* %fromdata_params, i64 0, i64 0
  %call7 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call2, %struct.evp_pkey_st** noundef nonnull %pk, i32 noundef 135, %struct.ossl_param_st* noundef nonnull %arraydecay) #8
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv9) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %while.body.preheader

while.body.preheader:                             ; preds = %lor.lhs.false
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br label %while.body

while.cond:                                       ; preds = %land.rhs88
  %cmp14 = icmp eq %struct.evp_pkey_st* %call82, null
  br i1 %cmp14, label %while.body, label %err, !llvm.loop !9

while.body:                                       ; preds = %while.body.preheader, %while.cond
  %4 = phi %struct.evp_pkey_st* [ null, %while.cond ], [ %.pre, %while.body.preheader ]
  %key_ctx.0147 = phi %struct.evp_pkey_ctx_st* [ %call35, %while.cond ], [ null, %while.body.preheader ]
  %call16 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %4) #8
  %call17 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i32 noundef %call16, i32 noundef 32) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %while.body
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call20 = call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef %5) #8
  %call21 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i32 noundef %call20, i32 noundef 8) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %6 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call24 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %6) #8
  %call25 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 352, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call24, i32 noundef 4) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call28 = call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef %7) #8
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv30) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false27
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %key_ctx.0147) #8
  %8 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call35 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %8, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0)) #8
  %9 = bitcast %struct.evp_pkey_ctx_st* %call35 to i8*
  %call36 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i8* noundef %9) #8
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.end34
  %call40 = call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef %call35) #8
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv42) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end39
  %call46 = call i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef %call35) #8
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 361, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv48) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false45
  %call52 = call i32 @EVP_PKEY_private_check(%struct.evp_pkey_ctx_st* noundef %call35) #8
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv54) #8
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %err, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false51
  %call58 = call i32 @EVP_PKEY_pairwise_check(%struct.evp_pkey_ctx_st* noundef %call35) #8
  %cmp59 = icmp ne i32 %call58, 0
  %conv60 = zext i1 %cmp59 to i32
  %call61 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv60) #8
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %if.end64

if.end64:                                         ; preds = %lor.lhs.false57
  %call65 = call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %10 = bitcast %struct.evp_pkey_st* %call65 to i8*
  %call66 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0), i8* noundef %10) #8
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.end64
  %11 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call69 = call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef %call65, %struct.evp_pkey_st* noundef %11) #8
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv71) #8
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end75

if.end75:                                         ; preds = %lor.lhs.false68
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call65) #8
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call76 = call fastcc i32 @test_print_key_using_pem(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), %struct.evp_pkey_st* noundef %12) #10
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %land.end

land.end:                                         ; preds = %if.end75
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call78 = call fastcc i32 @test_print_key_using_encoder(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), %struct.evp_pkey_st* noundef %13) #10
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %land.end
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call82 = call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef %14) #8
  %15 = bitcast %struct.evp_pkey_st* %call82 to i8*
  %call83 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef %15) #8
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %err, label %land.rhs88

land.rhs88:                                       ; preds = %lor.lhs.false81
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call89 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %16, %struct.evp_pkey_st* noundef %call82) #8
  %call90 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call89, i32 noundef 1) #8
  %tobool91.not = icmp eq i32 %call90, 0
  %17 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %17) #8
  store %struct.evp_pkey_st* %call82, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br i1 %tobool91.not, label %err, label %while.cond, !llvm.loop !9

err:                                              ; preds = %if.end75, %while.cond, %land.rhs88, %land.end, %lor.lhs.false81, %if.end64, %lor.lhs.false68, %if.end39, %lor.lhs.false45, %lor.lhs.false51, %lor.lhs.false57, %if.end34, %while.body, %lor.lhs.false19, %lor.lhs.false23, %lor.lhs.false27, %if.end, %lor.lhs.false, %entry
  %key_ctx.1 = phi %struct.evp_pkey_ctx_st* [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ %call35, %if.end75 ], [ %call35, %while.cond ], [ %key_ctx.0147, %while.body ], [ %key_ctx.0147, %lor.lhs.false19 ], [ %key_ctx.0147, %lor.lhs.false23 ], [ %key_ctx.0147, %lor.lhs.false27 ], [ %call35, %if.end34 ], [ %call35, %if.end39 ], [ %call35, %lor.lhs.false45 ], [ %call35, %lor.lhs.false51 ], [ %call35, %lor.lhs.false57 ], [ %call35, %if.end64 ], [ %call35, %lor.lhs.false68 ], [ %call35, %land.end ], [ %call35, %lor.lhs.false81 ], [ %call35, %land.rhs88 ]
  %copy_pk.1 = phi %struct.evp_pkey_st* [ null, %lor.lhs.false ], [ null, %if.end ], [ null, %entry ], [ null, %if.end75 ], [ null, %while.cond ], [ null, %while.body ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false27 ], [ null, %if.end34 ], [ null, %if.end39 ], [ null, %lor.lhs.false45 ], [ null, %lor.lhs.false51 ], [ null, %lor.lhs.false57 ], [ %call65, %if.end64 ], [ %call65, %lor.lhs.false68 ], [ null, %land.end ], [ null, %lor.lhs.false81 ], [ null, %land.rhs88 ]
  %ret.1 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ 0, %if.end75 ], [ 1, %while.cond ], [ 0, %while.body ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false27 ], [ 0, %if.end34 ], [ 0, %if.end39 ], [ 0, %lor.lhs.false45 ], [ 0, %lor.lhs.false51 ], [ 0, %lor.lhs.false57 ], [ 0, %if.end64 ], [ 0, %lor.lhs.false68 ], [ 0, %land.end ], [ 1, %lor.lhs.false81 ], [ 0, %land.rhs88 ]
  %key148 = getelementptr inbounds [9 x %struct.ossl_param_st], [9 x %struct.ossl_param_st]* %fromdata_params, i64 0, i64 0, i32 0
  %18 = load i8*, i8** %key148, align 16, !tbaa !11
  %cmp97.not149 = icmp eq i8* %18, null
  br i1 %cmp97.not149, label %for.end, label %for.body

for.body:                                         ; preds = %err, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %err ]
  %key153 = phi i8** [ %key, %for.inc ], [ %key148, %err ]
  %ret.2151 = phi i32 [ %ret.3, %for.inc ], [ %ret.1, %err ]
  %arrayidx100 = getelementptr inbounds [8 x i64], [8 x i64]* @test_fromdata_rsa.key_numbers, i64 0, i64 %indvars.iv
  %19 = load i64, i64* %arrayidx100, align 8, !tbaa !7
  %call101 = call i32 @BN_set_word(%struct.bignum_st* noundef %call1, i64 noundef %19) #8
  %cmp102 = icmp ne i32 %call101, 0
  %conv103 = zext i1 %cmp102 to i32
  %call104 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 387, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.69, i64 0, i64 0), i32 noundef %conv103) #8
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.then118, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %for.body
  %20 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %21 = load i8*, i8** %key153, align 8, !tbaa !11
  %call110 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %20, i8* noundef %21, %struct.bignum_st** noundef nonnull %bn) #8
  %cmp111 = icmp ne i32 %call110, 0
  %conv112 = zext i1 %cmp111 to i32
  %call113 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv112) #8
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.then118, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false106
  %22 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !3
  %call116 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 389, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0), %struct.bignum_st* noundef %22, %struct.bignum_st* noundef %call1) #8
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.then118, label %for.inc

if.then118:                                       ; preds = %lor.lhs.false115, %lor.lhs.false106, %for.body
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false115, %if.then118
  %ret.3 = phi i32 [ %ret.2151, %lor.lhs.false115 ], [ 0, %if.then118 ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %key = getelementptr inbounds [9 x %struct.ossl_param_st], [9 x %struct.ossl_param_st]* %fromdata_params, i64 0, i64 %indvars.iv.next, i32 0
  %23 = load i8*, i8** %key, align 8, !tbaa !11
  %cmp97.not = icmp eq i8* %23, null
  br i1 %cmp97.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.inc, %err
  %ret.2.lcssa = phi i32 [ %ret.1, %err ], [ %ret.3, %for.inc ]
  call void @BN_free(%struct.bignum_st* noundef %call1) #8
  %24 = load %struct.bignum_st*, %struct.bignum_st** %bn, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %24) #8
  %25 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %25) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %copy_pk.1) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %key_ctx.1) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 360, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.2.lcssa
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_fromdata_dh_fips186_4() #0 {
entry:
  %gindex = alloca i32, align 4
  %pcounter = alloca i32, align 4
  %hindex = alloca i32, align 4
  %pk = alloca %struct.evp_pkey_st*, align 8
  %len = alloca i64, align 8
  %pub_out = alloca %struct.bignum_st*, align 8
  %priv_out = alloca %struct.bignum_st*, align 8
  %p = alloca %struct.bignum_st*, align 8
  %q = alloca %struct.bignum_st*, align 8
  %g = alloca %struct.bignum_st*, align 8
  %j = alloca %struct.bignum_st*, align 8
  %name_out = alloca [80 x i8], align 16
  %seed_out = alloca [32 x i8], align 16
  %0 = bitcast i32* %gindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %gindex, align 4, !tbaa !15
  %1 = bitcast i32* %pcounter to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 0, i32* %pcounter, align 4, !tbaa !15
  %2 = bitcast i32* %hindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  store i32 0, i32* %hindex, align 4, !tbaa !15
  %3 = bitcast %struct.evp_pkey_st** %pk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %4 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = bitcast %struct.bignum_st** %pub_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  store %struct.bignum_st* null, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  %6 = bitcast %struct.bignum_st** %priv_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store %struct.bignum_st* null, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  %7 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !3
  %8 = bitcast %struct.bignum_st** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9
  store %struct.bignum_st* null, %struct.bignum_st** %q, align 8, !tbaa !3
  %9 = bitcast %struct.bignum_st** %g to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9
  store %struct.bignum_st* null, %struct.bignum_st** %g, align 8, !tbaa !3
  %10 = bitcast %struct.bignum_st** %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9
  store %struct.bignum_st* null, %struct.bignum_st** %j, align 8, !tbaa !3
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %name_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %11) #9
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %seed_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #9
  %call = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %13 = bitcast %struct.ossl_param_bld_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 721, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* noundef %13) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @test_fromdata_dh_fips186_4.pub_data, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #8
  %14 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 722, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.122, i64 0, i64 0), i8* noundef %14) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @test_fromdata_dh_fips186_4.priv_data, i64 0, i64 0), i32 noundef 28, %struct.bignum_st* noundef null) #8
  %15 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 723, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.123, i64 0, i64 0), i8* noundef %15) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @test_fromdata_dh_fips186_4.group_name, i64 0, i64 0), i64 noundef 0) #8
  %cmp = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 726, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.124, i64 0, i64 0), i32 noundef %conv) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call i32 @OSSL_PARAM_BLD_push_long(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i64 0, i64 0), i64 noundef 224) #8
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 728, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.126, i64 0, i64 0), i32 noundef %conv16) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %call20 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), %struct.bignum_st* noundef %call2) #8
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.128, i64 0, i64 0), i32 noundef %conv22) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), %struct.bignum_st* noundef %call6) #8
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 730, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.130, i64 0, i64 0), i32 noundef %conv28) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %call32 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call) #8
  %16 = bitcast %struct.ossl_param_st* %call32 to i8*
  %call33 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 731, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i64 0, i64 0), i8* noundef %16) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false31
  %call35 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), i8* noundef null) #8
  %17 = bitcast %struct.evp_pkey_ctx_st* %call35 to i8*
  %call36 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 734, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.132, i64 0, i64 0), i8* noundef %17) #8
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.end
  %call40 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call35) #8
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 737, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv42) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end39
  %call46 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call35, %struct.evp_pkey_st** noundef nonnull %pk, i32 noundef 135, %struct.ossl_param_st* noundef %call32) #8
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 739, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv48) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false45
  %18 = bitcast %struct.bignum_st** %q to i8**
  %19 = bitcast %struct.bignum_st** %j to i8**
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br label %while.body

while.cond:                                       ; preds = %land.rhs215
  %cmp53 = icmp eq %struct.evp_pkey_st* %call209, null
  br i1 %cmp53, label %while.body, label %err, !llvm.loop !16

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %20 = phi %struct.evp_pkey_st* [ %.pre, %while.cond.preheader ], [ null, %while.cond ]
  %call55 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %20) #8
  %call56 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 744, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i32 noundef %call55, i32 noundef 2048) #8
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %while.body
  %21 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call59 = call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef %21) #8
  %call60 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 745, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %call59, i32 noundef 112) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false58
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call63 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %22) #8
  %call64 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 746, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i64 0, i64 0), i32 noundef %call63, i32 noundef 256) #8
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %err, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false62
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call67 = call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef %23) #8
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 747, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv69) #8
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %err, label %if.end73

if.end73:                                         ; preds = %lor.lhs.false66
  %24 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call74 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %11, i64 noundef 80, i64* noundef nonnull %len) #8
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %call77 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 754, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.137, i64 0, i64 0), i32 noundef %conv76) #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %err, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end73
  %call81 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 755, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.139, i64 0, i64 0), i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @test_fromdata_dh_fips186_4.group_name, i64 0, i64 0)) #8
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %err, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false79
  %25 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call84 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %25, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), %struct.bignum_st** noundef nonnull %pub_out) #8
  %cmp85 = icmp ne i32 %call84, 0
  %conv86 = zext i1 %cmp85 to i32
  %call87 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 757, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.140, i64 0, i64 0), i32 noundef %conv86) #8
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %err, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %lor.lhs.false83
  %26 = load %struct.bignum_st*, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  %call90 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 758, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %26) #8
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false89
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call93 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %27, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), %struct.bignum_st** noundef nonnull %priv_out) #8
  %cmp94 = icmp ne i32 %call93, 0
  %conv95 = zext i1 %cmp94 to i32
  %call96 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 760, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.142, i64 0, i64 0), i32 noundef %conv95) #8
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false92
  %28 = load %struct.bignum_st*, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  %call99 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 761, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %28) #8
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %err, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false98
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call102 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), %struct.bignum_st** noundef nonnull %p) #8
  %cmp103 = icmp ne i32 %call102, 0
  %conv104 = zext i1 %cmp103 to i32
  %call105 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 762, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.144, i64 0, i64 0), i32 noundef %conv104) #8
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %err, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %lor.lhs.false101
  %30 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  %call108 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 763, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.146, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), %struct.bignum_st* noundef nonnull @ossl_bignum_ffdhe2048_p, %struct.bignum_st* noundef %30) #8
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %lor.lhs.false107
  %31 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call111 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %31, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0), %struct.bignum_st** noundef nonnull %q) #8
  %cmp112 = icmp ne i32 %call111, 0
  %conv113 = zext i1 %cmp112 to i32
  %call114 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 764, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.147, i64 0, i64 0), i32 noundef %conv113) #8
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %err, label %lor.lhs.false116

lor.lhs.false116:                                 ; preds = %lor.lhs.false110
  %32 = load i8*, i8** %18, align 8, !tbaa !3
  %call117 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 765, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0), i8* noundef %32) #8
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %err, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %lor.lhs.false116
  %33 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call120 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0), %struct.bignum_st** noundef nonnull %g) #8
  %cmp121 = icmp ne i32 %call120, 0
  %conv122 = zext i1 %cmp121 to i32
  %call123 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 766, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.149, i64 0, i64 0), i32 noundef %conv122) #8
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %err, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %lor.lhs.false119
  %34 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !3
  %call126 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 767, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.151, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0), %struct.bignum_st* noundef nonnull @ossl_bignum_const_2, %struct.bignum_st* noundef %34) #8
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %err, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %lor.lhs.false125
  %35 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call129 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i64 0, i64 0), %struct.bignum_st** noundef nonnull %j) #8
  %cmp130 = icmp ne i32 %call129, 0
  %conv131 = zext i1 %cmp130 to i32
  %call132 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 770, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.152, i64 0, i64 0), i32 noundef %conv131) #8
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %err, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %lor.lhs.false128
  %36 = load i8*, i8** %19, align 8, !tbaa !3
  %call135 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 771, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i64 0, i64 0), i8* noundef %36) #8
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %err, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %lor.lhs.false134
  %37 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call139 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %37, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i8* noundef nonnull %12, i64 noundef 32, i64* noundef nonnull %len) #8
  %cmp140 = icmp ne i32 %call139, 0
  %conv141 = zext i1 %cmp140 to i32
  %call142 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 776, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.154, i64 0, i64 0), i32 noundef %conv141) #8
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %err, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false137
  %38 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call145 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %38, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i64 0, i64 0), i32* noundef nonnull %gindex) #8
  %cmp146 = icmp ne i32 %call145, 0
  %conv147 = zext i1 %cmp146 to i32
  %call148 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 779, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.156, i64 0, i64 0), i32 noundef %conv147) #8
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %err, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false144
  %39 = load i32, i32* %gindex, align 4, !tbaa !15
  %call151 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 780, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i64 0, i64 0), i32 noundef %39, i32 noundef -1) #8
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %err, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %lor.lhs.false150
  %40 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call154 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %40, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i64 0, i64 0), i32* noundef nonnull %hindex) #8
  %cmp155 = icmp ne i32 %call154, 0
  %conv156 = zext i1 %cmp155 to i32
  %call157 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.159, i64 0, i64 0), i32 noundef %conv156) #8
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %err, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %lor.lhs.false153
  %41 = load i32, i32* %hindex, align 4, !tbaa !15
  %call160 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 783, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %41, i32 noundef 0) #8
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %err, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %lor.lhs.false159
  %42 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call163 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %42, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i64 0, i64 0), i32* noundef nonnull %pcounter) #8
  %cmp164 = icmp ne i32 %call163, 0
  %conv165 = zext i1 %cmp164 to i32
  %call166 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 786, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.161, i64 0, i64 0), i32 noundef %conv165) #8
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %err, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false162
  %43 = load i32, i32* %pcounter, align 4, !tbaa !15
  %call169 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 787, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i64 0, i64 0), i32 noundef %43, i32 noundef -1) #8
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %err, label %if.end172

if.end172:                                        ; preds = %lor.lhs.false168
  %44 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %44) #8
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !3
  %45 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %45) #8
  store %struct.bignum_st* null, %struct.bignum_st** %q, align 8, !tbaa !3
  %46 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %46) #8
  store %struct.bignum_st* null, %struct.bignum_st** %g, align 8, !tbaa !3
  %47 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %47) #8
  store %struct.bignum_st* null, %struct.bignum_st** %j, align 8, !tbaa !3
  %48 = load %struct.bignum_st*, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %48) #8
  store %struct.bignum_st* null, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  %49 = load %struct.bignum_st*, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %49) #8
  store %struct.bignum_st* null, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  %50 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call173 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %50, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0)) #8
  %51 = bitcast %struct.evp_pkey_ctx_st* %call173 to i8*
  %call174 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 802, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i8* noundef %51) #8
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %err, label %if.end177

if.end177:                                        ; preds = %if.end172
  %call178 = call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef %call173) #8
  %cmp179 = icmp ne i32 %call178, 0
  %conv180 = zext i1 %cmp179 to i32
  %call181 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 805, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv180) #8
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %err, label %lor.lhs.false183

lor.lhs.false183:                                 ; preds = %if.end177
  %call184 = call i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef %call173) #8
  %cmp185 = icmp ne i32 %call184, 0
  %conv186 = zext i1 %cmp185 to i32
  %call187 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 806, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv186) #8
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %err, label %lor.lhs.false189

lor.lhs.false189:                                 ; preds = %lor.lhs.false183
  %call190 = call i32 @EVP_PKEY_private_check(%struct.evp_pkey_ctx_st* noundef %call173) #8
  %cmp191 = icmp ne i32 %call190, 0
  %conv192 = zext i1 %cmp191 to i32
  %call193 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 807, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv192) #8
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %err, label %lor.lhs.false195

lor.lhs.false195:                                 ; preds = %lor.lhs.false189
  %call196 = call i32 @EVP_PKEY_pairwise_check(%struct.evp_pkey_ctx_st* noundef %call173) #8
  %cmp197 = icmp ne i32 %call196, 0
  %conv198 = zext i1 %cmp197 to i32
  %call199 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 808, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv198) #8
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %err, label %if.end202

if.end202:                                        ; preds = %lor.lhs.false195
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call173) #8
  %52 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call203 = call fastcc i32 @test_print_key_using_pem(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), %struct.evp_pkey_st* noundef %52) #10
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %err, label %land.end

land.end:                                         ; preds = %if.end202
  %53 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call205 = call fastcc i32 @test_print_key_using_encoder(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), %struct.evp_pkey_st* noundef %53) #10
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %err, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %land.end
  %54 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call209 = call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef %54) #8
  %55 = bitcast %struct.evp_pkey_st* %call209 to i8*
  %call210 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 816, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef %55) #8
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %err, label %land.rhs215

land.rhs215:                                      ; preds = %lor.lhs.false208
  %56 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call216 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %56, %struct.evp_pkey_st* noundef %call209) #8
  %call217 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 818, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call216, i32 noundef 1) #8
  %tobool218.not = icmp eq i32 %call217, 0
  %57 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %57) #8
  store %struct.evp_pkey_st* %call209, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br i1 %tobool218.not, label %err, label %while.cond, !llvm.loop !16

err:                                              ; preds = %if.end202, %while.cond, %land.rhs215, %land.end, %lor.lhs.false208, %if.end177, %lor.lhs.false183, %lor.lhs.false189, %lor.lhs.false195, %if.end172, %if.end73, %lor.lhs.false79, %lor.lhs.false83, %lor.lhs.false89, %lor.lhs.false92, %lor.lhs.false98, %lor.lhs.false101, %lor.lhs.false107, %lor.lhs.false110, %lor.lhs.false116, %lor.lhs.false119, %lor.lhs.false125, %lor.lhs.false128, %lor.lhs.false134, %lor.lhs.false137, %lor.lhs.false144, %lor.lhs.false150, %lor.lhs.false153, %lor.lhs.false159, %lor.lhs.false162, %lor.lhs.false168, %while.body, %lor.lhs.false58, %lor.lhs.false62, %lor.lhs.false66, %if.end39, %lor.lhs.false45, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false25, %lor.lhs.false31
  %ret.1 = phi i32 [ 0, %lor.lhs.false45 ], [ 0, %if.end39 ], [ 0, %if.end ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end202 ], [ 1, %while.cond ], [ 0, %while.body ], [ 0, %lor.lhs.false58 ], [ 0, %lor.lhs.false62 ], [ 0, %lor.lhs.false66 ], [ 0, %if.end73 ], [ 0, %lor.lhs.false79 ], [ 0, %lor.lhs.false83 ], [ 0, %lor.lhs.false89 ], [ 0, %lor.lhs.false92 ], [ 0, %lor.lhs.false98 ], [ 0, %lor.lhs.false101 ], [ 0, %lor.lhs.false107 ], [ 0, %lor.lhs.false110 ], [ 0, %lor.lhs.false116 ], [ 0, %lor.lhs.false119 ], [ 0, %lor.lhs.false125 ], [ 0, %lor.lhs.false128 ], [ 0, %lor.lhs.false134 ], [ 0, %lor.lhs.false137 ], [ 0, %lor.lhs.false144 ], [ 0, %lor.lhs.false150 ], [ 0, %lor.lhs.false153 ], [ 0, %lor.lhs.false159 ], [ 0, %lor.lhs.false162 ], [ 0, %lor.lhs.false168 ], [ 0, %if.end172 ], [ 0, %if.end177 ], [ 0, %lor.lhs.false183 ], [ 0, %lor.lhs.false189 ], [ 0, %lor.lhs.false195 ], [ 0, %land.end ], [ 1, %lor.lhs.false208 ], [ 0, %land.rhs215 ]
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call35, %lor.lhs.false45 ], [ %call35, %if.end39 ], [ %call35, %if.end ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call35, %lor.lhs.false66 ], [ %call35, %lor.lhs.false62 ], [ %call35, %lor.lhs.false58 ], [ %call35, %while.body ], [ %call35, %lor.lhs.false168 ], [ %call35, %lor.lhs.false162 ], [ %call35, %lor.lhs.false159 ], [ %call35, %lor.lhs.false153 ], [ %call35, %lor.lhs.false150 ], [ %call35, %lor.lhs.false144 ], [ %call35, %lor.lhs.false137 ], [ %call35, %lor.lhs.false134 ], [ %call35, %lor.lhs.false128 ], [ %call35, %lor.lhs.false125 ], [ %call35, %lor.lhs.false119 ], [ %call35, %lor.lhs.false116 ], [ %call35, %lor.lhs.false110 ], [ %call35, %lor.lhs.false107 ], [ %call35, %lor.lhs.false101 ], [ %call35, %lor.lhs.false98 ], [ %call35, %lor.lhs.false92 ], [ %call35, %lor.lhs.false89 ], [ %call35, %lor.lhs.false83 ], [ %call35, %lor.lhs.false79 ], [ %call35, %if.end73 ], [ %call35, %if.end172 ], [ %call35, %lor.lhs.false195 ], [ %call35, %lor.lhs.false189 ], [ %call35, %lor.lhs.false183 ], [ %call35, %if.end177 ], [ %call35, %lor.lhs.false208 ], [ %call35, %land.end ], [ %call35, %land.rhs215 ], [ %call35, %while.cond ], [ %call35, %if.end202 ]
  %key_ctx.1 = phi %struct.evp_pkey_ctx_st* [ null, %lor.lhs.false45 ], [ null, %if.end39 ], [ null, %if.end ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end202 ], [ null, %while.cond ], [ null, %while.body ], [ null, %lor.lhs.false58 ], [ null, %lor.lhs.false62 ], [ null, %lor.lhs.false66 ], [ null, %if.end73 ], [ null, %lor.lhs.false79 ], [ null, %lor.lhs.false83 ], [ null, %lor.lhs.false89 ], [ null, %lor.lhs.false92 ], [ null, %lor.lhs.false98 ], [ null, %lor.lhs.false101 ], [ null, %lor.lhs.false107 ], [ null, %lor.lhs.false110 ], [ null, %lor.lhs.false116 ], [ null, %lor.lhs.false119 ], [ null, %lor.lhs.false125 ], [ null, %lor.lhs.false128 ], [ null, %lor.lhs.false134 ], [ null, %lor.lhs.false137 ], [ null, %lor.lhs.false144 ], [ null, %lor.lhs.false150 ], [ null, %lor.lhs.false153 ], [ null, %lor.lhs.false159 ], [ null, %lor.lhs.false162 ], [ null, %lor.lhs.false168 ], [ %call173, %if.end172 ], [ %call173, %if.end177 ], [ %call173, %lor.lhs.false183 ], [ %call173, %lor.lhs.false189 ], [ %call173, %lor.lhs.false195 ], [ null, %land.end ], [ null, %lor.lhs.false208 ], [ null, %land.rhs215 ]
  %pub.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false45 ], [ %call2, %if.end39 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false31 ], [ %call2, %lor.lhs.false25 ], [ %call2, %lor.lhs.false19 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false66 ], [ %call2, %lor.lhs.false62 ], [ %call2, %lor.lhs.false58 ], [ %call2, %while.body ], [ %call2, %lor.lhs.false168 ], [ %call2, %lor.lhs.false162 ], [ %call2, %lor.lhs.false159 ], [ %call2, %lor.lhs.false153 ], [ %call2, %lor.lhs.false150 ], [ %call2, %lor.lhs.false144 ], [ %call2, %lor.lhs.false137 ], [ %call2, %lor.lhs.false134 ], [ %call2, %lor.lhs.false128 ], [ %call2, %lor.lhs.false125 ], [ %call2, %lor.lhs.false119 ], [ %call2, %lor.lhs.false116 ], [ %call2, %lor.lhs.false110 ], [ %call2, %lor.lhs.false107 ], [ %call2, %lor.lhs.false101 ], [ %call2, %lor.lhs.false98 ], [ %call2, %lor.lhs.false92 ], [ %call2, %lor.lhs.false89 ], [ %call2, %lor.lhs.false83 ], [ %call2, %lor.lhs.false79 ], [ %call2, %if.end73 ], [ %call2, %if.end172 ], [ %call2, %lor.lhs.false195 ], [ %call2, %lor.lhs.false189 ], [ %call2, %lor.lhs.false183 ], [ %call2, %if.end177 ], [ %call2, %lor.lhs.false208 ], [ %call2, %land.end ], [ %call2, %land.rhs215 ], [ %call2, %while.cond ], [ %call2, %if.end202 ]
  %priv.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false45 ], [ %call6, %if.end39 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false31 ], [ %call6, %lor.lhs.false25 ], [ %call6, %lor.lhs.false19 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false66 ], [ %call6, %lor.lhs.false62 ], [ %call6, %lor.lhs.false58 ], [ %call6, %while.body ], [ %call6, %lor.lhs.false168 ], [ %call6, %lor.lhs.false162 ], [ %call6, %lor.lhs.false159 ], [ %call6, %lor.lhs.false153 ], [ %call6, %lor.lhs.false150 ], [ %call6, %lor.lhs.false144 ], [ %call6, %lor.lhs.false137 ], [ %call6, %lor.lhs.false134 ], [ %call6, %lor.lhs.false128 ], [ %call6, %lor.lhs.false125 ], [ %call6, %lor.lhs.false119 ], [ %call6, %lor.lhs.false116 ], [ %call6, %lor.lhs.false110 ], [ %call6, %lor.lhs.false107 ], [ %call6, %lor.lhs.false101 ], [ %call6, %lor.lhs.false98 ], [ %call6, %lor.lhs.false92 ], [ %call6, %lor.lhs.false89 ], [ %call6, %lor.lhs.false83 ], [ %call6, %lor.lhs.false79 ], [ %call6, %if.end73 ], [ %call6, %if.end172 ], [ %call6, %lor.lhs.false195 ], [ %call6, %lor.lhs.false189 ], [ %call6, %lor.lhs.false183 ], [ %call6, %if.end177 ], [ %call6, %lor.lhs.false208 ], [ %call6, %land.end ], [ %call6, %land.rhs215 ], [ %call6, %while.cond ], [ %call6, %if.end202 ]
  %fromdata_params.0 = phi %struct.ossl_param_st* [ %call32, %lor.lhs.false45 ], [ %call32, %if.end39 ], [ %call32, %if.end ], [ %call32, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call32, %lor.lhs.false66 ], [ %call32, %lor.lhs.false62 ], [ %call32, %lor.lhs.false58 ], [ %call32, %while.body ], [ %call32, %lor.lhs.false168 ], [ %call32, %lor.lhs.false162 ], [ %call32, %lor.lhs.false159 ], [ %call32, %lor.lhs.false153 ], [ %call32, %lor.lhs.false150 ], [ %call32, %lor.lhs.false144 ], [ %call32, %lor.lhs.false137 ], [ %call32, %lor.lhs.false134 ], [ %call32, %lor.lhs.false128 ], [ %call32, %lor.lhs.false125 ], [ %call32, %lor.lhs.false119 ], [ %call32, %lor.lhs.false116 ], [ %call32, %lor.lhs.false110 ], [ %call32, %lor.lhs.false107 ], [ %call32, %lor.lhs.false101 ], [ %call32, %lor.lhs.false98 ], [ %call32, %lor.lhs.false92 ], [ %call32, %lor.lhs.false89 ], [ %call32, %lor.lhs.false83 ], [ %call32, %lor.lhs.false79 ], [ %call32, %if.end73 ], [ %call32, %if.end172 ], [ %call32, %lor.lhs.false195 ], [ %call32, %lor.lhs.false189 ], [ %call32, %lor.lhs.false183 ], [ %call32, %if.end177 ], [ %call32, %lor.lhs.false208 ], [ %call32, %land.end ], [ %call32, %land.rhs215 ], [ %call32, %while.cond ], [ %call32, %if.end202 ]
  %58 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %58) #8
  %59 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %59) #8
  %60 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %60) #8
  %61 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %61) #8
  call void @BN_free(%struct.bignum_st* noundef %pub.0) #8
  call void @BN_free(%struct.bignum_st* noundef %priv.0) #8
  %62 = load %struct.bignum_st*, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %62) #8
  %63 = load %struct.bignum_st*, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %63) #8
  %64 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %64) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %key_ctx.1) #8
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %fromdata_params.0) #8
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_fromdata_dh_named_group() #0 {
entry:
  %gindex = alloca i32, align 4
  %pcounter = alloca i32, align 4
  %hindex = alloca i32, align 4
  %pk = alloca %struct.evp_pkey_st*, align 8
  %len = alloca i64, align 8
  %pub_out = alloca %struct.bignum_st*, align 8
  %priv_out = alloca %struct.bignum_st*, align 8
  %p = alloca %struct.bignum_st*, align 8
  %q = alloca %struct.bignum_st*, align 8
  %g = alloca %struct.bignum_st*, align 8
  %j = alloca %struct.bignum_st*, align 8
  %name_out = alloca [80 x i8], align 16
  %seed_out = alloca [32 x i8], align 16
  %0 = bitcast i32* %gindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %gindex, align 4, !tbaa !15
  %1 = bitcast i32* %pcounter to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 0, i32* %pcounter, align 4, !tbaa !15
  %2 = bitcast i32* %hindex to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9
  store i32 0, i32* %hindex, align 4, !tbaa !15
  %3 = bitcast %struct.evp_pkey_st** %pk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %4 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = bitcast %struct.bignum_st** %pub_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  store %struct.bignum_st* null, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  %6 = bitcast %struct.bignum_st** %priv_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store %struct.bignum_st* null, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  %7 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !3
  %8 = bitcast %struct.bignum_st** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9
  store %struct.bignum_st* null, %struct.bignum_st** %q, align 8, !tbaa !3
  %9 = bitcast %struct.bignum_st** %g to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9
  store %struct.bignum_st* null, %struct.bignum_st** %g, align 8, !tbaa !3
  %10 = bitcast %struct.bignum_st** %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9
  store %struct.bignum_st* null, %struct.bignum_st** %j, align 8, !tbaa !3
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %name_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %11) #9
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %seed_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #9
  %call = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %13 = bitcast %struct.ossl_param_bld_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 509, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* noundef %13) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @test_fromdata_dh_named_group.pub_data, i64 0, i64 0), i32 noundef 257, %struct.bignum_st* noundef null) #8
  %14 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 510, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.122, i64 0, i64 0), i8* noundef %14) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @test_fromdata_dh_named_group.priv_data, i64 0, i64 0), i32 noundef 28, %struct.bignum_st* noundef null) #8
  %15 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.123, i64 0, i64 0), i8* noundef %15) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @test_fromdata_dh_named_group.group_name, i64 0, i64 0), i64 noundef 0) #8
  %cmp = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 514, i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.124, i64 0, i64 0), i32 noundef %conv) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call i32 @OSSL_PARAM_BLD_push_long(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i64 0, i64 0), i64 noundef 224) #8
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 516, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.126, i64 0, i64 0), i32 noundef %conv16) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %call20 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), %struct.bignum_st* noundef %call2) #8
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 517, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.128, i64 0, i64 0), i32 noundef %conv22) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %call26 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), %struct.bignum_st* noundef %call6) #8
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 518, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.130, i64 0, i64 0), i32 noundef %conv28) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %call32 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call) #8
  %16 = bitcast %struct.ossl_param_st* %call32 to i8*
  %call33 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 519, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i64 0, i64 0), i8* noundef %16) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false31
  %call35 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), i8* noundef null) #8
  %17 = bitcast %struct.evp_pkey_ctx_st* %call35 to i8*
  %call36 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 522, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.132, i64 0, i64 0), i8* noundef %17) #8
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %err, label %if.end39

if.end39:                                         ; preds = %if.end
  %call40 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call35) #8
  %cmp41 = icmp ne i32 %call40, 0
  %conv42 = zext i1 %cmp41 to i32
  %call43 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 525, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv42) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %err, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end39
  %call46 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call35, %struct.evp_pkey_st** noundef nonnull %pk, i32 noundef 135, %struct.ossl_param_st* noundef %call32) #8
  %cmp47 = icmp ne i32 %call46, 0
  %conv48 = zext i1 %cmp47 to i32
  %call49 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 527, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv48) #8
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %err, label %if.end52

if.end52:                                         ; preds = %lor.lhs.false45
  %18 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call53 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %18, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i8* noundef null, i64 noundef 80, i64* noundef nonnull %len) #8
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 538, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.163, i64 0, i64 0), i32 noundef %conv55) #8
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.end52
  %19 = load i64, i64* %len, align 8, !tbaa !7
  %call59 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 539, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.164, i64 0, i64 0), i64 noundef %19, i64 noundef 9) #8
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false58
  %20 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call62 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %20, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %11, i64 noundef 10, i64* noundef nonnull %len) #8
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.165, i64 0, i64 0), i32 noundef %conv64) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false61
  %21 = load i64, i64* %len, align 8, !tbaa !7
  %call68 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 546, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.164, i64 0, i64 0), i64 noundef %21, i64 noundef 9) #8
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false67
  %22 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call72 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %22, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %11, i64 noundef 9, i64* noundef nonnull %len) #8
  %cmp73 = icmp ne i32 %call72, 0
  %conv74 = zext i1 %cmp73 to i32
  %call75 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 552, i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.166, i64 0, i64 0), i32 noundef %conv74) #8
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false70
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call79 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %11, i64 noundef 8, i64* noundef nonnull %len) #8
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 558, i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.167, i64 0, i64 0), i32 noundef %conv81) #8
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %err, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false77
  %24 = bitcast %struct.bignum_st** %q to i8**
  %25 = bitcast %struct.bignum_st** %j to i8**
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br label %while.body

while.cond:                                       ; preds = %land.rhs260
  %cmp86 = icmp eq %struct.evp_pkey_st* %call254, null
  br i1 %cmp86, label %while.body, label %err, !llvm.loop !17

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %26 = phi %struct.evp_pkey_st* [ %.pre, %while.cond.preheader ], [ null, %while.cond ]
  %call88 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %26) #8
  %call89 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 563, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i32 noundef %call88, i32 noundef 2048) #8
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %err, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %while.body
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call92 = call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef %27) #8
  %call93 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 564, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %call92, i32 noundef 112) #8
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %err, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false91
  %28 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call96 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %28) #8
  %call97 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 565, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i64 0, i64 0), i32 noundef %call96, i32 noundef 256) #8
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %err, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %lor.lhs.false95
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call100 = call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef %29) #8
  %cmp101 = icmp ne i32 %call100, 0
  %conv102 = zext i1 %cmp101 to i32
  %call103 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 566, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv102) #8
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %err, label %if.end106

if.end106:                                        ; preds = %lor.lhs.false99
  %30 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call108 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %30, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %11, i64 noundef 80, i64* noundef nonnull %len) #8
  %cmp109 = icmp ne i32 %call108, 0
  %conv110 = zext i1 %cmp109 to i32
  %call111 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 573, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.137, i64 0, i64 0), i32 noundef %conv110) #8
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %err, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %if.end106
  %call115 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 574, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.139, i64 0, i64 0), i8* noundef nonnull %11, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @test_fromdata_dh_named_group.group_name, i64 0, i64 0)) #8
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %err, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %lor.lhs.false113
  %31 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call118 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %31, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), %struct.bignum_st** noundef nonnull %pub_out) #8
  %cmp119 = icmp ne i32 %call118, 0
  %conv120 = zext i1 %cmp119 to i32
  %call121 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 576, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.140, i64 0, i64 0), i32 noundef %conv120) #8
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %err, label %lor.lhs.false123

lor.lhs.false123:                                 ; preds = %lor.lhs.false117
  %32 = load %struct.bignum_st*, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  %call124 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 578, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %32) #8
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %err, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %lor.lhs.false123
  %33 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call127 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %33, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), %struct.bignum_st** noundef nonnull %priv_out) #8
  %cmp128 = icmp ne i32 %call127, 0
  %conv129 = zext i1 %cmp128 to i32
  %call130 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 580, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.142, i64 0, i64 0), i32 noundef %conv129) #8
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %err, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false126
  %34 = load %struct.bignum_st*, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  %call133 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 581, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %34) #8
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %err, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false132
  %35 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call136 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), %struct.bignum_st** noundef nonnull %p) #8
  %cmp137 = icmp ne i32 %call136, 0
  %conv138 = zext i1 %cmp137 to i32
  %call139 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 582, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.144, i64 0, i64 0), i32 noundef %conv138) #8
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %err, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %lor.lhs.false135
  %36 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  %call142 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 583, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.146, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), %struct.bignum_st* noundef nonnull @ossl_bignum_ffdhe2048_p, %struct.bignum_st* noundef %36) #8
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %err, label %lor.lhs.false144

lor.lhs.false144:                                 ; preds = %lor.lhs.false141
  %37 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call145 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %37, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0), %struct.bignum_st** noundef nonnull %q) #8
  %cmp146 = icmp ne i32 %call145, 0
  %conv147 = zext i1 %cmp146 to i32
  %call148 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.147, i64 0, i64 0), i32 noundef %conv147) #8
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %err, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false144
  %38 = load i8*, i8** %24, align 8, !tbaa !3
  %call151 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 585, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0), i8* noundef %38) #8
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %err, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %lor.lhs.false150
  %39 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call154 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %39, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0), %struct.bignum_st** noundef nonnull %g) #8
  %cmp155 = icmp ne i32 %call154, 0
  %conv156 = zext i1 %cmp155 to i32
  %call157 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 586, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.149, i64 0, i64 0), i32 noundef %conv156) #8
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %err, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %lor.lhs.false153
  %40 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !3
  %call160 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 587, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.151, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0), %struct.bignum_st* noundef nonnull @ossl_bignum_const_2, %struct.bignum_st* noundef %40) #8
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %err, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %lor.lhs.false159
  %41 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call163 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %41, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i64 0, i64 0), %struct.bignum_st** noundef nonnull %j) #8
  %cmp164 = icmp ne i32 %call163, 0
  %conv165 = zext i1 %cmp164 to i32
  %call166 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 590, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.152, i64 0, i64 0), i32 noundef %conv165) #8
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %err, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false162
  %42 = load i8*, i8** %25, align 8, !tbaa !3
  %call169 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 591, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i64 0, i64 0), i8* noundef %42) #8
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %err, label %lor.lhs.false171

lor.lhs.false171:                                 ; preds = %lor.lhs.false168
  %43 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call173 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %43, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i8* noundef nonnull %12, i64 noundef 32, i64* noundef nonnull %len) #8
  %cmp174 = icmp ne i32 %call173, 0
  %conv175 = zext i1 %cmp174 to i32
  %call176 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 596, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.154, i64 0, i64 0), i32 noundef %conv175) #8
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %err, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %lor.lhs.false171
  %44 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call179 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %44, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i64 0, i64 0), i32* noundef nonnull %gindex) #8
  %cmp180 = icmp ne i32 %call179, 0
  %conv181 = zext i1 %cmp180 to i32
  %call182 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 598, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.156, i64 0, i64 0), i32 noundef %conv181) #8
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %err, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %lor.lhs.false178
  %45 = load i32, i32* %gindex, align 4, !tbaa !15
  %call185 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 599, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i64 0, i64 0), i32 noundef %45, i32 noundef -1) #8
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %err, label %lor.lhs.false187

lor.lhs.false187:                                 ; preds = %lor.lhs.false184
  %46 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call188 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %46, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i64 0, i64 0), i32* noundef nonnull %hindex) #8
  %cmp189 = icmp ne i32 %call188, 0
  %conv190 = zext i1 %cmp189 to i32
  %call191 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 601, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.159, i64 0, i64 0), i32 noundef %conv190) #8
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %err, label %lor.lhs.false193

lor.lhs.false193:                                 ; preds = %lor.lhs.false187
  %47 = load i32, i32* %hindex, align 4, !tbaa !15
  %call194 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 602, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %47, i32 noundef 0) #8
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %err, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %lor.lhs.false193
  %48 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call197 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %48, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i64 0, i64 0), i32* noundef nonnull %pcounter) #8
  %cmp198 = icmp ne i32 %call197, 0
  %conv199 = zext i1 %cmp198 to i32
  %call200 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 605, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.161, i64 0, i64 0), i32 noundef %conv199) #8
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %err, label %lor.lhs.false202

lor.lhs.false202:                                 ; preds = %lor.lhs.false196
  %49 = load i32, i32* %pcounter, align 4, !tbaa !15
  %call203 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 606, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i64 0, i64 0), i32 noundef %49, i32 noundef -1) #8
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %err, label %if.end206

if.end206:                                        ; preds = %lor.lhs.false202
  %50 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %50) #8
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !3
  %51 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %51) #8
  store %struct.bignum_st* null, %struct.bignum_st** %q, align 8, !tbaa !3
  %52 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %52) #8
  store %struct.bignum_st* null, %struct.bignum_st** %g, align 8, !tbaa !3
  %53 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %53) #8
  store %struct.bignum_st* null, %struct.bignum_st** %j, align 8, !tbaa !3
  %54 = load %struct.bignum_st*, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %54) #8
  store %struct.bignum_st* null, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  %55 = load %struct.bignum_st*, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %55) #8
  store %struct.bignum_st* null, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  %56 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call207 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %56, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0)) #8
  %57 = bitcast %struct.evp_pkey_ctx_st* %call207 to i8*
  %call208 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 621, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i8* noundef %57) #8
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %err, label %if.end211

if.end211:                                        ; preds = %if.end206
  %call212 = call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef %call207) #8
  %cmp213 = icmp ne i32 %call212, 0
  %conv214 = zext i1 %cmp213 to i32
  %call215 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 624, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv214) #8
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %err, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %if.end211
  %call218 = call i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef %call207) #8
  %cmp219 = icmp ne i32 %call218, 0
  %conv220 = zext i1 %cmp219 to i32
  %call221 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 625, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv220) #8
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %err, label %lor.lhs.false223

lor.lhs.false223:                                 ; preds = %lor.lhs.false217
  %call224 = call i32 @EVP_PKEY_private_check(%struct.evp_pkey_ctx_st* noundef %call207) #8
  %cmp225 = icmp ne i32 %call224, 0
  %conv226 = zext i1 %cmp225 to i32
  %call227 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 626, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv226) #8
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %err, label %lor.lhs.false229

lor.lhs.false229:                                 ; preds = %lor.lhs.false223
  %call230 = call i32 @EVP_PKEY_pairwise_check(%struct.evp_pkey_ctx_st* noundef %call207) #8
  %cmp231 = icmp ne i32 %call230, 0
  %conv232 = zext i1 %cmp231 to i32
  %call233 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 627, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv232) #8
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %err, label %if.end236

if.end236:                                        ; preds = %lor.lhs.false229
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call207) #8
  %call237 = call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %58 = bitcast %struct.evp_pkey_st* %call237 to i8*
  %call238 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 632, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0), i8* noundef %58) #8
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %err, label %lor.lhs.false240

lor.lhs.false240:                                 ; preds = %if.end236
  %59 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call241 = call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef %call237, %struct.evp_pkey_st* noundef %59) #8
  %cmp242 = icmp ne i32 %call241, 0
  %conv243 = zext i1 %cmp242 to i32
  %call244 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 633, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv243) #8
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %err, label %if.end247

if.end247:                                        ; preds = %lor.lhs.false240
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call237) #8
  %60 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call248 = call fastcc i32 @test_print_key_using_pem(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), %struct.evp_pkey_st* noundef %60) #10
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %err, label %land.end

land.end:                                         ; preds = %if.end247
  %61 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call250 = call fastcc i32 @test_print_key_using_encoder(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i64 0, i64 0), %struct.evp_pkey_st* noundef %61) #10
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %err, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %land.end
  %62 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call254 = call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef %62) #8
  %63 = bitcast %struct.evp_pkey_st* %call254 to i8*
  %call255 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 641, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef %63) #8
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %err, label %land.rhs260

land.rhs260:                                      ; preds = %lor.lhs.false253
  %64 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call261 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %64, %struct.evp_pkey_st* noundef %call254) #8
  %call262 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 643, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call261, i32 noundef 1) #8
  %tobool263.not = icmp eq i32 %call262, 0
  %65 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %65) #8
  store %struct.evp_pkey_st* %call254, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br i1 %tobool263.not, label %err, label %while.cond, !llvm.loop !17

err:                                              ; preds = %if.end247, %while.cond, %land.rhs260, %land.end, %lor.lhs.false253, %if.end236, %lor.lhs.false240, %if.end211, %lor.lhs.false217, %lor.lhs.false223, %lor.lhs.false229, %if.end206, %if.end106, %lor.lhs.false113, %lor.lhs.false117, %lor.lhs.false123, %lor.lhs.false126, %lor.lhs.false132, %lor.lhs.false135, %lor.lhs.false141, %lor.lhs.false144, %lor.lhs.false150, %lor.lhs.false153, %lor.lhs.false159, %lor.lhs.false162, %lor.lhs.false168, %lor.lhs.false171, %lor.lhs.false178, %lor.lhs.false184, %lor.lhs.false187, %lor.lhs.false193, %lor.lhs.false196, %lor.lhs.false202, %while.body, %lor.lhs.false91, %lor.lhs.false95, %lor.lhs.false99, %if.end52, %lor.lhs.false58, %lor.lhs.false61, %lor.lhs.false67, %lor.lhs.false70, %lor.lhs.false77, %if.end39, %lor.lhs.false45, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false19, %lor.lhs.false25, %lor.lhs.false31
  %ret.1 = phi i32 [ 0, %lor.lhs.false77 ], [ 0, %lor.lhs.false70 ], [ 0, %lor.lhs.false67 ], [ 0, %lor.lhs.false61 ], [ 0, %lor.lhs.false58 ], [ 0, %if.end52 ], [ 0, %lor.lhs.false45 ], [ 0, %if.end39 ], [ 0, %if.end ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false19 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end247 ], [ 1, %while.cond ], [ 0, %while.body ], [ 0, %lor.lhs.false91 ], [ 0, %lor.lhs.false95 ], [ 0, %lor.lhs.false99 ], [ 0, %if.end106 ], [ 0, %lor.lhs.false113 ], [ 0, %lor.lhs.false117 ], [ 0, %lor.lhs.false123 ], [ 0, %lor.lhs.false126 ], [ 0, %lor.lhs.false132 ], [ 0, %lor.lhs.false135 ], [ 0, %lor.lhs.false141 ], [ 0, %lor.lhs.false144 ], [ 0, %lor.lhs.false150 ], [ 0, %lor.lhs.false153 ], [ 0, %lor.lhs.false159 ], [ 0, %lor.lhs.false162 ], [ 0, %lor.lhs.false168 ], [ 0, %lor.lhs.false171 ], [ 0, %lor.lhs.false178 ], [ 0, %lor.lhs.false184 ], [ 0, %lor.lhs.false187 ], [ 0, %lor.lhs.false193 ], [ 0, %lor.lhs.false196 ], [ 0, %lor.lhs.false202 ], [ 0, %if.end206 ], [ 0, %if.end211 ], [ 0, %lor.lhs.false217 ], [ 0, %lor.lhs.false223 ], [ 0, %lor.lhs.false229 ], [ 0, %if.end236 ], [ 0, %lor.lhs.false240 ], [ 0, %land.end ], [ 1, %lor.lhs.false253 ], [ 0, %land.rhs260 ]
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call35, %lor.lhs.false77 ], [ %call35, %lor.lhs.false70 ], [ %call35, %lor.lhs.false67 ], [ %call35, %lor.lhs.false61 ], [ %call35, %lor.lhs.false58 ], [ %call35, %if.end52 ], [ %call35, %lor.lhs.false45 ], [ %call35, %if.end39 ], [ %call35, %if.end ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call35, %lor.lhs.false99 ], [ %call35, %lor.lhs.false95 ], [ %call35, %lor.lhs.false91 ], [ %call35, %while.body ], [ %call35, %lor.lhs.false202 ], [ %call35, %lor.lhs.false196 ], [ %call35, %lor.lhs.false193 ], [ %call35, %lor.lhs.false187 ], [ %call35, %lor.lhs.false184 ], [ %call35, %lor.lhs.false178 ], [ %call35, %lor.lhs.false171 ], [ %call35, %lor.lhs.false168 ], [ %call35, %lor.lhs.false162 ], [ %call35, %lor.lhs.false159 ], [ %call35, %lor.lhs.false153 ], [ %call35, %lor.lhs.false150 ], [ %call35, %lor.lhs.false144 ], [ %call35, %lor.lhs.false141 ], [ %call35, %lor.lhs.false135 ], [ %call35, %lor.lhs.false132 ], [ %call35, %lor.lhs.false126 ], [ %call35, %lor.lhs.false123 ], [ %call35, %lor.lhs.false117 ], [ %call35, %lor.lhs.false113 ], [ %call35, %if.end106 ], [ %call35, %if.end206 ], [ %call35, %lor.lhs.false229 ], [ %call35, %lor.lhs.false223 ], [ %call35, %lor.lhs.false217 ], [ %call35, %if.end211 ], [ %call35, %lor.lhs.false240 ], [ %call35, %if.end236 ], [ %call35, %lor.lhs.false253 ], [ %call35, %land.end ], [ %call35, %land.rhs260 ], [ %call35, %while.cond ], [ %call35, %if.end247 ]
  %key_ctx.1 = phi %struct.evp_pkey_ctx_st* [ null, %lor.lhs.false77 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false67 ], [ null, %lor.lhs.false61 ], [ null, %lor.lhs.false58 ], [ null, %if.end52 ], [ null, %lor.lhs.false45 ], [ null, %if.end39 ], [ null, %if.end ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end247 ], [ null, %while.cond ], [ null, %while.body ], [ null, %lor.lhs.false91 ], [ null, %lor.lhs.false95 ], [ null, %lor.lhs.false99 ], [ null, %if.end106 ], [ null, %lor.lhs.false113 ], [ null, %lor.lhs.false117 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false126 ], [ null, %lor.lhs.false132 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false141 ], [ null, %lor.lhs.false144 ], [ null, %lor.lhs.false150 ], [ null, %lor.lhs.false153 ], [ null, %lor.lhs.false159 ], [ null, %lor.lhs.false162 ], [ null, %lor.lhs.false168 ], [ null, %lor.lhs.false171 ], [ null, %lor.lhs.false178 ], [ null, %lor.lhs.false184 ], [ null, %lor.lhs.false187 ], [ null, %lor.lhs.false193 ], [ null, %lor.lhs.false196 ], [ null, %lor.lhs.false202 ], [ %call207, %if.end206 ], [ %call207, %if.end211 ], [ %call207, %lor.lhs.false217 ], [ %call207, %lor.lhs.false223 ], [ %call207, %lor.lhs.false229 ], [ null, %if.end236 ], [ null, %lor.lhs.false240 ], [ null, %land.end ], [ null, %lor.lhs.false253 ], [ null, %land.rhs260 ]
  %copy_pk.1 = phi %struct.evp_pkey_st* [ null, %lor.lhs.false77 ], [ null, %lor.lhs.false70 ], [ null, %lor.lhs.false67 ], [ null, %lor.lhs.false61 ], [ null, %lor.lhs.false58 ], [ null, %if.end52 ], [ null, %lor.lhs.false45 ], [ null, %if.end39 ], [ null, %if.end ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end247 ], [ null, %while.cond ], [ null, %while.body ], [ null, %lor.lhs.false91 ], [ null, %lor.lhs.false95 ], [ null, %lor.lhs.false99 ], [ null, %if.end106 ], [ null, %lor.lhs.false113 ], [ null, %lor.lhs.false117 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false126 ], [ null, %lor.lhs.false132 ], [ null, %lor.lhs.false135 ], [ null, %lor.lhs.false141 ], [ null, %lor.lhs.false144 ], [ null, %lor.lhs.false150 ], [ null, %lor.lhs.false153 ], [ null, %lor.lhs.false159 ], [ null, %lor.lhs.false162 ], [ null, %lor.lhs.false168 ], [ null, %lor.lhs.false171 ], [ null, %lor.lhs.false178 ], [ null, %lor.lhs.false184 ], [ null, %lor.lhs.false187 ], [ null, %lor.lhs.false193 ], [ null, %lor.lhs.false196 ], [ null, %lor.lhs.false202 ], [ null, %if.end206 ], [ null, %if.end211 ], [ null, %lor.lhs.false217 ], [ null, %lor.lhs.false223 ], [ null, %lor.lhs.false229 ], [ %call237, %if.end236 ], [ %call237, %lor.lhs.false240 ], [ null, %land.end ], [ null, %lor.lhs.false253 ], [ null, %land.rhs260 ]
  %pub.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false77 ], [ %call2, %lor.lhs.false70 ], [ %call2, %lor.lhs.false67 ], [ %call2, %lor.lhs.false61 ], [ %call2, %lor.lhs.false58 ], [ %call2, %if.end52 ], [ %call2, %lor.lhs.false45 ], [ %call2, %if.end39 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false31 ], [ %call2, %lor.lhs.false25 ], [ %call2, %lor.lhs.false19 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false99 ], [ %call2, %lor.lhs.false95 ], [ %call2, %lor.lhs.false91 ], [ %call2, %while.body ], [ %call2, %lor.lhs.false202 ], [ %call2, %lor.lhs.false196 ], [ %call2, %lor.lhs.false193 ], [ %call2, %lor.lhs.false187 ], [ %call2, %lor.lhs.false184 ], [ %call2, %lor.lhs.false178 ], [ %call2, %lor.lhs.false171 ], [ %call2, %lor.lhs.false168 ], [ %call2, %lor.lhs.false162 ], [ %call2, %lor.lhs.false159 ], [ %call2, %lor.lhs.false153 ], [ %call2, %lor.lhs.false150 ], [ %call2, %lor.lhs.false144 ], [ %call2, %lor.lhs.false141 ], [ %call2, %lor.lhs.false135 ], [ %call2, %lor.lhs.false132 ], [ %call2, %lor.lhs.false126 ], [ %call2, %lor.lhs.false123 ], [ %call2, %lor.lhs.false117 ], [ %call2, %lor.lhs.false113 ], [ %call2, %if.end106 ], [ %call2, %if.end206 ], [ %call2, %lor.lhs.false229 ], [ %call2, %lor.lhs.false223 ], [ %call2, %lor.lhs.false217 ], [ %call2, %if.end211 ], [ %call2, %lor.lhs.false240 ], [ %call2, %if.end236 ], [ %call2, %lor.lhs.false253 ], [ %call2, %land.end ], [ %call2, %land.rhs260 ], [ %call2, %while.cond ], [ %call2, %if.end247 ]
  %priv.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false77 ], [ %call6, %lor.lhs.false70 ], [ %call6, %lor.lhs.false67 ], [ %call6, %lor.lhs.false61 ], [ %call6, %lor.lhs.false58 ], [ %call6, %if.end52 ], [ %call6, %lor.lhs.false45 ], [ %call6, %if.end39 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false31 ], [ %call6, %lor.lhs.false25 ], [ %call6, %lor.lhs.false19 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false99 ], [ %call6, %lor.lhs.false95 ], [ %call6, %lor.lhs.false91 ], [ %call6, %while.body ], [ %call6, %lor.lhs.false202 ], [ %call6, %lor.lhs.false196 ], [ %call6, %lor.lhs.false193 ], [ %call6, %lor.lhs.false187 ], [ %call6, %lor.lhs.false184 ], [ %call6, %lor.lhs.false178 ], [ %call6, %lor.lhs.false171 ], [ %call6, %lor.lhs.false168 ], [ %call6, %lor.lhs.false162 ], [ %call6, %lor.lhs.false159 ], [ %call6, %lor.lhs.false153 ], [ %call6, %lor.lhs.false150 ], [ %call6, %lor.lhs.false144 ], [ %call6, %lor.lhs.false141 ], [ %call6, %lor.lhs.false135 ], [ %call6, %lor.lhs.false132 ], [ %call6, %lor.lhs.false126 ], [ %call6, %lor.lhs.false123 ], [ %call6, %lor.lhs.false117 ], [ %call6, %lor.lhs.false113 ], [ %call6, %if.end106 ], [ %call6, %if.end206 ], [ %call6, %lor.lhs.false229 ], [ %call6, %lor.lhs.false223 ], [ %call6, %lor.lhs.false217 ], [ %call6, %if.end211 ], [ %call6, %lor.lhs.false240 ], [ %call6, %if.end236 ], [ %call6, %lor.lhs.false253 ], [ %call6, %land.end ], [ %call6, %land.rhs260 ], [ %call6, %while.cond ], [ %call6, %if.end247 ]
  %fromdata_params.0 = phi %struct.ossl_param_st* [ %call32, %lor.lhs.false77 ], [ %call32, %lor.lhs.false70 ], [ %call32, %lor.lhs.false67 ], [ %call32, %lor.lhs.false61 ], [ %call32, %lor.lhs.false58 ], [ %call32, %if.end52 ], [ %call32, %lor.lhs.false45 ], [ %call32, %if.end39 ], [ %call32, %if.end ], [ %call32, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false19 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call32, %lor.lhs.false99 ], [ %call32, %lor.lhs.false95 ], [ %call32, %lor.lhs.false91 ], [ %call32, %while.body ], [ %call32, %lor.lhs.false202 ], [ %call32, %lor.lhs.false196 ], [ %call32, %lor.lhs.false193 ], [ %call32, %lor.lhs.false187 ], [ %call32, %lor.lhs.false184 ], [ %call32, %lor.lhs.false178 ], [ %call32, %lor.lhs.false171 ], [ %call32, %lor.lhs.false168 ], [ %call32, %lor.lhs.false162 ], [ %call32, %lor.lhs.false159 ], [ %call32, %lor.lhs.false153 ], [ %call32, %lor.lhs.false150 ], [ %call32, %lor.lhs.false144 ], [ %call32, %lor.lhs.false141 ], [ %call32, %lor.lhs.false135 ], [ %call32, %lor.lhs.false132 ], [ %call32, %lor.lhs.false126 ], [ %call32, %lor.lhs.false123 ], [ %call32, %lor.lhs.false117 ], [ %call32, %lor.lhs.false113 ], [ %call32, %if.end106 ], [ %call32, %if.end206 ], [ %call32, %lor.lhs.false229 ], [ %call32, %lor.lhs.false223 ], [ %call32, %lor.lhs.false217 ], [ %call32, %if.end211 ], [ %call32, %lor.lhs.false240 ], [ %call32, %if.end236 ], [ %call32, %lor.lhs.false253 ], [ %call32, %land.end ], [ %call32, %land.rhs260 ], [ %call32, %while.cond ], [ %call32, %if.end247 ]
  %66 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %66) #8
  %67 = load %struct.bignum_st*, %struct.bignum_st** %q, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %67) #8
  %68 = load %struct.bignum_st*, %struct.bignum_st** %g, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %68) #8
  %69 = load %struct.bignum_st*, %struct.bignum_st** %j, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %69) #8
  call void @BN_free(%struct.bignum_st* noundef %pub.0) #8
  call void @BN_free(%struct.bignum_st* noundef %priv.0) #8
  %70 = load %struct.bignum_st*, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %70) #8
  %71 = load %struct.bignum_st*, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %71) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %copy_pk.1) #8
  %72 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %72) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %key_ctx.1) #8
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %fromdata_params.0) #8
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call) #8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_check_dsa() #0 {
entry:
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), i8* noundef null) #8
  %0 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1610, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.168, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef %call) #8
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1611, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.170, i64 0, i64 0), i32 noundef %conv) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef %call) #8
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1612, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.171, i64 0, i64 0), i32 noundef %conv8) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false5
  %call12 = tail call i32 @EVP_PKEY_private_check(%struct.evp_pkey_ctx_st* noundef %call) #8
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1613, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.172, i64 0, i64 0), i32 noundef %conv14) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false11
  %call18 = tail call i32 @EVP_PKEY_pairwise_check(%struct.evp_pkey_ctx_st* noundef %call) #8
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1614, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.173, i64 0, i64 0), i32 noundef %conv20) #8
  %tobool22.not = icmp ne i32 %call21, 0
  %spec.select = zext i1 %tobool22.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false17, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false11
  %ret.0 = phi i32 [ 0, %lor.lhs.false11 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false17 ]
  tail call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_fromdata_dsa_fips186_4() #0 {
entry:
  %pk = alloca %struct.evp_pkey_st*, align 8
  %pub_out = alloca %struct.bignum_st*, align 8
  %priv_out = alloca %struct.bignum_st*, align 8
  %p_out = alloca %struct.bignum_st*, align 8
  %q_out = alloca %struct.bignum_st*, align 8
  %g_out = alloca %struct.bignum_st*, align 8
  %j_out = alloca %struct.bignum_st*, align 8
  %gindex_out = alloca i32, align 4
  %pcounter_out = alloca i32, align 4
  %hindex_out = alloca i32, align 4
  %name_out = alloca [80 x i8], align 16
  %seed_out = alloca [32 x i8], align 16
  %len = alloca i64, align 8
  %0 = bitcast %struct.evp_pkey_st** %pk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %1 = bitcast %struct.bignum_st** %pub_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.bignum_st* null, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  %2 = bitcast %struct.bignum_st** %priv_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store %struct.bignum_st* null, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  %3 = bitcast %struct.bignum_st** %p_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  store %struct.bignum_st* null, %struct.bignum_st** %p_out, align 8, !tbaa !3
  %4 = bitcast %struct.bignum_st** %q_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  store %struct.bignum_st* null, %struct.bignum_st** %q_out, align 8, !tbaa !3
  %5 = bitcast %struct.bignum_st** %g_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  store %struct.bignum_st* null, %struct.bignum_st** %g_out, align 8, !tbaa !3
  %6 = bitcast %struct.bignum_st** %j_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store %struct.bignum_st* null, %struct.bignum_st** %j_out, align 8, !tbaa !3
  %7 = bitcast i32* %gindex_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9
  store i32 0, i32* %gindex_out, align 4, !tbaa !15
  %8 = bitcast i32* %pcounter_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #9
  store i32 0, i32* %pcounter_out, align 4, !tbaa !15
  %9 = bitcast i32* %hindex_out to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #9
  store i32 0, i32* %hindex_out, align 4, !tbaa !15
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %name_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %10) #9
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %seed_out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #9
  %12 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #9
  %call = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %13 = bitcast %struct.ossl_param_bld_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1458, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* noundef %13) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @test_fromdata_dsa_fips186_4.pub_data, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #8
  %14 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1459, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.122, i64 0, i64 0), i8* noundef %14) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @test_fromdata_dsa_fips186_4.priv_data, i64 0, i64 0), i32 noundef 33, %struct.bignum_st* noundef null) #8
  %15 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1460, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.123, i64 0, i64 0), i8* noundef %15) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([257 x i8], [257 x i8]* @test_fromdata_dsa_fips186_4.p_data, i64 0, i64 0), i32 noundef 257, %struct.bignum_st* noundef null) #8
  %16 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1461, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.174, i64 0, i64 0), i8* noundef %16) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %call14 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_fromdata_dsa_fips186_4.q_data, i64 0, i64 0), i32 noundef 32, %struct.bignum_st* noundef null) #8
  %17 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1462, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.175, i64 0, i64 0), i8* noundef %17) #8
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %call18 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @test_fromdata_dsa_fips186_4.g_data, i64 0, i64 0), i32 noundef 256, %struct.bignum_st* noundef null) #8
  %18 = bitcast %struct.bignum_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1463, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.176, i64 0, i64 0), i8* noundef %18) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %call22 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), %struct.bignum_st* noundef %call10) #8
  %cmp = icmp ne i32 %call22, 0
  %conv = zext i1 %cmp to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1465, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.177, i64 0, i64 0), i32 noundef %conv) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %call26 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0), %struct.bignum_st* noundef %call14) #8
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1466, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.178, i64 0, i64 0), i32 noundef %conv28) #8
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %err, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %call32 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0), %struct.bignum_st* noundef %call18) #8
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1467, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.179, i64 0, i64 0), i32 noundef %conv34) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %call38 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_fromdata_dsa_fips186_4.seed_data, i64 0, i64 0), i64 noundef 32) #8
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1471, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @.str.180, i64 0, i64 0), i32 noundef %conv40) #8
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %err, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false37
  %call44 = tail call i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i64 0, i64 0), i32 noundef 1) #8
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1473, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.181, i64 0, i64 0), i32 noundef %conv46) #8
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false43
  %call50 = tail call i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i64 0, i64 0), i32 noundef 53) #8
  %cmp51 = icmp ne i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %call53 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1476, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.182, i64 0, i64 0), i32 noundef %conv52) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false49
  %call56 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), %struct.bignum_st* noundef %call2) #8
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1478, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.128, i64 0, i64 0), i32 noundef %conv58) #8
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false55
  %call62 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), %struct.bignum_st* noundef %call6) #8
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1480, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.130, i64 0, i64 0), i32 noundef %conv64) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %err, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false61
  %call68 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call) #8
  %19 = bitcast %struct.ossl_param_st* %call68 to i8*
  %call69 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1481, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i64 0, i64 0), i8* noundef %19) #8
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false67
  %call71 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), i8* noundef null) #8
  %20 = bitcast %struct.evp_pkey_ctx_st* %call71 to i8*
  %call72 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1484, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.168, i64 0, i64 0), i8* noundef %20) #8
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %if.end75

if.end75:                                         ; preds = %if.end
  %call76 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call71) #8
  %cmp77 = icmp ne i32 %call76, 0
  %conv78 = zext i1 %cmp77 to i32
  %call79 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1487, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv78) #8
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %err, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.end75
  %call82 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call71, %struct.evp_pkey_st** noundef nonnull %pk, i32 noundef 135, %struct.ossl_param_st* noundef %call68) #8
  %cmp83 = icmp ne i32 %call82, 0
  %conv84 = zext i1 %cmp83 to i32
  %call85 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1489, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv84) #8
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %err, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false81
  %21 = bitcast %struct.bignum_st** %j_out to i8**
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br label %while.body

while.cond:                                       ; preds = %land.rhs258
  %cmp89 = icmp eq %struct.evp_pkey_st* %call252, null
  br i1 %cmp89, label %while.body, label %err, !llvm.loop !18

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %22 = phi %struct.evp_pkey_st* [ %.pre, %while.cond.preheader ], [ null, %while.cond ]
  %g.0321 = phi %struct.bignum_st* [ %call18, %while.cond.preheader ], [ null, %while.cond ]
  %q.0320 = phi %struct.bignum_st* [ %call14, %while.cond.preheader ], [ null, %while.cond ]
  %p.0319 = phi %struct.bignum_st* [ %call10, %while.cond.preheader ], [ null, %while.cond ]
  %call91 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %22) #8
  %call92 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1494, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.134, i64 0, i64 0), i32 noundef %call91, i32 noundef 2048) #8
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %while.body
  %23 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call95 = call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef %23) #8
  %call96 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1495, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), i32 noundef %call95, i32 noundef 112) #8
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %err, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %lor.lhs.false94
  %24 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call99 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %24) #8
  %call100 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1496, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.183, i64 0, i64 0), i32 noundef %call99, i32 noundef 72) #8
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false98
  %25 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call103 = call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef %25) #8
  %cmp104 = icmp ne i32 %call103, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1497, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv105) #8
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %if.end109

if.end109:                                        ; preds = %lor.lhs.false102
  %26 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call110 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %26, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %10, i64 noundef 80, i64* noundef nonnull %len) #8
  %cmp111 = icmp ne i32 %call110, 0
  %conv112 = zext i1 %cmp111 to i32
  %call113 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1504, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.137, i64 0, i64 0), i32 noundef %conv112) #8
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %err, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %if.end109
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call116 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), %struct.bignum_st** noundef nonnull %pub_out) #8
  %cmp117 = icmp ne i32 %call116, 0
  %conv118 = zext i1 %cmp117 to i32
  %call119 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1506, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.140, i64 0, i64 0), i32 noundef %conv118) #8
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %err, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %lor.lhs.false115
  %28 = load %struct.bignum_st*, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  %call122 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1507, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %28) #8
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %err, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %lor.lhs.false121
  %29 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call125 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %29, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), %struct.bignum_st** noundef nonnull %priv_out) #8
  %cmp126 = icmp ne i32 %call125, 0
  %conv127 = zext i1 %cmp126 to i32
  %call128 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1509, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.142, i64 0, i64 0), i32 noundef %conv127) #8
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %err, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %lor.lhs.false124
  %30 = load %struct.bignum_st*, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  %call131 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1510, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i64 0, i64 0), %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %30) #8
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %err, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %lor.lhs.false130
  %31 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call134 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %31, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), %struct.bignum_st** noundef nonnull %p_out) #8
  %cmp135 = icmp ne i32 %call134, 0
  %conv136 = zext i1 %cmp135 to i32
  %call137 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1512, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.184, i64 0, i64 0), i32 noundef %conv136) #8
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %err, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false133
  %32 = load %struct.bignum_st*, %struct.bignum_st** %p_out, align 8, !tbaa !3
  %call140 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1513, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.185, i64 0, i64 0), %struct.bignum_st* noundef %p.0319, %struct.bignum_st* noundef %32) #8
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %err, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false139
  %33 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call143 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0), %struct.bignum_st** noundef nonnull %q_out) #8
  %cmp144 = icmp ne i32 %call143, 0
  %conv145 = zext i1 %cmp144 to i32
  %call146 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1515, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.186, i64 0, i64 0), i32 noundef %conv145) #8
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %err, label %lor.lhs.false148

lor.lhs.false148:                                 ; preds = %lor.lhs.false142
  %34 = load %struct.bignum_st*, %struct.bignum_st** %q_out, align 8, !tbaa !3
  %call149 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1516, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.148, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.187, i64 0, i64 0), %struct.bignum_st* noundef %q.0320, %struct.bignum_st* noundef %34) #8
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %err, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false148
  %35 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call152 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0), %struct.bignum_st** noundef nonnull %g_out) #8
  %cmp153 = icmp ne i32 %call152, 0
  %conv154 = zext i1 %cmp153 to i32
  %call155 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1518, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.188, i64 0, i64 0), i32 noundef %conv154) #8
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %err, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %lor.lhs.false151
  %36 = load %struct.bignum_st*, %struct.bignum_st** %g_out, align 8, !tbaa !3
  %call158 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1519, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.150, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.189, i64 0, i64 0), %struct.bignum_st* noundef %g.0321, %struct.bignum_st* noundef %36) #8
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %err, label %lor.lhs.false160

lor.lhs.false160:                                 ; preds = %lor.lhs.false157
  %37 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call161 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %37, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i64 0, i64 0), %struct.bignum_st** noundef nonnull %j_out) #8
  %cmp162 = icmp ne i32 %call161, 0
  %conv163 = zext i1 %cmp162 to i32
  %call164 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1522, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.190, i64 0, i64 0), i32 noundef %conv163) #8
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %err, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %lor.lhs.false160
  %38 = load i8*, i8** %21, align 8, !tbaa !3
  %call167 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1523, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.191, i64 0, i64 0), i8* noundef %38) #8
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %err, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %lor.lhs.false166
  %39 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call171 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.155, i64 0, i64 0), i8* noundef nonnull %11, i64 noundef 32, i64* noundef nonnull %len) #8
  %cmp172 = icmp ne i32 %call171, 0
  %conv173 = zext i1 %cmp172 to i32
  %call174 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1528, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.154, i64 0, i64 0), i32 noundef %conv173) #8
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %err, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %lor.lhs.false169
  %40 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call177 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %40, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i64 0, i64 0), i32* noundef nonnull %gindex_out) #8
  %cmp178 = icmp ne i32 %call177, 0
  %conv179 = zext i1 %cmp178 to i32
  %call180 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1531, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.192, i64 0, i64 0), i32 noundef %conv179) #8
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %err, label %lor.lhs.false182

lor.lhs.false182:                                 ; preds = %lor.lhs.false176
  %41 = load i32, i32* %gindex_out, align 4, !tbaa !15
  %call183 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1532, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.157, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.193, i64 0, i64 0), i32 noundef 1, i32 noundef %41) #8
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %err, label %lor.lhs.false185

lor.lhs.false185:                                 ; preds = %lor.lhs.false182
  %42 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call186 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %42, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i64 0, i64 0), i32* noundef nonnull %hindex_out) #8
  %cmp187 = icmp ne i32 %call186, 0
  %conv188 = zext i1 %cmp187 to i32
  %call189 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1534, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.194, i64 0, i64 0), i32 noundef %conv188) #8
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %err, label %lor.lhs.false191

lor.lhs.false191:                                 ; preds = %lor.lhs.false185
  %43 = load i32, i32* %hindex_out, align 4, !tbaa !15
  %call192 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1535, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %43, i32 noundef 0) #8
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %err, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %lor.lhs.false191
  %44 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call195 = call i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef %44, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i64 0, i64 0), i32* noundef nonnull %pcounter_out) #8
  %cmp196 = icmp ne i32 %call195, 0
  %conv197 = zext i1 %cmp196 to i32
  %call198 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1538, i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.196, i64 0, i64 0), i32 noundef %conv197) #8
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %err, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %lor.lhs.false194
  %45 = load i32, i32* %pcounter_out, align 4, !tbaa !15
  %call201 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1539, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.197, i64 0, i64 0), i32 noundef 53, i32 noundef %45) #8
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %err, label %if.end204

if.end204:                                        ; preds = %lor.lhs.false200
  call void @BN_free(%struct.bignum_st* noundef %p.0319) #8
  call void @BN_free(%struct.bignum_st* noundef %q.0320) #8
  call void @BN_free(%struct.bignum_st* noundef %g.0321) #8
  %46 = load %struct.bignum_st*, %struct.bignum_st** %j_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %46) #8
  store %struct.bignum_st* null, %struct.bignum_st** %j_out, align 8, !tbaa !3
  %47 = load %struct.bignum_st*, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %47) #8
  store %struct.bignum_st* null, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  %48 = load %struct.bignum_st*, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %48) #8
  store %struct.bignum_st* null, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  %49 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call205 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %49, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i64 0, i64 0)) #8
  %50 = bitcast %struct.evp_pkey_ctx_st* %call205 to i8*
  %call206 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1554, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0), i8* noundef %50) #8
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %err, label %if.end209

if.end209:                                        ; preds = %if.end204
  %call210 = call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef %call205) #8
  %cmp211 = icmp ne i32 %call210, 0
  %conv212 = zext i1 %cmp211 to i32
  %call213 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1557, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv212) #8
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %err, label %lor.lhs.false215

lor.lhs.false215:                                 ; preds = %if.end209
  %call216 = call i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef %call205) #8
  %cmp217 = icmp ne i32 %call216, 0
  %conv218 = zext i1 %cmp217 to i32
  %call219 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1558, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i64 0, i64 0), i32 noundef %conv218) #8
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %err, label %lor.lhs.false221

lor.lhs.false221:                                 ; preds = %lor.lhs.false215
  %call222 = call i32 @EVP_PKEY_private_check(%struct.evp_pkey_ctx_st* noundef %call205) #8
  %cmp223 = icmp ne i32 %call222, 0
  %conv224 = zext i1 %cmp223 to i32
  %call225 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1559, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv224) #8
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %err, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %lor.lhs.false221
  %call228 = call i32 @EVP_PKEY_pairwise_check(%struct.evp_pkey_ctx_st* noundef %call205) #8
  %cmp229 = icmp ne i32 %call228, 0
  %conv230 = zext i1 %cmp229 to i32
  %call231 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1560, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv230) #8
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %err, label %if.end234

if.end234:                                        ; preds = %lor.lhs.false227
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call205) #8
  %call235 = call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %51 = bitcast %struct.evp_pkey_st* %call235 to i8*
  %call236 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1565, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0), i8* noundef %51) #8
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %err, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %if.end234
  %52 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call239 = call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef %call235, %struct.evp_pkey_st* noundef %52) #8
  %cmp240 = icmp ne i32 %call239, 0
  %conv241 = zext i1 %cmp240 to i32
  %call242 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1566, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv241) #8
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %err, label %if.end245

if.end245:                                        ; preds = %lor.lhs.false238
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call235) #8
  %53 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call246 = call fastcc i32 @test_print_key_using_pem(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), %struct.evp_pkey_st* noundef %53) #10
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %err, label %land.end

land.end:                                         ; preds = %if.end245
  %54 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call248 = call fastcc i32 @test_print_key_using_encoder(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), %struct.evp_pkey_st* noundef %54) #10
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %err, label %lor.lhs.false251

lor.lhs.false251:                                 ; preds = %land.end
  %55 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call252 = call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef %55) #8
  %56 = bitcast %struct.evp_pkey_st* %call252 to i8*
  %call253 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1574, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef %56) #8
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %err, label %land.rhs258

land.rhs258:                                      ; preds = %lor.lhs.false251
  %57 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call259 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %57, %struct.evp_pkey_st* noundef %call252) #8
  %call260 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1576, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call259, i32 noundef 1) #8
  %tobool261.not = icmp eq i32 %call260, 0
  %58 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %58) #8
  store %struct.evp_pkey_st* %call252, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br i1 %tobool261.not, label %err, label %while.cond, !llvm.loop !18

err:                                              ; preds = %if.end245, %while.cond, %land.rhs258, %land.end, %lor.lhs.false251, %if.end234, %lor.lhs.false238, %if.end209, %lor.lhs.false215, %lor.lhs.false221, %lor.lhs.false227, %if.end204, %if.end109, %lor.lhs.false115, %lor.lhs.false121, %lor.lhs.false124, %lor.lhs.false130, %lor.lhs.false133, %lor.lhs.false139, %lor.lhs.false142, %lor.lhs.false148, %lor.lhs.false151, %lor.lhs.false157, %lor.lhs.false160, %lor.lhs.false166, %lor.lhs.false169, %lor.lhs.false176, %lor.lhs.false182, %lor.lhs.false185, %lor.lhs.false191, %lor.lhs.false194, %lor.lhs.false200, %while.body, %lor.lhs.false94, %lor.lhs.false98, %lor.lhs.false102, %if.end75, %lor.lhs.false81, %if.end, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13, %lor.lhs.false17, %lor.lhs.false21, %lor.lhs.false25, %lor.lhs.false31, %lor.lhs.false37, %lor.lhs.false43, %lor.lhs.false49, %lor.lhs.false55, %lor.lhs.false61, %lor.lhs.false67
  %key_ctx.1 = phi %struct.evp_pkey_ctx_st* [ null, %lor.lhs.false81 ], [ null, %if.end75 ], [ null, %if.end ], [ null, %lor.lhs.false67 ], [ null, %lor.lhs.false61 ], [ null, %lor.lhs.false55 ], [ null, %lor.lhs.false49 ], [ null, %lor.lhs.false43 ], [ null, %lor.lhs.false37 ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end245 ], [ null, %while.cond ], [ null, %while.body ], [ null, %lor.lhs.false94 ], [ null, %lor.lhs.false98 ], [ null, %lor.lhs.false102 ], [ null, %if.end109 ], [ null, %lor.lhs.false115 ], [ null, %lor.lhs.false121 ], [ null, %lor.lhs.false124 ], [ null, %lor.lhs.false130 ], [ null, %lor.lhs.false133 ], [ null, %lor.lhs.false139 ], [ null, %lor.lhs.false142 ], [ null, %lor.lhs.false148 ], [ null, %lor.lhs.false151 ], [ null, %lor.lhs.false157 ], [ null, %lor.lhs.false160 ], [ null, %lor.lhs.false166 ], [ null, %lor.lhs.false169 ], [ null, %lor.lhs.false176 ], [ null, %lor.lhs.false182 ], [ null, %lor.lhs.false185 ], [ null, %lor.lhs.false191 ], [ null, %lor.lhs.false194 ], [ null, %lor.lhs.false200 ], [ %call205, %if.end204 ], [ %call205, %if.end209 ], [ %call205, %lor.lhs.false215 ], [ %call205, %lor.lhs.false221 ], [ %call205, %lor.lhs.false227 ], [ null, %if.end234 ], [ null, %lor.lhs.false238 ], [ null, %land.end ], [ null, %lor.lhs.false251 ], [ null, %land.rhs258 ]
  %copy_pk.1 = phi %struct.evp_pkey_st* [ null, %lor.lhs.false81 ], [ null, %if.end75 ], [ null, %if.end ], [ null, %lor.lhs.false67 ], [ null, %lor.lhs.false61 ], [ null, %lor.lhs.false55 ], [ null, %lor.lhs.false49 ], [ null, %lor.lhs.false43 ], [ null, %lor.lhs.false37 ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end245 ], [ null, %while.cond ], [ null, %while.body ], [ null, %lor.lhs.false94 ], [ null, %lor.lhs.false98 ], [ null, %lor.lhs.false102 ], [ null, %if.end109 ], [ null, %lor.lhs.false115 ], [ null, %lor.lhs.false121 ], [ null, %lor.lhs.false124 ], [ null, %lor.lhs.false130 ], [ null, %lor.lhs.false133 ], [ null, %lor.lhs.false139 ], [ null, %lor.lhs.false142 ], [ null, %lor.lhs.false148 ], [ null, %lor.lhs.false151 ], [ null, %lor.lhs.false157 ], [ null, %lor.lhs.false160 ], [ null, %lor.lhs.false166 ], [ null, %lor.lhs.false169 ], [ null, %lor.lhs.false176 ], [ null, %lor.lhs.false182 ], [ null, %lor.lhs.false185 ], [ null, %lor.lhs.false191 ], [ null, %lor.lhs.false194 ], [ null, %lor.lhs.false200 ], [ null, %if.end204 ], [ null, %if.end209 ], [ null, %lor.lhs.false215 ], [ null, %lor.lhs.false221 ], [ null, %lor.lhs.false227 ], [ %call235, %if.end234 ], [ %call235, %lor.lhs.false238 ], [ null, %land.end ], [ null, %lor.lhs.false251 ], [ null, %land.rhs258 ]
  %pub.0 = phi %struct.bignum_st* [ %call2, %lor.lhs.false81 ], [ %call2, %if.end75 ], [ %call2, %if.end ], [ %call2, %lor.lhs.false67 ], [ %call2, %lor.lhs.false61 ], [ %call2, %lor.lhs.false55 ], [ %call2, %lor.lhs.false49 ], [ %call2, %lor.lhs.false43 ], [ %call2, %lor.lhs.false37 ], [ %call2, %lor.lhs.false31 ], [ %call2, %lor.lhs.false25 ], [ %call2, %lor.lhs.false21 ], [ %call2, %lor.lhs.false17 ], [ %call2, %lor.lhs.false13 ], [ %call2, %lor.lhs.false9 ], [ %call2, %lor.lhs.false5 ], [ %call2, %lor.lhs.false ], [ null, %entry ], [ %call2, %lor.lhs.false102 ], [ %call2, %lor.lhs.false98 ], [ %call2, %lor.lhs.false94 ], [ %call2, %while.body ], [ %call2, %lor.lhs.false200 ], [ %call2, %lor.lhs.false194 ], [ %call2, %lor.lhs.false191 ], [ %call2, %lor.lhs.false185 ], [ %call2, %lor.lhs.false182 ], [ %call2, %lor.lhs.false176 ], [ %call2, %lor.lhs.false169 ], [ %call2, %lor.lhs.false166 ], [ %call2, %lor.lhs.false160 ], [ %call2, %lor.lhs.false157 ], [ %call2, %lor.lhs.false151 ], [ %call2, %lor.lhs.false148 ], [ %call2, %lor.lhs.false142 ], [ %call2, %lor.lhs.false139 ], [ %call2, %lor.lhs.false133 ], [ %call2, %lor.lhs.false130 ], [ %call2, %lor.lhs.false124 ], [ %call2, %lor.lhs.false121 ], [ %call2, %lor.lhs.false115 ], [ %call2, %if.end109 ], [ %call2, %if.end204 ], [ %call2, %lor.lhs.false227 ], [ %call2, %lor.lhs.false221 ], [ %call2, %lor.lhs.false215 ], [ %call2, %if.end209 ], [ %call2, %lor.lhs.false238 ], [ %call2, %if.end234 ], [ %call2, %lor.lhs.false251 ], [ %call2, %land.end ], [ %call2, %land.rhs258 ], [ %call2, %while.cond ], [ %call2, %if.end245 ]
  %priv.0 = phi %struct.bignum_st* [ %call6, %lor.lhs.false81 ], [ %call6, %if.end75 ], [ %call6, %if.end ], [ %call6, %lor.lhs.false67 ], [ %call6, %lor.lhs.false61 ], [ %call6, %lor.lhs.false55 ], [ %call6, %lor.lhs.false49 ], [ %call6, %lor.lhs.false43 ], [ %call6, %lor.lhs.false37 ], [ %call6, %lor.lhs.false31 ], [ %call6, %lor.lhs.false25 ], [ %call6, %lor.lhs.false21 ], [ %call6, %lor.lhs.false17 ], [ %call6, %lor.lhs.false13 ], [ %call6, %lor.lhs.false9 ], [ %call6, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call6, %lor.lhs.false102 ], [ %call6, %lor.lhs.false98 ], [ %call6, %lor.lhs.false94 ], [ %call6, %while.body ], [ %call6, %lor.lhs.false200 ], [ %call6, %lor.lhs.false194 ], [ %call6, %lor.lhs.false191 ], [ %call6, %lor.lhs.false185 ], [ %call6, %lor.lhs.false182 ], [ %call6, %lor.lhs.false176 ], [ %call6, %lor.lhs.false169 ], [ %call6, %lor.lhs.false166 ], [ %call6, %lor.lhs.false160 ], [ %call6, %lor.lhs.false157 ], [ %call6, %lor.lhs.false151 ], [ %call6, %lor.lhs.false148 ], [ %call6, %lor.lhs.false142 ], [ %call6, %lor.lhs.false139 ], [ %call6, %lor.lhs.false133 ], [ %call6, %lor.lhs.false130 ], [ %call6, %lor.lhs.false124 ], [ %call6, %lor.lhs.false121 ], [ %call6, %lor.lhs.false115 ], [ %call6, %if.end109 ], [ %call6, %if.end204 ], [ %call6, %lor.lhs.false227 ], [ %call6, %lor.lhs.false221 ], [ %call6, %lor.lhs.false215 ], [ %call6, %if.end209 ], [ %call6, %lor.lhs.false238 ], [ %call6, %if.end234 ], [ %call6, %lor.lhs.false251 ], [ %call6, %land.end ], [ %call6, %land.rhs258 ], [ %call6, %while.cond ], [ %call6, %if.end245 ]
  %p.1 = phi %struct.bignum_st* [ %call10, %lor.lhs.false81 ], [ %call10, %if.end75 ], [ %call10, %if.end ], [ %call10, %lor.lhs.false67 ], [ %call10, %lor.lhs.false61 ], [ %call10, %lor.lhs.false55 ], [ %call10, %lor.lhs.false49 ], [ %call10, %lor.lhs.false43 ], [ %call10, %lor.lhs.false37 ], [ %call10, %lor.lhs.false31 ], [ %call10, %lor.lhs.false25 ], [ %call10, %lor.lhs.false21 ], [ %call10, %lor.lhs.false17 ], [ %call10, %lor.lhs.false13 ], [ %call10, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end245 ], [ null, %while.cond ], [ %p.0319, %while.body ], [ %p.0319, %lor.lhs.false94 ], [ %p.0319, %lor.lhs.false98 ], [ %p.0319, %lor.lhs.false102 ], [ %p.0319, %if.end109 ], [ %p.0319, %lor.lhs.false115 ], [ %p.0319, %lor.lhs.false121 ], [ %p.0319, %lor.lhs.false124 ], [ %p.0319, %lor.lhs.false130 ], [ %p.0319, %lor.lhs.false133 ], [ %p.0319, %lor.lhs.false139 ], [ %p.0319, %lor.lhs.false142 ], [ %p.0319, %lor.lhs.false148 ], [ %p.0319, %lor.lhs.false151 ], [ %p.0319, %lor.lhs.false157 ], [ %p.0319, %lor.lhs.false160 ], [ %p.0319, %lor.lhs.false166 ], [ %p.0319, %lor.lhs.false169 ], [ %p.0319, %lor.lhs.false176 ], [ %p.0319, %lor.lhs.false182 ], [ %p.0319, %lor.lhs.false185 ], [ %p.0319, %lor.lhs.false191 ], [ %p.0319, %lor.lhs.false194 ], [ %p.0319, %lor.lhs.false200 ], [ null, %if.end204 ], [ null, %if.end209 ], [ null, %lor.lhs.false215 ], [ null, %lor.lhs.false221 ], [ null, %lor.lhs.false227 ], [ null, %if.end234 ], [ null, %lor.lhs.false238 ], [ null, %land.end ], [ null, %lor.lhs.false251 ], [ null, %land.rhs258 ]
  %q.1 = phi %struct.bignum_st* [ %call14, %lor.lhs.false81 ], [ %call14, %if.end75 ], [ %call14, %if.end ], [ %call14, %lor.lhs.false67 ], [ %call14, %lor.lhs.false61 ], [ %call14, %lor.lhs.false55 ], [ %call14, %lor.lhs.false49 ], [ %call14, %lor.lhs.false43 ], [ %call14, %lor.lhs.false37 ], [ %call14, %lor.lhs.false31 ], [ %call14, %lor.lhs.false25 ], [ %call14, %lor.lhs.false21 ], [ %call14, %lor.lhs.false17 ], [ %call14, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end245 ], [ null, %while.cond ], [ %q.0320, %while.body ], [ %q.0320, %lor.lhs.false94 ], [ %q.0320, %lor.lhs.false98 ], [ %q.0320, %lor.lhs.false102 ], [ %q.0320, %if.end109 ], [ %q.0320, %lor.lhs.false115 ], [ %q.0320, %lor.lhs.false121 ], [ %q.0320, %lor.lhs.false124 ], [ %q.0320, %lor.lhs.false130 ], [ %q.0320, %lor.lhs.false133 ], [ %q.0320, %lor.lhs.false139 ], [ %q.0320, %lor.lhs.false142 ], [ %q.0320, %lor.lhs.false148 ], [ %q.0320, %lor.lhs.false151 ], [ %q.0320, %lor.lhs.false157 ], [ %q.0320, %lor.lhs.false160 ], [ %q.0320, %lor.lhs.false166 ], [ %q.0320, %lor.lhs.false169 ], [ %q.0320, %lor.lhs.false176 ], [ %q.0320, %lor.lhs.false182 ], [ %q.0320, %lor.lhs.false185 ], [ %q.0320, %lor.lhs.false191 ], [ %q.0320, %lor.lhs.false194 ], [ %q.0320, %lor.lhs.false200 ], [ null, %if.end204 ], [ null, %if.end209 ], [ null, %lor.lhs.false215 ], [ null, %lor.lhs.false221 ], [ null, %lor.lhs.false227 ], [ null, %if.end234 ], [ null, %lor.lhs.false238 ], [ null, %land.end ], [ null, %lor.lhs.false251 ], [ null, %land.rhs258 ]
  %g.1 = phi %struct.bignum_st* [ %call18, %lor.lhs.false81 ], [ %call18, %if.end75 ], [ %call18, %if.end ], [ %call18, %lor.lhs.false67 ], [ %call18, %lor.lhs.false61 ], [ %call18, %lor.lhs.false55 ], [ %call18, %lor.lhs.false49 ], [ %call18, %lor.lhs.false43 ], [ %call18, %lor.lhs.false37 ], [ %call18, %lor.lhs.false31 ], [ %call18, %lor.lhs.false25 ], [ %call18, %lor.lhs.false21 ], [ %call18, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %if.end245 ], [ null, %while.cond ], [ %g.0321, %while.body ], [ %g.0321, %lor.lhs.false94 ], [ %g.0321, %lor.lhs.false98 ], [ %g.0321, %lor.lhs.false102 ], [ %g.0321, %if.end109 ], [ %g.0321, %lor.lhs.false115 ], [ %g.0321, %lor.lhs.false121 ], [ %g.0321, %lor.lhs.false124 ], [ %g.0321, %lor.lhs.false130 ], [ %g.0321, %lor.lhs.false133 ], [ %g.0321, %lor.lhs.false139 ], [ %g.0321, %lor.lhs.false142 ], [ %g.0321, %lor.lhs.false148 ], [ %g.0321, %lor.lhs.false151 ], [ %g.0321, %lor.lhs.false157 ], [ %g.0321, %lor.lhs.false160 ], [ %g.0321, %lor.lhs.false166 ], [ %g.0321, %lor.lhs.false169 ], [ %g.0321, %lor.lhs.false176 ], [ %g.0321, %lor.lhs.false182 ], [ %g.0321, %lor.lhs.false185 ], [ %g.0321, %lor.lhs.false191 ], [ %g.0321, %lor.lhs.false194 ], [ %g.0321, %lor.lhs.false200 ], [ null, %if.end204 ], [ null, %if.end209 ], [ null, %lor.lhs.false215 ], [ null, %lor.lhs.false221 ], [ null, %lor.lhs.false227 ], [ null, %if.end234 ], [ null, %lor.lhs.false238 ], [ null, %land.end ], [ null, %lor.lhs.false251 ], [ null, %land.rhs258 ]
  %fromdata_params.0 = phi %struct.ossl_param_st* [ %call68, %lor.lhs.false81 ], [ %call68, %if.end75 ], [ %call68, %if.end ], [ %call68, %lor.lhs.false67 ], [ null, %lor.lhs.false61 ], [ null, %lor.lhs.false55 ], [ null, %lor.lhs.false49 ], [ null, %lor.lhs.false43 ], [ null, %lor.lhs.false37 ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call68, %lor.lhs.false102 ], [ %call68, %lor.lhs.false98 ], [ %call68, %lor.lhs.false94 ], [ %call68, %while.body ], [ %call68, %lor.lhs.false200 ], [ %call68, %lor.lhs.false194 ], [ %call68, %lor.lhs.false191 ], [ %call68, %lor.lhs.false185 ], [ %call68, %lor.lhs.false182 ], [ %call68, %lor.lhs.false176 ], [ %call68, %lor.lhs.false169 ], [ %call68, %lor.lhs.false166 ], [ %call68, %lor.lhs.false160 ], [ %call68, %lor.lhs.false157 ], [ %call68, %lor.lhs.false151 ], [ %call68, %lor.lhs.false148 ], [ %call68, %lor.lhs.false142 ], [ %call68, %lor.lhs.false139 ], [ %call68, %lor.lhs.false133 ], [ %call68, %lor.lhs.false130 ], [ %call68, %lor.lhs.false124 ], [ %call68, %lor.lhs.false121 ], [ %call68, %lor.lhs.false115 ], [ %call68, %if.end109 ], [ %call68, %if.end204 ], [ %call68, %lor.lhs.false227 ], [ %call68, %lor.lhs.false221 ], [ %call68, %lor.lhs.false215 ], [ %call68, %if.end209 ], [ %call68, %lor.lhs.false238 ], [ %call68, %if.end234 ], [ %call68, %lor.lhs.false251 ], [ %call68, %land.end ], [ %call68, %land.rhs258 ], [ %call68, %while.cond ], [ %call68, %if.end245 ]
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call71, %lor.lhs.false81 ], [ %call71, %if.end75 ], [ %call71, %if.end ], [ null, %lor.lhs.false67 ], [ null, %lor.lhs.false61 ], [ null, %lor.lhs.false55 ], [ null, %lor.lhs.false49 ], [ null, %lor.lhs.false43 ], [ null, %lor.lhs.false37 ], [ null, %lor.lhs.false31 ], [ null, %lor.lhs.false25 ], [ null, %lor.lhs.false21 ], [ null, %lor.lhs.false17 ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call71, %lor.lhs.false102 ], [ %call71, %lor.lhs.false98 ], [ %call71, %lor.lhs.false94 ], [ %call71, %while.body ], [ %call71, %lor.lhs.false200 ], [ %call71, %lor.lhs.false194 ], [ %call71, %lor.lhs.false191 ], [ %call71, %lor.lhs.false185 ], [ %call71, %lor.lhs.false182 ], [ %call71, %lor.lhs.false176 ], [ %call71, %lor.lhs.false169 ], [ %call71, %lor.lhs.false166 ], [ %call71, %lor.lhs.false160 ], [ %call71, %lor.lhs.false157 ], [ %call71, %lor.lhs.false151 ], [ %call71, %lor.lhs.false148 ], [ %call71, %lor.lhs.false142 ], [ %call71, %lor.lhs.false139 ], [ %call71, %lor.lhs.false133 ], [ %call71, %lor.lhs.false130 ], [ %call71, %lor.lhs.false124 ], [ %call71, %lor.lhs.false121 ], [ %call71, %lor.lhs.false115 ], [ %call71, %if.end109 ], [ %call71, %if.end204 ], [ %call71, %lor.lhs.false227 ], [ %call71, %lor.lhs.false221 ], [ %call71, %lor.lhs.false215 ], [ %call71, %if.end209 ], [ %call71, %lor.lhs.false238 ], [ %call71, %if.end234 ], [ %call71, %lor.lhs.false251 ], [ %call71, %land.end ], [ %call71, %land.rhs258 ], [ %call71, %while.cond ], [ %call71, %if.end245 ]
  %ret.1 = phi i32 [ 0, %lor.lhs.false81 ], [ 0, %if.end75 ], [ 0, %if.end ], [ 0, %lor.lhs.false67 ], [ 0, %lor.lhs.false61 ], [ 0, %lor.lhs.false55 ], [ 0, %lor.lhs.false49 ], [ 0, %lor.lhs.false43 ], [ 0, %lor.lhs.false37 ], [ 0, %lor.lhs.false31 ], [ 0, %lor.lhs.false25 ], [ 0, %lor.lhs.false21 ], [ 0, %lor.lhs.false17 ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end245 ], [ 1, %while.cond ], [ 0, %while.body ], [ 0, %lor.lhs.false94 ], [ 0, %lor.lhs.false98 ], [ 0, %lor.lhs.false102 ], [ 0, %if.end109 ], [ 0, %lor.lhs.false115 ], [ 0, %lor.lhs.false121 ], [ 0, %lor.lhs.false124 ], [ 0, %lor.lhs.false130 ], [ 0, %lor.lhs.false133 ], [ 0, %lor.lhs.false139 ], [ 0, %lor.lhs.false142 ], [ 0, %lor.lhs.false148 ], [ 0, %lor.lhs.false151 ], [ 0, %lor.lhs.false157 ], [ 0, %lor.lhs.false160 ], [ 0, %lor.lhs.false166 ], [ 0, %lor.lhs.false169 ], [ 0, %lor.lhs.false176 ], [ 0, %lor.lhs.false182 ], [ 0, %lor.lhs.false185 ], [ 0, %lor.lhs.false191 ], [ 0, %lor.lhs.false194 ], [ 0, %lor.lhs.false200 ], [ 0, %if.end204 ], [ 0, %if.end209 ], [ 0, %lor.lhs.false215 ], [ 0, %lor.lhs.false221 ], [ 0, %lor.lhs.false227 ], [ 0, %if.end234 ], [ 0, %lor.lhs.false238 ], [ 0, %land.end ], [ 1, %lor.lhs.false251 ], [ 0, %land.rhs258 ]
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %fromdata_params.0) #8
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call) #8
  call void @BN_free(%struct.bignum_st* noundef %p.1) #8
  call void @BN_free(%struct.bignum_st* noundef %q.1) #8
  call void @BN_free(%struct.bignum_st* noundef %g.1) #8
  call void @BN_free(%struct.bignum_st* noundef %pub.0) #8
  call void @BN_free(%struct.bignum_st* noundef %priv.0) #8
  %59 = load %struct.bignum_st*, %struct.bignum_st** %p_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %59) #8
  %60 = load %struct.bignum_st*, %struct.bignum_st** %q_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %60) #8
  %61 = load %struct.bignum_st*, %struct.bignum_st** %g_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %61) #8
  %62 = load %struct.bignum_st*, %struct.bignum_st** %pub_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %62) #8
  %63 = load %struct.bignum_st*, %struct.bignum_st** %priv_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %63) #8
  %64 = load %struct.bignum_st*, %struct.bignum_st** %j_out, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %64) #8
  %65 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %65) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %copy_pk.1) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %key_ctx.1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_fromdata_ecx(i32 noundef %tst) #0 {
entry:
  %pk = alloca %struct.evp_pkey_st*, align 8
  %len = alloca i64, align 8
  %out_pub = alloca [57 x i8], align 16
  %out_priv = alloca [57 x i8], align 16
  %params = alloca [3 x %struct.ossl_param_st], align 16
  %x25519_fromdata_params = alloca [3 x %struct.ossl_param_st], align 16
  %x448_fromdata_params = alloca [3 x %struct.ossl_param_st], align 16
  %ed25519_fromdata_params = alloca [3 x %struct.ossl_param_st], align 16
  %ed448_fromdata_params = alloca [3 x %struct.ossl_param_st], align 16
  %0 = bitcast %struct.evp_pkey_st** %pk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = getelementptr inbounds [57 x i8], [57 x i8]* %out_pub, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 57, i8* nonnull %2) #9
  %3 = getelementptr inbounds [57 x i8], [57 x i8]* %out_priv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 57, i8* nonnull %3) #9
  %4 = bitcast [3 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) %4, i8 0, i64 120, i1 false)
  %5 = bitcast [3 x %struct.ossl_param_st]* %x25519_fromdata_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %5) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) %5, i8* noundef nonnull align 16 dereferenceable(120) bitcast ([3 x %struct.ossl_param_st]* @__const.test_fromdata_ecx.x25519_fromdata_params to i8*), i64 120, i1 false)
  %6 = bitcast [3 x %struct.ossl_param_st]* %x448_fromdata_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %6) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) %6, i8* noundef nonnull align 16 dereferenceable(120) bitcast ([3 x %struct.ossl_param_st]* @__const.test_fromdata_ecx.x448_fromdata_params to i8*), i64 120, i1 false)
  %7 = bitcast [3 x %struct.ossl_param_st]* %ed25519_fromdata_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %7) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) %7, i8* noundef nonnull align 16 dereferenceable(120) bitcast ([3 x %struct.ossl_param_st]* @__const.test_fromdata_ecx.ed25519_fromdata_params to i8*), i64 120, i1 false)
  %8 = bitcast [3 x %struct.ossl_param_st]* %ed448_fromdata_params to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %8) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(120) %8, i8* noundef nonnull align 16 dereferenceable(120) bitcast ([3 x %struct.ossl_param_st]* @__const.test_fromdata_ecx.ed448_fromdata_params to i8*), i64 120, i1 false)
  %and = and i32 %tst, 3
  switch i32 %and, label %entry.unreachabledefault [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb3, %sw.bb1
  %ed448_fromdata_params.sink = phi [3 x %struct.ossl_param_st]* [ %ed448_fromdata_params, %sw.bb5 ], [ %ed25519_fromdata_params, %sw.bb3 ], [ %x448_fromdata_params, %sw.bb1 ], [ %x25519_fromdata_params, %entry ]
  %alg.0 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.201, i64 0, i64 0), %sw.bb5 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.200, i64 0, i64 0), %sw.bb3 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.199, i64 0, i64 0), %sw.bb1 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.198, i64 0, i64 0), %entry ]
  %bits.0 = phi i32 [ 456, %sw.bb5 ], [ 256, %sw.bb3 ], [ 448, %sw.bb1 ], [ 253, %entry ]
  %security_bits.0 = phi i32 [ 224, %sw.bb5 ], [ 128, %sw.bb3 ], [ 224, %sw.bb1 ], [ 128, %entry ]
  %size.0 = phi i32 [ 114, %sw.bb5 ], [ 64, %sw.bb3 ], [ 56, %sw.bb1 ], [ 32, %entry ]
  %arraydecay6 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %ed448_fromdata_params.sink, i64 0, i64 0
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef nonnull %alg.0, i8* noundef null) #8
  %9 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1030, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.202, i64 0, i64 0), i8* noundef %9) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %sw.epilog
  %cmp = icmp sgt i32 %tst, 7
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %incdec.ptr = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %ed448_fromdata_params.sink, i64 0, i64 1
  br label %if.end16

if.else:                                          ; preds = %if.end
  %cmp9 = icmp sgt i32 %tst, 3
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.else
  %arrayidx = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %10 = bitcast [3 x %struct.ossl_param_st]* %ed448_fromdata_params.sink to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %4, i8* noundef nonnull align 16 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !19
  %arrayidx12 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %arrayidx13 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %ed448_fromdata_params.sink, i64 0, i64 2
  %11 = bitcast %struct.ossl_param_st* %arrayidx12 to i8*
  %12 = bitcast %struct.ossl_param_st* %arrayidx13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %11, i8* noundef nonnull align 16 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !19
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10, %if.then8
  %fromdata_params.1 = phi %struct.ossl_param_st* [ %incdec.ptr, %if.then8 ], [ %arrayidx, %if.then10 ], [ %arraydecay6, %if.else ]
  %call17 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %cmp18 = icmp ne i32 %call17, 0
  %conv = zext i1 %cmp18 to i32
  %call19 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1044, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end16
  %call21 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %pk, i32 noundef 135, %struct.ossl_param_st* noundef nonnull %fromdata_params.1) #8
  %cmp22 = icmp ne i32 %call21, 0
  %conv23 = zext i1 %cmp22 to i32
  %call24 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1046, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv23) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false
  %cmp54 = icmp slt i32 %tst, 8
  %key = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %ed448_fromdata_params.sink, i64 0, i64 0, i32 0
  %data = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %ed448_fromdata_params.sink, i64 0, i64 0, i32 2
  %data_size = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %ed448_fromdata_params.sink, i64 0, i64 0, i32 3
  %key79 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %ed448_fromdata_params.sink, i64 0, i64 1, i32 0
  %data89 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %ed448_fromdata_params.sink, i64 0, i64 1, i32 2
  %data_size91 = getelementptr inbounds [3 x %struct.ossl_param_st], [3 x %struct.ossl_param_st]* %ed448_fromdata_params.sink, i64 0, i64 1, i32 3
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br label %while.body

while.cond:                                       ; preds = %land.rhs146
  %cmp28 = icmp eq %struct.evp_pkey_st* %call140, null
  br i1 %cmp28, label %while.body, label %err, !llvm.loop !20

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %13 = phi %struct.evp_pkey_st* [ %.pre, %while.cond.preheader ], [ null, %while.cond ]
  %call30 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %13) #8
  %call31 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1051, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.203, i64 0, i64 0), i32 noundef %call30, i32 noundef %bits.0) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %while.body
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call34 = call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef %14) #8
  %call35 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1052, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.204, i64 0, i64 0), i32 noundef %call34, i32 noundef %security_bits.0) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %15 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call38 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %15) #8
  %call39 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1053, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.205, i64 0, i64 0), i32 noundef %call38, i32 noundef %size.0) #8
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %err, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false37
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call42 = call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef %16) #8
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1054, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv44) #8
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false41
  %17 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call49 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %17, i8* noundef null) #8
  %18 = bitcast %struct.evp_pkey_ctx_st* %call49 to i8*
  %call50 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1057, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.206, i64 0, i64 0), i8* noundef %18) #8
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %if.end53

if.end53:                                         ; preds = %if.end48
  br i1 %cmp54, label %if.then56, label %if.else96

if.then56:                                        ; preds = %if.end53
  %call57 = call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef %call49) #8
  %cmp58 = icmp ne i32 %call57, 0
  %conv59 = zext i1 %cmp58 to i32
  %call60 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1060, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.207, i64 0, i64 0), i32 noundef %conv59) #8
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %err, label %if.end63

if.end63:                                         ; preds = %if.then56
  %19 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %20 = load i8*, i8** %key, align 16, !tbaa !11
  %call66 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %19, i8* noundef %20, i8* noundef nonnull %3, i64 noundef 57, i64* noundef nonnull %len) #8
  %cmp67 = icmp ne i32 %call66, 0
  %conv68 = zext i1 %cmp67 to i32
  %call69 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1064, i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.208, i64 0, i64 0), i32 noundef %conv68) #8
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %err, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.end63
  %21 = load i64, i64* %len, align 8, !tbaa !7
  %22 = load i8*, i8** %data, align 16, !tbaa !21
  %23 = load i64, i64* %data_size, align 8, !tbaa !22
  %call75 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1067, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.210, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %21, i8* noundef %22, i64 noundef %23) #8
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %err, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false71
  %24 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %25 = load i8*, i8** %key79, align 8, !tbaa !11
  %call81 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %24, i8* noundef %25, i8* noundef nonnull %2, i64 noundef 57, i64* noundef nonnull %len) #8
  %cmp82 = icmp ne i32 %call81, 0
  %conv83 = zext i1 %cmp82 to i32
  %call84 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1070, i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.211, i64 0, i64 0), i32 noundef %conv83) #8
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false77
  %26 = load i64, i64* %len, align 8, !tbaa !7
  %27 = load i8*, i8** %data89, align 8, !tbaa !21
  %28 = load i64, i64* %data_size91, align 16, !tbaa !22
  %call92 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1073, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.212, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.213, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef %26, i8* noundef %27, i64 noundef %28) #8
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %err, label %if.end116

if.else96:                                        ; preds = %if.end53
  %call97 = call i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef %call49) #8
  %cmp98 = icmp ne i32 %call97, 0
  %conv99 = zext i1 %cmp98 to i32
  %call100 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1077, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.214, i64 0, i64 0), i32 noundef %conv99) #8
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %err, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %if.else96
  %call103 = call i32 @EVP_PKEY_private_check(%struct.evp_pkey_ctx_st* noundef %call49) #8
  %cmp104 = icmp ne i32 %call103, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1078, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.215, i64 0, i64 0), i32 noundef %conv105) #8
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %err, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %lor.lhs.false102
  %call109 = call i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef %call49) #8
  %cmp110 = icmp ne i32 %call109, 0
  %conv111 = zext i1 %cmp110 to i32
  %call112 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1079, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.207, i64 0, i64 0), i32 noundef %conv111) #8
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %err, label %if.end116

if.end116:                                        ; preds = %lor.lhs.false108, %lor.lhs.false86
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call49) #8
  %call117 = call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %29 = bitcast %struct.evp_pkey_st* %call117 to i8*
  %call118 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1085, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0), i8* noundef %29) #8
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %err, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %if.end116
  %30 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call121 = call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef %call117, %struct.evp_pkey_st* noundef %30) #8
  %cmp122 = icmp ne i32 %call121, 0
  %conv123 = zext i1 %cmp122 to i32
  %call124 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1087, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv123) #8
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %err, label %if.end127

if.end127:                                        ; preds = %lor.lhs.false120
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call117) #8
  %31 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br i1 %cmp, label %if.then130, label %if.else132

if.then130:                                       ; preds = %if.end127
  %call131 = call fastcc i32 @test_print_key_using_encoder_public(i8* noundef %alg.0, %struct.evp_pkey_st* noundef %31) #10
  br label %if.end137

if.else132:                                       ; preds = %if.end127
  %call133 = call fastcc i32 @test_print_key_using_pem(i8* noundef %alg.0, %struct.evp_pkey_st* noundef %31) #10
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.else132
  %32 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call135 = call fastcc i32 @test_print_key_using_encoder(i8* noundef %alg.0, %struct.evp_pkey_st* noundef %32) #10
  %tobool136 = icmp ne i32 %call135, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else132
  %33 = phi i1 [ false, %if.else132 ], [ %tobool136, %land.rhs ]
  %land.ext = zext i1 %33 to i32
  br label %if.end137

if.end137:                                        ; preds = %land.end, %if.then130
  %ret.1 = phi i32 [ %call131, %if.then130 ], [ %land.ext, %land.end ]
  %tobool138.not = icmp eq i32 %ret.1, 0
  br i1 %tobool138.not, label %err, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %if.end137
  %34 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call140 = call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef %34) #8
  %35 = bitcast %struct.evp_pkey_st* %call140 to i8*
  %call141 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1098, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef %35) #8
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %err, label %land.rhs146

land.rhs146:                                      ; preds = %lor.lhs.false139
  %36 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call147 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %36, %struct.evp_pkey_st* noundef %call140) #8
  %call148 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1100, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call147, i32 noundef 1) #8
  %tobool149.not = icmp eq i32 %call148, 0
  %37 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %37) #8
  store %struct.evp_pkey_st* %call140, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br i1 %tobool149.not, label %err, label %while.cond, !llvm.loop !20

err:                                              ; preds = %while.cond, %land.rhs146, %if.end137, %lor.lhs.false139, %if.end116, %lor.lhs.false120, %if.else96, %lor.lhs.false102, %lor.lhs.false108, %if.end63, %lor.lhs.false71, %lor.lhs.false77, %lor.lhs.false86, %if.then56, %if.end48, %while.body, %lor.lhs.false33, %lor.lhs.false37, %lor.lhs.false41, %if.end16, %lor.lhs.false, %sw.epilog
  %ret.2 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.end16 ], [ 0, %sw.epilog ], [ 1, %while.cond ], [ 0, %while.body ], [ 0, %lor.lhs.false33 ], [ 0, %lor.lhs.false37 ], [ 0, %lor.lhs.false41 ], [ 0, %if.end48 ], [ 0, %if.else96 ], [ 0, %lor.lhs.false102 ], [ 0, %lor.lhs.false108 ], [ 0, %if.then56 ], [ 0, %if.end63 ], [ 0, %lor.lhs.false71 ], [ 0, %lor.lhs.false77 ], [ 0, %lor.lhs.false86 ], [ 0, %if.end116 ], [ 0, %lor.lhs.false120 ], [ 0, %if.end137 ], [ %ret.1, %lor.lhs.false139 ], [ 0, %land.rhs146 ]
  %ctx2.1 = phi %struct.evp_pkey_ctx_st* [ null, %lor.lhs.false ], [ null, %if.end16 ], [ null, %sw.epilog ], [ null, %while.cond ], [ null, %while.body ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false37 ], [ null, %lor.lhs.false41 ], [ %call49, %if.end48 ], [ %call49, %if.else96 ], [ %call49, %lor.lhs.false102 ], [ %call49, %lor.lhs.false108 ], [ %call49, %if.then56 ], [ %call49, %if.end63 ], [ %call49, %lor.lhs.false71 ], [ %call49, %lor.lhs.false77 ], [ %call49, %lor.lhs.false86 ], [ null, %if.end116 ], [ null, %lor.lhs.false120 ], [ null, %if.end137 ], [ null, %lor.lhs.false139 ], [ null, %land.rhs146 ]
  %copy_pk.1 = phi %struct.evp_pkey_st* [ null, %lor.lhs.false ], [ null, %if.end16 ], [ null, %sw.epilog ], [ null, %while.cond ], [ null, %while.body ], [ null, %lor.lhs.false33 ], [ null, %lor.lhs.false37 ], [ null, %lor.lhs.false41 ], [ null, %if.end48 ], [ null, %if.else96 ], [ null, %lor.lhs.false102 ], [ null, %lor.lhs.false108 ], [ null, %if.then56 ], [ null, %if.end63 ], [ null, %lor.lhs.false71 ], [ null, %lor.lhs.false77 ], [ null, %lor.lhs.false86 ], [ %call117, %if.end116 ], [ %call117, %lor.lhs.false120 ], [ null, %if.end137 ], [ null, %lor.lhs.false139 ], [ null, %land.rhs146 ]
  %38 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %38) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %copy_pk.1) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx2.1) #8
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %8) #9
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 57, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 57, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_fromdata_ec() #0 {
entry:
  %pk = alloca %struct.evp_pkey_st*, align 8
  %bn_priv = alloca %struct.bignum_st*, align 8
  %out_pub = alloca [65 x i8], align 16
  %out_curve_name = alloca [80 x i8], align 16
  %len = alloca i64, align 8
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %p = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %pk to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %1 = bitcast %struct.bignum_st** %bn_priv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.bignum_st* null, %struct.bignum_st** %bn_priv, align 8, !tbaa !3
  %2 = getelementptr inbounds [65 x i8], [65 x i8]* %out_pub, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 65, i8* nonnull %2) #9
  %3 = getelementptr inbounds [80 x i8], [80 x i8]* %out_curve_name, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #9
  %4 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  store %struct.bignum_st* null, %struct.bignum_st** %a, align 8, !tbaa !3
  %6 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !3
  %7 = bitcast %struct.bignum_st** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9
  store %struct.bignum_st* null, %struct.bignum_st** %p, align 8, !tbaa !3
  %call = tail call %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() #8
  %8 = bitcast %struct.ossl_param_bld_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1161, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8* noundef %8) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @test_fromdata_ec.ec_priv_keydata, i64 0, i64 0), i32 noundef 32, %struct.bignum_st* noundef null) #8
  %9 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1164, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.218, i64 0, i64 0), i8* noundef %9) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %if.end6

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.217, i64 0, i64 0), i64 noundef 0) #8
  %cmp = icmp slt i32 %call7, 1
  br i1 %cmp, label %err, label %if.end9

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @test_fromdata_ec.ec_pub_keydata, i64 0, i64 0), i64 noundef 65) #8
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef %call, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), %struct.bignum_st* noundef %call2) #8
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.end13
  %call18 = tail call %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef %call) #8
  %10 = bitcast %struct.ossl_param_st* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1176, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.40, i64 0, i64 0), i8* noundef %10) #8
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %if.end22

if.end22:                                         ; preds = %if.end17
  %call23 = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0), i8* noundef null) #8
  %11 = bitcast %struct.evp_pkey_ctx_st* %call23 to i8*
  %call24 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1179, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.202, i64 0, i64 0), i8* noundef %11) #8
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end27

if.end27:                                         ; preds = %if.end22
  %call28 = tail call i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef %call23) #8
  %cmp29 = icmp ne i32 %call28, 0
  %conv = zext i1 %cmp29 to i32
  %call30 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1182, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 noundef %conv) #8
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end27
  %call32 = call i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef %call23, %struct.evp_pkey_st** noundef nonnull %pk, i32 noundef 135, %struct.ossl_param_st* noundef %call18) #8
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1184, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv34) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %err, label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false
  %add.ptr = getelementptr inbounds [65 x i8], [65 x i8]* %out_pub, i64 0, i64 1
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call41245 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef %.pre) #8
  %call42246 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1189, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i64 0, i64 0), i32 noundef %call41245, i32 noundef 256) #8
  %tobool43.not247 = icmp eq i32 %call42246, 0
  br i1 %tobool43.not247, label %err, label %lor.lhs.false44

while.cond:                                       ; preds = %land.rhs186
  %cmp39 = icmp eq %struct.evp_pkey_st* %call180, null
  br i1 %cmp39, label %while.body, label %err, !llvm.loop !23

while.body:                                       ; preds = %while.cond
  %call41 = call i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef null) #8
  %call42 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1189, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.136, i64 0, i64 0), i32 noundef %call41, i32 noundef 256) #8
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %err, label %lor.lhs.false44, !llvm.loop !23

lor.lhs.false44:                                  ; preds = %while.cond.preheader, %while.body
  %group.0241251 = phi %struct.ec_group_st* [ %call89, %while.body ], [ null, %while.cond.preheader ]
  %group_a.0242250 = phi %struct.bignum_st* [ %call97, %while.body ], [ null, %while.cond.preheader ]
  %group_b.0243249 = phi %struct.bignum_st* [ %call101, %while.body ], [ null, %while.cond.preheader ]
  %group_p.0244248 = phi %struct.bignum_st* [ %call93, %while.body ], [ null, %while.cond.preheader ]
  %12 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call45 = call i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef %12) #8
  %call46 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1190, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.219, i64 0, i64 0), i32 noundef %call45, i32 noundef 128) #8
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %13 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call49 = call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %13) #8
  %call50 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1191, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.220, i64 0, i64 0), i32 noundef %call49, i32 noundef 72) #8
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %14 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call53 = call i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef %14) #8
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1192, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv55) #8
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %if.end59

if.end59:                                         ; preds = %lor.lhs.false52
  %call60 = call %struct.evp_pkey_st* @EVP_PKEY_new() #8
  %15 = bitcast %struct.evp_pkey_st* %call60 to i8*
  %call61 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1195, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0), i8* noundef %15) #8
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %err, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %if.end59
  %16 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call64 = call i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef %call60, %struct.evp_pkey_st* noundef %16) #8
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1196, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.66, i64 0, i64 0), i32 noundef %conv66) #8
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %err, label %if.end70

if.end70:                                         ; preds = %lor.lhs.false63
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %call60) #8
  %17 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call71 = call %struct.ossl_param_st* @EVP_PKEY_gettable_params(%struct.evp_pkey_st* noundef %17) #8
  %18 = bitcast %struct.ossl_param_st* %call71 to i8*
  %call72 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1201, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.221, i64 0, i64 0), i8* noundef %18) #8
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %if.end70
  %call75 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call71, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0)) #8
  %19 = bitcast %struct.ossl_param_st* %call75 to i8*
  %call76 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1203, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.222, i64 0, i64 0), i8* noundef %19) #8
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %err, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false74
  %call79 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call71, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0)) #8
  %20 = bitcast %struct.ossl_param_st* %call79 to i8*
  %call80 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1205, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.223, i64 0, i64 0), i8* noundef %20) #8
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false78
  %call83 = call %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef %call71, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0)) #8
  %21 = bitcast %struct.ossl_param_st* %call83 to i8*
  %call84 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1207, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.224, i64 0, i64 0), i8* noundef %21) #8
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %err, label %if.end87

if.end87:                                         ; preds = %lor.lhs.false82
  %call88 = call i32 @OBJ_sn2nid(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.217, i64 0, i64 0)) #8
  %call89 = call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %call88) #8
  %22 = bitcast %struct.ec_group_st* %call89 to i8*
  %call90 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1210, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.225, i64 0, i64 0), i8* noundef %22) #8
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %err, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %if.end87
  %call93 = call %struct.bignum_st* @BN_new() #8
  %23 = bitcast %struct.bignum_st* %call93 to i8*
  %call94 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1211, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.226, i64 0, i64 0), i8* noundef %23) #8
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %err, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %lor.lhs.false92
  %call97 = call %struct.bignum_st* @BN_new() #8
  %24 = bitcast %struct.bignum_st* %call97 to i8*
  %call98 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1212, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.227, i64 0, i64 0), i8* noundef %24) #8
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %err, label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %lor.lhs.false96
  %call101 = call %struct.bignum_st* @BN_new() #8
  %25 = bitcast %struct.bignum_st* %call101 to i8*
  %call102 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1213, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.228, i64 0, i64 0), i8* noundef %25) #8
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %err, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %lor.lhs.false100
  %call105 = call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef %call89, %struct.bignum_st* noundef %call93, %struct.bignum_st* noundef %call97, %struct.bignum_st* noundef %call101, %struct.bignum_ctx* noundef null) #8
  %cmp106 = icmp ne i32 %call105, 0
  %conv107 = zext i1 %cmp106 to i32
  %call108 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1214, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.229, i64 0, i64 0), i32 noundef %conv107) #8
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %err, label %if.end111

if.end111:                                        ; preds = %lor.lhs.false104
  %26 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call112 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i64 0, i64 0), %struct.bignum_st** noundef nonnull %a) #8
  %cmp113 = icmp ne i32 %call112, 0
  %conv114 = zext i1 %cmp113 to i32
  %call115 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1217, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.230, i64 0, i64 0), i32 noundef %conv114) #8
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %err, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.end111
  %27 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call118 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %27, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.233, i64 0, i64 0), %struct.bignum_st** noundef nonnull %b) #8
  %cmp119 = icmp ne i32 %call118, 0
  %conv120 = zext i1 %cmp119 to i32
  %call121 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1218, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.232, i64 0, i64 0), i32 noundef %conv120) #8
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %err, label %lor.lhs.false123

lor.lhs.false123:                                 ; preds = %lor.lhs.false117
  %28 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call124 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), %struct.bignum_st** noundef nonnull %p) #8
  %cmp125 = icmp ne i32 %call124, 0
  %conv126 = zext i1 %cmp125 to i32
  %call127 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1219, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.234, i64 0, i64 0), i32 noundef %conv126) #8
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %err, label %if.end130

if.end130:                                        ; preds = %lor.lhs.false123
  %29 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  %call131 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1222, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), %struct.bignum_st* noundef %call93, %struct.bignum_st* noundef %29) #8
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %err, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %if.end130
  %30 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !3
  %call134 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1222, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.236, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i64 0, i64 0), %struct.bignum_st* noundef %call97, %struct.bignum_st* noundef %30) #8
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %err, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %lor.lhs.false133
  %31 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !3
  %call137 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1223, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.237, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.233, i64 0, i64 0), %struct.bignum_st* noundef %call101, %struct.bignum_st* noundef %31) #8
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %err, label %if.end140

if.end140:                                        ; preds = %lor.lhs.false136
  %32 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call141 = call i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef %32, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef 80, i64* noundef nonnull %len) #8
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %err, label %lor.lhs.false143

lor.lhs.false143:                                 ; preds = %if.end140
  %call145 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1230, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.238, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.239, i64 0, i64 0), i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.217, i64 0, i64 0)) #8
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %err, label %lor.lhs.false147

lor.lhs.false147:                                 ; preds = %lor.lhs.false143
  %33 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call149 = call i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef %33, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 65, i64* noundef nonnull %len) #8
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %err, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %lor.lhs.false147
  %34 = load i8, i8* %2, align 16, !tbaa !24
  %cmp153 = icmp eq i8 %34, 3
  %conv154 = zext i1 %cmp153 to i32
  %call157 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1233, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.240, i64 0, i64 0), i32 noundef %conv154) #8
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %err, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %lor.lhs.false151
  %35 = load i64, i64* %len, align 8, !tbaa !7
  %sub = add i64 %35, -1
  %call161 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1235, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.241, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.242, i64 0, i64 0), i8* noundef nonnull %add.ptr, i64 noundef %sub, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @test_fromdata_ec.ec_pub_keydata, i64 0, i64 1), i64 noundef 32) #8
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %err, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %lor.lhs.false159
  %36 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call164 = call i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef %36, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), %struct.bignum_st** noundef nonnull %bn_priv) #8
  %cmp165 = icmp ne i32 %call164, 0
  %conv166 = zext i1 %cmp165 to i32
  %call167 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1237, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.243, i64 0, i64 0), i32 noundef %conv166) #8
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %err, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %lor.lhs.false163
  %37 = load %struct.bignum_st*, %struct.bignum_st** %bn_priv, align 8, !tbaa !3
  %call170 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1238, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.244, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.245, i64 0, i64 0), %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %37) #8
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %err, label %if.end173

if.end173:                                        ; preds = %lor.lhs.false169
  %38 = load %struct.bignum_st*, %struct.bignum_st** %bn_priv, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %38) #8
  store %struct.bignum_st* null, %struct.bignum_st** %bn_priv, align 8, !tbaa !3
  %39 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call174 = call fastcc i32 @test_print_key_using_pem(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0), %struct.evp_pkey_st* noundef %39) #10
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %err, label %land.end

land.end:                                         ; preds = %if.end173
  %40 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call176 = call fastcc i32 @test_print_key_using_encoder(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0), %struct.evp_pkey_st* noundef %40) #10
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %err, label %lor.lhs.false179

lor.lhs.false179:                                 ; preds = %land.end
  %41 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call180 = call %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef %41) #8
  %42 = bitcast %struct.evp_pkey_st* %call180 to i8*
  %call181 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1246, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.67, i64 0, i64 0), i8* noundef %42) #8
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %err, label %land.rhs186

land.rhs186:                                      ; preds = %lor.lhs.false179
  %43 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  %call187 = call i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef %43, %struct.evp_pkey_st* noundef %call180) #8
  %call188 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1248, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call187, i32 noundef 1) #8
  %tobool189.not = icmp eq i32 %call188, 0
  %44 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %44) #8
  store %struct.evp_pkey_st* %call180, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  br i1 %tobool189.not, label %err, label %while.cond, !llvm.loop !23

err:                                              ; preds = %lor.lhs.false52, %lor.lhs.false48, %lor.lhs.false44, %while.body, %lor.lhs.false63, %if.end59, %lor.lhs.false82, %lor.lhs.false78, %lor.lhs.false74, %if.end70, %lor.lhs.false104, %lor.lhs.false100, %lor.lhs.false96, %lor.lhs.false92, %if.end87, %lor.lhs.false123, %lor.lhs.false117, %if.end111, %lor.lhs.false136, %lor.lhs.false133, %if.end130, %lor.lhs.false169, %lor.lhs.false163, %lor.lhs.false159, %lor.lhs.false151, %lor.lhs.false147, %lor.lhs.false143, %if.end140, %lor.lhs.false179, %land.end, %land.rhs186, %while.cond, %if.end173, %while.cond.preheader, %if.end27, %lor.lhs.false, %if.end22, %if.end17, %if.end13, %if.end9, %if.end6, %if.end, %entry
  %ec_priv_bn.0 = phi %struct.bignum_st* [ %call2, %if.end6 ], [ %call2, %if.end9 ], [ %call2, %if.end13 ], [ %call2, %lor.lhs.false ], [ %call2, %if.end27 ], [ %call2, %if.end22 ], [ %call2, %if.end17 ], [ %call2, %if.end ], [ null, %entry ], [ %call2, %while.cond.preheader ], [ %call2, %if.end173 ], [ %call2, %while.cond ], [ %call2, %land.rhs186 ], [ %call2, %land.end ], [ %call2, %lor.lhs.false179 ], [ %call2, %if.end140 ], [ %call2, %lor.lhs.false143 ], [ %call2, %lor.lhs.false147 ], [ %call2, %lor.lhs.false151 ], [ %call2, %lor.lhs.false159 ], [ %call2, %lor.lhs.false163 ], [ %call2, %lor.lhs.false169 ], [ %call2, %if.end130 ], [ %call2, %lor.lhs.false133 ], [ %call2, %lor.lhs.false136 ], [ %call2, %if.end111 ], [ %call2, %lor.lhs.false117 ], [ %call2, %lor.lhs.false123 ], [ %call2, %if.end87 ], [ %call2, %lor.lhs.false92 ], [ %call2, %lor.lhs.false96 ], [ %call2, %lor.lhs.false100 ], [ %call2, %lor.lhs.false104 ], [ %call2, %if.end70 ], [ %call2, %lor.lhs.false74 ], [ %call2, %lor.lhs.false78 ], [ %call2, %lor.lhs.false82 ], [ %call2, %if.end59 ], [ %call2, %lor.lhs.false63 ], [ %call2, %while.body ], [ %call2, %lor.lhs.false44 ], [ %call2, %lor.lhs.false48 ], [ %call2, %lor.lhs.false52 ]
  %fromdata_params.0 = phi %struct.ossl_param_st* [ null, %if.end6 ], [ null, %if.end9 ], [ null, %if.end13 ], [ %call18, %lor.lhs.false ], [ %call18, %if.end27 ], [ %call18, %if.end22 ], [ %call18, %if.end17 ], [ null, %if.end ], [ null, %entry ], [ %call18, %while.cond.preheader ], [ %call18, %if.end173 ], [ %call18, %while.cond ], [ %call18, %land.rhs186 ], [ %call18, %land.end ], [ %call18, %lor.lhs.false179 ], [ %call18, %if.end140 ], [ %call18, %lor.lhs.false143 ], [ %call18, %lor.lhs.false147 ], [ %call18, %lor.lhs.false151 ], [ %call18, %lor.lhs.false159 ], [ %call18, %lor.lhs.false163 ], [ %call18, %lor.lhs.false169 ], [ %call18, %if.end130 ], [ %call18, %lor.lhs.false133 ], [ %call18, %lor.lhs.false136 ], [ %call18, %if.end111 ], [ %call18, %lor.lhs.false117 ], [ %call18, %lor.lhs.false123 ], [ %call18, %if.end87 ], [ %call18, %lor.lhs.false92 ], [ %call18, %lor.lhs.false96 ], [ %call18, %lor.lhs.false100 ], [ %call18, %lor.lhs.false104 ], [ %call18, %if.end70 ], [ %call18, %lor.lhs.false74 ], [ %call18, %lor.lhs.false78 ], [ %call18, %lor.lhs.false82 ], [ %call18, %if.end59 ], [ %call18, %lor.lhs.false63 ], [ %call18, %while.body ], [ %call18, %lor.lhs.false44 ], [ %call18, %lor.lhs.false48 ], [ %call18, %lor.lhs.false52 ]
  %copy_pk.1 = phi %struct.evp_pkey_st* [ null, %if.end6 ], [ null, %if.end9 ], [ null, %if.end13 ], [ null, %lor.lhs.false ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %if.end17 ], [ null, %if.end ], [ null, %entry ], [ null, %while.cond.preheader ], [ null, %lor.lhs.false52 ], [ null, %lor.lhs.false48 ], [ null, %lor.lhs.false44 ], [ null, %while.body ], [ %call60, %lor.lhs.false63 ], [ %call60, %if.end59 ], [ null, %lor.lhs.false82 ], [ null, %lor.lhs.false78 ], [ null, %lor.lhs.false74 ], [ null, %if.end70 ], [ null, %lor.lhs.false104 ], [ null, %lor.lhs.false100 ], [ null, %lor.lhs.false96 ], [ null, %lor.lhs.false92 ], [ null, %if.end87 ], [ null, %lor.lhs.false123 ], [ null, %lor.lhs.false117 ], [ null, %if.end111 ], [ null, %lor.lhs.false136 ], [ null, %lor.lhs.false133 ], [ null, %if.end130 ], [ null, %lor.lhs.false169 ], [ null, %lor.lhs.false163 ], [ null, %lor.lhs.false159 ], [ null, %lor.lhs.false151 ], [ null, %lor.lhs.false147 ], [ null, %lor.lhs.false143 ], [ null, %if.end140 ], [ null, %lor.lhs.false179 ], [ null, %land.end ], [ null, %land.rhs186 ], [ null, %while.cond ], [ null, %if.end173 ]
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %if.end6 ], [ null, %if.end9 ], [ null, %if.end13 ], [ %call23, %lor.lhs.false ], [ %call23, %if.end27 ], [ %call23, %if.end22 ], [ null, %if.end17 ], [ null, %if.end ], [ null, %entry ], [ %call23, %while.cond.preheader ], [ %call23, %if.end173 ], [ %call23, %while.cond ], [ %call23, %land.rhs186 ], [ %call23, %land.end ], [ %call23, %lor.lhs.false179 ], [ %call23, %if.end140 ], [ %call23, %lor.lhs.false143 ], [ %call23, %lor.lhs.false147 ], [ %call23, %lor.lhs.false151 ], [ %call23, %lor.lhs.false159 ], [ %call23, %lor.lhs.false163 ], [ %call23, %lor.lhs.false169 ], [ %call23, %if.end130 ], [ %call23, %lor.lhs.false133 ], [ %call23, %lor.lhs.false136 ], [ %call23, %if.end111 ], [ %call23, %lor.lhs.false117 ], [ %call23, %lor.lhs.false123 ], [ %call23, %if.end87 ], [ %call23, %lor.lhs.false92 ], [ %call23, %lor.lhs.false96 ], [ %call23, %lor.lhs.false100 ], [ %call23, %lor.lhs.false104 ], [ %call23, %if.end70 ], [ %call23, %lor.lhs.false74 ], [ %call23, %lor.lhs.false78 ], [ %call23, %lor.lhs.false82 ], [ %call23, %if.end59 ], [ %call23, %lor.lhs.false63 ], [ %call23, %while.body ], [ %call23, %lor.lhs.false44 ], [ %call23, %lor.lhs.false48 ], [ %call23, %lor.lhs.false52 ]
  %ret.1 = phi i32 [ 0, %if.end6 ], [ 0, %if.end9 ], [ 0, %if.end13 ], [ 0, %lor.lhs.false ], [ 0, %if.end27 ], [ 0, %if.end22 ], [ 0, %if.end17 ], [ 0, %if.end ], [ 0, %entry ], [ 0, %while.cond.preheader ], [ 0, %lor.lhs.false52 ], [ 0, %lor.lhs.false48 ], [ 0, %lor.lhs.false44 ], [ 0, %while.body ], [ 0, %lor.lhs.false63 ], [ 0, %if.end59 ], [ 0, %lor.lhs.false82 ], [ 0, %lor.lhs.false78 ], [ 0, %lor.lhs.false74 ], [ 0, %if.end70 ], [ 0, %lor.lhs.false104 ], [ 0, %lor.lhs.false100 ], [ 0, %lor.lhs.false96 ], [ 0, %lor.lhs.false92 ], [ 0, %if.end87 ], [ 0, %lor.lhs.false123 ], [ 0, %lor.lhs.false117 ], [ 0, %if.end111 ], [ 0, %lor.lhs.false136 ], [ 0, %lor.lhs.false133 ], [ 0, %if.end130 ], [ 0, %lor.lhs.false169 ], [ 0, %lor.lhs.false163 ], [ 0, %lor.lhs.false159 ], [ 0, %lor.lhs.false151 ], [ 0, %lor.lhs.false147 ], [ 0, %lor.lhs.false143 ], [ 0, %if.end140 ], [ 1, %lor.lhs.false179 ], [ 0, %land.end ], [ 0, %land.rhs186 ], [ 1, %while.cond ], [ 0, %if.end173 ]
  %group.1 = phi %struct.ec_group_st* [ null, %if.end6 ], [ null, %if.end9 ], [ null, %if.end13 ], [ null, %lor.lhs.false ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %if.end17 ], [ null, %if.end ], [ null, %entry ], [ null, %while.cond.preheader ], [ %group.0241251, %lor.lhs.false52 ], [ %group.0241251, %lor.lhs.false48 ], [ %group.0241251, %lor.lhs.false44 ], [ %call89, %while.body ], [ %group.0241251, %lor.lhs.false63 ], [ %group.0241251, %if.end59 ], [ %group.0241251, %lor.lhs.false82 ], [ %group.0241251, %lor.lhs.false78 ], [ %group.0241251, %lor.lhs.false74 ], [ %group.0241251, %if.end70 ], [ %call89, %lor.lhs.false104 ], [ %call89, %lor.lhs.false100 ], [ %call89, %lor.lhs.false96 ], [ %call89, %lor.lhs.false92 ], [ %call89, %if.end87 ], [ %call89, %lor.lhs.false123 ], [ %call89, %lor.lhs.false117 ], [ %call89, %if.end111 ], [ %call89, %lor.lhs.false136 ], [ %call89, %lor.lhs.false133 ], [ %call89, %if.end130 ], [ %call89, %lor.lhs.false169 ], [ %call89, %lor.lhs.false163 ], [ %call89, %lor.lhs.false159 ], [ %call89, %lor.lhs.false151 ], [ %call89, %lor.lhs.false147 ], [ %call89, %lor.lhs.false143 ], [ %call89, %if.end140 ], [ %call89, %lor.lhs.false179 ], [ %call89, %land.end ], [ %call89, %land.rhs186 ], [ %call89, %while.cond ], [ %call89, %if.end173 ]
  %group_a.1 = phi %struct.bignum_st* [ null, %if.end6 ], [ null, %if.end9 ], [ null, %if.end13 ], [ null, %lor.lhs.false ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %if.end17 ], [ null, %if.end ], [ null, %entry ], [ null, %while.cond.preheader ], [ %group_a.0242250, %lor.lhs.false52 ], [ %group_a.0242250, %lor.lhs.false48 ], [ %group_a.0242250, %lor.lhs.false44 ], [ %call97, %while.body ], [ %group_a.0242250, %lor.lhs.false63 ], [ %group_a.0242250, %if.end59 ], [ %group_a.0242250, %lor.lhs.false82 ], [ %group_a.0242250, %lor.lhs.false78 ], [ %group_a.0242250, %lor.lhs.false74 ], [ %group_a.0242250, %if.end70 ], [ %call97, %lor.lhs.false104 ], [ %call97, %lor.lhs.false100 ], [ %call97, %lor.lhs.false96 ], [ %group_a.0242250, %lor.lhs.false92 ], [ %group_a.0242250, %if.end87 ], [ %call97, %lor.lhs.false123 ], [ %call97, %lor.lhs.false117 ], [ %call97, %if.end111 ], [ %call97, %lor.lhs.false136 ], [ %call97, %lor.lhs.false133 ], [ %call97, %if.end130 ], [ %call97, %lor.lhs.false169 ], [ %call97, %lor.lhs.false163 ], [ %call97, %lor.lhs.false159 ], [ %call97, %lor.lhs.false151 ], [ %call97, %lor.lhs.false147 ], [ %call97, %lor.lhs.false143 ], [ %call97, %if.end140 ], [ %call97, %lor.lhs.false179 ], [ %call97, %land.end ], [ %call97, %land.rhs186 ], [ %call97, %while.cond ], [ %call97, %if.end173 ]
  %group_b.1 = phi %struct.bignum_st* [ null, %if.end6 ], [ null, %if.end9 ], [ null, %if.end13 ], [ null, %lor.lhs.false ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %if.end17 ], [ null, %if.end ], [ null, %entry ], [ null, %while.cond.preheader ], [ %group_b.0243249, %lor.lhs.false52 ], [ %group_b.0243249, %lor.lhs.false48 ], [ %group_b.0243249, %lor.lhs.false44 ], [ %call101, %while.body ], [ %group_b.0243249, %lor.lhs.false63 ], [ %group_b.0243249, %if.end59 ], [ %group_b.0243249, %lor.lhs.false82 ], [ %group_b.0243249, %lor.lhs.false78 ], [ %group_b.0243249, %lor.lhs.false74 ], [ %group_b.0243249, %if.end70 ], [ %call101, %lor.lhs.false104 ], [ %call101, %lor.lhs.false100 ], [ %group_b.0243249, %lor.lhs.false96 ], [ %group_b.0243249, %lor.lhs.false92 ], [ %group_b.0243249, %if.end87 ], [ %call101, %lor.lhs.false123 ], [ %call101, %lor.lhs.false117 ], [ %call101, %if.end111 ], [ %call101, %lor.lhs.false136 ], [ %call101, %lor.lhs.false133 ], [ %call101, %if.end130 ], [ %call101, %lor.lhs.false169 ], [ %call101, %lor.lhs.false163 ], [ %call101, %lor.lhs.false159 ], [ %call101, %lor.lhs.false151 ], [ %call101, %lor.lhs.false147 ], [ %call101, %lor.lhs.false143 ], [ %call101, %if.end140 ], [ %call101, %lor.lhs.false179 ], [ %call101, %land.end ], [ %call101, %land.rhs186 ], [ %call101, %while.cond ], [ %call101, %if.end173 ]
  %group_p.1 = phi %struct.bignum_st* [ null, %if.end6 ], [ null, %if.end9 ], [ null, %if.end13 ], [ null, %lor.lhs.false ], [ null, %if.end27 ], [ null, %if.end22 ], [ null, %if.end17 ], [ null, %if.end ], [ null, %entry ], [ null, %while.cond.preheader ], [ %group_p.0244248, %lor.lhs.false52 ], [ %group_p.0244248, %lor.lhs.false48 ], [ %group_p.0244248, %lor.lhs.false44 ], [ %call93, %while.body ], [ %group_p.0244248, %lor.lhs.false63 ], [ %group_p.0244248, %if.end59 ], [ %group_p.0244248, %lor.lhs.false82 ], [ %group_p.0244248, %lor.lhs.false78 ], [ %group_p.0244248, %lor.lhs.false74 ], [ %group_p.0244248, %if.end70 ], [ %call93, %lor.lhs.false104 ], [ %call93, %lor.lhs.false100 ], [ %call93, %lor.lhs.false96 ], [ %call93, %lor.lhs.false92 ], [ %group_p.0244248, %if.end87 ], [ %call93, %lor.lhs.false123 ], [ %call93, %lor.lhs.false117 ], [ %call93, %if.end111 ], [ %call93, %lor.lhs.false136 ], [ %call93, %lor.lhs.false133 ], [ %call93, %if.end130 ], [ %call93, %lor.lhs.false169 ], [ %call93, %lor.lhs.false163 ], [ %call93, %lor.lhs.false159 ], [ %call93, %lor.lhs.false151 ], [ %call93, %lor.lhs.false147 ], [ %call93, %lor.lhs.false143 ], [ %call93, %if.end140 ], [ %call93, %lor.lhs.false179 ], [ %call93, %land.end ], [ %call93, %land.rhs186 ], [ %call93, %while.cond ], [ %call93, %if.end173 ]
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %group.1) #8
  call void @BN_free(%struct.bignum_st* noundef %group_a.1) #8
  call void @BN_free(%struct.bignum_st* noundef %group_b.1) #8
  call void @BN_free(%struct.bignum_st* noundef %group_p.1) #8
  %45 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %45) #8
  %46 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %46) #8
  %47 = load %struct.bignum_st*, %struct.bignum_st** %p, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %47) #8
  %48 = load %struct.bignum_st*, %struct.bignum_st** %bn_priv, align 8, !tbaa !3
  call void @BN_free(%struct.bignum_st* noundef %48) #8
  call void @BN_free(%struct.bignum_st* noundef %ec_priv_bn.0) #8
  call void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %fromdata_params.0) #8
  call void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef %call) #8
  %49 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pk, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %49) #8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %copy_pk.1) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 65, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ec_dup_no_operation() #0 {
entry:
  %param = alloca %struct.evp_pkey_st*, align 8
  %pkey = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %param, align 8, !tbaa !3
  %1 = bitcast %struct.evp_pkey_st** %pkey to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 408, %struct.engine_st* noundef null) #8
  %2 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1279, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.246, i64 0, i64 0), i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %call3 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1280, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.247, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef %call, i32 noundef 415) #8
  %call7 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1282, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.248, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %call6, i32 noundef 0) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = call i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %param) #8
  %call11 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1283, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.249, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %3 = bitcast %struct.evp_pkey_st** %param to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %call14 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1284, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i64 0, i64 0), i8* noundef %4) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  %5 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %param, align 8, !tbaa !3
  %call16 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %5, i8* noundef null) #8
  %6 = bitcast %struct.evp_pkey_ctx_st* %call16 to i8*
  %call17 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1290, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.251, i64 0, i64 0), i8* noundef %6) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end
  %call20 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef %call16) #8
  %7 = bitcast %struct.evp_pkey_ctx_st* %call20 to i8*
  %call21 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1291, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.252, i64 0, i64 0), i8* noundef %7) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %call24 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call20) #8
  %call25 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1292, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.253, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %call24, i32 noundef 0) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  %call28 = call i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef %call20, %struct.evp_pkey_st** noundef nonnull %pkey) #8
  %call29 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1293, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.254, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %call28, i32 noundef 0) #8
  %tobool30.not = icmp ne i32 %call29, 0
  %spec.select = zext i1 %tobool30.not to i32
  %.pre = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %pkey, align 8, !tbaa !3
  br label %err

err:                                              ; preds = %lor.lhs.false27, %if.end, %lor.lhs.false19, %lor.lhs.false23, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13
  %8 = phi %struct.evp_pkey_st* [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false19 ], [ null, %if.end ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %.pre, %lor.lhs.false27 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false23 ], [ 0, %lor.lhs.false19 ], [ 0, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false27 ]
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %lor.lhs.false23 ], [ null, %lor.lhs.false19 ], [ null, %if.end ], [ %call, %lor.lhs.false13 ], [ %call, %lor.lhs.false9 ], [ %call, %lor.lhs.false5 ], [ %call, %lor.lhs.false ], [ %call, %entry ], [ null, %lor.lhs.false27 ]
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call16, %lor.lhs.false23 ], [ %call16, %lor.lhs.false19 ], [ %call16, %if.end ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call16, %lor.lhs.false27 ]
  %kctx.0 = phi %struct.evp_pkey_ctx_st* [ %call20, %lor.lhs.false23 ], [ %call20, %lor.lhs.false19 ], [ null, %if.end ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call20, %lor.lhs.false27 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %8) #8
  %9 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %param, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %9) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %kctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ec_dup_keygen_operation() #0 {
entry:
  %param = alloca %struct.evp_pkey_st*, align 8
  %0 = bitcast %struct.evp_pkey_st** %param to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.evp_pkey_st* null, %struct.evp_pkey_st** %param, align 8, !tbaa !3
  %call = tail call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef 408, %struct.engine_st* noundef null) #8
  %1 = bitcast %struct.evp_pkey_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1312, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.246, i64 0, i64 0), i8* noundef %1) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef %call) #8
  %call3 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1313, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.247, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #8
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef %call, i32 noundef 415) #8
  %call7 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1315, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.248, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %call6, i32 noundef 0) #8
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false5
  %call10 = call i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef %call, %struct.evp_pkey_st** noundef nonnull %param) #8
  %call11 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1316, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.249, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #8
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %2 = bitcast %struct.evp_pkey_st** %param to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !3
  %call14 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1317, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i64 0, i64 0), i8* noundef %3) #8
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %if.end

if.end:                                           ; preds = %lor.lhs.false13
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %call) #8
  %4 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %param, align 8, !tbaa !3
  %call16 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef null, %struct.evp_pkey_st* noundef %4, i8* noundef null) #8
  %5 = bitcast %struct.evp_pkey_ctx_st* %call16 to i8*
  %call17 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1323, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.251, i64 0, i64 0), i8* noundef %5) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end
  %call20 = call i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef %call16) #8
  %call21 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1324, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.255, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %call20, i32 noundef 0) #8
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %err, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false19
  %call24 = call %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef %call16) #8
  %6 = bitcast %struct.evp_pkey_ctx_st* %call24 to i8*
  %call25 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1325, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.252, i64 0, i64 0), i8* noundef %6) #8
  %tobool26.not = icmp ne i32 %call25, 0
  %spec.select = zext i1 %tobool26.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false23, %if.end, %lor.lhs.false19, %entry, %lor.lhs.false, %lor.lhs.false5, %lor.lhs.false9, %lor.lhs.false13
  %pctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %lor.lhs.false19 ], [ null, %if.end ], [ %call, %lor.lhs.false13 ], [ %call, %lor.lhs.false9 ], [ %call, %lor.lhs.false5 ], [ %call, %lor.lhs.false ], [ %call, %entry ], [ null, %lor.lhs.false23 ]
  %ctx.0 = phi %struct.evp_pkey_ctx_st* [ %call16, %lor.lhs.false19 ], [ %call16, %if.end ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call16, %lor.lhs.false23 ]
  %kctx.0 = phi %struct.evp_pkey_ctx_st* [ null, %lor.lhs.false19 ], [ null, %if.end ], [ null, %lor.lhs.false13 ], [ null, %lor.lhs.false9 ], [ null, %lor.lhs.false5 ], [ null, %lor.lhs.false ], [ null, %entry ], [ %call24, %lor.lhs.false23 ]
  %ret.0 = phi i32 [ 0, %lor.lhs.false19 ], [ 0, %if.end ], [ 0, %lor.lhs.false13 ], [ 0, %lor.lhs.false9 ], [ 0, %lor.lhs.false5 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %lor.lhs.false23 ]
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef null) #8
  %7 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %param, align 8, !tbaa !3
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef %7) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %ctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %kctx.0) #8
  call void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef %pctx.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_param_st* @do_construct_hkdf_params() unnamed_addr #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp2 = alloca %struct.ossl_param_st, align 8
  %tmp5 = alloca %struct.ossl_param_st, align 8
  %tmp7 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 200, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 1629) #8
  %0 = bitcast i8* %call to %struct.ossl_param_st*
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i64 40
  %1 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #9
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i64 noundef 0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %call, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #9
  %incdec.ptr1 = getelementptr inbounds i8, i8* %call, i64 80
  %2 = bitcast %struct.ossl_param_st* %tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #9
  %call3 = call i64 @strlen(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #11
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 noundef %call3) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr, i8* noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #9
  %incdec.ptr4 = getelementptr inbounds i8, i8* %call, i64 120
  %3 = bitcast %struct.ossl_param_st* %tmp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #9
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i64 noundef 6) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr1, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #9
  %incdec.ptr6 = getelementptr inbounds i8, i8* %call, i64 160
  %4 = bitcast %struct.ossl_param_st* %tmp7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #9
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i64 noundef 0) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr4, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #9
  %5 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #9
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %incdec.ptr6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !19
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #9
  ret %struct.ossl_param_st* %0
}

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_derive_init_ex(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_derive(%struct.evp_pkey_ctx_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_dup(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_CTX_free(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare dso_local %struct.ossl_param_bld_st* @OSSL_PARAM_BLD_new() local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_BN(%struct.ossl_param_bld_st* noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_BLD_to_param(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_fromdata_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_fromdata(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef, i32 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_from_pkey(%struct.ossl_lib_ctx_st* noundef, %struct.evp_pkey_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_bn_param(%struct.evp_pkey_st* noundef, i8* noundef, %struct.bignum_st** noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_free(%struct.ossl_param_st* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_PARAM_BLD_free(%struct.ossl_param_bld_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_security_bits(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_missing_parameters(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_public_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_private_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_pairwise_check(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_copy_parameters(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_print_key_using_pem(i8* noundef %alg, %struct.evp_pkey_st* noundef %pk) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #8
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #8
  %0 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %1 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call3 = tail call %struct.evp_cipher_st* @EVP_aes_256_cbc() #8
  %call4 = tail call i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef %1, %struct.evp_pkey_st* noundef %pk, %struct.evp_cipher_st* noundef %call3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i32 noundef 4, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #8
  %cmp = icmp ne i32 %call4, 0
  %conv = zext i1 %cmp to i32
  %call5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 142, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call7 = tail call i32 @EVP_PKEY_print_private(%struct.bio_st* noundef %call1, %struct.evp_pkey_st* noundef %pk, i32 noundef 0, %struct.asn1_pctx_st* noundef null) #8
  %cmp8 = icmp ne i32 %call7, 0
  %conv9 = zext i1 %cmp8 to i32
  %call10 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.76, i64 0, i64 0), i32 noundef %conv9) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = tail call fastcc i32 @compare_with_file(i8* noundef %alg, i32 noundef 0, %struct.bio_st* noundef %call1) #10
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv15) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false12
  %call19 = tail call i32 @PEM_write_bio_PUBKEY(%struct.bio_st* noundef %call1, %struct.evp_pkey_st* noundef %pk) #8
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv21) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %call25 = tail call fastcc i32 @compare_with_file(i8* noundef %alg, i32 noundef 4, %struct.bio_st* noundef %call1) #10
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.79, i64 0, i64 0), i32 noundef %conv27) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false24
  %call31 = tail call i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef %call1, %struct.evp_pkey_st* noundef %pk, %struct.evp_cipher_st* noundef null, i8* noundef null, i32 noundef 0, i32 (i8*, i32, i32, i8*)* noundef null, i8* noundef null) #8
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv33) #8
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false30
  %call37 = tail call fastcc i32 @compare_with_file(i8* noundef %alg, i32 noundef 1, %struct.bio_st* noundef %call1) #10
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.81, i64 0, i64 0), i32 noundef %conv39) #8
  %tobool41.not = icmp ne i32 %call40, 0
  %spec.select = zext i1 %tobool41.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false36, %if.end, %lor.lhs.false, %lor.lhs.false12, %lor.lhs.false18, %lor.lhs.false24, %lor.lhs.false30, %entry
  %ret.0 = phi i32 [ 0, %lor.lhs.false30 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false18 ], [ 0, %lor.lhs.false12 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %entry ], [ %spec.select, %lor.lhs.false36 ]
  %call44 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_print_key_using_encoder(i8* noundef %alg, %struct.evp_pkey_st* noundef %pk) unnamed_addr #0 {
land.end:
  %call = tail call fastcc i32 @test_print_key_type_using_encoder(i8* noundef %alg, i32 noundef 0, %struct.evp_pkey_st* noundef %pk) #10
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.end.5, label %land.end.1

land.end.1:                                       ; preds = %land.end
  %call.1 = tail call fastcc i32 @test_print_key_type_using_encoder(i8* noundef %alg, i32 noundef 1, %struct.evp_pkey_st* noundef %pk) #10
  %tobool1.1.not = icmp eq i32 %call.1, 0
  br i1 %tobool1.1.not, label %land.end.5, label %land.end.2

land.end.2:                                       ; preds = %land.end.1
  %call.2 = tail call fastcc i32 @test_print_key_type_using_encoder(i8* noundef %alg, i32 noundef 2, %struct.evp_pkey_st* noundef %pk) #10
  %tobool1.2.not = icmp eq i32 %call.2, 0
  br i1 %tobool1.2.not, label %land.end.5, label %land.end.3

land.end.3:                                       ; preds = %land.end.2
  %call.3 = tail call fastcc i32 @test_print_key_type_using_encoder(i8* noundef %alg, i32 noundef 3, %struct.evp_pkey_st* noundef %pk) #10
  %tobool1.3.not = icmp eq i32 %call.3, 0
  br i1 %tobool1.3.not, label %land.end.5, label %land.end.4

land.end.4:                                       ; preds = %land.end.3
  %call.4 = tail call fastcc i32 @test_print_key_type_using_encoder(i8* noundef %alg, i32 noundef 4, %struct.evp_pkey_st* noundef %pk) #10
  %tobool1.4.not = icmp eq i32 %call.4, 0
  br i1 %tobool1.4.not, label %land.end.5, label %land.rhs.5

land.rhs.5:                                       ; preds = %land.end.4
  %call.5 = tail call fastcc i32 @test_print_key_type_using_encoder(i8* noundef %alg, i32 noundef 5, %struct.evp_pkey_st* noundef %pk) #10
  %tobool1.5 = icmp ne i32 %call.5, 0
  %phi.cast = zext i1 %tobool1.5 to i32
  br label %land.end.5

land.end.5:                                       ; preds = %land.end, %land.end.1, %land.end.2, %land.end.3, %land.rhs.5, %land.end.4
  %0 = phi i32 [ 0, %land.end.4 ], [ %phi.cast, %land.rhs.5 ], [ 0, %land.end.3 ], [ 0, %land.end.2 ], [ 0, %land.end.1 ], [ 0, %land.end ]
  ret i32 %0
}

declare dso_local %struct.evp_pkey_st* @EVP_PKEY_dup(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_eq(%struct.evp_pkey_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local i32 @PEM_write_bio_PrivateKey(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, %struct.evp_cipher_st* noundef, i8* noundef, i32 noundef, i32 (i8*, i32, i32, i8*)* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_cipher_st* @EVP_aes_256_cbc() local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_print_private(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef, i32 noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @compare_with_file(i8* noundef %alg, i32 noundef %type, %struct.bio_st* noundef %membio) unnamed_addr #0 {
entry:
  %filename = alloca [80 x i8], align 16
  %buf = alloca [4096 x i8], align 16
  %memdata = alloca i8*, align 8
  %readbytes = alloca i64, align 8
  %slen = alloca i64, align 8
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %filename, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #9
  %1 = getelementptr inbounds [4096 x i8], [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %1) #9
  %2 = bitcast i8** %memdata to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  %3 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #9
  %4 = bitcast i64* %slen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = icmp ult i32 %type, 6
  br i1 %5, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i64 0, i64 0)) #8
  br label %err

switch.lookup:                                    ; preds = %entry
  %6 = sext i32 %type to i64
  %switch.gep = getelementptr inbounds [6 x i8*], [6 x i8*]* @switch.table.compare_with_file, i64 0, i64 %6
  %switch.load = load i8*, i8** %switch.gep, align 8
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 80, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i64 0, i64 0), i8* noundef %alg, i8* noundef nonnull %switch.load) #8
  %7 = load i8*, i8** @datadir, align 8, !tbaa !3
  %call7 = call i8* @test_mk_file_path(i8* noundef %7, i8* noundef nonnull %0) #8
  %call8 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i64 0, i64 0), i8* noundef %call7) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %switch.lookup
  %call9 = call %struct.bio_st* @BIO_new_file(i8* noundef %call7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i64 0, i64 0)) #8
  %8 = bitcast %struct.bio_st* %call9 to i8*
  %call10 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i64 0, i64 0), i8* noundef %8) #8
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end
  %call15 = call i32 @BIO_read_ex(%struct.bio_st* noundef %call9, i8* noundef nonnull %1, i64 noundef 4096, i64* noundef nonnull %readbytes) #8
  %cmp = icmp ne i32 %call15, 0
  %conv = zext i1 %cmp to i32
  %call16 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv) #8
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %call18 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call9, i32 noundef 2, i64 noundef 0, i8* noundef null) #8
  %conv19 = trunc i64 %call18 to i32
  %cmp20 = icmp ne i32 %conv19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv21) #8
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %err, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %9 = load i64, i64* %readbytes, align 8, !tbaa !7
  %call25 = call i32 @test_size_t_lt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i64 noundef %9, i64 noundef 4096) #8
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %err, label %if.end28

if.end28:                                         ; preds = %lor.lhs.false24
  %call29 = call i64 @BIO_ctrl(%struct.bio_st* noundef %membio, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %2) #8
  %conv30 = trunc i64 %call29 to i32
  %call31 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %conv30, i32 noundef 0) #8
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %if.end34

if.end34:                                         ; preds = %if.end28
  %sext = shl i64 %call29, 32
  %conv35 = ashr exact i64 %sext, 32
  store i64 %conv35, i64* %slen, align 8, !tbaa !7
  switch i32 %type, label %if.then40 [
    i32 5, label %if.end42
    i32 2, label %if.end42
  ]

if.then40:                                        ; preds = %if.end34
  %10 = load i8*, i8** %memdata, align 8, !tbaa !3
  call fastcc void @stripcr(i8* noundef %10, i64* noundef nonnull %slen) #10
  call fastcc void @stripcr(i8* noundef nonnull %1, i64* noundef nonnull %readbytes) #10
  %.pre = load i64, i64* %slen, align 8, !tbaa !7
  br label %if.end42

if.end42:                                         ; preds = %if.end34, %if.end34, %if.then40
  %11 = phi i64 [ %conv35, %if.end34 ], [ %conv35, %if.end34 ], [ %.pre, %if.then40 ]
  %12 = load i8*, i8** %memdata, align 8, !tbaa !3
  %13 = load i64, i64* %readbytes, align 8, !tbaa !7
  %call44 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i64 0, i64 0), i8* noundef %12, i64 noundef %11, i8* noundef nonnull %1, i64 noundef %13) #8
  %tobool45.not = icmp ne i32 %call44, 0
  %spec.select = zext i1 %tobool45.not to i32
  br label %err

err:                                              ; preds = %if.end42, %if.end28, %if.end13, %lor.lhs.false, %lor.lhs.false24, %if.end, %switch.lookup, %sw.default
  %fullfile.0 = phi i8* [ null, %sw.default ], [ %call7, %if.end28 ], [ %call7, %lor.lhs.false24 ], [ %call7, %lor.lhs.false ], [ %call7, %if.end13 ], [ %call7, %if.end ], [ %call7, %switch.lookup ], [ %call7, %if.end42 ]
  %ret.0 = phi i32 [ 0, %sw.default ], [ 0, %if.end28 ], [ 0, %lor.lhs.false24 ], [ 0, %lor.lhs.false ], [ 0, %if.end13 ], [ 0, %if.end ], [ 0, %switch.lookup ], [ %spec.select, %if.end42 ]
  %file.0 = phi %struct.bio_st* [ null, %sw.default ], [ %call9, %if.end28 ], [ %call9, %lor.lhs.false24 ], [ %call9, %lor.lhs.false ], [ %call9, %if.end13 ], [ %call9, %if.end ], [ null, %switch.lookup ], [ %call9, %if.end42 ]
  call void @CRYPTO_free(i8* noundef %fullfile.0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 125) #8
  %call48 = call i64 @BIO_ctrl(%struct.bio_st* noundef %membio, i32 noundef 1, i64 noundef 0, i8* noundef null) #8
  %call50 = call i32 @BIO_free(%struct.bio_st* noundef %file.0) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #9
  ret i32 %ret.0
}

declare dso_local i32 @PEM_write_bio_PUBKEY(%struct.bio_st* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i8* @test_mk_file_path(i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_read_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @stripcr(i8* noundef %buf, i64* nocapture noundef %len) unnamed_addr #6 {
entry:
  %0 = load i64, i64* %len, align 8, !tbaa !7
  %cmp.not20 = icmp eq i64 %0, 0
  br i1 %cmp.not20, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %xtraiter = and i64 %0, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader
  %1 = load i8, i8* %buf, align 1, !tbaa !24
  %cmp1.prol = icmp eq i8 %1, 13
  br i1 %cmp1.prol, label %if.then.prol, label %if.end6.prol

if.end6.prol:                                     ; preds = %for.body.prol
  %incdec.ptr.prol = getelementptr inbounds i8, i8* %buf, i64 1
  br label %for.inc.prol

if.then.prol:                                     ; preds = %for.body.prol
  %2 = load i64, i64* %len, align 8, !tbaa !7
  %dec.prol = add i64 %2, -1
  store i64 %dec.prol, i64* %len, align 8, !tbaa !7
  br label %for.inc.prol

for.inc.prol:                                     ; preds = %if.then.prol, %if.end6.prol
  %writ.1.prol = phi i8* [ %buf, %if.then.prol ], [ %incdec.ptr.prol, %if.end6.prol ]
  %dec7.prol = add i64 %0, -1
  %incdec.ptr8.prol = getelementptr inbounds i8, i8* %buf, i64 1
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.inc.prol, %for.body.preheader
  %writ.024.unr = phi i8* [ %buf, %for.body.preheader ], [ %writ.1.prol, %for.inc.prol ]
  %curr.022.unr = phi i8* [ %buf, %for.body.preheader ], [ %incdec.ptr8.prol, %for.inc.prol ]
  %i.021.unr = phi i64 [ %0, %for.body.preheader ], [ %dec7.prol, %for.inc.prol ]
  %3 = icmp eq i64 %0, 1
  br i1 %3, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.inc.1
  %writ.024 = phi i8* [ %writ.1.1, %for.inc.1 ], [ %writ.024.unr, %for.body.prol.loopexit ]
  %curr.022 = phi i8* [ %incdec.ptr8.1, %for.inc.1 ], [ %curr.022.unr, %for.body.prol.loopexit ]
  %i.021 = phi i64 [ %dec7.1, %for.inc.1 ], [ %i.021.unr, %for.body.prol.loopexit ]
  %4 = load i8, i8* %curr.022, align 1, !tbaa !24
  %cmp1 = icmp eq i8 %4, 13
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %len, align 8, !tbaa !7
  %dec = add i64 %5, -1
  store i64 %dec, i64* %len, align 8, !tbaa !7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %cmp3.not = icmp eq i8* %curr.022, %writ.024
  br i1 %cmp3.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  store i8 %4, i8* %writ.024, align 1, !tbaa !24
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %writ.024, i64 1
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %if.then
  %writ.1 = phi i8* [ %writ.024, %if.then ], [ %incdec.ptr, %if.end6 ]
  %incdec.ptr8 = getelementptr inbounds i8, i8* %curr.022, i64 1
  %6 = load i8, i8* %incdec.ptr8, align 1, !tbaa !24
  %cmp1.1 = icmp eq i8 %6, 13
  br i1 %cmp1.1, label %if.then.1, label %if.end.1

if.end.1:                                         ; preds = %for.inc
  %cmp3.not.1 = icmp eq i8* %incdec.ptr8, %writ.1
  br i1 %cmp3.not.1, label %if.end6.1, label %if.then5.1

if.then5.1:                                       ; preds = %if.end.1
  store i8 %6, i8* %writ.1, align 1, !tbaa !24
  br label %if.end6.1

if.end6.1:                                        ; preds = %if.then5.1, %if.end.1
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %writ.1, i64 1
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %7 = load i64, i64* %len, align 8, !tbaa !7
  %dec.1 = add i64 %7, -1
  store i64 %dec.1, i64* %len, align 8, !tbaa !7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %if.end6.1
  %writ.1.1 = phi i8* [ %writ.1, %if.then.1 ], [ %incdec.ptr.1, %if.end6.1 ]
  %dec7.1 = add i64 %i.021, -2
  %incdec.ptr8.1 = getelementptr inbounds i8, i8* %curr.022, i64 2
  %cmp.not.1 = icmp eq i64 %dec7.1, 0
  br i1 %cmp.not.1, label %for.end, label %for.body, !llvm.loop !25

for.end:                                          ; preds = %for.body.prol.loopexit, %for.inc.1, %entry
  ret void
}

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_print_key_type_using_encoder(i8* noundef %alg, i32 noundef %type, %struct.evp_pkey_st* noundef %pk) unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #8
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #8
  %0 = icmp ult i32 %type, 6
  br i1 %0, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.105, i64 0, i64 0)) #8
  br label %err

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %type to i64
  %switch.gep = getelementptr inbounds [6 x i8*], [6 x i8*]* @switch.table.test_print_key_type_using_encoder, i64 0, i64 %1
  %switch.load = load i8*, i8** %switch.gep, align 8
  %2 = sext i32 %type to i64
  %switch.gep108 = getelementptr inbounds [6 x i32], [6 x i32]* @switch.table.test_print_key_type_using_encoder.256, i64 0, i64 %2
  %switch.load109 = load i32, i32* %switch.gep108, align 4
  %3 = sext i32 %type to i64
  %switch.gep110 = getelementptr inbounds [6 x i8*], [6 x i8*]* @switch.table.test_print_key_type_using_encoder.257, i64 0, i64 %3
  %switch.load111 = load i8*, i8** %switch.gep110, align 8
  %4 = bitcast %struct.bio_st* %call1 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i64 0, i64 0), i8* noundef %4) #8
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %switch.lookup
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.106, i64 0, i64 0)) #8
  %call8 = tail call %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef %pk, i32 noundef %switch.load109, i8* noundef %switch.load111, i8* noundef %switch.load, i8* noundef null) #8
  %5 = bitcast %struct.ossl_encoder_ctx_st* %call8 to i8*
  %call9 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.107, i64 0, i64 0), i8* noundef %5) #8
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call11 = tail call i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef %call8) #8
  %call12 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.97, i64 0, i64 0), i32 noundef %call11, i32 noundef 0) #8
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %if.end15

if.end15:                                         ; preds = %lor.lhs.false
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.109, i64 0, i64 0)) #8
  %call16 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call8, %struct.bio_st* noundef %call1) #8
  %cmp = icmp ne i32 %call16, 0
  %conv = zext i1 %cmp to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.110, i64 0, i64 0), i32 noundef %conv) #8
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %err, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end15
  %call20 = tail call fastcc i32 @compare_with_file(i8* noundef %alg, i32 noundef %type, %struct.bio_st* noundef %call1) #10
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.111, i64 0, i64 0), i32 noundef %conv22) #8
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %err, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false19
  %cmp27 = icmp eq i32 %type, 1
  br i1 %cmp27, label %if.then29, label %if.end82

if.then29:                                        ; preds = %if.end26
  %call30 = tail call i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef %call8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i64 noundef 4) #8
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.112, i64 0, i64 0), i32 noundef %conv32) #8
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %err, label %if.end36

if.end36:                                         ; preds = %if.then29
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.113, i64 0, i64 0)) #8
  %call37 = tail call i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef %call8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i64 0, i64 0), i8* noundef null) #8
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.114, i64 0, i64 0), i32 noundef %conv39) #8
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %err, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.end36
  %6 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call43 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call8, %struct.bio_st* noundef %6) #8
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.116, i64 0, i64 0), i32 noundef %conv45) #8
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %err, label %if.end49

if.end49:                                         ; preds = %lor.lhs.false42
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.117, i64 0, i64 0)) #8
  %call50 = tail call i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef %call8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i64 0, i64 0), i8* noundef null) #8
  %cmp51 = icmp ne i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %call53 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv52) #8
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %err, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.end49
  %7 = load %struct.bio_st*, %struct.bio_st** @bio_out, align 8, !tbaa !3
  %call56 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call8, %struct.bio_st* noundef %7) #8
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.116, i64 0, i64 0), i32 noundef %conv58) #8
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err, label %if.end62

if.end62:                                         ; preds = %lor.lhs.false55
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.120, i64 0, i64 0)) #8
  %call63 = tail call i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef %call8, i8* noundef null, i8* noundef null) #8
  %cmp64 = icmp ne i32 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %call66 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 258, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.121, i64 0, i64 0), i32 noundef %conv65) #8
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %err, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %if.end62
  %call69 = tail call i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef %call8, %struct.bio_st* noundef %call1) #8
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.110, i64 0, i64 0), i32 noundef %conv71) #8
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %err, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false68
  %call75 = tail call fastcc i32 @compare_with_file(i8* noundef %alg, i32 noundef 1, %struct.bio_st* noundef %call1) #10
  %cmp76 = icmp ne i32 %call75, 0
  %conv77 = zext i1 %cmp76 to i32
  %call78 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.111, i64 0, i64 0), i32 noundef %conv77) #8
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %err, label %if.end82

if.end82:                                         ; preds = %lor.lhs.false74, %if.end26
  br label %err

err:                                              ; preds = %if.end62, %lor.lhs.false68, %lor.lhs.false74, %if.end49, %lor.lhs.false55, %if.end36, %lor.lhs.false42, %if.then29, %if.end15, %lor.lhs.false19, %if.end, %lor.lhs.false, %switch.lookup, %if.end82, %sw.default
  %ctx.0 = phi %struct.ossl_encoder_ctx_st* [ null, %sw.default ], [ %call8, %if.end82 ], [ %call8, %lor.lhs.false74 ], [ %call8, %lor.lhs.false68 ], [ %call8, %if.end62 ], [ %call8, %lor.lhs.false55 ], [ %call8, %if.end49 ], [ %call8, %lor.lhs.false42 ], [ %call8, %if.end36 ], [ %call8, %if.then29 ], [ %call8, %lor.lhs.false19 ], [ %call8, %if.end15 ], [ %call8, %lor.lhs.false ], [ %call8, %if.end ], [ null, %switch.lookup ]
  %ret.0 = phi i32 [ 0, %sw.default ], [ 1, %if.end82 ], [ 0, %lor.lhs.false74 ], [ 0, %lor.lhs.false68 ], [ 0, %if.end62 ], [ 0, %lor.lhs.false55 ], [ 0, %if.end49 ], [ 0, %lor.lhs.false42 ], [ 0, %if.end36 ], [ 0, %if.then29 ], [ 0, %lor.lhs.false19 ], [ 0, %if.end15 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 0, %switch.lookup ]
  %call83 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #8
  tail call void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef %ctx.0) #8
  ret i32 %ret.0
}

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local %struct.ossl_encoder_ctx_st* @OSSL_ENCODER_CTX_new_for_pkey(%struct.evp_pkey_st* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_ENCODER_CTX_get_num_encoders(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_ENCODER_to_bio(%struct.ossl_encoder_ctx_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_ENCODER_CTX_set_passphrase(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_ENCODER_CTX_set_cipher(%struct.ossl_encoder_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @OSSL_ENCODER_CTX_free(%struct.ossl_encoder_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_utf8_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_long(%struct.ossl_param_bld_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_utf8_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_octet_string_param(%struct.evp_pkey_st* noundef, i8* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_get_int_param(%struct.evp_pkey_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_octet_string(%struct.ossl_param_bld_st* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @OSSL_PARAM_BLD_push_int(%struct.ossl_param_bld_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_print_key_using_encoder_public(i8* noundef %alg, %struct.evp_pkey_st* noundef %pk) unnamed_addr #0 {
land.end:
  %call = tail call fastcc i32 @test_print_key_type_using_encoder(i8* noundef %alg, i32 noundef 3, %struct.evp_pkey_st* noundef %pk) #10
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.end.2, label %land.end.1

land.end.1:                                       ; preds = %land.end
  %call.1 = tail call fastcc i32 @test_print_key_type_using_encoder(i8* noundef %alg, i32 noundef 4, %struct.evp_pkey_st* noundef %pk) #10
  %tobool1.1.not = icmp eq i32 %call.1, 0
  br i1 %tobool1.1.not, label %land.end.2, label %land.rhs.2

land.rhs.2:                                       ; preds = %land.end.1
  %call.2 = tail call fastcc i32 @test_print_key_type_using_encoder(i8* noundef %alg, i32 noundef 5, %struct.evp_pkey_st* noundef %pk) #10
  %tobool1.2 = icmp ne i32 %call.2, 0
  %phi.cast = zext i1 %tobool1.2 to i32
  br label %land.end.2

land.end.2:                                       ; preds = %land.end, %land.rhs.2, %land.end.1
  %0 = phi i32 [ 0, %land.end.1 ], [ %phi.cast, %land.rhs.2 ], [ 0, %land.end ]
  ret i32 %0
}

declare dso_local %struct.ossl_param_st* @EVP_PKEY_gettable_params(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_param_st* @OSSL_PARAM_locate_const(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef) local_unnamed_addr #1

declare dso_local i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare dso_local %struct.evp_pkey_ctx_st* @EVP_PKEY_CTX_new_id(i32 noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_paramgen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_CTX_set_ec_paramgen_curve_nid(%struct.evp_pkey_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_paramgen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_keygen_init(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_PKEY_keygen(%struct.evp_pkey_ctx_st* noundef, %struct.evp_pkey_st** noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !4, i64 0}
!12 = !{!"ossl_param_st", !4, i64 0, !13, i64 8, !4, i64 16, !8, i64 24, !8, i64 32}
!13 = !{!"int", !5, i64 0}
!14 = distinct !{!14, !10}
!15 = !{!13, !13, i64 0}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = !{i64 0, i64 8, !3, i64 8, i64 4, !15, i64 16, i64 8, !3, i64 24, i64 8, !7, i64 32, i64 8, !7}
!20 = distinct !{!20, !10}
!21 = !{!12, !4, i64 16}
!22 = !{!12, !8, i64 24}
!23 = distinct !{!23, !10}
!24 = !{!5, !5, i64 0}
!25 = distinct !{!25, !10}
