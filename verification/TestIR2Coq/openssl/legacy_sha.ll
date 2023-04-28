; ModuleID = 'crypto/evp/legacy_sha.c'
source_filename = "crypto/evp/legacy_sha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type { %struct.evp_md_st*, %struct.evp_md_st*, %struct.engine_st*, i64, i8*, %struct.evp_pkey_ctx_st*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i8*, %struct.evp_md_st* }
%struct.engine_st = type opaque
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type { i32, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, void (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, i8* (i8*, i32, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i8* (i8*, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, void (i8*)*, i8* (i8*, i64)*, i8* (i32)*, i32 (i8*, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i32)*, i32 (i8*, i32, i32 (%struct.ossl_param_st*, i8*)*, i8*)*, %struct.ossl_param_st* (i32)*, i8* (i8*, i32)* }
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type { i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*)*, i32 (i8*, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.5 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.keccak_st = type { [5 x [5 x i64]], i64, i64, i64, [168 x i8], i8, %struct.prov_sha3_meth_st }
%struct.prov_sha3_meth_st = type { i64 (i8*, i8*, i64)*, i32 (i8*, i8*)* }
%struct.SHAstate_st = type { i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32 }
%struct.SHA256state_st = type { [8 x i32], i32, i32, [16 x i32], i32, i32 }
%struct.SHA512state_st = type { [8 x i64], i64, i64, %union.anon.6, i32, i32 }
%union.anon.6 = type { [16 x i64] }

@sha1_md = internal constant %struct.evp_md_st { i32 64, i32 65, i32 20, i64 8, i32 1, i32 (%struct.evp_md_ctx_st*)* @sha1_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha1_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha1_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 64, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* @sha1_int_ctrl, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@sha224_md = internal constant %struct.evp_md_st { i32 675, i32 671, i32 28, i64 8, i32 1, i32 (%struct.evp_md_ctx_st*)* @sha224_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha224_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha224_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 64, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@sha256_md = internal constant %struct.evp_md_st { i32 672, i32 668, i32 32, i64 8, i32 1, i32 (%struct.evp_md_ctx_st*)* @sha256_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha256_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha256_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 64, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@sha512_224_md = internal constant %struct.evp_md_st { i32 1094, i32 1145, i32 28, i64 8, i32 1, i32 (%struct.evp_md_ctx_st*)* @sha512_224_int_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha512_224_int_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha512_224_int_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 128, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@sha512_256_md = internal constant %struct.evp_md_st { i32 1095, i32 1146, i32 32, i64 8, i32 1, i32 (%struct.evp_md_ctx_st*)* @sha512_256_int_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha512_256_int_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha512_256_int_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 128, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@sha384_md = internal constant %struct.evp_md_st { i32 673, i32 669, i32 48, i64 8, i32 1, i32 (%struct.evp_md_ctx_st*)* @sha384_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha384_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha384_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 128, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@sha512_md = internal constant %struct.evp_md_st { i32 674, i32 670, i32 64, i64 8, i32 1, i32 (%struct.evp_md_ctx_st*)* @sha512_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha512_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha512_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 128, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@EVP_sha3_224.sha3_224_md = internal constant %struct.evp_md_st { i32 1096, i32 1116, i32 28, i64 8, i32 1, i32 (%struct.evp_md_ctx_st*)* @sha3_int_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha3_int_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha3_int_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 144, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@EVP_sha3_256.sha3_256_md = internal constant %struct.evp_md_st { i32 1097, i32 1117, i32 32, i64 8, i32 1, i32 (%struct.evp_md_ctx_st*)* @sha3_int_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha3_int_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha3_int_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 136, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@EVP_sha3_384.sha3_384_md = internal constant %struct.evp_md_st { i32 1098, i32 1118, i32 48, i64 8, i32 1, i32 (%struct.evp_md_ctx_st*)* @sha3_int_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha3_int_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha3_int_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 104, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@EVP_sha3_512.sha3_512_md = internal constant %struct.evp_md_st { i32 1099, i32 1119, i32 64, i64 8, i32 1, i32 (%struct.evp_md_ctx_st*)* @sha3_int_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha3_int_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha3_int_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 72, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@EVP_shake128.shake128_md = internal constant %struct.evp_md_st { i32 1100, i32 0, i32 16, i64 2, i32 1, i32 (%struct.evp_md_ctx_st*)* @shake_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha3_int_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha3_int_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 168, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* @shake_ctrl, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@EVP_shake256.shake256_md = internal constant %struct.evp_md_st { i32 1101, i32 0, i32 32, i64 2, i32 1, i32 (%struct.evp_md_ctx_st*)* @shake_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @sha3_int_update, i32 (%struct.evp_md_ctx_st*, i8*)* @sha3_int_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 136, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* @shake_ctrl, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_sha1() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @sha1_md
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_sha224() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @sha224_md
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_sha256() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @sha256_md
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_sha512_224() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @sha512_224_md
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_sha512_256() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @sha512_256_md
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_sha384() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @sha384_md
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_sha512() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @sha512_md
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_sha3_224() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @EVP_sha3_224.sha3_224_md
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha3_int_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.keccak_st*
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !4
  %md_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %1, i64 0, i32 2
  %2 = load i32, i32* %md_size, align 8, !tbaa !10
  %mul = shl nsw i32 %2, 3
  %conv = sext i32 %mul to i64
  %call1 = tail call i32 @ossl_sha3_init(%struct.keccak_st* noundef %0, i8 noundef zeroext 6, i64 noundef %conv) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha3_int_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.keccak_st*
  %call1 = tail call i32 @ossl_sha3_update(%struct.keccak_st* noundef %0, i8* noundef %data, i64 noundef %count) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha3_int_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.keccak_st*
  %call1 = tail call i32 @ossl_sha3_final(i8* noundef %md, %struct.keccak_st* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_sha3_256() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @EVP_sha3_256.sha3_256_md
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_sha3_384() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @EVP_sha3_384.sha3_384_md
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_sha3_512() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @EVP_sha3_512.sha3_512_md
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_shake128() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @EVP_shake128.shake128_md
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @shake_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.keccak_st*
  %digest = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %ctx, i64 0, i32 1
  %1 = load %struct.evp_md_st*, %struct.evp_md_st** %digest, align 8, !tbaa !4
  %md_size = getelementptr inbounds %struct.evp_md_st, %struct.evp_md_st* %1, i64 0, i32 2
  %2 = load i32, i32* %md_size, align 8, !tbaa !10
  %mul = shl nsw i32 %2, 3
  %conv = sext i32 %mul to i64
  %call1 = tail call i32 @ossl_sha3_init(%struct.keccak_st* noundef %0, i8 noundef zeroext 31, i64 noundef %conv) #4
  ret i32 %call1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @shake_ctrl(%struct.evp_md_ctx_st* nocapture noundef readonly %evp_ctx, i32 noundef %cmd, i32 noundef %p1, i8* nocapture noundef readnone %p2) #2 {
entry:
  %cond = icmp eq i32 %cmd, 3
  br i1 %cond, label %sw.bb, label %cleanup

sw.bb:                                            ; preds = %entry
  %md_data = getelementptr inbounds %struct.evp_md_ctx_st, %struct.evp_md_ctx_st* %evp_ctx, i64 0, i32 4
  %0 = bitcast i8** %md_data to %struct.keccak_st**
  %1 = load %struct.keccak_st*, %struct.keccak_st** %0, align 8, !tbaa !13
  %conv = sext i32 %p1 to i64
  %md_size = getelementptr inbounds %struct.keccak_st, %struct.keccak_st* %1, i64 0, i32 2
  store i64 %conv, i64* %md_size, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.bb
  %retval.0 = phi i32 [ 1, %sw.bb ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_shake256() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @EVP_shake256.shake256_md
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha1_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHAstate_st*
  %call1 = tail call i32 @SHA1_Init(%struct.SHAstate_st* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha1_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHAstate_st*
  %call1 = tail call i32 @SHA1_Update(%struct.SHAstate_st* noundef %0, i8* noundef %data, i64 noundef %count) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha1_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHAstate_st*
  %call1 = tail call i32 @SHA1_Final(i8* noundef %md, %struct.SHAstate_st* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha1_int_ctrl(%struct.evp_md_ctx_st* noundef %ctx, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) #1 {
entry:
  %cmp.not = icmp eq %struct.evp_md_ctx_st* %ctx, null
  br i1 %cmp.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef nonnull %ctx) #4
  %phi.cast = bitcast i8* %call to %struct.SHAstate_st*
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.SHAstate_st* [ %phi.cast, %cond.true ], [ null, %entry ]
  %call1 = tail call i32 @ossl_sha1_ctrl(%struct.SHAstate_st* noundef %cond, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) #4
  ret i32 %call1
}

declare i32 @SHA1_Init(%struct.SHAstate_st* noundef) local_unnamed_addr #3

declare i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #3

declare i32 @SHA1_Update(%struct.SHAstate_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SHA1_Final(i8* noundef, %struct.SHAstate_st* noundef) local_unnamed_addr #3

declare i32 @ossl_sha1_ctrl(%struct.SHAstate_st* noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha224_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA256state_st*
  %call1 = tail call i32 @SHA224_Init(%struct.SHA256state_st* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha224_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA256state_st*
  %call1 = tail call i32 @SHA224_Update(%struct.SHA256state_st* noundef %0, i8* noundef %data, i64 noundef %count) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha224_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA256state_st*
  %call1 = tail call i32 @SHA224_Final(i8* noundef %md, %struct.SHA256state_st* noundef %0) #4
  ret i32 %call1
}

declare i32 @SHA224_Init(%struct.SHA256state_st* noundef) local_unnamed_addr #3

declare i32 @SHA224_Update(%struct.SHA256state_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SHA224_Final(i8* noundef, %struct.SHA256state_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha256_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA256state_st*
  %call1 = tail call i32 @SHA256_Init(%struct.SHA256state_st* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha256_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA256state_st*
  %call1 = tail call i32 @SHA256_Update(%struct.SHA256state_st* noundef %0, i8* noundef %data, i64 noundef %count) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha256_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA256state_st*
  %call1 = tail call i32 @SHA256_Final(i8* noundef %md, %struct.SHA256state_st* noundef %0) #4
  ret i32 %call1
}

declare i32 @SHA256_Init(%struct.SHA256state_st* noundef) local_unnamed_addr #3

declare i32 @SHA256_Update(%struct.SHA256state_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SHA256_Final(i8* noundef, %struct.SHA256state_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha512_224_int_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @sha512_224_init(%struct.SHA512state_st* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha512_224_int_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @SHA512_Update(%struct.SHA512state_st* noundef %0, i8* noundef %data, i64 noundef %count) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha512_224_int_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @SHA512_Final(i8* noundef %md, %struct.SHA512state_st* noundef %0) #4
  ret i32 %call1
}

declare i32 @sha512_224_init(%struct.SHA512state_st* noundef) local_unnamed_addr #3

declare i32 @SHA512_Update(%struct.SHA512state_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SHA512_Final(i8* noundef, %struct.SHA512state_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha512_256_int_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @sha512_256_init(%struct.SHA512state_st* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha512_256_int_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @SHA512_Update(%struct.SHA512state_st* noundef %0, i8* noundef %data, i64 noundef %count) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha512_256_int_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @SHA512_Final(i8* noundef %md, %struct.SHA512state_st* noundef %0) #4
  ret i32 %call1
}

declare i32 @sha512_256_init(%struct.SHA512state_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha384_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @SHA384_Init(%struct.SHA512state_st* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha384_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @SHA384_Update(%struct.SHA512state_st* noundef %0, i8* noundef %data, i64 noundef %count) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha384_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @SHA384_Final(i8* noundef %md, %struct.SHA512state_st* noundef %0) #4
  ret i32 %call1
}

declare i32 @SHA384_Init(%struct.SHA512state_st* noundef) local_unnamed_addr #3

declare i32 @SHA384_Update(%struct.SHA512state_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @SHA384_Final(i8* noundef, %struct.SHA512state_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha512_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @SHA512_Init(%struct.SHA512state_st* noundef %0) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha512_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @SHA512_Update(%struct.SHA512state_st* noundef %0, i8* noundef %data, i64 noundef %count) #4
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sha512_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #4
  %0 = bitcast i8* %call to %struct.SHA512state_st*
  %call1 = tail call i32 @SHA512_Final(i8* noundef %md, %struct.SHA512state_st* noundef %0) #4
  ret i32 %call1
}

declare i32 @SHA512_Init(%struct.SHA512state_st* noundef) local_unnamed_addr #3

declare i32 @ossl_sha3_init(%struct.keccak_st* noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #3

declare i32 @ossl_sha3_update(%struct.keccak_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ossl_sha3_final(i8* noundef, %struct.keccak_st* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 8}
!5 = !{!"evp_md_ctx_st", !6, i64 0, !6, i64 8, !6, i64 16, !9, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!11, !12, i64 8}
!11 = !{!"evp_md_st", !12, i64 0, !12, i64 4, !12, i64 8, !9, i64 16, !12, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !12, i64 72, !12, i64 76, !6, i64 80, !12, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !7, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232}
!12 = !{!"int", !7, i64 0}
!13 = !{!5, !6, i64 32}
!14 = !{!15, !9, i64 208}
!15 = !{!"keccak_st", !7, i64 0, !9, i64 200, !9, i64 208, !9, i64 216, !7, i64 224, !7, i64 392, !16, i64 400}
!16 = !{!"prov_sha3_meth_st", !6, i64 0, !6, i64 8}
